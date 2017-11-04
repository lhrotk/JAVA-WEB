package com.ututor.entity;

public class Course {
	int class_id;
	String code;
	String title;
	String length;
	String time;
	String status;
	String operation;
	String tutor;
	String team;
	public Course(){
		class_id = 0;
		code = "-";
		title = "-";
		length = "180分钟";
		time = "?";
		status = "-";
		operation = "?";
	}
	public int getClass_id() {
		return class_id;
	}
	public void setClass_id(int class_id) {
		this.class_id = class_id;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getLength() {
		return length;
	}
	public void setLength(String length) {
		this.length = length;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getOperation() {
		return operation;
	}
	public void setOperation(String operation) {
		this.operation = operation;
	}
	
	public void addOperation(String operation){
		this.operation = operation +"/" +this.operation; 
	}
	
	public String getTutor() {
		return tutor;
	}
	public void setTutor(String tutor) {
		this.tutor = tutor;
	}
	public String getTeam() {
		return team;
	}
	public void setTeam(String team) {
		this.team = team;
	}
	
	public void print(){
		System.out.println("class_id:" + class_id + ",code:" + code + ",title:" + title + ",length:" + length
				+ ",time:" + time + ",status:" + status);
	}
}
