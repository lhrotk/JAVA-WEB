package com.ututor.action.user;

import java.sql.SQLException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.ututor.action.BaseAction;
import com.ututor.dao.UserDAO;
import com.ututor.entity.User;
import com.ututor.impl.JdbcUserDAO;
import com.ututor.util.VerifyUtil;

/*public class RegisterAction {
	    // 要验证的字符串
	    String str = "service@xsoftlab.net";
	    // 邮箱验证规则
	    String regEx = "[a-zA-Z_]{1,}[0-9]{0,}@(([a-zA-z0-9]-*){1,}\\.){1,3}[a-zA-z\\-]{1,}";
	    // 编译正则表达式
	    Pattern pattern = Pattern.compile(regEx);
	    // 忽略大小写的写法
	    // Pattern pat = Pattern.compile(regEx, Pattern.CASE_INSENSITIVE);
	    Matcher matcher = pattern.matcher(str);
	    // 字符串是否与正则表达式相匹配
	    boolean rs = matcher.matches();
}*/

public class RegisterAction extends BaseAction {
	private User user;
	private String code_text;
	private String password2;
	private String email;
	private String nickname;
	private String password;
	private String sex;
	private String phone;
	private String wechat;
	private String agree;
	
	
	public String getAgree() {
		return agree;
	}

	public void setAgree(String agree) {
		this.agree = agree;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getCode_text() {
		return code_text;
	}

	public void setCode_text(String code_text) {
		this.code_text = code_text;
	}

	public String getPassword2() {
		return password2;
	}

	public void setPassword2(String password2) {
		this.password2 = password2;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
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

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
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

	public boolean check_email(String email){
		String regEx = "[a-zA-Z0-9_]{0,}@(([a-zA-z0-9]-*){1,}\\.){1,3}[a-zA-z\\-]{1,}";
		Pattern pat = Pattern.compile(regEx, Pattern.CASE_INSENSITIVE);
		Matcher matcher = pat.matcher(email);
		return matcher.matches();
	}

	public String execute() throws Exception {
		// 密码加密
		//user.setPassword(pwd);
		// 非表单项设置
		user = new User();
		/*System.out.println(email);
		System.out.println(nickname);
		System.out.println(password);*/
		/*too long email or wrong format*/
		email=email.toLowerCase();
		
		if(email.length()>50){
			request.put("regist_error", "Your email address is too long!");
			return "fail";
		}else if(!check_email(email)){
			request.put("regist_error", "Wrong email format!");
			return "fail";
		}
		
		if(password.length()<6){
			request.put("regist_error", "Your password should contain more than 6 characters!");
			return "fail";
		}else if(password.length()>50){
			request.put("regist_error", "Your password should not contain more than 50 characters!");
			return "fail";
		}
		
		if(!password2.equals(password)){
			request.put("regist_error", "Inconsistent password!");
			return "fail";
		}
		//System.out.println(email);
		UserDAO dao = new JdbcUserDAO();
		if(dao.findByEmail(email).getId()>0){
			//System.out.println("exists");
			request.put("regist_error", "email already exists!");
			return "fail";
		}
		
		if(!((String)session.get("code")).equals(code_text)){
			//System.out.println("GET"+code_text);
			//System.out.println("SESSION"+session.get("code"));
			request.put("regist_error", "wrong verification code!");
			return "fail";
		}
		
		if(this.agree==null){
			request.put("regist_error", "You need to agree with our term of service");
			return "fail";
		}
		
		user.setEmail(email);
		user.setNickname(nickname);
		user.setPassword(password);
		//System.out.println(user.getEmail());
		user.setUserIntegral(0);
		user.setEmailVerify("NO");
		String code = VerifyUtil.getRandomString(8);
		user.setEmailVerifyCode(code);
		user.setLastLoginTime(System.currentTimeMillis());
		String ip = httpRequest.getRemoteAddr();
		user.setLastLoginIp(ip);
		user.setPhone(phone);
		user.setSex(sex);
		user.setWechat(wechat);
		
		dao.save(user);
		//EmailUtil.sendEmail(user.getEmail(), user.getEmailVerifyCode());
		session.put("userID", user.getId());
		session.put("name", user.getNickname());
		session.put("userEmail", user.getEmail());
		session.put("userStatus",user.getEmailVerify());
		session.put("userWechat",user.getWechat());
		session.put("userSex",user.getSex());
		session.put("userPhone", user.getPhone());
		session.put("userIdentity", user.getIdentity());
		return "success";

	}
	
	public static void main(String[] args){
		User user=new User();
		user.setEmail("Jirachi385");
		user.setPassword("12345678");
		UserDAO dao = new JdbcUserDAO();
		try {
			dao.save(user);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
