package com.cis.dao;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.InvalidResultSetAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Repository;

@Repository
public class CISDao {

	private final JdbcTemplate jdbcTemplate;

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	@Autowired
	public CISDao(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	public JSONObject getDistrictList() {
		StringBuilder query = new StringBuilder();
		query.append("select district_name, district_id from Districts");

		SqlRowSet rs = getJdbcTemplate().queryForRowSet(query.toString());

		JSONObject responseDetailsJson = new JSONObject();
		JSONArray jsonArray = new JSONArray();

		while (rs.next()) {

			JSONObject formDetailsJson = new JSONObject();

			try {
				formDetailsJson.put("districtid", rs.getInt("district_id"));
				formDetailsJson.put("districtname", rs.getString("district_name"));
			} catch (InvalidResultSetAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			jsonArray.put(formDetailsJson);
		}
		try {
			responseDetailsJson.put("districts", jsonArray);
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return responseDetailsJson;
	}

	public JSONObject getInstitutes(int districtid) {
		StringBuilder query = new StringBuilder();
		query.append("select institution_id, institute_name from institutions where district_id =" + districtid);

		SqlRowSet rs = getJdbcTemplate().queryForRowSet(query.toString());

		JSONObject responseDetailsJson = new JSONObject();
		JSONArray jsonArray = new JSONArray();

		while (rs.next()) {

			JSONObject formDetailsJson = new JSONObject();

			try {
				formDetailsJson.put("instituteid", rs.getInt("institution_id"));
				formDetailsJson.put("institutename", rs.getString("institute_name"));
			} catch (InvalidResultSetAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			jsonArray.put(formDetailsJson);
		}
		try {
			responseDetailsJson.put("institutes", jsonArray);
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return responseDetailsJson;

	}

	public String validate(String email, String password) {

		StringBuilder query = new StringBuilder();
		query.append("select display_name from Users where (user_email = '" + email + "' or user_mobile = '" + email
				+ "' ) and user_password = '" + password + "'");

		SqlRowSet rs = getJdbcTemplate().queryForRowSet(query.toString());

		while (rs.next()) {

			return rs.getString("display_name");

		}

		return null;

	}

	public JSONObject getSchoolDetails(int instituteid) {

		StringBuilder query = new StringBuilder();

		query.append(
				"select School_Building_Id, Plinth_Area,  Library_Room, Principal_Room ,  Entrance_Hall , Office_Store , Staff_Room , Games_Room , Botany_Lab , Physics_Lab  , Chemistry_Lab ,")
				.append(" Zoology_Lab  , Computers_Lab , Toilets,    Class_Rooms from School_Building where  Institution_Id ="
						+ instituteid);

		SqlRowSet rs = getJdbcTemplate().queryForRowSet(query.toString());

		JSONObject schoolDetailsJson = new JSONObject();

		while (rs.next()) {

			try {
				schoolDetailsJson.put("school_building_id", rs.getInt("School_Building_Id"));
				schoolDetailsJson.put("Plinth_Area", rs.getInt("Plinth_Area"));
				schoolDetailsJson.put("library_room",
						"Y".equalsIgnoreCase(rs.getString("Library_Room")) ? true : false);
				schoolDetailsJson.put("principal_room",
						"Y".equalsIgnoreCase(rs.getString("Principal_Room")) ? true : false);
				schoolDetailsJson.put("entrancehall",
						"Y".equalsIgnoreCase(rs.getString("Entrance_Hall")) ? true : false);
				schoolDetailsJson.put("officestoreroom",
						"Y".equalsIgnoreCase(rs.getString("Office_Store")) ? true : false);
				schoolDetailsJson.put("staffroom", "Y".equalsIgnoreCase(rs.getString("Staff_Room")) ? true : false);
				schoolDetailsJson.put("gamesroom", "Y".equalsIgnoreCase(rs.getString("Games_Room")) ? true : false);
				schoolDetailsJson.put("botanylab", "Y".equalsIgnoreCase(rs.getString("Botany_Lab")) ? true : false);
				schoolDetailsJson.put("physicslab", "Y".equalsIgnoreCase(rs.getString("Physics_Lab")) ? true : false);
				schoolDetailsJson.put("chemistrylab",
						"Y".equalsIgnoreCase(rs.getString("Chemistry_Lab")) ? true : false);
				schoolDetailsJson.put("zoologylab", "Y".equalsIgnoreCase(rs.getString("Zoology_Lab")) ? true : false);
				schoolDetailsJson.put("computerslab",
						"Y".equalsIgnoreCase(rs.getString("Computers_Lab")) ? true : false);
				schoolDetailsJson.put("Toilets", rs.getString("Toilets"));
				schoolDetailsJson.put("Class_Rooms", rs.getString("Class_Rooms"));
			} catch (InvalidResultSetAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return schoolDetailsJson;
	}

	public JSONObject getLibraryRoomDetails(int schoolid) {

		StringBuilder query = new StringBuilder();

		query.append(
				" select Library_Building_Id, School_Building_Id, Plinth_Area, Table_Fans, Table_Fans_Count, Ceiling_Fans, Ceiling_Fans_Count, Tables,")
				.append(" Tables_Count, Chairs, Chairs_Count, TubeLights, TubeLights_Count, Bulbs,  Bulbs_Count,  ReadingTables, ReadingTables_Count , `S-Type-Chairs` , ")
				.append("  `S-Type-Chairs_Count`, `Glass-Door-Almira` , `Glass-Door-Almira_Count`, `Store-Well-Almira`, `Store-Well-Almira_Count`,Stools , Stools_Count from Library_Room ")
				.append(" where  School_Building_Id = " + schoolid);

		SqlRowSet rs = getJdbcTemplate().queryForRowSet(query.toString());

		JSONObject LibraryDetailsJson = new JSONObject();

		while (rs.next()) {

			try {

				LibraryDetailsJson.put("Library_Building_Id", rs.getInt("Library_Building_Id"));
				LibraryDetailsJson.put("School_Building_Id", rs.getInt("School_Building_Id"));
				LibraryDetailsJson.put("Plinth_Area", rs.getInt("Plinth_Area"));
				LibraryDetailsJson.put("Table_Fans", "Y".equalsIgnoreCase(rs.getString("Table_Fans")) ? true : false);
				LibraryDetailsJson.put("Table_Fans_Count", rs.getInt("Table_Fans_Count"));
				LibraryDetailsJson.put("Ceiling_Fans", "Y".equalsIgnoreCase(rs.getString("Ceiling_Fans")) ? true : false);
				LibraryDetailsJson.put("Ceiling_Fans_Count", rs.getInt("Ceiling_Fans_Count"));
				LibraryDetailsJson.put("Tables", "Y".equalsIgnoreCase(rs.getString("Tables")) ? true : false);
				LibraryDetailsJson.put("Tables_Count", rs.getInt("Tables_Count"));
				LibraryDetailsJson.put("Chairs", "Y".equalsIgnoreCase(rs.getString("Chairs")) ? true : false);
				LibraryDetailsJson.put("Chairs_Count", rs.getInt("Chairs_Count"));
				LibraryDetailsJson.put("TubeLights", "Y".equalsIgnoreCase(rs.getString("TubeLights")) ? true : false);
				LibraryDetailsJson.put("TubeLights_Count", rs.getInt("TubeLights_Count"));
				LibraryDetailsJson.put("Bulbs", "Y".equalsIgnoreCase(rs.getString("Bulbs")) ? true : false);
				LibraryDetailsJson.put("Bulbs_Count", rs.getInt("Bulbs_Count"));
				LibraryDetailsJson.put("ReadingTables", "Y".equalsIgnoreCase(rs.getString("ReadingTables")) ? true : false);
				LibraryDetailsJson.put("ReadingTables_Count", rs.getInt("ReadingTables_Count"));
				LibraryDetailsJson.put("S_Type_Chairs", "Y".equalsIgnoreCase(rs.getString("S-Type-Chairs")) ? true : false);
				LibraryDetailsJson.put("S_Type_Chairs_Count", rs.getInt("S-Type-Chairs_Count"));
				LibraryDetailsJson.put("Glass_Door_Almira", "Y".equalsIgnoreCase(rs.getString("Glass-Door-Almira")) ? true : false);
				LibraryDetailsJson.put("Glass_Door_Almira_Count", rs.getInt("Glass-Door-Almira_Count"));
				LibraryDetailsJson.put("Store_Well_Almira", "Y".equalsIgnoreCase(rs.getString("Store-Well-Almira")) ? true : false);
				LibraryDetailsJson.put("Store_Well_Almira_Count", rs.getInt("Store-Well-Almira_Count"));
				LibraryDetailsJson.put("Stools", "Y".equalsIgnoreCase(rs.getString("Stools")) ? true : false);
				LibraryDetailsJson.put("Stools_Count", rs.getInt("Stools_Count"));

			} catch (InvalidResultSetAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return LibraryDetailsJson;

	}

	public JSONObject getPrincipalRoomDetails(int schoolid) {

		StringBuilder query = new StringBuilder();

		query.append(
				"select Principal_Room_Id, School_Building_Id, Plinth_Area, Table_Fans, Table_Fans_Count, Ceiling_Fans, Ceiling_Fans_Count, Tables,")
				.append(" Tables_Count, Chairs, Chairs_Count, TubeLights, TubeLights_Count, Bulbs,  Bulbs_Count,  ReadingTables, ReadingTables_Count , `S-Type-Chairs` , ")
				.append("  `S-Type-Chairs_Count`, `Glass-Door-Almira` , `Glass-Door-Almira_Count`, `Store-Well-Almira`, `Store-Well-Almira_Count`,Stools , Stools_Count ,")
				.append(" `Principal-Table`, `Principal-Table-Count`, `Principal-Chair` ,`Principal-Chair-Count`, `Locker-Units`, `Locker-Units-Count` from Principal_Room ")
				.append(" where  School_Building_Id = " + schoolid);

		SqlRowSet rs = getJdbcTemplate().queryForRowSet(query.toString());

		JSONObject PrincipalRoomJson = new JSONObject();

		while (rs.next()) {

			try {

				PrincipalRoomJson.put("Principal_Room_Id", rs.getInt("Principal_Room_Id"));
				PrincipalRoomJson.put("School_Building_Id", rs.getInt("School_Building_Id"));
				PrincipalRoomJson.put("Plinth_Area", rs.getInt("Plinth_Area"));
				PrincipalRoomJson.put("Table_Fans", "Y".equalsIgnoreCase(rs.getString("Table_Fans")) ? true : false);
				PrincipalRoomJson.put("Table_Fans_Count", rs.getInt("Table_Fans_Count"));
				PrincipalRoomJson.put("Ceiling_Fans",
						"Y".equalsIgnoreCase(rs.getString("Ceiling_Fans")) ? true : false);
				PrincipalRoomJson.put("Ceiling_Fans_Count", rs.getInt("Ceiling_Fans_Count"));
				PrincipalRoomJson.put("Tables", "Y".equalsIgnoreCase(rs.getString("Tables")) ? true : false);
				PrincipalRoomJson.put("Tables_Count", rs.getInt("Tables_Count"));
				PrincipalRoomJson.put("Chairs", "Y".equalsIgnoreCase(rs.getString("Chairs")) ? true : false);
				PrincipalRoomJson.put("Chairs_Count", rs.getInt("Chairs_Count"));
				PrincipalRoomJson.put("TubeLights", "Y".equalsIgnoreCase(rs.getString("TubeLights")) ? true : false);
				PrincipalRoomJson.put("TubeLights_Count", rs.getInt("TubeLights_Count"));
				PrincipalRoomJson.put("Bulbs", "Y".equalsIgnoreCase(rs.getString("Bulbs")) ? true : false);
				PrincipalRoomJson.put("Bulbs_Count", rs.getInt("Bulbs_Count"));
				PrincipalRoomJson.put("ReadingTables",
						"Y".equalsIgnoreCase(rs.getString("ReadingTables")) ? true : false);
				PrincipalRoomJson.put("ReadingTables_Count", rs.getInt("ReadingTables_Count"));
				PrincipalRoomJson.put("S_Type_Chairs",
						"Y".equalsIgnoreCase(rs.getString("S-Type-Chairs")) ? true : false);
				PrincipalRoomJson.put("S_Type_Chairs_Count", rs.getInt("S-Type-Chairs_Count"));
				PrincipalRoomJson.put("Glass_Door_Almira",
						"Y".equalsIgnoreCase(rs.getString("Glass-Door-Almira")) ? true : false);
				PrincipalRoomJson.put("Glass_Door_Almira_Count", rs.getInt("Glass-Door-Almira_Count"));
				PrincipalRoomJson.put("Store_Well_Almira",
						"Y".equalsIgnoreCase(rs.getString("Store-Well-Almira")) ? true : false);
				PrincipalRoomJson.put("Store_Well_Almira_Count", rs.getInt("Store-Well-Almira_Count"));
				PrincipalRoomJson.put("Stools", "Y".equalsIgnoreCase(rs.getString("Stools")) ? true : false);
				PrincipalRoomJson.put("Stools_Count", rs.getInt("Stools_Count"));
				PrincipalRoomJson.put("Principal_Table",
						"Y".equalsIgnoreCase(rs.getString("Principal-Table")) ? true : false);
				PrincipalRoomJson.put("Principal_Table_Count", rs.getInt("Principal-Table-Count"));
				PrincipalRoomJson.put("Principal_Chair",
						"Y".equalsIgnoreCase(rs.getString("Principal-Chair")) ? true : false);
				PrincipalRoomJson.put("Principal_Chair_Count", rs.getInt("Principal-Chair-Count"));
				PrincipalRoomJson.put("Locker_Units",
						"Y".equalsIgnoreCase(rs.getString("Locker-Units")) ? true : false);
				PrincipalRoomJson.put("Locker_Units_Count", rs.getInt("Locker-Units-Count"));

			} catch (InvalidResultSetAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return PrincipalRoomJson;

	}

	public JSONObject getEntranceRoom(int schoolid) {

		StringBuilder query = new StringBuilder();

		query.append(
				"select  Entrance_Hall_Id, School_Building_Id, Plinth_Area, Table_Fans, Table_Fans_Count, Ceiling_Fans, Ceiling_Fans_Count, Tables,")
				.append(" Tables_Count, Chairs, Chairs_Count, TubeLights, TubeLights_Count, Bulbs,  Bulbs_Count,  Stools , Stools_Count ")
				.append(" from Entrance_Room where  School_Building_Id = " + schoolid);

		SqlRowSet rs = getJdbcTemplate().queryForRowSet(query.toString());

		JSONObject entranceRoomJson = new JSONObject();

		while (rs.next()) {

			try {

				entranceRoomJson.put("Entrance_Hall_Id", rs.getInt("Entrance_Hall_Id"));
				entranceRoomJson.put("School_Building_Id", rs.getInt("School_Building_Id"));
				entranceRoomJson.put("Plinth_Area", rs.getInt("Plinth_Area"));
				entranceRoomJson.put("Table_Fans", "Y".equalsIgnoreCase(rs.getString("Table_Fans")) ? true : false);
				entranceRoomJson.put("Table_Fans_Count", rs.getInt("Table_Fans_Count"));
				entranceRoomJson.put("Ceiling_Fans", "Y".equalsIgnoreCase(rs.getString("Ceiling_Fans")) ? true : false);
				entranceRoomJson.put("Ceiling_Fans_Count", rs.getInt("Ceiling_Fans_Count"));
				entranceRoomJson.put("Tables", "Y".equalsIgnoreCase(rs.getString("Tables")) ? true : false);
				entranceRoomJson.put("Tables_Count", rs.getInt("Tables_Count"));
				entranceRoomJson.put("Chairs", "Y".equalsIgnoreCase(rs.getString("Chairs")) ? true : false);
				entranceRoomJson.put("Chairs_Count", rs.getInt("Chairs_Count"));
				entranceRoomJson.put("TubeLights", "Y".equalsIgnoreCase(rs.getString("TubeLights")) ? true : false);
				entranceRoomJson.put("TubeLights_Count", rs.getInt("TubeLights_Count"));
				entranceRoomJson.put("Bulbs", "Y".equalsIgnoreCase(rs.getString("Bulbs")) ? true : false);
				entranceRoomJson.put("Bulbs_Count", rs.getInt("Bulbs_Count"));
				entranceRoomJson.put("Stools", "Y".equalsIgnoreCase(rs.getString("Stools")) ? true : false);
				entranceRoomJson.put("Stools_Count", rs.getInt("Stools_Count"));
			} catch (InvalidResultSetAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return entranceRoomJson;

	}

	public JSONObject getStaffRoomDetails(int schoolid) {

		StringBuilder query = new StringBuilder();

		query.append(
				"select Staff_Room_Id, School_Building_Id, Plinth_Area, Table_Fans, Table_Fans_Count, Ceiling_Fans, Ceiling_Fans_Count, Tables,")
				.append(" Tables_Count, Chairs, Chairs_Count, TubeLights, TubeLights_Count, Bulbs,  Bulbs_Count,  ReadingTables, ReadingTables_Count , `S-Type-Chairs` , ")
				.append("  `S-Type-Chairs_Count` , `Glass-Door-Almira` ,  `Glass-Door-Almira_Count`, `Store-Well-Almira`, `Store-Well-Almira_Count`,Stools , Stools_Count ,")
				.append(" `Locker-Units`, `Locker-Units_Count` ")
				.append(" from Staff_Room where  School_Building_Id = " + schoolid);

		SqlRowSet rs = getJdbcTemplate().queryForRowSet(query.toString());

		JSONObject officestaffroomJson = new JSONObject();

		while (rs.next()) {

			try {

				officestaffroomJson.put("Staff_Room_Id", rs.getInt("Staff_Room_Id"));
				officestaffroomJson.put("School_Building_Id", rs.getInt("School_Building_Id"));
				officestaffroomJson.put("Plinth_Area", rs.getInt("Plinth_Area"));
				officestaffroomJson.put("Table_Fans", "Y".equalsIgnoreCase(rs.getString("Table_Fans")) ? true : false);
				officestaffroomJson.put("Table_Fans_Count", rs.getInt("Table_Fans_Count"));
				officestaffroomJson.put("Ceiling_Fans",
						"Y".equalsIgnoreCase(rs.getString("Ceiling_Fans")) ? true : false);
				officestaffroomJson.put("Ceiling_Fans_Count", rs.getInt("Ceiling_Fans_Count"));
				officestaffroomJson.put("Tables", "Y".equalsIgnoreCase(rs.getString("Tables")) ? true : false);
				officestaffroomJson.put("Tables_Count", rs.getInt("Tables_Count"));
				officestaffroomJson.put("Chairs", "Y".equalsIgnoreCase(rs.getString("Chairs")) ? true : false);
				officestaffroomJson.put("Chairs_Count", rs.getInt("Chairs_Count"));
				officestaffroomJson.put("TubeLights", "Y".equalsIgnoreCase(rs.getString("TubeLights")) ? true : false);
				officestaffroomJson.put("TubeLights_Count", rs.getInt("TubeLights_Count"));
				officestaffroomJson.put("Bulbs", "Y".equalsIgnoreCase(rs.getString("Bulbs")) ? true : false);
				officestaffroomJson.put("Bulbs_Count", rs.getInt("Bulbs_Count"));
				officestaffroomJson.put("ReadingTables",
						"Y".equalsIgnoreCase(rs.getString("ReadingTables")) ? true : false);
				officestaffroomJson.put("ReadingTables_Count", rs.getInt("ReadingTables_Count"));
				officestaffroomJson.put("S_Type_Chairs",
						"Y".equalsIgnoreCase(rs.getString("S-Type-Chairs")) ? true : false);
				officestaffroomJson.put("S_Type_Chairs_Count", rs.getInt("S-Type-Chairs_Count"));
				officestaffroomJson.put("Glass_Door_Almira",
						"Y".equalsIgnoreCase(rs.getString("Glass-Door-Almira")) ? true : false);
				officestaffroomJson.put("Glass_Door_Almira_Count", rs.getInt("Glass-Door-Almira_Count"));
				officestaffroomJson.put("Store_Well_Almira",
						"Y".equalsIgnoreCase(rs.getString("Store-Well-Almira")) ? true : false);
				officestaffroomJson.put("Store_Well_Almira_Count", rs.getInt("Store-Well-Almira_Count"));
				officestaffroomJson.put("Stools", "Y".equalsIgnoreCase(rs.getString("Stools")) ? true : false);
				officestaffroomJson.put("Stools_Count", rs.getInt("Stools_Count"));
				officestaffroomJson.put("Locker_Units",
						"Y".equalsIgnoreCase(rs.getString("Locker-Units")) ? true : false);
				officestaffroomJson.put("Locker_Units_Count", rs.getInt("Locker-Units_Count"));

			} catch (InvalidResultSetAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return officestaffroomJson;

	}

	public JSONObject getStoreRoomDetails(int schoolid) {

		StringBuilder query = new StringBuilder();

		query.append(
				"select Store_Room_Id, School_Building_Id, Plinth_Area, Table_Fans, Table_Fans_Count, Ceiling_Fans, Ceiling_Fans_Count, Tables,")
				.append(" Tables_Count, Chairs, Chairs_Count, TubeLights, TubeLights_Count, Bulbs,  Bulbs_Count,  ReadingTables, ReadingTables_Count , `S-Type-Chairs` , ")
				.append("  `S-Type-Chairs_Count` , `Glass-Door-Almira` ,  `Glass-Door-Almira_Count`, `Store-Well-Almira`, `Store-Well-Almira_Count`,Stools , Stools_Count ,")
				.append(" `Locker-Units`, `Locker-Units-Count` ")
				.append("from Store_Room where  School_Building_Id = " + schoolid);

		SqlRowSet rs = getJdbcTemplate().queryForRowSet(query.toString());

		JSONObject storeRoomJson = new JSONObject();

		while (rs.next()) {

			try {

				storeRoomJson.put("Store_Room_Id", rs.getInt("Store_Room_Id"));
				storeRoomJson.put("School_Building_Id", rs.getInt("School_Building_Id"));
				storeRoomJson.put("Plinth_Area", rs.getInt("Plinth_Area"));
				storeRoomJson.put("Table_Fans", "Y".equalsIgnoreCase(rs.getString("Table_Fans")) ? true : false);
				storeRoomJson.put("Table_Fans_Count", rs.getInt("Table_Fans_Count"));
				storeRoomJson.put("Ceiling_Fans", "Y".equalsIgnoreCase(rs.getString("Ceiling_Fans")) ? true : false);
				storeRoomJson.put("Ceiling_Fans_Count", rs.getInt("Ceiling_Fans_Count"));
				storeRoomJson.put("Tables", "Y".equalsIgnoreCase(rs.getString("Tables")) ? true : false);
				storeRoomJson.put("Tables_Count", rs.getInt("Tables_Count"));
				storeRoomJson.put("Chairs", "Y".equalsIgnoreCase(rs.getString("Chairs")) ? true : false);
				storeRoomJson.put("Chairs_Count", rs.getInt("Chairs_Count"));
				storeRoomJson.put("TubeLights", "Y".equalsIgnoreCase(rs.getString("TubeLights")) ? true : false);
				storeRoomJson.put("TubeLights_Count", rs.getInt("TubeLights_Count"));
				storeRoomJson.put("Bulbs", "Y".equalsIgnoreCase(rs.getString("Bulbs")) ? true : false);
				storeRoomJson.put("Bulbs_Count", rs.getInt("Bulbs_Count"));
				storeRoomJson.put("ReadingTables", "Y".equalsIgnoreCase(rs.getString("ReadingTables")) ? true : false);
				storeRoomJson.put("ReadingTables_Count", rs.getInt("ReadingTables_Count"));
				storeRoomJson.put("S_Type_Chairs", "Y".equalsIgnoreCase(rs.getString("S-Type-Chairs")) ? true : false);
				storeRoomJson.put("S_Type_Chairs_Count", rs.getInt("S-Type-Chairs_Count"));
				storeRoomJson.put("Glass_Door_Almira",
						"Y".equalsIgnoreCase(rs.getString("Glass-Door-Almira")) ? true : false);
				storeRoomJson.put("Glass_Door_Almira_Count", rs.getInt("Glass-Door-Almira_Count"));
				storeRoomJson.put("Store_Well_Almira",
						"Y".equalsIgnoreCase(rs.getString("Store-Well-Almira")) ? true : false);
				storeRoomJson.put("Store_Well_Almira_Count", rs.getInt("Store-Well-Almira_Count"));
				storeRoomJson.put("Stools", "Y".equalsIgnoreCase(rs.getString("Stools")) ? true : false);
				storeRoomJson.put("Stools_Count", rs.getInt("Stools_Count"));
				storeRoomJson.put("Locker_Units", "Y".equalsIgnoreCase(rs.getString("Locker-Units")) ? true : false);
				storeRoomJson.put("Locker_Units_Count", rs.getInt("Locker-Units-Count"));

			} catch (InvalidResultSetAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return storeRoomJson;

	}

	public JSONObject getGamesRoomDetails(int schoolid) {

		StringBuilder query = new StringBuilder();

		query.append(
				"select Games_Room_Id, School_Building_Id, Plinth_Area, Table_Fans, Table_Fans_Count, Ceiling_Fans, Ceiling_Fans_Count, Tables,")
				.append(" Tables_Count, Chairs, Chairs_Count, TubeLights, TubeLights_Count, Bulbs,  Bulbs_Count,  ReadingTables, ReadingTables_Count , `S-Type-Chairs` , ")
				.append("  `S-Type-Chairs_Count` , `Glass-Door-Almira` ,  `Glass-Door-Almira_Count`, `Store-Well-Almira`, `Games-Well-Almira_Count`,Stools , Stools_Count ,")
				.append(" `Locker-Units`, `Locker-Units_Count` ")
				.append(" from Games_Room where  School_Building_Id = " + schoolid);

		SqlRowSet rs = getJdbcTemplate().queryForRowSet(query.toString());

		JSONObject gamesRoomJson = new JSONObject();

		while (rs.next()) {

			try {

				gamesRoomJson.put("Games_Room_Id", rs.getInt("Games_Room_Id"));
				gamesRoomJson.put("School_Building_Id", rs.getInt("School_Building_Id"));
				gamesRoomJson.put("Plinth_Area", rs.getInt("Plinth_Area"));
				gamesRoomJson.put("Table_Fans", "Y".equalsIgnoreCase(rs.getString("Table_Fans")) ? true : false);
				gamesRoomJson.put("Table_Fans_Count", rs.getInt("Table_Fans_Count"));
				gamesRoomJson.put("Ceiling_Fans", "Y".equalsIgnoreCase(rs.getString("Ceiling_Fans")) ? true : false);
				gamesRoomJson.put("Ceiling_Fans_Count", rs.getInt("Ceiling_Fans_Count"));
				gamesRoomJson.put("Tables", "Y".equalsIgnoreCase(rs.getString("Tables")) ? true : false);
				gamesRoomJson.put("Tables_Count", rs.getInt("Tables_Count"));
				gamesRoomJson.put("Chairs", "Y".equalsIgnoreCase(rs.getString("Chairs")) ? true : false);
				gamesRoomJson.put("Chairs_Count", rs.getInt("Chairs_Count"));
				gamesRoomJson.put("TubeLights", "Y".equalsIgnoreCase(rs.getString("TubeLights")) ? true : false);
				gamesRoomJson.put("TubeLights_Count", rs.getInt("TubeLights_Count"));
				gamesRoomJson.put("Bulbs", "Y".equalsIgnoreCase(rs.getString("Bulbs")) ? true : false);
				gamesRoomJson.put("Bulbs_Count", rs.getInt("Bulbs_Count"));
				gamesRoomJson.put("ReadingTables", "Y".equalsIgnoreCase(rs.getString("ReadingTables")) ? true : false);
				gamesRoomJson.put("ReadingTables_Count", rs.getInt("ReadingTables_Count"));
				gamesRoomJson.put("S_Type_Chairs", "Y".equalsIgnoreCase(rs.getString("S-Type-Chairs")) ? true : false);
				gamesRoomJson.put("S_Type_Chairs_Count", rs.getInt("S-Type-Chairs_Count"));
				gamesRoomJson.put("Glass_Door_Almira",
						"Y".equalsIgnoreCase(rs.getString("Glass-Door-Almira")) ? true : false);
				gamesRoomJson.put("Glass_Door_Almira_Count", rs.getInt("Glass-Door-Almira_Count"));
				gamesRoomJson.put("Store_Well_Almira",
						"Y".equalsIgnoreCase(rs.getString("Store-Well-Almira")) ? true : false);
				gamesRoomJson.put("Store_Well_Almira_Count", rs.getInt("Games-Well-Almira_Count"));
				gamesRoomJson.put("Stools", "Y".equalsIgnoreCase(rs.getString("Stools")) ? true : false);
				gamesRoomJson.put("Stools_Count", rs.getInt("Stools_Count"));
				gamesRoomJson.put("Locker_Units", "Y".equalsIgnoreCase(rs.getString("Locker-Units")) ? true : false);
				gamesRoomJson.put("Locker_Units_Count", rs.getInt("Locker-Units_Count"));

			} catch (InvalidResultSetAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return gamesRoomJson;

	}

	public JSONObject getBotanyLabDetails(int schoolid) {

		StringBuilder query = new StringBuilder();

		query.append(
				" select `Botany-Lab_Id`, School_Building_Id, Plinth_Area, Table_Fans, Table_Fans_Count, Ceiling_Fans, Ceiling_Fans_Count, Tables,")
				.append(" Tables_Count, Chairs, Chairs_Count, TubeLights, TubeLights_Count, Bulbs,  Bulbs_Count,  ReadingTables, ReadingTables_Count , `S-Type-Chairs` , ")
				.append("  `S-Type-Chairs_Count` , `Glass-Door-Almira` ,  `Glass-Door-Almira_Count`, `Store-Well-Almira`, `Store-Wall-Almira_Count`,Stools , Stools_Count ,")
				.append(" `Locker-Units`, `Locker-Units_Count`, Green_Board, Green_Board_Count ")
				.append(" from `Botany-Lab_Room` where  School_Building_Id = " + schoolid);

		SqlRowSet rs = getJdbcTemplate().queryForRowSet(query.toString());

		JSONObject botanyLabJson = new JSONObject();

		while (rs.next()) {

			try {

				botanyLabJson.put("Botany_Lab_Id", rs.getInt("Botany-Lab_Id"));
				botanyLabJson.put("School_Building_Id", rs.getInt("School_Building_Id"));
				botanyLabJson.put("Plinth_Area", rs.getInt("Plinth_Area"));
				botanyLabJson.put("Table_Fans", "Y".equalsIgnoreCase(rs.getString("Table_Fans")) ? true : false);
				botanyLabJson.put("Table_Fans_Count", rs.getInt("Table_Fans_Count"));
				botanyLabJson.put("Ceiling_Fans", "Y".equalsIgnoreCase(rs.getString("Ceiling_Fans")) ? true : false);
				botanyLabJson.put("Ceiling_Fans_Count", rs.getInt("Ceiling_Fans_Count"));
				botanyLabJson.put("Tables", "Y".equalsIgnoreCase(rs.getString("Tables")) ? true : false);
				botanyLabJson.put("Tables_Count", rs.getInt("Tables_Count"));
				botanyLabJson.put("Chairs", "Y".equalsIgnoreCase(rs.getString("Chairs")) ? true : false);
				botanyLabJson.put("Chairs_Count", rs.getInt("Chairs_Count"));
				botanyLabJson.put("TubeLights", "Y".equalsIgnoreCase(rs.getString("TubeLights")) ? true : false);
				botanyLabJson.put("TubeLights_Count", rs.getInt("TubeLights_Count"));
				botanyLabJson.put("Bulbs", "Y".equalsIgnoreCase(rs.getString("Bulbs")) ? true : false);
				botanyLabJson.put("Bulbs_Count", rs.getInt("Bulbs_Count"));
				botanyLabJson.put("ReadingTables", "Y".equalsIgnoreCase(rs.getString("ReadingTables")) ? true : false);
				botanyLabJson.put("ReadingTables_Count", rs.getInt("ReadingTables_Count"));
				botanyLabJson.put("S_Type_Chairs", "Y".equalsIgnoreCase(rs.getString("S-Type-Chairs")) ? true : false);
				botanyLabJson.put("S_Type_Chairs_Count", rs.getInt("S-Type-Chairs_Count"));
				botanyLabJson.put("Glass_Door_Almira", "Y".equalsIgnoreCase(rs.getString("Glass-Door-Almira")) ? true : false);
				botanyLabJson.put("Glass_Door_Almira_Count", rs.getInt("Glass-Door-Almira_Count"));
				botanyLabJson.put("Store_Well_Almira", "Y".equalsIgnoreCase(rs.getString("Store-Well-Almira")) ? true : false);
				botanyLabJson.put("Store_Well_Almira_Count", rs.getInt("Store-Wall-Almira_Count"));
				botanyLabJson.put("Stools", "Y".equalsIgnoreCase(rs.getString("Stools")) ? true : false);
				botanyLabJson.put("Stools_Count", rs.getInt("Stools_Count"));
				botanyLabJson.put("Locker_Units", "Y".equalsIgnoreCase(rs.getString("Locker-Units")) ? true : false);
				botanyLabJson.put("Locker_Units_Count", rs.getInt("Locker-Units_Count"));
				botanyLabJson.put("Green_Board", "Y".equalsIgnoreCase(rs.getString("Green_Board")) ? true : false);
				botanyLabJson.put("Green_Board_Count", rs.getInt("Green_Board_Count"));


			} catch (InvalidResultSetAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return botanyLabJson;

	}

	public JSONObject getChemistryLabDetails(int schoolid) {

		StringBuilder query = new StringBuilder();

		query.append(
				" select `Chemistry-Lab-Id`, School_Building_Id, Plinth_Area, Table_Fans, Table_Fans_Count, Ceiling_Fans, Ceiling_Fans_Count, Tables, ")
				.append(" Tables_Count, Chairs, Chairs_Count, TubeLights, TubeLights_Count, Bulbs,  Bulbs_Count,  ReadingTables, ReadingTables_Count , `S-Type-Chairs` , ")
				.append("  `S-Type-Chairs_Count` , `Glass-Door-Almira` , `Glass-Door-Almira_Count`, `Store-Well-Almira`, `Chemistry-Lab-Well-Almira_Count`,  Stools , Stools_Count , ")
				.append(" `Locker-Units`, `Locker-Units_Count` ,Green_Board, Green_Board_Count")
				.append(" from `Chemistry-Lab_Room` where  School_Building_Id = " + schoolid);

		SqlRowSet rs = getJdbcTemplate().queryForRowSet(query.toString());

		JSONObject chemistryLabJson = new JSONObject();

		while (rs.next()) {

			try {

				chemistryLabJson.put("Chemistry_Lab_Id", rs.getInt("Chemistry-Lab-Id"));
				chemistryLabJson.put("School_Building_Id", rs.getInt("School_Building_Id"));
				chemistryLabJson.put("Plinth_Area", rs.getInt("Plinth_Area"));
				chemistryLabJson.put("Table_Fans", "Y".equalsIgnoreCase(rs.getString("Table_Fans")) ? true : false);
				chemistryLabJson.put("Table_Fans_Count", rs.getInt("Table_Fans_Count"));
				chemistryLabJson.put("Ceiling_Fans", "Y".equalsIgnoreCase(rs.getString("Ceiling_Fans")) ? true : false);
				chemistryLabJson.put("Ceiling_Fans_Count", rs.getInt("Ceiling_Fans_Count"));
				chemistryLabJson.put("Tables", "Y".equalsIgnoreCase(rs.getString("Tables")) ? true : false);
				chemistryLabJson.put("Tables_Count", rs.getInt("Tables_Count"));
				chemistryLabJson.put("Chairs", "Y".equalsIgnoreCase(rs.getString("Chairs")) ? true : false);
				chemistryLabJson.put("Chairs_Count", rs.getInt("Chairs_Count"));
				chemistryLabJson.put("TubeLights", "Y".equalsIgnoreCase(rs.getString("TubeLights")) ? true : false);
				chemistryLabJson.put("TubeLights_Count", rs.getInt("TubeLights_Count"));
				chemistryLabJson.put("Bulbs", "Y".equalsIgnoreCase(rs.getString("Bulbs")) ? true : false);
				chemistryLabJson.put("Bulbs_Count", rs.getInt("Bulbs_Count"));
				chemistryLabJson.put("ReadingTables", "Y".equalsIgnoreCase(rs.getString("ReadingTables")) ? true : false);
				chemistryLabJson.put("ReadingTables_Count", rs.getInt("ReadingTables_Count"));
				chemistryLabJson.put("S_Type_Chairs", "Y".equalsIgnoreCase(rs.getString("S-Type-Chairs")) ? true : false);
				chemistryLabJson.put("S_Type_Chairs_Count", rs.getInt("S-Type-Chairs_Count"));
				chemistryLabJson.put("Glass_Door_Almira", "Y".equalsIgnoreCase(rs.getString("Glass-Door-Almira")) ? true : false);
				chemistryLabJson.put("Glass_Door_Almira_Count", rs.getInt("Glass-Door-Almira_Count"));
				chemistryLabJson.put("Store_Well_Almira", "Y".equalsIgnoreCase(rs.getString("Store-Well-Almira")) ? true : false);
				chemistryLabJson.put("Store_Well_Almira_Count", rs.getInt("Chemistry-Lab-Well-Almira_Count"));
				chemistryLabJson.put("Stools", "Y".equalsIgnoreCase(rs.getString("Stools")) ? true : false);
				chemistryLabJson.put("Stools_Count", rs.getInt("Stools_Count"));
				chemistryLabJson.put("Locker_Units", "Y".equalsIgnoreCase(rs.getString("Locker-Units")) ? true : false);
				chemistryLabJson.put("Locker_Units_Count", rs.getInt("Locker-Units_Count"));
				chemistryLabJson.put("Green_Board", "Y".equalsIgnoreCase(rs.getString("Green_Board")) ? true : false);
				chemistryLabJson.put("Green_Board_Count", rs.getInt("Green_Board_Count"));
				

			} catch (InvalidResultSetAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return chemistryLabJson;

	}

	public JSONObject getPhysicsLabDetails(int schoolid) {

		StringBuilder query = new StringBuilder();

		query.append(
				" select `Physics-Lab_Building_Id`, School_Building_Id, Plinth_Area, Table_Fans, Table_Fans_Count, Ceiling_Fans, Ceiling_Fans_Count, Tables,")
				.append(" Tables_Count, Chairs, Chairs_Count, TubeLights, TubeLights_Count, Bulbs,  Bulbs_Count,  ReadingTables, ReadingTables_Count , `S-Type-Chairs` , ")
				.append("  `S-Type-Chairs_Count` , `Glass-Door-Almira` , `Glass-Door-Almira_Count`, `Store-Well-Almira`, `Physics-Lab-Well-Almira_Count`, Stools , Stools_Count ,")
				.append(" `Locker-Units`, `Locker-Units_Count`,Green_Board, Green_Board_Count ")
				.append(" from `Physics-Lab_Room` where  School_Building_Id = " + schoolid);

		SqlRowSet rs = getJdbcTemplate().queryForRowSet(query.toString());

		JSONObject physicsLabJson = new JSONObject();

		while (rs.next()) {

			try {

				physicsLabJson.put("Physics_Lab_Building_Id", rs.getInt("Physics-Lab_Building_Id"));
				physicsLabJson.put("School_Building_Id", rs.getInt("School_Building_Id"));
				physicsLabJson.put("Plinth_Area", rs.getInt("Plinth_Area"));
				physicsLabJson.put("Table_Fans", "Y".equalsIgnoreCase(rs.getString("Table_Fans")) ? true : false);
				physicsLabJson.put("Table_Fans_Count", rs.getInt("Table_Fans_Count"));
				physicsLabJson.put("Ceiling_Fans", "Y".equalsIgnoreCase(rs.getString("Ceiling_Fans")) ? true : false);
				physicsLabJson.put("Ceiling_Fans_Count", rs.getInt("Ceiling_Fans_Count"));
				physicsLabJson.put("Tables", "Y".equalsIgnoreCase(rs.getString("Tables")) ? true : false);
				physicsLabJson.put("Tables_Count", rs.getInt("Tables_Count"));
				physicsLabJson.put("Chairs", "Y".equalsIgnoreCase(rs.getString("Chairs")) ? true : false);
				physicsLabJson.put("Chairs_Count", rs.getInt("Chairs_Count"));
				physicsLabJson.put("TubeLights", "Y".equalsIgnoreCase(rs.getString("TubeLights")) ? true : false);
				physicsLabJson.put("TubeLights_Count", rs.getInt("TubeLights_Count"));
				physicsLabJson.put("Bulbs", "Y".equalsIgnoreCase(rs.getString("Bulbs")) ? true : false);
				physicsLabJson.put("Bulbs_Count", rs.getInt("Bulbs_Count"));
				physicsLabJson.put("ReadingTables", "Y".equalsIgnoreCase(rs.getString("ReadingTables")) ? true : false);
				physicsLabJson.put("ReadingTables_Count", rs.getInt("ReadingTables_Count"));
				physicsLabJson.put("S_Type_Chairs", "Y".equalsIgnoreCase(rs.getString("S-Type-Chairs")) ? true : false);
				physicsLabJson.put("S_Type_Chairs_Count", rs.getInt("S-Type-Chairs_Count"));
				physicsLabJson.put("Glass_Door_Almira", "Y".equalsIgnoreCase(rs.getString("Glass-Door-Almira")) ? true : false);
				physicsLabJson.put("Glass_Door_Almira_Count", rs.getInt("Glass-Door-Almira_Count"));
				physicsLabJson.put("Store_Well_Almira", "Y".equalsIgnoreCase(rs.getString("Store-Well-Almira")) ? true : false);
				physicsLabJson.put("Store_Well_Almira_Count", rs.getInt("Physics-Lab-Well-Almira_Count"));
				physicsLabJson.put("Stools", "Y".equalsIgnoreCase(rs.getString("Stools")) ? true : false);
				physicsLabJson.put("Stools_Count", rs.getInt("Stools_Count"));
				physicsLabJson.put("Locker_Units", "Y".equalsIgnoreCase(rs.getString("Locker-Units")) ? true : false);
				physicsLabJson.put("Locker_Units_Count", rs.getInt("Locker-Units_Count"));
				physicsLabJson.put("Green_Board", "Y".equalsIgnoreCase(rs.getString("Green_Board")) ? true : false);
				physicsLabJson.put("Green_Board_Count", rs.getInt("Green_Board_Count"));
				
			} catch (InvalidResultSetAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return physicsLabJson;

	}

	public JSONObject getZoologyLabDetails(int schoolid) {

		StringBuilder query = new StringBuilder();

		query.append(
				" select  `Zoology-Lab_Building_Id`, School_Building_Id, Plinth_Area, Table_Fans, Table_Fans_Count, Ceiling_Fans, Ceiling_Fans_Count, Tables,")
				.append(" Tables_Count, Chairs, Chairs_Count, TubeLights, TubeLights_Count, Bulbs,  Bulbs_Count,  ReadingTables, ReadingTables_Count , `S-Type-Chairs` , ")
				.append("  `S-Type-Chairs_Count` , `Glass-Door-Almira` , `Glass-Door-Almira_Count`, `Store-Well-Almira`, `Zoology-Lab-Well-Almira_Count`, Stools , Stools_Count ,")
				.append(" `Locker-Units`, `Locker-Units_Count`,Green_Board, Green_Board_Count ")
				.append(" from `Zoology-Lab_Room` where  School_Building_Id = " + schoolid);

		SqlRowSet rs = getJdbcTemplate().queryForRowSet(query.toString());

		JSONObject zoologyLabJson = new JSONObject();

		while (rs.next()) {

			try {

				zoologyLabJson.put("Zoology_Lab_Building_Id", rs.getInt("Zoology-Lab_Building_Id"));
				zoologyLabJson.put("School_Building_Id", rs.getInt("School_Building_Id"));
				zoologyLabJson.put("Plinth_Area", rs.getInt("Plinth_Area"));
				zoologyLabJson.put("Table_Fans", "Y".equalsIgnoreCase(rs.getString("Table_Fans")) ? true : false);
				zoologyLabJson.put("Table_Fans_Count", rs.getInt("Table_Fans_Count"));
				zoologyLabJson.put("Ceiling_Fans", "Y".equalsIgnoreCase(rs.getString("Ceiling_Fans")) ? true : false);
				zoologyLabJson.put("Ceiling_Fans_Count", rs.getInt("Ceiling_Fans_Count"));
				zoologyLabJson.put("Tables", "Y".equalsIgnoreCase(rs.getString("Tables")) ? true : false);
				zoologyLabJson.put("Tables_Count", rs.getInt("Tables_Count"));
				zoologyLabJson.put("Chairs", "Y".equalsIgnoreCase(rs.getString("Chairs")) ? true : false);
				zoologyLabJson.put("Chairs_Count", rs.getInt("Chairs_Count"));
				zoologyLabJson.put("TubeLights", "Y".equalsIgnoreCase(rs.getString("TubeLights")) ? true : false);
				zoologyLabJson.put("TubeLights_Count", rs.getInt("TubeLights_Count"));
				zoologyLabJson.put("Bulbs", "Y".equalsIgnoreCase(rs.getString("Bulbs")) ? true : false);
				zoologyLabJson.put("Bulbs_Count", rs.getInt("Bulbs_Count"));
				zoologyLabJson.put("ReadingTables", "Y".equalsIgnoreCase(rs.getString("ReadingTables")) ? true : false);
				zoologyLabJson.put("ReadingTables_Count", rs.getInt("ReadingTables_Count"));
				zoologyLabJson.put("S_Type_Chairs", "Y".equalsIgnoreCase(rs.getString("S-Type-Chairs")) ? true : false);
				zoologyLabJson.put("S_Type_Chairs_Count", rs.getInt("S-Type-Chairs_Count"));
				zoologyLabJson.put("Glass_Door_Almira", "Y".equalsIgnoreCase(rs.getString("Glass-Door-Almira")) ? true : false);
				zoologyLabJson.put("Glass_Door_Almira_Count", rs.getInt("Glass-Door-Almira_Count"));
				zoologyLabJson.put("Store_Well_Almira", "Y".equalsIgnoreCase(rs.getString("Store-Well-Almira")) ? true : false);
				zoologyLabJson.put("Store_Well_Almira_Count", rs.getInt("Zoology-Lab-Well-Almira_Count"));
				zoologyLabJson.put("Stools", "Y".equalsIgnoreCase(rs.getString("Stools")) ? true : false);
				zoologyLabJson.put("Stools_Count", rs.getInt("Stools_Count"));
				zoologyLabJson.put("Locker_Units", "Y".equalsIgnoreCase(rs.getString("Locker-Units")) ? true : false);
				zoologyLabJson.put("Locker_Units_Count", rs.getInt("Locker-Units_Count"));
				zoologyLabJson.put("Green_Board", "Y".equalsIgnoreCase(rs.getString("Green_Board")) ? true : false);
				zoologyLabJson.put("Green_Board_Count", rs.getInt("Green_Board_Count"));

			} catch (InvalidResultSetAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return zoologyLabJson;

	}

	
	
	public JSONObject getComputerLabDetails(int schoolid) {

		StringBuilder query = new StringBuilder();

		query.append(
				" select `Computers-Lab_Building_Id`, School_Building_Id, Plinth_Area, Table_Fans, Table_Fans_Count, Ceiling_Fans, Ceiling_Fans_Count, Tables,")
				.append(" Tables_Count, Chairs, Chairs_Count, TubeLights, TubeLights_Count, Bulbs,  Bulbs_Count,  ReadingTables, ReadingTables_Count , `S-Type-Chairs` , ")
				.append("  `S-Type-Chairs_Count` , `Glass-Door-Almira` , `Glass-Door-Almira_Count`, `Store-Well-Almira`, `Computers-Lab-Well-Almira_Count`, Stools , Stools_Count ,")
				.append(" `Locker-Units`, `Locker-Units_Count`,Green_Board, Green_Board_Count ")
				.append(" from `Computers-Lab_Room` where  School_Building_Id = " + schoolid);

		SqlRowSet rs = getJdbcTemplate().queryForRowSet(query.toString());

		JSONObject compLabJson = new JSONObject();

		while (rs.next()) {

			try {

				compLabJson.put("Computers_Lab_Building_Id", rs.getInt("Computers-Lab_Building_Id"));
				compLabJson.put("School_Building_Id", rs.getInt("School_Building_Id"));
				compLabJson.put("Plinth_Area", rs.getInt("Plinth_Area"));
				compLabJson.put("Table_Fans", "Y".equalsIgnoreCase(rs.getString("Table_Fans")) ? true : false);
				compLabJson.put("Table_Fans_Count", rs.getInt("Table_Fans_Count"));
				compLabJson.put("Ceiling_Fans", "Y".equalsIgnoreCase(rs.getString("Ceiling_Fans")) ? true : false);
				compLabJson.put("Ceiling_Fans_Count", rs.getInt("Ceiling_Fans_Count"));
				compLabJson.put("Tables", "Y".equalsIgnoreCase(rs.getString("Tables")) ? true : false);
				compLabJson.put("Tables_Count", rs.getInt("Tables_Count"));
				compLabJson.put("Chairs", "Y".equalsIgnoreCase(rs.getString("Chairs")) ? true : false);
				compLabJson.put("Chairs_Count", rs.getInt("Chairs_Count"));
				compLabJson.put("TubeLights", "Y".equalsIgnoreCase(rs.getString("TubeLights")) ? true : false);
				compLabJson.put("TubeLights_Count", rs.getInt("TubeLights_Count"));
				compLabJson.put("Bulbs", "Y".equalsIgnoreCase(rs.getString("Bulbs")) ? true : false);
				compLabJson.put("Bulbs_Count", rs.getInt("Bulbs_Count"));
				compLabJson.put("ReadingTables", "Y".equalsIgnoreCase(rs.getString("ReadingTables")) ? true : false);
				compLabJson.put("ReadingTables_Count", rs.getInt("ReadingTables_Count"));
				compLabJson.put("S_Type_Chairs", "Y".equalsIgnoreCase(rs.getString("S-Type-Chairs")) ? true : false);
				compLabJson.put("S_Type_Chairs_Count", rs.getInt("S-Type-Chairs_Count"));
				compLabJson.put("Glass_Door_Almira", "Y".equalsIgnoreCase(rs.getString("Glass-Door-Almira")) ? true : false);
				compLabJson.put("Glass_Door_Almira_Count", rs.getInt("Glass-Door-Almira_Count"));
				compLabJson.put("Store_Well_Almira", "Y".equalsIgnoreCase(rs.getString("Store-Well-Almira")) ? true : false);
				compLabJson.put("Store_Well_Almira_Count", rs.getInt("Computers-Lab-Well-Almira_Count"));
				compLabJson.put("Stools", "Y".equalsIgnoreCase(rs.getString("Stools")) ? true : false);
				compLabJson.put("Stools_Count", rs.getInt("Stools_Count"));
				compLabJson.put("Locker_Units", "Y".equalsIgnoreCase(rs.getString("Locker-Units")) ? true : false);
				compLabJson.put("Locker_Units_Count", rs.getInt("Locker-Units_Count"));
				compLabJson.put("Green_Board", "Y".equalsIgnoreCase(rs.getString("Green_Board")) ? true : false);
				compLabJson.put("Green_Board_Count", rs.getInt("Green_Board_Count"));

			} catch (InvalidResultSetAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return compLabJson;

	}
	
	public JSONObject getToiletDetails(int schoolid) {

		StringBuilder query = new StringBuilder();

		query.append("select Toilet_Room_Id, School_Building_Id ,Exhaust_Fans,Exhaust_Fans_Count,`Bath-Rooms`,`Bath-Rooms_Count`, TubeLights, ");
		query.append(" TubeLights_Count,Bulbs,Bulbs_Count,`Running-Water` ,`Water-Closets`,`Water-Closets-Count`,Incinerators,`Incinerators-Count`,`Indian-Toilets`,  ");
		query.append(" `Indian-Toilets-Count`,`Provision-For-Physically-Challeged`,`Provision-For-Physically-Challeged-Count`  ");
		query.append("	 from Toilet_Room where  School_Building_Id = " + schoolid);
			
		SqlRowSet rs = getJdbcTemplate().queryForRowSet(query.toString());

		JSONObject toiletdetailsJson = new JSONObject();

		while (rs.next()) {

			try {

				toiletdetailsJson.put("Toilet_Room_Id", rs.getInt("Toilet_Room_Id"));
				toiletdetailsJson.put("School_Building_Id", rs.getInt("School_Building_Id"));
				toiletdetailsJson.put("Exhaust_Fans_Count", rs.getInt("Exhaust_Fans_Count"));
				toiletdetailsJson.put("Exhaust_Fans", "Y".equalsIgnoreCase(rs.getString("Exhaust_Fans")) ? true : false);
				toiletdetailsJson.put("BathRooms", "Y".equalsIgnoreCase(rs.getString("Bath-Rooms")) ? true : false);
				toiletdetailsJson.put("BathRoomsCount", rs.getInt("Bath-Rooms_Count"));
				toiletdetailsJson.put("TubeLights", "Y".equalsIgnoreCase(rs.getString("TubeLights")) ? true : false);
				toiletdetailsJson.put("TubeLights_Count", rs.getInt("TubeLights_Count"));
				toiletdetailsJson.put("Bulbs", "Y".equalsIgnoreCase(rs.getString("Bulbs")) ? true : false);
				toiletdetailsJson.put("Bulbs_Count", rs.getInt("Bulbs_Count"));
				toiletdetailsJson.put("Running_Water", "Y".equalsIgnoreCase(rs.getString("Running-Water")) ? true : false);
				toiletdetailsJson.put("Water_Closets", "Y".equalsIgnoreCase(rs.getString("Water-Closets")) ? true : false);
				toiletdetailsJson.put("Water_Closets_Count", rs.getInt("Water-Closets-Count"));
				toiletdetailsJson.put("Incinerators", "Y".equalsIgnoreCase(rs.getString("Incinerators")) ? true : false);
				toiletdetailsJson.put("Incinerators_Count", rs.getInt("Incinerators-Count"));
				toiletdetailsJson.put("Indian_Toilets", "Y".equalsIgnoreCase(rs.getString("Indian-Toilets")) ? true : false);
				toiletdetailsJson.put("Indian_Toilets_Count", rs.getInt("Indian-Toilets-Count"));
				toiletdetailsJson.put("ProvisionForPH", "Y".equalsIgnoreCase(rs.getString("Provision-For-Physically-Challeged")) ? true : false);
				toiletdetailsJson.put("ProvisionForPHCount", rs.getInt("Provision-For-Physically-Challeged-Count"));
			
			} catch (InvalidResultSetAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		return toiletdetailsJson;

	}
	
	public JSONObject getClassRoomDetails(int schoolid)
	{
		StringBuilder query = new StringBuilder();

		query.append("select Class_Room_Id, School_Building_Id, Table_Fans,Table_Fans_Count,Ceiling_Fans,Ceiling_Fans_Count,Floor,Tables,Tables_Count,Chairs,Chairs_Count,TubeLights,");
		query.append(" TubeLights_Count,Bulbs,Bulbs_Count,ReadingTables,ReadingTables_Count,`Locker-Units`,`Locker-Units_Count`,`Glass-Door-Almira`,`Glass-Door-Almira_Count`, ");
		query.append(" `S-Type-Chairs`,`S-Type-Chairs_Count`,`Store-Well-Almira`,`Store-Well-Almira_Count`,Stools,Stools_Count,`Dual-Desk`,`Dual-Desk_Count`,`Green-Boards`,`Green-Boards_Count`  ");
		query.append("	 from Class_Room where  School_Building_Id = " + schoolid);
			
		SqlRowSet rs = getJdbcTemplate().queryForRowSet(query.toString());

		
		
		JSONObject responseDetailsJson = new JSONObject();
		JSONArray jsonArray = new JSONArray();

		while (rs.next()) {
			
			JSONObject classjson = new JSONObject();

			try {

				classjson.put("Class_Room_Id", rs.getInt("Class_Room_Id"));
				classjson.put("School_Building_Id", rs.getInt("School_Building_Id"));
				//classjson.put("Plinth", rs.getInt("Plinth_Area"));
				classjson.put("TableFans", "Y".equalsIgnoreCase(rs.getString("Table_Fans")) ? true : false);
				classjson.put("TableFansCount", rs.getInt("Table_Fans_Count"));
				classjson.put("CeilingFans", "Y".equalsIgnoreCase(rs.getString("Ceiling_Fans")) ? true : false);
				classjson.put("CeilingFansCount", rs.getInt("Ceiling_Fans_Count"));
				classjson.put("Tables", "Y".equalsIgnoreCase(rs.getString("Tables")) ? true : false);
				classjson.put("TablesCount", rs.getInt("Tables_Count"));
				classjson.put("Chairs", "Y".equalsIgnoreCase(rs.getString("Chairs")) ? true : false);
				classjson.put("ChairsCount", rs.getInt("Chairs_Count"));
				classjson.put("TubeLights", "Y".equalsIgnoreCase(rs.getString("TubeLights")) ? true : false);
				classjson.put("TubeLightsCount", rs.getInt("TubeLights_Count"));
				classjson.put("Bulbs", "Y".equalsIgnoreCase(rs.getString("Bulbs")) ? true : false);
				classjson.put("BulbsCount", rs.getInt("Bulbs_Count"));
				classjson.put("ReadingTables", "Y".equalsIgnoreCase(rs.getString("ReadingTables")) ? true : false);
				classjson.put("ReadingTablesCount", rs.getInt("ReadingTables_Count"));
				classjson.put("STypeChairs", "Y".equalsIgnoreCase(rs.getString("S-Type-Chairs")) ? true : false);
				classjson.put("STypeChairsCount", rs.getInt("S-Type-Chairs_Count"));
				classjson.put("GDAlmira", "Y".equalsIgnoreCase(rs.getString("Glass-Door-Almira")) ? true : false);
				classjson.put("GDAlmiraCount", rs.getInt("Glass-Door-Almira_Count"));
				classjson.put("SWA", "Y".equalsIgnoreCase(rs.getString("Store-Well-Almira")) ? true : false);
				classjson.put("SWACount", rs.getInt("Store-Well-Almira_Count"));
				classjson.put("Stools", "Y".equalsIgnoreCase(rs.getString("Stools")) ? true : false);
				classjson.put("StoolsCount", rs.getInt("Stools_Count"));
				classjson.put("LockerUnits", "Y".equalsIgnoreCase(rs.getString("Locker-Units")) ? true : false);
				classjson.put("LockerUnitsCount", rs.getInt("Locker-Units_Count"));
				classjson.put("GrBd", "Y".equalsIgnoreCase(rs.getString("Green-Boards")) ? true : false);
				classjson.put("GrBdCount", rs.getInt("Green-Boards_Count"));
				classjson.put("DualDesks", "Y".equalsIgnoreCase(rs.getString("Dual-Desk")) ? true : false);
				classjson.put("DualDesksCount", rs.getInt("Dual-Desk_Count"));
				classjson.put("floor", rs.getString("Floor"));
			} catch (InvalidResultSetAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			jsonArray.put(classjson);
		}

		
		try {
			responseDetailsJson.put("classdetails", jsonArray);
			responseDetailsJson.put("arraysize", jsonArray.length());
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return responseDetailsJson;

	}


}
