package com.ututor.entity;

import java.util.List;

public class JdbcSearchResult {
	int totalResults;
	List<CourseListUnit> searchList;
	public int getTotalResults() {
		return totalResults;
	}
	public void setTotalResults(int totalResults) {
		this.totalResults = totalResults;
	}
	public List<CourseListUnit> getSearchList() {
		return searchList;
	}
	public void setSearchList(List<CourseListUnit> searchList) {
		this.searchList = searchList;
	}
}
