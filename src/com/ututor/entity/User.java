package com.ututor.entity;

import java.io.Serializable;

public class User implements Serializable {
	private int id;
	private String email;
	private String nickname;
	private String password;
	private String phone;
	private String wechat;
	private String sex;
	private int userIntegral;
	private String emailVerify;
	private String emailVerifyCode;
	private long lastLoginTime;
	private String lastLoginIp;
	private String image;
	private String identity;


	public String getIdentity() {
		return identity;
	}

	public void setIdentity(String identity) {
		this.identity = identity;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEmailVerify() {
		return emailVerify;
	}

	public void setEmailVerify(String emailVerify) {
		this.emailVerify = emailVerify;
	}

	public String getEmailVerifyCode() {
		return emailVerifyCode;
	}

	public void setEmailVerifyCode(String emailVerifyCode) {
		this.emailVerifyCode = emailVerifyCode;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getLastLoginIp() {
		return lastLoginIp;
	}

	public void setLastLoginIp(String lastLoginIp) {
		this.lastLoginIp = lastLoginIp;
	}

	public long getLastLoginTime() {
		return lastLoginTime;
	}

	public void setLastLoginTime(long lastLoginTime) {
		this.lastLoginTime = lastLoginTime;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getUserIntegral() {
		return userIntegral;
	}

	public void setUserIntegral(int userIntegral) {
		this.userIntegral = userIntegral;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getWechat() {
		return wechat;
	}

	public void setWechat(String wechat) {
		this.wechat = wechat;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}
	

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

}