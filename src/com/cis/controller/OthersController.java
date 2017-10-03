package com.cis.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cis.service.UserService;
import com.cis.service.impl.OthersServiceImpl;

@Controller
@RequestMapping("/otherQuarters")
public class OthersController {
	
	@Autowired
	private UserService userService;
	@Autowired
	private OthersServiceImpl othersService;


	
	@RequestMapping(value = "/updateKitchenDetails", method=RequestMethod.POST )
	public void updateKitchenDetails(HttpServletRequest request,HttpServletResponse response) {
		JSONObject responseJson = new JSONObject();
		try {
			JSONObject requestJson = new JSONObject(request.getParameter("finalSaveJson"));
			othersService.updateKitchenDetails(requestJson);
			responseJson.put("result", "Success");
			response.getWriter().write(responseJson.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value = "/updateDinningDetails", method=RequestMethod.POST )
	public void updateDinningDetails(HttpServletRequest request,HttpServletResponse response) {
		JSONObject responseJson = new JSONObject();
		try {
			JSONArray requestJson = new JSONArray(request.getParameter("finalSaveJson"));
			othersService.updateDinningDetails(requestJson);
			responseJson.put("result", "Success");
			response.getWriter().write(responseJson.toString());
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
	@RequestMapping(value = "/updateOtherDetails", method=RequestMethod.POST )
	public void updateOtherDetails(HttpServletRequest request,HttpServletResponse response) {
		JSONObject responseJson = new JSONObject();
		try {
			JSONObject requestJson = new JSONObject(request.getParameter("finalSaveJson"));
			othersService.updateOtherDetails(requestJson);
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
