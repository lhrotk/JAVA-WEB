package com.ututor.entity;

public class Class {
	int class_id;// YEAR+XX+XXX
	String code;// EECSXXXX
	String title;
	int tutor_id;
	String company;
	double o_price;
	double n_price;
	int type;
	int n_done;
	String description;
	int year;
	int total_seat;
	int remain_seat;
	String status;
	int launcher_id;
	String img_src;
	String season;
	String launch_time;
	int current_seat;

	public String getLaunch_time() {
		return launch_time;
	}

	public void setLaunch_time(String launch_time) {
		this.launch_time = launch_time;
	}

	public int getCurrent_seat() {
		return total_seat - remain_seat;
	}

	public void setCurrent_seat(int current_seat) {
		this.current_seat = current_seat;
	}

	public int getLauncher_id() {
		return launcher_id;
	}

	public void setLauncher_id(int launcher_id) {
		this.launcher_id = launcher_id;
	}

	public int getTotal_seat() {
		return total_seat;
	}

	public void setTotal_seat(int total_seat) {
		this.total_seat = total_seat;
	}

	public int getRemain_seat() {
		return remain_seat;
	}

	public void setRemain_seat(int remain_seat) {
		this.remain_seat = remain_seat;
	}

	public int getClass_id() {
		return class_id;
	}

	public void setClass_id(int class_id) {
		this.class_id = class_id;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public String getSeason() {
		return season;
	}

	public void setSeason(String season) {
		this.season = season;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
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

	public int getTutor_id() {
		return tutor_id;
	}

	public void setTutor_id(int tutor_id) {
		this.tutor_id = tutor_id;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public double getO_price() {
		return o_price;
	}

	public void setO_price(double o_price) {
		this.o_price = o_price;
	}

	public double getN_price() {
		return n_price;
	}

	public void setN_price(double n_price) {
		this.n_price = n_price;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public int getN_done() {
		return n_done;
	}

	public void setN_done(int n_done) {
		this.n_done = n_done;
	}

	public String getStatus() {
		if (this.status.equals("invalid")) {
			return "已取消";
		} else if (this.status.equals("finished")) {
			return "已结束";
		} else {
			return "进行中("+n_done+"/"+type+")";
		}
	}

	public String getStatus_db() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getImg_src() {
		return img_src;
	}

	public void setImg_src(String img_src) {
		this.img_src = img_src;
	}

}
