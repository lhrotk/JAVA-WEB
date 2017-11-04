package com.ututor.action;

import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;
import org.apache.struts2.util.ServletContextAware;

public class BaseAction implements RequestAware,ServletRequestAware,SessionAware,
ApplicationAware,ServletContextAware{
	protected Map<String,Object> request;
	protected HttpServletRequest httpRequest;
	protected Map<String,Object> session;
	protected Map<String,Object> application;
	@Override
	public void setRequest(Map<String, Object> req) {
	this.request=req;
		
	}
	@Override
	public void setServletRequest(HttpServletRequest req) {
	httpRequest=req;
		
	}
	@Override
	public void setSession(Map<String, Object> session) {
		this.session=session;		
	}
	@Override
	public void setApplication(Map<String, Object> application) {
		this.application=application;
		
	}
	@Override
	public void setServletContext(ServletContext arg0) {
	
	}
}
