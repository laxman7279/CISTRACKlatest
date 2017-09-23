package com.cis.service;

import org.json.JSONObject;

public interface UserService {

	public String validate(String username, String password);

	public String populateDistrictList();

	public String populateIntituteList(int districtid);

	public JSONObject getSchoolDetails(int instituteid);

	public JSONObject getLibraryDetails(int schoolid);

	public JSONObject getPrincipalRoomDetails(int schoolid);

	public JSONObject getEntranceRoomDetails(int schoolid);

	public JSONObject getStoreRoomDetails(int schoolid);

	public JSONObject getStaffRoomDetails(int schoolid);

	public JSONObject getGamesRoomDetails(int schoolid);

	public JSONObject getBotanyLabDetails(int schoolid);

	public JSONObject getChemistryLabDetails(int schoolid);

	public JSONObject getPhysicsLabDetails(int schoolid);

	public JSONObject getZoolagyLabDetails(int schoolid);

	public JSONObject getCompLabDetails(int schoolid);
	
	public JSONObject getToiletDetails(int schoolid);
	
	public JSONObject getClassRoomDetails(int schoolid);

}
