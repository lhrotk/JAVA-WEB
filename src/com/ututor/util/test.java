package com.ututor.util;

public class test {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		EmailUtil email = new EmailUtil();
		email.SendMail("smtp.126.com", "25", "jirachi385@126.com", "Q1W2ERTY");
		email.sendingMimeMail("jirachi385@126.com", "781567794@qq.com", "", "", "Welcome to Join Ututor", "<p>test from ututor</p>");
	}

}
