package com.ututor.impl;



import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import com.ututor.entity.CourseListUnit;
import com.ututor.entity.JdbcSearchResult;
import com.ututor.entity.Class;
import com.ututor.entity.SearchConditions;
import com.ututor.tools.JdbcConditionParser;
import com.ututor.tools.htmlparser;
import com.ututor.util.DBUtil;

public class JdbcSearchCourseDAO {
	@SuppressWarnings("finally")
	public JdbcSearchResult searchCourse(int pageNo, int size, SearchConditions conditions) throws Exception{
		List<CourseListUnit> resultCourse = new ArrayList<CourseListUnit>();
		JdbcSearchResult jdbcSearchResult = new JdbcSearchResult();
		JdbcConditionParser parser = new JdbcConditionParser(conditions);
		Connection conn = DBUtil.getConnection();
		try {
			
			conn.setAutoCommit(false);
			//method
			String searchTeam = "SELECT class.image, class.class_id, class.type, class.code, d_user.nickname, class.status as class_status, class.n_done,"
					+ "ifnull(course_rating.number_of_attendant, 0) as number_of_attendant, class.title, class.launch_time, "
					+ "class.o_price, class.n_price, class.total_seat, class.remain_seat, course_rating.result, table2.lesson_seq, "
					+ "table2.remain_lesson, table2.duration,table2.place,table2.time, table2.status from (select * from class where class.status != 'invalid' and class.code like '%"
					+ parser.getCourseCode()+"%' AND class.title like'%"+parser.getCourseTitle()+"%'"+parser.getSeatConstriant()+parser.getDisplayOpenedCourse()+parser.getTypeConstriant()+parser.getMaxPriceConstriant()+parser.getMinPriceConstriant()+parser.getLauncherConstriant()
					+" )class left join d_user on class.launcher_id = d_user.id "
					+ "left join course_rating on class.code = course_rating.course_code and "
					+ "class.launcher_id = course_rating.launcher_id left join (select class_id, count(*) as remain_lesson, "
					+ "time, duration, place, status, lesson_seq from (select * from lesson order by lesson_seq)t where (t.status!='finished')"
					+ "group by t.class_id)table2 "
					+ "on table2.class_id = class.class_id where class.launcher_id > 0 "
					+ parser.getMaxDateConstriant()+parser.getMinDateConstriant()+parser.getFullConstriant()
					+ parser.getDisplayUdplace() + parser.getDisplayUdtime()
					+ parser.getOrder()+", class_id ";
			String searchPrivate = "SELECT class.image, class.class_id, class.type, class.code, d_user.nickname, class.status as class_status, class.n_done,"
					+ "ifnull(course_rating.number_of_attendant, 0) as number_of_attendant, class.title, class.launch_time, "
					+ "class.o_price, class.n_price, class.total_seat, class.remain_seat, course_rating.result, table2.lesson_seq, "
					+ "table2.remain_lesson, table2.duration,table2.place,table2.time, table2.status from (select * from class where class.status != 'invalid' and class.code like '%"
					+ parser.getCourseCode()+"%' AND class.title like '%"+parser.getCourseTitle()+"%'"+parser.getSeatConstriant()+parser.getDisplayOpenedCourse()+parser.getTypeConstriant()+parser.getMaxPriceConstriant()+parser.getMinPriceConstriant()+parser.getLauncherConstriant()
					+" )class left join d_user on class.launcher_id = d_user.id "
					+ "left join course_rating on class.code = course_rating.course_code and "
					+ "class.launcher_id = course_rating.launcher_id left join (select class_id, count(*) as remain_lesson, "
					+ "time, duration, place, status, lesson_seq from (select * from lesson order by lesson_seq)t where (t.status!='finished')"
					+ "group by t.class_id)table2 "
					+ "on table2.class_id = class.class_id where class.launcher_id = 0 "
					+ parser.getMinDateConstriant()+parser.getMaxDateConstriant()+parser.getFullConstriant()
					+ parser.getDisplayUdplace() + parser.getDisplayUdtime()
					+parser.getOrder()+", class_id ";
			System.out.println(searchTeam+"\n");
			//System.out.println(searchPrivate);
			PreparedStatement ps = conn
					.prepareStatement("select * from ("+searchTeam+")tableA"+" union "+"select * from ("+searchPrivate+")tableB limit ?, ?");
			//System.out.println("select * from ("+searchTeam+")tableA");
			PreparedStatement ps_count = conn.prepareStatement("select count(*) as count from (select * from ("+searchTeam+")tableA"+" union "+"select * from ("+searchPrivate+")tableB)t");
			ps.setInt(1, size * (pageNo - 1));
			ps.setInt(2, size);
			ResultSet rs = ps.executeQuery();
			ResultSet rs_count = ps_count.executeQuery();
			conn.commit();
			if(rs_count.next()){
				jdbcSearchResult.setTotalResults(rs_count.getInt("count"));
			}
			while(rs.next()){
				CourseListUnit unit = new CourseListUnit();
				unit.setClass_id(rs.getInt("class_id"));
				System.out.println(rs.getInt("class_id"));
				unit.setType(rs.getInt("type"));
				unit.setCourse_code(rs.getString("code"));
				unit.setLauncher(rs.getString("nickname"));
				unit.setPast_attendant(rs.getInt("number_of_attendant"));
				unit.setTitle(rs.getString("title"));
				unit.setPlace(rs.getString("place"));
				SimpleDateFormat df = new SimpleDateFormat("yyyy/MM/dd HH:mm");
				unit.setLaunch_time(df.format(rs.getTimestamp("launch_time")));
				if(rs.getTimestamp("time")!=null&&rs.getString("status").equals("decided")){
					unit.setNext_time((df.format(rs.getTimestamp("time"))));
				}else if(rs.getInt("lesson_seq") == 0){
					unit.setNext_time("-");
					unit.setPlace("-");
				}else{
					unit.setNext_time("待定");
				}
				String temp_status = rs.getString("class_status");
				if(temp_status.equals("finished")){
					unit.setStatus("已结束");
				}else if(temp_status.equals("invalid")){
					unit.setStatus("已取消");
				}else if(rs.getInt("n_done")==0){
					unit.setStatus("未开课");
				}else{
					unit.setStatus("进行中"+" ("+rs.getInt("n_done")+"/"+rs.getInt("type")+")");
				}
				unit.setLength(rs.getInt("duration"));
				unit.setO_price(rs.getDouble("o_price"));
				unit.setN_price(rs.getDouble("n_price"));
				unit.setTotal_seat(rs.getInt("total_seat"));
				unit.setRemain_seat(rs.getInt("remain_seat"));
				unit.setStar(rs.getInt("result"));
				unit.setImage_src(rs.getString("image"));
				resultCourse.add(unit);
			}
			jdbcSearchResult.setSearchList(resultCourse);
		} catch (SQLException e) {
			e.printStackTrace();
			conn.rollback();
			
		}finally{
			DBUtil.close();
			return jdbcSearchResult;
		}
	}
	
	public static void main(String[] args){
		JdbcSearchCourseDAO dao = new JdbcSearchCourseDAO();
		JdbcSearchResult result;
		try {
			//result = dao.searchCourse(1,7);
			//System.out.print(result.getTotalResults()+";"+ result.getSearchList().size());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public List<Class> JdbcRecommendDAO(String code, int class_id) throws Exception{
		List<Class> resultList = new ArrayList<Class>();
		Connection conn = DBUtil.getConnection();
		try {
				
				conn.setAutoCommit(false);
				//method
				//System.out.print(class_id);
				PreparedStatement ps = conn
						.prepareStatement("SELECT * FROM class WHERE class_id!= "+class_id+" and code LIKE '%"+code.substring(0,3)+"%' limit 4");
				ResultSet rs = ps.executeQuery();
				conn.commit();
				while(rs.next()){
					Class oneClass = new Class();
					String description = htmlparser.html2Text(rs.getString("description"));
					if(description.length()>100){
						oneClass.setDescription(description.substring(0, 99) + "...");
					}else{
						oneClass.setDescription(description);
					}
					oneClass.setN_price(rs.getDouble("n_price"));
					oneClass.setO_price(rs.getDouble("o_price"));
					oneClass.setImg_src(rs.getString("image"));
					oneClass.setCode(rs.getString("code"));
					oneClass.setTitle(rs.getString("title"));
					oneClass.setClass_id(rs.getInt("class_id"));
					resultList.add(oneClass);
				}
		} catch (SQLException e) {
				e.printStackTrace();
				conn.rollback();
				
		}finally{
				DBUtil.close();
		}
		return resultList;
	}
}
