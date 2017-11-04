package com.ututor.action.user;

import com.ututor.action.BaseAction;
import com.ututor.dao.UserDAO;
import com.ututor.entity.User;
import com.ututor.impl.JdbcUserDAO;

public class VerifyEmailAction extends BaseAction{
		private User user;
		private boolean ok;
		public String code;
		
		public String execute() throws Exception{
			UserDAO dao = new JdbcUserDAO();
			user = new User();
			user = dao.findByEmail((String)session.get("userEmail"));
			//System.out.println(code);
			//System.out.println(user.getEmailVerifyCode());
			if(code.equals(user.getEmailVerifyCode())){
				System.out.println("yes");
				user.setEmailVerify("YES");
				dao.modifyCode((String)session.get("userEmail"));
				session.remove("userStatus");
				session.put("userStatus", "YES");
				ok=true;
				return "success";
			}else{
				ok=false;
				//System.out.println("no");
				return "success";
			}
		}

		public boolean isOk() {
			return ok;
		}

		public void setOk(boolean ok) {
			this.ok = ok;
		}
}
