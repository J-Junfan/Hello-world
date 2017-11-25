<%@page import="java.util.Arrays" %>
<%@page import="java.util.Set" %>
<%@page import="java.util.Map" %>
<%@page import="java.util.Enumeration" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
			request.setCharacterEncoding("utf-8");
			//从请求对象中获取用户提交的用户名和密码的值
			//通过表单元素的name属性的属性值获取
			
			String uname = request.getParameter("uname");     //这个来获取index中 名字为uname的文本框的内容
			String pwd = request.getParameter("pwd"); 
			String[] color = request.getParameterValues("color");     //这个来获取index中的checkbox按键的值
			
			System.out.println(uname+"\t"+pwd+"\t"+Arrays.toString(color));
			
			Enumeration<String> enums = request.getParameterNames();
			while(enums.hasMoreElements()){
				System.out.println(enums.nextElement());
				
			}
			
			Map<String,String[]> map = request.getParameterMap();
			Set<String> keys = map.keySet();
			for(String key:keys){
				System.out.println(key+":"+Arrays.toString(map.get(key)));
			}
			
			System.out.println( request.getContextPath());
			System.out.println( request.getProtocol());
			System.out.println( request.getServerPort());
			System.out.println( request.getRequestURL());
			
			System.out.println( request.getRemoteHost());    //获取客户端的地址
			System.out.println( request.getRemotePort());    //获取客户端发送请求的窗口
			/*
				1.重定向
					a.地址栏会发生改变
					b.会发送两次请求
					c.不能访问WEB-INF下的资源
					d.可以访问当前服务器以外的资源
					e.重定向后的页面不能获取请求中的信息
					
				2.内部转发
					a.地址栏不会发生改变
					b.会发送一次请求
					c.可以访问WEB-INF下的资源
					d.不可以访问当前服务器以外的资源
					e.重定向后的页面可以获取请求中的信息
			*/
			if("jjf".equals(uname) && "0425".equals(pwd)){
				//response.sendRedirect("success.html");    //响应一个页面
				//response.sendRedirect("WEB-INF/success.html");    //  不能访问   1-c
				//response.sendRedirect("http://www.baidu.com");    //可以访问   1-d
				request.getRequestDispatcher("WEB-INF/success.html").forward(request, response);    //可以访问  2-c
				//request.getRequestDispatcher("http://www.baidu.com").forward(request, response);    //不能访问  2-d
				
			}else{
				response.sendRedirect("index.jsp");
			}
%>