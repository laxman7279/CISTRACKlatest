package com.cis.service;

import org.json.JSONObject;
import org.springframework.stereotype.Service;

@Service
public interface QuartersService {
	
	public JSONObject getStaffQuatersDetails(int instituteid) ;
	
	public JSONObject getPrincQuatersDetails(int instituteid);
	
	public JSONObject getPorticoeNUtility(int staffquarterId,String tablename, String wherecolumn,int buildingid);
	
	public JSONObject getKitchenDetails(int staffquarterId,String tablename, String wherecolumn,int buildingid);
	
	public JSONObject getRoomDetails(int staffquarterId,String tablename, String wherecolumn,int buildingid );
	
	public JSONObject getToiletDetails(int staffquarterId,String tablename, String wherecolumn,int buildingid);	
	
	public JSONObject getTableDetails(int id,String tablename, String wherecolumn );
}
