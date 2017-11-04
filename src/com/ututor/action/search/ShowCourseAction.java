package com.ututor.action.search;

import java.util.List;

import com.ututor.action.BaseAction;
import com.ututor.impl.JdbcAssessmentDAO;
import com.ututor.impl.JdbcClassDAO;
import com.ututor.impl.JdbcLessonDAO;
import com.ututor.impl.JdbcUserDAO;
import com.ututor.entity.Assessment;
import com.ututor.entity.Class;
import com.ututor.entity.Lesson;
import com.ututor.entity.User;

public class ShowCourseAction extends BaseAction{
	int class_id;
	
	public int getClass_id() {
		return class_id;
	}

	public void setClass_id(int class_id) {
		this.class_id = class_id;
	}

	public String execute() throws Exception{
		JdbcClassDAO classDAO = new JdbcClassDAO();
		JdbcLessonDAO lessonDAO = new JdbcLessonDAO();
		JdbcUserDAO userDAO = new JdbcUserDAO();
		JdbcAssessmentDAO assessmentDAO = new JdbcAssessmentDAO();
		Class classResult  = classDAO.findbyId(class_id);
		//System.out.print(classResult.getTitle());
		List<Lesson> lessonList = lessonDAO.findbyClassId(class_id);
		List<Assessment> assessmentList = assessmentDAO.findAssessment(classResult.getCode(), classResult.getLauncher_id(), 1);
		//System.out.println(lessonList.size());
		int tutor_id = classResult.getTutor_id();
		//System.out.print(tutor_id);
		User tutor = userDAO.findById(tutor_id);
		User team = userDAO.findById(classResult.getLauncher_id());
		request.put("classDetail", classResult);
		request.put("lessons", lessonList);
		request.put("tutor", tutor);
		request.put("team", team);
		request.put("AssessmentList", assessmentList);
		request.put("numberOfAssessment", assessmentDAO.findAmount(classResult.getCode(), classResult.getLauncher_id()));
		return "success";	
	}
}
