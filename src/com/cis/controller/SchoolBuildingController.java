package com.cis.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cis.service.SchoolBuildingService;
import com.cis.service.UserService;

@Controller
@RequestMapping("/schoolBuilding")
public class SchoolBuildingController {
	
	@Autowired
	private UserService userService;
	@Autowired
	private SchoolBuildingService sbService;


	
	@RequestMapping(value = "/updateSchoolDetails", method=RequestMethod.POST )
	public void updateSchoolDetails(HttpServletRequest request,HttpServletResponse response) {
		JSONObject responseJson = new JSONObject();
		try {
			JSONObject requestJson = new JSONObject(request.getParameter("finalSaveJson"));
			sbService.updateSchoolDetails(requestJson);
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
