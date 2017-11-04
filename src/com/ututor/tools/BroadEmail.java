package com.ututor.tools;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.mail.MessagingException;

import com.ututor.entity.Attendance;
import com.ututor.impl.JdbcClassDAO;
import com.ututor.util.EmailUtil;

public class BroadEmail implements Runnable{
	private String content;
	private int class_id;
	
	public BroadEmail(String content, int class_id){
		this.content = content;
		this.class_id = class_id;
	}

	@Override
	public void run() {
		// TODO Auto-generated method stub
		//System.out.println(content);
		JdbcClassDAO classDAO = new JdbcClassDAO();
		List<Attendance> attendants = new ArrayList<Attendance>();
		String classTitle = null;
		try {
			classTitle = classDAO.findbyId(class_id).getTitle();
			attendants = classDAO.getAttendant(class_id, 0);
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		EmailUtil email = new EmailUtil();
		email.SendMail("smtp.gmail.com", "587", "ututorteam@gmail.com", "q1w2erty");
		for(int i=0; i< attendants.size(); i++){
			String emailAddress = attendants.get(i).getStudent().getEmail();
			email.sendingMimeMail("admin@ututoryork.com", emailAddress, "", "", classTitle+" Class notification", content);
		}
		
	}
	
}
