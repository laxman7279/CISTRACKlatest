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
public class SchoolBuildingDao {
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
	public SchoolBuildingDao(JdbcTemplate jdbcTemplate,NamedParameterJdbcTemplate namedJdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
		this.jdbcNamedTemplate = namedJdbcTemplate;
	}
	
	public JSONObject updateSchoolDetails(JSONObject jsonObject) { 
		try {
			String ENTRANCE_MERGE_SQL = "INSERT INTO School_Building (School_Building_Id,Institution_Id,Plinth_Area,Library_Room,Principal_Room,Entrance_Hall,"+
					"Office_Store,Staff_Room,Games_Room,Botany_Lab,Physics_Lab,Chemistry_Lab,Zoology_Lab,Computers_Lab,Toilets,Class_Rooms) "+
					" VALUES (:schoolBuildingId,:schoolBuildingId,'1000','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y','Y' )"+
					" ON DUPLICATE KEY UPDATE Library_Room='Y',Principal_Room='Y',Entrance_Hall='Y',Office_Store='Y',Staff_Room='Y',"+
					"Games_Room='Y',Botany_Lab='Y',Physics_Lab='Y',Chemistry_Lab='Y',Zoology_Lab='Y',Computers_Lab='Y',Toilets='Y',Class_Rooms='Y'";
		 Map<String, Object> paramMap = new Gson().fromJson(jsonObject.toString(), new TypeToken<HashMap<String, Object>>() {}.getType());
		 System.out.println("::::"+getExecuteSql(ENTRANCE_MERGE_SQL, paramMap)); 
		 getNamedJdbcTemplate().update(ENTRANCE_MERGE_SQL, paramMap);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new JSONObject();
	}
	
	
	public void updateToiletData(JSONObject jsonObject) { 
		try {
			String TOILET_MERGE_SQL = "INSERT INTO Toilet_Room (Toilet_Room_Id, School_Building_Id ,Exhaust_Fans,Exhaust_Fans_Count,`Bath-Rooms`,`Bath-Rooms_Count`, "+
						"TubeLights,TubeLights_Count,Bulbs,Bulbs_Count,`Running-Water` ,`Water-Closets`,`Water-Closets-Count`,Incinerators,`Incinerators-Count`,"+
						"`Indian-Toilets`,`Indian-Toilets-Count`,`Provision-For-Physically-Challeged`,`Provision-For-Physically-Challeged-Count`) "+
						" VALUES (:toiletRoomId,:schoolBuildingId,:exhaustFans,:exhaustFansCount,:bathRooms,:bathRoomsCount,:tubeLights,"+
						":tubeLightsCount,:bulbs,:bulbsCount,:runningWater,:waterClosets,:waterClosetsCount,:incinerators,:incineratorsCount,:indianToilets,"+
						":indianToiletsCount,:provisionForPH,:provisionForPHCount )"+
						"ON DUPLICATE KEY UPDATE Exhaust_Fans=:exhaustFans,Exhaust_Fans_Count=:exhaustFansCount,`Bath-Rooms`=:bathRooms,`Bath-Rooms_Count`=:bathRoomsCount,"+
						"TubeLights=:tubeLights,TubeLights_Count=:tubeLightsCount,Bulbs=:bulbs,Bulbs_Count=:bulbsCount,`Running-Water`=:runningWater,"+
						"`Water-Closets`=:waterClosets,`Water-Closets-Count`=:waterClosetsCount,Incinerators=:incinerators,`Incinerators-Count`=:incineratorsCount,"+
						"`Indian-Toilets`=:indianToilets,`Indian-Toilets-Count`=:indianToiletsCount,"+
						"`Provision-For-Physically-Challeged`=:provisionForPH,`Provision-For-Physically-Challeged-Count`=:provisionForPHCount";
			Map<String, Object> paramMap = new Gson().fromJson(jsonObject.toString(), new TypeToken<HashMap<String, Object>>() {}.getType());
			System.out.println("::::"+getExecuteSql(TOILET_MERGE_SQL, paramMap)); 
			getNamedJdbcTemplate().update(TOILET_MERGE_SQL, paramMap);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public void updateAdminLibraryData(JSONObject jsonObject) { 
		try {
			String LIBRARY_MERGE_SQL = "INSERT INTO Library_Room (Library_Building_Id,School_Building_Id,Plinth_Area,Table_Fans,Table_Fans_Count,Ceiling_Fans,Ceiling_Fans_Count, "+
					"Tables,Tables_Count, Chairs, Chairs_Count, TubeLights, TubeLights_Count, Bulbs, Bulbs_Count, ReadingTables, ReadingTables_Count,`S-Type-Chairs`,"+
					"`S-Type-Chairs_Count`,`Glass-Door-Almira`,`Glass-Door-Almira_Count`,`Store-Well-Almira`,`Store-Well-Almira_Count`,Stools,Stools_Count) "+
					" VALUES (:libraryBuildingId,:schoolBuildingId,:plinthArea,:tableFans,:tableFansCount,:ceilingFans,:ceilingFansCount,"+
					":tables,:tablesCount,:chairs,:chairsCount,:tubeLights,:tubeLightsCount,:bulbs,:bulbsCount,:readingTables,:readingTablesCount,:sTypeChairs,"+
					":sTypeChairsCount,:glassDoorAlmira,:glassDoorAlmiraCount,:storeWellAlmira,:storeWellAlmiraCount,:stools,:stoolsCount )"+
					"ON DUPLICATE KEY UPDATE Plinth_Area=:plinthArea,Table_Fans=:tableFans,Table_Fans_Count=:tableFansCount,Ceiling_Fans=:ceilingFans,"+
					"Ceiling_Fans_Count=:ceilingFansCount,Tables=:tables,Tables_Count=:tablesCount,Chairs=:chairs,Chairs_Count=:chairsCount,"+
					"TubeLights=:tubeLights,TubeLights_Count=:tubeLightsCount,Bulbs=:bulbs,Bulbs_Count=:bulbsCount,"+
					"ReadingTables=:readingTables,ReadingTables_Count=:readingTablesCount,`S-Type-Chairs`=:sTypeChairs,`S-Type-Chairs_Count`=:sTypeChairsCount,"+
					"`Glass-Door-Almira`=:glassDoorAlmira,`Glass-Door-Almira_Count`=:glassDoorAlmiraCount,`Store-Well-Almira`=:storeWellAlmira,"+
					"`Store-Well-Almira_Count`=:storeWellAlmiraCount,Stools=:stools,Stools_Count=:stoolsCount";
			Map<String, Object> paramMap = new Gson().fromJson(jsonObject.toString(), new TypeToken<HashMap<String, Object>>() {}.getType());
			getNamedJdbcTemplate().update(LIBRARY_MERGE_SQL, paramMap);
		} catch (Exception e){
			e.printStackTrace();
		}
	}

	public void updateAdminPrincipalData(JSONObject jsonObject) { 
		try {
			String PRINCIPAL_MERGE_SQL = "INSERT INTO Principal_Room (Principal_Room_Id,School_Building_Id,Plinth_Area,Table_Fans,Table_Fans_Count,Ceiling_Fans,Ceiling_Fans_Count, "+
					"Tables,Tables_Count, Chairs, Chairs_Count, TubeLights, TubeLights_Count, Bulbs, Bulbs_Count, ReadingTables, ReadingTables_Count,`S-Type-Chairs`,"+
					"`S-Type-Chairs_Count`,`Glass-Door-Almira`,`Glass-Door-Almira_Count`,`Store-Well-Almira`,`Store-Well-Almira_Count`,Stools,Stools_Count, "+
					"`Principal-Table`, `Principal-Table-Count`, `Principal-Chair` ,`Principal-Chair-Count`, `Locker-Units`, `Locker-Units-Count` ) "+
					" VALUES (:principalBuildingId,:schoolBuildingId,:plinthArea,:tableFans,:tableFansCount,:ceilingFans,:ceilingFansCount,"+
					":tables,:tablesCount,:chairs,:chairsCount,:tubeLights,:tubeLightsCount,:bulbs,:bulbsCount,:readingTables,:readingTablesCount,:sTypeChairs,"+
					":sTypeChairsCount,:glassDoorAlmira,:glassDoorAlmiraCount,:storeWellAlmira,:storeWellAlmiraCount,:stools,:stoolsCount, "+
					":principalTable, :principalTableCount, :principalChair,:principalChairCount, :lockerUnits, :lockerUnitsCount) "+
					" ON DUPLICATE KEY UPDATE Plinth_Area=:plinthArea,Table_Fans=:tableFans,Table_Fans_Count=:tableFansCount,Ceiling_Fans=:ceilingFans,"+
					"Ceiling_Fans_Count=:ceilingFansCount,Tables=:tables,Tables_Count=:tablesCount,Chairs=:chairs,Chairs_Count=:chairsCount,"+
					"TubeLights=:tubeLights,TubeLights_Count=:tubeLightsCount,Bulbs=:bulbs,Bulbs_Count=:bulbsCount,"+
					"ReadingTables=:readingTables,ReadingTables_Count=:readingTablesCount,`S-Type-Chairs`=:sTypeChairs,`S-Type-Chairs_Count`=:sTypeChairsCount,"+
					"`Glass-Door-Almira`=:glassDoorAlmira,`Glass-Door-Almira_Count`=:glassDoorAlmiraCount,`Store-Well-Almira`=:storeWellAlmira,"+
					"`Store-Well-Almira_Count`=:storeWellAlmiraCount,Stools=:stools,Stools_Count=:stoolsCount,"+
					"`Principal-Table`=:principalTable, `Principal-Table-Count`=:principalTableCount, `Principal-Chair`=:principalChair,"+
					"`Principal-Chair-Count`=:principalChairCount, `Locker-Units`=:lockerUnits, `Locker-Units-Count`=:lockerUnitsCount"; 
			Map<String, Object> paramMap = new Gson().fromJson(jsonObject.toString(), new TypeToken<HashMap<String, Object>>() {}.getType());
			getNamedJdbcTemplate().update(PRINCIPAL_MERGE_SQL, paramMap);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void updateAdminEntranceData(JSONObject jsonObject) { 
		try {
			String ENTRANCE_MERGE_SQL = "INSERT INTO Entrance_Room (Entrance_Hall_Id, School_Building_Id, Plinth_Area, Table_Fans, Table_Fans_Count, Ceiling_Fans, "+
					"Ceiling_Fans_Count, Tables,Tables_Count, Chairs, Chairs_Count, TubeLights, TubeLights_Count, Bulbs,  Bulbs_Count,  Stools , Stools_Count ) "+
					" VALUES (:entranceHallId,:schoolBuildingId,:plinthArea,:tableFans,:tableFansCount,:ceilingFans,"+
					":ceilingFansCount,:tables,:tablesCount,:chairs,:chairsCount,:tubeLights,:tubeLightsCount,:bulbs,:bulbsCount,:stools,:stoolsCount )"+
					" ON DUPLICATE KEY UPDATE Plinth_Area=:plinthArea,Table_Fans=:tableFans,Table_Fans_Count=:tableFansCount,Ceiling_Fans=:ceilingFans,"+
					"Ceiling_Fans_Count=:ceilingFansCount,Tables=:tables,Tables_Count=:tablesCount,Chairs=:chairs,Chairs_Count=:chairsCount,"+
					"TubeLights=:tubeLights,TubeLights_Count=:tubeLightsCount,Bulbs=:bulbs,Bulbs_Count=:bulbsCount,"+
					"Stools=:stools,Stools_Count=:stoolsCount";
		 Map<String, Object> paramMap = new Gson().fromJson(jsonObject.toString(), new TypeToken<HashMap<String, Object>>() {}.getType());
			getNamedJdbcTemplate().update(ENTRANCE_MERGE_SQL, paramMap);
		} catch (Exception e) {
			e.printStackTrace();
		}		
	}
			
	public void updateAdminStoreData(JSONObject jsonObject) { 
		try {
			String ENTRANCE_MERGE_SQL = "INSERT INTO Store_Room (Store_Room_Id, School_Building_Id, Plinth_Area, Table_Fans, Table_Fans_Count, Ceiling_Fans, "+
					"Ceiling_Fans_Count, Tables,Tables_Count, Chairs, Chairs_Count, TubeLights, TubeLights_Count, Bulbs,  Bulbs_Count,  ReadingTables, "+
					"ReadingTables_Count,`S-Type-Chairs`,`S-Type-Chairs_Count`,`Glass-Door-Almira`,`Glass-Door-Almira_Count`,`Store-Well-Almira`, "+
					"`Store-Well-Almira_Count`,Stools , Stools_Count , `Locker-Units`, `Locker-Units-Count` ) "+
					" VALUES (:storeRoomId,:schoolBuildingId,:plinthArea,:tableFans,:tableFansCount,:ceilingFans,"+
					":ceilingFansCount,:tables,:tablesCount,:chairs,:chairsCount,:tubeLights,:tubeLightsCount,:bulbs,:bulbsCount,:readingTables, "+
					":readingTablesCount,:sTypeChairs,:sTypeChairsCount,:glassDoorAlmira,:glassDoorAlmiraCount,:storeWellAlmira, "+
					":storeWellAlmiraCount,:stools,:stoolsCount,:lockerUnits, :lockerUnitsCount) "+
					" ON DUPLICATE KEY UPDATE Plinth_Area=:plinthArea,Table_Fans=:tableFans,Table_Fans_Count=:tableFansCount,Ceiling_Fans=:ceilingFans,"+
					"Ceiling_Fans_Count=:ceilingFansCount,Tables=:tables,Tables_Count=:tablesCount,Chairs=:chairs,Chairs_Count=:chairsCount,"+
					"TubeLights=:tubeLights,TubeLights_Count=:tubeLightsCount,Bulbs=:bulbs,Bulbs_Count=:bulbsCount,ReadingTables=:readingTables,"+
					"ReadingTables_Count=:readingTablesCount,`S-Type-Chairs`=:sTypeChairs,`S-Type-Chairs_Count`=:sTypeChairsCount,"+
					"`Glass-Door-Almira`=:glassDoorAlmira,`Glass-Door-Almira_Count`=:glassDoorAlmiraCount,`Store-Well-Almira`=:storeWellAlmira,"+
					"`Store-Well-Almira_Count`=:storeWellAlmiraCount,Stools=:stools,Stools_Count=:stoolsCount,`Locker-Units`=:lockerUnits,`Locker-Units-Count` =:lockerUnitsCount";
			
		 Map<String, Object> paramMap = new Gson().fromJson(jsonObject.toString(), new TypeToken<HashMap<String, Object>>() {}.getType());
			getNamedJdbcTemplate().update(ENTRANCE_MERGE_SQL, paramMap);
		} catch (Exception e) {
			e.printStackTrace();
		}		
	}
	public void updateAdminStaffData(JSONObject jsonObject) { 
		try {
			String ENTRANCE_MERGE_SQL = "INSERT INTO Staff_Room (Staff_Room_Id, School_Building_Id, Plinth_Area, Table_Fans, Table_Fans_Count, Ceiling_Fans, "+
					"Ceiling_Fans_Count, Tables,Tables_Count, Chairs, Chairs_Count, TubeLights, TubeLights_Count, Bulbs,  Bulbs_Count,  ReadingTables, "+
					"ReadingTables_Count,`S-Type-Chairs`,`S-Type-Chairs_Count`,`Glass-Door-Almira`,`Glass-Door-Almira_Count`,`Store-Well-Almira`, "+
					"`Store-Well-Almira_Count`,Stools , Stools_Count , `Locker-Units`, `Locker-Units_Count` ) "+
					" VALUES (:staffRoomId,:schoolBuildingId,:plinthArea,:tableFans,:tableFansCount,:ceilingFans,"+
					":ceilingFansCount,:tables,:tablesCount,:chairs,:chairsCount,:tubeLights,:tubeLightsCount,:bulbs,:bulbsCount,:readingTables, "+
					":readingTablesCount,:sTypeChairs,:sTypeChairsCount,:glassDoorAlmira,:glassDoorAlmiraCount,:storeWellAlmira, "+
					":storeWellAlmiraCount,:stools,:stoolsCount,:lockerUnits, :lockerUnitsCount) "+
					" ON DUPLICATE KEY UPDATE Plinth_Area=:plinthArea,Table_Fans=:tableFans,Table_Fans_Count=:tableFansCount,Ceiling_Fans=:ceilingFans,"+
					"Ceiling_Fans_Count=:ceilingFansCount,Tables=:tables,Tables_Count=:tablesCount,Chairs=:chairs,Chairs_Count=:chairsCount,"+
					"TubeLights=:tubeLights,TubeLights_Count=:tubeLightsCount,Bulbs=:bulbs,Bulbs_Count=:bulbsCount,ReadingTables=:readingTables,"+
					"ReadingTables_Count=:readingTablesCount,`S-Type-Chairs`=:sTypeChairs,`S-Type-Chairs_Count`=:sTypeChairsCount,"+
					"`Glass-Door-Almira`=:glassDoorAlmira,`Glass-Door-Almira_Count`=:glassDoorAlmiraCount,`Store-Well-Almira`=:storeWellAlmira,"+
					"`Store-Well-Almira_Count`=:storeWellAlmiraCount,Stools=:stools,Stools_Count=:stoolsCount,`Locker-Units`=:lockerUnits,`Locker-Units_Count` =:lockerUnitsCount";
			
		 Map<String, Object> paramMap = new Gson().fromJson(jsonObject.toString(), new TypeToken<HashMap<String, Object>>() {}.getType());
			getNamedJdbcTemplate().update(ENTRANCE_MERGE_SQL, paramMap);
		} catch (Exception e) {
			e.printStackTrace();
		}		
	}
	public void updateAdminGamesData(JSONObject jsonObject) { 
		try {
			String ENTRANCE_MERGE_SQL = "INSERT INTO Games_Room (Games_Room_Id, School_Building_Id, Plinth_Area, Table_Fans, Table_Fans_Count, Ceiling_Fans, "+
					"Ceiling_Fans_Count, Tables,Tables_Count, Chairs, Chairs_Count, TubeLights, TubeLights_Count, Bulbs,  Bulbs_Count,  ReadingTables, "+
					"ReadingTables_Count,`S-Type-Chairs`,`S-Type-Chairs_Count`,`Glass-Door-Almira`,`Glass-Door-Almira_Count`,`Store-Well-Almira`, "+
					"`Games-Well-Almira_Count`,Stools , Stools_Count , `Locker-Units`, `Locker-Units_Count` ) "+
					" VALUES (:gamesRoomId,:schoolBuildingId,:plinthArea,:tableFans,:tableFansCount,:ceilingFans,"+
					":ceilingFansCount,:tables,:tablesCount,:chairs,:chairsCount,:tubeLights,:tubeLightsCount,:bulbs,:bulbsCount,:readingTables, "+
					":readingTablesCount,:sTypeChairs,:sTypeChairsCount,:glassDoorAlmira,:glassDoorAlmiraCount,:storeWellAlmira, "+
					":storeWellAlmiraCount,:stools,:stoolsCount,:lockerUnits, :lockerUnitsCount) "+
					" ON DUPLICATE KEY UPDATE Plinth_Area=:plinthArea,Table_Fans=:tableFans,Table_Fans_Count=:tableFansCount,Ceiling_Fans=:ceilingFans,"+
					"Ceiling_Fans_Count=:ceilingFansCount,Tables=:tables,Tables_Count=:tablesCount,Chairs=:chairs,Chairs_Count=:chairsCount,"+
					"TubeLights=:tubeLights,TubeLights_Count=:tubeLightsCount,Bulbs=:bulbs,Bulbs_Count=:bulbsCount,ReadingTables=:readingTables,"+
					"ReadingTables_Count=:readingTablesCount,`S-Type-Chairs`=:sTypeChairs,`S-Type-Chairs_Count`=:sTypeChairsCount,"+
					"`Glass-Door-Almira`=:glassDoorAlmira,`Glass-Door-Almira_Count`=:glassDoorAlmiraCount,`Store-Well-Almira`=:storeWellAlmira,"+
					"`Games-Well-Almira_Count`=:storeWellAlmiraCount,Stools=:stools,Stools_Count=:stoolsCount,`Locker-Units`=:lockerUnits,`Locker-Units_Count` =:lockerUnitsCount";
			
		 Map<String, Object> paramMap = new Gson().fromJson(jsonObject.toString(), new TypeToken<HashMap<String, Object>>() {}.getType());
			getNamedJdbcTemplate().update(ENTRANCE_MERGE_SQL, paramMap);
		} catch (Exception e) {
			e.printStackTrace();
		}		
	}
	public void updateLabsData(JSONObject jsonObject, String labTableName,String labColumnName,String labColumnId,String storeAlmiraCnt) { 
		try {
			String ENTRANCE_MERGE_SQL = "INSERT INTO `#LAB_NAME#` (`#LAB_COLUMN_NAME#`, School_Building_Id, Plinth_Area, Table_Fans, Table_Fans_Count, Ceiling_Fans, "+
					"Ceiling_Fans_Count, Tables,Tables_Count, Chairs, Chairs_Count, TubeLights, TubeLights_Count, Bulbs,  Bulbs_Count,  ReadingTables, "+
					"ReadingTables_Count,`S-Type-Chairs`,`S-Type-Chairs_Count`,`Glass-Door-Almira`,`Glass-Door-Almira_Count`,`Store-Well-Almira`, "+
					"`#STORE_WALL_ALMIRA_COUNT#`,Stools,Stools_Count,`Locker-Units`,`Locker-Units_Count`,Green_Board,Green_Board_Count ) "+
					" VALUES (:#LAB_COLUMN_ID#,:schoolBuildingId,:plinthArea,:tableFans,:tableFansCount,:ceilingFans,"+
					":ceilingFansCount,:tables,:tablesCount,:chairs,:chairsCount,:tubeLights,:tubeLightsCount,:bulbs,:bulbsCount,:readingTables, "+
					":readingTablesCount,:sTypeChairs,:sTypeChairsCount,:glassDoorAlmira,:glassDoorAlmiraCount,:storeWellAlmira, "+
					":storeWellAlmiraCount,:stools,:stoolsCount,:lockerUnits, :lockerUnitsCount,:greenBoard,:greenBoardCount) "+
					" ON DUPLICATE KEY UPDATE Plinth_Area=:plinthArea,Table_Fans=:tableFans,Table_Fans_Count=:tableFansCount,Ceiling_Fans=:ceilingFans,"+
					"Ceiling_Fans_Count=:ceilingFansCount,Tables=:tables,Tables_Count=:tablesCount,Chairs=:chairs,Chairs_Count=:chairsCount,"+
					"TubeLights=:tubeLights,TubeLights_Count=:tubeLightsCount,Bulbs=:bulbs,Bulbs_Count=:bulbsCount,ReadingTables=:readingTables,"+
					"ReadingTables_Count=:readingTablesCount,`S-Type-Chairs`=:sTypeChairs,`S-Type-Chairs_Count`=:sTypeChairsCount,"+
					"`Glass-Door-Almira`=:glassDoorAlmira,`Glass-Door-Almira_Count`=:glassDoorAlmiraCount,`Store-Well-Almira`=:storeWellAlmira,"+
					"`#STORE_WALL_ALMIRA_COUNT#`=:storeWellAlmiraCount,Stools=:stools,Stools_Count=:stoolsCount,`Locker-Units`=:lockerUnits,"+
					"`Locker-Units_Count` =:lockerUnitsCount,Green_Board=:greenBoard,Green_Board_Count=:greenBoardCount";
		
		
			
		ENTRANCE_MERGE_SQL = ENTRANCE_MERGE_SQL.replaceAll("#LAB_NAME#", labTableName).replaceAll("#LAB_COLUMN_NAME#", labColumnName)
				.replaceAll("#LAB_COLUMN_ID#", labColumnId).replaceAll("#STORE_WALL_ALMIRA_COUNT#", storeAlmiraCnt);
		System.out.println(ENTRANCE_MERGE_SQL); 
		Map<String, Object> paramMap = new Gson().fromJson(jsonObject.toString(), new TypeToken<HashMap<String, Object>>() {}.getType());
			getNamedJdbcTemplate().update(ENTRANCE_MERGE_SQL, paramMap);
		} catch (Exception e) {
			e.printStackTrace();
		}		
	}
	public void updateClassRoomData(JSONArray jsonArray,String schoolBuildingId) { 
		try {
			String DELETE_CLASS_ROOM_DATA = "DELETE FROM Class_Room WHERE School_Building_Id =?";
			String ENTRANCE_MERGE_SQL = "INSERT INTO Class_Room (School_Building_Id,Table_Fans,Table_Fans_Count,Ceiling_Fans,"+
					"Ceiling_Fans_Count,Floor,Tables,Tables_Count,Chairs,Chairs_Count,TubeLights,TubeLights_Count,Bulbs,Bulbs_Count,ReadingTables,"+
					"ReadingTables_Count,`Locker-Units`,`Locker-Units_Count`,`Glass-Door-Almira`,`Glass-Door-Almira_Count`,`S-Type-Chairs`,`S-Type-Chairs_Count`,"+
					"`Store-Well-Almira`,`Store-Well-Almira_Count`,Stools,Stools_Count,`Dual-Desk`,`Dual-Desk_Count`,`Green-Boards`,`Green-Boards_Count` ) "+
					" VALUES (:schoolBuildingId,:tableFans,:tableFansCount,:ceilingFans,"+
					":ceilingFansCount,:floor,:tables,:tablesCount,:chairs,:chairsCount,:tubeLights,:tubeLightsCount,:bulbs,:bulbsCount,:readingTables, "+
					":readingTablesCount,:lockerUnits, :lockerUnitsCount,:glassDoorAlmira,:glassDoorAlmiraCount,:sTypeChairs,:sTypeChairsCount, "+
					":storeWellAlmira,:storeWellAlmiraCount,:stools,:stoolsCount,:dualDesk,:dualDeskCount,:greenBoards,:greenBoardsCount) ";
					/*" ON DUPLICATE KEY UPDATE Table_Fans=:tableFans,Table_Fans_Count=:tableFansCount,Ceiling_Fans=:ceilingFans,"+
					"Ceiling_Fans_Count=:ceilingFansCount,Floor=:floor,Tables=:tables,Tables_Count=:tablesCount,Chairs=:chairs,Chairs_Count=:chairsCount,"+
					"TubeLights=:tubeLights,TubeLights_Count=:tubeLightsCount,Bulbs=:bulbs,Bulbs_Count=:bulbsCount,ReadingTables=:readingTables,"+
					"ReadingTables_Count=:readingTablesCount,`S-Type-Chairs`=:sTypeChairs,`S-Type-Chairs_Count`=:sTypeChairsCount,"+
					"`Glass-Door-Almira`=:glassDoorAlmira,`Glass-Door-Almira_Count`=:glassDoorAlmiraCount,`Store-Well-Almira`=:storeWellAlmira,"+
					"`Store-Well-Almira_Count`=:storeWellAlmiraCount,Stools=:stools,Stools_Count=:stoolsCount,`Locker-Units`=:lockerUnits,"+
					"`Locker-Units_Count` =:lockerUnitsCount,`Dual-Desk`=:dualDesk,`Dual-Desk_Count`=:dualDeskCount,`Green-Boards`=:greenBoards,`Green-Boards_Count`=:greenBoardsCount"; */
		 getJdbcTemplate().update(DELETE_CLASS_ROOM_DATA, new Object[] { schoolBuildingId });
		 System.out.println(":::Delete completed:::::");
		 for(int i=0;i<jsonArray.length();i++){ 
			 System.out.println("Json object for classroom is "+jsonArray.getJSONObject(i).toString());
			 Map<String, Object> paramMap = new Gson().fromJson(jsonArray.getJSONObject(i).toString(), new TypeToken<HashMap<String, Object>>() {}.getType());
		 	getNamedJdbcTemplate().update(ENTRANCE_MERGE_SQL, paramMap);
		 }
		} catch (Exception e) {
			e.printStackTrace();
		}		
	}		
	
	public void updateCommonAreaData(JSONObject jsonObject) { 
		try {
			String STAFF_QUARTERS_OBJECT_MERGE_SQL = "INSERT INTO D_CommonArea (Dormitory_Id, CommonArea_Id,Entance_Lobby, Entance_Lobby_Count, Warandah, "+
						"Warandah_Count, Stair_Case, Stair_Case_Count, Water_Tank_Count, Solor_Power_System, Solor_Power_System_Count, Inverters, "+
						" Inverters_Count, Inverter_Capacity, Inverter_Capacity_Count,Water_Json,Building_Type) "+
						" VALUES (:schoolBuildingId,:schoolBuildingId,:entranceLobby,:entranceLobbyCnt,:warandah,:warandahCnt,:stairCase,:stairCaseCnt,:waterTankCnt,"+
						" :solarPowerSystem,:solarPowerSystemCnt,:inventersCnt,:inventersCnt,:inventersCapacity,:inventersCapacity,:waterJson,'SB' )"+
						"ON DUPLICATE KEY UPDATE Entance_Lobby=:entranceLobby,Entance_Lobby_Count=:entranceLobbyCnt,Warandah=:warandah,"+
						" Warandah_Count=:warandahCnt,Stair_Case=:stairCase,Stair_Case_Count=:stairCaseCnt,Water_Tank_Count=:waterTankCnt,"+
						" Solor_Power_System=:solarPowerSystem,Solor_Power_System_Count=:solarPowerSystemCnt,Inverters=:inventers,"+
						" Inverters_Count=:inventersCnt,Inverter_Capacity=:inventersCapacity,Inverter_Capacity_Count=:inventersCapacity,Water_Json=:waterJson";
			Map<String, Object> paramMap = new Gson().fromJson(jsonObject.toString(), new TypeToken<HashMap<String, Object>>() {}.getType());
			System.out.println(":::::"+STAFF_QUARTERS_OBJECT_MERGE_SQL.toString()); 
			System.out.println(":::::"+paramMap.toString());
			STAFF_QUARTERS_OBJECT_MERGE_SQL = STAFF_QUARTERS_OBJECT_MERGE_SQL.replaceAll(":waterJson", "'"+paramMap.get("waterJson").toString()+"'"); 
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