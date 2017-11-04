package com.ututor.action.team;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import com.ututor.action.BaseAction;
import com.ututor.impl.JdbcLessonDAO;

public class AttendanceAction extends BaseAction {
	public String resultList;
	public int class_id;
	public int lesson_id;
	public int lesson_seq;

	public String getResultList() {
		return resultList;
	}

	public void setResultList(String result) {
		this.resultList = result;
	}

	public int getClass_id() {
		return class_id;
	}

	public void setClass_id(int class_id) {
		this.class_id = class_id;
	}

	public int getLesson_id() {
		return lesson_id;
	}

	public void setLesson_id(int lesson_id) {
		this.lesson_id = lesson_id;
	}

	public int getLesson_seq() {
		return lesson_seq;
	}

	public void setLesson_seq(int lesson_seq) {
		this.lesson_seq = lesson_seq;
	}

	public String execute() throws Exception {
		if (this.resultList != null) {
			List<String> result = Arrays.asList(this.resultList.split(", "));
			// System.out.println(result.size());
			JdbcLessonDAO lessonDAO = new JdbcLessonDAO();
			if (lessonDAO.finish(lesson_id, class_id) > 0) {
				for (int i = 0; i < result.size(); i++) {
					int student_id = Integer.parseInt(result.get(i));
					// System.out.println(student_id);
					lessonDAO.attend(lesson_id, student_id, lesson_seq, class_id);
				}
			}
		}else{
			JdbcLessonDAO lessonDAO = new JdbcLessonDAO();
			lessonDAO.finish(lesson_id, class_id);
		}
		return "success";
	}

}
