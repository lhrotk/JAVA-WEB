package com.ututor.impl;

import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ututor.entity.File;
import com.ututor.util.DBUtil;

public class JdbcFileDAO {
	public List<File> listFile(int lesson_id) throws SQLException, UnsupportedEncodingException {
		Connection conn = DBUtil.getConnection();
		ArrayList<File> fileList = new ArrayList<File>();
		try {

			conn.setAutoCommit(false);
			// method
			PreparedStatement ps = conn.prepareStatement(
					"select * from (SELECT files.*, lesson.file_access FROM ututor.files "
					+ "left join ututor.lesson on files.lesson_id = lesson.lesson_id)t where lesson_id = ?");
			ps.setInt(1, lesson_id);
			ResultSet rs = ps.executeQuery();
			conn.commit();
			while(rs.next()){
				File oneFile = new File();
				oneFile.setFileId(rs.getInt("id"));
				oneFile.setAddress(rs.getString("address"));
				oneFile.setFileContentType(rs.getString("type"));
				oneFile.setFileAccess(rs.getInt("file_access"));
				oneFile.setFileName(rs.getString("filename"));
				fileList.add(oneFile);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			conn.rollback();

		} finally {
			DBUtil.close();
		}
		return fileList;
	}
	
	public void add(int class_id, int lesson_id, String contentType, String fileName, String address) throws SQLException{
		Connection conn = DBUtil.getConnection();
		try {

			conn.setAutoCommit(false);
			// method
			PreparedStatement ps = conn.prepareStatement(
					"INSERT INTO `ututor`.`files` (`class_id`, `lesson_id`, `filename`, `address`, `type`) VALUES (?,?,?,?,?) ON DUPLICATE KEY UPDATE type=?;");
			ps.setInt(1, class_id);
			ps.setInt(2, lesson_id);
			ps.setString(3, fileName);
			ps.setString(4, address);
			ps.setString(5, contentType);
			ps.setString(6, contentType);
			ps.executeUpdate();
			conn.commit();
		} catch (SQLException e) {
			e.printStackTrace();
			conn.rollback();

		} finally {
			DBUtil.close();
		}
	}
	public boolean checkAuth(int user_id, int lesson_id) throws SQLException{
		Connection conn = DBUtil.getConnection();
		try {

			conn.setAutoCommit(false);
			// method
			PreparedStatement ps = conn.prepareStatement(
					"select * from class left join lesson on class.class_id = lesson.class_id where (class.tutor_id = ? or class.launcher_id = ?) and lesson_id = ?;");
			ps.setInt(1, user_id);
			ps.setInt(2, user_id);
			ps.setInt(3, lesson_id);
			ResultSet rs = ps.executeQuery();
			conn.commit();
			if(rs.next()){
				return true;
			}else{
				return false;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			conn.rollback();

		} finally {
			DBUtil.close();
		}
		return false;
	}
	
	public void delete(int fileId) throws SQLException{
		Connection conn = DBUtil.getConnection();
		try {

			conn.setAutoCommit(false);
			// method
			PreparedStatement ps = conn.prepareStatement(
					"DELETE FROM `ututor`.`files` WHERE `id`=?;");
			ps.setInt(1, fileId);
			ps.executeUpdate();
			conn.commit();
		} catch (SQLException e) {
			e.printStackTrace();
			conn.rollback();

		} finally {
			DBUtil.close();
		}
	}
}
