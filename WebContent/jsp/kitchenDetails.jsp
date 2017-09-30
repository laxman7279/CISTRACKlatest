<div id="kitchen">
	<ul>
	<li style="margin-bottom: 20px;" dbname="runningWaterConnection"><a href="#"><b
			style="color: black"> Running water connection </b></a>&nbsp;&nbsp;<b>:</b>
		<input type="radio" name="RunningWaterConnection" id ="RunningWaterConnection" value="yes"> <b>Yes</b>&nbsp;&nbsp;
		<input type="radio" name="RunningWaterConnection" id ="RunningWaterConnection" value="no"> <b>No</b></li>
	<li style="margin-bottom: 20px;" dbname="cookingType"><a href="#"><b
			style="color: black"> Cooking Type</b></a>&nbsp;&nbsp;<b>:</b> <input
		type="checkbox" name="CookingType" id="CookingType" value="steam" class="dontHideCls"><b>Steam</b>&nbsp;&nbsp;
		<input type="checkbox" name="CookingType" id="CookingType" value="gas" class="dontHideCls"> <b>Gas</b>
		&nbsp;&nbsp; <input type="checkbox" name="CookingType" id="CookingType" value="wood" class="dontHideCls"><b> Wood</b></li>

	<li style="margin-bottom: 20px;" dbname="drainageSystem"><a href="#"><b
			style="color: black">Drainage system </b></a>&nbsp;&nbsp;<b>:</b> <input
		type="radio" name="DrainageSystem" id="DrainageSystem" value="yes"> <b>Yes</b>&nbsp;&nbsp; <input
		type="radio" name="DrainageSystem" id="DrainageSystem" value="no"> <b>No</b></li>

	<li style="margin-bottom: 20px;" dbname="washArea"><a href="#"><b
			style="color: black">Wash Area </b></a>&nbsp;&nbsp;&nbsp;&nbsp;<b>:</b> <input
		type="radio" name="WashArea" id="WashArea" value="yes"> <b>Yes</b>&nbsp;&nbsp;
		<input type="radio" name="WashArea" id="WashArea" value="no"><b> No</b></li>
	<li style="margin-bottom: 20px;"><a href="#"><b
			style="color: black">Size of Wash area </b></a>&nbsp;&nbsp;<input
		type="checkbox" dbname="washPlinth" name="WashPlinth" /><br> <input type="text"  dbname="sizeofWashArea" 
		name="SizeofWashArea" id="SizeofWashArea" /></li>

	<li style="margin-bottom: 20px;" dbname="dryStorageArea"><a href="#"><b
			style="color: black">Dry storage Room</b></a>&nbsp;&nbsp;<b>:</b> <input
		type="radio" name="DryStorageArea" id ="DryStorageArea" value="yes"> <b>Yes</b>&nbsp;&nbsp;
		<input type="radio" name="DryStorageArea" id ="DryStorageArea" value="no"> <b>No</b></li>

	<li style="margin-bottom: 20px;" dbname="wetStorageArea"><a href="#"><b
			style="color: black"> Wet storage Room</b></a>&nbsp;&nbsp;<b>:</b> <input
		type="radio" name="WetStorageArea" id="WetStorageArea" value="yes"><b> Yes</b>&nbsp;&nbsp;
		<input type="radio" name="WetStorageArea" id="WetStorageArea" value="no"><b> No</b></li>

	<li style="margin-bottom: 20px;" dbname="cuttingRoom"><a href="#"><b
			style="color: black"> Cutting Room</b></a>&nbsp;&nbsp;<b>:</b> <input
		type="radio" name="CuttingRoom" id="CuttingRoom" value="yes"> <b>Yes</b>&nbsp;&nbsp; <input
		type="radio" name="CuttingRoom" id="CuttingRoom" value="no"><b> No</b></li>

	<li style="margin-bottom: 20px;" dbname="gasStorageRoom"><a href="#"><b
			style="color: black">Gas storage Room</b></a>&nbsp;&nbsp;<b>:</b> <input
		type="radio" name="GasStorageRoom"  id = "GasStorageRoom" value="yes"> <b>Yes</b>&nbsp;&nbsp;
		<input type="radio" name="GasStorageRoom"  id = "GasStorageRoom" value="no"><b> No</b></li>

	<li style="margin-bottom: 20px;" dbname="kitchenShed"><a href="#"><b
			style="color: black"> kitchen shed </b></a>&nbsp;&nbsp;<b>:</b> <input
		type="radio" name="KitchenShed"  id = "KitchenShed" value="yes"> <b>Yes</b>&nbsp;&nbsp; <input
		type="radio" name="KitchenShed"  id = "KitchenShed" value="no"><b> No</b></li>
	<li style="margin-bottom: 20px;" ><a href="#"><b
			style="color: black">kitchen shed size</b></a>&nbsp;&nbsp;&nbsp;&nbsp;<input
		type="checkbox" /> <br> <input type="text" name="KitchenShedSize" id ="KitchenShedSize"  dbname="kitchenShedSize"
		id="Plinth_Area" /></li>
	</ul>
	<div style="float: left; padding: 30px;"id="kitchenSaveDiv">
		<input type="button" name="Save" value="Save">
	</div>
	<div style="float: left; padding:30px"	id="kitchenCancelDiv">
		<input type="button" name="Cancel" value="Cancel">
	</div>	
</div>
<script type="text/javascript">

$('#kitchenSaveDiv').on('click',function(){
	console.log('-----SchoolSave-----');
	var dropDownId = $('#institute').val();
	var finalSaveJson = {"kitchenId":dropDownId,"institutionId":dropDownId};
	
	$('#kitchen').find('[dbname]').each(function(){
		if($(this).is('li')){
			finalSaveJson[$(this).attr("dbname")] = $(this).find('input[type="radio"]:checked').val() == undefined ? "" : $(this).find('input[type="radio"]:checked').val();
		}else if($(this).is('input')){
			finalSaveJson[$(this).attr('dbname')] = $(this).attr('type')=='checkbox'?($(this).is(':checked')?'Y':'N'):($(this).val() == ''?'0':$(this).val());
		}else{
			console.log('-----other tag-----');
		}
	});
	$('li[dbname="cookingType"]').find('input[type="checkbox"]:checked').each(function(){
		finalSaveJson['cookingType'] += finalSaveJson['cookingType'] == "" ? $(this).val() : "|"+$(this).val();	
	});
	console.log(finalSaveJson);
	
	$.ajax({
	    type: 'POST',
     	url: "../otherQuarters/updateKitchenDetails.htm",
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


function getKitchenDetails() {
	var staffquarterId = $('#institute').val();
	$.ajax({
		type : 'POST',
		url : "../Quarters/getTableDetails.htm",
		data : { 'instituteid' : staffquarterId, 'tablename':'Kitchen','wherecolumn':'Institution_Id' },
		dataType : 'json',
		success : function(data) {
			$.each(data, function(k, v) {
				console.log(k);
				if(k=='SizeofWashArea' || k=='KitchenShedSize' || k=='Kitchen_Id' || k=='Institution_Id') {
						$('#'+k).val(v);
				}else if(k == 'CookingType' && data['CookingType'] != undefined && data['CookingType'] != "" ){
					$('input[name="CookingType"]').prop('checked',false); 
					for(var i=0,types=data['CookingType'].split("|");i<types.length;i++){
						$('input[name="CookingType"][value="'+types[i]+'"]').prop('checked',true); 
					}
				}else if(k=='WashPlinth'){
					console.log((v== 'Y'||'y'||'Yes'||'yes'));
					$('input[name="'+k+'"]').prop('checked',(v== 'Y'||'y'||'Yes'||'yes') ? true :false);
				}else if(v=='Yes' || v=='yes') {
						$('input:radio[name='+k+']')[0].checked = true;
				}else if($('input:radio[name='+k+']').length > 0){
						$('input:radio[name='+k+']')[1].checked = true;
				}
			});
			
			
		},
		failure : function() {
			alert("Failed!");
		}
	});
}

</script>