package com.cis.service.impl;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

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
			
			List<String> removeStrList = Arrays.asList("`Principal-Table`, `Principal-Table-Count`, `Principal-Chair` ,`Principal-Chair-Count`,",
														":principalTable, :principalTableCount, :principalChair,:principalChairCount,",
														"`Principal-Table`=:principalTable, `Principal-Table-Count`=:principalTableCount, ",
														"`Principal-Chair`=:principalChair, `Principal-Chair-Count`=:principalChairCount,",
														" `Locker-Units`, `Locker-Units-Count`,",":lockerUnits, :lockerUnitsCount,",
														" `Locker-Units`=:lockerUnits, `Locker-Units-Count`=:lockerUnitsCount,");
			
			List<String> replaceStrList = Arrays.asList("`Store-Well-Almira_Count`|`Games-Well-Almira_Count`","`Locker-Units-Count`|`Locker-Units_Count`");
			
			sbDao.updateSchoolDetails(requestJson.getJSONObject("#home"));
			
			sbDao.updateAdminData(adminJson.getJSONObject("libraryRoom"),"Library_Room","Library_Building_Id",removeStrList,new ArrayList<String>());
			sbDao.updateAdminData(adminJson.getJSONObject("principalRoom"),"Principal_Room","Principal_Room_Id",new ArrayList<String>(),new ArrayList<String>());
			sbDao.updateAdminData(adminJson.getJSONObject("entranceHall"),"Entrance_Room","Entrance_Hall_Id",new ArrayList<String>(),new ArrayList<String>());
			sbDao.updateAdminData(adminJson.getJSONObject("officeStore"),"Store_Room","Store_Room_Id",removeStrList.subList(0,4),new ArrayList<String>());
			sbDao.updateAdminData(adminJson.getJSONObject("staffRoom"),"Staff_Room","Staff_Room_Id",removeStrList.subList(0,4),replaceStrList.subList(1,2));
			sbDao.updateAdminData(adminJson.getJSONObject("gamesRoom"),"Games_Room","Games_Room_Id",removeStrList.subList(0, 4),replaceStrList);
			sbDao.updateAdminData(adminJson.getJSONObject("activityRoom"),"Activity_Room","Activity_Room_Id",removeStrList.subList(0,4),replaceStrList);
			sbDao.updateAdminData(adminJson.getJSONObject("tVRoom"),"TV_Room","TV_Room_Id",removeStrList.subList(0, 4),replaceStrList);
			sbDao.updateAdminData(adminJson.getJSONObject("projectorRoom"),"Proj_Room","Proj_Room_Id",removeStrList.subList(0, 4),replaceStrList);
			
			
			removeStrList = Arrays.asList("`CO_Comp_Count`,","`CO_Comp_Count`=",":compCount,");
			replaceStrList = Arrays.asList("`Store-Wall-Almira_Count`|`Store-Wall-Almira_Count`","`Store-Wall-Almira_Count`|`Physics-Lab-Well-Almira_Count`",
					"`Store-Wall-Almira_Count`|`Chemistry-Lab-Well-Almira_Count`","`Store-Wall-Almira_Count`|`Zoology-Lab-Well-Almira_Count`","`Store-Wall-Almira_Count`|`Computers-Lab-Well-Almira_Count`");
			
			sbDao.updateLabsData(labJson.getJSONObject("botanyLab"),"Botany-Lab_Room","Botany-Lab_Id",removeStrList,replaceStrList.subList(0,1));
			sbDao.updateLabsData(labJson.getJSONObject("physicsLab"),"Physics-Lab_Room","Physics-Lab_Building_Id",removeStrList,replaceStrList.subList(1,2));
			sbDao.updateLabsData(labJson.getJSONObject("chemistryLab"),"Chemistry-Lab_Room","Chemistry-Lab-Id",removeStrList,replaceStrList.subList(2,3));
			sbDao.updateLabsData(labJson.getJSONObject("zoologyLab"),"Zoology-Lab_Room","Zoology-Lab_Building_Id",removeStrList,replaceStrList.subList(3,4));
			sbDao.updateLabsData(labJson.getJSONObject("computersLab"),"Computers-Lab_Room","Computers-Lab_Building_Id",removeStrList.subList(0,0),replaceStrList.subList(4,5));
			sbDao.updateLabsData(labJson.getJSONObject("mathsLab"),"Maths_Lab_Room","Maths-Lab_Id",removeStrList,replaceStrList.subList(0,1));
			sbDao.updateLabsData(labJson.getJSONObject("scienceLab"),"Science_Lab_Room","Science-Lab_Id",removeStrList,replaceStrList.subList(0,1));
			
			
			sbDao.updateClassRoomData(classJson.getJSONArray("classRoomArr"),classJson.getString("schoolBuildingId"));
			sbDao.updateToiletData(requestJson.getJSONObject("#Toilets"));
			sbDao.updateCommonAreaData(requestJson.getJSONObject("#CommonArea"));
			
			System.out.println("::::::::School Builing Successfully Saved::::::");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new JSONObject();
	}
	public List<String> removeStrings(List<String> replaceStrList,String[] arr){
		
		for(int i=0;i<arr.length;i++){
			replaceStrList.remove(i);
		}
		
		return replaceStrList;
	}
	
}
