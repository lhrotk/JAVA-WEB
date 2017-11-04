package com.ututor.action.team;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ututor.action.BaseAction;
import com.ututor.impl.JdbcClassDAO;
import com.ututor.tools.htmlparser;
import com.ututor.entity.Class;

public class PostedClassListAction extends BaseAction{
	private int pageNo;
	
	public int getPageNo() {
		return pageNo;
	}

	public void setPageNo(String pageNo) {
		this.pageNo = Integer.parseInt(pageNo);
	}

	public String execute() throws SQLException{
		int owner_id = (int) session.get("userID");
		//System.out.println(owner_id);
		List<Class> resultList = new ArrayList<Class>();
		JdbcClassDAO classDAO = new JdbcClassDAO();
		resultList = classDAO.postedClass(owner_id, pageNo, 2);
		//System.out.println(resultList.size());
		request.put("totalPage", Math.ceil(classDAO.postedClassPage(owner_id)/2.0));
		request.put("resultList", resultList);
		request.put("pageNo", pageNo);
		return "success";
	}
}
