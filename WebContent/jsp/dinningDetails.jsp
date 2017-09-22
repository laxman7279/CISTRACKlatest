<label style="padding-right: 20px;"><h3>Dinning</h3></label>
<input type="checkbox" style="border-color: black; padding-left: 25px;">
<div class="table-responsive">
	<table class="table" id="dinningHallDiv">
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
		url : "../Quarters/getTableDetails.htm",
		data : { 'instituteid' : staffquarterId, 'tablename':'DiningDetails','wherecolumn':'Institution_Id' },
		dataType : 'json',
		success : function(data) {
			$.each(data, function(k, v) {
				$('#'+k).val(v);
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