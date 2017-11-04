package com.ututor.action.upload;

import java.io.File;
import java.sql.SQLException;

import org.apache.struts2.ServletActionContext;

import com.ututor.action.BaseAction;
import com.ututor.impl.JdbcClassDAO;
import com.ututor.impl.JdbcFileDAO;

public class DeleteFileAction extends BaseAction{
	private int fileId;
	private int class_id;
	public String filePath;
	public int getFileId() {
		return fileId;
	}
	public void setFileId(String fileId) {
		this.fileId = Integer.parseInt(fileId);
	}
	public int getClass_id() {
		return class_id;
	}
	public void setClass_id(String class_id) {
		this.class_id = Integer.parseInt(class_id);
	}
	public String getFilePath() {
		return filePath;
	}
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	public String execute() throws SQLException{
		JdbcClassDAO classDAO = new JdbcClassDAO();

		System.out.println("flag");
		System.out.println(class_id);
		if(classDAO.checkAuth((int)session.get("userID"), class_id)){
			String root = ServletActionContext.getServletContext().getRealPath("");
			root = root + filePath;
            System.out.println(root);
			File file = new File(root);
			if(file.exists()&&file.isFile()){
				file.delete();
				JdbcFileDAO fileDAO = new JdbcFileDAO();
				fileDAO.delete(fileId);
				System.out.println("flag");
			}
		}
		return "success";
	}
}
