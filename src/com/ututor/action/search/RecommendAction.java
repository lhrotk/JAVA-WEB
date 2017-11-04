package com.ututor.action.search;

import java.util.List;

import com.ututor.action.BaseAction;
import com.ututor.entity.Class;
import com.ututor.impl.JdbcSearchCourseDAO;

public class RecommendAction extends BaseAction{
	private String mainCode;
	private int class_id;
	public String getMainCode() {
		return mainCode;
	}
	public void setMainCode(String mainCode) {
		this.mainCode = mainCode;
	}
	public String execute() throws Exception{
		JdbcSearchCourseDAO searchDAO = new JdbcSearchCourseDAO();
		List<Class> result = searchDAO.JdbcRecommendDAO(mainCode, class_id);
		request.put("recommendList", result);
		return "success";
	}
	public int getClass_id() {
		return class_id;
	}
	public void setClass_id(int class_id) {
		this.class_id = class_id;
	}
}
