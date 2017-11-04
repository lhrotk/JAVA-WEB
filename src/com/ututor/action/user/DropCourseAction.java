package com.ututor.action.user;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.ututor.action.BaseAction;
import com.ututor.entity.Class;
import com.ututor.impl.JdbcAssessmentDAO;
import com.ututor.impl.JdbcClassDAO;

public class DropCourseAction extends BaseAction{
	private int class_id;
	
	public int getClass_id() {
		return class_id;
	}

	public void setClass_id(int class_id) {
		this.class_id = class_id;
	}

	public String execute() throws Exception{
		HttpServletRequest request = ServletActionContext.getRequest();  
		HttpSession session = request.getSession();
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/xml;charset=UTF-8");
		response.setHeader("Cache-control", "no-cache");
		JdbcAssessmentDAO assDAO = new JdbcAssessmentDAO();
		if(session.getAttribute("userEmail")==null){
			response.getWriter().print("您需要先登录");
			return "success";
		}
		int user_id = (int)session.getAttribute("userID");
		JdbcClassDAO classDAO = new JdbcClassDAO();
		Class targetClass = classDAO.findbyId(class_id);
		if(targetClass.getStatus().equals("invalid")){
			response.getWriter().println("课程已取消");
			return "success";
		}
		if(targetClass.getN_done()>0){
			response.getWriter().println("课程已经开始，请与管理员联系");
			return "success";
		}
		classDAO.dropClass(user_id, class_id);
		response.getWriter().println("退课成功");
		return "success";
	}
}
