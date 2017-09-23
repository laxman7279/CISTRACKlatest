package com.cis.service.impl;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cis.dao.CISDao;
import com.cis.dao.DormitoryDao;
import com.cis.dao.DormitoryUpdateDao;
import com.cis.service.DormitoryService;

@Service
public class DormitoryServiceImpl implements  DormitoryService {
	@Autowired
	private CISDao cisDao;
	@Autowired
	private DormitoryDao dmDao;
	
	@Autowired
	private DormitoryUpdateDao dmUpdateDao;
	
	@Override
	public JSONObject getDormitoryDetails(int instituteid) {
		// TODO Auto-generated method stub
		return dmDao.getDormitoryDetails(instituteid);
	} 
	@Override
	public JSONObject  getDmHallData(int Institution_Id)
	{
		return dmDao.getDmHallData(Institution_Id);
	} //getHallData
	@Override
	public JSONObject  getHallData(int Institution_Id,int hallId)
	{
		return dmDao.getHallData(Institution_Id,hallId);
	}
	@Override
	public JSONObject  getDmWardenHallDetails(int dormitoryId)
	{
		return dmDao.getDmWardenHallDetails(dormitoryId);
	}
	@Override
	public JSONObject  getDmOfficeDetails(int dormitoryId)
	{
		return dmDao.getDmOfficeDetails(dormitoryId);
	}
	@Override
	public JSONObject  getDmWaitingHallDetails(int dormitoryId)
	{
		return dmDao.getDmWaitingHallDetails(dormitoryId);
	}
	@Override
	public JSONObject  getDmClinicDetails(int dormitoryId)
	{
		return dmDao.getDmClinicDetails(dormitoryId);
	}
	@Override
	public JSONObject  getDmToiletsDetails(int dormitoryId)
	{
		return dmDao.getDmToiletsDetails(dormitoryId);
	}
	@Override
	public JSONObject  getDmBathroomDetails(int dormitoryId)
	{
		return dmDao.getDmBathroomDetails(dormitoryId);
	}
	@Override
	public JSONObject  getDmCommonAreaDetails(int dormitoryId, String type)
	{
		return dmDao.getDmCommonAreaDetails(dormitoryId,type);
	}
	
	
	
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public JSONObject updateDormitoryDetails(JSONObject dormitoryJson) {
		try {
				dmUpdateDao.updateDormitoryData(dormitoryJson);
				dmUpdateDao.deleteDormitoryHallData(dormitoryJson);
				dmUpdateDao.updateDormitoryHallData(dormitoryJson.getJSONArray("hallsArray"));
				
				List<String> replaceStrList = new ArrayList();
				dmUpdateDao.updateDormitoryObjectData(dormitoryJson.getJSONObject("wardenHallObj"),"D_Warden_Hall","Warden_Id",replaceStrList);
				
				replaceStrList = new ArrayList();
				replaceStrList = Arrays.asList("Cots=:cots,","Cots_Count=:cotsCnt,","Cots,Cots_Count,",":cots,:cotsCnt,");
				dmUpdateDao.updateDormitoryObjectData(dormitoryJson.getJSONObject("officeHallObj"),"D_Office_Hall","Office_Id",replaceStrList);
				
				replaceStrList = new ArrayList();
				replaceStrList = Arrays.asList("Cots=:cots,","Cots_Count=:cotsCnt,","Cots,Cots_Count,",":cots,:cotsCnt,",
							"Glass_Door_Almira,Glass_Door_Almira_Count,",":glassDoorAlmira,:glassDoorAlmiraCnt,",
							"Glass_Door_Almira_Count=:glassDoorAlmiraCnt,","Glass_Door_Almira=:glassDoorAlmira,",
							"Store_Well_Almira=:storeWallAlmira,","Store_Well_Almira_Count=:storeWallAlmiraCnt,",
							"Store_Well_Almira,Store_Well_Almira_Count,",":storeWallAlmira,:storeWallAlmiraCnt,");
				dmUpdateDao.updateDormitoryObjectData(dormitoryJson.getJSONObject("waitingHallObj"),"D_Waiting_Hall","Waiting_Id",replaceStrList);
				
				replaceStrList = new ArrayList();
				dmUpdateDao.updateDormitoryObjectData(dormitoryJson.getJSONObject("clinicHallObj"),"D_Clinic","Clinic_Id",replaceStrList);
				
				
				dmUpdateDao.updateDormitoryToiletData(dormitoryJson.getJSONObject("toiletsObj"));
				dmUpdateDao.updateDormitoryBathRoomData(dormitoryJson.getJSONObject("bathRoomsObj"));
				dmUpdateDao.updateDormitoryCommonAreaData(dormitoryJson.getJSONObject("commonAreaObj"));
			System.out.println("::StaffQuarters Save Completed Successfully:::");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new JSONObject();
	}
	
}
