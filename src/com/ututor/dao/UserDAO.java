package com.ututor.dao;

import java.sql.SQLException;

import com.ututor.entity.User;

public interface UserDAO {
	public int save(User user) throws SQLException;

	public User findByEmail(String email) throws SQLException;

	public void modifyCode(String Email) throws SQLException;
	
	public void modifyPSW(String Email, String newPassword) throws SQLException;
}
