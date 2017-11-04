package com.ututor.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import com.ututor.entity.Assessment;
import com.ututor.util.DBUtil;

public class JdbcAssessmentDAO {
	public void addAssessment(int user_id,int class_id, Assessment assessment, int rater_id) throws Exception {
		// TODO Auto-generated method stub
		Connection conn = DBUtil.getConnection();
		try {
			
			conn.setAutoCommit(false);
			//method
			PreparedStatement ps = conn
					.prepareStatement("INSERT INTO rating(course_code, launcher_id, content, rater, title, star) values(?,?,?,?,?,?)");
			ps.setString(1, assessment.getCourse_code());
			ps.setInt(2, assessment.getLauncher_id());
			ps.setString(3, assessment.getContent());
			ps.setInt(4, rater_id);
			ps.setString(5, assessment.getTitle());
			ps.setInt(6, assessment.getStar());
			ps.executeUpdate();
			PreparedStatement ps1 = conn
					.prepareStatement("UPDATE history SET `assess`='YES' WHERE student_id = ? and class_id = ?;");
			ps1.setInt(1, user_id);
			ps1.setInt(2, class_id);
			ps1.executeUpdate();
			conn.commit();
		} catch (SQLException e) {
			e.printStackTrace();
			conn.rollback();
			
		}finally{
			DBUtil.close();
		}
	}
	
	public void updateResult(String course_code, int launcher_id) throws Exception{
		Connection conn = DBUtil.getConnection();
		try {
			
			conn.setAutoCommit(false);
			//method
			PreparedStatement ps = conn
					.prepareStatement("update course_rating set "
							+ "number_of_rating = (select count(*) from rating where rating.course_code = ? AND rating.launcher_id = ?)"
							+ " and result = (select sum(star)/count(*) from rating where rating.course_code = ? AND rating.launcher_id = ?)"
							+ " where course_code = ? AND launcher_id = ?");
			ps.setString(1, course_code);
			ps.setInt(2, launcher_id);
			ps.setString(3, course_code);
			ps.setInt(4, launcher_id);
			ps.setString(5, course_code);
			ps.setInt(6, launcher_id);
			ps.executeUpdate();
			conn.commit();
		} catch (SQLException e) {
			e.printStackTrace();
			conn.rollback();
			
		}finally{
			DBUtil.close();
		}
	}
	
	@SuppressWarnings("finally")
	public boolean checkAssess(int user_id, int class_id) throws Exception{
		Connection conn = DBUtil.getConnection();
		boolean result = false;
		try {
			
			conn.setAutoCommit(false);
			//method
			PreparedStatement ps = conn
					.prepareStatement("select assess from history where class_id = ? and student_id = ?");
			ps.setInt(1, class_id);
			ps.setInt(2, user_id);
			ResultSet rs = ps.executeQuery();
			conn.commit();
			if(rs.next()){
				if(rs.getString("assess").equals("YES")){
					result = true;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
			conn.rollback();
			return false;
			
		}finally{
			DBUtil.close();
			return result;
		}
	}
	
	public int findAmount(String Course_code, int launcher_id) throws Exception{
		Connection conn = DBUtil.getConnection();
		int result = 0;
		try {
			
			conn.setAutoCommit(false);
			//method
			PreparedStatement ps = conn
					.prepareStatement("SELECT count(*) FROM ututor.rating left join d_user on rating.rater = d_user.id where "
							+ "course_code = ? and launcher_id = ?");
			ps.setString(1, Course_code);
			ps.setInt(2, launcher_id);
			ResultSet rs = ps.executeQuery();
			if(rs.next()){
				result = rs.getInt("count(*)");
			}
			conn.commit();
			
		} catch (SQLException e) {
			e.printStackTrace();
			conn.rollback();
			
		}finally{
			DBUtil.close();
		}
		return result;
	}
	
	public ArrayList<Assessment> findAssessment(String Course_code, int launcher_id, int pageNo) throws Exception {
		// TODO Auto-generated method stub
		Connection conn = DBUtil.getConnection();
		ArrayList<Assessment> resultList = new ArrayList<Assessment>();
		try {
			
			conn.setAutoCommit(false);
			//method
			PreparedStatement ps = conn
					.prepareStatement("SELECT * FROM ututor.rating left join d_user on rating.rater = d_user.id where "
							+ "course_code = ? and launcher_id = ? limit ?,3");
			ps.setString(1, Course_code);
			ps.setInt(2, launcher_id);
			ps.setInt(3, 3*(pageNo-1));
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
				Assessment oneResult = new Assessment();
				oneResult.setTime(df.format(rs.getTimestamp("time")));
				oneResult.setTitle(rs.getString("title"));
				oneResult.setStar(rs.getInt("star"));
				oneResult.setContent(rs.getString("content"));
				oneResult.setRater_img(rs.getString("image"));
				if(rs.getString("nickname")==null){
					oneResult.setRater_name("匿名用户");
				}else{
					oneResult.setRater_name(rs.getString("nickname"));
				}
				resultList.add(oneResult);
			}
			conn.commit();
			
		} catch (SQLException e) {
			e.printStackTrace();
			conn.rollback();
			
		}finally{
			DBUtil.close();
		}
		return resultList;
	}
	
	public static void main(String[] args){
		Assessment ass = new Assessment();
		ass.setContent("hehhe");
		ass.setCourse_code("EECS4001");
		ass.setLauncher_id(2);
		ass.setTitle("what the fuck!");
		JdbcAssessmentDAO assDAO = new JdbcAssessmentDAO();
		try {
			System.out.print(assDAO.findAssessment("eecs4001", 2, 1).get(0).getContent());
			System.out.print(assDAO.findAssessment("eecs4001", 2, 1).get(1).getContent());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
