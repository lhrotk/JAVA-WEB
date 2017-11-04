package com.ututor.entity;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Lesson {
	int lesson_id;
	int class_id;
	int lesson_seq;// di ji jie
	int duration;
	Date time;
	String time_text;
	String place;
	String description;
	String status;
	String inputDate="";
	String inputTime="00:00";
	int fileAccess;
	
	public String getInputDate() {
		return inputDate;
	}

	public void setInputDate(String inputDate) {
		this.inputDate = inputDate;
	}

	public String getInputTime() {
		return inputTime;
	}

	public void setInputTime(String inputTime) {
		this.inputTime = inputTime;
	}

	public String getFileAccess() {
		if(fileAccess==1){
			return "所有人可见";
		}
		else if(fileAccess==2){
			return "仅选课人员可见";
		}else{
			return "仅出勤人员可见";
		}
	
	}
	
	public int getFileAccessInt() {
		return this.fileAccess;
	
	}

	public void setFileAccess(String fileAccess) {
		this.fileAccess = Integer.parseInt(fileAccess);
	}

	public String getTime_text() {
		SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd HH:mm");
		//System.out.println(time);
		if(this.time==null){
			return null;
		}else{
			String temp = df.format(this.time);
			if(temp.substring(11,16).equals("00:00")){
				return temp.substring(0,10);
			}else{
				return temp;
			}
		}
	}

	public void setTime_text(String time_text) {
		this.time_text = time_text;
	}

	public int getDuration() {
		return duration;
	}

	public void setDuration(String duration) {
		this.duration = Integer.parseInt(duration);
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	

	public int getLesson_id() {
		return lesson_id;
	}

	public void setLesson_id(String lesson_id) {
		this.lesson_id = Integer.parseInt(lesson_id);
	}

	public int getClass_id() {
		return class_id;
	}

	public void setClass_id(String class_id) {
		this.class_id = Integer.parseInt(class_id);
	}

	public int getLesson_seq() {
		return lesson_seq;
	}

	public void setLesson_seq(int lesson_seq) {
		this.lesson_seq = lesson_seq;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
}
