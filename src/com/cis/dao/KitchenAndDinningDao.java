package com.cis.dao;

import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.InvalidResultSetAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Repository;

@Repository
public class KitchenAndDinningDao {
	
private final JdbcTemplate jdbcTemplate;

	
	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}
	
	@Autowired
	public KitchenAndDinningDao(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
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
	
	

}
