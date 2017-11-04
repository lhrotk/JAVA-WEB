package com.ututor.action.team;

import com.ututor.impl.JdbcClassDAO;
import com.ututor.impl.JdbcLessonDAO;

import java.util.List;

import com.ututor.action.BaseAction;
import com.ututor.entity.Attendance;
import com.ututor.entity.Class;

public class CheckAttendanceAction extends BaseAction{
	private int class_id;
	private List<Attendance> attendance;

	public List<Attendance> getAttendance() {
		return attendance;
	}

	public void setAttendance(List<Attendance> attendance) {
		this.attendance = attendance;
	}

	public int getClass_id() {
		return class_id;
	}

	public void setClass_id(String class_id) {
		this.class_id = Integer.parseInt(class_id);
	}
	
	public String execute() throws Exception{
		JdbcClassDAO classDAO = new JdbcClassDAO();
		Class resultClass = classDAO.findbyId(class_id);
		request.put("resultClass", resultClass);
		JdbcLessonDAO lessonDAO = new JdbcLessonDAO();
		int nextLessonId = lessonDAO.getNextLesson(class_id);
		int lessonDone = lessonDAO.getFinished(class_id);
		request.put("lessonDone", lessonDone);
		request.put("nextLessonId", nextLessonId);
		this.setAttendance(classDAO.getAttendant(class_id, resultClass.getType()));
		for(int i=0; i<this.attendance.size();i++){
			attendance.get(i).setRecord(classDAO.getAttendance(attendance.get(i).getStudent().getId(), class_id, resultClass.getType()));
		}
		request.put("attendance", this.getAttendance());
		return "success";
	}
}
