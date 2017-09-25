package com.cis.service.impl;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cis.dao.OthersDao;

@Service
public class OthersServiceImpl {
	
	@Autowired
	private OthersDao othersDao;
	
	public JSONObject updateKitchenDetails(JSONObject kitchenJson) {
		try {
			othersDao.updateKitchenDetails(kitchenJson); 
			System.out.println("::Successfully Saved:::");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new JSONObject();
	}
	public JSONObject updateDinningDetails(JSONObject kitchenJson) {
		try {
			othersDao.updateDinningDetails(kitchenJson); 
			System.out.println("::Successfully Saved:::");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new JSONObject();
	}

	public JSONObject updateOtherDetails(JSONObject othersJson) {
		try {
			othersDao.updateOtherDetails(othersJson); 
			othersDao.updateComponentWallDetails(othersJson.getJSONObject("compoundWallObj")); 
			othersDao.updateGuardRoomDetails(othersJson.getJSONObject("guardRoomObj")); 
			othersDao.updatePowerSupplyDetails(othersJson.getJSONObject("powerSupplyObj")); 
			othersDao.updateInternalRoadsDetails(othersJson.getJSONObject("internalRoadsObj")); 
			othersDao.updateExternalWaterSupplyDetails(othersJson.getJSONObject("extWaterSuppObj")); 
			othersDao.updateSanitarySystemDetails(othersJson.getJSONObject("sanitarySystemObj")); 
			othersDao.updateOverheadTankDetails(othersJson.getJSONObject("overheadTankObj")); 
			othersDao.updatePlayGroundDetails(othersJson.getJSONObject("playGroundObj")); 
			System.out.println("::Successfully Saved:::");
		} catch (Exception e) {
			e.printStackTrace(); 
		}
		return new JSONObject();
	}
	
}
