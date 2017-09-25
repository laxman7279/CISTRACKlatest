package com.cis.service.impl;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cis.dao.CISDao;
import com.cis.dao.SchoolBuildingDao;
import com.cis.service.SchoolBuildingService;

@Service
public class SchoolBuildingServiceImpl implements SchoolBuildingService {
	@Autowired
	private CISDao cisDao;
	@Autowired
	private SchoolBuildingDao sbDao;
	

	@Override
	public String validate(String username , String password) {
		return cisDao.validate(username, password);
	}

	@Override
	public JSONObject updateSchoolDetails(JSONObject requestJson) {
		try {
			
			JSONObject adminJson = requestJson.getJSONObject("#home");
			JSONObject labJson = requestJson.getJSONObject("#lab");
			JSONObject classJson = requestJson.getJSONObject("#Classrooms");
			
			sbDao.updateAdminData(adminJson.getJSONObject("libraryRoom"),"Library_Room","Library_Building_Id");
			sbDao.updateAdminData(adminJson.getJSONObject("principalRoom"),"Principal_Room","Principal_Room_Id");
			sbDao.updateAdminData(adminJson.getJSONObject("entranceHall"),"Entrance_Room","Entrance_Hall_Id");
			sbDao.updateAdminData(adminJson.getJSONObject("officeStore"),"Store_Room","Store_Room_Id");
			sbDao.updateAdminData(adminJson.getJSONObject("staffRoom"),"Staff_Room","Staff_Room_Id");
			sbDao.updateAdminData(adminJson.getJSONObject("gamesRoom"),"Games_Room","Games_Room_Id");
			sbDao.updateAdminData(adminJson.getJSONObject("activityRoom"),"Activity_Room","Activity_Room_Id");
			sbDao.updateAdminData(adminJson.getJSONObject("tVRoom"),"TV_Room","TV_Room_Id");
			sbDao.updateAdminData(adminJson.getJSONObject("projectorRoom"),"Proj_Room","Proj_Room_Id");
			
			
			sbDao.updateLabsData(labJson.getJSONObject("botanyLab"),"Botany-Lab_Room","Botany-Lab_Id","botanyLabId","Store-Wall-Almira_Count");
			sbDao.updateLabsData(labJson.getJSONObject("physicsLab"),"Physics-Lab_Room","Physics-Lab_Building_Id","botanyLabId","Physics-Lab-Well-Almira_Count");
			sbDao.updateLabsData(labJson.getJSONObject("chemistryLab"),"Chemistry-Lab_Room","Chemistry-Lab-Id","botanyLabId","Chemistry-Lab-Well-Almira_Count");
			sbDao.updateLabsData(labJson.getJSONObject("zoologyLab"),"Zoology-Lab_Room","Zoology-Lab_Building_Id","botanyLabId","Zoology-Lab-Well-Almira_Count");
			sbDao.updateLabsData(labJson.getJSONObject("computersLab"),"Computers-Lab_Room","Computers-Lab_Building_Id","botanyLabId","Computers-Lab-Well-Almira_Count");
			sbDao.updateLabsData(labJson.getJSONObject("computersLab"),"Science_Lab_Room","Science-Lab_Id","botanyLabId","Store-Wall-Almira_Count");
			sbDao.updateLabsData(labJson.getJSONObject("computersLab"),"Maths_Lab_Room","Maths-Lab_Id","botanyLabId","Store-Wall-Almira_Count");
			
			
			sbDao.updateClassRoomData(classJson.getJSONArray("classRoomArr"),classJson.getString("schoolBuildingId"));
			sbDao.updateSchoolDetails(requestJson.getJSONObject("#home"));
			sbDao.updateToiletData(requestJson.getJSONObject("#Toilets"));
			sbDao.updateCommonAreaData(requestJson.getJSONObject("#CommonArea"));
			
			System.out.println("::::::::School Builing Successfully Saved::::::");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new JSONObject();
	}

	
}
