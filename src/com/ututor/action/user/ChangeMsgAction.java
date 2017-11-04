package com.ututor.action.user;

import com.ututor.action.BaseAction;
import com.ututor.entity.User;
import com.ututor.impl.JdbcUserDAO;

public class ChangeMsgAction extends BaseAction{
	private String newName;
	private String newWechat;
	private String newSex;
	private String newPhone;
	public String getNewName() {
		return newName;
	}
	public void setNewName(String newName) {
		this.newName = newName;
	}
	public String getNewWechat() {
		return newWechat;
	}
	public void setNewWechat(String newWechat) {
		this.newWechat = newWechat;
	}
	public String getNewSex() {
		return newSex;
	}
	public void setNewSex(String newSex) {
		this.newSex = newSex;
	}
	public String getNewPhone() {
		return newPhone;
	}
	public void setNewPhone(String newPhone) {
		this.newPhone = newPhone;
	}
	public String execute() throws Exception{
		User tempUser = new User();
		JdbcUserDAO userDAO = new JdbcUserDAO();
		tempUser.setNickname(this.newName);
		tempUser.setPhone(this.newPhone);
		tempUser.setSex(this.newSex);
		tempUser.setWechat(this.newWechat);
		userDAO.changeMsg(tempUser, (int)session.get("userID"));
		session.remove("userWechat");
		session.remove("userSex");
		session.remove("userPhone");
		session.remove("name");
		session.put("userWechat", this.newWechat);
		session.put("userSex", this.newSex);
		session.put("userPhone", this.newPhone);
		session.put("name", this.newName);
		return "success";
	}
}
