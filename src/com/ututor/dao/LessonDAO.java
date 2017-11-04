package com.ututor.dao;

import java.util.List;

import com.ututor.entity.Lesson;

public interface LessonDAO {
	public void save(Lesson lesson) throws Exception;
	public Lesson findbyLessonId(int lesson_id) throws Exception;
	public List<Lesson> findbyClassId(int class_id) throws Exception;
	public void update(Lesson lesson) throws Exception;
	public void delete(int lesson_id) throws Exception;
}
