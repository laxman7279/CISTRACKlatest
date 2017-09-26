<script src="../js/schoolBuilding.js" type="text/javascript"></script>
<h3 style="padding-right: 20px;">School Building</h3>
<input type="checkbox" style="border-color: black; padding-left: 25px;">
<div class="container"
	style="margin-top: 10px; background-color: white; color: black;">
	<br>
	<div><label>Year Of Construction</label>&nbsp;&nbsp;<select name="SB_Year_Of_Construction" id="SB_Year_Of_Construction" ></select></div>
	<br/>
	<div class="row">
		<div class="col col-md-4 schoolBldTabsDiv">
			<ul class="nav nav-tabs nav-stacked text-center" role="tablist">
				<li role="presentation" class="active"><a href="#home"
					aria-controls="home" role="tab" data-toggle="tab"><b>Admin</b></a></li>
				<li role="presentation"><a href="#lab" aria-controls="home"
					role="tab" data-toggle="tab"><b>Labs</b></a></li>
				<li role="presentation"><a href="#Toilets"
					aria-controls="profile" role="tab" data-toggle="tab"><b>Toilets</b></a></li>
				<li role="presentation"><a href="#Classrooms"
					aria-controls="profile" role="tab" data-toggle="tab"><b>Classrooms</b></a></li>
				<li role="presentation"><a href="#CommonArea"
					aria-controls="profile" role="tab" data-toggle="tab"><b>Common
							Area</b></a></li>
			</ul>
		</div>
		<div class="col-md-offset-1 col-md-6" id="schooldBuildingDivId">
			<div class="row tab-content">
				<div role="tabpanel" class="tab-pane fade active in" id="home">
					<div id="divMenu">
						<div class="panel-group" id="accordion">
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordion"
											href="#collapse1"><span
											class="glyphicon glyphicon-menu-down">&nbsp;</span> 
											Library Room </a><input
											type="checkbox" type="checkbox" name="library_room"
											id="library_room">
									</h4>
								</div>
								<div id="collapse1" class="panel-collapse collapse">
									<div class="panel-body">
										<div class="table-responsive">
											<table class="table">
												<tr>
													<td><a href="#">Length (in sft)</a><br>
														<input type="text" name="L_Length" id="L_Length" /></td>
													<td><a href="#">Width (in sft)</a> <br> 
													<input type="text" name="L_Width" id="L_Width" /></td>
												</tr>
												<tr>
													<td><a href="#">Carpet Area (in sft)</a> <input
														type="checkbox" name="Plinth_Area" id="Plinth_Area" /><br>
														<input type="text" name="L_Plinth_Area" id="L_Plinth_Area" readonly=true/></td>


													<td><a href="#">Stools</a> <input type="checkbox"
														name="L_Stools" id="L_Stools" /><br> <input
														type="text" name="L_Stools_Count" id="L_Stools_Count" /></td>


												</tr>
												<tr>
													<td><a href="#">Table Fans</a> <input type="checkbox"
														name="L_Table_Fans" id="L_Table_Fans" /><br> <input
														type="text" name="L_Table_Fans_Count"
														id="L_Table_Fans_Count" /></td>
													<td><a href="#">Ceiling Fans</a> <input
														type="checkbox" name="L_Ceiling_Fans" id="L_Ceiling_Fans" /><br>
														<input type="text" name="L_Ceiling_Fans_Count"
														id="L_Ceiling_Fans_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Tables</a> <input type="checkbox"
														name="L_Tables" id="L_Tables" /><br> <input
														type="text" name="L_Tables_Count" id="L_Tables_Count" /></td>
													<td><a href="#">Chairs</a> <input type="checkbox"
														name="L_Chairs" id="L_Chairs" /><br> <input
														type="text" name="L_Chairs_Count" id="L_Chairs_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Tube Lights</a> <input type="checkbox"
														name="L_TubeLights" id="L_TubeLights" /><br> <input
														type="text" name="L_TubeLights_Count"
														id="L_TubeLights_Count" /></td>
													<td><a href="#">Bulbs</a> <input type="checkbox"
														name="L_Bulbs" id="L_Bulbs" /><br> <input
														type="text" name="L_Bulbs_Count" id="L_Bulbs_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Reading Tables</a> <input
														type="checkbox" name="L_ReadingTables"
														id="L_ReadingTables" /><br> <input type="text"
														name="L_ReadingTables_Count" id="L_ReadingTables_Count" /></td>
													<td><a href="#">S Type chairs</a> <input
														type="checkbox" name="L_S_Type_Chairs"
														id="L_S_Type_Chairs" /><br> <input type="text"
														name="L_S_Type_Chairs_Count" id="L_S_Type_Chairs_Count" /></td>
												</tr>

												<tr>
													<td><a href="#">Glass Door Almira</a> <input
														type="checkbox" name="L_Glass-Door-Almira"
														id="L_Glass-Door-Almira" /><br> <input type="text"
														name="L_Glass-Door-Almira_Count"
														id="L_Glass-Door-Almira_Count" /></td>
													<td><a href="#">Store well Almira</a> <input
														type="checkbox" name="L_Store-Well-Almira"
														id="L_Store-Well-Almira" /><br> <input type="text"
														name="L_Store-Well-Almira_Count"
														id="L_Store-Well-Almira_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Wooden Almira</a><br>
													 <input type="text" name="L_Wooden_Almira_Count" id="L_Wooden_Almira_Count" /></td>
												</tr>
											</table>
										</div>
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordion"
											href="#collapse2"><span
											class="glyphicon glyphicon-menu-down">&nbsp;</span>Principal Room </a>&nbsp;&nbsp;&nbsp;&nbsp;<input
											type="checkbox" name="principal_room" id="principal_room" />
									</h4>
								</div>

								<div id="collapse2" class="panel-collapse collapse">
									<div class="panel-body">
										<div class="table-responsive">

											<table class="table">
												<tr>
													<td><a href="#">Length (in sft)</a><br>
														<input type="text" name="P_Length" id="P_Length" /></td>
													<td><a href="#">Width (in sft)</a> <br> 
													<input type="text" name="P_Width" id="P_Width" /></td>
												</tr>
												<tr>
													<td><a href="#">Carpet Area (in Sft)</a> <input
														type="checkbox" name="Plinth_Area" id="Plinth_Area" /><br>
														<input type="text" name="P_Plinth_Area" id="P_Plinth_Area"  readonly=true/></td>
													<td><a href="#">Reading Tables</a> <input
														type="checkbox" name="P_ReadingTables"
														id="P_ReadingTables" /><br> <input type="text"
														name="P_ReadingTables_Count" id="P_ReadingTables_Count" /></td>
												</tr>

												<tr>
													<td><a href="#">Table Fans</a> <input type="checkbox"
														name="P_Table_Fans" id="P_Table_Fans" /><br> <input
														type="text" name="P_Table_Fans_Count"
														id="P_Table_Fans_Count" /></td>
													<td><a href="#">Ceiling Fans</a> <input
														type="checkbox" name="P_Ceiling_Fans" id="P_Ceiling_Fans" /><br>
														<input type="text" name="P_Ceiling_Fans_Count"
														id="P_Ceiling_Fans_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Tables</a> <input type="checkbox"
														name="P_Tables" id="P_Tables" /><br> <input
														type="text" name="P_Tables_Count" id="P_Tables_Count" /></td>
													<td><a href="#">Chairs</a> <input type="checkbox"
														name="P_Chairs" id="P_Chairs" /><br> <input
														type="text" name="P_Chairs_Count" id="P_Chairs_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Tube Lights</a> <input type="checkbox"
														name="P_TubeLights" id="P_TubeLights" /><br> <input
														type="text" name="P_TubeLights_Count"
														id="P_TubeLights_Count" /></td>
													<td><a href="#">Bulbs</a> <input type="checkbox"
														name="P_Bulbs" id="P_Bulbs" /><br> <input
														type="text" name="P_Bulbs_Count" id="P_Bulbs_Count" /></td>
												</tr>

												<tr>
													<td><a href="#">Glass Door Almira</a> <input
														type="checkbox" name="P_Glass-Door-Almira"
														id="P_Glass-Door-Almira" /><br> <input type="text"
														name="P_Glass-Door-Almira_Count"
														id="P_Glass-Door-Almira_Count" /></td>
													<td><a href="#">S Type Chairs</a> <input
														type="checkbox" name="P_S_Type_Chairs"
														id="P_S_Type_Chairs" /><br> <input type="text"
														name="P_S_Type_Chairs_Count" id="P_S_Type_Chairs_Count" /></td>
												</tr>


												<tr>
													<td><a href="#">Principal Table</a> <input
														type="checkbox" name="P_Principal_Table"
														id="P_Principal_Table" /><br> <input type="text"
														name="P_Principal_Table_Count"
														id="P_Principal_Table_Count" /></td>
													<td><a href="#">Principal Chair</a> <input
														type="checkbox" name="P_Principal_Chair"
														id="P_Principal_Chair" /><br> <input type="text"
														name="P_Principal_Chair_Count"
														id="P_Principal_Chair_Count" /></td>
												</tr>


												<tr>
													<td><a href="#">Locker Units</a> <input
														type="checkbox" name="P_Locker_Units" id="P_Locker_Units" /><br>
														<input type="text" name="P_Locker_Units_Count"
														id="P_Locker_Units_Count" /></td>
													<td><a href="#">Stools</a> <input type="checkbox"
														name="P_Stools" id="P_Stools" /><br> <input
														type="text" name="P_Stools_Count" id="P_Stools_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Store Well Almira</a> <input
														type="checkbox" name="P_Store-Well-Almira"
														id="P_Store-Well-Almira" /><br> <input type="text"
														name="P_Store-Well-Almira_Count"
														id="P_Store-Well-Almira_Count" /></td>
													<td><a href="#">Wooden Almira</a><br>
													 <input type="text" name="P_Wooden_Almira_Count" id="P_Wooden_Almira_Count" /></td>
												</tr>
												<tr><td><input type="text" name="P_Principal_Room_Id" id="P_Principal_Room_Id" hidden="true" /></td></tr>
											</table>
										</div>
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordion"
											href="#collapse3"><span
											class="glyphicon glyphicon-menu-down">&nbsp;</span>Entrance Hall </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
											type="checkbox" name="entrancehall" id="entrancehall" />
									</h4>
								</div>
								<div id="collapse3" class="panel-collapse collapse">
									<div class="panel-body">
										<div class="table-responsive">
											<table class="table">
												<tr>
													<td><a href="#">Length (in sft)</a><br>
														<input type="text" name="EH_Length" id="EH_Length" /></td>
													<td><a href="#">Width (in sft)</a> <br> 
													<input type="text" name="EH_Width" id="EH_Width" /></td>
												</tr>
												<tr>
													<td><a href="#">Carpet Area (in Sft)</a> <input
														type="checkbox" /><br> <input type="text"
														name="EH_Plinth_Area" id="EH_Plinth_Area"  readonly=true/></td>
													<td><a href="#">Stools</a> <input type="checkbox"
														name="EH_Stools" id="EH_Stools" /><br> <input
														type="text" name="EH_Stools_Count" id="EH_Stools_Count" /></td>
												</tr>

												<tr>
													<td><a href="#">Table Fans</a> <input type="checkbox"
														name="EH_Table_Fans" id="EH_Table_Fans" /><br> <input
														type="text" name="EH_Table_Fans_Count"
														id="EH_Table_Fans_Count" /></td>
													<td><a href="#">Ceiling Fans</a> <input
														type="checkbox" name="EH_Ceiling_Fans"
														id="EH_Ceiling_Fans" /><br> <input type="text"
														name="EH_Ceiling_Fans_Count" id="EH_Ceiling_Fans_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Tables</a> <input type="checkbox"
														name="EH_Tables" id="EH_Tables" /><br> <input
														type="text" name="EH_Tables_Count" id="EH_Tables_Count" /></td>
													<td><a href="#">Chairs</a> <input type="checkbox"
														name="EH_Chairs" id="EH_Chairs" /><br> <input
														type="text" name="EH_Chairs_Count" id="EH_Chairs_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Tube Lights</a> <input type="checkbox"
														name="EH_TubeLights" id="EH_TubeLights" /><br> <input
														type="text" name="EH_TubeLights_Count"
														id="EH_TubeLights_Count" /></td>
													<td><a href="#">Bulbs</a> <input type="checkbox"
														name="EH_Bulbs" id="EH_Bulbs" /><br> <input
														type="text" name="EH_Bulbs_Count" id="EH_Bulbs_Count" /></td>
												</tr>
												<tr><td><input type="text" name="EH_Wooden_Almira_Count" id="EH_Wooden_Almira_Count" style="display:none;"/></td></tr>
											</table>
										</div>
									</div>
								</div>
							</div>

							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordion"
											href="#collapse4"><span
											class="glyphicon glyphicon-menu-down">&nbsp;</span>Office Store </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
											type="checkbox" name="officestoreroom" id="officestoreroom" />
									</h4>
								</div>
								<div id="collapse4" class="panel-collapse collapse">
									<div class="panel-body">
										<div class="table-responsive">
											<table class="table">
												<tr>
													<td><a href="#">Length (in sft)</a><br>
														<input type="text" name="ST_Length" id="ST_Length" /></td>
													<td><a href="#">Width (in sft)</a> <br> 
													<input type="text" name="ST_Width" id="ST_Width" /></td>
												</tr>
												<tr>
													<td><a href="#">Carpet Area (in Sft)</a> <input
														type="checkbox" /><br> <input type="text"
														name="ST_Plinth_Area" id="ST_Plinth_Area"  readonly=true/></td>
													<td><a href="#">Stools</a> <input type="checkbox"
														name="ST_Stools" id="ST_Stools" /><br> <input
														type="text" name="ST_Stools_Count" id="ST_Stools_Count" /></td>
												</tr>


												<tr>
													<td><a href="#">Table Fans</a> <input type="checkbox"
														name="ST_Table_Fans" id="ST_Table_Fans" /><br> <input
														type="text" name="ST_Table_Fans_Count"
														id="ST_Table_Fans_Count" /></td>
													<td><a href="#">Ceiling Fans</a> <input
														type="checkbox" name="ST_Ceiling_Fans"
														id="ST_Ceiling_Fans" /><br> <input type="text"
														name="ST_Ceiling_Fans_Count" id="ST_Ceiling_Fans_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Tables</a> <input type="checkbox"
														name="ST_Tables" id="ST_Tables" /><br> <input
														type="text" name="ST_Tables_Count" id="ST_Tables_Count" /></td>
													<td><a href="#">Chairs</a> <input type="checkbox"
														name="ST_Chairs" id="ST_Chairs" /><br> <input
														type="text" name="ST_Chairs_Count" id="ST_Chairs_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Tube Lights</a> <input type="checkbox"
														name="ST_TubeLights" id="ST_TubeLights" /><br> <input
														type="text" name="ST_TubeLights_Count"
														id="ST_TubeLights_Count" /></td>
													<td><a href="#">Bulbs</a> <input type="checkbox"
														name="ST_Bulbs" id="ST_Bulbs" /><br> <input
														type="text" name="ST_Bulbs_Count" id="ST_Bulbs_Count" /></td>
												</tr>

												<tr>
													<td><a href="#">Reading Tables</a> <input
														type="checkbox" name="ST_ReadingTables"
														id="ST_ReadingTables" /><br> <input type="text"
														name="ST_ReadingTables_Count" id="ST_ReadingTables_Count" /></td>
													<td><a href="#">Glass Door Almira</a> <input
														type="checkbox" name="ST_Glass-Door-Almira"
														id="ST_Glass-Door-Almira" /><br> <input type="text"
														name="ST_Glass-Door-Almira_Count"
														id="ST_Glass-Door-Almira_Count" /></td>
												</tr>

												<tr>
													<td><a href="#">Locker Units</a> <input
														type="checkbox" name="ST_Locker_Units"
														id="ST_Locker_Units" /><br> <input type="text"
														name="ST_Locker_Units_Count" id="ST_Locker_Units_Count" /></td>
													<td><a href="#">S Type Chairs</a> <input
														type="checkbox" name="ST_S_Type_Chairs"
														id="ST_S_Type_Chairs" /><br> <input type="text"
														name="ST_S_Type_Chairs_Count" id="ST_S_Type_Chairs_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Store Well Almira</a> <input
														type="checkbox" name="ST_Store-Well-Almira"
														id="ST_Store-Well-Almira" /><br> <input type="text"
														name="ST_Store-Well-Almira_Count"
														id="ST_Store-Well-Almira_Count" /></td>
													<td><a href="#">Wooden Almira</a><br>
													 	<input type="text" name="ST_Wooden_Almira_Count" id="ST_Wooden_Almira_Count" /></td>
												</tr>

											</table>
										</div>
									</div>
								</div>

							</div>

							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordion"
											href="#collapse5"><span
											class="glyphicon glyphicon-menu-down">&nbsp;</span>Staff Room </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
											type="checkbox" name="staffroom" id="staffroom" />
									</h4>
								</div>
								<div id="collapse5" class="panel-collapse collapse">
									<div class="panel-body">
										<div class="table-responsive">
											<table class="table">
												<tr>
													<td><a href="#">Length (in sft)</a><br>
														<input type="text" name="SR_Length" id="SR_Length" /></td>
													<td><a href="#">Width (in sft)</a> <br> 
													<input type="text" name="SR_Width" id="SR_Width" /></td>
												</tr>
												<tr>
													<td><a href="#">Carpet Area (in Sft)</a> <input
														type="checkbox" /><br> <input type="text"
														name="SR_Plinth_Area" id="SR_Plinth_Area"  readonly=true/></td>
													<td><a href="#">Stools</a> <input type="checkbox"
														name="SR_Stools" id="SR_Stools" /><br> <input
														type="text" name="SR_Stools_Count" id="SR_Stools_Count" /></td>
												</tr>

												<tr>
													<td><a href="#">Table Fans</a> <input type="checkbox"
														name="SR_Table_Fans" id="SR_Table_Fans" /><br> <input
														type="text" name="SR_Table_Fans_Count"
														id="SR_Table_Fans_Count" /></td>
													<td><a href="#">Ceiling Fans</a> <input
														type="checkbox" name="SR_Ceiling_Fans"
														id="SR_Ceiling_Fans" /><br> <input type="text"
														name="SR_Ceiling_Fans_Count" id="SR_Ceiling_Fans_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Tables</a> <input type="checkbox"
														name="SR_Tables" id="SR_Tables" /><br> <input
														type="text" name="SR_Tables_Count" id="SR_Tables_Count" /></td>
													<td><a href="#">Chairs</a> <input type="checkbox"
														name="SR_Chairs" id="SR_Chairs" /><br> <input
														type="text" name="SR_Chairs_Count" id="SR_Chairs_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Tube Lights</a> <input type="checkbox"
														name="SR_TubeLights" id="SR_TubeLights" /><br> <input
														type="text" name="SR_TubeLights_Count"
														id="SR_TubeLights_Count" /></td>
													<td><a href="#">Bulbs</a> <input type="checkbox"
														name="SR_Bulbs" id="SR_Bulbs" /><br> <input
														type="text" name="SR_Bulbs_Count" id="SR_Bulbs_Count" /></td>
												</tr>


												<tr>
													<td><a href="#">Reading Tables</a> <input
														type="checkbox" name="SR_ReadingTables"
														id="SR_ReadingTables" /><br> <input type="text"
														name="SR_ReadingTables_Count" id="SR_ReadingTables_Count" /></td>
													<td><a href="#">Glass Door Almira</a> <input
														type="checkbox" name="SR_Glass-Door-Almira"
														id="SR_Glass-Door-Almira" /><br> <input type="text"
														name="SR_Glass-Door-Almira_Count"
														id="SR_Glass-Door-Almira_Count" /></td>
												</tr>

												<tr>
													<td><a href="#">Locker Units</a> <input
														type="checkbox" name="SR_Locker_Units"
														id="SR_Locker_Units" /><br> <input type="text"
														name="SR_Locker_Units_Count" id="SR_Locker_Units_Count" /></td>
													<td><a href="#">S Type Chairs</a> <input
														type="checkbox" name="SR_S_Type_Chairs"
														id="SR_S_Type_Chairs" /><br> <input type="text"
														name="SR_S_Type_Chairs_Count" id="SR_S_Type_Chairs_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Store Well Almira</a> <input
														type="checkbox" name="SR_Store-Well-Almira"
														id="SR_Store-Well-Almira" /><br> <input type="text"
														name="SR_Store-Well-Almira_Count"
														id="SR_Store-Well-Almira_Count" /></td>
													<td><a href="#">Wooden Almira</a><br>
													 	<input type="text" name="SR_Wooden_Almira_Count" id="SR_Wooden_Almira_Count" /></td>
												</tr>
											</table>
										</div>
									</div>
								</div>

							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordion"
											href="#collapse6"><span
											class="glyphicon glyphicon-menu-down">&nbsp;</span>Games Room </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
											type="checkbox" name="gamesroom" id="gamesroom" />
									</h4>
								</div>
								<div id="collapse6" class="panel-collapse collapse">
									<div class="panel-body">
										<div class="table-responsive">
											<table class="table">
												<tr>
													<td><a href="#">Length (in sft)</a><br>
														<input type="text" name="GR_Length" id="GR_Length" /></td>
													<td><a href="#">Width (in sft)</a> <br> 
													<input type="text" name="GR_Width" id="GR_Width" /></td>
												</tr>
												<tr>
													<td><a href="#">Carpet Area (in Sft)</a> <input
														type="checkbox" /><br> <input type="text"
														name="GR_Plinth_Area" id="GR_Plinth_Area"  readonly=true/></td>
													<td><a href="#">Stools</a> <input type="checkbox"
														name="GR_Stools" id="GR_Stools" /><br> <input
														type="text" name="GR_Stools_Count" id="GR_Stools_Count" /></td>
												</tr>

												<tr>
													<td><a href="#">Table Fans</a> <input type="checkbox"
														name="GR_Table_Fans" id="GR_Table_Fans" /><br> <input
														type="text" name="GR_Table_Fans_Count"
														id="GR_Table_Fans_Count" /></td>
													<td><a href="#">Ceiling Fans</a> <input
														type="checkbox" name="GR_Ceiling_Fans"
														id="GR_Ceiling_Fans" /><br> <input type="text"
														name="GR_Ceiling_Fans_Count" id="GR_Ceiling_Fans_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Tables</a> <input type="checkbox"
														name="GR_Tables" id="GR_Tables" /><br> <input
														type="text" name="GR_Tables_Count" id="GR_Tables_Count" /></td>
													<td><a href="#">Chairs</a> <input type="checkbox"
														name="GR_Chairs" id="GR_Chairs" /><br> <input
														type="text" name="GR_Chairs_Count" id="GR_Chairs_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Tube Lights</a> <input type="checkbox"
														name="GR_TubeLights" id="GR_TubeLights" /><br> <input
														type="text" name="GR_TubeLights_Count"
														id="GR_TubeLights_Count" /></td>
													<td><a href="#">Bulbs</a> <input type="checkbox"
														name="GR_Bulbs" id="GR_Bulbs" /><br> <input
														type="text" name="GR_Bulbs_Count" id="GR_Bulbs_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Reading Tables</a> <input
														type="checkbox" name="GR_ReadingTables"
														id="GR_ReadingTables" /><br> <input type="text"
														name="GR_ReadingTables_Count" id="GR_ReadingTables_Count" /></td>
													<td><a href="#">Glass Door Almira</a> <input
														type="checkbox" name="GR_Glass-Door-Almira"
														id="GR_Glass-Door-Almira" /><br> <input type="text"
														name="GR_Glass-Door-Almira_Count"
														id="GR_Glass-Door-Almira_Count" /></td>
												</tr>


												<tr>
													<td><a href="#">Locker Units</a> <input
														type="checkbox" name="GR_Locker_Units"
														id="GR_Locker_Units" /><br> <input type="text"
														name="GR_Locker_Units_Count" id="GR_Locker_Units_Count" /></td>
													<td><a href="#">S Type Chairs</a> <input
														type="checkbox" name="GR_S_Type_Chairs"
														id="GR_S_Type_Chairs" /><br> <input type="text"
														name="GR_S_Type_Chairs_Count" id="GR_S_Type_Chairs_Count" /></td>
												</tr>

												<tr>
													<td><a href="#">Store Well Almira</a> <input
														type="checkbox" name="GR_Store-Well-Almira"
														id="GR_Store-Well-Almira" /><br> <input type="text"
														name="GR_Store-Well-Almira_Count"
														id="GR_Store-Well-Almira_Count" /></td>
													<td><a href="#">Wooden Almira</a><br>
													 	<input type="text" name="GR_Wooden_Almira_Count" id="GR_Wooden_Almira_Count" /></td>
												</tr>

											</table>
										</div>
									</div>
								</div>
							</div>
							
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordion"
											href="#collapse7"><span
											class="glyphicon glyphicon-menu-down">&nbsp;</span>Activity Room </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
											type="checkbox" name="gamesroom" id="gamesroom" />
									</h4>
								</div>
								<div id="collapse7" class="panel-collapse collapse">
									<div class="panel-body">
										<div class="table-responsive">
											<table class="table">
												<tr>
													<td><a href="#">Length (in sft)</a><br>
														<input type="text" name="AR_Length" id="AR_Length" /></td>
													<td><a href="#">Width (in sft)</a> <br> 
													<input type="text" name="AR_Width" id="AR_Width" /></td>
												</tr>
												<tr>
													<td><a href="#">Carpet Area (in Sft)</a> <input
														type="checkbox" /><br> <input type="text"
														name="AR_Plinth_Area" id="AR_Plinth_Area"  readonly=true/></td>
													<td><a href="#">Stools</a> <input type="checkbox"
														name="AR_Stools" id="AR_Stools" /><br> <input
														type="text" name="AR_Stools_Count" id="AR_Stools_Count" /></td>
												</tr>

												<tr>
													<td><a href="#">Table Fans</a> <input type="checkbox"
														name="AR_Table_Fans" id="AR_Table_Fans" /><br> <input
														type="text" name="AR_Table_Fans_Count"
														id="AR_Table_Fans_Count" /></td>
													<td><a href="#">Ceiling Fans</a> <input
														type="checkbox" name="AR_Ceiling_Fans"
														id="AR_Ceiling_Fans" /><br> <input type="text"
														name="AR_Ceiling_Fans_Count" id="AR_Ceiling_Fans_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Tables</a> <input type="checkbox"
														name="AR_Tables" id="AR_Tables" /><br> <input
														type="text" name="AR_Tables_Count" id="AR_Tables_Count" /></td>
													<td><a href="#">Chairs</a> <input type="checkbox"
														name="AR_Chairs" id="AR_Chairs" /><br> <input
														type="text" name="AR_Chairs_Count" id="AR_Chairs_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Tube Lights</a> <input type="checkbox"
														name="AR_TubeLights" id="AR_TubeLights" /><br> <input
														type="text" name="AR_TubeLights_Count"
														id="AR_TubeLights_Count" /></td>
													<td><a href="#">Bulbs</a> <input type="checkbox"
														name="AR_Bulbs" id="AR_Bulbs" /><br> <input
														type="text" name="AR_Bulbs_Count" id="AR_Bulbs_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Reading Tables</a> <input
														type="checkbox" name="AR_ReadingTables"
														id="AR_ReadingTables" /><br> <input type="text"
														name="AR_ReadingTables_Count" id="AR_ReadingTables_Count" /></td>
													<td><a href="#">Glass Door Almira</a> <input
														type="checkbox" name="AR_Glass-Door-Almira"
														id="AR_Glass-Door-Almira" /><br> <input type="text"
														name="AR_Glass-Door-Almira_Count"
														id="AR_Glass-Door-Almira_Count" /></td>
												</tr>


												<tr>
													<td><a href="#">Locker Units</a> <input
														type="checkbox" name="AR_Locker_Units"
														id="AR_Locker_Units" /><br> <input type="text"
														name="AR_Locker_Units_Count" id="AR_Locker_Units_Count" /></td>
													<td><a href="#">S Type Chairs</a> <input
														type="checkbox" name="AR_S_Type_Chairs"
														id="AR_S_Type_Chairs" /><br> <input type="text"
														name="AR_S_Type_Chairs_Count" id="AR_S_Type_Chairs_Count" /></td>
												</tr>

												<tr>
													<td><a href="#">Store Well Almira</a> <input
														type="checkbox" name="AR_Store-Well-Almira"
														id="AR_Store-Well-Almira" /><br> <input type="text"
														name="AR_Store-Well-Almira_Count"
														id="AR_Store-Well-Almira_Count" /></td>
													<td><a href="#">Wooden Almira</a><br>
													 	<input type="text" name="AR_Wooden_Almira_Count" id="AR_Wooden_Almira_Count" /></td>
												</tr>

											</table>
										</div>
									</div>
								</div>
							</div>
							
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordion"
											href="#collapse8"><span
											class="glyphicon glyphicon-menu-down">&nbsp;</span>TV Room </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
											type="checkbox" name="gamesroom" id="gamesroom" />
									</h4>
								</div>
								<div id="collapse8" class="panel-collapse collapse">
									<div class="panel-body">
										<div class="table-responsive">
											<table class="table">
												<tr>
													<td><a href="#">Length (in sft)</a><br>
														<input type="text" name="TR_Length" id="TR_Length" /></td>
													<td><a href="#">Width (in sft)</a> <br> 
													<input type="text" name="TR_Width" id="TR_Width" /></td>
												</tr>
												<tr>
													<td><a href="#">Carpet Area (in Sft)</a> <input
														type="checkbox" /><br> <input type="text"
														name="TR_Plinth_Area" id="TR_Plinth_Area"  readonly=true/></td>
													<td><a href="#">Stools</a> <input type="checkbox"
														name="TR_Stools" id="TR_Stools" /><br> <input
														type="text" name="TR_Stools_Count" id="TR_Stools_Count" /></td>
												</tr>

												<tr>
													<td><a href="#">Table Fans</a> <input type="checkbox"
														name="TR_Table_Fans" id="TR_Table_Fans" /><br> <input
														type="text" name="TR_Table_Fans_Count"
														id="TR_Table_Fans_Count" /></td>
													<td><a href="#">Ceiling Fans</a> <input
														type="checkbox" name="TR_Ceiling_Fans"
														id="TR_Ceiling_Fans" /><br> <input type="text"
														name="TR_Ceiling_Fans_Count" id="TR_Ceiling_Fans_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Tables</a> <input type="checkbox"
														name="TR_Tables" id="TR_Tables" /><br> <input
														type="text" name="TR_Tables_Count" id="TR_Tables_Count" /></td>
													<td><a href="#">Chairs</a> <input type="checkbox"
														name="TR_Chairs" id="TR_Chairs" /><br> <input
														type="text" name="TR_Chairs_Count" id="TR_Chairs_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Tube Lights</a> <input type="checkbox"
														name="TR_TubeLights" id="TR_TubeLights" /><br> <input
														type="text" name="TR_TubeLights_Count"
														id="TR_TubeLights_Count" /></td>
													<td><a href="#">Bulbs</a> <input type="checkbox"
														name="TR_Bulbs" id="TR_Bulbs" /><br> <input
														type="text" name="TR_Bulbs_Count" id="TR_Bulbs_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Reading Tables</a> <input
														type="checkbox" name="TR_ReadingTables"
														id="TR_ReadingTables" /><br> <input type="text"
														name="TR_ReadingTables_Count" id="TR_ReadingTables_Count" /></td>
													<td><a href="#">Glass Door Almira</a> <input
														type="checkbox" name="TR_Glass-Door-Almira"
														id="TR_Glass-Door-Almira" /><br> <input type="text"
														name="TR_Glass-Door-Almira_Count"
														id="TR_Glass-Door-Almira_Count" /></td>
												</tr>


												<tr>
													<td><a href="#">Locker Units</a> <input
														type="checkbox" name="TR_Locker_Units"
														id="TR_Locker_Units" /><br> <input type="text"
														name="TR_Locker_Units_Count" id="TR_Locker_Units_Count" /></td>
													<td><a href="#">S Type Chairs</a> <input
														type="checkbox" name="TR_S_Type_Chairs"
														id="TR_S_Type_Chairs" /><br> <input type="text"
														name="TR_S_Type_Chairs_Count" id="TR_S_Type_Chairs_Count" /></td>
												</tr>

												<tr>
													<td><a href="#">Store Well Almira</a> <input
														type="checkbox" name="TR_Store-Well-Almira"
														id="TR_Store-Well-Almira" /><br> <input type="text"
														name="TR_Store-Well-Almira_Count"
														id="TR_Store-Well-Almira_Count" /></td>
													<td><a href="#">Wooden Almira</a><br>
													 	<input type="text" name="TR_Wooden_Almira_Count" id="TR_Wooden_Almira_Count" /></td>
												</tr>

											</table>
										</div>
									</div>
								</div>
							</div>
							
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordion"
											href="#collapse9"><span
											class="glyphicon glyphicon-menu-down">&nbsp;</span>Projector Room </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
											type="checkbox" name="gamesroom" id="gamesroom" />
									</h4>
								</div>
								<div id="collapse9" class="panel-collapse collapse">
									<div class="panel-body">
										<div class="table-responsive">
											<table class="table">
												<tr>
													<td><a href="#">Length (in sft)</a><br>
														<input type="text" name="PR_Length" id="PR_Length" /></td>
													<td><a href="#">Width (in sft)</a> <br> 
													<input type="text" name="PR_Width" id="PR_Width" /></td>
												</tr>
												<tr>
													<td><a href="#">Carpet Area (in Sft)</a> <input
														type="checkbox" /><br> <input type="text"
														name="PR_Plinth_Area" id="PR_Plinth_Area"  readonly=true/></td>
													<td><a href="#">Stools</a> <input type="checkbox"
														name="PR_Stools" id="PR_Stools" /><br> <input
														type="text" name="PR_Stools_Count" id="PR_Stools_Count" /></td>
												</tr>

												<tr>
													<td><a href="#">Table Fans</a> <input type="checkbox"
														name="PR_Table_Fans" id="PR_Table_Fans" /><br> <input
														type="text" name="PR_Table_Fans_Count"
														id="PR_Table_Fans_Count" /></td>
													<td><a href="#">Ceiling Fans</a> <input
														type="checkbox" name="PR_Ceiling_Fans"
														id="PR_Ceiling_Fans" /><br> <input type="text"
														name="PR_Ceiling_Fans_Count" id="PR_Ceiling_Fans_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Tables</a> <input type="checkbox"
														name="PR_Tables" id="PR_Tables" /><br> <input
														type="text" name="PR_Tables_Count" id="PR_Tables_Count" /></td>
													<td><a href="#">Chairs</a> <input type="checkbox"
														name="PR_Chairs" id="PR_Chairs" /><br> <input
														type="text" name="PR_Chairs_Count" id="PR_Chairs_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Tube Lights</a> <input type="checkbox"
														name="PR_TubeLights" id="PR_TubeLights" /><br> <input
														type="text" name="PR_TubeLights_Count"
														id="PR_TubeLights_Count" /></td>
													<td><a href="#">Bulbs</a> <input type="checkbox"
														name="PR_Bulbs" id="PR_Bulbs" /><br> <input
														type="text" name="PR_Bulbs_Count" id="PR_Bulbs_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Reading Tables</a> <input
														type="checkbox" name="PR_ReadingTables"
														id="PR_ReadingTables" /><br> <input type="text"
														name="PR_ReadingTables_Count" id="PR_ReadingTables_Count" /></td>
													<td><a href="#">Glass Door Almira</a> <input
														type="checkbox" name="PR_Glass-Door-Almira"
														id="PR_Glass-Door-Almira" /><br> <input type="text"
														name="PR_Glass-Door-Almira_Count"
														id="PR_Glass-Door-Almira_Count" /></td>
												</tr>


												<tr>
													<td><a href="#">Locker Units</a> <input
														type="checkbox" name="PR_Locker_Units"
														id="PR_Locker_Units" /><br> <input type="text"
														name="PR_Locker_Units_Count" id="PR_Locker_Units_Count" /></td>
													<td><a href="#">S Type Chairs</a> <input
														type="checkbox" name="PR_S_Type_Chairs"
														id="PR_S_Type_Chairs" /><br> <input type="text"
														name="PR_S_Type_Chairs_Count" id="PR_S_Type_Chairs_Count" /></td>
												</tr>

												<tr>
													<td><a href="#">Store Well Almira</a> <input
														type="checkbox" name="PR_Store-Well-Almira"
														id="PR_Store-Well-Almira" /><br> <input type="text"
														name="PR_Store-Well-Almira_Count"
														id="PR_Store-Well-Almira_Count" /></td>
													<td><a href="#">Wooden Almira</a><br>
													 	<input type="text" name="PR_Wooden_Almira_Count" id="PR_Wooden_Almira_Count" /></td>
												</tr>

											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div role="tabpanel" class="tab-pane fade" id="lab">

					<div id="divMenu">
						<div class="panel-group" id="accordion">
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordion"
											href="#collapse11"><span
											class="glyphicon glyphicon-menu-down">&nbsp;</span>Botany Lab</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
											type="checkbox" name="botanylab" id="botanylab" />
									</h4>
								</div>
								<div id="collapse11" class="panel-collapse collapse">
									<div class="panel-body">
										<div class="table-responsive">
											<table class="table">
												<tr>
													<td><a href="#">Length (in sft)</a><br>
														<input type="text" name="BL_Length" id="BL_Length" /></td>
													<td><a href="#">Width (in sft)</a> <br> 
													<input type="text" name="BL_Width" id="BL_Width" /></td>
												</tr>
												<tr>
													<td><a href="#">Carpet Area (in Sft)</a> <input
														type="checkbox" /><br> <input type="text"
														name="BL_Plinth_Area" id="BL_Plinth_Area"  readonly=true/></td>
													<td><a href="#">Ceiling Fans</a> <input
														type="checkbox" name="BL_Ceiling_Fans"
														id="BL_Ceiling_Fans" /><br> <input type="text"
														name="BL_Ceiling_Fans_Count" id="BL_Ceiling_Fans_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Tables</a> <input type="checkbox"
														name="BL_Tables" id="BL_Tables" /><br> <input
														type="text" name="BL_Tables_Count" id="BL_Tables_Count" /></td>
													<td><a href="#">Chairs</a> <input type="checkbox"
														name="BL_Chairs" id="BL_Chairs" /><br> <input
														type="text" name="BL_Chairs_Count" id="BL_Chairs_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Tube Lights</a> <input type="checkbox"
														name="BL_TubeLights" id="BL_TubeLights" /><br> <input
														type="text" name="BL_TubeLights_Count"
														id="BL_TubeLights_Count" /></td>
													<td><a href="#">Bulbs</a> <input type="checkbox"
														name="BL_Bulbs" id="BL_Bulbs" /><br> <input
														type="text" name="BL_Bulbs_Count" id="BL_Bulbs_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Reading Tables</a> <input
														type="checkbox" name="BL_ReadingTables"
														id="BL_ReadingTables" /><br> <input type="text"
														name="BL_ReadingTables_Count" id="BL_ReadingTables_Count" /></td>
													<td><a href="#">Locker Units</a> <input
														type="checkbox" name="BL_Locker_Units"
														id="BL_Locker_Units" /><br> <input type="text"
														name="BL_Locker_Units_Count" id="BL_Locker_Units_Count" /></td>
												</tr>

												<tr>
													<td><a href="#">Stools</a> <input type="checkbox"
														name="BL_Stools" id="BL_Stools" /><br> <input
														type="text" name="BL_Stools_Count" id="BL_Stools_Count" /></td>
													<td><a href="#">Glass Door Almira</a> <input
														type="checkbox" name="BL_Glass-Door-Almira"
														id="BL_Glass-Door-Almira" /><br> <input type="text"
														name="BL_Glass-Door-Almira_Count"
														id="BL_Glass-Door-Almira_Count" /></td>
												</tr>

												<tr>
													<td><a href="#">S Type Chairs</a> <input
														type="checkbox" name="BL_S_Type_Chairs"
														id="BL_S_Type_Chairs"><br> <input type="text"
														name="BL_S_Type_Chairs_Count" id="BL_S_Type_Chairs_Count" /></td>
													<td><a href="#">Store well Almira</a> <input
														type="checkbox" name="BL_Store-Well-Almira"
														id="BL_Store-Well-Almira"><br> <input
														type="text" name="BL_Store-Well-Almira_Count"
														id="BL_Store-Well-Almira_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Green Boards</a> <input
														type="checkbox" name="BL_Green_Board" id="BL_Green_Board"><br>
														<input type="text" name="BL_Green_Board_Count"
														id="BL_Green_Board_Count" /></td>
													<td><a href="#">Table Fans</a> <input type="checkbox"
														name="BL_Table_Fans" id="BL_Table_Fans" /><br> <input
														type="text" name="BL_Table_Fans_Count"
														id="BL_Table_Fans_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Fixed Tables</a><br>
													 	<input type="text" name="BL_Fixed_Tables" id="BL_Fixed_Tables" /></td>
													 	<td><a href="#">Fixed Chairs</a><br>
													 	<input type="text" name="BL_Fixed_Chairs" id="BL_Fixed_Chairs" /></td>
												</tr>
												<tr>
													<td><a href="#">Wooden Almira</a><br>
													 	<input type="text" name="BL_Wooden_Almira_Count" id="BL_Wooden_Almira_Count" /></td>
													 <td><a href="#">Black Boards</a> <input
														type="checkbox" name="BL_Black_Board" id="BL_Black_Board"><br>
														<input type="text" name="BL_Black_Board_Count"
														id="BL_Black_Board_Count" /></td>
												</tr>

											</table>
										</div>
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordion"
											href="#collapse12"><span
											class="glyphicon glyphicon-menu-down">&nbsp;</span>Physics Lab</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
											type="checkbox" name="physicslab" id="physicslab" />
									</h4>
								</div>

								<div id="collapse12" class="panel-collapse collapse">
									<div class="panel-body">
										<div class="table-responsive">
											<table class="table">
												<tr>
													<td><a href="#">Length (in sft)</a><br>
														<input type="text" name="PL_Length" id="PL_Length" /></td>
													<td><a href="#">Width (in sft)</a> <br> 
													<input type="text" name="PL_Width" id="PL_Width" /></td>
												</tr>
												<tr>
													<td><a href="#">Carpet Area (in Sft)</a> <input
														type="checkbox" /><br> <input type="text"
														name="PL_Plinth_Area" id="PL_Plinth_Area"  readonly=true/></td>
													<td><a href="#">Ceiling Fans</a> <input
														type="checkbox" name="PL_Ceiling_Fans"
														id="PL_Ceiling_Fans" /><br> <input type="text"
														name="PL_Ceiling_Fans_Count" id="PL_Ceiling_Fans_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Tables</a> <input type="checkbox"
														name="PL_Tables" id="PL_Tables" /><br> <input
														type="text" name="PL_Tables_Count" id="PL_Tables_Count" /></td>
													<td><a href="#">Chairs</a> <input type="checkbox"
														name="PL_Chairs" id="PL_Chairs" /><br> <input
														type="text" name="PL_Chairs_Count" id="PL_Chairs_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Tube Lights</a> <input type="checkbox"
														name="PL_TubeLights" id="PL_TubeLights" /><br> <input
														type="text" name="PL_TubeLights_Count"
														id="PL_TubeLights_Count" /></td>
													<td><a href="#">Bulbs</a> <input type="checkbox"
														name="PL_Bulbs" id="PL_Bulbs" /><br> <input
														type="text" name="PL_Bulbs_Count" id="PL_Bulbs_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Reading Tables</a> <input
														type="checkbox" name="PL_ReadingTables"
														id="PL_ReadingTables" /><br> <input type="text"
														name="PL_ReadingTables_Count" id="PL_ReadingTables_Count" /></td>
													<td><a href="#">Locker Units</a> <input
														type="checkbox" name="PL_Locker_Units"
														id="PL_Locker_Units" /><br> <input type="text"
														name="PL_Locker_Units_Count" id="PL_Locker_Units_Count" /></td>
												</tr>

												<tr>
													<td><a href="#">Stools</a> <input type="checkbox"
														name="PL_Stools" id="PL_Stools" /><br> <input
														type="text" name="PL_Stools_Count" id="PL_Stools_Count" /></td>
													<td><a href="#">Glass Door Almira</a> <input
														type="checkbox" name="PL_Glass-Door-Almira"
														id="PL_Glass-Door-Almira" /><br> <input type="text"
														name="PL_Glass-Door-Almira_Count"
														id="PL_Glass-Door-Almira_Count" /></td>
												</tr>

												<tr>
													<td><a href="#">S Type Chairs</a> <input
														type="checkbox" name="PL_S_Type_Chairs"
														id="PL_S_Type_Chairs"><br> <input type="text"
														name="PL_S_Type_Chairs_Count" id="PL_S_Type_Chairs_Count" /></td>
													<td><a href="#">Store well Almira</a> <input
														type="checkbox" name="PL_Store-Well-Almira"
														id="PL_Store-Well-Almira"><br> <input
														type="text" name="PL_Store-Well-Almira_Count"
														id="PL_Store-Well-Almira_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Green Boards</a> <input
														type="checkbox" name="PL_Green_Board" id="PL_Green_Board"><br>
														<input type="text" name="PL_Green_Board_Count"
														id="PL_Green_Board_Count" /></td>
													<td><a href="#">Table Fans</a> <input type="checkbox"
														name="PL_Table_Fans" id="PL_Table_Fans" /><br> <input
														type="text" name="PL_Table_Fans_Count"
														id="PL_Table_Fans_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Fixed Tables</a><br>
													 	<input type="text" name="PL_Fixed_Tables" id="PL_Fixed_Tables" /></td>
													 	<td><a href="#">Fixed Chairs</a><br>
													 	<input type="text" name="PL_Fixed_Chairs" id="PL_Fixed_Chairs" /></td>
												</tr>
												<tr>
													<td><a href="#">Wooden Almira</a><br>
													 	<input type="text" name="PL_Wooden_Almira_Count" id="PL_Wooden_Almira_Count" /></td>
													 	<td><a href="#">Black Boards</a> <input
														type="checkbox" name="PL_Black_Board" id="PL_Black_Board"><br>
														<input type="text" name="PL_Black_Board_Count"
														id="PL_Black_Board_Count" /></td>
												</tr>

											</table>
										</div>
									</div>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordion"
											href="#collapse13"> <span
											class="glyphicon glyphicon-menu-down">&nbsp;</span>Chemistry Lab</a>&nbsp;&nbsp;&nbsp;&nbsp;<input
											type="checkbox" name="chemistrylab" id="chemistrylab" />

									</h4>
								</div>
								<div id="collapse13" class="panel-collapse collapse">
									<div class="panel-body">
										<div class="table-responsive">
											<table class="table">
												<tr>
													<td><a href="#">Length (in sft)</a><br>
														<input type="text" name="CL_Length" id="CL_Length" /></td>
													<td><a href="#">Width (in sft)</a> <br> 
													<input type="text" name="CL_Width" id="CL_Width" /></td>
												</tr>
												<tr>
													<td><a href="#">Carpet Area (in Sft)</a> <input
														type="checkbox" /><br> <input type="text"
														name="CL_Plinth_Area" id="CL_Plinth_Area"  readonly=true/></td>
													<td><a href="#">Ceiling Fans</a> <input
														type="checkbox" name="CL_Ceiling_Fans"
														id="CL_Ceiling_Fans" /><br> <input type="text"
														name="CL_Ceiling_Fans_Count" id="CL_Ceiling_Fans_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Tables</a> <input type="checkbox"
														name="CL_Tables" id="CL_Tables" /><br> <input
														type="text" name="CL_Tables_Count" id="CL_Tables_Count" /></td>
													<td><a href="#">Chairs</a> <input type="checkbox"
														name="CL_Chairs" id="CL_Chairs" /><br> <input
														type="text" name="CL_Chairs_Count" id="CL_Chairs_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Tube Lights</a> <input type="checkbox"
														name="CL_TubeLights" id="CL_TubeLights" /><br> <input
														type="text" name="CL_TubeLights_Count"
														id="CL_TubeLights_Count" /></td>
													<td><a href="#">Bulbs</a> <input type="checkbox"
														name="CL_Bulbs" id="CL_Bulbs" /><br> <input
														type="text" name="CL_Bulbs_Count" id="CL_Bulbs_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Reading Tables</a> <input
														type="checkbox" name="CL_ReadingTables"
														id="CL_ReadingTables" /><br> <input type="text"
														name="CL_ReadingTables_Count" id="CL_ReadingTables_Count" /></td>
													<td><a href="#">Locker Units</a> <input
														type="checkbox" name="CL_Locker_Units"
														id="CL_Locker_Units" /><br> <input type="text"
														name="CL_Locker_Units_Count" id="CL_Locker_Units_Count" /></td>
												</tr>

												<tr>
													<td><a href="#">Stools</a> <input type="checkbox"
														name="CL_Stools" id="CL_Stools" /><br> <input
														type="text" name="CL_Stools_Count" id="CL_Stools_Count" /></td>
													<td><a href="#">Glass Door Almira</a> <input
														type="checkbox" name="CL_Glass-Door-Almira"
														id="CL_Glass-Door-Almira" /><br> <input type="text"
														name="CL_Glass-Door-Almira_Count"
														id="CL_Glass-Door-Almira_Count" /></td>
												</tr>

												<tr>
													<td><a href="#">S Type Chairs</a> <input
														type="checkbox" name="CL_S_Type_Chairs"
														id="CL_S_Type_Chairs"><br> <input type="text"
														name="CL_S_Type_Chairs_Count" id="CL_S_Type_Chairs_Count" /></td>
													<td><a href="#">Store well Almira</a> <input
														type="checkbox" name="CL_Store-Well-Almira"
														id="CL_Store-Well-Almira"><br> <input
														type="text" name="CL_Store-Well-Almira_Count"
														id="CL_Store-Well-Almira_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Green Boards</a> <input
														type="checkbox" name="CL_Green_Board" id="CL_Green_Board"><br>
														<input type="text" name="CL_Green_Board_Count"
														id="CL_Green_Board_Count" /></td>
													<td><a href="#">Table Fans</a> <input type="checkbox"
														name="CL_Table_Fans" id="CL_Table_Fans" /><br> <input
														type="text" name="CL_Table_Fans_Count"
														id="CL_Table_Fans_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Fixed Tables</a><br>
													 	<input type="text" name="CL_Fixed_Tables" id="CL_Fixed_Tables" /></td>
													 	<td><a href="#">Fixed Chairs</a><br>
													 	<input type="text" name="CL_Fixed_Chairs" id="CL_Fixed_Chairs" /></td>
												</tr>
												<tr>
													<td><a href="#">Wooden Almira</a><br>
													 	<input type="text" name="CL_Wooden_Almira_Count" id="CL_Wooden_Almira_Count" /></td>
													 	<td><a href="#">Black Boards</a> <input
														type="checkbox" name="CL_Black_Board" id="CL_Black_Board"><br>
														<input type="text" name="CL_Black_Board_Count"
														id="CL_Black_Board_Count" /></td>
												</tr>

											</table>
										</div>
									</div>
								</div>
							</div>

							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordion"
											href="#collapse14"> <span
											class="glyphicon glyphicon-menu-down">&nbsp;</span>Zoology Lab</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
											type="checkbox" name="zoologylab" id="zoologylab" />
									</h4>
								</div>
								<div id="collapse14" class="panel-collapse collapse">
									<div class="panel-body">
										<div class="table-responsive">
											<table class="table">
												<tr>
													<td><a href="#">Length (in sft)</a><br>
														<input type="text" name="ZL_Length" id="ZL_Length" /></td>
													<td><a href="#">Width (in sft)</a> <br> 
													<input type="text" name="ZL_Width" id="ZL_Width" /></td>
												</tr>
												<tr>
													<td><a href="#">Carpet Area (in Sft)</a> <input
														type="checkbox" /><br> <input type="text"
														name="ZL_Plinth_Area" id="ZL_Plinth_Area"  readonly=true/></td>
													<td><a href="#">Ceiling Fans</a> <input
														type="checkbox" name="ZL_Ceiling_Fans"
														id="ZL_Ceiling_Fans" /><br> <input type="text"
														name="ZL_Ceiling_Fans_Count" id="ZL_Ceiling_Fans_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Tables</a> <input type="checkbox"
														name="ZL_Tables" id="ZL_Tables" /><br> <input
														type="text" name="ZL_Tables_Count" id="ZL_Tables_Count" /></td>
													<td><a href="#">Chairs</a> <input type="checkbox"
														name="ZL_Chairs" id="ZL_Chairs" /><br> <input
														type="text" name="ZL_Chairs_Count" id="ZL_Chairs_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Tube Lights</a> <input type="checkbox"
														name="ZL_TubeLights" id="ZL_TubeLights" /><br> <input
														type="text" name="ZL_TubeLights_Count"
														id="ZL_TubeLights_Count" /></td>
													<td><a href="#">Bulbs</a> <input type="checkbox"
														name="ZL_Bulbs" id="ZL_Bulbs" /><br> <input
														type="text" name="ZL_Bulbs_Count" id="ZL_Bulbs_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Reading Tables</a> <input
														type="checkbox" name="ZL_ReadingTables"
														id="ZL_ReadingTables" /><br> <input type="text"
														name="ZL_ReadingTables_Count" id="ZL_ReadingTables_Count" /></td>
													<td><a href="#">Locker Units</a> <input
														type="checkbox" name="ZL_Locker_Units"
														id="ZL_Locker_Units" /><br> <input type="text"
														name="ZL_Locker_Units_Count" id="ZL_Locker_Units_Count" /></td>
												</tr>

												<tr>
													<td><a href="#">Stools</a> <input type="checkbox"
														name="ZL_Stools" id="ZL_Stools" /><br> <input
														type="text" name="ZL_Stools_Count" id="ZL_Stools_Count" /></td>
													<td><a href="#">Glass Door Almira</a> <input
														type="checkbox" name="ZL_Glass-Door-Almira"
														id="ZL_Glass-Door-Almira" /><br> <input type="text"
														name="ZL_Glass-Door-Almira_Count"
														id="ZL_Glass-Door-Almira_Count" /></td>
												</tr>

												<tr>
													<td><a href="#">S Type Chairs</a> <input
														type="checkbox" name="ZL_S_Type_Chairs"
														id="ZL_S_Type_Chairs"><br> <input type="text"
														name="ZL_S_Type_Chairs_Count" id="ZL_S_Type_Chairs_Count" /></td>
													<td><a href="#">Store well Almira</a> <input
														type="checkbox" name="ZL_Store-Well-Almira"
														id="ZL_Store-Well-Almira"><br> <input
														type="text" name="ZL_Store-Well-Almira_Count"
														id="ZL_Store-Well-Almira_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Green Boards</a> <input
														type="checkbox" name="ZL_Green_Board" id="ZL_Green_Board"><br>
														<input type="text" name="ZL_Green_Board_Count"
														id="ZL_Green_Board_Count" /></td>
													<td><a href="#">Table Fans</a> <input type="checkbox"
														name="ZL_Table_Fans" id="ZL_Table_Fans" /><br> <input
														type="text" name="ZL_Table_Fans_Count"
														id="ZL_Table_Fans_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Fixed Tables</a><br>
													 	<input type="text" name="ZL_Fixed_Tables" id="ZL_Fixed_Tables" /></td>
													 	<td><a href="#">Fixed Chairs</a><br>
													 	<input type="text" name="ZL_Fixed_Chairs" id="ZL_Fixed_Chairs" /></td>
												</tr>
												<tr>
													<td><a href="#">Wooden Almira</a><br>
													 	<input type="text" name="ZL_Wooden_Almira_Count" id="ZL_Wooden_Almira_Count" /></td>
													 	<td><a href="#">Black Boards</a> <input
														type="checkbox" name="ZL_Black_Board" id="ZL_Black_Board"><br>
														<input type="text" name="ZL_Black_Board_Count"
														id="ZL_Black_Board_Count" /></td>
												</tr>

											</table>
										</div>
									</div>
								</div>
							</div>



							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordion"
											href="#collapse15"> <span
											class="glyphicon glyphicon-menu-down">&nbsp;</span>Computers Lab</a>&nbsp;&nbsp;<input
											type="checkbox" name="computerslab" id="computerslab" />
									</h4>
								</div>
								<div id="collapse15" class="panel-collapse collapse">
									<div class="panel-body">
										<div class="table-responsive">
											<table class="table">
												<tr>
													<td><a href="#">Length (in sft)</a><br>
														<input type="text" name="CO_Length" id="CO_Length" /></td>
													<td><a href="#">Width (in sft)</a> <br> 
													<input type="text" name="CO_Width" id="CO_Width" /></td>
												</tr>
												<tr>
													<td><a href="#">Carpet Area (in Sft)</a> <input
														type="checkbox" /><br> <input type="text"
														name="CO_Plinth_Area" id="CO_Plinth_Area"  readonly=true/></td>
													<td><a href="#">Ceiling Fans</a> <input
														type="checkbox" name="CO_Ceiling_Fans"
														id="CO_Ceiling_Fans" /><br> <input type="text"
														name="CO_Ceiling_Fans_Count" id="CO_Ceiling_Fans_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Tables</a> <input type="checkbox"
														name="CO_Tables" id="CO_Tables" /><br> <input
														type="text" name="CO_Tables_Count" id="CO_Tables_Count" /></td>
													<td><a href="#">Chairs</a> <input type="checkbox"
														name="CO_Chairs" id="CO_Chairs" /><br> <input
														type="text" name="CO_Chairs_Count" id="CO_Chairs_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Tube Lights</a> <input type="checkbox"
														name="CO_TubeLights" id="CO_TubeLights" /><br> <input
														type="text" name="CO_TubeLights_Count"
														id="CO_TubeLights_Count" /></td>
													<td><a href="#">Bulbs</a> <input type="checkbox"
														name="CO_Bulbs" id="CO_Bulbs" /><br> <input
														type="text" name="CO_Bulbs_Count" id="CO_Bulbs_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Reading Tables</a> <input
														type="checkbox" name="CO_ReadingTables"
														id="CO_ReadingTables" /><br> <input type="text"
														name="CO_ReadingTables_Count" id="CO_ReadingTables_Count" /></td>
													<td><a href="#">Locker Units</a> <input
														type="checkbox" name="CO_Locker_Units"
														id="CO_Locker_Units" /><br> <input type="text"
														name="CO_Locker_Units_Count" id="CO_Locker_Units_Count" /></td>
												</tr>

												<tr>
													<td><a href="#">Stools</a> <input type="checkbox"
														name="CO_Stools" id="CO_Stools" /><br> <input
														type="text" name="CO_Stools_Count" id="CO_Stools_Count" /></td>
													<td><a href="#">Glass Door Almira</a> <input
														type="checkbox" name="CO_Glass-Door-Almira"
														id="CO_Glass-Door-Almira" /><br> <input type="text"
														name="CO_Glass-Door-Almira_Count"
														id="CO_Glass-Door-Almira_Count" /></td>
												</tr>

												<tr>
													<td><a href="#">S Type Chairs</a> <input
														type="checkbox" name="CO_S_Type_Chairs"
														id="CO_S_Type_Chairs"><br> <input type="text"
														name="CO_S_Type_Chairs_Count" id="CO_S_Type_Chairs_Count" /></td>
													<td><a href="#">Store well Almira</a> <input
														type="checkbox" name="CO_Store-Well-Almira"
														id="CO_Store-Well-Almira"><br> <input
														type="text" name="CO_Store-Well-Almira_Count"
														id="CO_Store-Well-Almira_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Green Boards</a> <input
														type="checkbox" name="CO_Green_Board" id="CO_Green_Board"><br>
														<input type="text" name="CO_Green_Board_Count"
														id="CO_Green_Board_Count" /></td>
													<td><a href="#">Table Fans</a> <input type="checkbox"
														name="CO_Table_Fans" id="CO_Table_Fans" /><br> <input
														type="text" name="CO_Table_Fans_Count"
														id="CO_Table_Fans_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Fixed Tables</a><br>
													 	<input type="text" name="CO_Fixed_Tables" id="CO_Fixed_Tables" /></td>
													 	<td><a href="#">Fixed Chairs</a><br>
													 	<input type="text" name="CO_Fixed_Chairs" id="CO_Fixed_Chairs" /></td>
												</tr>
												<tr>
													<td><a href="#">Wooden Almira</a><br>
													 	<input type="text" name="CO_Wooden_Almira_Count" id="CO_Wooden_Almira_Count" /></td>
													 	<td><a href="#">Computers</a><br>
													 	<input type="text" name="CO_Comp_Count" id="CO_Comp_Count" /></td>
												</tr>
												<tr>
												<td><a href="#">Black Boards</a> <input
														type="checkbox" name="CO_Black_Board" id="CO_Black_Board"><br>
														<input type="text" name="CO_Black_Board_Count"
														id="CO_Black_Board_Count" /></td>
												</tr>
											</table>
										</div>
									</div>
								</div>


							</div>
							
													<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordion"
											href="#collapse16"> <span
											class="glyphicon glyphicon-menu-down">&nbsp;</span>Maths Lab</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
											type="checkbox" name="zoologylab" id="zoologylab" />
									</h4>
								</div>
								<div id="collapse16" class="panel-collapse collapse">
									<div class="panel-body">
										<div class="table-responsive">
											<table class="table">
												<tr>
													<td><a href="#">Length (in sft)</a><br>
														<input type="text" name="ML_Length" id="ML_Length" /></td>
													<td><a href="#">Width (in sft)</a> <br> 
													<input type="text" name="ML_Width" id="ML_Width" /></td>
												</tr>
												<tr>
													<td><a href="#">Carpet Area (in Sft)</a> <input
														type="checkbox" /><br> <input type="text"
														name="ML_Plinth_Area" id="ML_Plinth_Area"  readonly=true/></td>
													<td><a href="#">Ceiling Fans</a> <input
														type="checkbox" name="ML_Ceiling_Fans"
														id="ML_Ceiling_Fans" /><br> <input type="text"
														name="ML_Ceiling_Fans_Count" id="ML_Ceiling_Fans_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Tables</a> <input type="checkbox"
														name="ML_Tables" id="ML_Tables" /><br> <input
														type="text" name="ML_Tables_Count" id="ML_Tables_Count" /></td>
													<td><a href="#">Chairs</a> <input type="checkbox"
														name="ML_Chairs" id="ML_Chairs" /><br> <input
														type="text" name="ML_Chairs_Count" id="ML_Chairs_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Tube Lights</a> <input type="checkbox"
														name="ML_TubeLights" id="ML_TubeLights" /><br> <input
														type="text" name="ML_TubeLights_Count"
														id="ML_TubeLights_Count" /></td>
													<td><a href="#">Bulbs</a> <input type="checkbox"
														name="ML_Bulbs" id="ML_Bulbs" /><br> <input
														type="text" name="ML_Bulbs_Count" id="ML_Bulbs_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Reading Tables</a> <input
														type="checkbox" name="ML_ReadingTables"
														id="ML_ReadingTables" /><br> <input type="text"
														name="ML_ReadingTables_Count" id="ML_ReadingTables_Count" /></td>
													<td><a href="#">Locker Units</a> <input
														type="checkbox" name="ML_Locker_Units"
														id="ML_Locker_Units" /><br> <input type="text"
														name="ML_Locker_Units_Count" id="ML_Locker_Units_Count" /></td>
												</tr>

												<tr>
													<td><a href="#">Stools</a> <input type="checkbox"
														name="ML_Stools" id="ML_Stools" /><br> <input
														type="text" name="ML_Stools_Count" id="ML_Stools_Count" /></td>
													<td><a href="#">Glass Door Almira</a> <input
														type="checkbox" name="ML_Glass-Door-Almira"
														id="ML_Glass-Door-Almira" /><br> <input type="text"
														name="ML_Glass-Door-Almira_Count"
														id="ML_Glass-Door-Almira_Count" /></td>
												</tr>

												<tr>
													<td><a href="#">S Type Chairs</a> <input
														type="checkbox" name="ML_S_Type_Chairs"
														id="ML_S_Type_Chairs"><br> <input type="text"
														name="ML_S_Type_Chairs_Count" id="ML_S_Type_Chairs_Count" /></td>
													<td><a href="#">Store well Almira</a> <input
														type="checkbox" name="ML_Store-Well-Almira"
														id="ML_Store-Well-Almira"><br> <input
														type="text" name="ML_Store-Well-Almira_Count"
														id="ML_Store-Well-Almira_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Green Boards</a> <input
														type="checkbox" name="ML_Green_Board" id="ML_Green_Board"><br>
														<input type="text" name="ML_Green_Board_Count"
														id="ML_Green_Board_Count" /></td>
													<td><a href="#">Table Fans</a> <input type="checkbox"
														name="ML_Table_Fans" id="ML_Table_Fans" /><br> <input
														type="text" name="ML_Table_Fans_Count"
														id="ML_Table_Fans_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Fixed Tables</a><br>
													 	<input type="text" name="ML_Fixed_Tables" id="ML_Fixed_Tables" /></td>
													 	<td><a href="#">Fixed Chairs</a><br>
													 	<input type="text" name="ML_Fixed_Chairs" id="ML_Fixed_Chairs" /></td>
												</tr>
												<tr>
													<td><a href="#">Wooden Almira</a><br>
													 	<input type="text" name="ML_Wooden_Almira_Count" id="ML_Wooden_Almira_Count" /></td>
													 	<td><a href="#">Black Boards</a> <input
														type="checkbox" name="ML_Black_Board" id="ML_Black_Board"><br>
														<input type="text" name="ML_Black_Board_Count"
														id="ML_Black_Board_Count" /></td>
												</tr>

											</table>
										</div>
									</div>
								</div>
							</div>
							
													<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordion"
											href="#collapse17"> <span
											class="glyphicon glyphicon-menu-down">&nbsp;</span>Science Lab</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
											type="checkbox" name="zoologylab" id="zoologylab" />
									</h4>
								</div>
								<div id="collapse17" class="panel-collapse collapse">
									<div class="panel-body">
										<div class="table-responsive">
											<table class="table">
												<tr>
													<td><a href="#">Length (in sft)</a><br>
														<input type="text" name="SL_Length" id="SL_Length" /></td>
													<td><a href="#">Width (in sft)</a> <br> 
													<input type="text" name="SL_Width" id="SL_Width" /></td>
												</tr>
												<tr>
													<td><a href="#">Carpet Area (in Sft)</a> <input
														type="checkbox" /><br> <input type="text"
														name="SL_Plinth_Area" id="SL_Plinth_Area"  readonly=true/></td>
													<td><a href="#">Ceiling Fans</a> <input
														type="checkbox" name="SL_Ceiling_Fans"
														id="SL_Ceiling_Fans" /><br> <input type="text"
														name="SL_Ceiling_Fans_Count" id="SL_Ceiling_Fans_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Tables</a> <input type="checkbox"
														name="SL_Tables" id="SL_Tables" /><br> <input
														type="text" name="SL_Tables_Count" id="SL_Tables_Count" /></td>
													<td><a href="#">Chairs</a> <input type="checkbox"
														name="SL_Chairs" id="SL_Chairs" /><br> <input
														type="text" name="SL_Chairs_Count" id="SL_Chairs_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Tube Lights</a> <input type="checkbox"
														name="SL_TubeLights" id="SL_TubeLights" /><br> <input
														type="text" name="SL_TubeLights_Count"
														id="SL_TubeLights_Count" /></td>
													<td><a href="#">Bulbs</a> <input type="checkbox"
														name="SL_Bulbs" id="SL_Bulbs" /><br> <input
														type="text" name="SL_Bulbs_Count" id="SL_Bulbs_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Reading Tables</a> <input
														type="checkbox" name="SL_ReadingTables"
														id="SL_ReadingTables" /><br> <input type="text"
														name="SL_ReadingTables_Count" id="SL_ReadingTables_Count" /></td>
													<td><a href="#">Locker Units</a> <input
														type="checkbox" name="SL_Locker_Units"
														id="SL_Locker_Units" /><br> <input type="text"
														name="SL_Locker_Units_Count" id="SL_Locker_Units_Count" /></td>
												</tr>

												<tr>
													<td><a href="#">Stools</a> <input type="checkbox"
														name="SL_Stools" id="SL_Stools" /><br> <input
														type="text" name="SL_Stools_Count" id="SL_Stools_Count" /></td>
													<td><a href="#">Glass Door Almira</a> <input
														type="checkbox" name="SL_Glass-Door-Almira"
														id="SL_Glass-Door-Almira" /><br> <input type="text"
														name="SL_Glass-Door-Almira_Count"
														id="SL_Glass-Door-Almira_Count" /></td>
												</tr>

												<tr>
													<td><a href="#">S Type Chairs</a> <input
														type="checkbox" name="SL_S_Type_Chairs"
														id="SL_S_Type_Chairs"><br> <input type="text"
														name="SL_S_Type_Chairs_Count" id="SL_S_Type_Chairs_Count" /></td>
													<td><a href="#">Store well Almira</a> <input
														type="checkbox" name="SL_Store-Well-Almira"
														id="SL_Store-Well-Almira"><br> <input
														type="text" name="SL_Store-Well-Almira_Count"
														id="SL_Store-Well-Almira_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Green Boards</a> <input
														type="checkbox" name="SL_Green_Board" id="SL_Green_Board"><br>
														<input type="text" name="SL_Green_Board_Count"
														id="SL_Green_Board_Count" /></td>
													<td><a href="#">Table Fans</a> <input type="checkbox"
														name="SL_Table_Fans" id="SL_Table_Fans" /><br> <input
														type="text" name="SL_Table_Fans_Count"
														id="SL_Table_Fans_Count" /></td>
												</tr>
												<tr>
													<td><a href="#">Fixed Tables</a><br>
													 	<input type="text" name="SL_Fixed_Tables" id="SL_Fixed_Tables" /></td>
													 	<td><a href="#">Fixed Chairs</a><br>
													 	<input type="text" name="SL_Fixed_Chairs" id="SL_Fixed_Chairs" /></td>
												</tr>
												<tr>
													<td><a href="#">Wooden Almira</a><br>
													 	<input type="text" name="SL_Wooden_Almira_Count" id="SL_Wooden_Almira_Count" /></td>
													 	<td><a href="#">Black Boards</a> <input
														type="checkbox" name="SL_Black_Board" id="SL_Black_Board"><br>
														<input type="text" name="SL_Black_Board_Count"
														id="SL_Black_Board_Count" /></td>
												</tr>

											</table>
										</div>
									</div>
								</div>
							</div>
							
						</div>
					</div>
				</div>
				<div role="tabpanel" class="tab-pane fade" id="Toilets">

					<div id="divMenu">

						<div class="table-responsive">
							<table class="table" style="background-color: white;">
								<tr>
									<td><a href="#">Exhaust Fans</a> <input type="checkbox"
										name="TO_Exhaust_Fans" id="TO_Exhaust_Fans" /><br> <input
										type="text" name="TO_Exhaust_Fans_Count"
										id="TO_Exhaust_Fans_Count" /></td>
									<td><a href="#">Bath Rooms</a> <input type="checkbox"
										name="TO_BathRooms" id="TO_BathRooms" /><br> <input
										type="text" name="TO_BathRoomsCount" id="TO_BathRoomsCount" /></td>
								</tr>
								<tr>
									<td><a href="#">Indian Toilets</a> <input type="checkbox"
										name="TO_Indian_Toilets" id="TO_Indian_Toilets" /><br> <input
										type="text" name="TO_Indian_Toilets_Count"
										id="TO_Indian_Toilets_Count" /></td>
									<td><a href="#">Provision for PH</a> <input
										type="checkbox" name="TO_ProvisionForPH"
										id="TO_ProvisionForPH" /><br> <input type="text"
										name="TO_ProvisionForPHCount" id="TO_ProvisionForPHCount" /></td>
								</tr>
								<tr>
									<td><a href="#">Tube Lights</a> <input type="checkbox"
										name="TO_TubeLights" id="TO_TubeLights" /><br> <input
										type="text" name="TO_TubeLights_Count"
										id="TO_TubeLights_Count" /></td>
									<td><a href="#">Bulbs</a> <input type="checkbox"
										name="TO_Bulbs" id="TO_Bulbs" /><br> <input type="text"
										name="TO_Bulbs_Count" id="TO_Bulbs_Count" /></td>
								</tr>

								<tr>
									<td><a href="#">Incinerators</a> <input type="checkbox"
										name="TO_Incinerators" id="TO_Incinerators" /><br> <input
										type="text" name="TO_Incinerators_Count"
										id="TO_Incinerators_Count" /></td>
									<td><a href="#">Water Closets</a> <input type="checkbox"
										name="TO_Water_Closets" id="TO_Water_Closets" /><br> <input
										type="text" name="TO_Water_Closets_Count"
										id="TO_Water_Closets_Count" /></td>
								</tr>

								<tr>
									<td><a href="#">Running Water</a> <input type="checkbox"
										name="TO_Running_Water" id="TO_Running_Water"
										class="dontHideCls" /><br>
							</table>
						</div>

					</div>
				</div>
				<div role="tabpanel" class="tab-pane fade" id="Classrooms">

					<div id="divMenu-ul">
						<ul id="class-ul">
							<li style="margin-bottom: 20px;"><a href="#"><b
									style="color: black">Total No of Classes</b></a> <input type="text"
								onchange="addClassRooms(); "
								placeholder="enter no of class rooms" id="total-class-rooms">
							</li>
							<div id="room"></div>
						</ul>


					</div>
				</div>

				<div role="tabpanel" class="tab-pane fade" id="CommonArea">
					<div id="divMenu-ul">
						<ul id="class-ul">
							<li style="margin-bottom: 20px;"><a href="#"><b
									style="color: black">Entrance Lobby </b></a> <input type="checkbox"
								name="Plinth_Area" id="Plinth_Area" dbname="entranceLobby" /><br>
								<input type="text" name="S_entancelobby" id="S_entancelobby"
								dbname="entranceLobbyCnt" /></li>

							<li style="margin-bottom: 20px;"><a href="#"><b
									style="color: black">Warandah </b></a> <input type="checkbox"
								name="Plinth_Area" id="Plinth_Area" dbname="warandah" /><br>
								<input type="text" name="S_Warandah" id="S_Warandah"
								dbname="warandahCnt" /></li>

							<li style="margin-bottom: 20px;"><a href="#">Stair Case</a>
								<input type="checkbox" name="S_stair_case_check"
								id="S_stair_case_check" dbname="stairCase" /><br> <input
								type="text" name="S_stair_case" id="S_stair_case"
								dbname="stairCaseCnt" /></li>

							<li style="margin-bottom: 20px;" id="div-ul"><a href="#"><b
									style="color: black">Water Tank </b></a> <input type="text"
								 placeholder="enter no of tanks" id="S_watertank" onChange="addTypeCapacity(this,'sbwater');"
								 name ="S_watertank" dbname="waterTankCnt"></li>
							<div id="sbwater"></div>


							<li style="margin-bottom: 20px;"><a href="#"><b
									style="color: black">Solar Power System</b></a> <input
								type="checkbox" name="Plinth_Area" id="Plinth_Area"
								dbname="solarPowerSystem" /><br> <input type="text"
								name="S_solar_powersystem" id="S_solar_powersystem"
								dbname="solarPowerSystemCnt" /></li>

							<li style="margin-bottom: 20px;"><a href="#"><b
									style="color: black">Inverters</b></a> <input type="checkbox"
								name="S_inverter_capacity_check" id="S_inverter_capacity_check"
								dbname="inventers" class="dontHideCls"> <input
								type="text" style="display: none;" dbname="inventersCnt" /></li>

							<li style="margin-bottom: 20px;"><a href="#"><b
									style="color: black">Inveter capacity </b></a> <br> <input
								type="text" name="S_inverter_capacity" id="S_inverter_capacity"
								dbname="inventersCapacity" /></li>
							<li style="margin-bottom: 20px;"><a href="#"><b
									style="color: black">RO Plant</b></a> <br> 
									<select name="S_Ro_Plant" id="S_Ro_Plant" dbname="roPlant" >
									<option value="st">Select Type</option><option value="250LPH">250LPH</option>
									<option value="500LPH">500LPH</option><option value="1000LPH">1000LPH</option>
									</select></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div
		style="float: left; padding-top: 30px; padding-bottom: 30px; padding-right: 30px;"
		id="schoolBuildingSaveDiv">
		<input type="button" name="Save" value="Save">
	</div>

	<div style="float: left; padding-top: 30px; padding-bottom: 30px"
		id="schoolBuildingCancelDiv">
		<input type="button" name="Cancel" value="Cancel">
	</div>

</div>


<script type="text/javascript">

$('#schoolBuildingSaveDiv').on('click',function(){
	console.log('-----SchoolSave-----');
	var finalSaveJson = {},divJson={};
	var dropDownId = $('#institute').val();
	
	$('.schoolBldTabsDiv >ul >li >a').each(function(){
		var $this = $(this);
		var divHrefId = $(this).attr('href');
		console.log(divHrefId);
		divJson =  {"schoolBuildingId":dropDownId,"yearOfConstruction":$('#SB_Year_Of_Construction').val()};
		if(divHrefId == '#home' || divHrefId == '#lab'){ 
			$(divHrefId+' >div >div >div >div >h4 >a').each(function(){
				var $this1 = $(this);
				console.log($($this1).attr('href'));
				var divFldHref = $($this1).attr('href');
				var fldJson = {"schoolBuildingId":dropDownId,"principalBuildingId":dropDownId };
				$(divFldHref).find('input').each(function(){
					fldJson[formatKey($(this).attr('id'))] = $(this).attr('type')=='checkbox'?($(this).is(':checked')?'Y':'N'):($(this).val() == ''?'0':$(this).val());
				});
				divJson[formatKey($($this1).text())] = fldJson;
			});
		}else if(divHrefId == '#Toilets'){
			divJson =  {"schoolBuildingId":dropDownId,"toiletRoomId":dropDownId};
			$(divHrefId).find('input').each(function(){
				divJson[formatKey($(this).attr('id'))] = $(this).attr('type')=='checkbox'?($(this).is(':checked')?'Y':'N'):($(this).val() == ''?'0':$(this).val());
			});
		}else if(divHrefId == '#Classrooms'){
			divJson =  {"schoolBuildingId":dropDownId,"classRoomId":dropDownId,"classRoomArr":[]};
			$(divHrefId+' >div >ul >div >div').each(function(){
				var divFldId = $(this);
				var fldJson = {"schoolBuildingId":dropDownId};
				$(divFldId).find('input').each(function(){
					fldJson[formatKey($(this).attr('dbname'))] = $(this).attr('type')=='checkbox'?($(this).is(':checked')?'Y':'N'):($(this).val() == ''?'0':$(this).val());
				});
				$(divFldId).find('select').each(function(){
					fldJson[formatKey($(this).attr('dbname'))] = $(this).find('option:selected').text();
				});
				(divJson['classRoomArr']).push(fldJson);
			});
		}else if(divHrefId == '#CommonArea'){
			divJson =  {"schoolBuildingId":dropDownId};
			var waterJson = [];
			$(divHrefId).find('input').each(function(){
				divJson[$(this).attr('dbname')] = $(this).attr('type')=='checkbox'?($(this).is(':checked')?'Y':'N'):($(this).val() == ''?'0':$(this).val());
			});
			$(divHrefId).find('select').each(function(){
				divJson[$(this).attr('dbname')] = $(this).val();
			});
			$(divHrefId).find('div#sbwater >div.table-responsive >table >tbody >tr').each(function(){
				waterJson.push({"type":$(this).find('select').val() ,"capacity":($(this).find('input').val() == ''?'0':$(this).find('input').val()) });
			});
			divJson['waterJson'] = waterJson;
		}
		finalSaveJson[divHrefId] = divJson;
	});
	console.log(finalSaveJson);
	
	$.ajax({
	    type: 'POST',
     	url: "../schoolBuilding/updateSchoolDetails.htm",
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

function formatKey(key){
	key = key == undefined ? 'emptyId' : key;
	key = key.replace(/BL_|PL_|CL_|ZL_|CO_|TO_|ML_|SL_|L_|P_|EH_|CR_|ST_|SR_|GR_|AR_|TR_|PR_/g,'');
	key = key.replace(/\s+/g, '').replace(/_/g, '').replace(/-/g, '');
	return key.replace(/(?:^\w|[A-Z]|\b\w)/g, function(letter, index) { return index == 0 ? letter.toLowerCase() : letter.toUpperCase(); });
}


</script>