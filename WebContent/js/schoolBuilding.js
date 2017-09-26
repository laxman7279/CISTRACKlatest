function populateAllFlds(){
	var opts=''; for(var i=1970;i<(new Date()).getFullYear();i++){ opts += '<option value="'+i+'">'+i+'</option/>';   }
	$('#SB_Year_Of_Construction').html(opts);
	getLibraryDetails();
	getPrincipalDetails();
	getEntranceRoomDetails();
	getStoreRoomDetails();
	getStaffRoomDetails();
	getGamesRoomDetails();
	getActivityRoomDetails();
	getTVRoomDetails();
	getProjectorRoomDetails();
	getBotanyLabDetails();
	getPhysicsLabDetails();
	getChemistryLabDetails();
	getZoolagyLabDetails();
	getComputerLabDetails();
	getMathsLabDetails();
	getScienceLabDetails();
	getToiletDetails();
	getClassRoomDetails();
	getSchCommonAreaDetails();
}

function getSchoolDetails() {
		populateAllFlds();
		var selectedValue = $('#institute').val();
		$.ajax({
			type : 'POST',
			url : "../CIS/getschooldetails.htm",
			data : {
				'instituteid' : selectedValue
			},
			dataType : 'json',
			success : function(data) {
				$("#library_room").attr('checked', data.library_room);
				$("#principal_room").attr('checked', data.principal_room);
				$("#entrancehall").attr('checked', data.entrancehall);
				$("#officestoreroom").attr('checked', data.officestoreroom);
				$("#staffroom").attr('checked', data.staffroom);
				$("#gamesroom").attr('checked', data.gamesroom);
				$("#botanylab").attr('checked', data.botanylab);
				$("#physicslab").attr('checked', data.physicslab);
				$("#chemistrylab").attr('checked', data.chemistrylab);
				$("#zoologylab").attr('checked', data.zoologylab);
				$("#computerslab").attr('checked', data.computerslab);
			},
			failure : function() {
				alert("Failed!");
			}
		});

	}

	function getLibraryDetails() {
		var selectedValue = $('#institute').val();
		$.ajax({
			type : 'POST',
			url : "../CIS/getlibrarydetails.htm",
			data : {
				'schoolid' : selectedValue
			},
			dataType : 'json',
			success : function(data) {
				$("#L_Plinth_Area").val(data.Plinth_Area);
				$("#L_Length").val(data.Length);
				$("#L_Width").val(data.Width);
				
				$("#L_Stools").attr('checked', data.Stools);
				$("#L_Stools_Count").val(data.Stools_Count);

				$("#L_Table_Fans").attr('checked', data.Table_Fans);
				$("#L_Table_Fans_Count").val(data.Table_Fans_Count);

				$("#L_Ceiling_Fans").attr('checked', data.Ceiling_Fans);
				$("#L_Ceiling_Fans_Count").val(data.Ceiling_Fans_Count);

				$("#L_Tables").attr('checked', data.Tables);
				$("#L_Tables_Count").val(data.Tables_Count);

				$("#L_Chairs").attr('checked', data.Chairs);
				$("#L_Chairs_Count").val(data.Chairs_Count);

				$("#L_TubeLights").attr('checked', data.TubeLights);
				$("#L_TubeLights_Count").val(data.TubeLights_Count);

				$("#L_Bulbs").attr('checked', data.Bulbs);
				$("#L_Bulbs_Count").val(data.Bulbs_Count);

				$("#L_ReadingTables").attr('checked', data.ReadingTables);
				$("#L_ReadingTables_Count").val(data.ReadingTables_Count);

				$("#L_S_Type_Chairs").attr('checked', data.S_Type_Chairs);
				$("#L_S_Type_Chairs_Count").val(data.S_Type_Chairs_Count);

				$("#L_Glass-Door-Almira").attr('checked',
						data.Glass_Door_Almira);
				$("#L_Glass-Door-Almira_Count").val(
						data.Glass_Door_Almira_Count);

				$("#L_Store-Well-Almira").attr('checked',
						data.Store_Well_Almira);
				$("#L_Store-Well-Almira_Count").val(
						data.Store_Well_Almira_Count);
			},
			failure : function() {
				alert("Failed!");
			}
		});

	}

	function getPrincipalDetails() {
		var selectedValue = $('#institute').val();
		$.ajax({
			type : 'POST',
			url : "../CIS/getprincipaldetails.htm",
			data : {
				'schoolid' : selectedValue
			},
			dataType : 'json',
			success : function(data) {
				$(data).each(function(key,value){
					console.log(key);console.log(value);
					$('#P_'+key).val(value);
				});
				$("#P_Plinth_Area").val(data.Plinth_Area);
				$("#P_Length").val(data.Length);
				$("#P_Width").val(data.Width);
				$("#P_Stools").attr('checked', data.Stools);
				$("#P_Stools_Count").val(data.Stools_Count);

				$("#P_Table_Fans").attr('checked', data.Table_Fans);
				$("#P_Table_Fans_Count").val(data.Table_Fans_Count);

				$("#P_Ceiling_Fans").attr('checked', data.Ceiling_Fans);
				$("#P_Ceiling_Fans_Count").val(data.Ceiling_Fans_Count);

				$("#P_Tables").attr('checked', data.Tables);
				$("#P_Tables_Count").val(data.Tables_Count);

				$("#P_Chairs").attr('checked', data.Chairs);
				$("#P_Chairs_Count").val(data.Chairs_Count);

				$("#P_TubeLights").attr('checked', data.TubeLights);
				$("#P_TubeLights_Count").val(data.TubeLights_Count);

				$("#P_Bulbs").attr('checked', data.Bulbs);
				$("#P_Bulbs_Count").val(data.Bulbs_Count);

				$("#P_ReadingTables").attr('checked', data.ReadingTables);
				$("#P_ReadingTables_Count").val(data.ReadingTables_Count);

				$("#P_S_Type_Chairs").attr('checked', data.S_Type_Chairs);
				$("#P_S_Type_Chairs_Count").val(data.S_Type_Chairs_Count);

				$("#P_Glass-Door-Almira").attr('checked',data.Glass_Door_Almira);
				$("#P_Glass-Door-Almira_Count").val(data.Glass_Door_Almira_Count);

				$("#P_Store-Well-Almira").attr('checked',data.Store_Well_Almira);
				$("#P_Store-Well-Almira_Count").val(data.Store_Well_Almira_Count);

				$("#P_ptable").attr('checked', data.Principal_Table);
				$("#P_Principal_Table_Count").val(data.Principal_Table_Count);

				$("#P_pchair").attr('checked', data.Principal_Chair);
				$("#P_Principal_Chair_Count").val(data.Principal_Chair_Count);

				$("#P_Lockerunits").attr('checked', data.Locker_Units);
				$("#P_Locker_Units_Count").val(data.Locker_Units_Count);
			},
			failure : function() {
				alert("Failed!");
			}
		});

	}

	function getEntranceRoomDetails() {
		var selectedValue = $('#institute').val();
		$.ajax({
			type : 'POST',
			url : "../CIS/getentrancedetails.htm",
			data : {
				'schoolid' : selectedValue
			},
			dataType : 'json',
			success : function(data) {

				$("#EH_Plinth_Area").val(data.Plinth_Area);
				$("#EH_Length").val(data.Length);
				$("#EH_Width").val(data.Width);
				$("#EH_Stools").attr('checked', data.Stools);
				$("#EH_Stools_Count").val(data.Stools_Count);

				$("#EH_Table_Fans").attr('checked', data.Table_Fans);
				$("#EH_Table_Fans_Count").val(data.Table_Fans_Count);

				$("#EH_Ceiling_Fans").attr('checked', data.Ceiling_Fans);
				$("#EH_Ceiling_Fans_Count").val(data.Ceiling_Fans_Count);

				$("#EH_Tables").attr('checked', data.Tables);
				$("#EH_Tables_Count").val(data.Tables_Count);

				$("#EH_Chairs").attr('checked', data.Chairs);
				$("#EH_Chairs_Count").val(data.Chairs_Count);

				$("#EH_TubeLights").attr('checked', data.TubeLights);
				$("#EH_TubeLights_Count").val(data.TubeLights_Count);

				$("#EH_Bulbs").attr('checked', data.Bulbs);
				$("#EH_Bulbs_Count").val(data.Bulbs_Count);
			},
			failure : function() {
				alert("Failed!");
			}
		});

	}

	function getStaffRoomDetails() {

		var selectedValue = $('#institute').val();
		//alert('selectedValue is '+selectedValue);
		$.ajax({
			type : 'POST',
			url : "../CIS/getstaffroomdetails.htm",
			data : {
				'schoolid' : selectedValue
			},
			dataType : 'json',
			success : function(data) {

				$("#SR_Plinth_Area").val(data.Plinth_Area);
				$("#SR_Length").val(data.Length);
				$("#SR_Width").val(data.Width);
				$("#SR_Stools").attr('checked', data.Stools);
				$("#SR_Stools_Count").val(data.Stools_Count);

				$("#SR_Table_Fans").attr('checked', data.Table_Fans);
				$("#SR_Table_Fans_Count").val(data.Table_Fans_Count);

				$("#SR_Ceiling_Fans").attr('checked', data.Ceiling_Fans);
				$("#SR_Ceiling_Fans_Count").val(data.Ceiling_Fans_Count);

				$("#SR_Tables").attr('checked', data.Tables);
				$("#SR_Tables_Count").val(data.Tables_Count);

				$("#SR_Chairs").attr('checked', data.Chairs);
				$("#SR_Chairs_Count").val(data.Chairs_Count);

				$("#SR_TubeLights").attr('checked', data.TubeLights);
				$("#SR_TubeLights_Count").val(data.TubeLights_Count);

				$("#SR_Bulbs").attr('checked', data.Bulbs);
				$("#SR_Bulbs_Count").val(data.Bulbs_Count);

				$("#SR_ReadingTables").attr('checked', data.ReadingTables);
				$("#SR_ReadingTables_Count").val(data.ReadingTables_Count);

				$("#SR_S_Type_Chairs").attr('checked', data.S_Type_Chairs);
				$("#SR_S_Type_Chairs_Count").val(data.S_Type_Chairs_Count);

				$("#SR_Glass-Door-Almira").attr('checked',data.Glass_Door_Almira);
				$("#SR_Glass-Door-Almira_Count").val(data.Glass_Door_Almira_Count);

				$("#SR_Store-Well-Almira").attr('checked',data.Store_Well_Almira);
				$("#SR_Store-Well-Almira_Count").val(data.Store_Well_Almira_Count);

				$("#SR_Lockerunits").attr('checked', data.Locker_Units);
				$("#SR_Locker_Units_Count").val(data.Locker_Units_Count);
			},
			failure : function() {
				alert("Failed!");
			}
		});

	}

	function getStoreRoomDetails() {
		var selectedValue = $('#institute').val();
		$.ajax({
			type : 'POST',
			url : "../CIS/getstoreroomdetails.htm",
			data : {
				'schoolid' : selectedValue
			},
			dataType : 'json',
			success : function(data) {

				$("#ST_Plinth_Area").val(data.Plinth_Area);
				$("#ST_Length").val(data.Length);
				$("#ST_Width").val(data.Width);
				$("#ST_Stools").attr('checked', data.Stools);
				$("#ST_Stools_Count").val(data.Stools_Count);

				$("#ST_Table_Fans").attr('checked', data.Table_Fans);
				$("#ST_Table_Fans_Count").val(data.Table_Fans_Count);

				$("#ST_Ceiling_Fans").attr('checked', data.Ceiling_Fans);
				$("#ST_Ceiling_Fans_Count").val(data.Ceiling_Fans_Count);

				$("#ST_Tables").attr('checked', data.Tables);
				$("#ST_Tables_Count").val(data.Tables_Count);

				$("#ST_Chairs").attr('checked', data.Chairs);
				$("#ST_Chairs_Count").val(data.Chairs_Count);

				$("#ST_TubeLights").attr('checked', data.TubeLights);
				$("#ST_TubeLights_Count").val(data.TubeLights_Count);

				$("#ST_Bulbs").attr('checked', data.Bulbs);
				$("#ST_Bulbs_Count").val(data.Bulbs_Count);

				$("#ST_ReadingTables").attr('checked', data.ReadingTables);
				$("#ST_ReadingTables_Count").val(data.ReadingTables_Count);

				$("#ST_S_Type_Chairs").attr('checked', data.S_Type_Chairs);
				$("#ST_S_Type_Chairs_Count").val(data.S_Type_Chairs_Count);

				$("#ST_Glass-Door-Almira").attr('checked',data.Glass_Door_Almira);
				$("#ST_Glass-Door-Almira_Count").val(data.Glass_Door_Almira_Count);

				$("#ST_Store-Well-Almira").attr('checked',data.Store_Well_Almira);
				$("#ST_Store-Well-Almira_Count").val(data.Store_Well_Almira_Count);

				$("#ST_Lockerunits").attr('checked', data.Locker_Units);
				$("#ST_Locker_Units_Count").val(data.Locker_Units_Count);
			},
			failure : function() {
				alert("Failed!");
			}
		});

	}

	function getGamesRoomDetails() {
		var selectedValue = $('#institute').val();
		$.ajax({
			type : 'POST',
			url : "../CIS/getgamesroomdetails.htm",
			data : {
				'schoolid' : selectedValue
			},
			dataType : 'json',
			success : function(data) {

				$("#GR_Plinth_Area").val(data.Plinth_Area);
				$("#GR_Length").val(data.Length);
				$("#GR_Width").val(data.Width);
				$("#GR_Stools").attr('checked', data.Stools);
				$("#GR_Stools_Count").val(data.Stools_Count);

				$("#GR_Table_Fans").attr('checked', data.Table_Fans);
				$("#GR_Table_Fans_Count").val(data.Table_Fans_Count);

				$("#GR_Ceiling_Fans").attr('checked', data.Ceiling_Fans);
				$("#GR_Ceiling_Fans_Count").val(data.Ceiling_Fans_Count);

				$("#GR_Tables").attr('checked', data.Tables);
				$("#GR_Tables_Count").val(data.Tables_Count);

				$("#GR_Chairs").attr('checked', data.Chairs);
				$("#GR_Chairs_Count").val(data.Chairs_Count);

				$("#GR_TubeLights").attr('checked', data.TubeLights);
				$("#GR_TubeLights_Count").val(data.TubeLights_Count);

				$("#GR_Bulbs").attr('checked', data.Bulbs);
				$("#GR_Bulbs_Count").val(data.Bulbs_Count);

				$("#GR_ReadingTables").attr('checked', data.ReadingTables);
				$("#GR_ReadingTables_Count").val(data.ReadingTables_Count);

				$("#GR_S_Type_Chairs").attr('checked', data.S_Type_Chairs);
				$("#GR_S_Type_Chairs_Count").val(data.S_Type_Chairs_Count);

				$("#GR_Glass-Door-Almira").attr('checked',data.Glass_Door_Almira);
				$("#GR_Glass-Door-Almira_Count").val(data.Glass_Door_Almira_Count);

				$("#GR_Store-Well-Almira").attr('checked',data.Store_Well_Almira);
				$("#GR_Store-Well-Almira_Count").val(data.Store_Well_Almira_Count);

				$("#GR_Lockerunits").attr('checked', data.Locker_Units);
				$("#GR_Locker_Units_Count").val(data.Locker_Units_Count);
			},
			failure : function() {
				alert("Failed!");
			}
		});

	}
	
	function getActivityRoomDetails() {
		var selectedValue = $('#institute').val();
		$.ajax({
			type : 'POST',
			url : "../CIS/getactivityroomdetails.htm",
			data : {
				'schoolid' : selectedValue
			},
			dataType : 'json',
			success : function(data) {

				$("#AR_Plinth_Area").val(data.Plinth_Area);
				$("#AR_Length").val(data.Length);
				$("#AR_Width").val(data.Width);
				$("#AR_Stools").attr('checked', data.Stools);
				$("#AR_Stools_Count").val(data.Stools_Count);

				$("#AR_Table_Fans").attr('checked', data.Table_Fans);
				$("#AR_Table_Fans_Count").val(data.Table_Fans_Count);

				$("#AR_Ceiling_Fans").attr('checked', data.Ceiling_Fans);
				$("#AR_Ceiling_Fans_Count").val(data.Ceiling_Fans_Count);

				$("#AR_Tables").attr('checked', data.Tables);
				$("#AR_Tables_Count").val(data.Tables_Count);

				$("#AR_Chairs").attr('checked', data.Chairs);
				$("#AR_Chairs_Count").val(data.Chairs_Count);

				$("#AR_TubeLights").attr('checked', data.TubeLights);
				$("#AR_TubeLights_Count").val(data.TubeLights_Count);

				$("#AR_Bulbs").attr('checked', data.Bulbs);
				$("#AR_Bulbs_Count").val(data.Bulbs_Count);

				$("#AR_ReadingTables").attr('checked', data.ReadingTables);
				$("#AR_ReadingTables_Count").val(data.ReadingTables_Count);

				$("#AR_S_Type_Chairs").attr('checked', data.S_Type_Chairs);
				$("#AR_S_Type_Chairs_Count").val(data.S_Type_Chairs_Count);

				$("#AR_Glass-Door-Almira").attr('checked',data.Glass_Door_Almira);
				$("#AR_Glass-Door-Almira_Count").val(data.Glass_Door_Almira_Count);

				$("#AR_Store-Well-Almira").attr('checked',data.Store_Well_Almira);
				$("#AR_Store-Well-Almira_Count").val(data.Store_Well_Almira_Count);

				$("#AR_Lockerunits").attr('checked', data.Locker_Units);
				$("#AR_Locker_Units_Count").val(data.Locker_Units_Count);
			},
			failure : function() {
				alert("Failed!");
			}
		});

	}
	
	function getTVRoomDetails() {
		var selectedValue = $('#institute').val();
		$.ajax({
			type : 'POST',
			url : "../CIS/gettvroomdetails.htm",
			data : {
				'schoolid' : selectedValue
			},
			dataType : 'json',
			success : function(data) {

				$("#TR_Plinth_Area").val(data.Plinth_Area);
				$("#TR_Length").val(data.Length);
				$("#TR_Width").val(data.Width);
				$("#TR_Stools").attr('checked', data.Stools);
				$("#TR_Stools_Count").val(data.Stools_Count);

				$("#TR_Table_Fans").attr('checked', data.Table_Fans);
				$("#TR_Table_Fans_Count").val(data.Table_Fans_Count);

				$("#TR_Ceiling_Fans").attr('checked', data.Ceiling_Fans);
				$("#TR_Ceiling_Fans_Count").val(data.Ceiling_Fans_Count);

				$("#TR_Tables").attr('checked', data.Tables);
				$("#TR_Tables_Count").val(data.Tables_Count);

				$("#TR_Chairs").attr('checked', data.Chairs);
				$("#TR_Chairs_Count").val(data.Chairs_Count);

				$("#TR_TubeLights").attr('checked', data.TubeLights);
				$("#TR_TubeLights_Count").val(data.TubeLights_Count);

				$("#TR_Bulbs").attr('checked', data.Bulbs);
				$("#TR_Bulbs_Count").val(data.Bulbs_Count);

				$("#TR_ReadingTables").attr('checked', data.ReadingTables);
				$("#TR_ReadingTables_Count").val(data.ReadingTables_Count);

				$("#TR_S_Type_Chairs").attr('checked', data.S_Type_Chairs);
				$("#TR_S_Type_Chairs_Count").val(data.S_Type_Chairs_Count);

				$("#TR_Glass-Door-Almira").attr('checked',data.Glass_Door_Almira);
				$("#TR_Glass-Door-Almira_Count").val(data.Glass_Door_Almira_Count);

				$("#TR_Store-Well-Almira").attr('checked',data.Store_Well_Almira);
				$("#TR_Store-Well-Almira_Count").val(data.Store_Well_Almira_Count);

				$("#TR_Lockerunits").attr('checked', data.Locker_Units);
				$("#TR_Locker_Units_Count").val(data.Locker_Units_Count);
			},
			failure : function() {
				alert("Failed!");
			}
		});

	}
	
	function getProjectorRoomDetails() {
		var selectedValue = $('#institute').val();
		$.ajax({
			type : 'POST',
			url : "../CIS/getprojroomdetails.htm",
			data : {
				'schoolid' : selectedValue
			},
			dataType : 'json',
			success : function(data) {

				$("#PR_Plinth_Area").val(data.Plinth_Area);
				$("#PR_Length").val(data.Length);
				$("#PR_Width").val(data.Width);
				$("#PR_Stools").attr('checked', data.Stools);
				$("#PR_Stools_Count").val(data.Stools_Count);

				$("#PR_Table_Fans").attr('checked', data.Table_Fans);
				$("#PR_Table_Fans_Count").val(data.Table_Fans_Count);

				$("#PR_Ceiling_Fans").attr('checked', data.Ceiling_Fans);
				$("#PR_Ceiling_Fans_Count").val(data.Ceiling_Fans_Count);

				$("#PR_Tables").attr('checked', data.Tables);
				$("#PR_Tables_Count").val(data.Tables_Count);

				$("#PR_Chairs").attr('checked', data.Chairs);
				$("#PR_Chairs_Count").val(data.Chairs_Count);

				$("#PR_TubeLights").attr('checked', data.TubeLights);
				$("#PR_TubeLights_Count").val(data.TubeLights_Count);

				$("#PR_Bulbs").attr('checked', data.Bulbs);
				$("#PR_Bulbs_Count").val(data.Bulbs_Count);

				$("#PR_ReadingTables").attr('checked', data.ReadingTables);
				$("#PR_ReadingTables_Count").val(data.ReadingTables_Count);

				$("#PR_S_Type_Chairs").attr('checked', data.S_Type_Chairs);
				$("#PR_S_Type_Chairs_Count").val(data.S_Type_Chairs_Count);

				$("#PR_Glass-Door-Almira").attr('checked',data.Glass_Door_Almira);
				$("#PR_Glass-Door-Almira_Count").val(data.Glass_Door_Almira_Count);

				$("#PR_Store-Well-Almira").attr('checked',data.Store_Well_Almira);
				$("#PR_Store-Well-Almira_Count").val(data.Store_Well_Almira_Count);

				$("#PR_Lockerunits").attr('checked', data.Locker_Units);
				$("#PR_Locker_Units_Count").val(data.Locker_Units_Count);
			},
			failure : function() {
				alert("Failed!");
			}
		});

	}
	
	function getBotanyLabDetails(){
	         var selectedValue = $('#institute').val();
	          $.ajax({
	 	        type: 'POST',
	         	url: "../CIS/getbotanydetails.htm",
	         	data : {'schoolid':selectedValue},
	 	        dataType: 'json',
	 	        success: function(data) {
	       			$("#BL_Plinth_Area").val( data.Plinth_Area);
	       			$("#BL_Length").val(data.Length);
					$("#BL_Width").val(data.Width);
					$("#BL_Stools").attr('checked', data.Stools);
	       			$("#BL_Stools_Count").val( data.Stools_Count);
				
	       			$("#BL_Table_Fans").attr('checked', data.Table_Fans);
	       			$("#BL_Table_Fans_Count").val( data.Table_Fans_Count);
				
					$("#BL_Ceiling_Fans").attr('checked', data.Ceiling_Fans);
	       			$("#BL_Ceiling_Fans_Count").val( data.Ceiling_Fans_Count);
				
					$("#BL_Tables").attr('checked', data.Tables);
	       			$("#BL_Tables_Count").val( data.Tables_Count);
				
					$("#BL_Chairs").attr('checked', data.Chairs);
	       			$("#BL_Chairs_Count").val( data.Chairs_Count);
				
					$("#BL_TubeLights").attr('checked', data.TubeLights);
	       			$("#BL_TubeLights_Count").val( data.TubeLights_Count);
	       			
					$("#BL_Bulbs").attr('checked', data.Bulbs);
	       			$("#BL_Bulbs_Count").val( data.Bulbs_Count);
				
					$("#BL_ReadingTables").attr('checked', data.ReadingTables);
	       			$("#BL_ReadingTables_Count").val( data.ReadingTables_Count);
				
					$("#BL_S_Type_Chairs").attr('checked', data.S_Type_Chairs);
	       			$("#BL_S_Type_Chairs_Count").val( data.S_Type_Chairs_Count);
	       			
					$("#BL_Glass-Door-Almira").attr('checked', data.Glass_Door_Almira);
	       			$("#BL_Glass-Door-Almira_Count").val( data.Glass_Door_Almira_Count);
				
					$("#BL_Store-Well-Almira").attr('checked', data.Store_Well_Almira);
	       			$("#BL_Store-Well-Almira_Count").val( data.Store_Well_Almira_Count);
					
					$("#BL_Lockerunits").attr('checked', data.Locker_Units);
	       			$("#BL_Locker_Units_Count").val( data.Locker_Units_Count);
				
					$("#BL_Green_Board").attr('checked', data.Green_Board);
	       			$("#BL_Green_Board_Count").val( data.Green_Board_Count);
	       			
	       			$("#BL_Black_Board_Count").val( data.BlackBoardCount);
	       			$("#BL_Fixed_Tables").val( data.FixedTables);
	       			$("#BL_Fixed_Chairs").val( data.FixedChairs);
	 	         },
	 	        failure: function () {
	 	            alert("Failed!");
	 	        }
	 	    }); 
	 }
	
	function getChemistryLabDetails(){
	         var selectedValue = $('#institute').val();
	          $.ajax({
	 	        type: 'POST',
	         	url: "../CIS/getchemistrydetails.htm",
	         	data : {'schoolid':selectedValue},
	 	        dataType: 'json',
	 	        success: function(data) {
 	        			
 	        			$("#CL_Plinth_Area").val( data.Plinth_Area);
 	        			$("#CL_Length").val(data.Length);
 	        			$("#CL_Width").val(data.Width);
						$("#CL_Stools").attr('checked', data.Stools);
 	        			$("#CL_Stools_Count").val( data.Stools_Count);
						
 	        			$("#CL_Table_Fans").attr('checked', data.Table_Fans);
 	        			$("#CL_Table_Fans_Count").val( data.Table_Fans_Count);
						
						$("#CL_Ceiling_Fans").attr('checked', data.Ceiling_Fans);
 	        			$("#CL_Ceiling_Fans_Count").val( data.Ceiling_Fans_Count);
						
						$("#CL_Tables").attr('checked', data.Tables);
 	        			$("#CL_Tables_Count").val( data.Tables_Count);
						
						$("#CL_Chairs").attr('checked', data.Chairs);
 	        			$("#CL_Chairs_Count").val( data.Chairs_Count);
						
						$("#CL_TubeLights").attr('checked', data.TubeLights);
 	        			$("#CL_TubeLights_Count").val( data.TubeLights_Count);
 	        			
						$("#CL_Bulbs").attr('checked', data.Bulbs);
 	        			$("#CL_Bulbs_Count").val( data.Bulbs_Count);
						
						$("#CL_ReadingTables").attr('checked', data.ReadingTables);
 	        			$("#CL_ReadingTables_Count").val( data.ReadingTables_Count);
						
						$("#CL_S_Type_Chairs").attr('checked', data.S_Type_Chairs);
 	        			$("#CL_S_Type_Chairs_Count").val( data.S_Type_Chairs_Count);
 	        			
						$("#CL_Glass-Door-Almira").attr('checked', data.Glass_Door_Almira);
 	        			$("#CL_Glass-Door-Almira_Count").val( data.Glass_Door_Almira_Count);
						
						$("#CL_Store-Well-Almira").attr('checked', data.Store_Well_Almira);
 	        			$("#CL_Store-Well-Almira_Count").val( data.Store_Well_Almira_Count);
							
						$("#CL_Lockerunits").attr('checked', data.Locker_Units);
 	        			$("#CL_Locker_Units_Count").val( data.Locker_Units_Count);
						
						$("#CL_Green_Board").attr('checked', data.Green_Board);
 	        			$("#CL_Green_Board_Count").val( data.Green_Board_Count);
 	        			
 	        			$("#CL_Black_Board_Count").val( data.BlackBoardCount);
 		       			$("#CL_Fixed_Tables").val( data.FixedTables);
 		       			$("#CL_Fixed_Chairs").val( data.FixedChairs);
	 	     },
	 	        failure: function () {
	 	            alert("Failed!");
	 	        }
	 	    }); 
	
	 }
	
	function getPhysicsLabDetails(){
	         var selectedValue = $('#institute').val();
	          $.ajax({
	 	        type: 'POST',
	         	url: "../CIS/getphysicsdetails.htm",
	         	data : {'schoolid':selectedValue},
	 	        dataType: 'json',
	 	        success: function(data){
 	        			
 	        			$("#PL_Plinth_Area").val( data.Plinth_Area);
 	        			$("#PL_Length").val(data.Length);
 	        			$("#PL_Width").val(data.Width);
						$("#PL_Stools").attr('checked', data.Stools);
 	        			$("#PL_Stools_Count").val( data.Stools_Count);
						
 	        			$("#PL_Table_Fans").attr('checked', data.Table_Fans);
 	        			$("#PL_Table_Fans_Count").val( data.Table_Fans_Count);
						
						$("#PL_Ceiling_Fans").attr('checked', data.Ceiling_Fans);
 	        			$("#PL_Ceiling_Fans_Count").val( data.Ceiling_Fans_Count);
						
						$("#PL_Tables").attr('checked', data.Tables);
 	        			$("#PL_Tables_Count").val( data.Tables_Count);
						
						$("#PL_Chairs").attr('checked', data.Chairs);
 	        			$("#PL_Chairs_Count").val( data.Chairs_Count);
						
						$("#PL_TubeLights").attr('checked', data.TubeLights);
 	        			$("#PL_TubeLights_Count").val( data.TubeLights_Count);
 	        			
						$("#PL_Bulbs").attr('checked', data.Bulbs);
 	        			$("#PL_Bulbs_Count").val( data.Bulbs_Count);
						
						$("#PL_ReadingTables").attr('checked', data.ReadingTables);
 	        			$("#PL_ReadingTables_Count").val( data.ReadingTables_Count);
						
						$("#PL_S_Type_Chairs").attr('checked', data.S_Type_Chairs);
 	        			$("#PL_S_Type_Chairs_Count").val( data.S_Type_Chairs_Count);
 	        			
						$("#PL_Glass-Door-Almira").attr('checked', data.Glass_Door_Almira);
 	        			$("#PL_Glass-Door-Almira_Count").val( data.Glass_Door_Almira_Count);
						
						$("#PL_Store-Well-Almira").attr('checked', data.Store_Well_Almira);
 	        			$("#PL_Store-Well-Almira_Count").val( data.Store_Well_Almira_Count);
							
						$("#PL_Lockerunits").attr('checked', data.Locker_Units);
 	        			$("#PL_Locker_Units_Count").val( data.Locker_Units_Count);
						
						$("#PL_Green_Board").attr('checked', data.Green_Board);
 	        			$("#PL_Green_Board_Count").val( data.Green_Board_Count);
 	        			
 	        			$("#PL_Black_Board_Count").val( data.BlackBoardCount);
 		       			$("#PL_Fixed_Tables").val( data.FixedTables);
 		       			$("#PL_Fixed_Chairs").val( data.FixedChairs);
 		       			
	 	         },
	 	        failure: function () {
	 	            alert("Failed!");
	 	        }
	 	    }); 
	
	 }
	
	function getZoolagyLabDetails(){
		 
		
	         var selectedValue = $('#institute').val();
	          $.ajax({
	 	        type: 'POST',
	         	url: "../CIS/getzoolagydetails.htm",
	         	data : {'schoolid':selectedValue},
	 	        dataType: 'json',
	 	        success: function(data)
	 	                {
	 	        			
	 	        			$("#ZL_Plinth_Area").val( data.Plinth_Area);
	 	        			$("#ZL_Length").val(data.Length);
	 	        			$("#ZL_Width").val(data.Width);
							$("#ZL_Stools").attr('checked', data.Stools);
	 	        			$("#ZL_Stools_Count").val( data.Stools_Count);
							
	 	        			$("#ZL_Table_Fans").attr('checked', data.Table_Fans);
	 	        			$("#ZL_Table_Fans_Count").val( data.Table_Fans_Count);
							
							$("#ZL_Ceiling_Fans").attr('checked', data.Ceiling_Fans);
	 	        			$("#ZL_Ceiling_Fans_Count").val( data.Ceiling_Fans_Count);
							
							$("#ZL_Tables").attr('checked', data.Tables);
	 	        			$("#ZL_Tables_Count").val( data.Tables_Count);
							
							$("#ZL_Chairs").attr('checked', data.Chairs);
	 	        			$("#ZL_Chairs_Count").val( data.Chairs_Count);
							
							$("#ZL_TubeLights").attr('checked', data.TubeLights);
	 	        			$("#ZL_TubeLights_Count").val( data.TubeLights_Count);
	 	        			
							$("#ZL_Bulbs").attr('checked', data.Bulbs);
	 	        			$("#ZL_Bulbs_Count").val( data.Bulbs_Count);
							
							$("#ZL_ReadingTables").attr('checked', data.ReadingTables);
	 	        			$("#ZL_ReadingTables_Count").val( data.ReadingTables_Count);
							
							$("#ZL_S_Type_Chairs").attr('checked', data.S_Type_Chairs);
	 	        			$("#ZL_S_Type_Chairs_Count").val( data.S_Type_Chairs_Count);
	 	        			
							$("#ZL_Glass-Door-Almira").attr('checked', data.Glass_Door_Almira);
	 	        			$("#ZL_Glass-Door-Almira_Count").val( data.Glass_Door_Almira_Count);
							
							$("#ZL_Store-Well-Almira").attr('checked', data.Store_Well_Almira);
	 	        			$("#ZL_Store-Well-Almira_Count").val( data.Store_Well_Almira_Count);
								
							$("#ZL_Lockerunits").attr('checked', data.Locker_Units);
	 	        			$("#ZL_Locker_Units_Count").val( data.Locker_Units_Count);
							
							$("#ZL_Green_Board").attr('checked', data.Green_Board);
	 	        			$("#ZL_Green_Board_Count").val( data.Green_Board_Count);
	 	        			
	 	        			$("#ZL_Black_Board_Count").val( data.BlackBoardCount);
	 		       			$("#ZL_Fixed_Tables").val( data.FixedTables);
	 		       			$("#ZL_Fixed_Chairs").val( data.FixedChairs);
							
	 	        			
	 	                },
	 	        failure: function () {
	 	            alert("Failed!");
	 	        }
	 	    }); 
	
	 }
	
	function getComputerLabDetails(){
		 
		
	         var selectedValue = $('#institute').val();
	          $.ajax({
	 	        type: 'POST',
	         	url: "../CIS/getcompdetails.htm",
	         	data : {'schoolid':selectedValue},
	 	        dataType: 'json',
	 	        success: function(data)
	 	                {
	 	        			
	 	        			$("#CO_Plinth_Area").val( data.Plinth_Area);
	 	        			$("#CO_Length").val(data.Length);
	 	        			$("#CO_Width").val(data.Width);
							$("#CO_Stools").attr('checked', data.Stools);
	 	        			$("#CO_Stools_Count").val( data.Stools_Count);
							
	 	        			$("#CO_Table_Fans").attr('checked', data.Table_Fans);
	 	        			$("#CO_Table_Fans_Count").val( data.Table_Fans_Count);
							
							$("#CO_Ceiling_Fans").attr('checked', data.Ceiling_Fans);
	 	        			$("#CO_Ceiling_Fans_Count").val( data.Ceiling_Fans_Count);
							
							$("#CO_Tables").attr('checked', data.Tables);
	 	        			$("#CO_Tables_Count").val( data.Tables_Count);
							
							$("#CO_Chairs").attr('checked', data.Chairs);
	 	        			$("#CO_Chairs_Count").val( data.Chairs_Count);
							
							$("#CO_TubeLights").attr('checked', data.TubeLights);
	 	        			$("#CO_TubeLights_Count").val( data.TubeLights_Count);
	 	        			
							$("#CO_Bulbs").attr('checked', data.Bulbs);
	 	        			$("#CO_Bulbs_Count").val( data.Bulbs_Count);
							
							$("#CO_ReadingTables").attr('checked', data.ReadingTables);
	 	        			$("#CO_ReadingTables_Count").val( data.ReadingTables_Count);
							
							$("#CO_S_Type_Chairs").attr('checked', data.S_Type_Chairs);
	 	        			$("#CO_S_Type_Chairs_Count").val( data.S_Type_Chairs_Count);
	 	        			
							$("#CO_Glass-Door-Almira").attr('checked', data.Glass_Door_Almira);
	 	        			$("#CO_Glass-Door-Almira_Count").val( data.Glass_Door_Almira_Count);
							
							$("#CO_Store-Well-Almira").attr('checked', data.Store_Well_Almira);
	 	        			$("#CO_Store-Well-Almira_Count").val( data.Store_Well_Almira_Count);
								
							$("#CO_Lockerunits").attr('checked', data.Locker_Units);
	 	        			$("#CO_Locker_Units_Count").val( data.Locker_Units_Count);
							
							$("#CO_Green_Board").attr('checked', data.Green_Board);
	 	        			$("#CO_Green_Board_Count").val( data.Green_Board_Count);
	 	        			
	 	        			$("#CO_Black_Board_Count").val( data.BlackBoardCount);
	 		       			$("#CO_Fixed_Tables").val( data.FixedTables);
	 		       			$("#CO_Fixed_Chairs").val( data.FixedChairs);
							
	 	                },
	 	        failure: function () {
	 	            alert("Failed!");
	 	        }
	 	    }); 
	
	 }
	
	function getMathsLabDetails(){
        var selectedValue = $('#institute').val();
         $.ajax({
	        type: 'POST',
        	url: "../CIS/getmathsdetails.htm",
        	data : {'schoolid':selectedValue},
	        dataType: 'json',
	        success: function(data) {
      			$("#ML_Plinth_Area").val( data.Plinth_Area);
      			$("#ML_Length").val(data.Length);
				$("#ML_Width").val(data.Width);
				$("#ML_Stools").attr('checked', data.Stools);
      			$("#ML_Stools_Count").val( data.Stools_Count);
			
      			$("#ML_Table_Fans").attr('checked', data.Table_Fans);
      			$("#ML_Table_Fans_Count").val( data.Table_Fans_Count);
			
				$("#ML_Ceiling_Fans").attr('checked', data.Ceiling_Fans);
      			$("#ML_Ceiling_Fans_Count").val( data.Ceiling_Fans_Count);
			
				$("#ML_Tables").attr('checked', data.Tables);
      			$("#ML_Tables_Count").val( data.Tables_Count);
			
				$("#ML_Chairs").attr('checked', data.Chairs);
      			$("#ML_Chairs_Count").val( data.Chairs_Count);
			
				$("#ML_TubeLights").attr('checked', data.TubeLights);
      			$("#ML_TubeLights_Count").val( data.TubeLights_Count);
      			
				$("#ML_Bulbs").attr('checked', data.Bulbs);
      			$("#ML_Bulbs_Count").val( data.Bulbs_Count);
			
				$("#ML_ReadingTables").attr('checked', data.ReadingTables);
      			$("#ML_ReadingTables_Count").val( data.ReadingTables_Count);
			
				$("#ML_S_Type_Chairs").attr('checked', data.S_Type_Chairs);
      			$("#ML_S_Type_Chairs_Count").val( data.S_Type_Chairs_Count);
      			
				$("#ML_Glass-Door-Almira").attr('checked', data.Glass_Door_Almira);
      			$("#ML_Glass-Door-Almira_Count").val( data.Glass_Door_Almira_Count);
			
				$("#ML_Store-Well-Almira").attr('checked', data.Store_Well_Almira);
      			$("#ML_Store-Well-Almira_Count").val( data.Store_Well_Almira_Count);
				
				$("#ML_Lockerunits").attr('checked', data.Locker_Units);
      			$("#ML_Locker_Units_Count").val( data.Locker_Units_Count);
			
				
      			$("#ML_Green_Board_Count").val( data.Green_Board_Count);
      			
      			$("#ML_Black_Board_Count").val( data.BlackBoardCount);
      			$("#ML_Fixed_Tables").val( data.FixedTables);
      			$("#ML_Fixed_Chairs").val( data.FixedChairs);
	         },
	        failure: function () {
	            alert("Failed!");
	        }
	    }); 
}

	function getScienceLabDetails(){
        var selectedValue = $('#institute').val();
         $.ajax({
	        type: 'POST',
        	url: "../CIS/getsciencedetails.htm",
        	data : {'schoolid':selectedValue},
	        dataType: 'json',
	        success: function(data) {
      			$("#SL_Plinth_Area").val( data.Plinth_Area);
      			$("#SL_Length").val(data.Length);
				$("#SL_Width").val(data.Width);
				$("#SL_Stools").attr('checked', data.Stools);
      			$("#SL_Stools_Count").val( data.Stools_Count);
			
      			$("#SL_Table_Fans").attr('checked', data.Table_Fans);
      			$("#SL_Table_Fans_Count").val( data.Table_Fans_Count);
			
				$("#SL_Ceiling_Fans").attr('checked', data.Ceiling_Fans);
      			$("#SL_Ceiling_Fans_Count").val( data.Ceiling_Fans_Count);
			
				$("#SL_Tables").attr('checked', data.Tables);
      			$("#SL_Tables_Count").val( data.Tables_Count);
			
				$("#SL_Chairs").attr('checked', data.Chairs);
      			$("#SL_Chairs_Count").val( data.Chairs_Count);
			
				$("#SL_TubeLights").attr('checked', data.TubeLights);
      			$("#SL_TubeLights_Count").val( data.TubeLights_Count);
      			
				$("#SL_Bulbs").attr('checked', data.Bulbs);
      			$("#SL_Bulbs_Count").val( data.Bulbs_Count);
			
				$("#SL_ReadingTables").attr('checked', data.ReadingTables);
      			$("#SL_ReadingTables_Count").val( data.ReadingTables_Count);
			
				$("#SL_S_Type_Chairs").attr('checked', data.S_Type_Chairs);
      			$("#SL_S_Type_Chairs_Count").val( data.S_Type_Chairs_Count);
      			
				$("#SL_Glass-Door-Almira").attr('checked', data.Glass_Door_Almira);
      			$("#SL_Glass-Door-Almira_Count").val( data.Glass_Door_Almira_Count);
			
				$("#SL_Store-Well-Almira").attr('checked', data.Store_Well_Almira);
      			$("#SL_Store-Well-Almira_Count").val( data.Store_Well_Almira_Count);
				
				$("#SL_Lockerunits").attr('checked', data.Locker_Units);
      			$("#SL_Locker_Units_Count").val( data.Locker_Units_Count);
			
				
      			$("#SL_Green_Board_Count").val( data.Green_Board_Count);
      			
      			$("#SL_Black_Board_Count").val( data.BlackBoardCount);
      			$("#SL_Fixed_Tables").val( data.FixedTables);
      			$("#SL_Fixed_Chairs").val( data.FixedChairs);
	         },
	        failure: function () {
	            alert("Failed!");
	        }
	    }); 
}

	
	function getToiletDetails(){
		 
		
	         var selectedValue = $('#institute').val();
	          $.ajax({
	 	        type: 'POST',
	         	url: "../CIS/gettoidetails.htm",
	         	data : {'schoolid':selectedValue},
	 	        dataType: 'json',
	 	        success: function(data)
	 	                {
	 	        			
	 	        										
							$("#TO_Exhaust_Fans").attr('checked', data.Exhaust_Fans);
	 	        			$("#TO_Exhaust_Fans_Count").val( data.Exhaust_Fans_Count);
							
	 	        			$("#TO_BathRooms").attr('checked', data.BathRooms);
	 	        			$("#TO_BathRoomsCount").val( data.BathRoomsCount);
							
							$("#TO_TubeLights").attr('checked', data.TubeLights);
	 	        			$("#TO_TubeLights_Count").val( data.TubeLights_Count);
	 	        			
							$("#TO_Bulbs").attr('checked', data.Bulbs);
	 	        			$("#TO_Bulbs_Count").val( data.Bulbs_Count);
							
							$("#TO_Running_Water").attr('checked', data.Running_Water);
						
								
							$("#TO_Water_Closets").attr('checked', data.Water_Closets);
	 	        			$("#TO_Water_Closets_Count").val( data.Water_Closets_Count);
							
							$("#TO_Incinerators").attr('checked', data.Incinerators);
	 	        			$("#TO_Incinerators_Count").val( data.Incinerators_Count);
							
							$("#TO_Indian_Toilets").attr('checked', data.Indian_Toilets);
	 	        			$("#TO_Indian_Toilets_Count").val( data.Indian_Toilets_Count);
							
							$("#TO_ProvisionForPH").attr('checked', data.ProvisionForPH);
	 	        			$("#TO_ProvisionForPHCount").val( data.ProvisionForPHCount);
	 	        			
	 	        			
	 	        			
													
	 	                },
	 	        failure: function () {
	 	            alert("Failed!");
	 	        }
	 	    }); 
	
	 }
	
	function getClassRoomDetails()
	{
		 var selectedValue = $('#institute').val();
	        //alert(selectedValue);
	          $.ajax({
	 	        type:'POST',
	         	url: "../CIS/getclassroomdetails.htm",
	         	data : {'schoolid':selectedValue},
	 	        dataType:'json',
			success : function(data) {
				
				$('#total-class-rooms').val(data.arraysize);
				addClassRooms();
								
				$.each(data.classdetails, function(i, item) {
					$.each(item, function(key, value) {
						
							if(key == 'floor')
								{
									$("#CR_"+key+"_"+i+" option[value='"+value+"']").prop('selected', true);
								}
							else{
								console.log(key);
								$('#CR_'+key+"_"+i).val(value);
							}
						
					});
				});
				
					
					
			
				

			},
			failure : function() {
				alert("Failed!");
			}
		});
	}
	
	
	function getSchCommonAreaDetails(){
		var selectedValue = $('#institute').val();
		//console.log(selectedValue);
		$.ajax({
			type : 'POST',
			url : "../dormitory/getDmCommonAreaDetails.htm",
			data : {
				'instituteid' : selectedValue,'type':'SB'
			},
			dataType : 'json',
			success : function(data) {
				console.log(data);
				$("#S_entancelobby").val(data.Entance_Lobby_Count);
				$("#S_Warandah").val(data.Warandah_Count);
				$("#S_stair_case").val(data.Stair_Case_Count);
				$("#S_watertank").val(data.Water_Tank_Count);
				$("#S_solar_powersystem").val(data.Solor_Power_System_Count);
				$("#S_inverter_capacity").val(data.Inverter_Capacity_Count);
				$("#S_inverter_capacity_check").attr('checked',data.Inverters);
				$("#S_Ro_Plant").val(data.RO_Plant_Capacity);
				addTypeCapacity('#S_watertank','sbwater');
				var waterJson = data.Water_Json;
				waterJson = waterJson.replace(/=/g, '":"').replace(/, /g, '", "').replace(/"{|{/g, '{"').replace(/}"|}/g, '"}');
				waterJson = $.parseJSON(waterJson);
				$.each(waterJson,function(i,obj){
					$('#sbwater_waterTank_'+i).val(obj.type);
					$('#sbwater_capacity_'+i).val(obj.capacity);
				});
			},
			failure : function() {
				alert("Failed!");
			}
		});
	}