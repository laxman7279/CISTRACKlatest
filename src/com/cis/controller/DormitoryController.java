package com.cis.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cis.service.DormitoryService;
import com.cis.service.UserService;

@Controller
@RequestMapping("/dormitory")
public class DormitoryController {
	

@Autowired
private DormitoryService dmService;
	
@RequestMapping(value = "/getdormitorydetails", method=RequestMethod.POST )
public void getSchoolDetails(@RequestParam("instituteid") int  instituteid, HttpServletResponse response ) {
	try {
		response.getWriter().write(dmService.getDormitoryDetails(instituteid).toString());
	} catch (IOException e) {
		
		e.printStackTrace();
	}
}	//getDmHallData
@RequestMapping(value = "/getDmHallData", method=RequestMethod.POST )
public void getDmHallData(@RequestParam("instituteid") int  instituteid, HttpServletResponse response ) {
	try {
		System.out.println("DmWardenService*************************");
		response.getWriter().write(dmService.getDmHallData(instituteid).toString());
	} catch (IOException e) {
		
		e.printStackTrace();
	}
} //getHallData
@RequestMapping(value = "/getHallData", method=RequestMethod.POST )
public void getHallData(@RequestParam("instituteid") int  instituteid,@RequestParam("hallId") int  hallId, HttpServletResponse response ) {
	try {
		System.out.println("DmWardenService*************************");
		response.getWriter().write(dmService.getHallData(instituteid,hallId).toString());
	} catch (IOException e) {
		
		e.printStackTrace();
	}
}

@RequestMapping(value = "/getDmWardenData", method=RequestMethod.POST )
public void getDmWardenDetails(@RequestParam("instituteid") int  dormitoryId, HttpServletResponse response ) {
	try {
		System.out.println("DmWardenService*************************");
		response.getWriter().write(dmService.getDmWardenHallDetails(dormitoryId).toString());
	} catch (IOException e) {
		
		e.printStackTrace();
	}
}
//2
@RequestMapping(value = "/getDmOfficeDetails", method=RequestMethod.POST )
public void getDmOfficeDetails(@RequestParam("instituteid") int  dormitoryId, HttpServletResponse response ) {
	try {
		response.getWriter().write(dmService.getDmOfficeDetails(dormitoryId).toString());
	} catch (IOException e) {
		
		e.printStackTrace();
	}
}
//3
@RequestMapping(value = "/getDmWaitingHallDetails", method=RequestMethod.POST )
public void getDmWaitingHallDetails(@RequestParam("instituteid") int  dormitoryId, HttpServletResponse response ) {
	try {
		response.getWriter().write(dmService.getDmWaitingHallDetails(dormitoryId).toString());
	} catch (IOException e) {
		
		e.printStackTrace();
	}
}
//4
@RequestMapping(value = "/getDmClinicDetails", method=RequestMethod.POST )
public void getDmClinicDetails(@RequestParam("instituteid") int  dormitoryId, HttpServletResponse response ) {
	try {
		response.getWriter().write(dmService.getDmClinicDetails(dormitoryId).toString());
	} catch (IOException e) {
		
		e.printStackTrace();
	}
}
//5
@RequestMapping(value = "/getDmToiletsDetails", method=RequestMethod.POST )
public void getDmToiletsDetails(@RequestParam("instituteid") int  dormitoryId, HttpServletResponse response ) {
	try {
		response.getWriter().write(dmService.getDmToiletsDetails(dormitoryId).toString());
	} catch (IOException e) {
		
		e.printStackTrace();
	}
}
//6
@RequestMapping(value = "/getDmBathroomDetails", method=RequestMethod.POST )
public void getDmBathroomDetails(@RequestParam("instituteid") int  dormitoryId, HttpServletResponse response ) {
	try {
		response.getWriter().write(dmService.getDmBathroomDetails(dormitoryId).toString());
	} catch (IOException e) {
		
		e.printStackTrace();
	}
}
//7
@RequestMapping(value = "/getDmCommonAreaDetails", method=RequestMethod.POST )
public void getDmCommonAreaDetails(@RequestParam("instituteid") int  dormitoryId, @RequestParam("type") String  type, HttpServletResponse response ) {
	try {
		response.getWriter().write(dmService.getDmCommonAreaDetails(dormitoryId,type).toString());
	} catch (IOException e) {
		
		e.printStackTrace();
	}
}



@RequestMapping(value = "/updateDormitoryDetails", method=RequestMethod.POST )
public void updateDormitoryDetails(HttpServletRequest request,HttpServletResponse response) {
	JSONObject responseJson = new JSONObject();
	try {
		JSONObject requestJson = new JSONObject(request.getParameter("finalSaveJson"));
		dmService.updateDormitoryDetails(requestJson);
		responseJson.put("result", "Success");
		response.getWriter().write(responseJson.toString());
	} catch (Exception e) {
		e.printStackTrace();
	}
}





	
}
