package com.ututor.action.team;

import java.util.List;

import com.ututor.action.BaseAction;
import com.ututor.entity.User;
import com.ututor.impl.JdbcTeamListDAO;

public class TutorListAction extends BaseAction{
	private List<User> TutorList;

	public List<User> getTutorList() {
		return TutorList;
	}

	public void setTutorList(List<User> tutorList) {
		TutorList = tutorList;
	}
	
	public String execute() throws Exception{
		JdbcTeamListDAO teamListDAO = new JdbcTeamListDAO();
		this.TutorList = teamListDAO.listTeamTutor((int)session.get("userID"));
		//System.out.println(teamList.size());
		request.put("tutorList", this.TutorList);
		return "success";
	}
}
