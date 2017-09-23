package com.cis.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

public class SessionManagment implements HandlerInterceptor  {
	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		
				
		 if(skipVerification(request))
		 {
			 return true;
		 }else
		 {
			 System.out.println("Path is "+request.getContextPath());
			 response.sendRedirect("index");
			 return false;
		 }
				
	}
	@Override
	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		//System.out.println("Post-handle");
	}
	
	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		//System.out.println("After completion handle");
	}
	
	public static Boolean skipVerification(HttpServletRequest request) {
	   String arr[]= request.getRequestURI().split("/");
	       boolean flag;
	        
	        System.out.println("str ====>"+arr[arr.length-1]);
	        System.out.println("request method"+request.getMethod());
	        System.out.println("request method"+request.getRequestURI());
	        if("userRegistration.htm".equalsIgnoreCase(arr[arr.length-1]))
	        {
	        	flag= true;
	        }
	        else if ( "logout.htm".equalsIgnoreCase(arr[arr.length-1]) )
	        {
	        	
	        	flag= true;
	        	
	        }else{
	        
	        HttpSession session = request.getSession(false);
	        System.out.println("Here the session is "+session);
	        if(session!=null && session.getAttribute("User")!=null){
	            flag=true;
	        }else{
	        	flag=false;
	        }
	   	}
	        System.out.println("status is "+flag);
	        return flag;
	}
}