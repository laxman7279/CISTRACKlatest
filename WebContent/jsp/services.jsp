<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Lucrative Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<title>TSWREIS CISTracker</title>
<link href="../css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="../css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="../css/jquery.treetable.theme.default.css" rel="stylesheet"	type="text/css" />
<link href="../css/jquery.treetable.css" rel="stylesheet" type="text/css" />
<link href="../css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
<link href="../css/font-awesome.css" rel="stylesheet">
<link href="../css/assertManagement.css" rel="stylesheet" type="text/css" media="all" />

<script src="../js/jquery-2.1.4.min.js" type="text/javascript"></script>
<script src="../js/move-top.js"  type="text/javascript"></script> 
<script src="../js/easing.js"  type="text/javascript"></script>
<script src="../js/bootstrap.js"  type="text/javascript"></script>
<script src="../js/jquery.magnific-popup.js" type="text/javascript"></script>
<script src="../js/jquery.treetable.js"  type="text/javascript"></script>

<script src="../js/jquery.loadingoverlay.min.js"  type="text/javascript"></script>
<script src="../js/jquery.loadingoverlay_progress.min.js"  type="text/javascript"></script>

<script type="application/x-javascript">
	addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
	function hideURLbar(){ window.scrollTo(0,1); } 

	$(document).ready(function() {
		$(document).ajaxStart(function(){
		    $.LoadingOverlay("show");
		});
		$(document).ajaxStop(function(){
		    $.LoadingOverlay("hide");
		});
		$('input[type="checkbox"]:not(.dontHideCls)').hide();
		//$('input[type="text"],select').addClass("form-control");
		$(".next-step").click(function(e) {
			var $active = $('.nav-tabs li.active');
			$active.next().removeClass('disabled');
			nextTab($active);
		});
		$(".prev-step").click(function(e) {
			var $active = $('.nav-tabs li.active');
			prevTab($active);
		});
		
		$("#insname").html($("#institute option:selected").text());
	});
	function nextTab(elem) {
		$(elem).next().find('a[data-toggle="tab"]').click();
	}
	function prevTab(elem) {
		$(elem).prev().find('a[data-toggle="tab"]').click();
	}

	jQuery(document).ready(function($) {
		$(".Collapsable").load(function() {
			$(this).parent().children().toggle();
			$(this).toggle();
		});

		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1000);
		});
		GetDropDownData();
	});

	function GetDropDownData() {
		$.ajax({
			type : 'POST',
			url : "../CIS/getdistrict.htm",
			dataType : 'json',
			success : function(data) {
				$.each(data.districts, function(i, item) {
					$('#district').append($('<option />', {
						value : item.districtid,
						text : item.districtname
					}));
				});
			},
			failure : function() {
				alert("Failed!");
			}
		});
	}

	$(function() {
		$("#district").change(function() {
			var selectedText = $(this).find("option:selected").text();
			var selectedValue = $(this).val();
			$('#institute').empty();
			$('#institute').append($('<option />', {
				value : 0,
				text : 'Select Institute'
			}));
			$.ajax({
				type : 'POST',
				url : "../CIS/getinstitutue.htm",
				data : {
					'districtid' : selectedValue
				},
				dataType : 'json',
				success : function(data) {
					$.each(data.institutes, function(i, item) {
						$('#institute').append($('<option />', {
							value : item.instituteid,
							text : item.institutename
						}));
					});
				},
				failure : function() {
					alert("Failed!");
				}
			});
		});
	});

	$("#Asset-Table").treetable();
	function openCity(evt, cityName) {
		var i, tabcontent, tablinks;
		tabcontent = document.getElementsByClassName("tabcontent");
		for (i = 0; i < tabcontent.length; i++) {
			tabcontent[i].style.display = "none";
		}
		tablinks = document.getElementsByClassName("tablinks");
		for (i = 0; i < tablinks.length; i++) {
			tablinks[i].className = tablinks[i].className.replace("active", "");
		}
		document.getElementById(cityName).style.display = "block";
		evt.currentTarget.className += " active";
	}

	// Get the element with id="defaultOpen" and click on it
	//document.getElementById("defaultOpen").click();

	function toggle() {

		switchSchool();
		switchOverview();
		switchStaffQtr();
		switchPrinciQtr();
		switchDormBuilding();
		switchOthers();
		switchDinning();
		switchKitchen();

	}
	function switchKitchen() {
		switchClass();

		$('#switchKitchen').addClass('active');

		//alert('Kitchen report');

		//alert(document.getElementById('School-Div').style.display);
		if (document.getElementById('Kitchen-Div').style.display == 'none')
			document.getElementById('Kitchen-Div').style.display = 'block';
		else
			document.getElementById('Kitchen-Div').style.display = 'none';
		document.getElementById('School-Div').style.display = 'none';
		document.getElementById('Overview-Div').style.display = 'none';
		document.getElementById('Staff-Div').style.display = 'none';
		document.getElementById('Principal-Div').style.display = 'none';
		document.getElementById('Dorm-Div').style.display = 'none';
		document.getElementById('Others-Div').style.display = 'none';

		document.getElementById('stats-div').style.display = 'none';
		document.getElementById('Dinning-Div').style.display = 'none';
		getKitchenDetails();

	}

	function switchDinning() {
		switchClass();

		$('#switchDinning').addClass('active');

		//alert('Dinning report');

		//alert(document.getElementById('School-Div').style.display);
		if (document.getElementById('Dinning-Div').style.display == 'none')
			document.getElementById('Dinning-Div').style.display = 'block';
		else
			document.getElementById('Dinning-Div').style.display = 'none';
		document.getElementById('School-Div').style.display = 'none';
		document.getElementById('Overview-Div').style.display = 'none';
		document.getElementById('Staff-Div').style.display = 'none';
		document.getElementById('Principal-Div').style.display = 'none';
		document.getElementById('Dorm-Div').style.display = 'none';
		document.getElementById('Others-Div').style.display = 'none';

		document.getElementById('stats-div').style.display = 'none';
		document.getElementById('Kitchen-Div').style.display = 'none';
		
		getDiningDetails();

	}

	function switchSchool() {
		switchClass();

		$('#switchSchool').addClass('active');

		getSchoolDetails();
		//alert(document.getElementById('School-Div').style.display);
		if (document.getElementById('School-Div').style.display == 'none'){
			document.getElementById('School-Div').style.display = 'block';
		
		}else
			document.getElementById('School-Div').style.display = 'none';

		document.getElementById('Overview-Div').style.display = 'none';
		document.getElementById('Staff-Div').style.display = 'none';
		document.getElementById('Principal-Div').style.display = 'none';
		document.getElementById('Dorm-Div').style.display = 'none';
		document.getElementById('Others-Div').style.display = 'none';

		document.getElementById('stats-div').style.display = 'none';
		document.getElementById('Dinning-Div').style.display = 'none';
		document.getElementById('Kitchen-Div').style.display = 'none';

	}
	function switchClass() {

		if ($('#switchOverview').hasClass('active')) {

			//alert('smskdskld');

			$('#switchOverview').removeClass('active');

		}

		if ($('#switchSchool').hasClass('active')) {

			//alert('switchSchool');

			$('#switchSchool').removeClass('active');

		}

		if ($('#switchStaffQtr').hasClass('active')) {

			//alert('switchStaffQtr');

			$('#switchStaffQtr').removeClass('active');

		}

		if ($('#switchPrinciQtr').hasClass('active')) {

			//alert('switchPrinciQtr');

			$('#switchPrinciQtr').removeClass('active');

		}

		if ($('#switchDormBuilding').hasClass('active')) {

			//alert('switchDormBuilding');

			$('#switchDormBuilding').removeClass('active');

		}

		if ($('#switchOthers').hasClass('active')) {

			//alert('switchOthers');

			$('#switchOthers').removeClass('active');

		}
		if ($('#switchDinning').hasClass('active')) {

			//alert('switchDinning');

			$('#switchDinning').removeClass('active');

		}

		if ($('#switchKitchen').hasClass('active')) {

			//alert('switchKitchen');

			$('#switchKitchen').removeClass('active');

		}

	}

	function switchOverview() {

		switchClass();

		$('#switchOverview').addClass('active');

		//alert('school report1111');
		$("#insname").html($("#institute option:selected").text());
		//alert(document.getElementById('School-Div').style.display);
		if (document.getElementById('Overview-Div').style.display == 'none')
			document.getElementById('Overview-Div').style.display = 'block';
		else
			document.getElementById('Overview-Div').style.display = 'none';

		if (document.getElementById('stats-div').style.display == 'none')
			document.getElementById('stats-div').style.display = 'block';
		else
			document.getElementById('stats-div').style.display = 'none';

		document.getElementById('School-Div').style.display = 'none';
		document.getElementById('Staff-Div').style.display = 'none';
		document.getElementById('Principal-Div').style.display = 'none';
		document.getElementById('Dorm-Div').style.display = 'none';
		document.getElementById('Others-Div').style.display = 'none';
		document.getElementById('Dinning-Div').style.display = 'none';
		document.getElementById('Kitchen-Div').style.display = 'none';
		
		
	}

	function switchStaffQtr() {
		switchClass();

		$('#switchStaffQtr').addClass('active');
		

		//alert(document.getElementById('Staff-Div').style.display);
		if (document.getElementById('Staff-Div').style.display == 'none')
			document.getElementById('Staff-Div').style.display = 'block';
		else
			document.getElementById('Staff-Div').style.display = 'none';

		document.getElementById('School-Div').style.display = 'none';
		document.getElementById('Overview-Div').style.display = 'none';
		document.getElementById('Principal-Div').style.display = 'none';
		document.getElementById('Dorm-Div').style.display = 'none';
		document.getElementById('Others-Div').style.display = 'none';
		document.getElementById('stats-div').style.display = 'none';
		document.getElementById('Dinning-Div').style.display = 'none';
		document.getElementById('Kitchen-Div').style.display = 'none';
		
		getStaffQuarters();
	}

	function switchPrinciQtr() {
		switchClass();

		$('#switchPrinciQtr').addClass('active');

		

		//alert(document.getElementById('Principal-Div').style.display);
		if (document.getElementById('Principal-Div').style.display == 'none')
			document.getElementById('Principal-Div').style.display = 'block';
		else
			document.getElementById('Principal-Div').style.display = 'none';

		document.getElementById('School-Div').style.display = 'none';
		document.getElementById('Overview-Div').style.display = 'none';
		document.getElementById('Staff-Div').style.display = 'none';
		document.getElementById('Dorm-Div').style.display = 'none';
		document.getElementById('Others-Div').style.display = 'none';
		document.getElementById('stats-div').style.display = 'none';
		document.getElementById('Dinning-Div').style.display = 'none';
		document.getElementById('Kitchen-Div').style.display = 'none';
		
		getPrinQuarters();
	}
	function switchDormBuilding() {
		switchClass();
			
		$('#switchDormBuilding').addClass('active');
		getDormitoryDetails();
		//alert('switchDormBuilding');

		//alert(document.getElementById('Dorm-Div').style.display);
		if (document.getElementById('Dorm-Div').style.display == 'none')
			document.getElementById('Dorm-Div').style.display = 'block';
		else
			document.getElementById('Dorm-Div').style.display = 'none';

		document.getElementById('School-Div').style.display = 'none';
		document.getElementById('Overview-Div').style.display = 'none';
		document.getElementById('Staff-Div').style.display = 'none';
		document.getElementById('Principal-Div').style.display = 'none';
		document.getElementById('Others-Div').style.display = 'none';
		document.getElementById('stats-div').style.display = 'none';
		document.getElementById('Dinning-Div').style.display = 'none';
		document.getElementById('Kitchen-Div').style.display = 'none';

	}

	function switchOthers() {
		switchClass();

		$('#switchOthers').addClass('active');
		populateOtherDetails();
		//alert('others report');

		//alert(document.getElementById('Dorm-Div').style.display);
		if (document.getElementById('Others-Div').style.display == 'none')
			document.getElementById('Others-Div').style.display = 'block';
		else
			document.getElementById('Others-Div').style.display = 'none';

		document.getElementById('School-Div').style.display = 'none';
		document.getElementById('Overview-Div').style.display = 'none';
		document.getElementById('Staff-Div').style.display = 'none';
		document.getElementById('Principal-Div').style.display = 'none';
		document.getElementById('Dorm-Div').style.display = 'none';
		document.getElementById('stats-div').style.display = 'none';
		document.getElementById('Dinning-Div').style.display = 'none';
		document.getElementById('Kitchen-Div').style.display = 'none';
	}

	

	

	function addTypeCapacity($this,divKey) {
		var rows = "";
		for (var i = 0; i < $($this).val(); i++) {
			rows += "<div class='table-responsive'><table class='table'><tr><td><a href='#' style='padding-bottom: 10px;'><label  style='color:black;'>Type</label></a><select name='waterTank_"+i+" id='waterTank_"+i+" class='form-control'><option value='st'>Select Type</option><option value='RCC'>RCC</option><option value='PVC'>PVC</option><option value='BOTH'>BOTH</option></select> </td><td style='margin-bottom:20px;'><a href='#'><b style='color:black;'>Capacity</b></a><input type='text' class='form-control'></td></tr></table></div>";
		}
		$("#"+divKey).html(rows);
	}

	function addTypeCapacityd() {

		var a;

		a = document.getElementById('type-capacityd').value;

		if (a == "") {
			alert("Please enter some numeric value");
		} else {
			var rows = "";
			for (var i = 0; i < a; i++) {
				rows += " 						<div class='table-responsive'> 							<table class='table'> 								<tr> 									 									 <td> 				 <a href='#' style='padding-bottom: 10px;'><label  style='color:black;'>Type</label></a> 				<select name='floor' id='floor1' 	class='form-control'> 					<option value='st'>Select Type</option> 					 					<option value='rc'>rcc</option> 					 					<option value='pv'>pvc</option> 					<option value='ma'>masonry</option> 								 				</select> </td> 					 									<td style='margin-bottom:20px;'><a href='#'><b style='color:black;'>Capacity</b></a>                             <input type='text' class='form-control'>                                </td> 							   	                          </tr> 							  								 							</table> 						</div>	";
			}

			document.getElementById("dtank").innerHTML = rows;
		}

	}

	function addClassRooms() {

		var a;

		a = $('#total-class-rooms').val();

		if (a == "") {
			alert("Please enter some numeric value");
		} else {
			var rows = "";
			for (var i = 0; i < a; i++) {
				rows += " <div class='panel-group' id='accordion'> <div class='panel panel-default'> <div class='panel-heading'> <h4 class='panel-title'> <a data-toggle='collapse' data-parent='#accordion'  	href='#collapse1200"
						.concat(i + 1)
						+ "'> <span class='glyphicon glyphicon-menu-down'></span></a>&nbsp;&nbsp;Class Room&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h4> </div><div id='collapse1200"
								.concat(i + 1)
						+ "' class='panel-collapse collapse'><div class='panel-body'> <div class='table-responsive'><table class='table'> <tr>  <td>  <a href='#' style='padding-bottom: 10px;'>Floor</a> <select  name ='CR_floor_"+i+"'   id ='CR_floor_"+i+"'   dbname='floor' class='form-control'> <option value='Select Floor'>Select Floor</option> <option value='Ground Floor'>Ground Floor</option> <option value='First Floor'>First Floor</option> <option value='Second Floor'>Second Floor</option> </select> </td> 	</tr> <tr> <td><a href='#'>Table Fans</a> <input type='checkbox' name ='CR_TableFans_"+i+"'   id ='CR_TableFans_"+i+"' dbname='tableFans'><br> <input type='text' name ='CR_TableFansCount_"+i+"'   id ='CR_TableFansCount_"+i+"' dbname='tableFansCount' ></td> <td><a href='#'>Reading Tables</a> <input type='checkbox' dbname='readingTables' name ='CR_ReadingTables_"+i+"'   id ='CR_ReadingTables_"+i+"'><br><input type='text' dbname='readingTablesCount' name ='CR_ReadingTablesCount_"+i+"'   id ='CR_ReadingTablesCount_"+i+"'></td> </tr> <tr> <td><a href='#'>Ceiling Fans</a> <input type='checkbox' dbname='ceilingFans' name ='CR_CeilingFans_"+i+"'   id ='CR_CeilingFans_"+i+"'><br> <input type='text' dbname='ceilingFansCount' name ='CR_CeilingFansCount_"+i+"'   id ='CR_CeilingFansCount_"+i+"'></td> <td><a href='#'>Tables</a> <input type='checkbox' dbname='tables' name ='CR_Tables_"+i+"'   id ='CR_Tables_"+i+"'><br> <input type='text' dbname='tablesCount' name ='CR_TablesCount_"+i+"'   id ='CR_TablesCount_"+i+"'></td> </tr><tr> <td><a href='#'>Chairs</a> <input type='checkbox' dbname='chairs' name ='CR_Chairs_"+i+"'   id ='CR_Chairs_"+i+"'><br> <input type='text' dbname='chairsCount' name ='CR_ChairsCount_"+i+"'   id ='CR_ChairsCount_"+i+"'></td> <td><a href='#'>Tube Lights</a> <input dbname='tubeLights' type='checkbox' name ='CR_TubeLights_"+i+"'   id ='CR_TubeLights_"+i+"'><br> <input type='text' dbname='tubeLightsCount' name ='CR_TubeLightsCount_"+i+"'   id ='CR_TubeLightsCount_"+i+"'></td> </tr> <tr> <td><a href='#'>Bulbs</a> <input dbname='bulbs'  type='checkbox' name ='CR_Bulbs_"+i+"'   id ='CR_Bulbs_"+i+"'><br> <input type='text' dbname='bulbsCount' name ='CR_BulbsCount_"+i+"'   id ='CR_BulbsCount_"+i+"' ></td> <td><a href='#'>Locker Units</a> <input type='checkbox' dbname='lockerUnits' name ='CR_LockerUnits_"+i+"'   id ='CR_LockerUnits_"+i+"'><br> <input type='text' dbname='lockerUnitsCount' name ='CR_LockerUnitsCount_"+i+"'   id ='CR_LockerUnitsCount_"+i+"'></td> </tr> <tr> <td><a href='#'>Stools</a> <input type='checkbox' name ='CR_Stools_"+i+"'  dbname='stools' id ='CR_Stools_"+i+"'><br> <input type='text' dbname='stoolsCount' name ='CR_StoolsCount_"+i+"'   id ='CR_StoolsCount_"+i+"'></td> <td><a href='#'>S Type chairs</a> <input type='checkbox' dbname='sTypeChairs' name ='CR_STypeChairs_"+i+"'   id ='CR_STypeChairs_"+i+"'><br> <input type='text' dbname='sTypeChairsCount' name ='CR_STypeChairsCount_"+i+"'   id ='CR_STypeChairsCount_"+i+"'></td> </tr> <tr> <td><a href='#'>Wooden Almira</a><br><input type='text' name='CR_Wooden_Almira_"+i+"' id='CR_Wooden_Almira_"+i+"' dbname='woodenAlmira' /></td><td><a href='#'>Dual Desks</a> <input type='checkbox' dbname='dualDesk' name ='CR_DualDesks_"+i+"'   id ='CR_DualDesks_"+i+"'><br> <input type='text' dbname='dualDeskCount' name ='CR_DualDesksCount_"+i+"'   id ='CR_DualDesksCount_"+i+"'></td> <td></td> </tr> <tr> <td><a href='#'>Glass Door Almira</a> <input type='checkbox' dbname='glassDoorAlmira' name ='CR_GDAlmira_"+i+"'   id ='CR_GDAlmira_"+i+"'><br> <input type='text' dbname='glassDoorAlmiraCount' name ='CR_GDAlmiraCount_"+i+"'   id ='CR_GDAlmiraCount_"+i+"'></td><td><a href='#'>Store well Almira</a> <input type='checkbox' dbname='storeWellAlmira' name ='CR_SWA_"+i+"'   id ='CR_SWA_"+i+"'><br> <input type='text' dbname='storeWellAlmiraCount' name ='CR_SWACount_"+i+"'   id ='CR_SWACount_"+i+"'></td></tr> <tr> <td><a href='#'>Green Boards</a> <input type='checkbox' dbname='greenBoards' name ='CR_GrBd_"+i+"'   id ='CR_GrBd_"+i+"'><br> <input type='text' dbname='greenBoardsCount' name ='CR_GrBdCount_"+i+"'   id ='CR_GrBdCount_"+i+"'></td> <td hidden='true'><a href='#'>Carpet Area (in sft)</a> <input type='checkbox' dbname='carpetArea' ><br> <input type='text' dbname='carperAreaCount' name ='CR_Plinth_"+i+"'   id ='CR_Plinth_"+i+"' hidden='true'></td> </tr> </table> </div> </div> </div> </div> </div>";
			}

			document.getElementById("room").innerHTML = rows;
		}
		
		$('input[type="checkbox"]:not(.dontHideCls)').hide();
		//$('input[type="text"],select').addClass("form-control");

	}

	function swichReport() {

		//alert('reaport');

		//var val=document.getElementById('Details');

		//alert(val.style.display);

		//	
		document.getElementById('stats-div').style.display = 'block';

		document.getElementById('Details1').style.display = 'block';

		document.getElementById('Details2').style.display = 'block';

		/*document.getElementById('Details2').style.display = 'block';
		
		document.getElementById('Details3').style.display = 'block';

		document.getElementById('Details4').style.display = 'block';

		document.getElementById('Details5').style.display = 'block';

		document.getElementById('Details6').style.display = 'block';

		document.getElementById('Details7').style.display = 'block';

		document.getElementById('Details8').style.display = 'block';
		
		document.getElementById('Details9').style.display = 'block';

		 */

		// alert("I am in");
		document.getElementById('summary').style.display = 'block';

		return;
	}
	function addBoreType() {

		//alert($('#total-class-rooms').val());

		//alert("test"+$("divMenu-ul"));
		//var hml=prepareTankLi(2);

		//$("#divMenu-ul ul").append('<li><a href="/user/messages"><span class="tab">Message Center</span></a></li>');

		var a;

		a = document.getElementById('boare-modal').value;

		if (a == "") {
			alert("select");
		} else {
			var rows = "";
			for (var i = 0; i < a; i++) {
				rows += " <div class='table-responsive'> 							<table class='table'> 								<tr> 									 									 <td> 				 <a href='#' style='padding-bottom: 10px;'><label  style='color:black;'>Type</label></a> 				<select name='boar' id='boar' 	class='form-control'> 					<option value='st'>Select Type</option> 					 					<option value='sb'>submersible</option> 					 					<option value='ct'>centrifugal</option> 					<option value='hp'>hand pump</option> 								 				</select> </td> 					 									<td style='margin-bottom:20px;'><a href='#'><b style='color:black;'>Capacity</b></a>                             <input type='text' class='form-control'>                                </td> 							   	                          </tr> 							  								 							</table> 						</div>	";
			}

			document.getElementById("boars").innerHTML = rows;
		}

	}

	function addBoreType1() {

		//alert($('#total-class-rooms').val());

		//alert("test"+$("divMenu-ul"));
		//var hml=prepareTankLi(2);

		//$("#divMenu-ul ul").append('<li><a href="/user/messages"><span class="tab">Message Center</span></a></li>');

		var a;

		a = document.getElementById('boare-modal1').value;

		if (a == "") {
			alert("select");
		} else {
			var rows = "";
			for (var i = 0; i < a; i++) {
				rows += " <div class='table-responsive'> 							<table class='table'> 								<tr> 						 									<td style='margin-bottom:20px;'><a href='#'><b style='color:black;'>Capacity</b></a>                             <input type='text' class='form-control'>                                </td> 							   	                          </tr> 							  								 							</table> 						</div>	";
			}

			document.getElementById("boars1").innerHTML = rows;
		}

	}

	function swichReport() {

		//alert('reaport');

		//var val=document.getElementById('Details');

		//alert(val.style.display);

		//	
		document.getElementById('stats-div').style.display = 'block';

		document.getElementById('Details1').style.display = 'block';

		//document.getElementById('Details2').style.display = 'block';

		/*document.getElementById('Details2').style.display = 'block';
		
		document.getElementById('Details3').style.display = 'block';

		document.getElementById('Details4').style.display = 'block';

		document.getElementById('Details5').style.display = 'block';

		document.getElementById('Details6').style.display = 'block';

		document.getElementById('Details7').style.display = 'block';

		document.getElementById('Details8').style.display = 'block';
		
		document.getElementById('Details9').style.display = 'block';

		 */

		// alert("I am in");
		//document.getElementById('summary').style.display = 'block';

		return;
	}

	$(document).ready(function() {
		$("#select").change(function() {
			if ($(this).find("option:selected").val() == "2") {
				$("#boare-modal").removeAttr("disabled")
			} else {
				$("#boare-modal").attr("disabled", "disabled")
			}
		});
	});

	function EnableDisableTextBox(chkPassport) {
		var txtPassportNumber = document.getElementById("txtPassportNumber");
		txtPassportNumber.disabled = chkPassport.checked ? false : true;
		if (!txtPassportNumber.disabled) {
			txtPassportNumber.focus();
		}
	}

	function EnableDisableTextBox1(chkPassport1) {
		var txtPassportNumber1 = document.getElementById("txtPassportNumber1");
		txtPassportNumber1.disabled = chkPassport1.checked ? false : true;
		if (!txtPassportNumber1.disabled) {
			txtPassportNumber1.focus();
		}
	}
	function EnableDisableTextBox2(chkPassport2) {
		var txtPassportNumber2 = document.getElementById("txtPassportNumber2");
		txtPassportNumber2.disabled = chkPassport2.checked ? false : true;
		if (!txtPassportNumber2.disabled) {
			txtPassportNumber2.focus();
		}
	}
	function EnableDisableTextBox3(chkPassport3) {
		var txtPassportNumber3 = document.getElementById("txtPassportNumber3");
		txtPassportNumber3.disabled = chkPassport3.checked ? false : true;
		if (!txtPassportNumber3.disabled) {
			txtPassportNumber3.focus();
		}
	}
	function EnableDisableTextBox4(chkPassport4) {
		var txtPassportNumber4 = document.getElementById("txtPassportNumber4");
		txtPassportNumber4.disabled = chkPassport4.checked ? false : true;
		if (!txtPassportNumber4.disabled) {
			txtPassportNumber4.focus();
		}
	}
	
	function doLogOut() {
		//alert("in logout");
		 $("#logout").submit();
	}
</script>

<script>
	$(document).ready(function() {
		$("#select").change(function() {
			if ($(this).find("option:selected").val() == "2") {
				$("#boare-modal").removeAttr("disabled")
			} else {
				$("#boare-modal").attr("disabled", "disabled")
			}
		});
	});
</script>




</head>



<body>
	<!-- header -->
	<div class="header">
		<div class="container">
			<div class="agile_header_grid">
				<div class="w3_agile_logo" style="float: left;">
					<h1>
						<a href="index.html"><span>CIS</span>Tracker</a>
					</h1>
				</div>

				<div class="agileits_w3layouts_sign_in">

					<ul>
						<li><img alt="" src="../images/logo.png"></li>
						<%
							if (request.getSession().getAttribute("User") != null) {
						%>
						<li><a href="#small-dialog"
							class="play-icon popup-with-zoom-anim"> <%
 									out.print(request.getSession().getAttribute("User"));
 						%>
						</a></li>
						<li><a href="#" class="btn btn-info btn-sm" style="height:34px"  data-toggle="tooltip" data-placement="top" title="Log Out">
          <span class="glyphicon glyphicon-log-out" style="color:white" onclick="doLogOut()"></span></a></li>
						<%
							} else {
						%>
						<li><a href="#small-dialog"
							class="play-icon popup-with-zoom-anim">Sign In</a></li>
						<%
							}
						%>


					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="w3_agileits_nav">
				<nav class="navbar navbar-default">
					<div class="navbar-header navbar-left">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
					</div>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse navbar-right"
						id="bs-example-navbar-collapse-1">
						<nav>
							<ul class="nav navbar-nav">
								<li><a href="index.html" class="hvr-sweep-to-bottom">Home</a></li>
								<li><a href="index.html" class="hvr-sweep-to-bottom">Requests</a></li>
								<!-- <li class="dropdown">
									<a href="#" class="dropdown-toggle hvr-sweep-to-bottom" data-toggle="dropdown">Asset Management<b class="caret"></b></a>
									<ul class="dropdown-menu agile_short_dropdown">
										<li><a href="services.html">View</a></li>
										<li><a href="AddAssets.html">Manage</a></li>
									</ul>
								</li> -->
								<li class="active"><a href="services.html"
									class="hvr-sweep-to-bottom">Asset Management</a></li>
								<li><a href="portfolio.html" class="hvr-sweep-to-bottom">Progress
										Reports</a></li>
								<li><a href="index.html" class="hvr-sweep-to-bottom">Dashboard</a></li>
							</ul>

						</nav>
					</div>
				</nav>
			</div>
		</div>
	</div>
	<!-- //header -->
	<!-- pop-up-box -->
	<div id="small-dialog" class="mfp-hide w3ls_small_dialog wthree_pop">
		<h3 class="agileinfo_sign">Sign In</h3>
		<div class="agileits_signin_form">
			<form action="#" method="post">
				<input type="email" name="email" placeholder="Your Email"
					required=""> <input type="password" name="password"
					placeholder="Password" required="">
				<div class="agile_remember">
					<div class="agile_remember_left">
						<div class="check">
							<label class="checkbox"><input type="checkbox"
								name="checkbox"><i> </i>remember me</label>
						</div>
					</div>
					<div class="agile_remember_right">
						<a href="#">Forgot Password?</a>
					</div>
					<div class="clearfix"></div>
				</div>
				<input type="submit" value="SIGN IN">
				<p>
					Don't have an account <a href="#small-dialog1"
						class="play-icon popup-with-zoom-anim">Sign Up</a>
				</p>
				<div class="w3agile_social_icons">
					<ul>
					</ul>
				</div>
			</form>
		</div>
	</div>
	<div id="small-dialog1" class="mfp-hide w3ls_small_dialog wthree_pop">
		<h3 class="agileinfo_sign">Sign Up</h3>
		<div class="agileits_signin_form">
			<form action="#" method="post">
				<input type="text" name="name" placeholder="First Name" required="">
				<input type="text" name="name" placeholder="Last Name" required="">
				<input type="email" name="email" placeholder="Your Email"
					required=""> <input type="password" name="password"
					placeholder="Password" required=""> <input type="password"
					name="password" placeholder="Confirm Password" required="">
				<input type="submit" value="SIGN UP">
				<p>
					Already a member <a href="#small-dialog"
						class="play-icon popup-with-zoom-anim">Sign In</a>
				</p>
				<div class="w3agile_social_icons">
					<ul>
					</ul>
				</div>
			</form>
		</div>
	</div>
	<!-- //pop-up-box -->
	<script>
		$(document).ready(function() {
			$('.popup-with-zoom-anim').magnificPopup({
				type : 'inline',
				fixedContentPos : false,
				fixedBgPos : true,
				overflowY : 'auto',
				closeBtnInside : true,
				preloader : false,
				midClick : true,
				removalDelay : 300,
				mainClass : 'my-mfp-zoom-in'
			});

		});
	</script>

	<div>
		<img src="../images/download.jpg" style="height: 200px; width: 100%">
	</div>

	<div class="services-bottom"
		style="padding-top: 30px; padding-bottom: 40px">
		<div class="container" style="margin-left: -20px;">
			<div class="col-md-4 w3_agile_services_grid">
				<div class="agile_services_grid">
					<div class="hover06 column">
						<div style="padding: 20px;">
							<table>
								<tr>
									<td><label style="padding-right: 20px;"><b>District</b></label>
									</td>
									<td><select name="district" id="district" class="form-control" >
											<option value="0">Select District</option>

									</select></td>
								</tr>
								<tr></tr>
								<tr></tr>
								<tr></tr>
							</table>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-4 w3_agile_services_grid">
				<div class="agile_services_grid">
					<div class="hover06 column">
						<div style="padding: 20px;">
							<table>

								<tr align="left">
									<td><label style="padding-right: 20px;"><b>Institute</b></label></td>
									<td><select name="institute" id="institute"
										class="form-control" id="switch" onchange="swichReport()" style="width:100%;">
											<option value="0">Select Institute</option>

									</select></td>
								</tr>
								<tr align="center">
									<td></td>
									<td></td>
								</tr>
							</table>
						</div>
					</div>

				</div>
			</div>



		</div>
	</div>
	<!-- //banner -->
	<!-- services -->




	<nav class="navbar navbar-default"
		style="padding-top: 30px; padding-left: 20px; display: none;"
		id="Details1" class="accordion-body collapse" data-toggle="false">
		<div class="container-fluid" style="padding-left: 90px;">
			<ul class="nav navbar-nav">
				     <li   class="list-inline-item active" onclick="switchOverview()" id="switchOverview" ><a href="#"><font color="black"><b>Overview</b></font></a></li>
      				 <li  class="list-inline-item" onclick="switchSchool()" id="switchSchool"><a href="#School-Div"><B><font color="black">School Building</font></B></a></li>
				    <li  class="list-inline-item" onclick="switchStaffQtr()" id="switchStaffQtr"><a href="#Staff-Div"><B><font color="black">Staff Quarters</font></B></a></li>
				    <li  class="list-inline-item" onclick="switchPrinciQtr()" id="switchPrinciQtr" ><a href="#Principal-Div"><B><font color="black">Principal Quarters</font></B></a></li>
				    <li  class="list-inline-item" onclick="switchDormBuilding()" id="switchDormBuilding" ><a href="#Dorm-Div"><B><font color="black">Dormitory</font></B></a></li>
					<li  class="list-inline-item" onclick="switchKitchen()" id="switchKitchen"><a href="#Kitchen-Div"><B><font color="black">Kitchen</font></B></a></li>
					<li  class="list-inline-item" onclick="switchDinning()" id="switchDinning"><a href="#Dinning-Div"><B><font color="black">Dinning</font></B></a></li>
				    <li  class="list-inline-item" onclick="switchOthers()" id="switchOthers"><a href="#Others-Div"><B><font color="black">Others</font></B></a></li>

			</ul>
		</div>
	</nav>

	<div class="stats" id="stats-div" style="display: none;">
		<div class="wthree_stat">
			<div class="container">
				<div class="col-md-5 wthree_stat_left">
					<h3>Institute Name <div id="insname"> Institute</div></h3>
					<p>
						

					</p>


					<table
						style="text-align: left; float: left; background-color: #e6ebff;">


						<tr>
							<td style="padding: 20px;"><img alt=""
								src="../images/Capture.PNG"></td>
						</tr>


					</table>

					<div id="Overview-Div"
						style="padding-bottom: 40px; padding-left: 70px; padding-right: 40px; padding-top: 40px; margin: 10px; display: none;">
						
					</div>


				</div>
				<div class="col-md-7 wthree_stat_right">
					<ul>
						<li>
							<div class="wthree_stat_right1">
								<i class="glyphicon glyphicon-hourglass" aria-hidden="true"></i>
								<h4>Work In Progress</h4>
								<p class="counter">8</p>
							</div>
						</li>
						<li>
							<div class="wthree_stat_right1">
								<i class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></i>
								<h4>Completed</h4>
								<p class="counter">11</p>
							</div>
						</li>
						<li>
							<div class="wthree_stat_right1">
								<i class="glyphicon glyphicon-bell" aria-hidden="true"></i>
								<h4>Requests On Hold</h4>
								<p class="counter">20</p>
							</div>
						</li>
					</ul>
					<br>
					<ul>
						<li>
							<div class="wthree_stat_right1">
								<br> <i class="glyphicon glyphicon-bullhorn"
									aria-hidden="true"></i>
								<h4>Issues Raised</h4>
								<p class="counter">31</p>
							</div>
						</li>
						<li>
							<div class="wthree_stat_right1">
								<br> <i class="glyphicon glyphicon-piggy-bank"
									aria-hidden="true"></i>
								<h4>Tenders Associated</h4>
								<p class="counter">8</p>
							</div>
						</li>
						<li>
							<div class="wthree_stat_right1">
								<i class="glyphicon glyphicon-new-window" aria-hidden="true"></i>
								<h4>Administrative Sanctions</h4>
								<p class="counter">13</p>
							</div>
						</li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>

	</div>




	<div id="Overview-Div"
		style="padding-bottom: 40px; padding-left: 70px; padding-right: 40px; padding-top: 40px; margin: 10px; display: none;">

		<table
			style="text-align: left; float: left; background-color: #e6ebff;">


			<tr>
				<td style="padding: 20px;"><label
					style="padding-right: 100px; padding-left: 20px; float: left;"><b>Institute
							Name</b></label></td>
				<td style="padding: 20px;"><label
					style="padding-right: 100px; padding-left: 20px; float: left;"><b>:</b></label></td>
				<td><label style="padding-right: 100px;"><b><div id="insname"> Institute</div>
							</b></label></td>
			</tr>

			<tr>
				<td style="padding: 20px;"><label
					style="padding-right: 100px; padding-left: 20px; float: left;"><b>Profile
							&nbsp;&nbsp;Completion &nbsp;&nbsp;(%)</b></label></td>
				<td style="padding: 20px;"><label
					style="padding-right: 100px; padding-left: 20px; float: left;"><b>:</b></label></td>
				<td><label style="padding-right: 100px;"><b>5</b></label></td>
			</tr>

			<tr>
				<td style="padding: 20px;"><label
					style="padding-right: 100px; padding-left: 20px; float: left;"><b>Total
							Area</b></label></td>
				<td style="padding: 20px;"><label
					style="padding-right: 100px; padding-left: 20px; float: left;"><b>:</b></label></td>
				<td><label style="padding-right: 100px;"><b>29400
							sft</b></label></td>
			</tr>
			<tr></tr>
			<tr></tr>
			<tr></tr>
			<tr></tr>
			<tr></tr>
			<tr></tr>
			<tr>
				<td style="padding: 20px;"><img alt=""
					src="../images/Capture.PNG"></td>
			</tr>
		</table>
	</div>



	<!--School Building  -->
	<div id="School-Div" style="background-color: #b3c2ff; padding-bottom: 40px; padding-left: 70px; padding-right: 40px; padding-top: 40px; margin: 10px; display: none;">
		<jsp:include page="schoolBuilding.jsp" />  
	</div>
	<!-- School Building -->
	
	<!--Staff Quarters  -->
	<div id="Staff-Div" style="background-color: #b3c2ff; padding-bottom: 40px; padding-left: 40px; padding-right: 40px; padding-top: 40px; margin: 10px; display: none;">
		<jsp:include page="staffQuarters.jsp" /> 
	</div>
	<!-- Staff Quarters -->

	<!-- Principal Quarters -->
	<div id="Principal-Div" style="background-color: #b3c2ff; padding-bottom: 40px; padding-left: 40px; padding-right: 40px; padding-top: 40px; margin: 10px; display: none;">
		<jsp:include page="principalQuarters.jsp" />
	</div>
	<!-- Principal Quarters -->

	<!-- Dormitory  Building -->
	<div id="Dorm-Div" style="background-color: #b3c2ff; padding-bottom: 40px; padding-left: 40px; padding-right: 40px; padding-top: 40px; margin: 10px; display: none;">
			<jsp:include page="dormitoryDetails.jsp" />  
	</div>
	<!-- Dormitory Building -->

	<!-- <dinnig -->
	<div id="Dinning-Div" style="background-color: #b3c2ff; padding-bottom: 40px; padding-left: 70px; padding-right: 40px; padding-top: 40px; margin: 10px; display: none;">
		<jsp:include page="dinningDetails.jsp" /> 
	</div>
	<!-- dinning -->

	<!-- Kitchen -->
	<div id="Kitchen-Div" style="background-color: #b3c2ff; padding-bottom: 40px; padding-left: 70px; padding-right: 40px; padding-top: 40px; margin: 10px; display: none;">
			<jsp:include page="kitchenDetails.jsp" /> 
	</div>
	<!-- Kitchen -->
	
	<!-- Others -->
	<div id="Others-Div" style="background-color: #b3c2ff; padding-bottom: 40px; padding-left: 70px; padding-right: 40px; padding-top: 40px; margin: 10px; display: none;">
		<jsp:include page="others.jsp" /> 
	</div>
	<!--others-->







	<!-- //services -->
	<!-- services-bottom -->
	<!-- //services-bottom -->
	<!-- footer -->
	<div class="container-fluid" style="padding-top: 50px">
		<div class="w3_footer_grids">
			<div class="col-md-4 col-sm-12 w3_footer_grid">
				<h2>
					<a href="index.html"><span>M</span>ission</a>
				</h2>
				<p>The mission of the TSWREI Society is to prepare the students
					to face the challenges of the 21st century with a sense of
					self-confidence and collaborative behavior.</p>
			</div>
			<div class="col-md-3 col-sm-12 w3_footer_grid">
				<i class="glyphicon glyphicon-home fa-2x" aria-hidden="true"></i>
				<h4>Address</h4>
				<p>Nalkkanche, Hyderabad, Telangana 521456.</p>
			</div>
			<div class="col-md-2 col-sm-12 w3_footer_grid">
				<i class="glyphicon glyphicon-phone fa-2x" aria-hidden="true"></i>
				<h4>Call Us</h4>
				<p>040 2331 9810</p>
				<br>
			</div>
			<div class="col-md-3 col-sm-12 w3_footer_grid">
				<span class="glyphicon glyphicon-envelope fa-2x" aria-hidden="true"></span>
				<h4>Mail Us</h4>
				<p>
					<a href="mailto:info@example.com">info@tswreis.com</a> <span><a
						href="mailto:info@example.com">support@tswreis.com</a></span>
				</p>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="copyright">
		<div class="container">
			<div class="w3ls_copyright_left">
				<ul>
					<li><a href="index.html">Home</a></li>
					<li><a href="index.html">Requests</a></li>
					<li class="active"><a href="serices.html">Asset Management</a></li>
					<li><a href="portfolio.html">Progress Reports</a></li>
					<li><a href="index.html">Dashborad</a></li>

				</ul>
				<p>© 2017 TSWREIS. All Rights Reserved</p>
			</div>
			<div class="w3ls_copyright_right"></div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //footer -->

	<!-- start-smoth-scrolling -->
	<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
	<script type="text/javascript">
		$(document).ready(function() {
			$().UItoTop({ easingType: 'easeOutQuart' });
			});
	</script>
		<script>
		/* When the user clicks on the button, 
		 toggle between hiding and showing the dropdown content */
		function myFunction() {
			document.getElementById("myDropdown").classList.toggle("show");
		}

		// Close the dropdown if the user clicks outside of it
		window.onclick = function(event) {
			if (!event.target.matches('.dropbtn')) {

				var dropdowns = document
						.getElementsByClassName("dropdown-content");
				var i;
				for (i = 0; i < dropdowns.length; i++) {
					var openDropdown = dropdowns[i];
					if (openDropdown.classList.contains('show')) {
						openDropdown.classList.remove('show');
					}
				}
			}
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
				
		
	</script>
	<!-- //here ends scrolling icon -->
	
	<div><form action="./logout.htm" method="post" name ="logout" id = "logout" ></form></div>
</body>
</html>
