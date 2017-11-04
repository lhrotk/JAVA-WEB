package com.ututor.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginFilter implements Filter{

	@Override
	public void destroy() {
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest)request;
		HttpServletResponse resp = (HttpServletResponse) response;
		//System.out.println(resp.getHeader("X-Requested-With"));
		if(req.getServletPath().contains("joincourse")){
			//System.out.println("is xhr");
			chain.doFilter(request, response);
		}else if(req.getSession().getAttribute("userID")==null){
			resp.sendRedirect("/ututor/action/Redirect1.jsp");
		}else if(req.getSession().getAttribute("userStatus").equals("NO")){
			resp.sendRedirect("/ututor/action/Redirect2.jsp");
		}else{
			chain.doFilter(request, response);
		}
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		
	}
	
}
