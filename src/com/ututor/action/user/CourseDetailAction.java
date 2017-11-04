package com.ututor.action.user;

import java.util.List;

import com.ututor.action.BaseAction;
import com.ututor.entity.*;
import com.ututor.entity.Class;
import com.ututor.impl.JdbcClassDAO;
import com.ututor.impl.JdbcLessonDAO;
import com.ututor.impl.JdbcUserDAO;

public class CourseDetailAction extends BaseAction{
	private int class_id;
	public int getClass_id() {
		return class_id;
	}
	public void setClass_id(int class_id) {
		this.class_id = class_id;
	}
	private int tutor_id;
	private User tutor;
	private User team;
	private Class classResult;
	private List<Lesson> lessonList;
	public String execute() throws Exception{
		JdbcClassDAO classDAO = new JdbcClassDAO();
		JdbcLessonDAO lessonDAO = new JdbcLessonDAO();
		JdbcUserDAO userDAO = new JdbcUserDAO();
		classResult  = classDAO.findbyId(class_id);
		//System.out.print(classResult.getTitle());
		lessonList = lessonDAO.findbyClassId(class_id);
		//System.out.println(lessonList.size());
		tutor_id = classResult.getTutor_id();
		//System.out.print(tutor_id);
		tutor = userDAO.findById(tutor_id);
		team = userDAO.findById(classResult.getLauncher_id());

		//System.out.println(team.getNickname()+team.getImage());
		request.put("classDetail", classResult);
		request.put("lessons", lessonList);
		request.put("tutor", tutor);
		request.put("team", team);
		return "success";	
	}
	
	public String edit() throws Exception{
		JdbcClassDAO classDAO = new JdbcClassDAO();
		JdbcLessonDAO lessonDAO = new JdbcLessonDAO();
		JdbcUserDAO userDAO = new JdbcUserDAO();
		classResult  = classDAO.findbyId(class_id);
		//System.out.print(classResult.getTitle());
		lessonList = lessonDAO.findbyClassId(class_id);
		//System.out.println(lessonList.size());
		tutor_id = classResult.getTutor_id();
		//System.out.print(tutor_id);
		tutor = userDAO.findById(tutor_id);
		team = userDAO.findById(classResult.getLauncher_id());
		request.put("classDetail", classResult);
		request.put("lessons", lessonList);
		request.put("tutor", tutor);
		request.put("team", team);
		return "success";	
	}
}
