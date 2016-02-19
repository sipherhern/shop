package com.shunhe.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SetCharacterEncoding implements Filter {
	

	public void doFilter(ServletRequest srequest, ServletResponse sresponse,
			FilterChain chain) throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) srequest;
		HttpServletResponse response = (HttpServletResponse) sresponse;
		// 注意这里请求和响应都强制转化了一下
		request.setCharacterEncoding("utf-8"); // 设置请求编码“UTF-8”比较通用
		response.setCharacterEncoding("utf-8"); // 设置相应编码
		chain.doFilter(srequest, sresponse);// 转发请求
	}

	public void destroy() {
		// TODO Auto-generated method stub
	}

	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}
}
