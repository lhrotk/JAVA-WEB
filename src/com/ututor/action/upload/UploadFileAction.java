package com.ututor.action.upload;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.ututor.impl.JdbcFileDAO;

public class UploadFileAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private List<File> file;

	// 提交过来的file的名字
	private List<String> fileFileName;

	// 提交过来的file的MIME类型
	private List<String> fileContentType;

	private boolean ok;

	public int lesson_id;
	
	public int class_id;

	public List<File> getFile() {
		return file;
	}

	public void setFile(List<File> file) {
		this.file = file;
	}

	public List<String> getFileFileName() {
		return fileFileName;
	}

	public void setFileFileName(List<String> fileFileName) {
		this.fileFileName = fileFileName;
	}

	public List<String> getFileContentType() {
		return fileContentType;
	}

	public void setFileContentType(List<String> fileContentType) {
		this.fileContentType = fileContentType;
	}

	public boolean isOk() {
		return ok;
	}

	public void setOk(boolean ok) {
		this.ok = ok;
	}

	public int getLesson_id() {
		return lesson_id;
	}

	public void setLesson_id(int lesson_id) {
		this.lesson_id = lesson_id;
	}

	public int getClass_id() {
		return class_id;
	}

	public void setClass_id(int class_id) {
		this.class_id = class_id;
	}

	public String execute() throws Exception {
		String root = ServletActionContext.getServletContext().getRealPath("");
		root = root + "../upload";
    	File folder = new File(root);
    	if(!folder.exists()){
    		folder.mkdir();
    	}
    	root = root+"/"+class_id;
    	File classFolder = new File(root);
    	if(!classFolder.exists()){
    		classFolder.mkdir();
    	}
    	root = root+"/"+lesson_id;
    	File lessonFolder = new File(root);
    	if(!lessonFolder.exists()){
    		lessonFolder.mkdir();
    	}
    	JdbcFileDAO fileDAO = new JdbcFileDAO();
    	for(int i=0; i<file.size(); i++){
    		if(file.get(i).length()>5*1024*1024){
    			ok=false;
    			return "fail";
    		}
    	}
		for (int i = 0; i < file.size(); i++) {
			System.out.println(fileContentType.get(i));
			fileDAO.add(class_id, lesson_id, fileContentType.get(i), fileFileName.get(i), "../upload/"+class_id+"/"+lesson_id+"/"+fileFileName.get(i));
			InputStream is = new FileInputStream(file.get(i));

			OutputStream os = new FileOutputStream(new File(root, fileFileName.get(i)));

			byte[] buffer = new byte[500];

			@SuppressWarnings("unused")
			int length = 0;

			while (-1 != (length = is.read(buffer, 0, buffer.length))) {
				os.write(buffer);
			}

			os.close();
			is.close();
		}
		return SUCCESS;
	}

}
