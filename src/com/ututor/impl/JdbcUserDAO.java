package com.ututor.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.ututor.dao.UserDAO;
import com.ututor.entity.User;
import com.ututor.util.DBUtil;

public class JdbcUserDAO implements UserDAO {
	@Override
	public int save(User user) throws SQLException {
		Connection conn = DBUtil.getConnection();
		try{
			conn.setAutoCommit(false);
			PreparedStatement ps = conn
					.prepareStatement("insert into d_user" + "(email,nickname,password," + "user_integral,is_email_verify,"
							+ "email_verify_code,last_login_time,"+ "last_login_ip," + "wechat,sex,phone)" + "values(?,?,?,?,?,?,?,?,?,?,?)",Statement.RETURN_GENERATED_KEYS);
			ps.setString(1, user.getEmail());
			ps.setString(2, user.getNickname());
			ps.setString(3, user.getPassword());
			ps.setInt(4, user.getUserIntegral());
			ps.setString(5, user.getEmailVerify());
			ps.setString(6, user.getEmailVerifyCode());
			ps.setLong(7, user.getLastLoginTime());
			ps.setString(8, user.getLastLoginIp());
			ps.setString(9, user.getWechat());
			ps.setString(10, user.getSex());
			ps.setString(11, user.getPhone());
			ps.executeUpdate();
			ResultSet rs = ps.getGeneratedKeys();
			conn.commit();
			if(rs.next()){
				return rs.getInt(1);
			}
		}catch (SQLException e) {
			e.printStackTrace();
			conn.rollback();

		} finally {
			DBUtil.close();
		}
		return -1;
	}
	
	public static void main(String[] args){
		JdbcUserDAO userDAO = new JdbcUserDAO();
		try {
			System.out.println(userDAO.hasArrive(2, 224));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public void changeMsg(User user, int id)throws SQLException {
		Connection conn = DBUtil.getConnection();
		try{
			conn.setAutoCommit(false);
			PreparedStatement ps = conn.prepareStatement("update d_user set nickname=?,"
					+ "wechat=?, sex=?, phone=?  where id=?");
			ps.setString(1, user.getNickname());
			ps.setString(2, user.getWechat());
			ps.setString(3, user.getSex());
			ps.setString(4, user.getPhone());
			ps.setInt(5, id);
			ps.executeUpdate();
			conn.commit();
		}catch (SQLException e) {
			e.printStackTrace();
			conn.rollback();

		} finally {
			DBUtil.close();
		}
	}

	@Override
	public User findByEmail(String email) throws SQLException {
		Connection conn = DBUtil.getConnection();
		User user = new User();
		user.setId(-1);
		try{
			conn.setAutoCommit(false);
			PreparedStatement ps = conn.prepareStatement("select*from d_user" + "  where email=?");
			ps.setString(1, email);
			ResultSet rs = ps.executeQuery();
			conn.commit();
			if (rs.next()) {
				
				user.setId(rs.getInt("id"));
				user.setEmail(rs.getString("email"));
				user.setPassword(rs.getString("password"));
				user.setUserIntegral(rs.getInt("user_integral"));
				user.setNickname(rs.getString("nickname"));
				user.setEmailVerify(rs.getString("is_email_verify"));
				user.setEmailVerifyCode(rs.getString("email_verify_code"));
				user.setLastLoginTime(rs.getLong("last_login_time"));
				user.setLastLoginIp(rs.getString("last_login_ip"));
				user.setPhone(rs.getString("phone"));
				user.setWechat(rs.getString("wechat"));
				user.setSex(rs.getString("sex"));
				user.setIdentity(rs.getString("identity"));
				}
		}catch (SQLException e) {
			e.printStackTrace();
			conn.rollback();

		} finally {
			DBUtil.close();
		}
		return user;
	}
	
	public User findById(int id) throws SQLException {
		Connection conn = DBUtil.getConnection();
		User user = new User();
		try{
			conn.setAutoCommit(false);
			PreparedStatement ps = conn.prepareStatement("select*from d_user" + "  where id=?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			conn.commit();
			if (rs.next()) {
				user.setId(rs.getInt("id"));
				user.setEmail(rs.getString("email"));
				user.setPassword(rs.getString("password"));
				user.setUserIntegral(rs.getInt("user_integral"));
				user.setNickname(rs.getString("nickname"));
				user.setEmailVerify(rs.getString("is_email_verify"));
				user.setEmailVerifyCode(rs.getString("email_verify_code"));
				user.setLastLoginTime(rs.getLong("last_login_time"));
				user.setLastLoginIp(rs.getString("last_login_ip"));
				user.setPhone(rs.getString("phone"));
				user.setWechat(rs.getString("wechat"));
				user.setSex(rs.getString("sex"));
				user.setImage(rs.getString("image"));
			}
		}catch (SQLException e) {
			e.printStackTrace();
			conn.rollback();

		} finally {
			DBUtil.close();
		}

		return user;
	}

	@Override
	public void modifyCode(String email) throws SQLException {
		Connection conn = DBUtil.getConnection();
		try{
			conn.setAutoCommit(false);
			PreparedStatement ps = conn.prepareStatement("update d_user set is_email_verify='YES' where email=?");
			ps.setString(1, email);
			ps.executeUpdate();
			conn.commit();
		}catch (SQLException e) {
			e.printStackTrace();
			conn.rollback();

		} finally {
			DBUtil.close();
		}

	}
	
	public void modifyVerificationCode(String email, String new_code) throws SQLException {
		Connection conn = DBUtil.getConnection();
		try{
			conn.setAutoCommit(false);
			PreparedStatement ps = conn.prepareStatement("update d_user set email_verify_code = ? where email=?");
			ps.setString(1, new_code);
			ps.setString(2, email);
			ps.executeUpdate();
			conn.commit();
		}catch (SQLException e) {
			e.printStackTrace();
			conn.rollback();

		} finally {
			DBUtil.close();
		}

	}
	
	public boolean hasSelect(int user_id, int lesson_id) throws SQLException{
		Connection conn = DBUtil.getConnection();
		try{
			conn.setAutoCommit(false);
			PreparedStatement ps = conn.prepareStatement("SELECT * FROM class "
					+ "left join history on class.class_id = history.class_id "
					+ "left join lesson on class.class_id = lesson.class_id "
					+ "where history.student_id = ? and lesson_id = ?;");
			ps.setInt(1, user_id);
			ps.setInt(2, lesson_id);
			ResultSet rs = ps.executeQuery();
			conn.commit();
			if(rs.next()){
				return true;
			}else{
				return false;
			}
		}catch (SQLException e) {
			e.printStackTrace();
			conn.rollback();

		} finally {
			DBUtil.close();
		}
		return false;
	}
	
	public boolean hasArrive(int user_id, int lesson_id) throws SQLException{
		Connection conn = DBUtil.getConnection();
		try{
			conn.setAutoCommit(false);
			PreparedStatement ps = conn.prepareStatement("SELECT * FROM ututor.arrive where student_id = ? and lesson_id = ?;");
			ps.setInt(1, user_id);
			ps.setInt(2, lesson_id);
			ResultSet rs = ps.executeQuery();
			conn.commit();
			if(rs.next()){
				return true;
			}else{
				return false;
			}
		}catch (SQLException e) {
			e.printStackTrace();
			conn.rollback();

		} finally {
			DBUtil.close();
		}
		return false;
	}
	
	@Override
	public void modifyPSW(String email, String newPassword) throws SQLException {
		Connection conn = DBUtil.getConnection();
		try{
			conn.setAutoCommit(false);
			PreparedStatement ps = conn.prepareStatement("update d_user set password=? where email=?");
			ps.setString(1, newPassword);
			ps.setString(2, email);
			ps.executeUpdate();
			conn.commit();
		}catch (SQLException e) {
			e.printStackTrace();
			conn.rollback();

		} finally {
			DBUtil.close();
		}
		return;
	}



}
