package com.ututor.action.user;

import com.ututor.action.BaseAction;
import com.ututor.dao.UserDAO;
import com.ututor.entity.User;
import com.ututor.impl.JdbcUserDAO;

public class ChangePswAction extends BaseAction{
	public String oldPassword;
	public String newPassword;
	public String execute() throws Exception{
		String email = (String) session.get("userEmail");
		if(email==null){
			request.put("change_psw_error", "您还没有登录");
			return "fail";
		}
		System.out.println(email);
		UserDAO dao = new JdbcUserDAO();
		User user = dao.findByEmail(email);
		if(!oldPassword.equals(user.getPassword())){
			request.put("change_psw_error", "请您输入原密码不正确");
			return "fail";
		}
		
		if(newPassword.length()>50){
			request.put("change_psw_error", "您输入的新密码过长");
			return "fail";
		}
		dao.modifyPSW(email,newPassword);
		request.put("change_psw_success", "密码更改成功");
		return "success";
	}
}
