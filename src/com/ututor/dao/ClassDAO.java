package com.ututor.dao;

import java.util.List;

import com.ututor.entity.Class;

public interface ClassDAO {
	public int save(Class oneClass)throws Exception;
	public List<Class> findbyCode(String code) throws Exception;
	public List<Class> findbylauncher(int launcher_id) throws Exception;
	public Class findbyId(int id) throws Exception;
	public void update(int id, Class oneClass) throws Exception;
	public void delete(int id) throws Exception;
}
