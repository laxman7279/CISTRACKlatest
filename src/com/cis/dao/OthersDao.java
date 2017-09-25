package com.cis.dao;

import java.util.HashMap;
import java.util.Map;

import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.InvalidResultSetAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;

@Repository
public class OthersDao {
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
	public OthersDao(JdbcTemplate jdbcTemplate,NamedParameterJdbcTemplate namedJdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
		this.jdbcNamedTemplate = namedJdbcTemplate;
	}
	
	public void updateKitchenDetails(JSONObject jsonObject) { 
		try {
			String STAFF_QUARTERS_OBJECT_MERGE_SQL = "INSERT INTO Kitchen (Kitchen_Id,Institution_Id,RunningWaterConnection,CookingType,DrainageSystem,"+
						" WashArea,WashPlinth,SizeofWashArea,DryStorageArea,WetStorageArea,CuttingRoom,GasStorageRoom,KitchenShed,KitchenShedSize) "+
						" VALUES (:kitchenId,:institutionId,:runningWaterConnection,:cookingType,:drainageSystem,:washArea,:washPlinth,"+
						" :sizeofWashArea,:dryStorageArea,:wetStorageArea,:cuttingRoom,:gasStorageRoom,:kitchenShed,:kitchenShedSize )"+
						"ON DUPLICATE KEY UPDATE RunningWaterConnection=:runningWaterConnection,CookingType=:cookingType,DrainageSystem=:drainageSystem,"+
						" WashArea=:washArea,WashPlinth=:washPlinth,SizeofWashArea=:sizeofWashArea,DryStorageArea=:dryStorageArea,"+
						" WetStorageArea=:wetStorageArea,CuttingRoom=:cuttingRoom,GasStorageRoom=:gasStorageRoom,"+
						" KitchenShed=:kitchenShed,KitchenShedSize=:kitchenShedSize";
			Map<String, Object> paramMap = new Gson().fromJson(jsonObject.toString(), new TypeToken<HashMap<String, Object>>() {}.getType());
			System.out.println(":::::"+STAFF_QUARTERS_OBJECT_MERGE_SQL.toString()); 
			System.out.println(":::::"+paramMap.toString());
			getNamedJdbcTemplate().update(STAFF_QUARTERS_OBJECT_MERGE_SQL, paramMap);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	public void updateDinningDetails(JSONObject jsonObject) { 
		try {
			String STAFF_QUARTERS_OBJECT_MERGE_SQL = "INSERT INTO DiningDetails (Dinning_id,Institution_Id,DinningPlinth,SeatingCapacity,FixedTablesCount,"+
						" FixedStoolsCount,FixedBenchesCount,MovableTableCount,MovableStoolsCount,MovableBenchesCount,HandWashAreaCount,"+
						" DrinkingWaterTaps,NumOfWaterTaps) "+
						" VALUES (:dinningId,:institutionId,:dinningPlinth,:seatingCapacity,:fixedTablesCount,:fixedStoolsCount,:fixedBenchesCount,"+
						" :movableTableCount,:movableStoolsCount,:movableBenchesCount,:handWashAreaCount,:drinkingWaterTaps,:numOfWaterTaps )"+
						"ON DUPLICATE KEY UPDATE DinningPlinth=:dinningPlinth,SeatingCapacity=:seatingCapacity,FixedTablesCount=:fixedTablesCount,"+
						" FixedStoolsCount=:fixedStoolsCount,FixedBenchesCount=:fixedBenchesCount,MovableTableCount=:movableTableCount,"+
						" MovableStoolsCount=:movableStoolsCount,MovableBenchesCount=:movableBenchesCount,HandWashAreaCount=:handWashAreaCount,"+
						" DrinkingWaterTaps=:drinkingWaterTaps,NumOfWaterTaps=:numOfWaterTaps";
			Map<String, Object> paramMap = new Gson().fromJson(jsonObject.toString(), new TypeToken<HashMap<String, Object>>() {}.getType());
			System.out.println(":::::"+STAFF_QUARTERS_OBJECT_MERGE_SQL.toString()); 
			System.out.println(":::::"+paramMap.toString());
			System.out.println(":::::"+getExecuteSql(STAFF_QUARTERS_OBJECT_MERGE_SQL, paramMap));
			getNamedJdbcTemplate().update(STAFF_QUARTERS_OBJECT_MERGE_SQL, paramMap);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	public void updateOtherDetails(JSONObject jsonObject) { 
		try {
			String STAFF_QUARTERS_OBJECT_MERGE_SQL = "INSERT INTO OtherDetails (Others_Id,Institution_Id,CompoundWall,GuardRoom,PowerSupply,"+
						" InternalRoads,ExtWaterSupp,SanitarySystem,OverheadTank,PlayGround) "+
						" VALUES (:othersId,:institutionId,:compoundWall,:guardRoom,:powerSupply,:internalRoads,:extWaterSupp,"+
						" :sanitarySystem,:overheadTank,:playGround )"+
						"ON DUPLICATE KEY UPDATE CompoundWall=:compoundWall,GuardRoom=:guardRoom,PowerSupply=:powerSupply,"+
						" InternalRoads=:internalRoads,ExtWaterSupp=:extWaterSupp,SanitarySystem=:sanitarySystem,"+
						" OverheadTank=:overheadTank,PlayGround=:playGround";
			Map<String, Object> paramMap = new Gson().fromJson(jsonObject.toString(), new TypeToken<HashMap<String, Object>>() {}.getType());
			System.out.println(":::::"+STAFF_QUARTERS_OBJECT_MERGE_SQL.toString()); 
			System.out.println(":::::"+paramMap.toString());
			getNamedJdbcTemplate().update(STAFF_QUARTERS_OBJECT_MERGE_SQL, paramMap);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void updateComponentWallDetails(JSONObject jsonObject) { 
		try {
			String STAFF_QUARTERS_OBJECT_MERGE_SQL = "INSERT INTO CompoundWall (CompoundWall_id,Others_Id,Wallheight,TypeofWall,"+
						" NormalGates,BellMouthGates,FencingOvCompWall,FencingType) "+
						" VALUES (:othersId,:othersId,:wallheight,:typeofWall,:normalGates,:bellMouthGates,:fencingOvCompWall,:fencingType )"+
						"ON DUPLICATE KEY UPDATE Wallheight=:wallheight,TypeofWall=:typeofWall,NormalGates=:normalGates,"+
						" BellMouthGates=:bellMouthGates,FencingOvCompWall=:fencingOvCompWall,FencingType=:fencingType";
			Map<String, Object> paramMap = new Gson().fromJson(jsonObject.toString(), new TypeToken<HashMap<String, Object>>() {}.getType());
			System.out.println(":::::"+STAFF_QUARTERS_OBJECT_MERGE_SQL.toString()); 
			System.out.println(":::::"+paramMap.toString());
			System.out.println(":::::"+getExecuteSql(STAFF_QUARTERS_OBJECT_MERGE_SQL, paramMap));
			getNamedJdbcTemplate().update(STAFF_QUARTERS_OBJECT_MERGE_SQL, paramMap);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void updateGuardRoomDetails(JSONObject jsonObject) { 
		try {
			String STAFF_QUARTERS_OBJECT_MERGE_SQL = "INSERT INTO GuardRoom (GuardRoom_id,Others_Id,TypeOfRoom,TableFansCount,CeilingFansCount,"+
						" TubeLightCount,BulbsCount,TwoTierCotCount,CotsCount,GDAlmiraCount,SWAlmairaCount,PlintArea) "+
						" VALUES (:othersId,:othersId,:typeOfRoom,:tableFansCount,:ceilingFansCount,:tubeLightCount,:bulbsCount,"+
						" :twoTierCotCount,:cotsCount,:gDAlmiraCount,:sWAlmairaCount,:plintArea )"+
						"ON DUPLICATE KEY UPDATE TypeOfRoom=:typeOfRoom,TableFansCount=:tableFansCount,CeilingFansCount=:ceilingFansCount,"+
						" TubeLightCount=:tubeLightCount,BulbsCount=:bulbsCount,TwoTierCotCount=:twoTierCotCount,"+
						" CotsCount=:cotsCount,GDAlmiraCount=:gDAlmiraCount,SWAlmairaCount=:sWAlmairaCount,PlintArea=:plintArea";
			Map<String, Object> paramMap = new Gson().fromJson(jsonObject.toString(), new TypeToken<HashMap<String, Object>>() {}.getType());
			System.out.println(":::::"+STAFF_QUARTERS_OBJECT_MERGE_SQL.toString()); 
			System.out.println(":::::"+paramMap.toString());
			System.out.println(":::::"+getExecuteSql(STAFF_QUARTERS_OBJECT_MERGE_SQL, paramMap));
			getNamedJdbcTemplate().update(STAFF_QUARTERS_OBJECT_MERGE_SQL, paramMap);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void updatePowerSupplyDetails(JSONObject jsonObject) { 
		try {
			String STAFF_QUARTERS_OBJECT_MERGE_SQL = "INSERT INTO PowerSupply (PowerSupply_id,Others_Id,HasWiPowSupp,WiPowCapacity,"+
						" HasSoPowSupp,SoPowCapacity,HasElPowSupp,ElPowCapacity,HasGePowSupp,GePowCapacity,ELTransformer,ElTaCapacity) "+
						" VALUES (:othersId,:othersId,:hasWiPowSupp,:wiPowCapacity,:hasSoPowSupp,:soPowCapacity,:hasElPowSupp,:elPowCapacity,"+
						" :hasGePowSupp,:gePowCapacity,:eLTransformer,:elTaCapacity)"+
						"ON DUPLICATE KEY UPDATE HasWiPowSupp=:hasWiPowSupp,WiPowCapacity=:wiPowCapacity,HasSoPowSupp=:hasSoPowSupp,"+
						" SoPowCapacity=:soPowCapacity,HasElPowSupp=:hasElPowSupp,ElPowCapacity=:elPowCapacity,"+
						" HasGePowSupp=:hasGePowSupp,GePowCapacity=:gePowCapacity,ELTransformer=:eLTransformer,ElTaCapacity=:elTaCapacity";
			Map<String, Object> paramMap = new Gson().fromJson(jsonObject.toString(), new TypeToken<HashMap<String, Object>>() {}.getType());
			System.out.println(":::::"+STAFF_QUARTERS_OBJECT_MERGE_SQL.toString()); 
			System.out.println(":::::"+paramMap.toString());
			System.out.println(":::::"+getExecuteSql(STAFF_QUARTERS_OBJECT_MERGE_SQL, paramMap));
			getNamedJdbcTemplate().update(STAFF_QUARTERS_OBJECT_MERGE_SQL, paramMap);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void updateInternalRoadsDetails(JSONObject jsonObject) { 
		try {
			String STAFF_QUARTERS_OBJECT_MERGE_SQL = "INSERT INTO InternalRoads (InternalRoadId,Others_Id,RoadType,RoadLength,"+
						" RoadWidth,CrossDrain,HasStreetLig,StreetLightTy,NumberOfPoles,NumberOfLights,UGSump,UGSumpType,Capacity ) "+
						" VALUES (:othersId,:othersId,:roadType,:roadLength,:roadWidth,:crossDrain,:hasStreetLig,"+
						" :streetLightTy,:numberOfPoles,:numberOfLights,:uGSump,:uGSumpType,:capacity )"+
						"ON DUPLICATE KEY UPDATE RoadType=:roadType,RoadLength=:roadLength,RoadWidth=:roadWidth,"+
						" CrossDrain=:crossDrain,HasStreetLig=:hasStreetLig,StreetLightTy=:streetLightTy,NumberOfPoles=:numberOfPoles,"+
						" NumberOfLights=:numberOfLights,UGSump=:uGSump,UGSumpType=:uGSumpType,Capacity=:capacity";
			Map<String, Object> paramMap = new Gson().fromJson(jsonObject.toString(), new TypeToken<HashMap<String, Object>>() {}.getType());
			System.out.println(":::::"+STAFF_QUARTERS_OBJECT_MERGE_SQL.toString()); 
			System.out.println(":::::"+paramMap.toString());
			System.out.println(":::::"+getExecuteSql(STAFF_QUARTERS_OBJECT_MERGE_SQL, paramMap));
			getNamedJdbcTemplate().update(STAFF_QUARTERS_OBJECT_MERGE_SQL, paramMap);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void updateExternalWaterSupplyDetails(JSONObject jsonObject) { 
		try {
			String STAFF_QUARTERS_OBJECT_MERGE_SQL = "INSERT INTO ExternalWaterSupply (ExternalWaterSupplyId,Others_Id,"+
						" TypeOfPipelIne,SourceOfwater,NumOfPumpSets,NumTubeLights,NumOfBulbs ) "+
						" VALUES (:othersId,:othersId,:typeOfPipelIne,:sourceOfwater,:numOfPumpSets,:numTubeLights,:numOfBulbs)"+
						"ON DUPLICATE KEY UPDATE TypeOfPipelIne=:typeOfPipelIne,SourceOfwater=:sourceOfwater,"+
						" NumOfPumpSets=:numOfPumpSets,NumTubeLights=:numTubeLights,NumOfBulbs=:numOfBulbs";
			Map<String, Object> paramMap = new Gson().fromJson(jsonObject.toString(), new TypeToken<HashMap<String, Object>>() {}.getType());
			System.out.println(":::::"+STAFF_QUARTERS_OBJECT_MERGE_SQL.toString()); 
			System.out.println(":::::"+paramMap.toString());
			System.out.println(":::::"+getExecuteSql(STAFF_QUARTERS_OBJECT_MERGE_SQL, paramMap));
			getNamedJdbcTemplate().update(STAFF_QUARTERS_OBJECT_MERGE_SQL, paramMap);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void updateSanitarySystemDetails(JSONObject jsonObject) { 
		try {
			String STAFF_QUARTERS_OBJECT_MERGE_SQL = "INSERT INTO SanitarySystem (SanitarySystemId,Others_Id,"+
						" NumOfSepticTanks,PumpType,SanitBlock,HasSoakPits,HasSevarageOutlet) "+
						" VALUES (:othersId,:othersId,:numOfSepticTanks,:pumpType,:sanitBlock,:hasSoakPits,:hasSevarageOutlet)"+
						"ON DUPLICATE KEY UPDATE NumOfSepticTanks=:numOfSepticTanks,PumpType=:pumpType,SanitBlock=:sanitBlock,"+
						" HasSoakPits=:hasSoakPits,HasSevarageOutlet=:hasSevarageOutlet";
			Map<String, Object> paramMap = new Gson().fromJson(jsonObject.toString(), new TypeToken<HashMap<String, Object>>() {}.getType());
			System.out.println(":::::"+STAFF_QUARTERS_OBJECT_MERGE_SQL.toString()); 
			System.out.println(":::::"+paramMap.toString());
			System.out.println(":::::"+getExecuteSql(STAFF_QUARTERS_OBJECT_MERGE_SQL, paramMap));
			getNamedJdbcTemplate().update(STAFF_QUARTERS_OBJECT_MERGE_SQL, paramMap);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void updateOverheadTankDetails(JSONObject jsonObject) { 
		try {
			String STAFF_QUARTERS_OBJECT_MERGE_SQL = "INSERT INTO OverheadTank (OverheadTankId,Others_Id,TankCapacity,TankStaging,IsInsService,IsDisSystemAvail) "+
						" VALUES (:othersId,:othersId,:tankCapacity,:tankStaging,:isInsService,:isDisSystemAvail) "+
						"ON DUPLICATE KEY UPDATE TankCapacity=:tankCapacity,TankStaging=:tankStaging,IsInsService=:isInsService,IsDisSystemAvail=:isDisSystemAvail";
			Map<String, Object> paramMap = new Gson().fromJson(jsonObject.toString(), new TypeToken<HashMap<String, Object>>() {}.getType());
			System.out.println(":::::"+STAFF_QUARTERS_OBJECT_MERGE_SQL.toString()); 
			System.out.println(":::::"+paramMap.toString());
			System.out.println(":::::"+getExecuteSql(STAFF_QUARTERS_OBJECT_MERGE_SQL, paramMap));
			getNamedJdbcTemplate().update(STAFF_QUARTERS_OBJECT_MERGE_SQL, paramMap);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void updatePlayGroundDetails(JSONObject jsonObject) { 
		try {
			String STAFF_QUARTERS_OBJECT_MERGE_SQL = "INSERT INTO PlayGround (PlayGroundId,Others_Id,HasBasketBallCourt,HasVolleyBallCourt,"+
						" HasCOCOCourt,HasShuttleCourt,HasKabadiCourt,HasRunningTrack,HasCricketNets,HasFootBallCourt) "+
						" VALUES (:othersId,:othersId,:hasBasketBallCourt,:hasVolleyBallCourt,:hasCOCOCourt,:hasShuttleCourt,"+
						" :hasKabadiCourt,:hasRunningTrack,:hasCricketNets,:hasFootBallCourt)"+
						"ON DUPLICATE KEY UPDATE HasBasketBallCourt=:hasBasketBallCourt,HasVolleyBallCourt=:hasVolleyBallCourt,"+
						" HasCOCOCourt=:hasCOCOCourt,HasShuttleCourt=:hasShuttleCourt,HasKabadiCourt=:hasKabadiCourt,"+
						" HasRunningTrack=:hasRunningTrack,HasCricketNets=:hasCricketNets,HasFootBallCourt=:hasFootBallCourt";
			Map<String, Object> paramMap = new Gson().fromJson(jsonObject.toString(), new TypeToken<HashMap<String, Object>>() {}.getType());
			System.out.println(":::::"+STAFF_QUARTERS_OBJECT_MERGE_SQL.toString()); 
			System.out.println(":::::"+paramMap.toString());
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