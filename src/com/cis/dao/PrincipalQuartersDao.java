package com.cis.dao;

import java.util.HashMap;
import java.util.Map;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

@Repository
public class PrincipalQuartersDao {
	@Autowired
	private final JdbcTemplate jdbcTemplate;
	@Autowired
	private final NamedParameterJdbcTemplate jdbcNamedTemplate;
	
	@Autowired
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}
	@Autowired
	public NamedParameterJdbcTemplate getNamedJdbcTemplate() {
		return jdbcNamedTemplate;
	}
	@Autowired
	public PrincipalQuartersDao(JdbcTemplate jdbcTemplate,NamedParameterJdbcTemplate namedJdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
		this.jdbcNamedTemplate = namedJdbcTemplate;
	}
	
	public void deletePrincipalQuartersData(JSONObject jsonObject) { 
		try {
			Map<String, Object> paramMap = new Gson().fromJson(jsonObject.toString(), new TypeToken<HashMap<String, Object>>() {}.getType());
			getNamedJdbcTemplate().update("DELETE FROM P_Living_Room WHERE Principal_Quarter_Id = :principalQuarterId", paramMap);
			getNamedJdbcTemplate().update("DELETE FROM P_Dinning_Room WHERE Principal_Quarter_Id = :principalQuarterId", paramMap);
			getNamedJdbcTemplate().update("DELETE FROM P_BedRoom1 WHERE Principal_Quarter_Id = :principalQuarterId", paramMap);
			getNamedJdbcTemplate().update("DELETE FROM P_BedRoom2 WHERE Principal_Quarter_Id = :principalQuarterId", paramMap);
			getNamedJdbcTemplate().update("DELETE FROM P_Portico WHERE Principal_Quarter_Id = :principalQuarterId", paramMap);
			getNamedJdbcTemplate().update("DELETE FROM P_Utility WHERE Principal_Quarter_Id = :principalQuarterId", paramMap);
			getNamedJdbcTemplate().update("DELETE FROM P_Toilets WHERE Principal_Quarter_Id = :principalQuarterId", paramMap);
			getNamedJdbcTemplate().update("DELETE FROM P_Kitchen WHERE Principal_Quarter_Id = :principalQuarterId", paramMap);
			getNamedJdbcTemplate().update("DELETE FROM PrincipalQuarters WHERE Principal_Quarter_Id = :principalQuarterId", paramMap);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	public void updatePrincipalQuartersData(JSONObject jsonObject) { 
		
		try {
			String PRINCIPAL_QUARTERS_MERGE_SQL = "INSERT INTO PrincipalQuarters (Principal_Quarter_Id,Institution_Id,Building_Id,Living_Room,Dining_Room,"+
						"Bed_Room1,Bed_Room2,Toilets,Kitchen,Block,Floor,Staff_Quarters_Type,Has_Separate_Meter) "+
						" VALUES (:principalQuarterId,:institutionId,:buildingId,:livingRoom,:diningRoom,"+
						":bedRoom1,:bedRoom2,:toilets,:kitchen,:block,:floor,:principalQuartersType,:hasSeperateMeter)"+
						"ON DUPLICATE KEY UPDATE Living_Room=:livingRoom,Dining_Room=:diningRoom,Bed_Room1=:bedRoom1,Bed_Room2=:bedRoom2,"+
						"Toilets=:toilets,Kitchen=:kitchen,Block=:block,Floor=:floor,Staff_Quarters_Type=:principalQuartersType,Has_Separate_Meter=:hasSeperateMeter";
			Map<String, Object> paramMap = new Gson().fromJson(jsonObject.toString(), new TypeToken<HashMap<String, Object>>() {}.getType());
			System.out.println(":::::"+paramMap.toString()); 
			getNamedJdbcTemplate().update(PRINCIPAL_QUARTERS_MERGE_SQL, paramMap);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public void updatePrincipalQuartersObjectData(JSONObject jsonObject,String tableName,String tableColumn) { 
		try {
			String PRINCIPAL_QUARTERS_OBJECT_MERGE_SQL = "INSERT INTO #TABLE_NAME# (Principal_Quarter_Id, #TABLE_COLUMN#, Block_Id, Floor_Id, Plinth_Area, "+
						" Ceiling_Fans, Ceiling_Fans_Count, TubeLights, TubeLights_Count, Bulbs, Bulbs_Count, Glass_Door_Almira, Glass_Door_Almira_Count,"+
						" Store_Well_Almira, Store_Well_Almira_Count, Table_Fans, Tables_Fans_Count, BUILDING_ID) "+
						" VALUES (:principalQuarterId,:buildingId,:buildingId,:buildingId,:carpetAreaCnt,"+
						" :ceilingFans,:ceilingFansCnt,:tubeLights,:tubeLightsCnt,:bulbs,:bulbsCnt,:glassDoorAlmira,:glassDoorAlmiraCnt,"+
						" :storeWellAlmira,:storeWellAlmiraCnt,:tableFans,:tableFansCnt,:buildingId )"+
						"ON DUPLICATE KEY UPDATE Plinth_Area=:carpetAreaCnt,Ceiling_Fans=:ceilingFans,Ceiling_Fans_Count=:ceilingFansCnt,TubeLights=:tubeLights,"+
						" TubeLights_Count=:tubeLightsCnt,Bulbs=:bulbs,Bulbs_Count=:bulbsCnt,Glass_Door_Almira=:glassDoorAlmira,Glass_Door_Almira_Count=:glassDoorAlmiraCnt,"+
						" Store_Well_Almira=:storeWellAlmira,Store_Well_Almira_Count=:storeWellAlmiraCnt,Table_Fans=:tableFans,Tables_Fans_Count=:tableFansCnt";
			PRINCIPAL_QUARTERS_OBJECT_MERGE_SQL = PRINCIPAL_QUARTERS_OBJECT_MERGE_SQL.replace("#TABLE_NAME#", tableName).replace("#TABLE_COLUMN#", tableColumn);
			Map<String, Object> paramMap = new Gson().fromJson(jsonObject.toString(), new TypeToken<HashMap<String, Object>>() {}.getType());
			System.out.println(":::::"+PRINCIPAL_QUARTERS_OBJECT_MERGE_SQL.toString()); 
			System.out.println(":::::"+paramMap.toString()); 
			getNamedJdbcTemplate().update(PRINCIPAL_QUARTERS_OBJECT_MERGE_SQL, paramMap);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void updatePrincipalQuartersObjData(JSONObject jsonObject,String tableName,String tableColumn) { 
		try {
			String PRINCIPAL_QUARTERS_OBJECT_MERGE_SQL = "INSERT INTO #TABLE_NAME# (Principal_Quarter_Id, #TABLE_COLUMN#, Bulbs, Bulbs_Count, "+
						" TubeLights, TubeLights_Count, BUILDING_ID) "+
						" VALUES (:principalQuarterId,:buildingId,:bulbs,:bulbsCnt,:tubeLights,:tubeLightsCnt,:buildingId )"+
						"ON DUPLICATE KEY UPDATE Bulbs=:bulbs,Bulbs_Count=:bulbsCnt,TubeLights=:tubeLights,TubeLights_Count=:tubeLightsCnt";
			PRINCIPAL_QUARTERS_OBJECT_MERGE_SQL = PRINCIPAL_QUARTERS_OBJECT_MERGE_SQL.replace("#TABLE_NAME#", tableName).replace("#TABLE_COLUMN#", tableColumn);
			Map<String, Object> paramMap = new Gson().fromJson(jsonObject.toString(), new TypeToken<HashMap<String, Object>>() {}.getType());
			System.out.println(":::::"+PRINCIPAL_QUARTERS_OBJECT_MERGE_SQL.toString()); 
			System.out.println(":::::"+paramMap.toString()); 
			getNamedJdbcTemplate().update(PRINCIPAL_QUARTERS_OBJECT_MERGE_SQL, paramMap);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void updatePrincipalQuartersToiletData(JSONObject jsonObject) { 
		try {
			String PRINCIPAL_QUARTERS_OBJECT_MERGE_SQL = "INSERT INTO P_Toilets (Principal_Quarter_Id,P_Toilets_Id,Exhaust_Fans,Exhaust_Fans_Count,TubeLights,"+
						"TubeLights_Count,Bulbs,Bulbs_Count,Indian_Toilet,Indian_Toilet_Count,Water_Closet,Water_Closet_Count,Running_Water,Running_Water_Count,"+
						"Flush_System,Flush_System_Count,BUILDING_ID) "+
						" VALUES (:principalQuarterId,:buildingId,:exhaustFans,:exhaustFansCnt,:tubeLights,:tubeLightsCnt,:bulbs,:bulbsCnt,:indianToilets,"+
						" :indianToiletsCnt,:waterCloset,:waterClosetCnt,:runningWater,:runningWaterCnt,:flushSystem,:flushSystemCnt,:buildingId )"+
						"ON DUPLICATE KEY UPDATE Exhaust_Fans=:exhaustFans,Exhaust_Fans_Count=:exhaustFansCnt,TubeLights=:tubeLights,TubeLights_Count=:tubeLightsCnt,"+
						" Bulbs=:bulbs,Bulbs_Count=:bulbsCnt,Indian_Toilet=:indianToilets,Indian_Toilet_Count=:indianToiletsCnt,Water_Closet=:waterCloset,"+
						" Water_Closet_Count=:waterClosetCnt,Running_Water=:runningWater,Running_Water_Count=:runningWaterCnt,Flush_System=:flushSystem,Flush_System_Count=:flushSystemCnt";
			Map<String, Object> paramMap = new Gson().fromJson(jsonObject.toString(), new TypeToken<HashMap<String, Object>>() {}.getType());
			System.out.println(":::::"+PRINCIPAL_QUARTERS_OBJECT_MERGE_SQL.toString()); 
			System.out.println(":::::"+paramMap.toString());
			getNamedJdbcTemplate().update(PRINCIPAL_QUARTERS_OBJECT_MERGE_SQL, paramMap);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void updatePrincipalQuartersKitchenData(JSONObject jsonObject) { 
		try {
			String PRINCIPAL_QUARTERS_OBJECT_MERGE_SQL = "INSERT INTO P_Kitchen (Principal_Quarter_Id,P_Kitchen_Id,Building_Id,Exhaust_Fans,Exhaust_Fans_Count,TubeLights,"+
						"TubeLights_Count,Bulbs,Bulbs_Count,SinkFacility,SinkFacility_Count) "+
						" VALUES (:principalQuarterId,:buildingId,:buildingId,:exhaustFans,:exhaustFansCnt,:tubeLights,:tubeLightsCnt,"+
						" :bulbs,:bulbsCnt,:sinkFacility,:sinkFacilityCnt )"+
						"ON DUPLICATE KEY UPDATE Exhaust_Fans=:exhaustFans,Exhaust_Fans_Count=:exhaustFansCnt,TubeLights=:tubeLights,TubeLights_Count=:tubeLightsCnt,"+
						" Bulbs=:bulbs,Bulbs_Count=:bulbsCnt,SinkFacility=:sinkFacility,SinkFacility_Count=:sinkFacilityCnt";
			Map<String, Object> paramMap = new Gson().fromJson(jsonObject.toString(), new TypeToken<HashMap<String, Object>>() {}.getType());
			System.out.println(":::::"+PRINCIPAL_QUARTERS_OBJECT_MERGE_SQL.toString()); 
			System.out.println(":::::"+paramMap.toString());
			getNamedJdbcTemplate().update(PRINCIPAL_QUARTERS_OBJECT_MERGE_SQL, paramMap);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
}