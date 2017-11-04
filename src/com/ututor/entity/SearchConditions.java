package com.ututor.entity;

public class SearchConditions {
	String CourseCode;
	String CourseTitle;
	int Uni;//0 all 1 one time 2 package
	int TotalStudent;
	String MinPrice;
	String MaxPrice;
	String MinDate;
	String MaxDate;
	int Launcher_id;
	boolean Start;
	boolean Full;
	boolean NoTime;
	boolean NoPlace;
	String Order;
	public SearchConditions(){
		this.Full = false;
		this.NoPlace = false;
		this.NoTime = false;
		this.Start = false;
		Launcher_id=-1;
		this.Order = "1";
		this.TotalStudent = 0;
		this.Uni = 0;
	}
	public String getCourseTitle() {
		return CourseTitle;
	}
	public void setCourseTitle(String courseTitle) {
		CourseTitle = courseTitle;
	}
	public String getCourseCode() {
		return CourseCode;
	}
	public void setCourseCode(String courseCode) {
		CourseCode = courseCode;
	}
	public int getUni() {
		return Uni;
	}
	public void setUni(String Uni) {
		this.Uni = Integer.parseInt(Uni);
	}
	public int getTotalStudent() {
		return TotalStudent;
	}
	public void setTotalStudent(String totalStudent) {
			this.TotalStudent = Integer.parseInt(totalStudent);
	}
	public String getMinPrice() {
		return MinPrice;
	}
	public void setMinPrice(String minPrice) {
		this.MinPrice = minPrice;
	}
	public String getMaxPrice() {
		return MaxPrice;
	}
	public void setMaxPrice(String maxPrice) {
		this.MaxPrice = maxPrice;
	}
	public String getMinDate() {
		return MinDate;
	}
	public void setMinDate(String minDate) {
		this.MinDate = minDate;
	}
	public String getMaxDate() {
		return MaxDate;
	}
	public void setMaxDate(String maxDate) {
		this.MaxDate = maxDate;
	}
	public int getLauncher_id() {
		return Launcher_id;
	}
	public void setLauncher_id(String launcher_id) {
		this.Launcher_id = Integer.parseInt(launcher_id);
	}
	public boolean getStart() {
		return Start;
	}
	public void setStart(String Start) {
		this.Start = Boolean.parseBoolean(Start);
	}
	public boolean getFull() {
		return Full;
	}
	public void setFull(String Full) {
		this.Full = Boolean.parseBoolean(Full);
	}
	public boolean getNoTime() {
		return NoTime;
	}
	public void setNoTime(String NoTime) {
		this.NoTime = Boolean.parseBoolean(NoTime);
	}
	public boolean getNoPlace() {
		return NoPlace;
	}
	public void setNoPlace(String NoPlace) {
		this.NoPlace = Boolean.parseBoolean(NoPlace);
	}
	public String getOrder() {
		return Order;
	}
	public void setOrder(String order) {
		Order = order;
	}
	
}
