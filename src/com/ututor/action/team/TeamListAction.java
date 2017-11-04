package com.ututor.action.team;

import java.util.List;

import com.ututor.action.BaseAction;
import com.ututor.entity.Team;
import com.ututor.impl.JdbcTeamListDAO;

public class TeamListAction extends BaseAction{
	private List<Team> teamList;

	public List<Team> getTeamList() {
		return teamList;
	}

	public void setTeamList(List<Team> teamList) {
		this.teamList = teamList;
	}
	
	public String execute() throws Exception{
		JdbcTeamListDAO teamListDAO = new JdbcTeamListDAO();
		this.teamList = teamListDAO.listBelongingTeam((int)session.get("userID"));
		//System.out.println(teamList.size());
		request.put("teamList", this.teamList);
		return "success";
	}

}