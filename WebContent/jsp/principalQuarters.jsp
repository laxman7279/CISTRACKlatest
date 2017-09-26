<label style="padding-right: 20px;"><h3>Principal Quarters</h3></label> 
	<input type="checkbox"
			style="border-color: black; padding-left: 25px;"> <br> <br>
		<ul>
			<li style="margin-bottom: 20px;"><a href="#"><b
					style="color: black">Number of Buildings</b><br></a><input
				type="text" onchange="addPrincQuarters();"
				placeholder="enter no of buildings" id="princ-staff-rooms">
			</li>
			</ul>
			<div id="principal"></div>
			<div style="float: left; padding-top: 30px; padding-bottom: 30px; padding-right: 30px;"
				id="principalQuartersSaveDiv">
				<input type="button" name="Save" value="Save">
			</div>
			<div style="float: left; padding-top: 30px; padding-bottom: 30px"
				id="principalQuartersSaveDiv">
				<input type="button" name="Cancel" value="Cancel">
			</div>
		<input type="text" hidden="true" name="id" id="id"/>
<style>
.emptyTrRow {  height: 20px !important; }
</style>
<script type="text/javascript">

function getPrinQuarters()
{
	var selectedValue = $('#institute').val();
    //alert(selectedValue);
      $.ajax({
	        type:'POST',
     	url: "../Quarters/getprincdetails.htm",
     	data : {'instituteid':selectedValue},
	        dataType:'json',
	success : function(data) {
		
		$('#princ-staff-rooms').val(data.arraysize);
		addPrincQuarters();
		$.each(data.princquarter, function(i, item) {
			$.each(item, function(key, value) {
					$('#'+key+"_"+i).attr('checked', value);
					if(key == 'Building_Id'){
						$('#'+key+"_"+i).val(value);
					}else if( key == 'Principal_Quarter_Id'){
						$('#id').val(value);
					}else if( key == 'Block' || key == 'Floor' || key == 'Staff_Quarters_Type'){
						$("#"+key+"_"+i+" option[value='"+value+"']").prop('selected', true);
					}else if (key == 'Has_Separate_Meter') {
						$('input:radio[name=P_'+key+"_"+i+']')[(value==true?0:1)].checked = true;
					}
			});
			getPLivingRoom(i);
			getPDinningRoom(i);
			getPBedRoomO(i);
			getPBedRoomT(i);
			getPToiDetails(i);
			getPKitcDetails(i);
			getPorticoDetails(i);
			getUtilityDetails(i);
		});
	},
	failure : function() {
		alert("Failed!");
	}
});
	
}


function addPrincQuarters() {
	var floors = ["Select","Ground","First","Second","Third","Fourth","Fifth","Sixth","Seventh","Eighth","Ninth","Tenth"];
	var blockOpts =''; $.each(floors,function(i,v){ blockOpts += "<option value='"+v+" Block'>"+v+" Block</option>"; });
	var floorOpts =''; $.each(floors,function(i,v){ floorOpts += "<option value='"+v+" Floor'>"+v+" Floor</option>"; });
	var yearOpts=''; for(var i=1970;i<(new Date()).getFullYear();i++){ yearOpts += '<option value="'+i+'">'+i+'</option/>';   }
	
	var c = document.getElementById('princ-staff-rooms').value;
	if (c == "") {
		alert("Please enter some numeric value");
	} else {
		var rows = "";
		for (var i = 0; i < c; i++) {
			rows += " <div class='container'><div class='panel-group' id='accordion' id='Principal-qtr-ul'> <div class='panel panel-default'><div class='panel-heading'><h4 class='panel-title'><a data-toggle='collapse' data-parent='#accordion'	href='#pq_collapse110#I#'><span class='glyphicon glyphicon-menu-down'></span></a>&nbsp;&nbsp;&nbsp;Building&nbsp;&nbsp;<input type='checkbox'  /> <input type='text' name='Building_Id_#I#' id ='Building_Id_#I#' hidden='true'/></label></h4></div><div id='pq_collapse110#I#' class='panel-collapse collapse'><div class='panel-body'><div class='container'><table style='width:90%;'><tr><td><label><b>Year Of Construction</b></label></td><td><label><b>Quarters Name</b></label></td><td></td></tr><tr><td><select id='PQ_Year_Of_Construction_#I#' name='PQ_Year_Of_Construction_#I#' class='form-control' dbname='yearOfConstruction'>"+yearOpts+"</select></td><td><input type='text' id='S_Quarters_Name_#I#' id='S_Quarters_Name_#I#' dbname='quartersName'/></td><td></td></tr><tr class='emptyTrRow'></tr><tr><td><label><b>Block</b></label> </td><td><label><b>Floor</b></label> </td><td><label><b>Principal Quarters Type</b></label> </td></tr><tr><td><select name='Block_#I#' id='Block_#I#'  dbname='block' class='form-control'>"+blockOpts+"</select> </td><td><select name='Floor_#I#' id='Floor_#I#' dbname='floor' class='form-control'>"+floorOpts+"</select></td><td><select  id='Principal_Quarters_Type_#I#'   name='Principal_Quarters_Type_#I#' dbname='principalQuartersType' class='form-control'><option value='0'>Select quarters</option><option value='Teaching'>Teaching</option><option value='Non Teaching'>Non Teaching</option><option value='Bachelor Type'>Bachelor Type</option><option value='Class 4 Type'>Class 4 Type</option><option value='Nurse Quarters'>Nurse Quarters</option><option value='Health Clinic'>Health Clinic</option></select></td></tr><tr class='emptyTrRow'></tr><tr><td colspan='3'><b style='color:black'> Separate meter instaled by electricity department? </b>&nbsp;&nbsp;<b>:</b>  <input type='radio' name='P_Has_Separate_Meter_#I#' id ='P_Has_Separate_Meter_#I#' dbname='hasSeperateMeter' value='Y'> <b>Yes</b>&nbsp;&nbsp;   <input type='radio' name='P_Has_Separate_Meter_#I#' id='PTS_Has_Separate_Meter_#I#' value='N'> <b>No</b></td></tr><tr class='emptyTrRow'></tr></table>"+
					"<div class='table-responsive'><table style='width:90% !important;'><tr><td><div class='panel-group' id='accordion'><div class='panel panel-default'><div class='panel-heading'><h4 class='panel-title'><a data-toggle='collapse'  data-parent='#accordion' href='#pq_collapse1011#I#'> <span class='glyphicon glyphicon-menu-down'></span></a> &nbsp;&nbsp; <a	data-toggle='collapse' data-parent='#accordion' href='#'  >Living Room</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label data-toggle='collapse' data-target='#pq_collapse1011#I#' aria-expanded='false' aria-controls='pq_collapse1011#I#'><input type='checkbox' dbname='livingRoom' name='Living_Room_#I#' id ='Living_Room_#I#'/></label></h4></div><div id='pq_collapse1011#I#' class='panel-collapse collapse'><div class='panel-body'><div class='table-responsive'><table class='table'><tr><td><a href='#'>Table Fans</a> <input type='checkbox' name='PLR_TableFans_#I#' id ='PLR_TableFans_#I#' dbname='tableFans'/><br><input type='text' name='PLR_TableFansCount_#I#' id ='PLR_TableFansCount_#I#' dbname='tableFansCnt'/></td><td><a href='#'>Ceiling Fans</a> <input type='checkbox' name='PLR_CeilingFans_#I#' id ='PLR_CeilingFans_#I#' dbname='ceilingFans' /><br><input type='text' name='PLR_CeilingFansCount_#I#' id ='PLR_CeilingFansCount_#I#' dbname='ceilingFansCnt'/></td></tr><tr><td><a href='#'>Tube Lights</a> <input type='checkbox' name='PLR_TubeLights_#I#' id ='PLR_TubeLights_#I#' dbname='tubeLights'/><br><input type='text' name='PLR_TubeLightsCount_#I#' id ='PLR_TubeLightsCount_#I#' dbname='tubeLightsCnt'/></td><td><a href='#'>Bulbs</a> <input type='checkbox' name='PLR_Bulbs_#I#' id ='PLR_Bulbs_#I#' dbname='bulbs' /><br><input type='text' name='PLR_BulbsCount_#I#' id ='PLR_BulbsCount_#I#' dbname='bulbsCnt'/></td></tr><tr><td><a href='#'>Glass Door Almira</a> <input type='checkbox'  name='PLR_GDAlmira_#I#' id ='PLR_GDAlmira_#I#' dbname='glassDoorAlmira'/><br> <input type='text' name='PLR_GDAlmiraCount_#I#' id ='PLR_GDAlmiraCount_#I#' dbname='glassDoorAlmiraCnt'/></td><td><a href='#'>Store well Almira</a> <input type='checkbox' name='PLR_SWA_#I#' id ='PLR_SWA_#I#' dbname='storeWellAlmira'/><br> <input type='text' name='PLR_SWACount_#I#' id ='PLR_SWACount_#I#' dbname='storeWellAlmiraCnt'/></td></tr><tr><td><a href='#'>Wooden Almira</a><br><input type='text' name='PLR_Wooden_Almira_#I#' id='PLR_Wooden_Almira_#I#' dbname='woodenAlmira' /></td><td><a href='#'>Carpet Area</a> <input type='checkbox' dbname='carpetArea'/><br> <input type='text' name='PLR_Plinth_#I#' id ='PLR_Plinth_#I#'  dbname='carpetAreaCnt' readonly=true/></td></tr><tr><td><a href='#'>Length (in sft)</a><br><input type='text' name='PLR_Length' id='PLR_Length' dbname='length' /></td><td><a href='#'>Width (in sft)</a><br><input type='text' name='PLR_Width' id='PLR_Width' dbname='width' /></td></tr> </table></div></div></div></div></div> </td></tr>"+
					"<tr><td><div class='panel-group' id='accordion'><div class='panel panel-default'><div class='panel-heading'><h4 class='panel-title'><a data-toggle='collapse'  data-parent='#accordion' href='#pq_collapse1012#I#' > <span class='glyphicon glyphicon-menu-down'></span></a> &nbsp;&nbsp; <a	data-toggle='collapse' data-parent='#accordion' href='#' >Dining Room</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label data-toggle='collapse' data-target='#pq_collapse1012#I#' aria-expanded='false' aria-controls='pq_collapse1012#I#'><input type='checkbox' dbname='diningRoom' name='Dining_Room_#I#' id ='Dining_Room_#I#'/></label></h4></div><div id='pq_collapse1012#I#' class='panel-collapse collapse'><div class='panel-body'><div class='table-responsive'><table class='table'><tr><td><a href='#'>Table Fans</a> <input type='checkbox' name='PDR_TableFans_#I#' id ='PDR_TableFans_#I#' dbname='tableFans'/><br><input type='text' name='PDR_TableFansCount_#I#' id ='PDR_TableFansCount_#I#' dbname='tableFansCnt'/></td><td><a href='#'>Ceiling Fans</a> <input type='checkbox' name='PDR_CeilingFans_#I#' id ='PDR_CeilingFans_#I#' dbname='ceilingFans'/><br><input type='text' name='PDR_CeilingFansCount_#I#' id ='PDR_CeilingFansCount_#I#' dbname='ceilingFansCnt'/></td></tr><tr><td><a href='#'>Tube Lights</a> <input type='checkbox' name='PDR_TubeLights_#I#' id ='PDR_TubeLights_#I#' dbname='tubeLights'/><br><input type='text' name='PDR_TubeLightsCount_#I#' id ='PDR_TubeLightsCount_#I#' dbname='tubeLightsCnt'/></td><td><a href='#'>Bulbs</a> <input type='checkbox' name='PDR_Bulbs_#I#' id ='PDR_Bulbs_#I#' dbname='bulbs'/ ><br><input type='text' name='PDR_BulbsCount_#I#' id ='PDR_BulbsCount_#I#' dbname='bulbsCnt'/></td></tr><tr><td><a href='#'>Glass Door Almira</a> <input type='checkbox'  name='PDR_GDAlmira_#I#' id ='PDR_GDAlmira_#I#' dbname='glassDoorAlmira'/ ><br> <input type='text' name='PDR_GDAlmiraCount_#I#' id ='PDR_GDAlmiraCount_#I#' dbname='glassDoorAlmiraCnt'/></td><td><a href='#'>Store well Almira</a> <input type='checkbox' name='PDR_SWA_#I#' id ='PDR_SWA_#I#' dbname='storeWellAlmira'/><br> <input type='text' name='PDR_SWACount_#I#' id ='PDR_SWACount_#I#' dbname='storeWellAlmiraCnt'/></td></tr><tr><td><a href='#'>Wooden Almira</a><br><input type='text' name='PDR_Wooden_Almira_#I#' id='PDR_Wooden_Almira_#I#' dbname='woodenAlmira' /></td><td><a href='#'>Carpet Area</a> <input type='checkbox'  dbname='carpetArea'/ ><br> <input type='text' name='PDR_Plinth_#I#' id ='PDR_Plinth_#I#' dbname='carpetAreaCnt' readonly=true/></td></tr><tr><td><a href='#'>Length (in sft)</a><br><input type='text' name='PDR_Length' id='PDR_Length' dbname='length' /></td><td><a href='#'>Width (in sft)</a><br><input type='text' name='PDR_Width' id='PDR_Width' dbname='width' /></td></tr> </table></div></div></div></div></div> </td></tr>"+
					"<tr><td><div class='panel-group' id='accordion'><div class='panel panel-default'><div class='panel-heading'><h4 class='panel-title'><a data-toggle='collapse'  data-parent='#accordion' href='#pq_collapse1013#I#'> <span class='glyphicon glyphicon-menu-down'></span></a> &nbsp;&nbsp; <a	data-toggle='collapse' data-parent='#accordion' href='#' >Bed Room1</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label data-toggle='collapse' data-target='#pq_collapse1013#I#' aria-expanded='false' aria-controls='pq_collapse1013#I#'><input dbname='bedRoom1' type='checkbox' name='Bed_Room1_#I#' id ='Bed_Room1_#I#'/></label></h4></div><div id='pq_collapse1013#I#' class='panel-collapse collapse'><div class='panel-body'><div class='table-responsive'><table class='table'><tr><td><a href='#'>Table Fans</a> <input type='checkbox' name='PBR1_TableFans_#I#' dbname='tableFans' id ='PBR1_TableFan_#I#'/><br><input type='text' name='PBR1_TableFansCount_#I#' id ='PBR1_TableFansCount_#I#' dbname='tableFansCnt'/></td><td><a href='#'>Ceiling Fans</a> <input type='checkbox' name='PBR1_CeilingFans_#I#' id ='PBR1_CeilingFans_#I#' dbname='ceilingFans'/><br><input type='text' name='PBR1_CeilingFansCount_#I#' id ='PBR1_CeilingFansCount_#I#' dbname='ceilingFansCnt'/></td></tr><tr><td><a href='#'>Tube Lights</a> <input type='checkbox' name='PBR1_TubeLights_#I#' id ='PBR1_TubeLights_#I#' dbname='tubeLights'/><br><input type='text' name='PBR1_TubeLightsCount_#I#' id ='PBR1_TubeLightsCount_#I#' dbname='tubeLightsCnt' /></td><td><a href='#'>Bulbs</a> <input type='checkbox' name='PBR1_Bulbs_#I#' id ='PBR1_Bulbs_#I#' dbname='bulbs'/ ><br><input type='text' name='PBR1_BulbsCount_#I#' id ='PBR1_BulbsCount_#I#' dbname='bulbsCnt'/></td></tr><tr><td><a href='#'>Glass Door Almira</a> <input type='checkbox'  name='PBR1_GDAlmira_#I#' id ='PBR1_GDAlmira_#I#' dbname='glassDoorAlmira'/ ><br> <input type='text' name='PBR1_GDAlmiraCount_#I#' id ='PBR1_GDAlmiraCount_#I#' dbname='glassDoorAlmiraCnt' /></td><td><a href='#'>Store well Almira</a> <input type='checkbox' name='PBR1_SWA_#I#' id ='PBR1_SWA_#I#' dbname='storeWellAlmira'/><br> <input type='text' name='PBR1_SWACount_#I#' id ='PBR1_SWACount_#I#' dbname='storeWellAlmiraCnt'/></td></tr><tr><td><a href='#'>Wooden Almira</a><br><input type='text' name='PBR1_Wooden_Almira_#I#' id='PBR1_Wooden_Almira_#I#' dbname='woodenAlmira' /></td><td><a href='#'>Carpet Area</a> <input type='checkbox' dbname='carpetArea' / ><br> <input type='text' name='PBR1_Plinth_#I#' id ='PBR1_Plinth_#I#' dbname='carpetAreaCnt' readonly=true/></td></tr><tr><td><a href='#'>Length (in sft)</a><br><input type='text' name='PBR1_Length' id='PBR1_Length' dbname='length' /></td><td><a href='#'>Width (in sft)</a><br><input type='text' name='PBR1_Width' id='PBR1_Width' dbname='width' /></td></tr> </table></div></div></div></div></div> </td></tr>"+
					"<tr><td><div class='panel-group' id='accordion'><div class='panel panel-default'><div class='panel-heading'><h4 class='panel-title'><a data-toggle='collapse'  data-parent='#accordion' href='#pq_collapse1014#I#'> <span class='glyphicon glyphicon-menu-down'></span></a> &nbsp;&nbsp; <a	data-toggle='collapse' data-parent='#accordion' href='#' >Bed Room2</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label data-toggle='collapse' data-target='#pq_collapse1014#I#' aria-expanded='false' aria-controls='pq_collapse1014#I#'><input dbname='bedRoom2' type='checkbox' name='Bed_Room1_#I#' id ='Bed_Room1_#I#'/></label></h4></div><div id='pq_collapse1014#I#' class='panel-collapse collapse'><div class='panel-body'><div class='table-responsive'><table class='table'><tr><td><a href='#'>Table Fans</a> <input type='checkbox' name='PBR2_TableFans_#I#' dbname='tableFans' id ='PBR2_TableFan_#I#'/><br><input type='text' name='PBR2_TableFansCount_#I#' id ='PBR2_TableFansCount_#I#' dbname='tableFansCnt'/></td><td><a href='#'>Ceiling Fans</a> <input type='checkbox' name='PBR2_CeilingFans_#I#' id ='PBR2_CeilingFans_#I#' dbname='ceilingFans'/><br><input type='text' name='PBR2_CeilingFansCount_#I#' id ='PBR2_CeilingFansCount_#I#' dbname='ceilingFansCnt'/></td></tr><tr><td><a href='#'>Tube Lights</a> <input type='checkbox' name='PBR2_TubeLights_#I#' id ='PBR2_TubeLights_#I#' dbname='tubeLights'/><br><input type='text' name='PBR2_TubeLightsCount_#I#' id ='PBR2_TubeLightsCount_#I#' dbname='tubeLightsCnt' /></td><td><a href='#'>Bulbs</a> <input type='checkbox' name='PBR2_Bulbs_#I#' id ='PBR2_Bulbs_#I#' dbname='bulbs'/ ><br><input type='text' name='PBR2_BulbsCount_#I#' id ='PBR2_BulbsCount_#I#' dbname='bulbsCnt'/></td></tr><tr><td><a href='#'>Glass Door Almira</a> <input type='checkbox'  name='PBR2_GDAlmira_#I#' id ='PBR2_GDAlmira_#I#' dbname='glassDoorAlmira'/ ><br> <input type='text' name='PBR2_GDAlmiraCount_#I#' id ='PBR2_GDAlmiraCount_#I#' dbname='glassDoorAlmiraCnt' /></td><td><a href='#'>Store well Almira</a> <input type='checkbox' name='PBR2_SWA_#I#' id ='PBR2_SWA_#I#' dbname='storeWellAlmira'/><br> <input type='text' name='PBR2_SWACount_#I#' id ='PBR2_SWACount_#I#' dbname='storeWellAlmiraCnt'/></td></tr><tr><td><a href='#'>Wooden Almira</a><br><input type='text' name='PBR2_Wooden_Almira_#I#' id='PBR2_Wooden_Almira_#I#' dbname='woodenAlmira' /></td><td><a href='#'>Carpet Area</a> <input type='checkbox' dbname='carpetArea' / ><br> <input type='text' name='PBR2_Plinth_#I#' id ='PBR2_Plinth_#I#' dbname='carpetAreaCnt' readonly=true/></td></tr><tr><td><a href='#'>Length (in sft)</a><br><input type='text' name='PBR2_Length' id='PBR2_Length' dbname='length' /></td><td><a href='#'>Width (in sft)</a><br><input type='text' name='PBR2_Width' id='PBR2_Width' dbname='width' /></td></tr> </table></div></div></div></div></div> </td></tr>"+
					"<tr><td><div class='panel-group' id='accordion'><div class='panel panel-default'><div class='panel-heading'><h4 class='panel-title'><a data-toggle='collapse'  data-parent='#accordion' href='#pq_collapse1015#I#'> <span class='glyphicon glyphicon-menu-down'></span></a> &nbsp;&nbsp; <a	data-toggle='collapse' data-parent='#accordion' href='#' >Toilets</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label data-toggle='collapse' data-target='#pq_collapse1015#I#' aria-expanded='false' aria-controls='pq_collapse1015#I#'><input dbname='toilets' type='checkbox' name='Toilets_#I#' id ='Toilets_#I#'/></label></h4></div><div id='pq_collapse1015#I#' class='panel-collapse collapse'><div class='panel-body'><div class='table-responsive'><table class='table'><tr><td><a href='#'>Exhaust Fans</a> <input type='checkbox' dbname='exhaustFans' name='PTS_Exhaust_Fans_#I#' id ='PTS_Exhaust_Fans_#I#'/><br><input type='text' name='PTS_Exhaust_Fans_Count_#I#' id ='PTS_Exhaust_Fans_Count_#I#' dbname='exhaustFansCnt'/></td><td><a href='#'>Tube Lights</a> <input type='checkbox' name='PTS_TubeLights_#I#' id ='PTS_TubeLights_#I#' dbname='tubeLights'/><br><input type='text' name='PTS_TubeLights_Count_#I#' id ='PTS_TubeLights_Count_#I#' dbname='tubeLightsCnt'/></td></tr><tr><td><a href='#'>Bulbs</a> <input type='checkbox' name='PTS_Bulbs_#I#' id ='PTS_Bulbs_#I#' dbname='bulbs'/><br><input type='text' name='PTS_Bulbs_Count_#I#' id ='PTS_Bulbs_Count_#I#' dbname='bulbsCnt'/></td><td><a href='#'>Indian Toilet</a> <input type='checkbox' name='PTS_Indian_Toilets_#I#' id ='PTS_Indian_Toilets_#I#' dbname='indianToilets'/><br><input type='text' name='PTS_Indian_Toilets_Count_#I#' id ='PTS_Indian_Toilets_Count_#I#' dbname='indianToiletsCnt'/></td></tr><tr><td><a href='#'>Water Closet</a> <input type='checkbox' name='PTS_Water_Closets_#I#' id ='PTS_Water_Closets_#I#' dbname='waterCloset'/><br><input type='text' name='PTS_Water_Closets_Count_#I#' id ='PTS_Water_Closets_Count_#I#' dbname='waterClosetCnt'/></td><td><a href='#'>Running Water</a> <input type='checkbox' name='PTS_Running_Water_#I#' id ='PTS_Running_Water_#I#' dbname='runningWater' class='dontHideCls'/ ><br><input type='text' dbname='runningWaterCnt' id='PTS_Running_Water_Count_#I#' name='PTS_Running_Water_Count_#I#'></td></tr><tr><td><a href='#'>Flush System</a> <input type='checkbox' name='PTS_Flush_System_#I#' id ='PTS_Flush_System_#I#' dbname='flushSystem'/><br><input type='text' name='PTS_Flush_System_Count_#I#' id ='PTS_Flush_System_Count_#I#' dbname='flushSystemCnt'/></td><tr></tr></table></div></div></div></div></div></td></tr>"+
					"<tr><td><div class='panel-group' id='accordion'><div class='panel panel-default'><div class='panel-heading'><h4 class='panel-title'><a data-toggle='collapse'  data-parent='#accordion' href='#pq_collapse1016#I#' > <span class='glyphicon glyphicon-menu-down'></span></a> &nbsp;&nbsp; <a	data-toggle='collapse' data-parent='#accordion' href='#' >Kitchen</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label data-toggle='collapse' data-target='#pq_collapse1016#I#' aria-expanded='false' aria-controls='pq_collapse1016#I#'><input type='checkbox' dbname='kitchen' name='Kitchen_#I#' id ='Kitchen_#I#'/></label></h4></div><div id='pq_collapse1016#I#' class='panel-collapse collapse'><div class='panel-body'><div class='table-responsive'><table class='table'><tr><td><a href='#'>Tube Lights</a> <input type='checkbox' name='PKI_TubeLights_#I#' id ='PKI_TubeLights_#I#' dbname='tubeLights' /><br><input type='text' name='PKI_TubeLights_Count_#I#' id ='PKI_TubeLights_Count_#I#' dbname='tubeLightsCnt'/></td><td><a href='#'>Bulbs</a> <input type='checkbox' name='PKI_Bulbs_#I#' id ='PKI_Bulbs_#I#' dbname='bulbs'/ ><br><input type='text' name='PKI_Bulbs_Count_#I#' id ='PKI_Bulbs_Count_#I#' dbname='bulbsCnt'/></td></tr><tr><td><a href='#'>Exhaust Fans</a> <input type='checkbox' name='PKI_Exhaust_Fans_#I#' id ='PKI_Exhaust_Fans_#I#' dbname='exhaustFans'/><br><input type='text' name='PKI_Exhaust_Fans_Count_#I#' id ='PKI_Exhaust_Fans_Count_#I#' dbname='exhaustFansCnt'/></td><td><a href='#'>Sink Facility</a> <input type='checkbox' name='PKI_SinkFacility_#I#' id ='PKI_SinkFacility_#I#' dbname='sinkFacility'/><br><input type='text' name='PKI_SinkFacility_Count_#I#' id ='PKI_SinkFacility_Count_#I#' dbname='sinkFacilityCnt'/></td></tr></table></div></div></div></div></div></td></tr>"+
					"<tr><td><div class='panel-group' id='accordion'><div class='panel panel-default' ><div class='panel-heading'><h4 class='panel-title'><a data-toggle='collapse'  data-parent='#accordion' href='#pq_collapse1081#I#' > <span class='glyphicon glyphicon-menu-down'></span></a> &nbsp;&nbsp; <a	data-toggle='collapse' data-parent='#accordion' href='#' >Portico</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label data-toggle='collapse' data-target='#pq_collapse1081#I#' aria-expanded='false' aria-controls='pq_collapse1081#I#'><input type='checkbox' dbname='portico'/></label></h4></div><div id='pq_collapse1081#I#' class='panel-collapse collapse'><div class='panel-body'><div class='table-responsive'><table class='table'><tr><td><a href='#'>Tube Lights</a> <input type='checkbox' dbname='tubeLights' name='PO_TubeLights_#I#' id='PO_TubeLights_#I#'><br><input type='text' dbname='tubeLightsCnt' name='PO_TubeLights_Count_#I#' id='PO_TubeLights_Count_#I#'></td><td><a href='#'>Bulbs</a> <input type='checkbox' dbname='bulbs' name='PO_Bulbs_#I#' id='PO_Bulbs_#I#'><br><input type='text' dbname='bulbsCnt' name='PO_Bulbs_Count_#I#' id='PO_Bulbs_Count_#I#'></td></tr></table></div></div></div></div></div></td></tr>"+
					"<tr><td><div class='panel-group' id='accordion'><div class='panel panel-default' ><div class='panel-heading'><h4 class='panel-title'><a data-toggle='collapse'  data-parent='#accordion' href='#pq_collapse1091#I#' > <span class='glyphicon glyphicon-menu-down'></span></a> &nbsp;&nbsp; <a	data-toggle='collapse' data-parent='#accordion' href='#' >Utility</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label data-toggle='collapse' data-target='#pq_collapse1091#I#' aria-expanded='false' aria-controls='pq_collapse1091#I#'><input type='checkbox' dbname='utility'/></label></h4></div><div id='pq_collapse1091#I#' class='panel-collapse collapse'><div class='panel-body'><div class='table-responsive'><table class='table'><tr><td><a href='#'>Tube Lights</a> <input type='checkbox' dbname='tubeLights' name='UT_TubeLights_#I#' id='UT_TubeLights_#I#'><br><input type='text' dbname='tubeLightsCnt' name='UT_TubeLights_Count_#I#' id='UT_TubeLights_Count_#I#'></td><td><a href='#'>Bulbs</a> <input type='checkbox' dbname='bulbs' name='UT_Bulbs_#I#' id='UT_Bulbs_#I#'><br><input type='text' dbname='bulbsCnt' name='UT_Bulbs_Count_#I#' id='UT_Bulbs_Count_#I#'></td></tr></table></div></div></div></div></div></td></tr></table></div></div></div></div> </div></td></tr></table></div></div></div></div></div></div>";
			rows = rows.replace(/#I#/g,i);	
			}
		document.getElementById("principal").innerHTML = rows;
		bindChangeEvent();
	}
	
	$(document).ready(
			function() {
				$('.collapse').on(
						'shown.bs.collapse',
						function() {
							$(this).parent().find('.glyphicon-menu-down')
									.removeClass('glyphicon-menu-down')
									.addClass('glyphicon-menu-up');
						}).on(
						'hidden.bs.collapse',
						function() {
							$(this).parent().find('.glyphicon-menu-up')
									.removeClass('glyphicon-menu-up').addClass(
											'glyphicon-menu-down');
						})
			});
	$('input[type="checkbox"]:not(.dontHideCls)').hide();
	//$('input[type="text"],select').addClass("form-control");
}

function getPLivingRoom( i)
{
	var staffquarterId = $('#id').val();
	var  buildingid = $('#Building_Id_'+i).val();
	$.ajax({
		type : 'POST',
		url : "../Quarters/getroomdetails.htm",
		data : {
			'staffquarterId' : staffquarterId, 'buildingid':buildingid,'tablename':'P_Living_Room','wherecolumn':'Principal_Quarter_Id'
		},
		dataType : 'json',
		success : function(data) {
			$.each(data, function(k, v) {
				
				$('#PLR_'+k+'_'+i).val(v);
				$('#LR_'+k+'_'+i).attr('checked', v)
			});

		},
		failure : function() {
			alert("Failed!");
		}
	});

}

function getPDinningRoom(i)
{
	var staffquarterId = $('#id').val();
	var  buildingid = $('#Building_Id_'+i).val();
	$.ajax({
		type : 'POST',
		url : "../Quarters/getroomdetails.htm",
		data : {
			'staffquarterId' : staffquarterId, 'buildingid':buildingid,'tablename':'P_Dinning_Room','wherecolumn':'Principal_Quarter_Id'
		},
		dataType : 'json',
		success : function(data) {
			$.each(data, function(k, v) {
				
				$('#PDR_'+k+'_'+i).val(v);
				$('#PDR_'+k+'_'+i).attr('checked', v)
			});

		},
		failure : function() {
			alert("Failed!");
		}
	});

}

function getPBedRoomO( i)
{
	var staffquarterId = $('#id').val();
	var  buildingid = $('#Building_Id_'+i).val();
	$.ajax({
		type : 'POST',
		url : "../Quarters/getroomdetails.htm",
		data : {
			'staffquarterId' : staffquarterId, 'buildingid':buildingid,'tablename':'P_BedRoom1','wherecolumn':'Principal_Quarter_Id'
		},
		dataType : 'json',
		success : function(data) {
			$.each(data, function(k, v) {
				
				$('#PBR1_'+k+'_'+i).val(v);
				$('#PBR1_'+k+'_'+i).attr('checked', v)
			});

		},
		failure : function() {
			alert("Failed!");
		}
	});

}

function getPBedRoomT( i)
{
	var staffquarterId = $('#id').val();
	var  buildingid = $('#Building_Id_'+i).val();
	$.ajax({
		type : 'POST',
		url : "../Quarters/getroomdetails.htm",
		data : {
			'staffquarterId' : staffquarterId, 'buildingid':buildingid,'tablename':'P_BedRoom2','wherecolumn':'Principal_Quarter_Id'
		},
		dataType : 'json',
		success : function(data) {
			$.each(data, function(k, v) {
				
				$('#PBR2_'+k+'_'+i).val(v);
				$('#PBR2_'+k+'_'+i).attr('checked', v)
			});

		},
		failure : function() {
			alert("Failed!");
		}
	});

}

function getPToiDetails( i)
{
	var staffquarterId = $('#id').val();
	var  buildingid = $('#Building_Id_'+i).val();
	$.ajax({
		type : 'POST',
		url : "../Quarters/gettoildetails.htm",
		data : {
			'staffquarterId' : staffquarterId, 'buildingid':buildingid,'tablename':'P_Toilets','wherecolumn':'Principal_Quarter_Id'
		},
		dataType : 'json',
		success : function(data) {
			$.each(data, function(k, v) {
				
				$('#PTS_'+k+'_'+i).val(v);
				$('#PTS_'+k+'_'+i).attr('checked', v)
			});

		},
		failure : function() {
			alert("Failed!");
		}
	});

}

function getPKitcDetails( i)
{
	var staffquarterId = $('#id').val();
	var  buildingid = $('#Building_Id_'+i).val();
	$.ajax({
		type : 'POST',
		url : "../Quarters/getkitchendetails.htm",
		data : {
			'staffquarterId' : staffquarterId, 'buildingid':buildingid,'tablename':'P_Kitchen','wherecolumn':'Principal_Quarter_Id'
		},
		dataType : 'json',
		success : function(data) {
			$.each(data, function(k, v) {
				
				$('#PKI_'+k+'_'+i).val(v);
				$('#PKI_'+k+'_'+i).attr('checked', v)
			});

		},
		failure : function() {
			alert("Failed!");
		}
	});

}

function getPorticoDetails( i)
{
	var staffquarterId = $('#id').val();
	var  buildingid = $('#Building_Id_'+i).val();
	$.ajax({
		type : 'POST',
		url : "../Quarters/getportcodetails.htm",
		data : {
			'staffquarterId' : staffquarterId, 'buildingid':buildingid,'tablename':'P_Portico','wherecolumn':'Principal_Quarter_Id'
		},
		dataType : 'json',
		success : function(data) {
			$.each(data, function(k, v) {
				
				$('#PO_'+k+'_'+i).val(v);
				$('#PO_'+k+'_'+i).attr('checked', v)
			});

		},
		failure : function() {
			alert("Failed!");
		}
	});

}

function getUtilityDetails( i)
{
	var staffquarterId = $('#id').val();
	var  buildingid = $('#Building_Id_'+i).val();
	$.ajax({
		type : 'POST',
		url : "../Quarters/getportcodetails.htm",
		data : {
			'staffquarterId' : staffquarterId, 'buildingid':buildingid,'tablename':'P_Utility','wherecolumn':'Principal_Quarter_Id'
		},
		dataType : 'json',
		success : function(data) {
			$.each(data, function(k, v) {
				
				$('#UT_'+k+'_'+i).val(v);
				$('#UT_'+k+'_'+i).attr('checked', v)
			});

		},
		failure : function() {
			alert("Failed!");
		}
	});

}


$('#principalQuartersSaveDiv').on('click',function(){
	console.log('-----SchoolSave-----');
	var dropDownId = $('#institute').val();
	var finalSaveJson = {"principalQuarters":[]};
	$('#principal >div').each(function(){
		var $this= $(this);
		divJson={"principalQuarterId":dropDownId,"institutionId":dropDownId,"buildingId":$(this).index()+''};
		$($this).find('>div >div >div.panel-collapse >div >div.container').find('select').each(function(){
			divJson[$(this).attr('dbname')] = $(this).find('option:selected').text();
		});
		divJson['quartersName'] = $($this).find('input[dbname="quartersName"]').val() == ''?'0':$($this).find('input[dbname="quartersName"]').val();
		divJson['hasSeperateMeter'] = $($this).find('input[dbname="hasSeperateMeter"]').is(':checked') ? 'Y' : 'N';
		$($this).find('div.table-responsive >table >tbody >tr').each(function(){
			divJson[$(this).find('h4').find('input').attr('dbname')] = $(this).find('h4').find('input').is(':checked')?'Y':'N';
			var childJson = {"principalQuarterId":divJson["principalQuarterId"],"institutionId":divJson["institutionId"],"buildingId":divJson["buildingId"]};
			$(this).find('div.panel-collapse').find('input').each(function(){
				childJson[$(this).attr('dbname')] = $(this).attr('type')=='checkbox'?($(this).is(':checked')?'Y':'N'):($(this).val() == ''?'0':$(this).val());
			});
			divJson[$(this).find('h4').find('input').attr('dbname')+'Obj'] = childJson; 
		});
		(finalSaveJson['principalQuarters']).push(divJson);
	});
	console.log(finalSaveJson);
	
	$.ajax({
	    type: 'POST',
     	url: "../principalQuarters/updatePrincipalQuartersDetails.htm",
     	data : {'finalSaveJson':JSON.stringify(finalSaveJson)},
        dataType: 'json',
        success: function(data){
        	alert('Successfully Saved');
        	console.log('---updateSchoolDetails----Success-----');
        },
        error:function(err){
        	alert('Save Failed with an Exception');
        	console.log('---updateSchoolDetails----Failure-----');
        	console.log(err);
        }
	});
});


$(document).ready(
		function() {
			$('.collapse').on(
					'shown.bs.collapse',
					function() {
						$(this).parent().find('.glyphicon-menu-down')
								.removeClass('glyphicon-menu-down')
								.addClass('glyphicon-menu-up');
					}).on(
					'hidden.bs.collapse',
					function() {
						$(this).parent().find('.glyphicon-menu-up')
								.removeClass('glyphicon-menu-up').addClass(
										'glyphicon-menu-down');
					})
		});

</script>