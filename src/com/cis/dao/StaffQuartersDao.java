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
public class StaffQuartersDao {
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
	public StaffQuartersDao(JdbcTemplate jdbcTemplate,NamedParameterJdbcTemplate namedJdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
		this.jdbcNamedTemplate = namedJdbcTemplate;
	}
	
	public void deleteStaffQuartersData(JSONObject jsonObject) { 
		try {
			Map<String, Object> paramMap = new Gson().fromJson(jsonObject.toString(), new TypeToken<HashMap<String, Object>>() {}.getType());
			getNamedJdbcTemplate().update("DELETE FROM S_Toilets WHERE Staff_Quarter_Id = :staffQuarterId", paramMap);
			getNamedJdbcTemplate().update("DELETE FROM S_Kitchen WHERE Staff_Quarter_Id = :staffQuarterId", paramMap);
			getNamedJdbcTemplate().update("DELETE FROM S_Living_Room WHERE Staff_Quarter_Id = :staffQuarterId", paramMap);
			getNamedJdbcTemplate().update("DELETE FROM S_Dinning_Room WHERE Staff_Quarter_Id = :staffQuarterId", paramMap);
			getNamedJdbcTemplate().update("DELETE FROM S_BedRoom1 WHERE Staff_Quarter_Id = :staffQuarterId", paramMap);
			getNamedJdbcTemplate().update("DELETE FROM S_BedRoom2 WHERE Staff_Quarter_Id = :staffQuarterId", paramMap);
			getNamedJdbcTemplate().update("DELETE FROM StaffQuarters WHERE Staff_Quarter_Id = :staffQuarterId", paramMap);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void updateStaffQuartersData(JSONObject jsonObject) { 
		try {
			String STAFF_QUARTERS_MERGE_SQL = "INSERT INTO StaffQuarters (Staff_Quarter_Id,Institution_Id,Building_Id,Living_Room,Dining_Room,"+
						"Bed_Room1,Bed_Room2,Toilets,Kitchen,Block,Floor,Staff_Quarters_Type,Has_Separate_Meter) "+
						" VALUES (:staffQuarterId,:institutionId,:buildingId,:livingRoom,:diningRoom,"+
						":bedRoom1,:bedRoom2,:toilets,:kitchen,:block,:floor,:staffQuartersType,:hasSeperateMeter)"+
						"ON DUPLICATE KEY UPDATE Living_Room=:livingRoom,Dining_Room=:diningRoom,Bed_Room1=:bedRoom1,Bed_Room2=:bedRoom2,"+
						"Toilets=:toilets,Kitchen=:kitchen,Block=:block,Floor=:floor,Staff_Quarters_Type=:staffQuartersType,Has_Separate_Meter=:hasSeperateMeter";
			Map<String, Object> paramMap = new Gson().fromJson(jsonObject.toString(), new TypeToken<HashMap<String, Object>>() {}.getType());
			System.out.println(":::::"+paramMap.toString()); 
			getNamedJdbcTemplate().update(STAFF_QUARTERS_MERGE_SQL, paramMap);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void updateStaffQuartersObjectData(JSONObject jsonObject,String tableName,String tableColumn) { 
		try {
			String STAFF_QUARTERS_OBJECT_MERGE_SQL = "INSERT INTO #TABLE_NAME# (Staff_Quarter_Id, #TABLE_COLUMN#, Block_Id, Floor_Id, Plinth_Area, "+
						" Ceiling_Fans, Ceiling_Fans_Count, TubeLights, TubeLights_Count, Bulbs, Bulbs_Count, Glass_Door_Almira, Glass_Door_Almira_Count,"+
						" Store_Well_Almira, Store_Well_Almira_Count, Table_Fans, Tables_Fans_Count, BUILDING_ID) "+
						" VALUES (:staffQuarterId,:buildingId,:buildingId,:buildingId,:carpetAreaCnt,"+
						" :ceilingFans,:ceilingFansCnt,:tubeLights,:tubeLightsCnt,:bulbs,:bulbsCnt,:glassDoorAlmira,:glassDoorAlmiraCnt,"+
						" :storeWellAlmira,:storeWellAlmiraCnt,:tableFans,:tableFansCnt,:buildingId )"+
						"ON DUPLICATE KEY UPDATE Plinth_Area=:carpetAreaCnt,Ceiling_Fans=:ceilingFans,Ceiling_Fans_Count=:ceilingFansCnt,TubeLights=:tubeLights,"+
						" TubeLights_Count=:tubeLightsCnt,Bulbs=:bulbs,Bulbs_Count=:bulbsCnt,Glass_Door_Almira=:glassDoorAlmira,Glass_Door_Almira_Count=:glassDoorAlmiraCnt,"+
						" Store_Well_Almira=:storeWellAlmira,Store_Well_Almira_Count=:storeWellAlmiraCnt,Table_Fans=:tableFans,Tables_Fans_Count=:tableFansCnt";
			STAFF_QUARTERS_OBJECT_MERGE_SQL = STAFF_QUARTERS_OBJECT_MERGE_SQL.replace("#TABLE_NAME#", tableName).replace("#TABLE_COLUMN#", tableColumn);
			Map<String, Object> paramMap = new Gson().fromJson(jsonObject.toString(), new TypeToken<HashMap<String, Object>>() {}.getType());
			System.out.println(":::::"+STAFF_QUARTERS_OBJECT_MERGE_SQL.toString()); 
			System.out.println(":::::"+paramMap.toString()); 
			getNamedJdbcTemplate().update(STAFF_QUARTERS_OBJECT_MERGE_SQL, paramMap);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void updateStaffQuartersToiletData(JSONObject jsonObject) { 
		try {
			String STAFF_QUARTERS_OBJECT_MERGE_SQL = "INSERT INTO S_Toilets (Staff_Quarter_Id,S_Toilets_Id,Exhaust_Fans,Exhaust_Fans_Count,TubeLights,"+
						"TubeLights_Count,Bulbs,Bulbs_Count,Indian_Toilet,Indian_Toilet_Count,Water_Closet,Water_Closet_Count,Running_Water,Running_Water_Count,"+
						"Flush_System,Flush_System_Count,BUILDING_ID) "+
						" VALUES (:staffQuarterId,:buildingId,:exhaustFans,:exhaustFansCnt,:tubeLights,:tubeLightsCnt,:bulbs,:bulbsCnt,:indianToilets,"+
						" :indianToiletsCnt,:waterCloset,:waterClosetCnt,:runningWater,:runningWaterCnt,:flushSystem,:flushSystemCnt,:buildingId )"+
						"ON DUPLICATE KEY UPDATE Exhaust_Fans=:exhaustFans,Exhaust_Fans_Count=:exhaustFansCnt,TubeLights=:tubeLights,TubeLights_Count=:tubeLightsCnt,"+
						" Bulbs=:bulbs,Bulbs_Count=:bulbsCnt,Indian_Toilet=:indianToilets,Indian_Toilet_Count=:indianToiletsCnt,Water_Closet=:waterCloset,"+
						" Water_Closet_Count=:waterClosetCnt,Running_Water=:runningWater,Running_Water_Count=:runningWaterCnt,Flush_System=:flushSystem,Flush_System_Count=:flushSystemCnt";
			Map<String, Object> paramMap = new Gson().fromJson(jsonObject.toString(), new TypeToken<HashMap<String, Object>>() {}.getType());
			System.out.println(":::::"+STAFF_QUARTERS_OBJECT_MERGE_SQL.toString()); 
			System.out.println(":::::"+paramMap.toString());
			getNamedJdbcTemplate().update(STAFF_QUARTERS_OBJECT_MERGE_SQL, paramMap);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void updateStaffQuartersKitchenData(JSONObject jsonObject) { 
		try {
			String STAFF_QUARTERS_OBJECT_MERGE_SQL = "INSERT INTO S_Kitchen (Staff_Quarter_Id,S_Kitchen_Id,Building_Id,Exhaust_Fans,Exhaust_Fans_Count,TubeLights,"+
						"TubeLights_Count,Bulbs,Bulbs_Count,SinkFacility,SinkFacility_Count) "+
						" VALUES (:staffQuarterId,:buildingId,:buildingId,:exhaustFans,:exhaustFansCnt,:tubeLights,:tubeLightsCnt,"+
						" :bulbs,:bulbsCnt,:sinkFacility,:sinkFacilityCnt )"+
						"ON DUPLICATE KEY UPDATE Exhaust_Fans=:exhaustFans,Exhaust_Fans_Count=:exhaustFansCnt,TubeLights=:tubeLights,TubeLights_Count=:tubeLightsCnt,"+
						" Bulbs=:bulbs,Bulbs_Count=:bulbsCnt,SinkFacility=:sinkFacility,SinkFacility_Count=:sinkFacilityCnt";
			Map<String, Object> paramMap = new Gson().fromJson(jsonObject.toString(), new TypeToken<HashMap<String, Object>>() {}.getType());
			System.out.println(":::::"+STAFF_QUARTERS_OBJECT_MERGE_SQL.toString()); 
			System.out.println(":::::"+paramMap.toString());
			getNamedJdbcTemplate().update(STAFF_QUARTERS_OBJECT_MERGE_SQL, paramMap);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
}