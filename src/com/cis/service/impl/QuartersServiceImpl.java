package com.cis.service.impl;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.cis.dao.QuatersDao;
import com.cis.service.QuartersService;

@Service
public class QuartersServiceImpl implements QuartersService {
	
	private QuatersDao quatersDao;

	@Autowired
	public void setQuartersService(QuatersDao quatersDao) {
		this.quatersDao = quatersDao;
	}
	
	@Override
	public JSONObject getStaffQuatersDetails(int instituteid) {
				return quatersDao.getStaffQuatersDetails(instituteid);
	}
	
	@Override
	public JSONObject getPrincQuatersDetails(int instituteid){
		return quatersDao.getPrincQuatersDetails(instituteid);
	}
	
	@Override
	public JSONObject getPorticoeNUtility(int staffquarterId,String tablename, String wherecolumn,int buildingid){
		return quatersDao.getPorticoeNUtility(staffquarterId, tablename, wherecolumn);
	}
	
	@Override
	public JSONObject getToiletDetails(int staffquarterId,String tablename, String wherecolumn, int buildingid)
	{
		return  quatersDao.getToiletDetails(staffquarterId, tablename, wherecolumn);
	}
	
	@Override
	public JSONObject getKitchenDetails(int staffquarterId,String tablename, String wherecolumn, int buildingid){
		return quatersDao.getKitchenDetails(staffquarterId, tablename, wherecolumn);
	}
	
	@Override
	public JSONObject getRoomDetails(int staffquarterId,String tablename, String wherecolumn, int buildingid ){
		return  quatersDao.getRoomDetails(staffquarterId, tablename, wherecolumn,buildingid);
	}
	
	@Override
	public JSONObject getTableDetails(int id,String tablename, String wherecolumn )
	{
		return quatersDao.getTableDetails(id, tablename, wherecolumn);
	}
}
