package com.ututor.action.team;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import com.ututor.entity.Lesson;
import com.ututor.impl.JdbcClassDAO;
import com.ututor.impl.JdbcLessonDAO;
import com.ututor.tools.BroadEmail;

public class CreateLessonAction {
	ArrayList<Lesson> lessonList;
	String description;
	Double n_price;
	String notification;
	int class_id=0;
	public String getNotification() {
		return notification;
	}
	public void setNotification(String notification) {
		this.notification = notification;
	}
	
	public int getClass_id() {
		return class_id;
	}
	public void setClass_id(String class_id) {
		this.class_id = Integer.parseInt(class_id);
	}
	public ArrayList<Lesson> getLessonList() {
		return lessonList;
	}
	public void setLessonList(ArrayList<Lesson> lessonList) {
		this.lessonList = lessonList;
	}
	
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Double getN_price() {
		return n_price;
	}
	public void setN_price(String n_price) {
		if(n_price!=null){
			this.n_price = Double.parseDouble(n_price);
		}
	}
	public void CreateLesson(){
		this.lessonList=new ArrayList<Lesson>();
	}
	public String execute() throws Exception{
//		System.out.println(lessonList.get(0).getLesson_id());
//		System.out.println(lessonList.get(0).getDescription());
//		System.out.println(lessonList.get(0).getInputDate());
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm");
		JdbcClassDAO classDAO = new JdbcClassDAO();
		if(description!=null){
			classDAO.modifyDescription(class_id, description);
		}
		if(this.n_price!=null&&this.n_price!=0){
			classDAO.modifyNPrice(class_id, n_price);
		}
		for(int i=0; i<lessonList.size();i++){
			if(lessonList.get(i).getInputDate().length()>0){
				String temp = lessonList.get(i).getInputDate() +" "+ lessonList.get(i).getInputTime();
				java.util.Date date=sdf.parse(temp);
				lessonList.get(i).setTime(date);
				lessonList.get(i).setStatus("decided");
			}else{
				String temp = "1994-12-24 00:00";
				java.util.Date date=sdf.parse(temp);
				lessonList.get(i).setTime(date);
				lessonList.get(i).setStatus("not decided");
			}
			JdbcLessonDAO lessonDAO = new JdbcLessonDAO();
			lessonDAO.update(lessonList.get(i));
		}
		//System.out.println(class_id);
		if(notification!=null&&notification.length()!=0){
			BroadEmail bEmail = new BroadEmail(notification, class_id);
			Thread t = new Thread(bEmail);
			t.start();
		}
		return "success";
	}
}
