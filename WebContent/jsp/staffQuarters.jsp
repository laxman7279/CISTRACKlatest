<label style="padding-right: 20px;">
			<h3>Staff Quarters</h3>
		</label> <input type="checkbox"
			style="border-color: black; padding-left: 25px;"> <br> <br>
		<ul>
			<li style="margin-bottom: 20px;"><a href="#"><b
					style="color: black">Number of Buildings</b><br></a><input
				type="text" onchange="addStaffQuarters();"
				placeholder="enter no of buildings" name = "staff-rooms" id="staff-rooms"></li>
			<div id="staff"></div>
		</ul>
		<div
			style="float: left; padding-top: 30px; padding-bottom: 30px; padding-right: 30px;"
			id="staffQuartersSaveDiv">
			<input type="button" name="Save" value="Save">
		</div>

		<div style="float: left; padding-top: 30px; padding-bottom: 30px"
			id="staffQuartersCancelDiv">
			<input type="button" name="Cancel" value="Cancel">
		</div>
		
		<input type="text" hidden="true" name="id" id="id"/>

<script type="text/javascript">

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

function getStaffQuarters(){
	var selectedValue = $('#institute').val();
    //alert(selectedValue);
      $.ajax({
	        type:'POST',
     	url: "../Quarters/getstaffdetails.htm",
     	data : {'instituteid':selectedValue},
	        dataType:'json',
	success : function(data) {
		
		$('#staff-rooms').val(data.arraysize);
		addStaffQuarters();
						
		$.each(data.staffquarter, function(i, item) {
			$.each(item, function(key, value) {
					$('#'+key+"_"+i).attr('checked', value);
					if(key == 'Building_Id') {
						$('#'+key+"_"+i).val(value);
					} else if( key == 'Staff_Quarter_Id') {
						$('#id').val(value);
					} else if( key == 'Block' || key == 'Floor' || key == 'Staff_Quarters_Type') {
						$("#"+key+"_"+i+" option[value='"+value+"']").prop('selected', true);
					}else if (key == 'Has_Separate_Meter') {
						$('input:radio[name=S_'+key+"_"+i+']')[(value==true?0:1)].checked = true;
					}
					
			});
			getLivingRoom(i);
			getDinningRoom(i);
			getBedRoomO(i);
			getBedRoomT(i);
			getToiDetails(i);
			getKitcDetails(i);
		});
	},
	failure : function() {
		alert("Failed!");
	}
});
	
}


function addStaffQuarters() {
	var b;
	b = document.getElementById('staff-rooms').value;
	if (b == "") {
		alert("Please enter some numeric value");
	} else {
		var rows = "";
		for (var i = 0; i < b; i++) {
			rows += " <div class='container'><div class='panel-group' id='accordion' id='staff-qtr-ul'> <div class='panel panel-default'><div class='panel-heading'><h4 class='panel-title'><a data-toggle='collapse' data-parent='#accordion'	href='#sq_collapse110#I#'><span class='glyphicon glyphicon-menu-down'></span></a>&nbsp;&nbsp;&nbsp;Building&nbsp;&nbsp;<input type='checkbox'  /> <input type='text' name='Building_Id_#I#' id ='Building_Id_#I#' hidden='true'/></label></h4></div><div id='sq_collapse110#I#' class='panel-collapse collapse'><div class='panel-body'><div class='container'><div class='col-md-4 w3_agile_services_grid'><div class='agile_services_grid'><div class='hover06 column'><div ><table><tr><td><label><b>Block</b></label> </td><td><select name='Block_#I#' id='Block_#I#'  dbname='block' class='form-control'><option value='0'>Select block</option><option value='1st Block'>1st Block</option><option value='Second Block'>Second Block</option><option value='Third Block'>Third Block</option></select> </td></tr><tr></tr><tr></tr><tr></tr></table></div></div></div></div><div class='col-md-4 w3_agile_services_grid'  style='padding-left: 10px;'><div class='agile_services_grid'><div class='hover06 column'><div><table><tr><td><label ><b>Floor</b></label> </td><td><select name='Floor_#I#' id='Floor_#I#' dbname='floor' class='form-control'><option value='0'>Select floor</option><option value='Ground Floor'>Ground Floor</option><option value='First Floor'>First Floor</option><option value='Second Floor'>Second Floor</option></select></td></tr><tr align='center'><td></td><td> </td></tr></table></div></div></div></div><div class='col-md-4 w3_agile_services_grid'  style='padding-left: 10px;'><div class='agile_services_grid'><div class='hover06 column'><div><table><tr><td><label><b>Staff Quarters Type </b></label> </td><td><select  id='Staff_Quarters_Type_#I#'   name='Staff_Quarters_Type_#I#' dbname='staffQuartersType' class='form-control'><option value='0'>Select quarters</option><option value='Teaching'>Teaching</option><option value='Non Teaching'>Non Teaching</option><option value='Bachelor Type'>Bachelor Type</option><option value='Class 4 Type'>Class 4 Type</option><option value='Nurse Quarters'>Nurse Quarters</option><option value='Health Clinic'>Health Clinic</option></select>  </td></tr><tr></tr><tr></tr><tr></tr></table></div></div></div></div><div class='col-md-4 w3_agile_services_grid' style='padding-left: 10px;'><div class='agile_services_grid'><div class='hover06 column'><div><table><tbody><tr><td><label><b>Year Of Construction</b></label> </td><td><input type='text' name='SQ_Year_Of_Construction_#I#' id='SQ_Year_Of_Construction_#I#'/></td></tr><tr align='center'><td></td><td> </td></tr></tbody></table></div></div></div></div></div> <br><br>  <li style='margin-bottom:20px;' ><a href='#'><b style='color:black'> Separate meter instaled by electricity department? </b></a>&nbsp;&nbsp;<b>:</b>  <input type='radio' name='S_Has_Separate_Meter_#I#' id ='S_Has_Separate_Meter_#I#' dbname='hasSeperateMeter' value='Y'> <b>Yes</b>&nbsp;&nbsp;   <input type='radio' name='S_Has_Separate_Meter_#I#' id='S_Has_Separate_Meter_#I#' value='N'> <b>No</b></li>"+
					"<div class='table-responsive'><table class='table'><tr><td><div class='panel-group' id='accordion'><div class='panel panel-default'><div class='panel-heading'><h4 class='panel-title'><a data-toggle='collapse'  data-parent='#accordion' href='#sq_collapse461#I#'> <span class='glyphicon glyphicon-menu-down'></span></a> &nbsp;&nbsp; <a	data-toggle='collapse' data-parent='#accordion' href='#' >Living Room</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label data-toggle='collapse' data-target='#sq_collapse461#I#' aria-expanded='false' aria-controls='sq_collapse461#I#'><input type='checkbox' dbname='livingRoom' name='Living_Room_#I#' id ='Living_Room_#I#'/></label></h4></div><div id='sq_collapse461#I#' class='panel-collapse collapse'><div class='panel-body'><div class='table-responsive'><table class='table'><tr><td><a href='#'>Table Fans</a> <input type='checkbox' name='LR_TableFans_#I#' id ='LR_TableFans_#I#' dbname='tableFans'/><br><input type='text' name='LR_TableFansCount_#I#' id ='LR_TableFansCount_#I#' dbname='tableFansCnt'/></td><td><a href='#'>Ceiling Fans</a> <input type='checkbox' name='LR_CeilingFans_#I#' id ='LR_CeilingFans_#I#' dbname='ceilingFans' /><br><input type='text' name='LR_CeilingFansCount_#I#' id ='LR_CeilingFansCount_#I#' dbname='ceilingFansCnt'/></td></tr><tr><td><a href='#'>Tube Lights</a> <input type='checkbox' name='LR_TubeLights_#I#' id ='LR_TubeLights_#I#' dbname='tubeLights'/><br><input type='text' name='LR_TubeLightsCount_#I#' id ='LR_TubeLightsCount_#I#' dbname='tubeLightsCnt'/></td><td><a href='#'>Bulbs</a> <input type='checkbox' name='LR_Bulbs_#I#' id ='LR_Bulbs_#I#' dbname='bulbs' /><br><input type='text' name='LR_BulbsCount_#I#' id ='LR_BulbsCount_#I#' dbname='bulbsCnt'/></td></tr><tr><td><a href='#'>Glass Door Almira</a> <input type='checkbox'  name='LR_GDAlmira_#I#' id ='LR_GDAlmira_#I#' dbname='glassDoorAlmira'/><br> <input type='text' name='LR_GDAlmiraCount_#I#' id ='LR_GDAlmiraCount_#I#' dbname='glassDoorAlmiraCnt'/></td><td><a href='#'>Store well Almira</a> <input type='checkbox' name='LR_SWA_#I#' id ='LR_SWA_#I#' dbname='storeWellAlmira'/><br> <input type='text' name='LR_SWACount_#I#' id ='LR_SWACount_#I#' dbname='storeWellAlmiraCnt'/></td></tr><tr><td><a href='#'>Wooden Almira</a><br><input type='text' name='LR_Wooden_Almira_#I#' id='LR_Wooden_Almira_#I#' dbname='woodenAlmira' /></td><td><a href='#'>Carpet Area</a> <input type='checkbox' dbname='carpetArea'/><br> <input type='text' name='LR_Plinth_#I#' id ='LR_Plinth_#I#'  dbname='carpetAreaCnt' readonly=true/></td></tr><tr><td><a href='#'>Length (in sft)</a><br><input type='text' name='LR_Length_#I#' id='LR_Length_#I#' dbname='length' /></td><td><a href='#'>Width (in sft)</a><br><input type='text' name='LR_Width_#I#' id='LR_Width_#I#' dbname='width' /></td></tr></table></div></div></div></div></div> </td></tr>"+
					"<tr><td><div class='panel-group' id='accordion'><div class='panel panel-default'><div class='panel-heading'><h4 class='panel-title'><a data-toggle='collapse'  data-parent='#accordion' href='#sq_collapse462#I#'> <span class='glyphicon glyphicon-menu-down'></span></a> &nbsp;&nbsp; <a	data-toggle='collapse' data-parent='#accordion' href='#'  >Dining Room</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label data-toggle='collapse' data-target='#sq_collapse462#I#' aria-expanded='false' aria-controls='sq_collapse462#I#'><input type='checkbox' dbname='diningRoom' name='Dining_Room_#I#' id ='Dining_Room_#I#'/></label></h4></div><div id='sq_collapse462#I#' class='panel-collapse collapse'><div class='panel-body'><div class='table-responsive'><table class='table'><tr><td><a href='#'>Table Fans</a> <input type='checkbox' name='DR_TableFans_#I#' id ='DR_TableFans_#I#' dbname='tableFans'/><br><input type='text' name='DR_TableFansCount_#I#' id ='DR_TableFansCount_#I#' dbname='tableFansCnt'/></td><td><a href='#'>Ceiling Fans</a> <input type='checkbox' name='DR_CeilingFans_#I#' id ='DR_CeilingFans_#I#' dbname='ceilingFans'/><br><input type='text' name='DR_CeilingFansCount_#I#' id ='DR_CeilingFansCount_#I#' dbname='ceilingFansCnt'/></td></tr><tr><td><a href='#'>Tube Lights</a> <input type='checkbox' name='DR_TubeLights_#I#' id ='DR_TubeLights_#I#' dbname='tubeLights'/><br><input type='text' name='DR_TubeLightsCount_#I#' id ='DR_TubeLightsCount_#I#' dbname='tubeLightsCnt'/></td><td><a href='#'>Bulbs</a> <input type='checkbox' name='DR_Bulbs_#I#' id ='DR_Bulbs_#I#' dbname='bulbs'/ ><br><input type='text' name='DR_BulbsCount_#I#' id ='DR_BulbsCount_#I#' dbname='bulbsCnt'/></td></tr><tr><td><a href='#'>Glass Door Almira</a> <input type='checkbox'  name='DR_GDAlmira_#I#' id ='DR_GDAlmira_#I#' dbname='glassDoorAlmira'/ ><br> <input type='text' name='DR_GDAlmiraCount_#I#' id ='DR_GDAlmiraCount_#I#' dbname='glassDoorAlmiraCnt'/></td><td><a href='#'>Store well Almira</a> <input type='checkbox' name='DR_SWA_#I#' id ='DR_SWA_#I#' dbname='storeWellAlmira'/><br> <input type='text' name='DR_SWACount_#I#' id ='DR_SWACount_#I#' dbname='storeWellAlmiraCnt'/></td></tr><tr><td><a href='#'>Wooden Almira</a><br><input type='text' name='DR_Wooden_Almira_#I#' id='DR_Wooden_Almira_#I#' dbname='woodenAlmira' /></td><td><a href='#'>Carpet Area</a> <input type='checkbox'  dbname='carpetArea'/ ><br> <input type='text' name='DR_Plinth_#I#' id ='DR_Plinth_#I#' dbname='carpetAreaCnt' readonly=true/></td></tr><tr><td><a href='#'>Length (in sft)</a><br><input type='text' name='DR_Length_#I#' id='DR_Length_#I#' dbname='length' /></td><td><a href='#'>Width (in sft)</a><br><input type='text' name='DR_Width_#I#' id='DR_Width_#I#' dbname='width' /></td></tr> </table></div></div></div></div></div> </td></tr>"+
					"<tr><td><div class='panel-group' id='accordion'><div class='panel panel-default'><div class='panel-heading'><h4 class='panel-title'><a data-toggle='collapse'  data-parent='#accordion' href='#sq_collapse463#I#'> <span class='glyphicon glyphicon-menu-down'></span></a> &nbsp;&nbsp; <a	data-toggle='collapse' data-parent='#accordion' href='#'  >Bed Room1</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label data-toggle='collapse' data-target='#sq_collapse463#I#' aria-expanded='false' aria-controls='sq_collapse463#I#'><input dbname='bedRoom1' type='checkbox' name='Bed_Room1_#I#' id ='Bed_Room1_#I#'/></label></h4></div><div id='sq_collapse463#I#' class='panel-collapse collapse'><div class='panel-body'><div class='table-responsive'><table class='table'><tr><td><a href='#'>Table Fans</a> <input type='checkbox' name='BR1_TableFans_#I#' dbname='tableFans' id ='BR1_TableFan_#I#'/><br><input type='text' name='BR1_TableFansCount_#I#' id ='BR1_TableFansCount_#I#' dbname='tableFansCnt'/></td><td><a href='#'>Ceiling Fans</a> <input type='checkbox' name='BR1_CeilingFans_#I#' id ='BR1_CeilingFans_#I#' dbname='ceilingFans'/><br><input type='text' name='BR1_CeilingFansCount_#I#' id ='BR1_CeilingFansCount_#I#' dbname='ceilingFansCnt'/></td></tr><tr><td><a href='#'>Tube Lights</a> <input type='checkbox' name='BR1_TubeLights_#I#' id ='BR1_TubeLights_#I#' dbname='tubeLights'/><br><input type='text' name='BR1_TubeLightsCount_#I#' id ='BR1_TubeLightsCount_#I#' dbname='tubeLightsCnt' /></td><td><a href='#'>Bulbs</a> <input type='checkbox' name='BR1_Bulbs_#I#' id ='BR1_Bulbs_#I#' dbname='bulbs'/ ><br><input type='text' name='BR1_BulbsCount_#I#' id ='BR1_BulbsCount_#I#' dbname='bulbsCnt'/></td></tr><tr><td><a href='#'>Glass Door Almira</a> <input type='checkbox'  name='BR1_GDAlmira_#I#' id ='BR1_GDAlmira_#I#' dbname='glassDoorAlmira'/ ><br> <input type='text' name='BR1_GDAlmiraCount_#I#' id ='BR1_GDAlmiraCount_#I#' dbname='glassDoorAlmiraCnt' /></td><td><a href='#'>Store well Almira</a> <input type='checkbox' name='BR1_SWA_#I#' id ='BR1_SWA_#I#' dbname='storeWellAlmira'/><br> <input type='text' name='BR1_SWACount_#I#' id ='BR1_SWACount_#I#' dbname='storeWellAlmiraCnt'/></td></tr><tr><td><a href='#'>Wooden Almira</a><br><input type='text' name='BR1_Wooden_Almira_#I#' id='BR1_Wooden_Almira_#I#' dbname='woodenAlmira' /></td><td><a href='#'>Carpet Area</a> <input type='checkbox' dbname='carpetArea' / ><br> <input type='text' name='BR1_Plinth_#I#' id ='BR1_Plinth_#I#' dbname='carpetAreaCnt' readonly=true/></td></tr><tr><td><a href='#'>Length (in sft)</a><br><input type='text' name='BR1_Length_#I#' id='BR1_Length_#I#' dbname='length' /></td><td><a href='#'>Width (in sft)</a><br><input type='text' name='BR1_Width_#I#' id='BR1_Width_#I#' dbname='width' /></td></tr></table></div></div></div></div></div> </td></tr>"+
					"<tr><td><div class='panel-group' id='accordion'><div class='panel panel-default'><div class='panel-heading'><h4 class='panel-title'><a data-toggle='collapse'  data-parent='#accordion' href='#sq_collapse464#I#'> <span class='glyphicon glyphicon-menu-down'></span></a> &nbsp;&nbsp; <a	data-toggle='collapse' data-parent='#accordion' href='#'  >Bed Room2</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label data-toggle='collapse' data-target='#sq_collapse464#I#' aria-expanded='false' aria-controls='sq_collapse464#I#'><input dbname='bedRoom2' type='checkbox' name='Bed_Room1_#I#' id ='Bed_Room1_#I#'/></label></h4></div><div id='sq_collapse464#I#' class='panel-collapse collapse'><div class='panel-body'><div class='table-responsive'><table class='table'><tr><td><a href='#'>Table Fans</a> <input type='checkbox' name='BR2_TableFans_#I#' dbname='tableFans' id ='BR2_TableFan_#I#'/><br><input type='text' name='BR2_TableFansCount_#I#' id ='BR2_TableFansCount_#I#' dbname='tableFansCnt'/></td><td><a href='#'>Ceiling Fans</a> <input type='checkbox' name='BR2_CeilingFans_#I#' id ='BR2_CeilingFans_#I#' dbname='ceilingFans'/><br><input type='text' name='BR2_CeilingFansCount_#I#' id ='BR2_CeilingFansCount_#I#' dbname='ceilingFansCnt'/></td></tr><tr><td><a href='#'>Tube Lights</a> <input type='checkbox' name='BR2_TubeLights_#I#' id ='BR2_TubeLights_#I#' dbname='tubeLights'/><br><input type='text' name='BR2_TubeLightsCount_#I#' id ='BR2_TubeLightsCount_#I#' dbname='tubeLightsCnt' /></td><td><a href='#'>Bulbs</a> <input type='checkbox' name='BR2_Bulbs_#I#' id ='BR2_Bulbs_#I#' dbname='bulbs'/ ><br><input type='text' name='BR2_BulbsCount_#I#' id ='BR2_BulbsCount_#I#' dbname='bulbsCnt'/></td></tr><tr><td><a href='#'>Glass Door Almira</a> <input type='checkbox'  name='BR2_GDAlmira_#I#' id ='BR2_GDAlmira_#I#' dbname='glassDoorAlmira'/ ><br> <input type='text' name='BR2_GDAlmiraCount_#I#' id ='BR2_GDAlmiraCount_#I#' dbname='glassDoorAlmiraCnt' /></td><td><a href='#'>Store well Almira</a> <input type='checkbox' name='BR2_SWA_#I#' id ='BR2_SWA_#I#' dbname='storeWellAlmira'/><br> <input type='text' name='BR2_SWACount_#I#' id ='BR2_SWACount_#I#' dbname='storeWellAlmiraCnt'/></td></tr><tr><td><a href='#'>Wooden Almira</a><br><input type='text' name='BR2_Wooden_Almira_#I#' id='BR2_Wooden_Almira_#I#' dbname='woodenAlmira' /></td><td><a href='#'>Carpet Area</a> <input type='checkbox' dbname='carpetArea' / ><br> <input type='text' name='BR2_Plinth_#I#' id ='BR2_Plinth_#I#' dbname='carpetAreaCnt' readonly=true/></td></tr><tr><td><a href='#'>Length (in sft)</a><br><input type='text' name='BR2_Length_#I#' id='BR2_Length_#I#' dbname='length' /></td><td><a href='#'>Width (in sft)</a><br><input type='text' name='BR2_Width_#I#' id='BR2_Width_#I#' dbname='width' /></td></tr></table></div></div></div></div></div> </td></tr>"+
					"<tr><td><div class='panel-group' id='accordion'><div class='panel panel-default'><div class='panel-heading'><h4 class='panel-title'><a data-toggle='collapse'  data-parent='#accordion' href='#sq_collapse465#I#'> <span class='glyphicon glyphicon-menu-down'></span></a> &nbsp;&nbsp; <a	data-toggle='collapse' data-parent='#accordion' href='#'  >Toilets</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label data-toggle='collapse' data-target='#sq_collapse465#I#' aria-expanded='false' aria-controls='sq_collapse465#I#'><input dbname='toilets' type='checkbox' name='Toilets_#I#' id ='Toilets_#I#'/></label></h4></div><div id='sq_collapse465#I#' class='panel-collapse collapse'><div class='panel-body'><div class='table-responsive'><table class='table'><tr><td><a href='#'>Exhaust Fans</a> <input type='checkbox' dbname='exhaustFans' name='TS_Exhaust_Fans_#I#' id ='TS_Exhaust_Fans_#I#'/><br><input type='text' name='TS_Exhaust_Fans_Count_#I#' id ='TS_Exhaust_Fans_Count_#I#' dbname='exhaustFansCnt'/></td><td><a href='#'>Tube Lights</a> <input type='checkbox' name='TS_TubeLights_#I#' id ='TS_TubeLights_#I#' dbname='tubeLights'/><br><input type='text' name='TS_TubeLights_Count_#I#' id ='TS_TubeLights_Count_#I#' dbname='tubeLightsCnt'/></td></tr><tr><td><a href='#'>Bulbs</a> <input type='checkbox' name='TS_Bulbs_#I#' id ='TS_Bulbs_#I#' dbname='bulbs'/><br><input type='text' name='TS_Bulbs_Count_#I#' id ='TS_Bulbs_Count_#I#' dbname='bulbsCnt'/></td><td><a href='#'>Indian Toilet</a> <input type='checkbox' name='TS_Indian_Toilets_#I#' id ='TS_Indian_Toilets_#I#' dbname='indianToilets'/><br><input type='text' name='TS_Indian_Toilets_Count_#I#' id ='TS_Indian_Toilets_Count_#I#' dbname='indianToiletsCnt'/></td></tr><tr><td><a href='#'>Water Closet</a> <input type='checkbox' name='TS_Water_Closets_#I#' id ='TS_Water_Closets_#I#' dbname='waterCloset'/><br><input type='text' name='TS_Water_Closets_Count_#I#' id ='TS_Water_Closets_Count_#I#' dbname='waterClosetCnt'/></td><td><a href='#'>Running Water</a> <input type='checkbox' name='TS_Running_Water_#I#' id ='TS_Running_Water_#I#' dbname='runningWater' class='dontHideCls'/><br><input type='text' id='TS_Running_Water_Count_#I#' name='TS_Running_Water_Count_#I#' dbname='runningWaterCnt'></td></tr><tr><td><a href='#'>Flush System</a> <input type='checkbox' name='TS_Flush_System_#I#' id ='TS_Flush_System_#I#' dbname='flushSystem'/><br><input type='text' name='TS_Flush_System_Count_#I#' id ='TS_Flush_System_Count_#I#' dbname='flushSystemCnt'/></td><tr></tr></table></div></div></div></div></div></td></tr>"+
					"<tr><td><div class='panel-group' id='accordion'><div class='panel panel-default'><div class='panel-heading'><h4 class='panel-title'><a data-toggle='collapse'  data-parent='#accordion' href='#sq_collapse466#I#'> <span class='glyphicon glyphicon-menu-down'></span></a> &nbsp;&nbsp; <a	data-toggle='collapse' data-parent='#accordion' href='#'  >Kitchen</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label data-toggle='collapse' data-target='#sq_collapse466#I#' aria-expanded='false' aria-controls='sq_collapse466#I#'><input type='checkbox' dbname='kitchen' name='Kitchen_#I#' id ='Kitchen_#I#'/></label></h4></div><div id='sq_collapse466#I#' class='panel-collapse collapse'><div class='panel-body'><div class='table-responsive'><table class='table'><tr><td><a href='#'>Tube Lights</a> <input type='checkbox' name='KI_TubeLights_#I#' id ='KI_TubeLights_#I#' dbname='tubeLights' /><br><input type='text' name='KI_TubeLights_Count_#I#' id ='KI_TubeLights_Count_#I#' dbname='tubeLightsCnt'/></td><td><a href='#'>Bulbs</a> <input type='checkbox' name='KI_Bulbs_#I#' id ='KI_Bulbs_#I#' dbname='bulbs'/ ><br><input type='text' name='KI_Bulbs_Count_#I#' id ='KI_Bulbs_Count_#I#' dbname='bulbsCnt'/></td></tr><tr><td><a href='#'>Exhaust Fans</a> <input type='checkbox' name='KI_Exhaust_Fans_#I#' id ='KI_Exhaust_Fans_#I#' dbname='exhaustFans'/><br><input type='text' name='KI_Exhaust_Fans_Count_#I#' id ='KI_Exhaust_Fans_Count_#I#' dbname='exhaustFansCnt'/></td><td><a href='#'>Sink Facility</a> <input type='checkbox' name='KI_SinkFacility_#I#' id ='KI_SinkFacility_#I#' dbname='sinkFacility'/><br><input type='text' name='KI_SinkFacility_Count_#I#' id ='KI_SinkFacility_Count_#I#' dbname='sinkFacilityCnt'/></td></tr></table></div></div></div></div></div></td></tr></table></div></div></div></div></div> </div>";
			rows = rows.replace(/#I#/g,i);	
			}
		document.getElementById("staff").innerHTML = rows;
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

function getLivingRoom(i)
{
	var staffquarterId = $('#id').val();
	var  buildingid = $('#Building_Id_'+i).val();
	$.ajax({
		type : 'POST',
		url : "../Quarters/getroomdetails.htm",
		data : {
			'staffquarterId' : staffquarterId, 'buildingid':buildingid,'tablename':'S_Living_Room','wherecolumn':'Staff_Quarter_Id'
		},
		dataType : 'json',
		success : function(data) {
			$.each(data, function(k, v) {
				
				$('#LR_'+k+'_'+i).val(v);
				$('#LR_'+k+'_'+i).attr('checked', v)
			});

		},
		failure : function() {
			alert("Failed!");
		}
	});

}

function getDinningRoom( i)
{
	var staffquarterId = $('#id').val();
	var  buildingid = $('#Building_Id_'+i).val();
	$.ajax({
		type : 'POST',
		url : "../Quarters/getroomdetails.htm",
		data : {
			'staffquarterId' : staffquarterId, 'buildingid':buildingid,'tablename':'S_Dinning_Room','wherecolumn':'Staff_Quarter_Id'
		},
		dataType : 'json',
		success : function(data) {
			$.each(data, function(k, v) {
				
				$('#DR_'+k+'_'+i).val(v);
				$('#DR_'+k+'_'+i).attr('checked', v)
			});

		},
		failure : function() {
			alert("Failed!");
		}
	});

}

function getBedRoomO( i)
{
	var staffquarterId = $('#id').val();
	var  buildingid = $('#Building_Id_'+i).val();
	$.ajax({
		type : 'POST',
		url : "../Quarters/getroomdetails.htm",
		data : {
			'staffquarterId' : staffquarterId, 'buildingid':buildingid,'tablename':'S_BedRoom1','wherecolumn':'Staff_Quarter_Id'
		},
		dataType : 'json',
		success : function(data) {
			$.each(data, function(k, v) {
				
				$('#BR1_'+k+'_'+i).val(v);
				$('#BR1_'+k+'_'+i).attr('checked', v)
			});

		},
		failure : function() {
			alert("Failed!");
		}
	});

}

function getBedRoomT( i)
{
	var staffquarterId = $('#id').val();
	var  buildingid = $('#Building_Id_'+i).val();
	$.ajax({
		type : 'POST',
		url : "../Quarters/getroomdetails.htm",
		data : {
			'staffquarterId' : staffquarterId, 'buildingid':buildingid,'tablename':'S_BedRoom2','wherecolumn':'Staff_Quarter_Id'
		},
		dataType : 'json',
		success : function(data) {
			$.each(data, function(k, v) {
				
				$('#BR2_'+k+'_'+i).val(v);
				$('#BR2_'+k+'_'+i).attr('checked', v)
			});

		},
		failure : function() {
			alert("Failed!");
		}
	});

}

function getToiDetails( i)
{
	var staffquarterId = $('#id').val();
	var  buildingid = $('#Building_Id_'+i).val();
	$.ajax({
		type : 'POST',
		url : "../Quarters/gettoildetails.htm",
		data : {
			'staffquarterId' : staffquarterId, 'buildingid':buildingid,'tablename':'S_Toilets','wherecolumn':'Staff_Quarter_Id'
		},
		dataType : 'json',
		success : function(data) {
			$.each(data, function(k, v) {
				
				$('#TS_'+k+'_'+i).val(v);
				$('#TS_'+k+'_'+i).attr('checked', v)
			});

		},
		failure : function() {
			alert("Failed!");
		}
	});

}

function getKitcDetails( i)
{
	var staffquarterId = $('#id').val();
	var  buildingid = $('#Building_Id_'+i).val();
	$.ajax({
		type : 'POST',
		url : "../Quarters/getkitchendetails.htm",
		data : {
			'staffquarterId' : staffquarterId, 'buildingid':buildingid,'tablename':'S_Kitchen','wherecolumn':'Staff_Quarter_Id'
		},
		dataType : 'json',
		success : function(data) {
			$.each(data, function(k, v) {
				
				$('#KI_'+k+'_'+i).val(v);
				$('#KI_'+k+'_'+i).attr('checked', v)
			});

		},
		failure : function() {
			alert("Failed!");
		}
	});

}
$('#staffQuartersSaveDiv').on('click',function(){
	console.log('-----SchoolSave-----');
	var dropDownId = $('#institute').val();
	var finalSaveJson = {"staffQuarters":[]};
	$('#staff >div').each(function(){
		var $this= $(this);
		divJson={"staffQuarterId":dropDownId,"institutionId":dropDownId,"buildingId":$(this).index()+''};
		$($this).find('>div >div >div.panel-collapse >div >div.container').find('select').each(function(){
			divJson[$(this).attr('dbname')] = $(this).find('option:selected').text();
		});
		divJson['hasSeperateMeter'] = $($this).find('>div >div >div.panel-collapse >div >li').find('input[type="radio"]:eq(0)').is(':checked') ? 'Y' : 'N';
		$($this).find('>div >div >div.panel-collapse >div >div.table-responsive >table >tbody >tr').each(function(){
			divJson[$(this).find('h4').find('input').attr('dbname')] = $(this).find('h4').find('input').is(':checked')?'Y':'N';
			var childJson = {"staffQuarterId":divJson["staffQuarterId"],"institutionId":divJson["institutionId"],"buildingId":divJson["buildingId"]};
			$(this).find('div.panel-collapse').find('input').each(function(){
				childJson[$(this).attr('dbname')] = $(this).attr('type')=='checkbox'?($(this).is(':checked')?'Y':'N'):($(this).val() == ''?'0':$(this).val());
			});
			divJson[$(this).find('h4').find('input').attr('dbname')+'Obj'] = childJson; 
		});
		(finalSaveJson['staffQuarters']).push(divJson);
	});
	console.log(finalSaveJson);
	
	$.ajax({
	    type: 'POST',
     	url: "../staffQuarters/updateStaffQuartersDetails.htm",
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


		
</script>
