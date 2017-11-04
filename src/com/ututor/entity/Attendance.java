package com.ututor.entity;

public class Attendance {
	private User student;
	private int[] record;
	
	public User getStudent() {
		return student;
	}
	public void setStudent(User student) {
		this.student = student;
	}
	public int[] getRecord() {
		return record;
	}
	public void setRecord(int[] record) {
		this.record = record;
	}
	public Attendance (int size){
		record = new int[size];
		this.student = new User();
	}
	public static void main(String[] args){
		Attendance att = new Attendance(10);
		System.out.println(att.record[8]);
	}
}
