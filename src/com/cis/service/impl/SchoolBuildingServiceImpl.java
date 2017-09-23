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
			
			JSONObject adminLibraryJson = adminJson.getJSONObject("libraryRoom");
			JSONObject adminPrincipalJson = adminJson.getJSONObject("principalRoom");
			JSONObject adminEntranceJson = adminJson.getJSONObject("entranceHall");
			JSONObject adminStoreJson = adminJson.getJSONObject("officeStore");
			JSONObject adminStaffJson = adminJson.getJSONObject("staffRoom");
			JSONObject adminGamesJson = adminJson.getJSONObject("gamesRoom");
			
			sbDao.updateSchoolDetails(requestJson.getJSONObject("#home"));
			
			sbDao.updateToiletData(requestJson.getJSONObject("#Toilets")); 
			System.out.println(adminLibraryJson);
			sbDao.updateAdminLibraryData(adminLibraryJson);
			System.out.println(adminPrincipalJson);
			sbDao.updateAdminPrincipalData(adminPrincipalJson);
			System.out.println(adminEntranceJson);
			sbDao.updateAdminEntranceData(adminEntranceJson);
			
			System.out.println("---1---");
			System.out.println(adminStoreJson);
			sbDao.updateAdminStoreData(adminStoreJson);
			System.out.println("---2---");
			System.out.println(adminStaffJson);
			sbDao.updateAdminStaffData(adminStaffJson);
			System.out.println("----3--");
			System.out.println(adminGamesJson);
			sbDao.updateAdminGamesData(adminGamesJson);
			
			System.out.println("---updating labs--");
			System.out.println(labJson.getJSONObject("botanyLab"));
			sbDao.updateLabsData(labJson.getJSONObject("botanyLab"),"Botany-Lab_Room","Botany-Lab_Id","botanyLabId","Store-Wall-Almira_Count");
			System.out.println(labJson.getJSONObject("physicsLab"));
			sbDao.updateLabsData(labJson.getJSONObject("physicsLab"),"Physics-Lab_Room","Physics-Lab_Building_Id","botanyLabId","Physics-Lab-Well-Almira_Count");
			System.out.println(labJson.getJSONObject("chemistryLab"));
			sbDao.updateLabsData(labJson.getJSONObject("chemistryLab"),"Chemistry-Lab_Room","Chemistry-Lab-Id","botanyLabId","Chemistry-Lab-Well-Almira_Count");
			System.out.println(labJson.getJSONObject("zoologyLab"));
			sbDao.updateLabsData(labJson.getJSONObject("zoologyLab"),"Zoology-Lab_Room","Zoology-Lab_Building_Id","botanyLabId","Zoology-Lab-Well-Almira_Count");
			System.out.println(labJson.getJSONObject("computersLab"));
			sbDao.updateLabsData(labJson.getJSONObject("computersLab"),"Computers-Lab_Room","Computers-Lab_Building_Id","botanyLabId","Computers-Lab-Well-Almira_Count");
			
			System.out.println(classJson.getJSONArray("classRoomArr"));
			sbDao.updateClassRoomData(classJson.getJSONArray("classRoomArr"),classJson.getString("schoolBuildingId"));
			
			System.out.println(requestJson.getJSONObject("#CommonArea"));
			sbDao.updateCommonAreaData(requestJson.getJSONObject("#CommonArea"));
			
			System.out.println("::::::::School Builing Successfully Saved::::::");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new JSONObject();
	}

	
}
