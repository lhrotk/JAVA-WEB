package com.ututor.action.user;

import com.ututor.action.*;
import com.ututor.dao.UserDAO;
import com.ututor.entity.User;
import com.ututor.impl.JdbcUserDAO;
import com.ututor.util.EmailUtil;
import com.ututor.util.VerifyUtil;

public class SendCodeAction extends BaseAction{
	private User user;
	private boolean ok;
	
	public String execute() throws Exception{
		JdbcUserDAO dao = new JdbcUserDAO();
		String code = VerifyUtil.getRandomString(8);
		dao.modifyVerificationCode((String)session.get("userEmail"), code);
		user = new User();
		user = dao.findByEmail((String)session.get("userEmail"));
		String content = "<p>Welcome to join Ututor！我们将竭诚为您服务！</p>"
				+ "Your Verification Code is："
				+ "<b>" + user.getEmailVerifyCode() + "</b>"
				;
		//System.out.println("ready?");
		EmailUtil email = new EmailUtil();
		//System.out.println("ready!");
		email.SendMail("smtp.gmail.com", "587", "ututorteam@gmail.com", "q1w2erty");
		System.out.println(user.getEmail());
		email.sendingMimeMail("ututorteam@gmail.com", user.getEmail(), "", "", "Welcome to Join Ututor", content);
		ok=true;
		return "success";
	}
	
	public static void main(String[] args){
		EmailUtil email = new EmailUtil();
		email.SendMail("smtp.gmail.com", "587", "ututorteam@gmail.com", "q1w2erty");
		email.sendingMimeMail("admin@ututoryork.com", "jirachi385@126.com", "", "", "Welcome to Join Ututor", "content");
	}
}
