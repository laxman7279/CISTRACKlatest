package com.cis.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cis.service.UserService;

@Controller
@RequestMapping("/CIS")
public class UserController {

	private UserService userService;

	@Autowired
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	
	@RequestMapping(value = "/getdistrict", method=RequestMethod.POST )
	public void populateDistrictList(HttpServletResponse response) {
		
		try {
			response.getWriter().write(userService.populateDistrictList());
		} catch (IOException e) {
			
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value = "/getinstitutue", method=RequestMethod.POST )
	public void  populateIntituteList(@RequestParam("districtid") int districtid,HttpServletResponse response) {
		try {
			response.getWriter().write(userService.populateIntituteList(districtid));
		} catch (IOException e) {
			
			e.printStackTrace();
		}
	}
	
	
	@RequestMapping(value = "/userRegistration", method=RequestMethod.POST )
	public String onSubmit(@RequestParam("email") String username, @RequestParam("password") String password , HttpServletRequest httpServletRequest) {
		String displayname=userService.validate( username ,  password);
		if(null!=displayname){
				HttpSession session =httpServletRequest.getSession(true);
				session.setAttribute("User",displayname);
				session.setMaxInactiveInterval(30*60);
				return "index";
		}else{
			return "home";
		}
	}
	
	@RequestMapping(value = "/assetmanagment", method=RequestMethod.GET )
	public String redirectToAssetMgmt(HttpServletRequest httpServletRequest) {
		if( httpServletRequest.getSession()!=null)
				return "services";
		else
			return "index";
	}
	
	@RequestMapping(value = "/getschooldetails", method=RequestMethod.POST )
	public void getSchoolDetails(@RequestParam("instituteid") int  instituteid, HttpServletResponse response ) {
		try {
			response.getWriter().write(userService.getSchoolDetails(instituteid).toString());
		} catch (IOException e) {
			
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value = "/getlibrarydetails", method=RequestMethod.POST )
	public void getLibraryDetails(@RequestParam("schoolid") int  schoolid, HttpServletResponse response ) {
		try {
			response.getWriter().write(userService.getLibraryDetails(schoolid).toString());
		} catch (IOException e) {
			
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value = "/getprincipaldetails", method=RequestMethod.POST )
	public void getPrincipalRoomDetails(@RequestParam("schoolid") int  schoolid, HttpServletResponse response ) {
		try {
			response.getWriter().write(userService.getPrincipalRoomDetails(schoolid).toString());
		} catch (IOException e) {
			
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value = "/getentrancedetails", method=RequestMethod.POST )
	public void getEntranceRoomDetails(@RequestParam("schoolid") int  schoolid, HttpServletResponse response ) {
		try {
			response.getWriter().write(userService.getEntranceRoomDetails(schoolid).toString());
		} catch (IOException e) {
			
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value = "/getstoreroomdetails", method=RequestMethod.POST )
	public void getStoreRoomDetails(@RequestParam("schoolid") int  schoolid, HttpServletResponse response ) {
		try {
			response.getWriter().write(userService.getStoreRoomDetails(schoolid).toString());
		} catch (IOException e) {
			
			e.printStackTrace();
		}
	}
	
	
	@RequestMapping(value = "/getstaffroomdetails", method=RequestMethod.POST )
	public void getStaffRoomDetails(@RequestParam("schoolid") int  schoolid, HttpServletResponse response ) {
		try {
			response.getWriter().write(userService.getStaffRoomDetails(schoolid).toString());
		} catch (IOException e) {
			
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value = "/getgamesroomdetails", method=RequestMethod.POST )
	public void getGamesRoomDetails(@RequestParam("schoolid") int  schoolid, HttpServletResponse response ) {
		try {
			response.getWriter().write(userService.getGamesRoomDetails(schoolid).toString());
		} catch (IOException e) {
			
			e.printStackTrace();
		}
	}
	

	@RequestMapping(value = "/getactivityroomdetails", method=RequestMethod.POST )
	public void getActivityRoomDetails(@RequestParam("schoolid") int  schoolid, HttpServletResponse response ) {
		try {
			response.getWriter().write(userService.getActivityRoomDetails(schoolid).toString());
		} catch (IOException e) {
			
			e.printStackTrace();
		}
	}
	

	@RequestMapping(value = "/gettvroomdetails", method=RequestMethod.POST )
	public void getTVRoomDetails(@RequestParam("schoolid") int  schoolid, HttpServletResponse response ) {
		try {
			response.getWriter().write(userService.getTVRoomDetails(schoolid).toString());
		} catch (IOException e) {
			
			e.printStackTrace();
		}
	}
	

	@RequestMapping(value = "/getprojroomdetails", method=RequestMethod.POST )
	public void getProjRoomDetails(@RequestParam("schoolid") int  schoolid, HttpServletResponse response ) {
		try {
			response.getWriter().write(userService.getProjRoomDetails(schoolid).toString());
		} catch (IOException e) {
			
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value = "/getbotanydetails", method=RequestMethod.POST )
	public void getBotanyLabDetails(@RequestParam("schoolid") int  schoolid, HttpServletResponse response ) {
		try {
			response.getWriter().write(userService.getBotanyLabDetails(schoolid).toString());
		} catch (IOException e) {
			
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value = "/getphysicsdetails", method=RequestMethod.POST )
	public void getPhysicsLabDetails(@RequestParam("schoolid") int  schoolid, HttpServletResponse response ) {
		try {
			response.getWriter().write(userService.getPhysicsLabDetails(schoolid).toString());
		} catch (IOException e) {
			
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value = "/getchemistrydetails", method=RequestMethod.POST )
	public void getChemistryLabDetails(@RequestParam("schoolid") int  schoolid, HttpServletResponse response ) {
		try {
			response.getWriter().write(userService.getChemistryLabDetails(schoolid).toString());
		} catch (IOException e) {
			
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value = "/getzoolagydetails", method=RequestMethod.POST )
	public void getZoolagyLabDetails(@RequestParam("schoolid") int  schoolid, HttpServletResponse response ) {
		try {
			response.getWriter().write(userService.getZoolagyLabDetails(schoolid).toString());
		} catch (IOException e) {
			
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value = "/getcompdetails", method=RequestMethod.POST )
	public void getCompLabDetails(@RequestParam("schoolid") int  schoolid, HttpServletResponse response ) {
		try {
			response.getWriter().write(userService.getCompLabDetails(schoolid).toString());
		} catch (IOException e) {
			
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value = "/getmathsdetails", method=RequestMethod.POST )
	public void getMathsLabDetails(@RequestParam("schoolid") int  schoolid, HttpServletResponse response ) {
		try {
			response.getWriter().write(userService.getMathsLabDetails(schoolid).toString());
		} catch (IOException e) {
			
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value = "/getsciencedetails", method=RequestMethod.POST )
	public void getScienceLabDetails(@RequestParam("schoolid") int  schoolid, HttpServletResponse response ) {
		try {
			response.getWriter().write(userService.getScienceLabDetails(schoolid).toString());
		} catch (IOException e) {
			
			e.printStackTrace();
		}
	}
	@RequestMapping(value = "/gettoidetails", method=RequestMethod.POST )
	public void getToiletDetails(@RequestParam("schoolid") int  schoolid, HttpServletResponse response ) {
		try {
			response.getWriter().write(userService.getToiletDetails(schoolid).toString());
		} catch (IOException e) {
			
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value = "/getclassroomdetails", method=RequestMethod.POST )
	public void getClassRoomDetails(@RequestParam("schoolid") int  schoolid, HttpServletResponse response ) {
		try {
			response.getWriter().write(userService.getClassRoomDetails(schoolid).toString());
		} catch (IOException e) {
			
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value = "/logout", method=RequestMethod.POST )
	public String onSubmit( HttpServletRequest httpServletRequest,HttpServletResponse response ) {
		if(httpServletRequest.getSession(false)!=null){
			System.out.println("Session is not null");
			httpServletRequest.getSession(false).setAttribute("User", null);
			httpServletRequest.getSession(false).invalidate();
			//response.sendRedirect("/WEB-INF/jsp/index.jsp");
			return "index";
		}
		//return "Logout";
		return "index";
	}
}
