package com.ututor.action.user;

import java.util.ArrayList;
import java.util.List;

import com.ututor.action.BaseAction;
import com.ututor.entity.Course;
import com.ututor.impl.JdbcCourseListDAO;

public class ListCourseAction extends BaseAction{
	private int user_id;
	private int pageNo;
	private List<Course> listCourse; 
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getPageNo() {
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	public List<Course> getListCourse() {
		return listCourse;
	}
	public void setListCourse(List<Course> listCourse) {
		this.listCourse = listCourse;
	}
	public String execute() throws Exception{
		this.user_id = (int)session.get("userID");
		JdbcCourseListDAO listDAO = new JdbcCourseListDAO();
		listCourse = new ArrayList<Course>();
		listCourse = listDAO.listCourseById(user_id, pageNo, 5);
		request.put("totalPage", Math.ceil(listDAO.getTotal(user_id)/5.0));
		request.put("listCourse", listCourse);
		request.put("pageNo", pageNo);
		return "success";
	}
}
