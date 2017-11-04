package com.ututor.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ututor.util.DBUtil;
import com.ututor.entity.Team;
import com.ututor.entity.User;

public class JdbcTeamListDAO {
	public List<Team> listRegisteredTeam() throws SQLException {
		Connection conn = DBUtil.getConnection();
		ArrayList<Team> teamList = new ArrayList<Team>();
		try {

			conn.setAutoCommit(false);
			// method
			PreparedStatement ps = conn.prepareStatement(
					"select * from (select * from ututor.d_user where identity = 'team' and id!=0 order by nickname)t "
					+ "union select * from ututor.d_user where id = 0;");
			ResultSet rs = ps.executeQuery();
			conn.commit();
			while(rs.next()){
				Team teamUnit = new Team();
				teamUnit.setTeamID(rs.getInt("id"));
				teamUnit.setTeamName(rs.getString("nickname"));
				teamList.add(teamUnit);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			conn.rollback();

		} finally {
			DBUtil.close();
		}
		return teamList;
	}
	
	public List<Team> listBelongingTeam(int tutor_id) throws SQLException{
		Connection conn = DBUtil.getConnection();
		ArrayList<Team> teamList = new ArrayList<Team>();
		try {

			conn.setAutoCommit(false);
			// method
			PreparedStatement ps = conn.prepareStatement(
					"SELECT * FROM ututor.team_members left join d_user on team_members.team_id = d_user.id where tutor_id = ?;");
			ps.setInt(1, tutor_id);
			ResultSet rs = ps.executeQuery();
			conn.commit();
			while(rs.next()){
				Team teamUnit = new Team();
				teamUnit.setTeamID(rs.getInt("team_id"));
				teamUnit.setTeamName(rs.getString("nickname"));
				teamList.add(teamUnit);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			conn.rollback();

		} finally {
			DBUtil.close();
		}
		return teamList;
	}
	
	public List<User> listTeamTutor(int team_id) throws SQLException{
		Connection conn = DBUtil.getConnection();
		ArrayList<User> tutorList = new ArrayList<User>();
		try {

			conn.setAutoCommit(false);
			// method
			PreparedStatement ps = conn.prepareStatement(
					"SELECT * FROM ututor.team_members left join d_user on team_members.tutor_id = d_user.id where team_id = ?;");
			ps.setInt(1, team_id);
			ResultSet rs = ps.executeQuery();
			conn.commit();
			while(rs.next()){
				User oneTutor = new User();
				oneTutor.setId(rs.getInt("tutor_id"));
				oneTutor.setEmail(rs.getString("email"));
				oneTutor.setPhone(rs.getString("phone"));
				oneTutor.setNickname(rs.getString("nickname"));
				oneTutor.setWechat(rs.getString("wechat"));
				tutorList.add(oneTutor);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			conn.rollback();

		} finally {
			DBUtil.close();
		}
		return tutorList;
	}
	
	public boolean checkRelation(int tutor_id, int launcher_id) throws SQLException{
		Connection conn = DBUtil.getConnection();
		try {

			conn.setAutoCommit(false);
			// method
			PreparedStatement ps = conn.prepareStatement(
					"SELECT * FROM ututor.team_members where tutor_id=? and team_id = ?");
			ps.setInt(1, tutor_id);
			ps.setInt(2, launcher_id);
			ResultSet rs = ps.executeQuery();
			conn.commit();
			if(rs.next()){
				return true;
			}else{
				return false;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			conn.rollback();

		} finally {
			DBUtil.close();
		}
		return false;
	}
	
	public boolean addRelation(int tutor_id, int launcher_id) throws SQLException{
		Connection conn = DBUtil.getConnection();
		try {

			conn.setAutoCommit(false);
			// method
			PreparedStatement ps = conn.prepareStatement(
					"INSERT INTO ututor.team_members(tutor_id, team_id) VALUES (?,?)");
			ps.setInt(1, tutor_id);
			ps.setInt(2, launcher_id);
			ps.executeUpdate();
			conn.commit();
		} catch (SQLException e) {
			e.printStackTrace();
			conn.rollback();
			return false;
		} finally {
			DBUtil.close();
		}
		return true;
	}
	
	public static void main(String[] args){
		JdbcTeamListDAO dao = new JdbcTeamListDAO();
		try {
			List<Team> result = dao.listBelongingTeam(4);
			System.out.println(dao.addRelation(41, 23));
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
