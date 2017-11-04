package com.ututor.action.search;

import java.util.List;

import com.ututor.action.BaseAction;
import com.ututor.entity.File;
import com.ututor.entity.Lesson;
import com.ututor.impl.JdbcFileDAO;
import com.ututor.impl.JdbcLessonDAO;
import com.ututor.impl.JdbcUserDAO;

public class FileSearchAction extends BaseAction{
	private List<File> fileList;

	private int lesson_id;
	
	private int class_id;
	
	public int getClass_id() {
		return class_id;
	}

	public void setClass_id(String class_id) {
		this.class_id = Integer.parseInt(class_id);
	}

	public List<File> getFileList() {
		return fileList;
	}

	public void setFileList(List<File> fileList) {
		this.fileList = fileList;
	}

	public int getLesson_id() {
		return lesson_id;
	}

	public void setLesson_id(String lesson_id) {
		this.lesson_id = Integer.parseInt(lesson_id);
	}

	public String execute() throws Exception{
		//System.out.println(lesson_id);
		JdbcLessonDAO lessonDAO = new JdbcLessonDAO();
		JdbcFileDAO fileDAO = new JdbcFileDAO();
		JdbcUserDAO userDAO = new JdbcUserDAO();
		Lesson lesson = lessonDAO.findbyLessonId(lesson_id);
		if(lesson.getFileAccessInt()!=1){
			if(session.get("userID")==null){
				return "success";
			}//not login
			//System.out.println(lesson.getFileAccessInt());
			int user_id = (int)session.get("userID");
			if(!fileDAO.checkAuth(user_id, lesson_id)){
				//System.out.println(lesson.getFileAccessInt());
				if(lesson.getFileAccessInt()==2){
					if(!userDAO.hasSelect(user_id, user_id)){
						return "success";
					}
				}else if(lesson.getFileAccessInt()==3){
					if(!userDAO.hasArrive(user_id, lesson_id)){
						System.out.println("here");
						return "success";
					}
				}
			}
		}
		
		fileList = fileDAO.listFile(lesson_id);
//		System.out.println(fileList.get(0).getFileName());
//		System.out.println(fileList.size());
		request.put("fileList", fileList);
		request.put("class_id", class_id);
		return "success";
	}
	
	public String edit() throws Exception{
		JdbcFileDAO fileDAO = new JdbcFileDAO();
		fileList = fileDAO.listFile(lesson_id);
		request.put("fileList", fileList);
		request.put("class_id", class_id);
		return "success";
	}

}
