package com.ututor.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import com.ututor.entity.Course;
import com.ututor.util.DBUtil;

public class JdbcCourseListDAO {
	public List<Course> listCourseById(int user_id, int pageNo, int size) throws Exception {
		Connection conn = DBUtil.getConnection();
		List<Course> listCourse = new ArrayList<Course>();
		try {
			conn.setAutoCommit(false);
			// method
			PreparedStatement ps = conn.prepareStatement(
					"select class.launcher_id, d_user.nickname as team, teacher.nickname as teacher, "
					+ "class.class_id, class.code, class.title, class.type, class.status, class.n_done,  "
					+ "history.assess, history.arrive FROM history inner join class on "
					+ "history.class_id = class.class_id join d_user on class.launcher_id = d_user.id "
					+ "join d_user as teacher on teacher.id = class.tutor_id where  history.student_id = ? "
					+ "order by class.class_id desc limit ?,?");
			ps.setInt(1, user_id);
			ps.setInt(2, size * (pageNo - 1));
			ps.setInt(3, size);
			ResultSet rs = ps.executeQuery();
			conn.commit();
			while (rs.next()) {
				Course course = new Course();
				course.setCode(rs.getString("code"));
				course.setTitle(rs.getString("title"));
				course.setClass_id(rs.getInt("class_id"));
				course.setOperation("<a href=\"coursedetail.action?class_id=" + rs.getInt("class_id") + "\">查看详细</a>");
				course.setTutor(rs.getString("teacher"));
				course.setTeam(rs.getString("team"));
				String status = rs.getString("status");
				/*set status and operation*/
				if(status.equals("invalid")){
					course.setStatus("已取消");
				}else if(status.equals("finished")){// check whether assessed
//					course.setStatus("已结束");
					if(rs.getString("arrive").equals("NO")){
						course.setStatus("未到达");
					}else if(rs.getString("assess").equals("NO")){
						course.setStatus("待评价");
						course.addOperation("<a href=\"user_course_rating.jsp?class_id="
								+ rs.getInt("class_id") + "&launcher_id=" + rs.getInt("launcher_id")
								+ "&course_code=" + rs.getString("code") + "&title=" + rs.getString("title")
								+ "&tutor=" + rs.getString("teacher") + "\">马上评价</a>");
					}else{
						course.setStatus("已评价");
					}
				}else{
					if(rs.getInt("n_done")==0){
						course.setStatus("未开课");
						course.addOperation("<a onclick=\"sendDrop("+rs.getInt("class_id")+")\">Drop</a>");
					}else{
						String temp = "进行中("+rs.getInt("n_done")+"/"+rs.getInt("type")+")";
						course.setStatus(temp);
					}
				}
				
				if(rs.getInt("type")>1){
					course.setLength("Package");
					PreparedStatement ps_mul = conn.prepareStatement("SELECT status, time FROM ututor.lesson where status!='finished' and  class_id = ? order by lesson_seq limit 1;");
					ps_mul.setInt(1, rs.getInt("class_id"));
					ResultSet rs_mul = ps_mul.executeQuery();
					if(rs_mul.next()){
						SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm");
						String time_temp = df.format(rs_mul.getTimestamp("time"));
						//System.out.println(time_temp.substring(11,19));
						if(time_temp.substring(11,16).equals("00:00")){
							time_temp = time_temp.substring(0,10);
						}
						course.setTime(time_temp);
					}else{
						course.setTime("-");
					}
				}else{
					PreparedStatement ps_one = conn
							.prepareStatement("SELECT time, duration, status FROM lesson where class_id = ?;");
					ps_one.setInt(1, rs.getInt("class_id"));
					ResultSet rs1 = ps_one.executeQuery();
					if (rs1.next()) {
						SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm");
						if (rs1.getString("status").equals("not decided")) {
							course.setTime("待定");
						}else{
							String time_temp = df.format(rs1.getTimestamp("time"));
							//System.out.println(time_temp.substring(11,19));
							if(time_temp.substring(11,16).equals("00:00")){
								time_temp = time_temp.substring(0,10);
							}
							course.setTime(time_temp);
						}
						
						if(rs1.getInt("duration")==0){
							course.setLength("待定");
						}else{
							course.setLength(rs1.getInt("duration") + "分钟");
						}
					}
				}
				
//				if (rs.getInt("type") == 1) {// only 1 lesson
//					PreparedStatement ps_one = conn
//							.prepareStatement("SELECT time, duration, status FROM lesson where class_id = ?;");
//					ps_one.setInt(1, rs.getInt("class_id"));
//					ResultSet rs1 = ps_one.executeQuery();
//					if (rs1.next()) {
//						SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//						if (rs1.getString("status").equals("not decided")) {
//							course.setTime("待定");
//							course.setLength("待定");
//							course.setStatus("未开课");
//							course.addOperation("<a href=\"#\">Drop</a>");
//						} else {
//							course.setTime(df.format(rs1.getTimestamp("time")));
//							course.setLength(rs1.getInt("duration") + "分钟");
//							Timestamp currentTime = new Timestamp(System.currentTimeMillis());
//							if (currentTime.getTime() < rs1.getTimestamp("time").getTime()) {
//								course.setStatus("未开课");
//							} else {
//								if (rs.getString("arrive").equals("NO")) {
//									course.setStatus("未到达");
//								} else if (rs.getString("assess").equals("NO")) {
//									course.setStatus("待评价");
//									course.addOperation("<a href=\"user_course_rating.jsp?class_id="
//											+ rs.getInt("class_id") + "&launcher_id=" + rs.getInt("launcher_id")
//											+ "&course_code=" + rs.getString("code") + "&title=" + rs.getString("title")
//											+ "&tutor=" + rs.getString("teacher") + "\">马上评价</a>");
//								} else {
//									course.setStatus("已评价");
//								}
//							}
//
//						}
//					}
//				} else {
//					course.setLength("Package");
//					PreparedStatement ps_mul = conn.prepareStatement(
//							"SELECT time, duration, status, lesson_seq FROM ututor.lesson " + "where class_id = ? and("
//									+ " time > current_timestamp or status = 'not decided')" + " order by lesson_seq limit 0,1;");
//					ps_mul.setInt(1, rs.getInt("class_id"));
//					ResultSet rs_mul = ps_mul.executeQuery();
//					if (rs_mul.next()) {
//						SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//						// System.out.println(rs_mul.getString("status"));
//						if (rs_mul.getString("status").equals("not decided")) {
//							course.setTime("待定");
//						} else {
//							course.setTime(df.format(rs_mul.getTimestamp("time")));
//						}
//						if (rs_mul.getInt("lesson_seq") == 1) {
//							course.setStatus("未开课");
//							course.addOperation("<a href=\"#\">Drop</a>");
//						} else {
//							course.setStatus("进行中");
//						}
//					} else {
//						course.setTime("-");
//						if (rs.getString("assess").equals("NO")) {
//							course.setStatus("待评价");
//							course.addOperation("<a href=\"user_course_rating.jsp?class_id=" + rs.getInt("class_id")
//									+ "&launcher_id=" + rs.getInt("launcher_id") + "&course_code="
//									+ rs.getString("code") + "&title=" + rs.getString("title") + "&tutor="
//									+ rs.getString("teacher") + "\">马上评价</a>");
//						} else {
//							course.setStatus("已评价");
//						}
//					}
//					if (status.equals("invalid")) {
//						course.setStatus("已取消");
//					}
//				}

				listCourse.add(course);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			conn.rollback();

		} finally {
			DBUtil.close();
		}
		return listCourse;
	}
	
	public int getTotal(int user_id) throws SQLException{
		Connection conn = DBUtil.getConnection();
		try {
			
			conn.setAutoCommit(false);
			//method
			PreparedStatement ps = conn
					.prepareStatement("select count(*) FROM history inner join class on "
							+ "history.class_id = class.class_id join d_user on class.launcher_id = d_user.id "
							+ "join d_user as teacher on teacher.id = class.tutor_id where  history.student_id = ? ");
			ps.setInt(1, user_id);
			ResultSet rs = ps.executeQuery();
			conn.commit();
			if(rs.next()){
				return rs.getInt("count(*)");
			}else{
				return 0;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			conn.rollback();
			
		}finally{
			DBUtil.close();
		}
		return 0;
	}

	public static void main(String[] args) {
		List<Course> listCourse = new ArrayList<Course>();
		JdbcCourseListDAO listDAO = new JdbcCourseListDAO();
		try {
			listCourse = listDAO.listCourseById(4, 1, 3);
			for (int i = 0; i < listCourse.size(); i++) {
				listCourse.get(i).print();
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
