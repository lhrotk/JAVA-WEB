package com.ututor.entity;

public class File {
	int fileId;
	String fileName;
	String fileContentType;
	String address;
	int fileAccess;
	
	public int getFileId() {
		return fileId;
	}
	public void setFileId(int fileId) {
		this.fileId = fileId;
	}
	public int getFileAccess() {
		return fileAccess;
	}
	public void setFileAccess(int fileAccess) {
		this.fileAccess = fileAccess;
	}
	public String getFileContentType() {
		return fileContentType;
	}
	public void setFileContentType(String fileContentType) {
		this.fileContentType = fileContentType;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
}
