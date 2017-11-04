package com.ututor.action.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.ututor.entity.Assessment;
import com.ututor.impl.JdbcAssessmentDAO;

public class AssessAction extends ActionSupport{
	private int user_id;
	private int class_id;
	private String content;
	private String title;
	private int star;
	private String course_code;
	private int launcher_id;
	private int rater_id;
	private Assessment assessment;
	private String name;
	
	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public int getClass_id() {
		return class_id;
	}

	public void setClass_id(int class_id) {
		this.class_id = class_id;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getStar() {
		return star;
	}

	public void setStar(int star) {
		this.star = star;
	}

	public String getCourse_code() {
		return course_code;
	}

	public void setCourse_code(String course_code) {
		this.course_code = course_code;
	}

	public int getLauncher_id() {
		return launcher_id;
	}

	public void setLauncher_id(int launcher_id) {
		this.launcher_id = launcher_id;
	}

	public Assessment getAssessment() {
		return assessment;
	}

	public void setAssessment(Assessment assessment) {
		this.assessment = assessment;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String execute() throws Exception{
		HttpServletRequest request = ServletActionContext.getRequest();  
		HttpSession session = request.getSession();
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setContentType("text/xml;charset=UTF-8");
		response.setHeader("Cache-control", "no-cache");
		JdbcAssessmentDAO assDAO = new JdbcAssessmentDAO();
		if(session.getAttribute("userEmail")==null){
			response.getWriter().print("您需要先登录");
			return "fail";
		}
		this.user_id = (int)session.getAttribute("userID");
		if(assDAO.checkAssess(user_id, class_id)){
			response.getWriter().print("您已进行过评价，无需重复评价");
			return "assessed";
		}
		/*
		System.out.println(content);
		System.out.println(course_code);
		System.out.println(launcher_id);
		System.out.println(title);
		System.out.println(star);
		System.out.println(class_id);*/
		if(name.equals("on")){
			rater_id = -1;
		}else{
			rater_id = user_id;
		}
		assessment = new Assessment();
		
		assessment.setContent(content);
		assessment.setCourse_code(course_code);
		assessment.setLauncher_id(launcher_id);
		assessment.setStar(star);
		assessment.setTitle(title);
		assDAO.addAssessment(user_id,class_id, assessment, rater_id);
		assDAO.updateResult(assessment.getCourse_code(), assessment.getLauncher_id());
		response.getWriter().println("评价提交成功");
		return "success";
	}
}
