package com.ututor.action.team;

import java.util.ArrayList;
import java.util.List;

import com.ututor.action.BaseAction;
import com.ututor.entity.Class;
import com.ututor.entity.User;
import com.ututor.impl.JdbcClassDAO;
import com.ututor.impl.JdbcLessonDAO;
import com.ututor.impl.JdbcTeamListDAO;
import com.ututor.impl.JdbcUserDAO;
import com.ututor.util.VerifyUtil;

public class CreateCourseAction extends BaseAction{
	private Class newClass;
	private int launcher_id;
	private String new_tutor_email;
	private int tutor_id;
	private String new_tutor_name;
	private String new_tutor;
	private String new_tutor_wechat;
	private String new_tutor_phone;
	private double price;
	private int size;
	private String type;
	private int amount;

	public int getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = Integer.parseInt(amount);
	}

	public Class getNewClass() {
		return newClass;
	}

	public void setNewClass(Class newClass) {
		this.newClass = newClass;
	}
	
	public int getLauncher_id() {
		return launcher_id;
	}

	public void setLauncher_id(String launcher_id) {
		this.launcher_id = Integer.parseInt(launcher_id);
	}

	public String getNew_tutor_email() {
		return new_tutor_email;
	}

	public void setNew_tutor_email(String new_tutor_email) {
		this.new_tutor_email = new_tutor_email;
	}

	public int getTutor_id() {
		return tutor_id;
	}

	public void setTutor_id(String tutor_id) {
		this.tutor_id = Integer.parseInt(tutor_id);
	}

	public String getNew_tutor_name() {
		return new_tutor_name;
	}

	public void setNew_tutor_name(String new_tutor_name) {
		this.new_tutor_name = new_tutor_name;
	}

	public String getNew_tutor() {
		return new_tutor;
	}

	public void setNew_tutor(String new_tutor) {
		this.new_tutor = new_tutor;
	}

	public String getNew_tutor_wechat() {
		return new_tutor_wechat;
	}

	public void setNew_tutor_wechat(String new_tutor_wechat) {
		this.new_tutor_wechat = new_tutor_wechat;
	}

	public String getNew_tutor_phone() {
		return new_tutor_phone;
	}

	public void setNew_tutor_phone(String new_tutor_phone) {
		this.new_tutor_phone = new_tutor_phone;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = Double.parseDouble(price);
	}

	public int getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = Integer.parseInt(size);
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String execute() throws Exception{
		if(((String)session.get("userIdentity")).equals("team")&&this.launcher_id!=(int)session.get("userID")){// illegal
			request.put("err_msg", "非法操作");
			return "fail";
		}else if(((String)session.get("userIdentity")).equals("tutor")){
			if(this.tutor_id!=(int)session.get("userID")){
				request.put("err_msg", "非法操作");
				return "fail";
			}else{
				JdbcTeamListDAO teamDAO = new JdbcTeamListDAO();
				if(!teamDAO.checkRelation(this.tutor_id, this.launcher_id)){
					request.put("err_msg", "非法操作");
					return "fail";
				}
			}
		}
		if(this.new_tutor==null&&((String)session.get("userIdentity")).equals("team")){
			User tutor = new User();
			JdbcUserDAO userDAO = new JdbcUserDAO();
			JdbcTeamListDAO teamDAO = new JdbcTeamListDAO();
			tutor.setEmail(new_tutor_email);
			tutor.setNickname(new_tutor_name);
			tutor.setPhone(new_tutor_phone);
			tutor.setWechat(new_tutor_email);
			tutor.setPassword("12345678");
			//System.out.println(user.getEmail());
			tutor.setUserIntegral(0);
			tutor.setEmailVerify("NO");
			String code = VerifyUtil.getRandomString(8);
			tutor.setEmailVerifyCode(code);
			tutor.setLastLoginTime(System.currentTimeMillis());
			String ip = httpRequest.getRemoteAddr();
			tutor.setLastLoginIp(ip);
			tutor.setSex("male");
			tutor.setIdentity("tutor");
			this.tutor_id = userDAO.save(tutor);
			teamDAO.addRelation(this.tutor_id, this.launcher_id);
			System.out.println("create new tutor"+tutor_id);
		}
		
		newClass.setLauncher_id(this.launcher_id);// team
		newClass.setTutor_id(this.tutor_id);//tutor
		newClass.setN_price(this.price);//price
		newClass.setO_price(this.price);//type
		if(this.size!=1){
			setSize(this.type);
		}
		newClass.setType(this.size);
		newClass.setRemain_seat(this.amount);
		newClass.setTotal_seat(this.amount);
		newClass.setStatus("valid");
		JdbcClassDAO classDAO = new JdbcClassDAO();
		int class_id = classDAO.save(newClass);
		newClass.setClass_id(class_id);
		JdbcLessonDAO lessonDAO = new JdbcLessonDAO();
		List<Integer> lessonIdList = new ArrayList<Integer>();
		for(int i=1;i<=this.size;i++){
			lessonIdList.add(lessonDAO.init(class_id, i));
		}
		JdbcUserDAO userDAO = new JdbcUserDAO();
		User launcher = userDAO.findById(launcher_id);
		User tutor = userDAO.findById(newClass.getTutor_id());
		session.put("launcher", launcher);
		session.put("tutor", tutor);
		session.put("lessonIdList", lessonIdList);
		session.put("newClass", newClass);
		return "success";
	}
}
