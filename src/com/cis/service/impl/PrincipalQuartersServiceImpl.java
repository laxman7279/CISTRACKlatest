package com.cis.service.impl;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cis.dao.CISDao;
import com.cis.dao.PrincipalQuartersDao;
import com.cis.dao.PrincipalQuartersDao;

@Service
public class PrincipalQuartersServiceImpl {
	@Autowired
	private CISDao cisDao;
	@Autowired
	private PrincipalQuartersDao sqDao;
	

	public JSONObject updatePrincipalQuartersDetails(JSONObject requestJson) {
		try {
			JSONArray principalQuartersJsonArr = requestJson.getJSONArray("principalQuarters");
			for(int i=0;i<principalQuartersJsonArr.length();i++){
				JSONObject principalQuartersJson= principalQuartersJsonArr.getJSONObject(i);
				if(i==0){
					/****** Delete existing object ******/
					sqDao.deletePrincipalQuartersData(principalQuartersJson);
				}
				sqDao.updatePrincipalQuartersData(principalQuartersJson);
				
				sqDao.updatePrincipalQuartersObjectData(principalQuartersJson.getJSONObject("livingRoomObj"),"P_Living_Room","P_Living_Room_Id");
				sqDao.updatePrincipalQuartersObjectData(principalQuartersJson.getJSONObject("diningRoomObj"),"P_Dinning_Room","P_Dinning_Room_Id");
				sqDao.updatePrincipalQuartersObjectData(principalQuartersJson.getJSONObject("bedRoom1Obj"),"P_BedRoom1","P_BedRoom1_Id");
				sqDao.updatePrincipalQuartersObjectData(principalQuartersJson.getJSONObject("bedRoom2Obj"),"P_BedRoom2","P_BedRoom1_Id");
				sqDao.updatePrincipalQuartersObjData(principalQuartersJson.getJSONObject("porticoObj"),"P_Portico","P_Portico_Id");
				sqDao.updatePrincipalQuartersObjData(principalQuartersJson.getJSONObject("utilityObj"),"P_Utility","P_Utility_Id");
				sqDao.updatePrincipalQuartersToiletData(principalQuartersJson.getJSONObject("toiletsObj"));
				sqDao.updatePrincipalQuartersKitchenData(principalQuartersJson.getJSONObject("kitchenObj"));

			}
			System.out.println("::PrincipalQuarters Save Completed Successfully:::");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new JSONObject();
	}

	
}
