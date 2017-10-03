<label style="padding-right: 20px;"><h3>Dinning</h3></label>
<input type="checkbox" style="border-color: black; padding-left: 25px;">
<div class="table-responsive">
	<table class="table" id="dinningHallDiv" style="display:none;">
		<tr>
			<td><a href="#"><b style="color: black">Dining Hall Size</b></a>
				<br> <input type="text" name="DinningPlinth" id="DinningPlinth" /></td>
			<td><a href="#"><b style="color: black">Seating capacity</b></a>
				<br> <input type="text" name="SeatingCapacity"
				id="SeatingCapacity" /></td>
		</tr>
		<tr>
			<td><a href="#"><b style="color: black">Fixed Tables</b></a> <br>
				<input type="text" name="FixedTablesCount" id="FixedTablesCount" /></td>
			<td><a href="#"><b style="color: black">Movable Tables</b></a> <br>
				<input type="text" name="MovableTableCount" id="MovableTableCount" /></td>
		</tr>
		<tr>
			<td><a href="#"><b style="color: black">Fixed stools</b></a> <br>
				<input type="text" name="FixedStoolsCount" id="FixedStoolsCount" /></td>
			<td><a href="#"><b style="color: black">Movable stools</b></a> <br>
				<input type="text" name="MovableStoolsCount" id="MovableStoolsCount" /></td>
		</tr>
		<tr>
			<td><a href="#"><b style="color: black">Fixed Benches</b></a> <br>
				<input type="text" name="FixedBenchesCount" id="FixedBenchesCount" /></td>
			<td><a href="#"><b style="color: black">Movable Benches</b></a>
				<br> <input type="text" name="MovableBenchesCount"
				id="MovableBenchesCount" /></td>
		</tr>
		<tr>
			<td><a href="#"><b style="color: black">Hand wash area</b></a> <br>
				<input type="text" name="HandWashAreaCount" id="HandWashAreaCount" /></td>
			<td><a href="#"><b style="color: black">Num of taps </b></a> <br>
				<input type="text" name="NumOfWaterTaps" id="NumOfWaterTaps" /></td>
		</tr>
		<tr>
			<td><a href="#"><b style="color: black">Drinking water taps</b></a> 
			<br> <input type="text" name="DrinkingWaterTaps" id="DrinkingWaterTaps" /></td>
		</tr>
		<tr>
			<td><a href="#"><b style="color: black">RO Plant</b></a> 
			<br> <select name='RoPlant' id='RoPlant'  dbname="roPlant" >
			<option value='st'>Select Type</option><option value='250LPH'>250LPH</option>
			<option value='500LPH'>500LPH</option><option value='1000LPH'>1000LPH</option>
			</select></td>
			
			<td><a href="#"><b style="color: black">Fly Catchers</b></a> <br>
				<input type="text" name="NumofFlyCatcher" id="NumofFlyCatcher" dbname="flyCatchers" /></td>
				
		</tr>
		<tr>
			<td><a href="#"><b style="color: black">Tube Lights</b></a> <br>
				<input type="text" name="NumofTubelights" id="NumofTubelights" dbname="tubeLights" /></td>
			<td><a href="#"><b style="color: black">Fans </b></a> <br>
				<input type="text" name="NumofFans" id="NumofFans" dbname="numOfFans" /></td>
		</tr>
	</table>
	<div id="dinningHallDivs">
		<br/>
		<div><lable><b>No of Dinning Halls</b></lable><br/><input type="text" name="noOfHalls" id="noOfHalls" dbname="noOfHalls" /></div>
		<br/>
		<div id="dinningHalls" ></div>
	</div>
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
$(document).ready(function() {
	$('#noOfHalls').off('blur').on('blur',function(){
		var noOfHalls = $(this).val();
		var dinningHalls = ''; 
		$('#dinningHalls').html('');
		for (var i = 0; i < noOfHalls; i++) {
			dinningHalls += " <div class='container'><div class='panel-group' id='accordion' id='staff-qtr-ul'> <div class='panel panel-default'><div class='panel-heading'><h4 class='panel-title'><a data-toggle='collapse' data-parent='#accordion'	href='#dn_collapse110#I#'><span class='glyphicon glyphicon-menu-down'></span></a>&nbsp;&nbsp;&nbsp;Dinning Hall - <span id='panelName_#I#'></span><input type='text' name='Building_Id_#I#' id ='Building_Id_#I#' hidden='true'/></label></h4></div><div id='dn_collapse110#I#' class='panel-collapse collapse'><div class='panel-body'><div class='container'><table class='table' id='dinningHallDiv_#I#' >"+
				" <tbody><tr><td><a href='#'><b style='color: black'>Dining Hall Name</b></a><br><input type='text' name='HallName_#I#' id='HallName_#I#' dbname='hallName'></td></tr>"+
				" <tr><td><a href='#'><b style='color: black'>Dining Hall Size</b></a><br><input type='text' name='DinningPlinth_#I#' id='DinningPlinth_#I#' dbname='dinningPlinth'></td><td><a href='#'><b style='color: black'>Seating capacity</b></a> <br><input type='text' name='SeatingCapacity_#I#' id='SeatingCapacity_#I#' dbname='seatingCapacity'></td></tr>"+
				" <tr><td><a href='#'><b style='color: black'>Fixed Tables</b></a> <br><input type='text' name='FixedTablesCount_#I#' id='FixedTablesCount_#I#' dbname='fixedTablesCount' ></td><td><a href='#'><b style='color: black'>Movable Tables</b></a> <br><input type='text' name='MovableTableCount_#I#' id='MovableTableCount_#I#' dbname='movableTableCount'></td></tr>"+
				" <tr><td><a href='#'><b style='color: black'>Fixed stools</b></a> <br><input type='text' name='FixedStoolsCount_#I#' id='FixedStoolsCount_#I#' dbname='fixedStoolsCount'></td><td><a href='#'><b style='color: black'>Movable stools</b></a> <br><input type='text' name='MovableStoolsCount_#I#' id='MovableStoolsCount_#I#' dbname='movableStoolsCount'></td></tr>"+
				" <tr><td><a href='#'><b style='color: black'>Fixed Benches</b></a> <br><input type='text' name='FixedBenchesCount_#I#' id='FixedBenchesCount_#I#' dbname='fixedBenchesCount'></td><td><a href='#'><b style='color: black'>Movable Benches</b></a><br> <input type='text' name='MovableBenchesCount_#I#' id='MovableBenchesCount_#I#' dbname='movableBenchesCount'></td></tr>"+
				" <tr><td><a href='#'><b style='color: black'>Hand wash area</b></a> <br><input type='text' name='HandWashAreaCount_#I#' id='HandWashAreaCount_#I#' dbname='handWashAreaCount'></td><td><a href='#'><b style='color: black'>Num of taps </b></a> <br><input type='text' name='NumOfWaterTaps_#I#' id='NumOfWaterTaps_#I#' dbname='numOfWaterTaps'></td></tr>"+
				" <tr><td><a href='#'><b style='color: black'>Drinking water taps</b></a> <br> <input type='text' name='DrinkingWaterTaps_#I#' id='DrinkingWaterTaps_#I#' dbname='drinkingWaterTaps'></td></tr>"+
				" <tr><td><a href='#'><b style='color: black'>RO Plant</b></a> <br> <select name='RoPlant_#I#' id='RoPlant_#I#' dbname='roPlant'><option value='st'>Select Type</option><option value='250LPH'>250LPH</option><option value='500LPH'>500LPH</option><option value='1000LPH'>1000LPH</option></select></td><td><a href='#'><b style='color: black'>Fly Catchers</b></a> <br><input type='text' name='NumofFlyCatcher_#I#' id='NumofFlyCatcher_#I#' dbname='numofFlyCatcher'></td></tr> "+
				" <tr><td><a href='#'><b style='color: black'>Tube Lights</b></a> <br><input type='text' name='NumofTubelights_#I#' id='NumofTubelights_#I#' dbname='numofTubelights'></td><td><a href='#'><b style='color: black'>Fans </b></a> <br><input type='text' name='NumofFans_#I#' id='NumofFans_#I#' dbname='numofFans'></td></tr></tbody></table></div></div></div></div></div></div>";
			dinningHalls = dinningHalls.replace(/#I#/g,i);	
		}
		$('#dinningHalls').html(dinningHalls);
	});
});
function getDiningDetails() {
	var staffquarterId = $('#institute').val();
	$.ajax({
		type : 'POST',
		url : "../Quarters/getTableResults.htm",
		data : { 'instituteid' : staffquarterId, 'tablename':'DiningDetails','wherecolumn':'Institution_Id' },
		dataType : 'json',
		success : function(data) {
			$('#noOfHalls').val(data.length).trigger('blur');
			$.each(data, function(idx, dataObj) {
				$.each(dataObj, function(k, v) {
					$('#'+k+"_"+idx).val(v);
				});
				$('#panelName_'+idx).text(dataObj.HallName);
			});
		},
		failure : function() {
			alert("Failed!");
		}
	});
}

$('#dinningSaveDiv').on('click',function(){
	console.log('-----SchoolSave-----');
	var dropDownId = $('#institute').val();
	var finalSaveJson = [];
	$('#dinningHalls >div').each(function(idx){
		var dinningJson = {"dinningId":dropDownId,"institutionId":dropDownId,"buildingId":idx+""};
		$(this).find('input').each(function(){
			dinningJson[$(this).attr('dbname')] = $(this).val() == '' ? '0' :$(this).val();
		});
		finalSaveJson.push(dinningJson);
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

</script>