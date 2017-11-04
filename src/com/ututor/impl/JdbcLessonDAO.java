package com.ututor.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.ututor.dao.LessonDAO;
import com.ututor.entity.Lesson;
import com.ututor.util.DBUtil;

public class JdbcLessonDAO implements LessonDAO{

	@Override
	public void save(Lesson lesson) throws Exception {
		// TODO Auto-generated method stub
		Connection conn = DBUtil.getConnection();
		try {
			
			conn.setAutoCommit(false);
			//method
			PreparedStatement ps = conn
					.prepareStatement("INSERT INTO lesson (lesson_id, class_id, lesson_seq, time, place, description, status, duration) VALUES (?,?,?,?,?,?,?,?)");
			ps.setInt(1, lesson.getLesson_id());
			ps.setInt(2, lesson.getClass_id());
			ps.setInt(3, lesson.getLesson_seq());
			ps.setTimestamp(4, new java.sql.Timestamp(lesson.getTime().getTime()));
			ps.setString(5, lesson.getPlace());
			ps.setString(6, lesson.getDescription());
			ps.setString(7, lesson.getStatus());
			ps.setInt(8, lesson.getDuration());
			ps.executeUpdate();
			conn.commit();
		} catch (SQLException e) {
			e.printStackTrace();
			conn.rollback();
			
		}finally{
			DBUtil.close();
		}
	}
	
	public int init(int class_id, int seq) throws SQLException{
		Connection conn = DBUtil.getConnection();
		try {
			
			conn.setAutoCommit(false);
			//method
			PreparedStatement ps = conn
					.prepareStatement("INSERT INTO lesson (class_id, lesson_seq, status) VALUES (?,?,'not decided')", Statement.RETURN_GENERATED_KEYS);
			ps.setInt(1, class_id);
			ps.setInt(2, seq);
			ps.executeUpdate();
			ResultSet rs = ps.getGeneratedKeys();
			conn.commit();
			if(rs.next()){
				return rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			conn.rollback();
			
		}finally{
			DBUtil.close();
		}
		return -1;
	}


	@SuppressWarnings("finally")
	@Override
	public Lesson findbyLessonId(int lesson_id) throws Exception {
		// TODO Auto-generated method stub
		Connection conn = DBUtil.getConnection();
		Lesson resultLesson = null;
		try {
			
			conn.setAutoCommit(false);
			//method
			
			PreparedStatement ps = conn
					.prepareStatement("SELECT * FROM lesson where lesson_id = ?");
			ps.setInt(1, lesson_id);
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()){
				resultLesson = new Lesson();
				resultLesson.setClass_id(rs.getInt("class_id")+"");
				resultLesson.setDescription(rs.getString("description"));
				resultLesson.setLesson_id(rs.getInt("lesson_id")+"");
				resultLesson.setLesson_seq(rs.getInt("lesson_seq"));
				resultLesson.setPlace(rs.getString("place"));
				resultLesson.setStatus(rs.getString("status"));
				resultLesson.setDuration(rs.getInt("duration")+"");
				resultLesson.setTime(rs.getTimestamp("time"));
				resultLesson.setFileAccess(rs.getString("file_access"));
			}
			conn.commit();
		} catch (SQLException e) {
			e.printStackTrace();
			conn.rollback();
			
		}finally{
			DBUtil.close();
			return resultLesson;
		}
	}
	
	public int getFinished(int class_id) throws SQLException{
		Connection conn = DBUtil.getConnection();
		try {
			
			conn.setAutoCommit(false);
			//method
			PreparedStatement ps = conn
					.prepareStatement(""
							+ "select count(*) as finished from lesson where class_id = ? and status = 'finished'");
			ps.setInt(1, class_id);
			ResultSet rs = ps.executeQuery();
			conn.commit();
			if(rs.next()){
				return rs.getInt("finished");
			}
		} catch (SQLException e) {
			e.printStackTrace();
			conn.rollback();
			
		}finally{
			DBUtil.close();
		}
		return 0;
	}
	
	public int getNextLesson(int class_id) throws SQLException{
		Connection conn = DBUtil.getConnection();
		try {
			
			conn.setAutoCommit(false);
			//method
			PreparedStatement ps = conn
					.prepareStatement("select lesson_id from lesson where class_id = ? and status != 'finished' order by lesson_seq limit 1");
			ps.setInt(1, class_id);
			ResultSet rs = ps.executeQuery();
			conn.commit();
			if(rs.next()){
				return rs.getInt("lesson_id");
			}
		} catch (SQLException e) {
			e.printStackTrace();
			conn.rollback();
			
		}finally{
			DBUtil.close();
		}
		return 0;
	}



	@Override
	public void delete(int lesson_id) throws Exception {
		// TODO Auto-generated method stub
		Connection conn = DBUtil.getConnection();
		try {
			
			conn.setAutoCommit(false);
			//method
			PreparedStatement ps = conn
					.prepareStatement("DELETE FROM lesson WHERE lesson_id = ?");
			ps.setInt(1, lesson_id);
			ps.executeUpdate();
			conn.commit();
		} catch (SQLException e) {
			e.printStackTrace();
			conn.rollback();
			
		}finally{
			DBUtil.close();
		}
	}
	
	public int finish(int lesson_id, int class_id) throws Exception {
		// TODO Auto-generated method stub
		int affected = 0;
		Connection conn = DBUtil.getConnection();
		try {
			
			conn.setAutoCommit(false);
			//method
			PreparedStatement ps = conn
					.prepareStatement("UPDATE `ututor`.`lesson` SET `status`='finished' WHERE status!='finished' and `lesson_id`=?;");
			PreparedStatement ps1 = conn
					.prepareStatement("update class set n_done = n_done+1 where class_id = ?");
			PreparedStatement ps2 = conn
					.prepareStatement("update class set status = 'finished' where n_done = type and class_id = ?");
			ps1.setInt(1, class_id);
			ps.setInt(1, lesson_id);
			ps2.setInt(1, class_id);
			affected=ps.executeUpdate();
			conn.commit();
			//System.out.println(affected);
			if(affected>0){
				ps1.executeUpdate();
				ps2.executeUpdate();
				conn.commit();
			}
		} catch (SQLException e) {
			e.printStackTrace();
			conn.rollback();
			
		}finally{
			DBUtil.close();
		}
		return affected;
	}
	
	public void attend(int lesson_id, int student_id, int lesson_seq, int class_id) throws Exception {
		Connection conn = DBUtil.getConnection();
		try {
			
			conn.setAutoCommit(false);
			//method
			PreparedStatement ps = conn
					.prepareStatement("INSERT INTO `ututor`.`arrive` (`student_id`, `lesson_id`, `lesson_seq`, `class_id`) VALUES (?, ?, ?, ?);");
			ps.setInt(1, student_id);
			ps.setInt(2, lesson_id);
			ps.setInt(3, lesson_seq);
			ps.setInt(4, class_id);
			PreparedStatement ps2 = conn
					.prepareStatement("UPDATE `ututor`.`history` SET `arrive`='YES' WHERE student_id=? and class_id=?;");
			ps2.setInt(1, student_id);
			ps2.setInt(2, class_id);
			ps2.executeUpdate();
			ps.executeUpdate();
			conn.commit();
		} catch (SQLException e) {
			e.printStackTrace();
			conn.rollback();
			
		}finally{
			DBUtil.close();
		}
	}

	@Override
	public void update(Lesson lesson) throws Exception {
		// TODO Auto-generated method stub
		Connection conn = DBUtil.getConnection();
		try {
			
			conn.setAutoCommit(false);
			PreparedStatement ps = conn
					.prepareStatement("update lesson set time=? , place=?, description=?, status=?, duration=?, file_access=? where lesson_id = ?");
			ps.setTimestamp(1, new java.sql.Timestamp(lesson.getTime().getTime()));
			ps.setString(2, lesson.getPlace());
			ps.setString(3, lesson.getDescription());
			ps.setString(4, lesson.getStatus());
			ps.setInt(5, lesson.getDuration());
			ps.setInt(6, lesson.getFileAccessInt());
			ps.setInt(7, lesson.getLesson_id());
			ps.executeUpdate();
			conn.commit();
		} catch (SQLException e) {
			e.printStackTrace();
			conn.rollback();
			
		}finally{
			DBUtil.close();
		}
	}
	
	public static void main(String[] args) throws SQLException{
//		Lesson lesson = new Lesson();
//		lesson.setDescription("A good class");
//		lesson.setDuration(180);
//		lesson.setLesson_id(12301);
//		lesson.setClass_id(123);
//		lesson.setLesson_seq(1);
//		lesson.setPlace("NE 105");
//		lesson.setStatus("ongoing");
//		String dateStr = "2010/05/04 12:34:23";
//		Date date = new Date();
//		//注意format的格式要与日期String的格式相匹配
//		DateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
//		try {
//			date = sdf.parse(dateStr);
//			//System.out.println(date.toString());
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		lesson.setTime(date);
//		JdbcLessonDAO jdbclesson = new JdbcLessonDAO();
//		try {
//			jdbclesson.delete(12301);
//			jdbclesson.save(lesson);
//			lesson.setDescription("haha");
//			jdbclesson.update(12301, lesson);
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		try {
//			lesson = jdbclesson.findbyLessonId(12301);
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		System.out.println(lesson.getTime().toString());
		JdbcLessonDAO lessonDAO = new JdbcLessonDAO();
		System.out.println(lessonDAO.getNextLesson(181));
	}


	@SuppressWarnings("finally")
	@Override
	public List<Lesson> findbyClassId(int class_id) throws Exception {
		// TODO Auto-generated method stub
		Connection conn = DBUtil.getConnection();
		List<Lesson> lessonList = new ArrayList<Lesson>();
		try {
			
			conn.setAutoCommit(false);
			//method
			
			PreparedStatement ps = conn
					.prepareStatement("SELECT * FROM lesson where class_id = ? order by lesson_seq");
			ps.setInt(1, class_id);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()){
				Lesson resultLesson = new Lesson();
				resultLesson.setClass_id(rs.getInt("class_id")+"");
				resultLesson.setDescription(rs.getString("description"));
				resultLesson.setLesson_id(rs.getInt("lesson_id")+"");
				resultLesson.setLesson_seq(rs.getInt("lesson_seq"));
				resultLesson.setPlace(rs.getString("place"));
				resultLesson.setStatus(rs.getString("status"));
				resultLesson.setDuration(rs.getInt("duration")+"");
				resultLesson.setTime(rs.getTimestamp("time"));
				resultLesson.setFileAccess(rs.getInt("file_access")+"");
				lessonList.add(resultLesson);
			}
			conn.commit();
		} catch (SQLException e) {
			e.printStackTrace();
			conn.rollback();
			
		}finally{
			DBUtil.close();
			return lessonList;
		}
	}

}
