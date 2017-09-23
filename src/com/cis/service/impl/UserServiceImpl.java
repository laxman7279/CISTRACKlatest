package com.cis.service.impl;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cis.dao.CISDao;
import com.cis.service.UserService;


@Repository
public class UserServiceImpl implements UserService {
	
	private CISDao cisDao;

	@Autowired
	public void setUserService(CISDao cisDao) {
		this.cisDao = cisDao;
	}

	@Override
	public String   validate(String username , String password) {
		return cisDao.validate(username, password);
	}

	@Override
	public String populateDistrictList() {
		   return cisDao.getDistrictList().toString();
		  
	}

	@Override
	public String populateIntituteList(int districtid) {
		 return cisDao.getInstitutes(districtid).toString();
	}
	
	@Override
	public JSONObject  getSchoolDetails(int instituteid)
	{
		return cisDao.getSchoolDetails(instituteid);
	}
	
	@Override
	public JSONObject  getLibraryDetails(int schoolid)
	{
		return cisDao.getLibraryRoomDetails(schoolid);
	}
	
	@Override
	public JSONObject  getPrincipalRoomDetails(int schoolid)
	{
		return cisDao.getPrincipalRoomDetails(schoolid);
	}
	
	@Override
	public JSONObject  getEntranceRoomDetails(int schoolid)
	{
		return cisDao.getEntranceRoom(schoolid);
	}
	
	@Override
	public JSONObject  getStoreRoomDetails(int schoolid)
	{
		return cisDao.getStoreRoomDetails(schoolid);
	}
	
	@Override
	public JSONObject  getStaffRoomDetails(int schoolid)
	{
		return cisDao.getStaffRoomDetails(schoolid);
	}
	
	@Override
	public JSONObject  getGamesRoomDetails(int schoolid)
	{
		return cisDao.getGamesRoomDetails(schoolid);
	}
	
	@Override
	public JSONObject  getBotanyLabDetails(int schoolid)
	{
		return cisDao.getBotanyLabDetails(schoolid);
	}
	
	@Override
	public JSONObject  getChemistryLabDetails(int schoolid)
	{
		return cisDao.getChemistryLabDetails(schoolid);
	}
	
	@Override
	public JSONObject  getPhysicsLabDetails(int schoolid)
	{
		return cisDao.getPhysicsLabDetails(schoolid);
	}
	
	@Override
	public JSONObject  getZoolagyLabDetails(int schoolid)
	{
		return cisDao.getZoologyLabDetails(schoolid);
	}
	
	@Override
	public JSONObject  getCompLabDetails(int schoolid)
	{
		return cisDao.getComputerLabDetails(schoolid);
	}
	
	@Override
	public JSONObject getToiletDetails(int schoolid)
	{
		return cisDao.getToiletDetails(schoolid);
	}
	
	@Override
	public JSONObject getClassRoomDetails(int schoolid)
	{
		return cisDao.getClassRoomDetails(schoolid);
	}
}
