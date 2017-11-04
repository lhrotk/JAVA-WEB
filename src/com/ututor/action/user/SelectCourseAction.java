package com.ututor.action.user;

import com.ututor.entity.Class;
import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.ututor.action.BaseAction;
import com.ututor.impl.JdbcAssessmentDAO;
import com.ututor.impl.JdbcClassDAO;

public class SelectCourseAction extends BaseAction{
	private int class_id;
	
	public int getClass_id() {
		return class_id;
	}

	public void setClass_id(String class_id) {
		this.class_id = Integer.parseInt(class_id);
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
		if(((String)(session.getAttribute("userStatus"))).equals("NO")){
			response.getWriter().print("您需要验证您的邮箱");
			return "success";
		}
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
		if(classDAO.takeClass(class_id, user_id)>0){
			response.getWriter().println("选课成功");
		}else{
			response.getWriter().println("人数已满");
		}
		return "success";
	}
}
