package com.cis.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cis.service.UserService;
import com.cis.service.impl.StaffQuartersServiceImpl;

@Controller
@RequestMapping("/staffQuarters")
public class StaffQuartersController {
	
	@Autowired
	private UserService userService;
	@Autowired
	private StaffQuartersServiceImpl sqService;


	
	@RequestMapping(value = "/updateStaffQuartersDetails", method=RequestMethod.POST )
	public void updateStaffQuartersDetails(HttpServletRequest request,HttpServletResponse response) {
		JSONObject responseJson = new JSONObject();
		try {
			JSONObject requestJson = new JSONObject(request.getParameter("finalSaveJson"));
			sqService.updateStaffQuartersDetails(requestJson);
			responseJson.put("result", "Success");
			response.getWriter().write(responseJson.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
