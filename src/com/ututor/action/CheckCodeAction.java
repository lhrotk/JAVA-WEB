package com.ututor.action;

public class CheckCodeAction extends BaseAction {
	private String code;
	private boolean ok;

	public String execute() {
		String scode = (String) session.get("code");
		if (code.toLowerCase().equals(scode.toLowerCase())) {
			ok = true;
		} else {
			ok = false;
		}
		return "success";
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public boolean isOk() {
		return ok;
	}

	public void setOk(boolean ok) {
		this.ok = ok;
	}
}
