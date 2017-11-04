package com.ututor.action.user;

import com.ututor.dao.UserDAO;
import com.ututor.entity.User;
import com.ututor.impl.JdbcUserDAO;

public class CheckEmailAction {
	private String email;
	private boolean ok = false;

	public String execute() throws Exception {
		UserDAO dao = new JdbcUserDAO();
		User user = dao.findByEmail(email);
		if (user == null || user.getId()==-1) {
			ok = true;
		} else {
			ok = false;
		}
		return "success";

	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public boolean isOk() {
		return ok;
	}

	public void setOk(boolean ok) {
		this.ok = ok;
	}
}
