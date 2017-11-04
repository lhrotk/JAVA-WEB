package com.ututor.action.team;

import java.sql.SQLException;

import javax.mail.Session;

import com.ututor.action.BaseAction;
import com.ututor.impl.JdbcClassDAO;

public class CheckAuthAction extends BaseAction{
	private String user_id;
	private int class_id;

	public int getClass_id() {
		return class_id;
	}

	public void setClass_id(String class_id) {
		this.class_id = Integer.parseInt(class_id);
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	
	public String execute() throws SQLException{
		JdbcClassDAO classDAO = new JdbcClassDAO();
//		System.out.println(class_id);
//		System.out.println((int)session.get("userID"));
		if(classDAO.checkAuth((int)session.get("userID"), class_id)){
			//System.out.println("here");
			request.put("class_id", class_id);
			return "success";
		}else{
			return "fail";
		}
	}
}
