package com.cis.service.impl;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cis.dao.CISDao;
import com.cis.dao.StaffQuartersDao;

@Service
public class StaffQuartersServiceImpl {
	@Autowired
	private CISDao cisDao;
	@Autowired
	private StaffQuartersDao sqDao;
	

	public JSONObject updateStaffQuartersDetails(JSONObject requestJson) {
		try {
			JSONArray staffQuartersJsonArr = requestJson.getJSONArray("staffQuarters");
			for(int i=0;i<staffQuartersJsonArr.length();i++){
				JSONObject staffQuartersJson= staffQuartersJsonArr.getJSONObject(i);
				if(i==0){
					/****** Delete existing object ******/
					sqDao.deleteStaffQuartersData(staffQuartersJson);
				}
				sqDao.updateStaffQuartersData(staffQuartersJson);
				
				sqDao.updateStaffQuartersObjectData(staffQuartersJson.getJSONObject("livingRoomObj"),"S_Living_Room","S_Living_Room_Id");
				sqDao.updateStaffQuartersObjectData(staffQuartersJson.getJSONObject("diningRoomObj"),"S_Dinning_Room","S_Dinning_Room_Id");
				sqDao.updateStaffQuartersObjectData(staffQuartersJson.getJSONObject("bedRoom1Obj"),"S_BedRoom1","S_BedRoom1_Id");
				sqDao.updateStaffQuartersObjectData(staffQuartersJson.getJSONObject("bedRoom2Obj"),"S_BedRoom2","S_BedRoom1_Id");
				sqDao.updateStaffQuartersToiletData(staffQuartersJson.getJSONObject("toiletsObj"));
				sqDao.updateStaffQuartersKitchenData(staffQuartersJson.getJSONObject("kitchenObj"));

			}
			System.out.println("::StaffQuarters Save Completed Successfully:::");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new JSONObject();
	}

	
}
