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
public class QuatersDao {
	
	private final JdbcTemplate jdbcTemplate;

	
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}
	
	@Autowired
	public QuatersDao(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	
	public JSONObject getRoomDetails(int staffquarterId,String tablename, String wherecolumn, int buildingid )
	{
		StringBuilder query = new StringBuilder();

		query.append("select  Block_Id,Floor_Id,Length,Width,Plinth_Area,Table_Fans,Tables_Fans_Count,Ceiling_Fans,Ceiling_Fans_Count,TubeLights,");
		query.append(" TubeLights_Count,Bulbs,Bulbs_Count,Glass_Door_Almira,Glass_Door_Almira_Count, ");
		query.append("Store_Well_Almira,Store_Well_Almira_Count  ");
		query.append("	 from "+tablename+" where  Building_Id ="+buildingid+" and "+ wherecolumn+" = " + staffquarterId);
			
		SqlRowSet rs = getJdbcTemplate().queryForRowSet(query.toString());

		JSONObject roomjson = new JSONObject();
		
		while (rs.next()) {
		
			try {

				//roomjson.put("S_Living_Room_Id", rs.getInt("S_Living_Room_Id"));
				//roomjson.put("Staff_Quarter_Id", rs.getInt("Staff_Quarter_Id"));
				//roomjson.put("Floor_Id", rs.getInt("Floor_Id"));
				//roomjson.put("Block_Id", rs.getInt("Block_Id"));
				roomjson.put("Plinth", rs.getInt("Plinth_Area"));
				roomjson.put("Length", rs.getInt("Length"));
				roomjson.put("Width", rs.getInt("Width"));
				roomjson.put("TableFans", "Y".equalsIgnoreCase(rs.getString("Table_Fans")) ? true : false);
				roomjson.put("TableFansCount", rs.getInt("Tables_Fans_Count"));
				roomjson.put("CeilingFans", "Y".equalsIgnoreCase(rs.getString("Ceiling_Fans")) ? true : false);
				roomjson.put("CeilingFansCount", rs.getInt("Ceiling_Fans_Count"));
				roomjson.put("TubeLights", "Y".equalsIgnoreCase(rs.getString("TubeLights")) ? true : false);
				roomjson.put("TubeLightsCount", rs.getInt("TubeLights_Count"));
				roomjson.put("Bulbs", "Y".equalsIgnoreCase(rs.getString("Bulbs")) ? true : false);
				roomjson.put("BulbsCount", rs.getInt("Bulbs_Count"));
				roomjson.put("GDAlmira", "Y".equalsIgnoreCase(rs.getString("Glass_Door_Almira")) ? true : false);
				roomjson.put("GDAlmiraCount", rs.getInt("Glass_Door_Almira_Count"));
				roomjson.put("SWA", "Y".equalsIgnoreCase(rs.getString("Store_Well_Almira")) ? true : false);
				roomjson.put("SWACount", rs.getInt("Store_Well_Almira_Count"));
				
			} catch (InvalidResultSetAccessException e) {
				// TODO Auto_generated catch block
				e.printStackTrace();
			} catch (JSONException e) {
				// TODO Auto_generated catch block
				e.printStackTrace();
			}
			
		}
		
		return roomjson;

	}
	
	public JSONObject getToiletDetails(int staffquarterId,String tablename, String wherecolumn) {

		StringBuilder query = new StringBuilder();

		query.append("select Exhaust_Fans,Exhaust_Fans_Count, TubeLights, ");
		query.append(" TubeLights_Count,Bulbs,Bulbs_Count,Running_Water,Running_Water_Count,Water_Closet,Water_Closet_Count,Indian_Toilet,  ");
		query.append(" Indian_Toilet_Count,Flush_System,Flush_System_Count ");
		query.append("	 from "+tablename+" where "+ wherecolumn+" = " + staffquarterId);
			
		SqlRowSet rs = getJdbcTemplate().queryForRowSet(query.toString());

		JSONObject toiletdetailsJson = new JSONObject();

		while (rs.next()) {

			try {

				
				toiletdetailsJson.put("Exhaust_Fans_Count", rs.getInt("Exhaust_Fans_Count"));
				toiletdetailsJson.put("Exhaust_Fans", "Y".equalsIgnoreCase(rs.getString("Exhaust_Fans")) ? true : false);
				toiletdetailsJson.put("TubeLights", "Y".equalsIgnoreCase(rs.getString("TubeLights")) ? true : false);
				toiletdetailsJson.put("TubeLights_Count", rs.getInt("TubeLights_Count"));
				toiletdetailsJson.put("Bulbs", "Y".equalsIgnoreCase(rs.getString("Bulbs")) ? true : false);
				toiletdetailsJson.put("Bulbs_Count", rs.getInt("Bulbs_Count"));
				toiletdetailsJson.put("Running_Water", "Y".equalsIgnoreCase(rs.getString("Running_Water")) ? true : false);
				toiletdetailsJson.put("Running_Water_Count", rs.getInt("Running_Water_Count"));
				toiletdetailsJson.put("Water_Closets", "Y".equalsIgnoreCase(rs.getString("Water_Closet")) ? true : false);
				toiletdetailsJson.put("Water_Closets_Count", rs.getInt("Water_Closet_Count"));
				toiletdetailsJson.put("Indian_Toilets", "Y".equalsIgnoreCase(rs.getString("Indian_Toilet")) ? true : false);
				toiletdetailsJson.put("Indian_Toilets_Count", rs.getInt("Indian_Toilet_Count"));
				toiletdetailsJson.put("Flush_System", "Y".equalsIgnoreCase(rs.getString("Flush_System")) ? true : false);
				toiletdetailsJson.put("Flush_System_Count", rs.getInt("Flush_System_Count"));
				
			
			} catch (InvalidResultSetAccessException e) {
				// TODO Auto_generated catch block
				e.printStackTrace();
			} catch (JSONException e) {
				// TODO Auto_generated catch block
				e.printStackTrace();
			}
		}

		return toiletdetailsJson;

	}
	
	public JSONObject getKitchenDetails(int staffquarterId,String tablename, String wherecolumn) {

		StringBuilder query = new StringBuilder();

		query.append("select Exhaust_Fans,Exhaust_Fans_Count, TubeLights, ");
		query.append(" TubeLights_Count,Bulbs,Bulbs_Count,  ");
		query.append(" SinkFacility,SinkFacility_Count ");
		query.append("	 from "+tablename+" where "+ wherecolumn+" = " + staffquarterId);
			
		SqlRowSet rs = getJdbcTemplate().queryForRowSet(query.toString());

		JSONObject toiletdetailsJson = new JSONObject();

		while (rs.next()) {

			try {

				
				toiletdetailsJson.put("Exhaust_Fans_Count", rs.getInt("Exhaust_Fans_Count"));
				toiletdetailsJson.put("Exhaust_Fans", "Y".equalsIgnoreCase(rs.getString("Exhaust_Fans")) ? true : false);
				toiletdetailsJson.put("TubeLights", "Y".equalsIgnoreCase(rs.getString("TubeLights")) ? true : false);
				toiletdetailsJson.put("TubeLights_Count", rs.getInt("TubeLights_Count"));
				toiletdetailsJson.put("Bulbs", "Y".equalsIgnoreCase(rs.getString("Bulbs")) ? true : false);
				toiletdetailsJson.put("Bulbs_Count", rs.getInt("Bulbs_Count"));
				toiletdetailsJson.put("SinkFacility", "Y".equalsIgnoreCase(rs.getString("SinkFacility")) ? true : false);
				toiletdetailsJson.put("SinkFacility_Count", rs.getInt("SinkFacility_Count"));
				
				
			
			} catch (InvalidResultSetAccessException e) {
				// TODO Auto_generated catch block
				e.printStackTrace();
			} catch (JSONException e) {
				// TODO Auto_generated catch block
				e.printStackTrace();
			}
		}

		return toiletdetailsJson;

	}
	
	public JSONObject getPorticoeNUtility(int staffquarterId,String tablename, String wherecolumn) {

		StringBuilder query = new StringBuilder();

		query.append("select  TubeLights, ");
		query.append(" TubeLights_Count,Bulbs,Bulbs_Count  ");
		query.append("	 from "+tablename+" where "+ wherecolumn+" = " + staffquarterId);
			
		SqlRowSet rs = getJdbcTemplate().queryForRowSet(query.toString());

		JSONObject porticonutilJson = new JSONObject();

		while (rs.next()) {

			try {

				
				
				porticonutilJson.put("TubeLights", "Y".equalsIgnoreCase(rs.getString("TubeLights")) ? true : false);
				porticonutilJson.put("TubeLights_Count", rs.getInt("TubeLights_Count"));
				porticonutilJson.put("Bulbs", "Y".equalsIgnoreCase(rs.getString("Bulbs")) ? true : false);
				porticonutilJson.put("Bulbs_Count", rs.getInt("Bulbs_Count"));
				
			
			} catch (InvalidResultSetAccessException e) {
				// TODO Auto_generated catch block
				e.printStackTrace();
			} catch (JSONException e) {
				// TODO Auto_generated catch block
				e.printStackTrace();
			}
		}

		return porticonutilJson;

	}
	
	public JSONObject getStaffQuatersDetails(int instituteid) {

		StringBuilder query = new StringBuilder();

		query.append(
				"select Staff_Quarter_Id, Living_Room, Dining_Room,  Bed_Room1, Bed_Room2 ,  Toilets , Kitchen, Building_Id,Block,Floor,Staff_Quarters_Type,Has_Separate_Meter ")
				.append("  from StaffQuarters where  Institution_Id ="
						+ instituteid);

		SqlRowSet rs = getJdbcTemplate().queryForRowSet(query.toString());
		
		JSONObject responseDetailsJson = new JSONObject();
		JSONArray jsonArray = new JSONArray();

		while (rs.next()) {
			
			JSONObject staffQjson = new JSONObject();

			try {
				
				staffQjson.put("Living_Room","Y".equalsIgnoreCase(rs.getString("Living_Room")) ? true : false);
				staffQjson.put("Dining_Room", "Y".equalsIgnoreCase(rs.getString("Dining_Room")) ? true : false);
				staffQjson.put("Bed_Room1", "Y".equalsIgnoreCase(rs.getString("Bed_Room1")) ? true : false);
				staffQjson.put("Bed_Room2", "Y".equalsIgnoreCase(rs.getString("Bed_Room2")) ? true : false);
				staffQjson.put("Toilets", "Y".equalsIgnoreCase(rs.getString("Toilets")) ? true : false);
				staffQjson.put("Kitchen", "Y".equalsIgnoreCase(rs.getString("Kitchen")) ? true : false);
				staffQjson.put("Building_Id", rs.getInt("Building_Id"));
				staffQjson.put("Staff_Quarter_Id", rs.getInt("Staff_Quarter_Id"));
				staffQjson.put("Block", rs.getString("Block"));
				staffQjson.put("Floor", rs.getString("Floor"));
				staffQjson.put("Staff_Quarters_Type", rs.getString("Staff_Quarters_Type"));
				staffQjson.put("Has_Separate_Meter","Y".equalsIgnoreCase(rs.getString("Has_Separate_Meter")) ? true : false);
				
			} catch (InvalidResultSetAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			jsonArray.put(staffQjson);
		}

		try {
			responseDetailsJson.put("staffquarter", jsonArray);
			responseDetailsJson.put("arraysize", jsonArray.length());
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return responseDetailsJson;
	}

	public JSONObject getPrincQuatersDetails(int instituteid) {

		StringBuilder query = new StringBuilder();

		query.append(
				"select Building_Id,Principal_Quarter_Id,Living_Room, Dining_Room,  Bed_Room1, Bed_Room2 ,  Toilets , Kitchen, Portico, Utility,Block,Floor,Staff_Quarters_Type,Has_Separate_Meter  ")
				.append("  from PrincipalQuarters where  Institution_Id ="
						+ instituteid);

		SqlRowSet rs = getJdbcTemplate().queryForRowSet(query.toString());
		
		JSONObject responseDetailsJson = new JSONObject();
		JSONArray jsonArray = new JSONArray();

		
		
		while (rs.next()) {
			
			JSONObject princqjson = new JSONObject();

			try {
				
				princqjson.put("Living_Room","Y".equalsIgnoreCase(rs.getString("Living_Room")) ? true : false);
				princqjson.put("Dining_Room", "Y".equalsIgnoreCase(rs.getString("Dining_Room")) ? true : false);
				princqjson.put("Bed_Room1", "Y".equalsIgnoreCase(rs.getString("Bed_Room1")) ? true : false);
				princqjson.put("Bed_Room2", "Y".equalsIgnoreCase(rs.getString("Bed_Room2")) ? true : false);
				princqjson.put("Toilets", "Y".equalsIgnoreCase(rs.getString("Toilets")) ? true : false);
				princqjson.put("Kitchen", "Y".equalsIgnoreCase(rs.getString("Kitchen")) ? true : false);
				princqjson.put("Portico", "Y".equalsIgnoreCase(rs.getString("Portico")) ? true : false);
				princqjson.put("Utility", "Y".equalsIgnoreCase(rs.getString("Utility")) ? true : false);
				princqjson.put("Building_Id", rs.getInt("Building_Id"));
				princqjson.put("Principal_Quarter_Id", rs.getInt("Principal_Quarter_Id"));
				princqjson.put("Block", rs.getString("Block"));
				princqjson.put("Floor", rs.getString("Floor"));
				princqjson.put("Staff_Quarters_Type", rs.getString("Staff_Quarters_Type"));
				princqjson.put("Has_Separate_Meter","Y".equalsIgnoreCase(rs.getString("Has_Separate_Meter")) ? true : false);
				
			} catch (InvalidResultSetAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
				
				jsonArray.put(princqjson);
			}

			try {
				responseDetailsJson.put("princquarter", jsonArray);
				responseDetailsJson.put("arraysize", jsonArray.length());
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			return responseDetailsJson;
	}
	
	public JSONObject getTableDetails(int id,String tablename, String wherecolumn )
	{
		StringBuilder query = new StringBuilder();

		query.append("select * from "+tablename+" where "+wherecolumn+" = "+id);
		
			
		SqlRowSet rs = getJdbcTemplate().queryForRowSet(query.toString());

		JSONObject utiljson = new JSONObject();
		String [] colnames = rs.getMetaData().getColumnNames();
		while (rs.next()) {
			
			for(String colname : colnames)
			{
				try {
					utiljson.put(colname, rs.getString(colname));
				} catch (InvalidResultSetAccessException | JSONException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		
		}
		return utiljson;
	}

	public JSONObject getEPWHallDetails(int id,String tablename, String wherecolumn )
	{
		String query ="Select Institution_Id,EP_Waiting_Id,Block_Id,Floor_Id,Plinth_Area,Ceiling_Fans,Ceiling_Fans_Count,TubeLights,TubeLights_Count, "
				+ " Bulbs,Bulbs_Count,S_Type_Chairs,S_Type_Chairs_Count,Chairs,Chairs_Count,Tables,Tables_Count,Stools,Stools_Count,Wall_Mount_Fans, "	
			    + " Wall_Mount_Fans_Count,Pedestal_Fans,Pedestal_Fans_Count,Doors,Doors_Count,Windows,Windows_Count,Ventilators,Ventilators_Count "
				+ " from EP_WaitingHall where Institution_Id = "+id+" ";
	
	SqlRowSet rs = getJdbcTemplate().queryForRowSet(query.toString());
	JSONObject DormitoryDetailsJson = new JSONObject();
	while (rs.next()) {
		try {
			DormitoryDetailsJson.put("Institution_Id", rs.getInt("Institution_Id"));
			DormitoryDetailsJson.put("EP_Waiting_Id", rs.getInt("EP_Waiting_Id"));
			DormitoryDetailsJson.put("Block_Id", rs.getInt("Block_Id"));
			DormitoryDetailsJson.put("Floor_Id", rs.getInt("Floor_Id"));
			DormitoryDetailsJson.put("Plinth_Area", rs.getInt("Plinth_Area"));
			DormitoryDetailsJson.put("Ceiling_Fans", "Y".equalsIgnoreCase(rs.getString("Ceiling_Fans")) ? true : false);
			DormitoryDetailsJson.put("Ceiling_Fans_Count", rs.getInt("Ceiling_Fans_Count"));
			DormitoryDetailsJson.put("TubeLights", "Y".equalsIgnoreCase(rs.getString("TubeLights")) ? true : false);
			DormitoryDetailsJson.put("TubeLights_Count", rs.getInt("TubeLights_Count"));
			DormitoryDetailsJson.put("Bulbs", "Y".equalsIgnoreCase(rs.getString("Bulbs")) ? true : false);
			DormitoryDetailsJson.put("Bulbs_Count", rs.getInt("Bulbs_Count"));
			DormitoryDetailsJson.put("S_Type_Chairs", "Y".equalsIgnoreCase(rs.getString("S_Type_Chairs")) ? true : false);
			DormitoryDetailsJson.put("S_Type_Chairs_Count", rs.getInt("S_Type_Chairs_Count"));
			DormitoryDetailsJson.put("Chairs", "Y".equalsIgnoreCase(rs.getString("Chairs")) ? true : false);
			DormitoryDetailsJson.put("Chairs_Count", rs.getInt("Chairs_Count"));
			DormitoryDetailsJson.put("Tables", "Y".equalsIgnoreCase(rs.getString("Tables")) ? true : false);
			DormitoryDetailsJson.put("Tables_Count", rs.getInt("Tables_Count"));
			DormitoryDetailsJson.put("Stools", "Y".equalsIgnoreCase(rs.getString("Stools")) ? true : false);
			DormitoryDetailsJson.put("Stools_Count", rs.getInt("Stools_Count"));
			DormitoryDetailsJson.put("Wall_Mount_Fans", "Y".equalsIgnoreCase(rs.getString("Wall_Mount_Fans")) ? true : false);
			DormitoryDetailsJson.put("Wall_Mount_Fans_Count", rs.getInt("Wall_Mount_Fans_Count"));
			DormitoryDetailsJson.put("Pedestal_Fans", "Y".equalsIgnoreCase(rs.getString("Pedestal_Fans")) ? true : false);
			DormitoryDetailsJson.put("Pedestal_Fans_Count", rs.getInt("Pedestal_Fans_Count"));
			DormitoryDetailsJson.put("Doors", "Y".equalsIgnoreCase(rs.getString("Doors")) ? true : false);
			DormitoryDetailsJson.put("Doors_Count", rs.getInt("Doors_Count"));
			DormitoryDetailsJson.put("Windows", "Y".equalsIgnoreCase(rs.getString("Windows")) ? true : false);
			DormitoryDetailsJson.put("Windows_Count", rs.getInt("Windows_Count"));
			DormitoryDetailsJson.put("Ventilators", "Y".equalsIgnoreCase(rs.getString("Ventilators")) ? true : false);
			DormitoryDetailsJson.put("Ventilators_Count", rs.getInt("Ventilators_Count"));
		} catch (InvalidResultSetAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	return DormitoryDetailsJson;
	}
}
