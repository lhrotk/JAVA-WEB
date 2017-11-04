package com.ututor.action.user;

import java.util.Calendar;
import com.ututor.action.BaseAction;
import com.ututor.dao.UserDAO;
import com.ututor.entity.User;
import com.ututor.impl.JdbcUserDAO;

public class LoginAction extends BaseAction {
	private String uri;
	private String email;
	private String password;
	private Calendar cal;
	public String getUri() {
		return uri;
	}
	public void setUri(String uri) {
		this.uri = uri;
	}
	public String execute() throws Exception {
		
		email=email.toLowerCase();
		cal = Calendar.getInstance();
		UserDAO dao = new JdbcUserDAO();
		//String pwd = DigestUtil.digestMD5(password);
		String pwd = password;
		User user = dao.findByEmail(email);
		//System.out.println(user.getEmailVerify());
		//System.out.println(user.getPassword());
		if (user!= null && pwd.equals(user.getPassword())
				&& user.getEmailVerify().equals("YES")) {
			session.put("userID", user.getId());
			session.put("name", user.getNickname());
			session.put("userEmail", user.getEmail());
			session.put("userStatus",user.getEmailVerify());
			session.put("userWechat",user.getWechat());
			session.put("userSex",user.getSex());
			session.put("userPhone", user.getPhone());
			session.put("userIdentity", user.getIdentity());
			//System.out.println("1");
			return "login";
		} else if (user!= null && pwd.equals(user.getPassword())
				&& user.getEmailVerify().equals("NO")) {
			session.put("userID", user.getId());
			session.put("name", user.getNickname());
			session.put("userEmail", user.getEmail());
			session.put("userStatus",user.getEmailVerify());
			session.put("userWechat",user.getWechat());
			session.put("userSex",user.getSex());
			session.put("userPhone", user.getPhone());
			session.put("userIdentity", user.getIdentity());
			//System.out.println("2");
			return "code";
		} else {
			//System.out.println(pwd);
			request.put("login_err", "用户名或者密码错误");
			//System.out.println("3");
			return "lose";

		}
	}

	// 登出
	public String out() {
		session.remove("userID");
		session.remove("name");
		session.remove("userEmail");
		session.remove("userStatus");
		session.remove("userWechat");
		session.remove("userSex");
		session.remove("userPhone");
		session.remove("userIdentity");
		return "success";

	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Calendar getTime() {
		return cal;
	}

	public void setTime(Calendar cal) {
		this.cal = cal;
	}
}
