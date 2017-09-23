package com.cis.dao;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.InvalidResultSetAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Repository;

@Repository
public class DormitoryDao {
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
	public DormitoryDao(JdbcTemplate jdbcTemplate,NamedParameterJdbcTemplate namedJdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
		this.jdbcNamedTemplate = namedJdbcTemplate;
	}
	public JSONObject getDormitoryDetails(int instituteid) {
		String sqlQuery = "";
		sqlQuery ="select Dormitory_Id,Institution_Id,Warden_Hall,Office_Hall,Waiting_Hall,Clinic_Hall,Toilets,Bathrooms,Common_Area FROM Dormitory where Institution_Id= "+instituteid+" ";
		SqlRowSet rs = getJdbcTemplate().queryForRowSet(sqlQuery.toString());
		JSONObject schoolDetailsJson = new JSONObject();
		while (rs.next()) {
			try {
				schoolDetailsJson.put("Dormitory_Id", rs.getInt("Dormitory_Id"));
				schoolDetailsJson.put("Institution_Id", rs.getInt("Institution_Id"));
				schoolDetailsJson.put("Warden_Hall","Y".equalsIgnoreCase(rs.getString("Warden_Hall")) ? true : false);
				schoolDetailsJson.put("Office_Hall","Y".equalsIgnoreCase(rs.getString("Office_Hall")) ? true : false);
				schoolDetailsJson.put("Waiting_Hall","Y".equalsIgnoreCase(rs.getString("Waiting_Hall")) ? true : false);
				schoolDetailsJson.put("Clinic_Hall","Y".equalsIgnoreCase(rs.getString("Clinic_Hall")) ? true : false);
				schoolDetailsJson.put("Toilets", "Y".equalsIgnoreCase(rs.getString("Toilets")) ? true : false);
				schoolDetailsJson.put("Bathrooms", "Y".equalsIgnoreCase(rs.getString("Bathrooms")) ? true : false);
				schoolDetailsJson.put("Common_Area", "Y".equalsIgnoreCase(rs.getString("Common_Area")) ? true : false);
			} catch (InvalidResultSetAccessException e) {
				e.printStackTrace();
			} catch (JSONException e) {
				e.printStackTrace();
			}
		}
		return schoolDetailsJson;
	}
	public JSONObject getDmHallData(int Institution_Id) {
		String query ="select Institution_Id,Dormitory_Id,Hall_Id from D_Hall where  Institution_Id = "+Institution_Id+" ";
		System.out.println(query.toString());
		JSONObject responseDetailsJson = new JSONObject();
		JSONArray jsonArray = new JSONArray();
		SqlRowSet rs = getJdbcTemplate().queryForRowSet(query.toString());
		JSONObject DormitoryDetailsJson = new JSONObject();
		while (rs.next()) {
			try {
				DormitoryDetailsJson.put("Dormitory_Id", rs.getInt("Dormitory_Id"));
				DormitoryDetailsJson.put("Institution_Id", rs.getInt("Institution_Id"));
				DormitoryDetailsJson.put("Hall_Id", rs.getInt("Hall_Id"));
				System.out.println(DormitoryDetailsJson);
				jsonArray.put(DormitoryDetailsJson);
			} catch (InvalidResultSetAccessException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (JSONException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		try {
			responseDetailsJson.put("dmHall", jsonArray);
			responseDetailsJson.put("arraysize", jsonArray.length());
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return responseDetailsJson;
	} 
	
	public JSONObject getHallData(int Institution_Id,int hallId) {
		String query ="select Institution_Id,Dormitory_Id,Hall_Id,Block_Id,Floor_Id,Plinth_Area,Ceiling_Fans,Ceiling_Fans_Count,TubeLights,TubeLights_Count, "
					+ " Bulbs,Bulbs_Count,Glass_Door_Almira,Glass_Door_Almira_Count,Store_Well_Almira,Store_Well_Almira_Count,S_Type_Chairs, "
					+ " S_Type_Chairs_Count,Chairs,Chairs_Count,Tables,Tables_Count,Stools,Stools_Count,Wall_Mount_Fans,Wall_Mount_Fans_Count,"
					+ " Pedestal_Fans,Pedestal_Fans_Count,Doors,Doors_Count,Windows,Windows_Count,Cots,Cots_Count,two_tier_cots,two_tier_cots_Count "
					+ " from D_Hall where  Institution_Id = "+Institution_Id+" AND Hall_Id="+hallId+" ";
		System.out.println("getHallData  "+query.toString());
		SqlRowSet rs = getJdbcTemplate().queryForRowSet(query.toString());
		JSONObject DormitoryDetailsJson = new JSONObject();
		while (rs.next()) {
			try {
				DormitoryDetailsJson.put("Dormitory_Id", rs.getInt("Dormitory_Id"));
				DormitoryDetailsJson.put("Institution_Id", rs.getInt("Institution_Id"));
				DormitoryDetailsJson.put("Hall_Id", rs.getInt("Hall_Id"));
				DormitoryDetailsJson.put("Block_Id", rs.getInt("Block_Id"));
				DormitoryDetailsJson.put("Floor_Id", rs.getInt("Floor_Id"));
				DormitoryDetailsJson.put("Plinth_Area", rs.getInt("Plinth_Area"));
				DormitoryDetailsJson.put("Ceiling_Fans", "Y".equalsIgnoreCase(rs.getString("Ceiling_Fans")) ? true : false);
				DormitoryDetailsJson.put("Ceiling_Fans_Count", rs.getInt("Ceiling_Fans_Count"));
				DormitoryDetailsJson.put("TubeLights", "Y".equalsIgnoreCase(rs.getString("TubeLights")) ? true : false);
				DormitoryDetailsJson.put("TubeLights_Count", rs.getInt("TubeLights_Count"));
				DormitoryDetailsJson.put("Bulbs", "Y".equalsIgnoreCase(rs.getString("Bulbs")) ? true : false);
				DormitoryDetailsJson.put("Bulbs_Count", rs.getInt("Bulbs_Count"));
				DormitoryDetailsJson.put("Glass_Door_Almira", "Y".equalsIgnoreCase(rs.getString("Glass_Door_Almira")) ? true : false);
				DormitoryDetailsJson.put("Glass_Door_Almira_Count", rs.getInt("Glass_Door_Almira_Count"));
				DormitoryDetailsJson.put("Store_Well_Almira", "Y".equalsIgnoreCase(rs.getString("Store_Well_Almira")) ? true : false);
				DormitoryDetailsJson.put("Store_Well_Almira_Count", rs.getInt("Store_Well_Almira_Count"));
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
				DormitoryDetailsJson.put("Cots", "Y".equalsIgnoreCase(rs.getString("Cots")) ? true : false);
				DormitoryDetailsJson.put("Cots_Count", rs.getInt("Cots_Count"));
				DormitoryDetailsJson.put("two_tier_cots", "Y".equalsIgnoreCase(rs.getString("two_tier_cots")) ? true : false);
				DormitoryDetailsJson.put("two_tier_cots_Count", rs.getInt("two_tier_cots_Count"));
				System.out.println(DormitoryDetailsJson);
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
	
	public JSONObject getDmWardenHallDetails(int dormitoryId) {
		String query ="select Dormitory_Id,Warden_Id,Block_Id,Floor_Id,Plinth_Area,Ceiling_Fans,Ceiling_Fans_Count,TubeLights,TubeLights_Count, "
					+ " Bulbs,Bulbs_Count,Glass_Door_Almira,Glass_Door_Almira_Count,Store_Well_Almira,Store_Well_Almira_Count,S_Type_Chairs, "
					+ " S_Type_Chairs_Count,Chairs,Chairs_Count,Tables,Tables_Count,Stools,Stools_Count,Wall_Mount_Fans,Wall_Mount_Fans_Count,"
					+ " Pedestal_Fans,Pedestal_Fans_Count,Doors,Doors_Count,Windows,Windows_Count,Cots,Cots_Count,Ventilators,Ventilators_Count "
					+ " from D_Warden_Hall where  Dormitory_Id = "+dormitoryId+" ";
		System.out.println(query.toString());
		SqlRowSet rs = getJdbcTemplate().queryForRowSet(query.toString());
		JSONObject DormitoryDetailsJson = new JSONObject();
		while (rs.next()) {
			try {
				DormitoryDetailsJson.put("Dormitory_Id", rs.getInt("Dormitory_Id"));
				DormitoryDetailsJson.put("Warden_Id", rs.getInt("Warden_Id"));
				DormitoryDetailsJson.put("Block_Id", rs.getInt("Block_Id"));
				DormitoryDetailsJson.put("Floor_Id", rs.getInt("Floor_Id"));
				DormitoryDetailsJson.put("Plinth_Area", rs.getInt("Plinth_Area"));
				DormitoryDetailsJson.put("Ceiling_Fans", "Y".equalsIgnoreCase(rs.getString("Ceiling_Fans")) ? true : false);
				DormitoryDetailsJson.put("Ceiling_Fans_Count", rs.getInt("Ceiling_Fans_Count"));
				DormitoryDetailsJson.put("TubeLights", "Y".equalsIgnoreCase(rs.getString("TubeLights")) ? true : false);
				DormitoryDetailsJson.put("TubeLights_Count", rs.getInt("TubeLights_Count"));
				DormitoryDetailsJson.put("Bulbs", "Y".equalsIgnoreCase(rs.getString("Bulbs")) ? true : false);
				DormitoryDetailsJson.put("Bulbs_Count", rs.getInt("Bulbs_Count"));
				DormitoryDetailsJson.put("Glass_Door_Almira", "Y".equalsIgnoreCase(rs.getString("Glass_Door_Almira")) ? true : false);
				DormitoryDetailsJson.put("Glass_Door_Almira_Count", rs.getInt("Glass_Door_Almira_Count"));
				DormitoryDetailsJson.put("Store_Well_Almira", "Y".equalsIgnoreCase(rs.getString("Store_Well_Almira")) ? true : false);
				DormitoryDetailsJson.put("Store_Well_Almira_Count", rs.getInt("Store_Well_Almira_Count"));
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
				DormitoryDetailsJson.put("Cots", "Y".equalsIgnoreCase(rs.getString("Cots")) ? true : false);
				DormitoryDetailsJson.put("Cots_Count", rs.getInt("Cots_Count"));
				DormitoryDetailsJson.put("Ventilators", "Y".equalsIgnoreCase(rs.getString("Ventilators")) ? true : false);
				DormitoryDetailsJson.put("Ventilators_Count", rs.getInt("Ventilators_Count"));
				System.out.println(DormitoryDetailsJson);
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
	
//2
	public JSONObject getDmOfficeDetails(int dormitoryId) {
		String query ="select Dormitory_Id,Office_Id,Block_Id,Floor_Id,Plinth_Area,Ceiling_Fans,Ceiling_Fans_Count,TubeLights,TubeLights_Count, "
					+ " Bulbs,Bulbs_Count,Glass_Door_Almira,Glass_Door_Almira_Count,Store_Well_Almira,Store_Well_Almira_Count,S_Type_Chairs, "
					+ " S_Type_Chairs_Count,Chairs,Chairs_Count,Tables,Tables_Count,Stools,Stools_Count,Wall_Mount_Fans,Wall_Mount_Fans_Count, "
					+ " Pedestal_Fans,Pedestal_Fans_Count,Doors,Doors_Count,Windows,Windows_Count,Ventilators,Ventilators_Count "
					+ " from D_Office_Hall where  Dormitory_Id = "+dormitoryId+" ";
		
		SqlRowSet rs = getJdbcTemplate().queryForRowSet(query.toString());
		JSONObject DormitoryDetailsJson = new JSONObject();
		while (rs.next()) {
			try {
				DormitoryDetailsJson.put("Dormitory_Id", rs.getInt("Dormitory_Id"));
				DormitoryDetailsJson.put("Office_Id", rs.getInt("Office_Id"));
				DormitoryDetailsJson.put("Block_Id", rs.getInt("Block_Id"));
				DormitoryDetailsJson.put("Floor_Id", rs.getInt("Floor_Id"));
				DormitoryDetailsJson.put("Plinth_Area", rs.getInt("Plinth_Area"));
				DormitoryDetailsJson.put("Ceiling_Fans", "Y".equalsIgnoreCase(rs.getString("Ceiling_Fans")) ? true : false);
				DormitoryDetailsJson.put("Ceiling_Fans_Count", rs.getInt("Ceiling_Fans_Count"));
				DormitoryDetailsJson.put("TubeLights", "Y".equalsIgnoreCase(rs.getString("TubeLights")) ? true : false);
				DormitoryDetailsJson.put("TubeLights_Count", rs.getInt("TubeLights_Count"));
				DormitoryDetailsJson.put("Bulbs", "Y".equalsIgnoreCase(rs.getString("Bulbs")) ? true : false);
				DormitoryDetailsJson.put("Bulbs_Count", rs.getInt("Bulbs_Count"));
				DormitoryDetailsJson.put("Glass_Door_Almira", "Y".equalsIgnoreCase(rs.getString("Glass_Door_Almira")) ? true : false);
				DormitoryDetailsJson.put("Glass_Door_Almira_Count", rs.getInt("Glass_Door_Almira_Count"));
				DormitoryDetailsJson.put("Store_Well_Almira", "Y".equalsIgnoreCase(rs.getString("Store_Well_Almira")) ? true : false);
				DormitoryDetailsJson.put("Store_Well_Almira_Count", rs.getInt("Store_Well_Almira_Count"));
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
//3
	public JSONObject getDmWaitingHallDetails(int dormitoryId) {
		String query ="Select Dormitory_Id,Waiting_Id,Block_Id,Floor_Id,Plinth_Area,Ceiling_Fans,Ceiling_Fans_Count,TubeLights,TubeLights_Count, "
					+ " Bulbs,Bulbs_Count,S_Type_Chairs,S_Type_Chairs_Count,Chairs,Chairs_Count,Tables,Tables_Count,Stools,Stools_Count,Wall_Mount_Fans, "	
				    + " Wall_Mount_Fans_Count,Pedestal_Fans,Pedestal_Fans_Count,Doors,Doors_Count,Windows,Windows_Count,Ventilators,Ventilators_Count "
					+ " from D_Waiting_Hall where Dormitory_Id = "+dormitoryId+" ";
		
		SqlRowSet rs = getJdbcTemplate().queryForRowSet(query.toString());
		JSONObject DormitoryDetailsJson = new JSONObject();
		while (rs.next()) {
			try {
				DormitoryDetailsJson.put("Dormitory_Id", rs.getInt("Dormitory_Id"));
				DormitoryDetailsJson.put("Waiting_Id", rs.getInt("Waiting_Id"));
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

	//4
	public JSONObject getDmClinicDetails(int dormitoryId) {
		String query =" select Dormitory_Id,Clinic_Id,Block_Id,Floor_Id,Plinth_Area,Ceiling_Fans,Ceiling_Fans_Count,TubeLights,TubeLights_Count,Bulbs, "
					+ " Bulbs_Count,Glass_Door_Almira,Glass_Door_Almira_Count,Store_Well_Almira,Store_Well_Almira_Count, "
					+ " S_Type_Chairs,S_Type_Chairs_Count,Chairs,Chairs_Count,Tables,Tables_Count,Stools,Stools_Count, "
					+ " Wall_Mount_Fans,Wall_Mount_Fans_Count,Pedestal_Fans,Pedestal_Fans_Count,Doors,Doors_Count,Windows,Windows_Count,Cots, "
					+ " Cots_Count,Ventilators,Ventilators_Count from D_Clinic where  Dormitory_Id = "+dormitoryId+" ";
		
		SqlRowSet rs = getJdbcTemplate().queryForRowSet(query.toString());
		JSONObject DormitoryDetailsJson = new JSONObject();
		while (rs.next()) {
			try {
				DormitoryDetailsJson.put("Dormitory_Id", rs.getInt("Dormitory_Id"));
				DormitoryDetailsJson.put("Clinic_Id", rs.getInt("Clinic_Id"));
				DormitoryDetailsJson.put("Block_Id", rs.getInt("Block_Id"));
				DormitoryDetailsJson.put("Floor_Id", rs.getInt("Floor_Id"));
				DormitoryDetailsJson.put("Plinth_Area", rs.getInt("Plinth_Area"));
				DormitoryDetailsJson.put("Ceiling_Fans", "Y".equalsIgnoreCase(rs.getString("Ceiling_Fans")) ? true : false);
				DormitoryDetailsJson.put("Ceiling_Fans_Count", rs.getInt("Ceiling_Fans_Count"));
				DormitoryDetailsJson.put("TubeLights", "Y".equalsIgnoreCase(rs.getString("TubeLights")) ? true : false);
				DormitoryDetailsJson.put("TubeLights_Count", rs.getInt("TubeLights_Count"));
				DormitoryDetailsJson.put("Bulbs", "Y".equalsIgnoreCase(rs.getString("Bulbs")) ? true : false);
				DormitoryDetailsJson.put("Bulbs_Count", rs.getInt("Bulbs_Count"));
				DormitoryDetailsJson.put("Glass_Door_Almira", "Y".equalsIgnoreCase(rs.getString("Glass_Door_Almira")) ? true : false);
				DormitoryDetailsJson.put("Glass_Door_Almira_Count", rs.getInt("Glass_Door_Almira_Count"));
				DormitoryDetailsJson.put("Store_Well_Almira", "Y".equalsIgnoreCase(rs.getString("Store_Well_Almira")) ? true : false);
				DormitoryDetailsJson.put("Store_Well_Almira_Count", rs.getInt("Store_Well_Almira_Count"));
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
				DormitoryDetailsJson.put("Cots", "Y".equalsIgnoreCase(rs.getString("Cots")) ? true : false);
				DormitoryDetailsJson.put("Cots_Count", rs.getInt("Cots_Count"));
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

	//5
	public JSONObject getDmToiletsDetails(int dormitoryId) {
		String query ="select Dormitory_Id,Toilets_Id,Exhaust_Fans,Exhaust_Fans_Count,TubeLights,TubeLights_Count,Bulbs,Bulbs_Count,Indian_Toilet, "
					+ " Indian_Toilet_Count,Water_Closet,Water_Closet_Count,Running_Water,Running_Water_Count,Flush_System,Flush_System_Count "
					+ " from D_Toilets where  Dormitory_Id = "+dormitoryId+" ";
		
		SqlRowSet rs = getJdbcTemplate().queryForRowSet(query.toString());
		JSONObject DormitoryDetailsJson = new JSONObject();
		while (rs.next()) {
			try {
				DormitoryDetailsJson.put("Dormitory_Id", rs.getInt("Dormitory_Id"));
				DormitoryDetailsJson.put("Toilets_Id", rs.getInt("Toilets_Id"));
				DormitoryDetailsJson.put("Exhaust_Fans", "Y".equalsIgnoreCase(rs.getString("Exhaust_Fans")) ? true : false);
				DormitoryDetailsJson.put("Exhaust_Fans_Count", rs.getInt("Exhaust_Fans_Count"));
				DormitoryDetailsJson.put("TubeLights", "Y".equalsIgnoreCase(rs.getString("TubeLights")) ? true : false);
				DormitoryDetailsJson.put("TubeLights_Count", rs.getInt("TubeLights_Count"));
				DormitoryDetailsJson.put("Bulbs", "Y".equalsIgnoreCase(rs.getString("Bulbs")) ? true : false);
				DormitoryDetailsJson.put("Bulbs_Count", rs.getInt("Bulbs_Count"));
				DormitoryDetailsJson.put("Indian_Toilet", "Y".equalsIgnoreCase(rs.getString("Indian_Toilet")) ? true : false);
				DormitoryDetailsJson.put("Indian_Toilet_Count", rs.getInt("Indian_Toilet_Count"));
				DormitoryDetailsJson.put("Water_Closet", "Y".equalsIgnoreCase(rs.getString("Water_Closet")) ? true : false);
				DormitoryDetailsJson.put("Water_Closet_Count", rs.getInt("Water_Closet_Count"));
				DormitoryDetailsJson.put("Running_Water", "Y".equalsIgnoreCase(rs.getString("Running_Water")) ? true : false);
				DormitoryDetailsJson.put("Running_Water_Count", rs.getInt("Running_Water_Count"));
				DormitoryDetailsJson.put("Flush_System", "Y".equalsIgnoreCase(rs.getString("Flush_System")) ? true : false);
				DormitoryDetailsJson.put("Flush_System_Count", rs.getInt("Flush_System_Count"));
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

	//6
	public JSONObject getDmBathroomDetails(int dormitoryId) {
		String query ="select Dormitory_Id,Bathrooms_Id,Exhaust_Fans,Exhaust_Fans_Count,TubeLights,TubeLights_Count,Bulbs,Bulbs_Count,Quantity, "
					+ " Quantity_Count,GeeZers,Geezers_Count,Washing_Area,Washing_Area_Count "
					+ " from D_Bathrooms where Dormitory_Id = "+dormitoryId+" ";
		
		SqlRowSet rs = getJdbcTemplate().queryForRowSet(query.toString());
		JSONObject DormitoryDetailsJson = new JSONObject();
		while (rs.next()) {
			try {
				DormitoryDetailsJson.put("Dormitory_Id", rs.getInt("Dormitory_Id"));
				DormitoryDetailsJson.put("Bathrooms_Id", rs.getInt("Bathrooms_Id"));
				DormitoryDetailsJson.put("Exhaust_Fans", "Y".equalsIgnoreCase(rs.getString("Exhaust_Fans")) ? true : false);
				DormitoryDetailsJson.put("Exhaust_Fans_Count", rs.getInt("Exhaust_Fans_Count"));
				DormitoryDetailsJson.put("TubeLights", "Y".equalsIgnoreCase(rs.getString("TubeLights")) ? true : false);
				DormitoryDetailsJson.put("TubeLights_Count", rs.getInt("TubeLights_Count"));
				DormitoryDetailsJson.put("Bulbs", "Y".equalsIgnoreCase(rs.getString("Bulbs")) ? true : false);
				DormitoryDetailsJson.put("Bulbs_Count", rs.getInt("Bulbs_Count"));
				DormitoryDetailsJson.put("Quantity", "Y".equalsIgnoreCase(rs.getString("Quantity")) ? true : false);
				DormitoryDetailsJson.put("Quantity_Count", rs.getInt("Quantity_Count"));
				DormitoryDetailsJson.put("GeeZers", "Y".equalsIgnoreCase(rs.getString("GeeZers")) ? true : false);
				DormitoryDetailsJson.put("Geezers_Count", rs.getInt("Geezers_Count"));
				DormitoryDetailsJson.put("Washing_Area", "Y".equalsIgnoreCase(rs.getString("Washing_Area")) ? true : false);
				DormitoryDetailsJson.put("Washing_Area_Count", rs.getInt("Washing_Area_Count"));
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

public JSONObject getDmCommonAreaDetails(int dormitoryId, String type) {
	String query ="select Dormitory_Id,CommonArea_Id,Entance_Lobby,Entance_Lobby_Count,Warandah,Warandah_Count,Stair_Case,Stair_Case_Count, "
				+ " Water_Tank_Count,Solor_Power_System,Solor_Power_System_Count,Inverters,Inverters_Count,Inverter_Capacity,Inverter_Capacity_Count "
				+ " from D_CommonArea where  Dormitory_Id = "+dormitoryId+" and  Building_Type ='"+type+"'";

SqlRowSet rs = getJdbcTemplate().queryForRowSet(query.toString());
JSONObject DormitoryDetailsJson = new JSONObject();
while (rs.next()) {
	try {
		DormitoryDetailsJson.put("Dormitory_Id", rs.getInt("Dormitory_Id"));
		DormitoryDetailsJson.put("CommonArea_Id", rs.getInt("CommonArea_Id"));
		DormitoryDetailsJson.put("Entance_Lobby", "Y".equalsIgnoreCase(rs.getString("Entance_Lobby")) ? true : false);
		DormitoryDetailsJson.put("Entance_Lobby_Count", rs.getInt("Entance_Lobby_Count"));
		DormitoryDetailsJson.put("Warandah", "Y".equalsIgnoreCase(rs.getString("Warandah")) ? true : false);
		DormitoryDetailsJson.put("Warandah_Count", rs.getInt("Warandah_Count"));
		DormitoryDetailsJson.put("Stair_Case", "Y".equalsIgnoreCase(rs.getString("Stair_Case")) ? true : false);
		DormitoryDetailsJson.put("Stair_Case_Count", rs.getInt("Stair_Case_Count"));
		DormitoryDetailsJson.put("Water_Tank_Count", rs.getInt("Water_Tank_Count"));
		DormitoryDetailsJson.put("Solor_Power_System", "Y".equalsIgnoreCase(rs.getString("Solor_Power_System")) ? true : false);
		DormitoryDetailsJson.put("Solor_Power_System_Count", rs.getInt("Solor_Power_System_Count"));
		DormitoryDetailsJson.put("Inverters", "Y".equalsIgnoreCase(rs.getString("Inverters")) ? true : false);
		DormitoryDetailsJson.put("Inverters_Count", rs.getInt("Inverters_Count"));
		DormitoryDetailsJson.put("Inverter_Capacity", "Y".equalsIgnoreCase(rs.getString("Inverter_Capacity")) ? true : false);
		DormitoryDetailsJson.put("Inverter_Capacity_Count", rs.getInt("Inverter_Capacity_Count"));
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