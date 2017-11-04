package com.ututor.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import com.ututor.dao.ClassDAO;
import com.ututor.entity.Attendance;
import com.ututor.entity.Class;
import com.ututor.tools.htmlparser;
import com.ututor.util.DBUtil;
public class JdbcClassDAO implements ClassDAO{

	@Override
	public int save(Class oneClass) throws Exception {
		// default n_done is 0
		Connection conn = DBUtil.getConnection();
		try {
			
			conn.setAutoCommit(false);
			//method
			PreparedStatement ps = conn
					.prepareStatement("INSERT INTO class(tutor_id, o_price, n_price, code, title, type, description, total_seat, remain_seat, status, launcher_id) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
							, Statement.RETURN_GENERATED_KEYS);
			ps.setInt(1, oneClass.getTutor_id());
			ps.setDouble(2, oneClass.getO_price());
			ps.setDouble(3, oneClass.getN_price());
			ps.setString(4, oneClass.getCode());
			ps.setString(5, oneClass.getTitle());//title
			ps.setInt(6, oneClass.getType());//type
			ps.setString(7, oneClass.getDescription());//description
			ps.setInt(8, oneClass.getTotal_seat());
			ps.setInt(9, oneClass.getRemain_seat());
			ps.setString(10, oneClass.getStatus_db());
			ps.setInt(11, oneClass.getLauncher_id());
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
	public List<Class> findbyCode(String code) throws Exception {
		// TODO Auto-generated method stub
		Connection conn = DBUtil.getConnection();
		List<Class> resultList = new ArrayList<Class>();
		try {
			
			conn.setAutoCommit(false);
			//method
			
			PreparedStatement ps = conn
					.prepareStatement("SELECT * FROM class where code = ?");
			ps.setString(1, code);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
				Class resultClass = new Class();
				resultClass.setClass_id(rs.getInt("class_id"));
				resultClass.setCode(rs.getString("code"));
				resultClass.setCompany(rs.getString("company"));
				resultClass.setDescription(rs.getString("description"));
				resultClass.setN_done(rs.getInt("n_done"));
				resultClass.setN_price(rs.getInt("n_price"));
				resultClass.setO_price(rs.getInt("o_price"));
				resultClass.setSeason(rs.getString("season"));
				resultClass.setTitle(rs.getString("title"));
				resultClass.setTutor_id(rs.getInt("tutor_id"));
				resultClass.setType(rs.getInt("type"));
				resultClass.setYear(rs.getInt("year"));
				resultClass.setTotal_seat(rs.getInt("total_seat"));
				resultClass.setRemain_seat(rs.getInt("remain_seat"));
				resultClass.setStatus(rs.getString("status"));
				resultClass.setLauncher_id(rs.getInt("launcher_id"));
				resultClass.setImg_src(rs.getString("image"));
				resultList.add(resultClass);
			}
			conn.commit();
		} catch (SQLException e) {
			e.printStackTrace();
			conn.rollback();
			
		}finally{
			DBUtil.close();
			return resultList;
		}
	}

	
	public void modifyTutor(int id, int tutor_id) throws Exception {
		// TODO Auto-generated method stub
		Connection conn = DBUtil.getConnection();
		try {
			
			conn.setAutoCommit(false);
			//method
			PreparedStatement ps = conn
					.prepareStatement("UPDATE class SET tutor_id=? where class_id=?");
			ps.setInt(1, tutor_id);
			ps.setInt(2, id);
			ps.executeUpdate();
			conn.commit();
		} catch (SQLException e) {
			e.printStackTrace();
			conn.rollback();
			
		}finally{
			DBUtil.close();
		}
	}
	
	public void modifyCode(int id, String code) throws Exception {
		// TODO Auto-generated method stub
		Connection conn = DBUtil.getConnection();
		try {
			
			conn.setAutoCommit(false);
			//method
			PreparedStatement ps = conn
					.prepareStatement("UPDATE class SET code=? where class_id=?");
			ps.setString(1, code);
			ps.setInt(2, id);
			ps.executeUpdate();
			conn.commit();
		} catch (SQLException e) {
			e.printStackTrace();
			conn.rollback();
			
		}finally{
			DBUtil.close();
		}
	}
	
	public void modifyTitle(int id, String title) throws Exception {
		// TODO Auto-generated method stub
		Connection conn = DBUtil.getConnection();
		try {
			
			conn.setAutoCommit(false);
			//method
			PreparedStatement ps = conn
					.prepareStatement("UPDATE class SET title=? where class_id=?");
			ps.setString(1, title);
			ps.setInt(2, id);
			ps.executeUpdate();
			conn.commit();
		} catch (SQLException e) {
			e.printStackTrace();
			conn.rollback();
			
		}finally{
			DBUtil.close();
		}
	}
	
	public void modifyCompany(int id, String company) throws Exception {
		// TODO Auto-generated method stub
		Connection conn = DBUtil.getConnection();
		try {
			
			conn.setAutoCommit(false);
			//method
			PreparedStatement ps = conn
					.prepareStatement("UPDATE class SET company=? where class_id=?");
			ps.setString(1, company);
			ps.setInt(2, id);
			ps.executeUpdate();
			conn.commit();
		} catch (SQLException e) {
			e.printStackTrace();
			conn.rollback();
			
		}finally{
			DBUtil.close();
		}
	}
	public void modifyType(int id, int type) throws Exception {
		// TODO Auto-generated method stub
		Connection conn = DBUtil.getConnection();
		try {
			
			conn.setAutoCommit(false);
			//method
			PreparedStatement ps = conn
					.prepareStatement("UPDATE class SET type=? where class_id=?");
			ps.setInt(1, type);
			ps.setInt(2, id);
			ps.executeUpdate();
			conn.commit();
		} catch (SQLException e) {
			e.printStackTrace();
			conn.rollback();
			
		}finally{
			DBUtil.close();
		}
	}
		
	public void modifyNDone(int id, int n_done) throws Exception {
		// TODO Auto-generated method stub
		Connection conn = DBUtil.getConnection();
		try {
			
			conn.setAutoCommit(false);
			//method
			PreparedStatement ps = conn
					.prepareStatement("UPDATE class SET n_done=? where class_id=?");
			ps.setInt(1, n_done);
			ps.setInt(2, id);
			ps.executeUpdate();
			conn.commit();
		} catch (SQLException e) {
			e.printStackTrace();
			conn.rollback();
			
		}finally{
			DBUtil.close();
		}
	}
	
	public void modifyDescription(int id, String description) throws Exception {
		// TODO Auto-generated method stub
		Connection conn = DBUtil.getConnection();
		try {
			
			conn.setAutoCommit(false);
			//method
			PreparedStatement ps = conn
					.prepareStatement("UPDATE class SET description=? where class_id=?");
			ps.setString(1, description);
			ps.setInt(2, id);
			ps.executeUpdate();
			conn.commit();
		} catch (SQLException e) {
			e.printStackTrace();
			conn.rollback();
			
		}finally{
			DBUtil.close();
		}
	}
	
	public void modifyYear(int id, int year) throws Exception {
		// TODO Auto-generated method stub
		Connection conn = DBUtil.getConnection();
		try {
			
			conn.setAutoCommit(false);
			//method
			PreparedStatement ps = conn
					.prepareStatement("UPDATE class SET year=? where class_id=?");
			ps.setInt(1, year);
			ps.setInt(2, id);
			ps.executeUpdate();
			conn.commit();
		} catch (SQLException e) {
			e.printStackTrace();
			conn.rollback();
			
		}finally{
			DBUtil.close();
		}
	}
	
	public void modifyImage(int id, String img_src) throws Exception {
		// TODO Auto-generated method stub
		Connection conn = DBUtil.getConnection();
		try {
			
			conn.setAutoCommit(false);
			//method
			PreparedStatement ps = conn
					.prepareStatement("UPDATE class SET image=? where class_id=?");
			ps.setString(1, img_src);
			ps.setInt(2, id);
			ps.executeUpdate();
			conn.commit();
		} catch (SQLException e) {
			e.printStackTrace();
			conn.rollback();
			
		}finally{
			DBUtil.close();
		}
	}
	
	public void modifyTSeat(int id, int total_seat) throws Exception {
		// TODO Auto-generated method stub
		Connection conn = DBUtil.getConnection();
		try {
			
			conn.setAutoCommit(false);
			//method
			PreparedStatement ps = conn
					.prepareStatement("UPDATE class SET total_seat=? where class_id=?");
			ps.setInt(1, total_seat);
			ps.setInt(2, id);
			ps.executeUpdate();
			conn.commit();
		} catch (SQLException e) {
			e.printStackTrace();
			conn.rollback();
			
		}finally{
			DBUtil.close();
		}
	}
	
	public void modifyRSeat(int id, int remain_seat) throws Exception {
		// TODO Auto-generated method stub
		Connection conn = DBUtil.getConnection();
		try {
			
			conn.setAutoCommit(false);
			//method
			PreparedStatement ps = conn
					.prepareStatement("UPDATE class SET remain_seat=? where class_id=?");
			ps.setInt(1, remain_seat);
			ps.setInt(2, id);
			ps.executeUpdate();
			conn.commit();
		} catch (SQLException e) {
			e.printStackTrace();
			conn.rollback();
			
		}finally{
			DBUtil.close();
		}
	}
	
	public void modifyStatus(int id, String status) throws Exception {
		// TODO Auto-generated method stub
		Connection conn = DBUtil.getConnection();
		try {
			
			conn.setAutoCommit(false);
			//method
			PreparedStatement ps = conn
					.prepareStatement("UPDATE class SET status=? where class_id=?");
			ps.setString(1, status);
			ps.setInt(2, id);
			ps.executeUpdate();
			conn.commit();
		} catch (SQLException e) {
			e.printStackTrace();
			conn.rollback();
			
		}finally{
			DBUtil.close();
		}
	}
	
	public void modifyOPrice(int id, int price) throws Exception {
		// TODO Auto-generated method stub
		Connection conn = DBUtil.getConnection();
		try {
			
			conn.setAutoCommit(false);
			//method
			PreparedStatement ps = conn
					.prepareStatement("UPDATE class SET o_price=? where class_id=?");
			ps.setInt(1, price);
			ps.setInt(2, id);
			ps.executeUpdate();
			conn.commit();
		} catch (SQLException e) {
			e.printStackTrace();
			conn.rollback();
			
		}finally{
			DBUtil.close();
		}
	}
	
	public void modifyNPrice(int id, Double price) throws Exception {
		// TODO Auto-generated method stub
		Connection conn = DBUtil.getConnection();
		try {
			
			conn.setAutoCommit(false);
			//method
			PreparedStatement ps = conn
					.prepareStatement("UPDATE class SET n_price=? where class_id=?");
			ps.setDouble(1, price);
			ps.setInt(2, id);
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
	public void delete(int id) throws Exception {
		// TODO Auto-generated method stub
		Connection conn = DBUtil.getConnection();
		try {
			
			conn.setAutoCommit(false);
			//method
			PreparedStatement ps = conn
					.prepareStatement("DELETE FROM class WHERE class_id = ?");
			ps.setInt(1, id);
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
	public void update(int id, Class oneClass) throws Exception {
		// TODO Auto-generated method stub
		Connection conn = DBUtil.getConnection();
		try {
			
			conn.setAutoCommit(false);
			//method
			PreparedStatement ps1 = conn
					.prepareStatement("DELETE FROM class WHERE class_id = ?");
			ps1.setInt(1, id);
			PreparedStatement ps = conn
					.prepareStatement("INSERT INTO class(tutor_id, o_price, n_price, code, title, company, type, n_done, description, year, total_seat, remain_seat, status, launcher_id) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
			ps.setInt(1, oneClass.getTutor_id());
			ps.setDouble(2, oneClass.getO_price());
			ps.setDouble(3, oneClass.getN_price());
			ps.setString(4, oneClass.getCode());
			ps.setString(5, oneClass.getTitle());
			ps.setString(6, oneClass.getCompany());
			ps.setLong(7, oneClass.getType());
			ps.setInt(8, oneClass.getN_done());
			ps.setString(9, oneClass.getDescription());
			ps.setInt(10, oneClass.getYear());
			ps.setInt(11, oneClass.getTotal_seat());
			ps.setInt(12, oneClass.getRemain_seat());
			ps.setString(13, oneClass.getStatus_db());
			ps.setInt(14, oneClass.getLauncher_id());
			ps1.executeUpdate();
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
	@Override
	public Class findbyId(int id) throws Exception {
		// TODO Auto-generated method stub
		Connection conn = DBUtil.getConnection();
		Class resultClass = null;
		try {
			
			conn.setAutoCommit(false);
			//method
			
			PreparedStatement ps = conn
					.prepareStatement("SELECT *, type-(select count(*) from lesson where class_id = ? and(lesson.status='not decided' or lesson.time>current_timestamp))n_done FROM class where class_id= ?;");
			ps.setInt(1, id);
			ps.setInt(2, id);
			ResultSet rs = ps.executeQuery();
			if(rs.next()){
				resultClass = new Class();
				resultClass.setClass_id(rs.getInt("class_id"));
				resultClass.setCode(rs.getString("code"));
				resultClass.setCompany(rs.getString("company"));
				resultClass.setDescription(rs.getString("description"));
				resultClass.setN_done(rs.getInt("n_done"));
				resultClass.setN_price(rs.getInt("n_price"));
				resultClass.setO_price(rs.getInt("o_price"));
				resultClass.setSeason(rs.getString("season"));
				resultClass.setTitle(rs.getString("title"));
				resultClass.setTutor_id(rs.getInt("tutor_id"));
				resultClass.setType(rs.getInt("type"));
				resultClass.setYear(rs.getInt("year"));
				resultClass.setTotal_seat(rs.getInt("total_seat"));
				resultClass.setRemain_seat(rs.getInt("remain_seat"));
				resultClass.setStatus(rs.getString("status"));
				resultClass.setLauncher_id(rs.getInt("launcher_id"));
				resultClass.setImg_src(rs.getString("image"));
			}
			conn.commit();
		} catch (SQLException e) {
			e.printStackTrace();
			conn.rollback();
			
		}finally{
			DBUtil.close();
			return resultClass;
		}
	}
	
//	public void joinClass(int class_id, int user_id) throws SQLException{
//		Connection conn = DBUtil.getConnection();
//		try {
//			
//			conn.setAutoCommit(false);
//			//method
//			
//			PreparedStatement ps = conn
//					.prepareStatement("insert ignore into ututor.history (`student_id`, `class_id`) values(?, ?);");
//			ps.setInt(1, user_id);
//			ps.setInt(2, class_id);
//			ps.executeUpdate();
//			conn.commit();
//		} catch (SQLException e) {
//			e.printStackTrace();
//			conn.rollback();
//			
//		}finally{
//			DBUtil.close();
//		}
//	}
	
	public String whetherJoinClass(int class_id, int user_id) throws SQLException{
		Connection conn = DBUtil.getConnection();
		try {
			
			conn.setAutoCommit(false);
			//method
			
			PreparedStatement ps = conn
					.prepareStatement("select * from ututor.history where student_id = ? and class_id = ?;");
			ps.setInt(1, user_id);
			ps.setInt(2, class_id);
			ResultSet rs = ps.executeQuery();
			conn.commit();
			if(rs.next()){
				return "yes";
			}
		} catch (SQLException e) {
			e.printStackTrace();
			conn.rollback();
			
		}finally{
			DBUtil.close();
		}
		return "no";
	}
	
	public int takeClass(int class_id, int user_id) throws SQLException{
		Connection conn = DBUtil.getConnection();
		try {
			
			conn.setAutoCommit(false);
			//method
			
			PreparedStatement ps = conn
					.prepareStatement("insert ignore into ututor.history (`student_id`, `class_id`) "
							+ "select ?, ? from class where class_id = ? and remain_seat>0;",Statement.RETURN_GENERATED_KEYS);
			ps.setInt(1, user_id);
			ps.setInt(2, class_id);
			ps.setInt(3, class_id);
			ps.executeUpdate();
			ResultSet rs = ps.getGeneratedKeys();
			PreparedStatement ps2 = conn
					.prepareStatement("update class set "
							+ "class.remain_seat =  class.total_seat - (SELECT count(*) FROM ututor.history where class_id = ?) "
							+ "where class_id = ?;");
			ps2.setInt(1, class_id);
			ps2.setInt(2, class_id);
			ps2.executeUpdate();
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
		return 0;
	}
	
	public List<Class> postedClass(int owner_id, int pageNo, int pageSize) throws SQLException{
		List<Class> resultList = new ArrayList<Class>();
		Connection conn = DBUtil.getConnection();
		try {
			
			conn.setAutoCommit(false);
			//method
			
			PreparedStatement ps = conn
					.prepareStatement("SELECT * FROM ututor.class where launcher_id = ? or tutor_id = ? order by launch_time desc limit ?,?;");
			ps.setInt(1, owner_id);
			ps.setInt(2, owner_id);
			ps.setInt(3, (pageNo-1)*pageSize);
			ps.setInt(4, pageSize);
			ResultSet rs = ps.executeQuery();
			conn.commit();
			while(rs.next()){
				Class resultClass = new Class();
				resultClass.setClass_id(rs.getInt("class_id"));
				resultClass.setCode(rs.getString("code"));
				resultClass.setDescription(htmlparser.html2Text(rs.getString("description")));
				SimpleDateFormat df = new SimpleDateFormat("yyyy/MM/dd HH:mm");
				resultClass.setLaunch_time(df.format(rs.getTimestamp("launch_time")));
				resultClass.setN_price(rs.getInt("n_price"));
				resultClass.setO_price(rs.getInt("o_price"));
				resultClass.setN_done(rs.getInt("n_done"));
				resultClass.setTitle(rs.getString("title"));
				resultClass.setTutor_id(rs.getInt("tutor_id"));
				resultClass.setType(rs.getInt("type"));
				resultClass.setTotal_seat(rs.getInt("total_seat"));
				resultClass.setRemain_seat(rs.getInt("remain_seat"));
				resultClass.setStatus(rs.getString("status"));
				resultClass.setLauncher_id(rs.getInt("launcher_id"));
				resultList.add(resultClass);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			conn.rollback();
			
		}finally{
			DBUtil.close();
		}
		return resultList;
	}
	
	public int postedClassPage(int owner_id) throws SQLException{
		
		Connection conn = DBUtil.getConnection();
		try {
			
			conn.setAutoCommit(false);
			//method
			
			PreparedStatement ps = conn
					.prepareStatement("SELECT count(*) FROM ututor.class where launcher_id = ? or tutor_id = ?");
			ps.setInt(1, owner_id);
			ps.setInt(2, owner_id);
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
	
	public boolean checkAuth(int user_id, int class_id) throws SQLException{
		Connection conn = DBUtil.getConnection();
		try {
			
			conn.setAutoCommit(false);
			//method
			
			PreparedStatement ps = conn
					.prepareStatement("SELECT launcher_id, tutor_id FROM ututor.class where class_id = ?");
			ps.setInt(1, class_id);
			ResultSet rs = ps.executeQuery();
			conn.commit();
			if(rs.next()){
				int launcher_id = rs.getInt("launcher_id");
				int tutor_id = rs.getInt("tutor_id");
				if(user_id == launcher_id || tutor_id == user_id){
					return true;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
			conn.rollback();
			
		}finally{
			DBUtil.close();
		}
		return false;
	}
	
	public int[] getAttendance(int student_id, int class_id, int type) throws SQLException{
		Connection conn = DBUtil.getConnection();
		int[] result = new int[type];
		try {
			
			conn.setAutoCommit(false);
			//method
			
			PreparedStatement ps = conn
					.prepareStatement("SELECT * FROM ututor.arrive where class_id = ? and student_id = ?");
			ps.setInt(1, class_id);
			ps.setInt(2, student_id);
			ResultSet rs = ps.executeQuery();
			conn.commit();
			while(rs.next()){
				result[rs.getInt("lesson_seq")-1] = 1;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			conn.rollback();
			
		}finally{
			DBUtil.close();
		}
		return result;
	}
	
	public void dropClass(int user_id, int class_id) throws SQLException{
		Connection conn = DBUtil.getConnection();
		try {
			
			conn.setAutoCommit(false);
			//method
			
			PreparedStatement ps = conn
					.prepareStatement("DELETE FROM history where class_id = ? and student_id = ?");
			ps.setInt(1, class_id);
			ps.setInt(2, user_id);
			ps.executeUpdate();
			conn.commit();
		} catch (SQLException e) {
			e.printStackTrace();
			conn.rollback();
			
		}finally{
			DBUtil.close();
		}
	}
	
	public List<Attendance> getAttendant(int class_id, int type) throws SQLException{
		List<Attendance> attendance = new ArrayList<Attendance>();
		Connection conn = DBUtil.getConnection();
		try {
			
			conn.setAutoCommit(false);
			//method
			
			PreparedStatement ps = conn
					.prepareStatement("SELECT * FROM ututor.history left join d_user on history.student_id = d_user.id where class_id = ?");
			ps.setInt(1, class_id);
			ResultSet rs = ps.executeQuery();
			conn.commit();
			while(rs.next()){
				Attendance oneMember = new Attendance(type);
				oneMember.getStudent().setNickname(rs.getString("nickname"));
				oneMember.getStudent().setId(rs.getInt("id"));
				oneMember.getStudent().setWechat(rs.getString("wechat"));
				oneMember.getStudent().setEmail(rs.getString("email"));
				oneMember.getStudent().setSex(rs.getString("sex"));
				attendance.add(oneMember);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			conn.rollback();
			
		}finally{
			DBUtil.close();
		}
		return attendance;
	}
	
	public static void main(String[] args){
		JdbcClassDAO classDAO = new JdbcClassDAO();
		try {
			System.out.println(classDAO.getAttendant(107,3).size());
			int[] result = classDAO.getAttendance(2, 107, 3);
//			System.out.println(result[0]);
//			System.out.println(result[1]);
//			System.out.println(result[2]);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	

	@Override
	public List<Class> findbylauncher(int launcher_id) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
}
