package com.cis.service;

import org.json.JSONObject;
import org.springframework.stereotype.Service;

@Service
public interface DormitoryService {
	
 public JSONObject getDormitoryDetails(int instituteid);
 public JSONObject getDmWardenHallDetails(int dormitoryId);
 public JSONObject getDmOfficeDetails(int dormitoryId);	
 public JSONObject getDmWaitingHallDetails(int dormitoryId);	
 public JSONObject getDmClinicDetails(int dormitoryId);	
 public JSONObject getDmToiletsDetails(int dormitoryId);	
 public JSONObject getDmBathroomDetails(int dormitoryId);	
 public JSONObject getDmCommonAreaDetails(int dormitoryId, String type);
 public JSONObject updateDormitoryDetails(JSONObject requestJson);	  
 public JSONObject getDmHallData(int Institution_Id);
 public JSONObject getHallData(int Institution_Id,int hallId);
}
