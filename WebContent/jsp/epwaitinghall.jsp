<label style="padding-right: 20px;"><h3>External Parent
		Waiting Hall</h3></label>
<div class="table-responsive">
	<table class="table">

		
		<tr>
			<td><a href="#">Length (in sft)</a> <br> <input type="text"
				name="d_waiting_Length" id="d_waiting_Length" dbname="length" /></td>
			<td><a href="#">Width (in sft)</a> <br> <input type="text"
				name="d_waiting_Width" id="d_waiting_Width" dbname="width" /></td>
		</tr>
		<tr>
			<td><a href="#">Carpet Area</a> <input type="checkbox"
				name="d_waiting_Plinth_Area_check" id="d_waiting_Plinth_Area_check"
				dbname="carpetArea" /><br> <input type="text"
				name="d_waiting_Plinth_Area" id="d_waiting_Plinth_Area"
				dbname="carpetAreaCnt" /></td>
			<td><a href="#">Ceiling Fans</a> <input type="checkbox"
				name="ceilingFans" id="ceilingFans" dbname="ceilingFans" /><br>
				<input type="text" name="d_waiting_celing_fan"
				id="d_waiting_celing_fan" dbname="ceilingFansCnt" /></td>
		</tr>
		<tr>
			<td><a href="#">Tube Lights</a> <input type="checkbox"
				name="d_waiting_tube_light_check" id="d_waiting_tube_light_check"
				dbname="tubeLights" /><br> <input type="text"
				name="d_waiting_tube_light" id="d_waiting_tube_light"
				dbname="tubeLightsCnt" /></td>
			<td><a href="#">Bulbs</a> <input type="checkbox"
				name="Plinth_Area_check_check" id="Plinth_Area" dbname="bulbs" /><br>
				<input type="text" name="d_waiting_bulb" id="d_waiting_bulb"
				dbname="bulbsCnt" /></td>
		</tr>
		<tr>
			<td><a href="#">S type Chairs</a> <input type="checkbox"
				name="d_waiting_stype_chairs_check"
				id="d_waiting_stype_chairs_check" dbname="sTypeChairs" /><br> <input
				type="text" name="d_waiting_stype_chairs"
				id="d_waiting_stype_chairs" dbname="sTypeChairsCnt" /></td>
			<td><a href="#">Chairs</a> <input type="checkbox"
				name="Plinth_Area_check" id="Plinth_Area_check" dbname="chairs" /><br>
				<input type="text" name="d_waiting_chairs" id="d_waiting_chairs"
				dbname="chairsCnt" /></td>
		</tr>

		<tr>
			<td><a href="#">Tables</a> <input type="checkbox"
				name="d_waiting_tables_check" id="d_waiting_tables_check"
				dbname="tables" /><br> <input type="text"
				name="d_waiting_tables" id="d_waiting_tables" dbname="tablesCnt" /></td>
			<td><a href="#">Stools</a> <input type="checkbox"
				name="Plinth_Area_check" id="Plinth_Area_check" dbname="stools" /><br>
				<input type="text" name="d_waiting_Stools" id="d_waiting_Stools"
				dbname="stoolsCnt" /></td>
		</tr>
		<tr>
			<td><a href="#">Wall Mount Fans</a> <input type="checkbox"
				name="d_waiting_wall_mount_fans_check"
				id="d_waiting_wall_mount_fans_check" dbname="wallMountFans" /><br>
				<input type="text" name="d_waiting_wall_mount_fans"
				id="d_waiting_wall_mount_fans" dbname="wallMountFansCnt" /></td>
			<td><a href="#">Pedestal fans</a> <input type="checkbox"
				name="Plinth_Area_check_check" id="Plinth_Area_check"
				dbname="pedestalFans" /><br> <input type="text"
				name="d_waiting_pedestral_fans" id="d_waiting_pedestral_fans"
				dbname="pedestalFansCnt" /></td>
		</tr>
		<tr>
			<td><a href="#">Doors</a> <input type="checkbox"
				name="d_waiting_doors_check" id="d_waiting_doors_check"
				dbname="doors" /><br> <input type="text" name="d_waiting_doors"
				id="d_waiting_doors" dbname="doorsCnt" /></td>
			<td><a href="#">Windows</a> <input type="checkbox"
				name="d_waiting_windows_check" id="d_waiting_windows_check"
				dbname="windows" /><br> <input type="text"
				name="d_waiting_windows" id="d_waiting_windows" dbname="windowsCnt" /></td>
		</tr>

		<tr>
			<td><a href="#">Ventilators</a> <input type="checkbox"
				name="d_waiting_Ventilators_check" id="d_waiting_Ventilators_check"
				dbname="ventilators" /><br> <input type="text"
				name="d_waiting_Ventilators" id="d_waiting_Ventilators"
				dbname="ventilatorsCnt" /></td>
		</tr>

	</table>
	<input type="text" name="Dinning_id" id="Dinning_id" hidden="true" /> 
	<input type="text" name="Institution_Id" id="Institution_Id" hidden="true" />
	<div style="float: left; padding: 30px;"id="dinningSaveDiv">
		<input type="button" name="Save" value="Save">
	</div>
	<div style="float: left; padding:30px"	id="dinningCancelDiv">
		<input type="button" name="Cancel" value="Cancel">
	</div>	
</div>

<script type="text/javascript">
function getDiningDetails() {
	var staffquarterId = $('#institute').val();
	$.ajax({
		type : 'POST',
		url : "../Quarters/getEWPDetails.htm",
		data : { 'instituteid' : staffquarterId, 'tablename':'DiningDetails','wherecolumn':'Institution_Id' },
		dataType : 'json',
		success : function(data) {
			$("#d_waiting_Plinth_Area").val(data.Plinth_Area);
			$("#d_waiting_celing_fan").val(data.Ceiling_Fans_Count);
			$("#d_waiting_tube_light").val(data.TubeLights_Count);
			$("#d_waiting_bulb").val(data.Bulbs_Count);
			$("#d_waiting_stype_chairs").val(data.S_Type_Chairs_Count);
			$("#d_waiting_chairs").val(data.Chairs_Count);
			$("#d_waiting_tables").val(data.Tables_Count);
			$("#d_waiting_Stools").val(data.Stools_Count);
			$("#d_waiting_wall_mount_fans").val(data.Wall_Mount_Fans_Count);
			$("#d_waiting_pedestral_fans").val(data.Pedestal_Fans_Count);
			$("#d_waiting_doors").val(data.Doors_Count);
			$("#d_waiting_windows").val(data.Windows_Count);
			$("#d_waiting_Ventilators").val(data.Ventilators_Count);
			$("#d_waiting_blockId").val(data.Block_Id);
			$("#d_waiting_floorId").val(data.Floor_Id);
			
			//$("#d_waiting_Plinth_Area_check").attr('checked',data.Plinth_Area);
			$("#d_waiting_celing_fan_check").attr('checked',data.Ceiling_Fans);
			$("#d_waiting_tube_light_check").attr('checked',data.TubeLights);
			$("#d_waiting_bulb_check").attr('checked',data.Bulbs);
			$("#d_waiting_stype_chairs_check").attr('checked',data.S_Type_Chairs);
			$("#d_waiting_chairs_check").attr('checked',data.Chairs);
			$("#d_waiting_tables_check").attr('checked',data.Tables);
			$("#d_waiting_Stools_check").attr('checked',data.Stools);
			$("#d_waiting_wall_mount_fans_check").attr('checked',data.Wall_Mount_Fans);
			$("#d_waiting_pedestral_fans_check").attr('checked',data.Pedestal_Fans);
			$("#d_waiting_doors_check").attr('checked',data.Doors);
			$("#d_waiting_windows_check").attr('checked',data.Windows);
			$("#d_waiting_Ventilators_check").attr('checked',data.Ventilators);
		},
		failure : function() {
			alert("Failed!");
		}
	});
}

$('#dinningSaveDiv').on('click',function(){
	console.log('-----SchoolSave-----');
	var dropDownId = $('#institute').val();
	var finalSaveJson = {"dinningId":dropDownId,"institutionId":dropDownId};
	$('#dinningHallDiv').find('input').each(function(){
		finalSaveJson[formatCamcelCaseKey($(this).attr('id'))] = $(this).val() == '' ? '0' :$(this).val();
	});
	console.log(finalSaveJson);
	$.ajax({
	    type: 'POST',
     	url: "../otherQuarters/updateDinningDetails.htm",
     	data : {'finalSaveJson':JSON.stringify(finalSaveJson)},
        dataType: 'json',
        success: function(data){
        	console.log('---updateSchoolDetails----Success-----');
        	alert('Successfully Saved');
        },
        error:function(err){
        	console.log('---updateSchoolDetails----Failure-----');
        	alert('Save Failed with an Exception');
        	console.log(err);
        }
	});
});
function formatCamcelCaseKey(key){
	key = key == undefined ? 'emptyId' : key;
	return key.replace(/(?:^\w|[A-Z]|\b\w)/g, function(letter, index) { return index == 0 ? letter.toLowerCase() : letter.toUpperCase(); });
}

</script>