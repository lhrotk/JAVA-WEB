package com.ututor.entity;

public class Assessment {
	String course_code;
	int launcher_id;
	String title;
	String content;
	int star;
	String time;
	String rater_name;
	String rater_img;
	public String getRater_img() {
		if(this.rater_img==null||this.rater_img.length()==0){
			return "images/avatar.jpg";
		}else{
			return rater_img;
			}
	}
	public void setRater_img(String rater_img) {
		this.rater_img = rater_img;
	}
	public String getRater_name() {
		return rater_name;
	}
	public void setRater_name(String rater_name) {
		this.rater_name = rater_name;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
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
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getStar() {
		return star;
	}
	public void setStar(int star) {
		this.star = star;
	}
}
