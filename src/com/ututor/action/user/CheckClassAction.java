package com.ututor.action.user;

import java.sql.SQLException;

import com.ututor.action.BaseAction;
import com.ututor.impl.JdbcClassDAO;

public class CheckClassAction extends BaseAction{
	private int class_id;
	
	public int getClass_id() {
		return class_id;
	}

	public void setClass_id(String class_id) {
		this.class_id = Integer.parseInt(class_id);
	}
	
	public String execute() throws NumberFormatException, SQLException{
		//System.out.println(class_id);
		
		if(session.get("userID")==null){
			System.out.println("no log");
			request.put("result", "no");
			return "success";
		}
		JdbcClassDAO classDAO = new JdbcClassDAO();
		String result = classDAO.whetherJoinClass(class_id, (int)session.get("userID"));
		//System.out.println(result);
		request.put("result", result);
		return "success";
	}
}
