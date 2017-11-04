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

public class AccessFilter implements Filter{
	private FilterConfig config;

	@Override
	public void destroy() {
		this.config = null;
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse resp = (HttpServletResponse) response;
		String conString = req.getHeader("REFERER");
		if(conString==null||conString.equals("")){
			String servletPath = req.getServletPath();
			if(servletPath.contains("index")||servletPath.contains("login")){
				chain.doFilter(request, response);
			}else{
				resp.sendRedirect("/ututor/index.jsp");
			}
		}else{
			chain.doFilter(request, response);
		}
		
	}

	@Override
	public void init(FilterConfig config) throws ServletException {
		this.config = config;
		
	}



}
