package com.ututor.action.search;

import java.util.List;

import com.ututor.action.BaseAction;
import com.ututor.impl.JdbcSearchCourseDAO;
import com.ututor.entity.CourseListUnit;
import com.ututor.entity.JdbcSearchResult;
import com.ututor.entity.SearchConditions;

public class CourseSearchAction extends BaseAction{
	private List<CourseListUnit> searchResult;
	private int totalResults;
	private int pageNo;
	private int totalPage;
	private SearchConditions conditions;
	public CourseSearchAction(){
		this.pageNo = 1;
		this.conditions = new SearchConditions();
	}
	
	public SearchConditions getConditions() {
		return conditions;
	}

	public void setConditions(SearchConditions conditions) {
		this.conditions = conditions;
	}

	public int getPageNo() {
		return pageNo;
	}
	public void setPageNo(String pageNo) {
		this.pageNo = Integer.parseInt(pageNo);
	}
	public List<CourseListUnit> getSearchResult() {
		return searchResult;
	}
	public void setSearchResult(List<CourseListUnit> searchResult) {
		this.searchResult = searchResult;
	}
	public int getTotalResults() {
		return totalResults;
	}
	public void setTotalResults(int totalResults) {
		this.totalResults = totalResults;
	}
	public String execute() throws Exception{
		JdbcSearchCourseDAO searchDAO = new JdbcSearchCourseDAO();
		JdbcSearchResult result = new JdbcSearchResult();
		//System.out.println(pageNo);
		result = searchDAO.searchCourse(pageNo, 5, conditions);
		this.totalResults = result.getTotalResults();
		this.searchResult = result.getSearchList();
		this.totalPage = (int)Math.ceil(totalResults/5.0);
		//request.put("searchResult", searchResult);
		request.put("totalResults", totalResults);
		//request.put("pageNo", pageNo);
		request.put("totalPageNo", totalPage);
		return "success";
	}
}
