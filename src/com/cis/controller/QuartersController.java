package com.cis.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cis.service.QuartersService;


@Controller
@RequestMapping("/Quarters")
public class QuartersController {
	
	
	@Autowired
	private QuartersService quartersService;

	
	
	
	@RequestMapping(value = "/getstaffdetails", method=RequestMethod.POST )
	public void getStaffQDetails(@RequestParam("instituteid") int  instituteid, HttpServletResponse response ) {
		try {
			response.getWriter().write(quartersService.getStaffQuatersDetails(instituteid).toString());
		} catch (IOException e) {
			
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value = "/getprincdetails", method=RequestMethod.POST )
	public void getPricQDetails(@RequestParam("instituteid") int  instituteid, HttpServletResponse response ) {
		try {
			response.getWriter().write(quartersService.getPrincQuatersDetails(instituteid).toString());
		} catch (IOException e) {
			
			e.printStackTrace();
		}
	}
	
	
	@RequestMapping(value = "/getportcodetails", method=RequestMethod.POST )
	public void getPorticoDetails(@RequestParam("staffquarterId") int  staffquarterId, @RequestParam("tablename") String  tablename, @RequestParam("wherecolumn") String  wherecolumn , @RequestParam("buildingid") int  buildingid, HttpServletResponse response) {
		try {
			response.getWriter().write(quartersService.getPorticoeNUtility(staffquarterId, tablename, wherecolumn, buildingid).toString());
		} catch (IOException e) {
			
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value = "/getkitchendetails", method=RequestMethod.POST )
	public void getKitchenDetails(@RequestParam("staffquarterId") int  staffquarterId, @RequestParam("tablename") String  tablename, @RequestParam("wherecolumn") String  wherecolumn , @RequestParam("buildingid") int  buildingid, HttpServletResponse response ) {
		try {
			response.getWriter().write(quartersService.getKitchenDetails(staffquarterId,tablename, wherecolumn,buildingid).toString());
		} catch (IOException e) {
			
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value = "/gettoildetails", method=RequestMethod.POST )
	public void getToiletDetails(@RequestParam("staffquarterId") int  staffquarterId, @RequestParam("tablename") String  tablename, @RequestParam("wherecolumn") String  wherecolumn , @RequestParam("buildingid") int  buildingid, HttpServletResponse response ) {
		try {
			response.getWriter().write(quartersService.getToiletDetails(staffquarterId, tablename, wherecolumn,buildingid).toString());
		} catch (IOException e) {
			
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value = "/getroomdetails", method=RequestMethod.POST )
	public void getRoomDetails(@RequestParam("staffquarterId") int  staffquarterId, @RequestParam("tablename") String  tablename, @RequestParam("wherecolumn") String  wherecolumn , @RequestParam("buildingid") int  buildingid, HttpServletResponse response ) {
		try {
			response.getWriter().write(quartersService.getRoomDetails(staffquarterId, tablename, wherecolumn,buildingid).toString());
		} catch (IOException e) {
			
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value = "/getTableDetails", method = RequestMethod.POST)
	public void getTableDetails(@RequestParam("instituteid") int  id, @RequestParam("tablename") String  tablename, @RequestParam("wherecolumn") String  wherecolumn , HttpServletResponse response ) {
		try {
			response.getWriter().write(quartersService.getTableDetails(id, tablename, wherecolumn).toString());
		} catch (IOException e) {

			e.printStackTrace();
		}
	}
}
