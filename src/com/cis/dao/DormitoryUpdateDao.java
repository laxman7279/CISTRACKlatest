package com.cis.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

@Repository
public class DormitoryUpdateDao {
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
	public DormitoryUpdateDao(JdbcTemplate jdbcTemplate,NamedParameterJdbcTemplate namedJdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
		this.jdbcNamedTemplate = namedJdbcTemplate;
	}
	
	public void updateDormitoryData(JSONObject jsonObject) { 
		
		try {
			String STAFF_QUARTERS_MERGE_SQL = "INSERT INTO Dormitory (Dormitory_Id,Institution_Id,Warden_Hall,Office_Hall,Waiting_Hall,Clinic_Hall,Toilets,Bathrooms,Common_Area) "+
						" VALUES (:dormitoryId,:institutionId,:wardenHall,:officeHall,:waitingHall,:clinicHall,:toilets,:bathRooms,:commonArea)"+
						"ON DUPLICATE KEY UPDATE Warden_Hall=:wardenHall,Office_Hall=:officeHall,Waiting_Hall=:waitingHall,Clinic_Hall=:clinicHall,"+
						"Toilets=:toilets,Bathrooms=:bathRooms,Common_Area=:commonArea";
			Map<String, Object> paramMap = new Gson().fromJson(jsonObject.toString(), new TypeToken<HashMap<String, Object>>() {}.getType());
			System.out.println(":::::"+paramMap.toString()); 
			getNamedJdbcTemplate().update(STAFF_QUARTERS_MERGE_SQL, paramMap);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	@SuppressWarnings("rawtypes")
	public void deleteDormitoryHallData(JSONObject jsonObject) { 
		try {
			Map<String, Object> paramMap = new Gson().fromJson(jsonObject.toString(), new TypeToken<HashMap<String, Object>>() {}.getType());
			getNamedJdbcTemplate().update("DELETE FROM D_Hall WHERE Institution_Id=:buildingId AND Dormitory_Id=:dormitoryId", paramMap);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@SuppressWarnings("rawtypes")
	public void updateDormitoryHallData(JSONArray jsonArray) { 
		try {
			String STAFF_QUARTERS_OBJECT_MERGE_SQL = "INSERT INTO D_Hall (Institution_Id,Dormitory_Id,Hall_Id,Block_Id,Floor_Id,Plinth_Area,Ceiling_Fans,"+ 	
					" Ceiling_Fans_Count,TubeLights,TubeLights_Count,Bulbs,Bulbs_Count,Glass_Door_Almira,Glass_Door_Almira_Count,Store_Well_Almira,Store_Well_Almira_Count,"+ 	
					" S_Type_Chairs,S_Type_Chairs_Count,Chairs,Chairs_Count,Tables,Tables_Count,Stools,Stools_Count,Wall_Mount_Fans,"+ 
					" Wall_Mount_Fans_Count,Pedestal_Fans,Pedestal_Fans_Count,Doors,Doors_Count,Windows,Windows_Count,Cots,Cots_Count,two_tier_cots,two_tier_cots_Count) "+ 			
					" VALUES (:buildingId,:dormitoryId,:hallId,:blockId,:floorId,:carpetAreaCnt,:ceilingFans,:ceilingFansCnt,:tubeLights,:tubeLightsCnt,"+ 			
					" :bulbs,:bulbsCnt,:glassDoorAlmira,:glassDoorAlmiraCnt,:storeWallAlmira,:storeWallAlmiraCnt,:sTypeChairs,:sTypeChairsCnt,"+ 
					" :chairs,:chairsCnt,:tables,:tablesCnt,:stools,:stoolsCnt,:wallMountFans,:wallMountFansCnt,:pedestalFans,:pedestalFansCnt,"+
					" :doors,:doorsCnt,:windows,:windowsCnt,:cots,:cotsCnt,:2TierCots,:2TierCotsCnt ) "+					
					"ON DUPLICATE KEY UPDATE Block_Id=:blockId,Floor_Id=:floorId,Plinth_Area=:carpetAreaCnt,Ceiling_Fans=:ceilingFans,Ceiling_Fans_Count=:ceilingFansCnt,"+
					" TubeLights=:tubeLights,TubeLights_Count=:tubeLightsCnt,Bulbs=:bulbs,Bulbs_Count=:bulbsCnt,Glass_Door_Almira=:glassDoorAlmira,"+
					" Glass_Door_Almira_Count=:glassDoorAlmiraCnt,Store_Well_Almira=:storeWallAlmira,Store_Well_Almira_Count=:storeWallAlmiraCnt,"+
					" S_Type_Chairs=:sTypeChairs,S_Type_Chairs_Count=:sTypeChairsCnt,Chairs=:chairs,Chairs_Count=:chairsCnt,Tables=:tables,Tables_Count=:tablesCnt,"+
					" Stools=:stools,Stools_Count=:stoolsCnt,Wall_Mount_Fans=:wallMountFans,Wall_Mount_Fans_Count=:wallMountFansCnt,Pedestal_Fans=:pedestalFans,"+
					" Pedestal_Fans_Count=:pedestalFansCnt, Doors=:doors,Doors_Count=:doorsCnt,Windows=:windows,Windows_Count=:windowsCnt,Cots=:cots,"+
					" Cots_Count=:cotsCnt,two_tier_cots=:2TierCots,two_tier_cots_Count=:2TierCotsCnt";
			
			for(int i=0;i<jsonArray.length();i++){
				JSONObject jsonObject = jsonArray.getJSONObject(i); 
				Map<String, Object> paramMap = new Gson().fromJson(jsonObject.toString(), new TypeToken<HashMap<String, Object>>() {}.getType());
				System.out.println(":::::"+getExecuteSql(STAFF_QUARTERS_OBJECT_MERGE_SQL, paramMap));	
				getNamedJdbcTemplate().update(STAFF_QUARTERS_OBJECT_MERGE_SQL, paramMap);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	@SuppressWarnings("rawtypes")
	public void updateDormitoryObjectData(JSONObject jsonObject,String tableName,String tableColumn, List<String> replaceStrList) { 
		try {
			String STAFF_QUARTERS_OBJECT_MERGE_SQL = "INSERT INTO #TABLE_NAME# (Dormitory_Id,#TABLE_COLUMN#,Block_Id,Floor_Id,Plinth_Area,Ceiling_Fans,"+ 	
					" Ceiling_Fans_Count,TubeLights,TubeLights_Count,Bulbs,Bulbs_Count,Glass_Door_Almira,Glass_Door_Almira_Count,Store_Well_Almira,Store_Well_Almira_Count,"+ 	
					" S_Type_Chairs,S_Type_Chairs_Count,Chairs,Chairs_Count,Tables,Tables_Count,Stools,Stools_Count,Wall_Mount_Fans,"+ 
					" Wall_Mount_Fans_Count,Pedestal_Fans,Pedestal_Fans_Count,Doors,Doors_Count,Windows,Windows_Count,Cots,Cots_Count,Ventilators,Ventilators_Count) "+ 			
					" VALUES (:dormitoryId,:buildingId,:blockId,:floorId,:carpetAreaCnt,:ceilingFans,:ceilingFansCnt,:tubeLights,:tubeLightsCnt,"+ 			
					" :bulbs,:bulbsCnt,:glassDoorAlmira,:glassDoorAlmiraCnt,:storeWallAlmira,:storeWallAlmiraCnt,:sTypeChairs,:sTypeChairsCnt,"+ 
					" :chairs,:chairsCnt,:tables,:tablesCnt,:stools,:stoolsCnt,:wallMountFans,:wallMountFansCnt,:pedestalFans,:pedestalFansCnt,"+
					" :doors,:doorsCnt,:windows,:windowsCnt,:cots,:cotsCnt,:ventilators,:ventilatorsCnt ) "+					
					"ON DUPLICATE KEY UPDATE Block_Id=:blockId,Floor_Id=:floorId,Plinth_Area=:carpetAreaCnt,Ceiling_Fans=:ceilingFans,Ceiling_Fans_Count=:ceilingFansCnt,"+
					" TubeLights=:tubeLights,TubeLights_Count=:tubeLightsCnt,Bulbs=:bulbs,Bulbs_Count=:bulbsCnt,Glass_Door_Almira=:glassDoorAlmira,"+
					" Glass_Door_Almira_Count=:glassDoorAlmiraCnt,Store_Well_Almira=:storeWallAlmira,Store_Well_Almira_Count=:storeWallAlmiraCnt,"+
					" S_Type_Chairs=:sTypeChairs,S_Type_Chairs_Count=:sTypeChairsCnt,Chairs=:chairs,Chairs_Count=:chairsCnt,Tables=:tables,Tables_Count=:tablesCnt,"+
					" Stools=:stools,Stools_Count=:stoolsCnt,Wall_Mount_Fans=:wallMountFans,Wall_Mount_Fans_Count=:wallMountFansCnt,Pedestal_Fans=:pedestalFans,"+
					" Pedestal_Fans_Count=:pedestalFansCnt, Doors=:doors,Doors_Count=:doorsCnt,Windows=:windows,Windows_Count=:windowsCnt,Cots=:cots,"+
					" Cots_Count=:cotsCnt,Ventilators=:ventilators,Ventilators_Count=:ventilatorsCnt";
			STAFF_QUARTERS_OBJECT_MERGE_SQL = STAFF_QUARTERS_OBJECT_MERGE_SQL.replace("#TABLE_NAME#", tableName).replace("#TABLE_COLUMN#", tableColumn);
			for(String replaceStr : replaceStrList){
				STAFF_QUARTERS_OBJECT_MERGE_SQL = STAFF_QUARTERS_OBJECT_MERGE_SQL.replace(replaceStr, "");
			}
			Map<String, Object> paramMap = new Gson().fromJson(jsonObject.toString(), new TypeToken<HashMap<String, Object>>() {}.getType());
			System.out.println(":::::"+STAFF_QUARTERS_OBJECT_MERGE_SQL.toString()); 
			System.out.println(":::::"+paramMap.toString()); 
			System.out.println(":::::"+getExecuteSql(STAFF_QUARTERS_OBJECT_MERGE_SQL, paramMap)); 
			getNamedJdbcTemplate().update(STAFF_QUARTERS_OBJECT_MERGE_SQL, paramMap);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void updateDormitoryToiletData(JSONObject jsonObject) { 
		try {
			String STAFF_QUARTERS_OBJECT_MERGE_SQL = "INSERT INTO D_Toilets (Dormitory_Id,Toilets_Id,Exhaust_Fans,Exhaust_Fans_Count,TubeLights,"+
						"TubeLights_Count,Bulbs,Bulbs_Count,Indian_Toilet,Indian_Toilet_Count,Water_Closet,Water_Closet_Count,Running_Water,Running_Water_Count,"+
						"Flush_System,Flush_System_Count) "+
						" VALUES (:dormitoryId,:buildingId,:exhaustFans,:exhaustFansCnt,:tubeLights,:tubeLightsCnt,:bulbs,:bulbsCnt,:indianToilets,"+
						" :indianToiletsCnt,:waterCloset,:waterClosetCnt,:runningWater,:runningWaterCnt,:flushSystem,:flushSystemCnt )"+
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
	public void updateDormitoryBathRoomData(JSONObject jsonObject) { 
		try {
			String STAFF_QUARTERS_OBJECT_MERGE_SQL = "INSERT INTO D_Bathrooms (Dormitory_Id,Bathrooms_Id,Exhaust_Fans,Exhaust_Fans_Count,TubeLights,"+
						"TubeLights_Count,Bulbs,Bulbs_Count,Quantity,Quantity_Count,GeeZers,Geezers_Count,Washing_Area,Washing_Area_Count)"+
						" VALUES (:dormitoryId,:buildingId,:exhaustFans,:exhaustFansCnt,:tubeLights,:tubeLightsCnt,:bulbs,:bulbsCnt,:quantity,"+
						" :quantityCnt,:geezers,:geezersCnt,:washingArea,:washingAreaCnt)"+
						"ON DUPLICATE KEY UPDATE Exhaust_Fans=:exhaustFans,Exhaust_Fans_Count=:exhaustFansCnt,TubeLights=:tubeLights,TubeLights_Count=:tubeLightsCnt,"+
						" Bulbs=:bulbs,Bulbs_Count=:bulbsCnt,Quantity=:quantity,Quantity_Count=:quantityCnt,GeeZers=:geezers,"+
						" Geezers_Count=:geezersCnt,Washing_Area=:washingArea,Washing_Area_Count=:washingAreaCnt";
			Map<String, Object> paramMap = new Gson().fromJson(jsonObject.toString(), new TypeToken<HashMap<String, Object>>() {}.getType());
			System.out.println(":::::"+STAFF_QUARTERS_OBJECT_MERGE_SQL.toString()); 
			System.out.println(":::::"+paramMap.toString());
			getNamedJdbcTemplate().update(STAFF_QUARTERS_OBJECT_MERGE_SQL, paramMap);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void updateDormitoryCommonAreaData(JSONObject jsonObject) { 
		try {
			String STAFF_QUARTERS_OBJECT_MERGE_SQL = "INSERT INTO D_CommonArea (Dormitory_Id, CommonArea_Id,Entance_Lobby, Entance_Lobby_Count, Warandah, "+
						"Warandah_Count, Stair_Case, Stair_Case_Count, Water_Tank_Count, Solor_Power_System, Solor_Power_System_Count, Inverters, "+
						" Inverters_Count, Inverter_Capacity, Inverter_Capacity_Count,Water_Json,Building_Type) "+
						" VALUES (:dormitoryId,:buildingId,:entranceLobby,:entranceLobbyCnt,:warandah,:warandahCnt,:stairCase,:stairCaseCnt,:waterTankCnt,"+
						" :solarPowerSystem,:solarPowerSystemCnt,:inventersCnt,:inventersCnt,:inventersCapacity,:inventersCapacity ,'','D')"+
						"ON DUPLICATE KEY UPDATE Entance_Lobby=:entranceLobby,Entance_Lobby_Count=:entranceLobbyCnt,Warandah=:warandah,"+
						" Warandah_Count=:warandahCnt,Stair_Case=:stairCase,Stair_Case_Count=:stairCaseCnt,Water_Tank_Count=:waterTankCnt,"+
						" Solor_Power_System=:solarPowerSystem,Solor_Power_System_Count=:solarPowerSystemCnt,Inverters=:inventersCnt,"+
						" Inverters_Count=:inventersCnt,Inverter_Capacity=:inventersCapacity,Inverter_Capacity_Count=:inventersCapacity";
			Map<String, Object> paramMap = new Gson().fromJson(jsonObject.toString(), new TypeToken<HashMap<String, Object>>() {}.getType());
			System.out.println(":::::"+getExecuteSql(STAFF_QUARTERS_OBJECT_MERGE_SQL, paramMap));
			getNamedJdbcTemplate().update(STAFF_QUARTERS_OBJECT_MERGE_SQL, paramMap);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public String getExecuteSql(String query,Map<String, Object> map){
		for (Map.Entry<String, Object> entry : map.entrySet()) {
			query = query.replaceAll(":"+entry.getKey()+",", "'"+entry.getValue()+"',");
		}
		return query;
	}
	
}