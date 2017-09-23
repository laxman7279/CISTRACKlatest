package com.cis.service;

import org.json.JSONObject;
import org.springframework.stereotype.Service;

@Service
public interface SchoolBuildingService {

	public String validate(String username, String password);

	public JSONObject updateSchoolDetails(JSONObject requestJson); 

}
