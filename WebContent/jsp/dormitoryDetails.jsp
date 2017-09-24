<div id="dormitory" > 
<h3 style="padding-right: 20px;">Dormitory</h3> <input type="checkbox" style="border-color: black;padding-left: 25px;">
	<br>
	<label style="color:black">Number of Halls</label><br>
	 <input type="text"  style="margin-bottom:10px;width:50%;" onchange="addHalls();" placeholder="enter no of Halls" id="hall-staff-rooms" >
		<div class="panel-group" id="accordion">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">
					
						<a data-toggle="collapse" data-parent="#accordion"
								href="#collapse512" > <span class="glyphicon glyphicon-menu-down" ></span></a> &nbsp;&nbsp; <a data-toggle="collapse" data-parent="#accordion"
								href="#"  >Warden Hall
							</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
							type="checkbox" id="wardenHall" dbname="wardenHall"/>
						
					</h4>
				</div>
				<div id="collapse512" class="panel-collapse collapse">
					<div class="panel-body">
						<div class="table-responsive">
							<table class="table">
								<tr>
									<td><label
										style="padding-right: 20px; padding-left: 90px;"><b>Block</b></label>
										<select name="d_warden_blockId" id="d_warden_blockId" class="form-control" dbname="blockId"
										style="width: 200px;">
											<option value="0">Select block</option>
											<option value="1">1st Block</option>
											<option value="2">Second Block</option>
											<option value="3">Third Block</option>
									</select></td>

									<td><label
										style="padding-right: 20px; padding-left: 90px;"><b>Floor</b></label>
										<select name="d_warden_floorId" id="d_warden_floorId" class="form-control" dbname="floorId"
										style="width: 200px;">
											<option value="0">Select floor</option>
											<option value="1">Ground Floor</option>
											<option value="2">First Floor</option>
											<option value="3">Second Floor</option>
									</select></td>
								</tr>
								<tr>
									<td><a href="#">Length (in sft)</a> <br> 
									<input type="text" name="d_warden_Length" id="d_warden_Length" dbname="length" /></td>
									<td><a href="#">Width (in sft)</a> <br> 
									<input type="text" name="d_warden_Width" id="d_warden_Width" dbname="width" /></td>
								</tr>
								<tr>
									<td><a href="#">Carpet Area</a> <input type="checkbox" 
										name="Plinth_Area" id="Plinth_Area" dbname="carpetArea" /><br> <input
										type="text" name="d_warden_Plinth_Area" id="d_warden_Plinth_Area" dbname="carpetAreaCnt"  readonly=true/></td>
									<td><a href="#">Ceiling Fans</a> <input type="checkbox"
										name="d_warden_celing_fan_check" id="d_warden_celing_fan_check" dbname="ceilingFans" /><br> <input
										type="text" name="d_warden_celing_fan" id="d_warden_celing_fan" dbname="ceilingFansCnt" /></td>
								</tr>
								<tr>
									<td><a href="#">Tube Lights</a> <input type="checkbox"
										name="d_warden_tube_light_check" id="d_warden_tube_light_check" dbname="tubeLights"  /><br> <input
										type="text" name="d_warden_tube_light" id="d_warden_tube_light" dbname="tubeLightsCnt"  /></td>
									<td><a href="#">Bulbs</a> <input type="checkbox"
										name="d_warden_bulb_check" id="d_warden_bulb_check" dbname="bulbs" /><br> <input
										type="text" name="d_warden_bulb" id="d_warden_bulb" dbname="bulbsCnt" /></td>
								</tr>
								<tr>
									<td><a href="#">S type Chairs</a> <input type="checkbox"
										name="d_warden_stype_chairs_check" id="d_warden_stype_chairs_check" dbname="sTypeChairs" /><br> <input
										type="text" name="d_warden_stype_chairs" id="d_warden_stype_chairs" dbname="sTypeChairsCnt" /></td>
									<td><a href="#">Chairs</a> <input type="checkbox"
										name="d_warden_chairs_check" id="d_warden_chairs_check" dbname="chairs" /><br> <input
										type="text" name="d_warden_chairs" id="d_warden_chairs" dbname="chairsCnt" /></td>
								</tr>
								<tr>
									<td><a href="#">Tables</a> <input type="checkbox"
										name="d_warden_tables_check" id="d_warden_tables_check" dbname="tables" /><br> <input
										type="text" name="d_warden_tables" id="d_warden_tables" dbname="tablesCnt" /></td>
									<td><a href="#">Stools</a> <input type="checkbox"
										name="d_warden_Stools_check" id="d_warden_Stools_check" dbname="stools" /><br> <input
										type="text" name="d_warden_Stools" id="d_warden_Stools" dbname="stoolsCnt" /></td>
								</tr>

								<tr>
									<td><a href="#">Wall Mount Fans</a> <input type="checkbox"
										name="d_warden_wall_mount_fans_check" id="d_warden_wall_mount_fans_check" dbname="wallMountFans" /><br> <input
										type="text" name="d_warden_wall_mount_fans" id="d_warden_wall_mount_fans" dbname="wallMountFansCnt" /></td>
									<td><a href="#">Pedestal fans</a> <input type="checkbox"
										name="Plinth_Area_check" id="Plinth_Area_check" dbname="pedestalFans" /><br> <input
										type="text" name="d_warden_pedestral_fans" id="d_warden_pedestral_fans" dbname="pedestalFansCnt" /></td>
								</tr>
								<tr>
									<td><a href="#">Doors</a> <input type="checkbox"
										name="d_warden_rooms_check" id="d_warden_rooms_check" dbname="doors" /><br> <input
										type="text" name="d_warden_rooms" id="d_warden_rooms" dbname="doorsCnt" /></td>
									<td><a href="#">Windows</a> <input type="checkbox"
										name="d_warden_windows_check" id="d_warden_windows_check" dbname="windows" /><br> <input
										type="text" name="d_warden_windows" id="d_warden_windows" dbname="windowsCnt" /></td>
								</tr>


								<tr>
									<td><a href="#">Cots</a> <input type="checkbox"
										name="d_warden_cots_check" id="d_warden_cots_check" dbname="cots" /><br> <input
										type="text" name="d_warden_cots" id="d_warden_cots" dbname="cotsCnt" /></td>

									<td><a href="#">Ventilators</a> <input type="checkbox"
										name="d_warden_Ventilators_check" id="d_warden_Ventilators_check" dbname="ventilators" /><br> <input
										type="text" name="d_warden_Ventilators" id="d_warden_Ventilators" dbname="ventilatorsCnt" /></td>
								</tr>
								<tr>
									<td><a href="#">Glass Door Almira</a> <input
										type="checkbox" name="d_warden_glass_door_check" id="d_warden_glass_door_check" dbname="glassDoorAlmira" /><br>
										<input type="text" name="d_warden_glass_door" id="d_warden_glass_door" dbname="glassDoorAlmiraCnt"  /></td>
									<td><a href="#">Storewell Almira</a> <input
										type="checkbox" name="d_warden_storewell_check" id="d_warden_storewell_check" dbname="storeWallAlmira" /><br>
										<input type="text" name="d_warden_storewell" id="d_warden_storewell" dbname="storeWallAlmiraCnt" /></td>
								</tr>
								<tr>
									<td><a href="#">Wooden Almira</a> <input
										type="checkbox" name="d_warden_wooden_check" id="d_warden_wooden_check" dbname="woodenAlmira" /><br>
										<input type="text" name="d_warden_wooden" id="d_warden_wooden" dbname="woodenAlmiraCnt"  /></td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="panel-group" id="accordion">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">						
							<a data-toggle="collapse" data-parent="#accordion"
								href="#collapse520"> <span class="glyphicon glyphicon-menu-down" ></span></a> &nbsp;&nbsp; <a data-toggle="collapse" data-parent="#accordion"
								href="#"  >Office Room
							</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
							type="checkbox" name="officehall" id="officehall" dbname="officeHall" />
					</h4>
				</div>
				<div id="collapse520" class="panel-collapse collapse">
					<div class="panel-body">
						<div class="table-responsive">
							<table class="table">

								<tr>
									<td><label
										style="padding-right: 20px; padding-left: 90px;"><b>Block</b></label>
										<select name="d_office_blockId" id="d_office_blockId" dbname="blockId" class="form-control"
										style="width: 200px;">
											<option value="0">Select block</option>
											<option value="1">1st Block</option>
											<option value="2">Second Block</option>
											<option value="3">Third Block</option>
									</select></td>

									<td><label
										style="padding-right: 20px; padding-left: 90px;"><b>Floor</b></label>
										<select name="d_office_floorId" id="d_office_floorId" dbname="floorId" class="form-control"
										style="width: 200px;">
											<option value="0">Select floor</option>
											<option value="1">Ground Floor</option>
											<option value="2">First Floor</option>
											<option value="3">Second Floor</option>
									</select></td>
								</tr>
								<tr>
									<td><a href="#">Length (in sft)</a> <br> 
									<input type="text" name="d_office_Length" id="d_office_Length" dbname="length" /></td>
									<td><a href="#">Width (in sft)</a> <br> 
									<input type="text" name="d_office_Width" id="d_office_Width" dbname="width" /></td>
								</tr>
								<tr>
									<td><a href="#">Carpet Area</a> <input type="checkbox"
										name="d_office_Plinth_Area_check" id="d_office_Plinth_Area_check" dbname="carpetArea" /><br> <input
										type="text" name="d_office_Plinth_Area" id="d_office_Plinth_Area" dbname="carpetAreaCnt"  readonly=true/></td>
									<td><a href="#">Ceiling Fans</a> <input type="checkbox"
										name="d_office_celing_fan_check" id="d_office_celing_fan_check" dbname="ceilingFans" /><br> <input
										type="text" name="d_office_celing_fan" id="d_office_celing_fan" dbname="ceilingFansCnt" /></td>
								</tr>
								<tr>
									<td><a href="#">Tube Lights</a> <input type="checkbox"
										name="d_office_tube_light_check" id="d_office_tube_light_check" dbname="tubeLights" /><br> <input
										type="text" name="d_office_tube_light" id="d_office_tube_light" dbname="tubeLightsCnt" /></td>
									<td><a href="#">Bulbs</a> <input type="checkbox"
										name="d_office_bulb_check" id="d_office_bulb_check" dbname="bulbs" /><br> <input
										type="text" name="d_office_bulb" id="d_office_bulb" dbname="bulbsCnt" /></td>
								</tr>
								<tr>
									<td><a href="#">S type Chairs</a> <input type="checkbox"
										name="d_office_stype_chairs_check" id="d_office_stype_chairs_check" dbname="sTypeChairs"/><br> <input
										type="text" name="d_office_stype_chairs" id="d_office_stype_chairs" dbname="sTypeChairsCnt"/></td>
									<td><a href="#">Chairs</a> <input type="checkbox"
										name="Plinth_Area_check" id="Plinth_Area_check" dbname="chairs"/><br> <input
										type="text" name="d_office_chairs" id="d_office_chairs" dbname="chairsCnt"/></td>
								</tr>

								<tr>
									<td><a href="#">Tables</a> <input type="checkbox"
										name="d_office_tables_check" id="d_office_tables_check" dbname="tables"/><br> <input
										type="text" name="d_office_tables" id="d_office_tables" dbname="tablesCnt"/></td>
									<td><a href="#">Stools</a> <input type="checkbox"
										name="Plinth_Area_check" id="Plinth_Area_check" dbname="stools"/><br> <input
										type="text" name="d_office_Stools" id="d_office_Stools" dbname="stoolsCnt"/></td>
								</tr>

								<tr>
									<td><a href="#">Wall Mount Fans</a> <input type="checkbox"
										name="d_office_wall_mount_fans_check" id="d_office_wall_mount_fans_check" dbname="wallMountFans"/><br> <input
										type="text" name="d_office_wall_mount_fans" id="d_office_wall_mount_fans" dbname="wallMountFansCnt"/></td>
									<td><a href="#">Pedestal fans</a> <input type="checkbox"
										name="d_office_pedestral_fans_check" id="d_office_pedestral_fans_check" dbname="pedestalFans"/><br> <input
										type="text" name="d_office_pedestral_fans" id="d_office_pedestral_fans" dbname="pedestalFansCnt"/></td>
								</tr>
								<tr>
									<td><a href="#">Doors</a> <input type="checkbox"
										name="d_office_doors_check" id="d_office_doors_check" dbname="doors"/><br> <input
										type="text" name="d_office_doors" id="d_office_doors" dbname="doorsCnt"/></td>
									<td><a href="#">Windows</a> <input type="checkbox"
										name="d_office_windows_check" id="d_office_windows_check" dbname="windows"/><br> <input
										type="text" name="d_office_windows" id="d_office_windows" dbname="windowsCnt"/></td>
								</tr>

								<tr>
									<td><a href="#">Ventilators</a> <input type="checkbox"
										name="d_office_Ventilators_check" id="d_office_Ventilators_check" dbname="ventilators"/><br> <input
										type="text" name="d_office_Ventilators" id="d_office_Ventilators" dbname="ventilatorsCnt"/></td>
									<td><a href="#">Wooden Almira</a> <input
										type="checkbox" name="d_office_wooden_check" id="d_office_wooden_check" dbname="woodenAlmira" /><br>
										<input type="text" name="d_office_wooden" id="d_office_wooden" dbname="woodenAlmiraCnt"  /></td>
								</tr>
								<tr>
									<td><a href="#">Glass Door Almira</a> <input
										type="checkbox" name="d_office_glass_door_check" id="d_office_glass_door_check" dbname="glassDoorAlmira" /><br>
										<input type="text" name="d_office_glass_door" id="d_office_glass_door" dbname="glassDoorAlmiraCnt" /></td>
									<td><a href="#">Storewell Almira</a> <input
										type="checkbox" name="d_office_storewell_check" id="d_office_storewell_check" dbname="storeWallAlmira" /><br>
										<input type="text" name="d_office_storewell" id="d_office_storewell" dbname="storeWallAlmiraCnt" /></td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="panel-group" id="accordion">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">									
							<a data-toggle="collapse" data-parent="#accordion"
								href="#collapse521"> <span class="glyphicon glyphicon-menu-down" ></span></a> &nbsp;&nbsp; <a data-toggle="collapse" data-parent="#accordion"
								href="#"  >Waiting Hall
							</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
							type="checkbox" name="waitinghall" id="waitinghall" dbname="waitingHall" />
					</h4>
				</div>
				<div id="collapse521" class="panel-collapse collapse">
					<div class="panel-body">
						<div class="table-responsive">
							<table class="table">

								<tr>
									<td><label
										style="padding-right: 20px; padding-left: 90px;"><b>Block</b></label>
										<select name="d_waiting_blockId" id="d_waiting_blockId" class="form-control" dbname="blockId"
										style="width: 200px;">
											<option value="0">Select block</option>
											<option value="1">1st Block</option>
											<option value="2">Second Block</option>
											<option value="3">Third Block</option>
									</select></td>

									<td><label
										style="padding-right: 20px; padding-left: 90px;"><b>Floor</b></label>
										<select name="d_waiting_floorId" id="d_waiting_floorId" class="form-control" dbname="floorId"
										style="width: 200px;">
											<option value="0">Select floor</option>
											<option value="1">Ground Floor</option>
											<option value="2">First Floor</option>
											<option value="3">Second Floor</option>
									</select></td>
								</tr>
								<tr>
									<td><a href="#">Length (in sft)</a> <br> 
									<input type="text" name="d_waiting_Length" id="d_waiting_Length" dbname="length" /></td>
									<td><a href="#">Width (in sft)</a> <br> 
									<input type="text" name="d_waiting_Width" id="d_waiting_Width" dbname="width" /></td>
								</tr>
								<tr>
									<td><a href="#">Carpet Area</a> <input type="checkbox"
										name="d_waiting_Plinth_Area_check" id="d_waiting_Plinth_Area_check" dbname="carpetArea" /><br> <input
										type="text" name="d_waiting_Plinth_Area" id="d_waiting_Plinth_Area" dbname="carpetAreaCnt" readonly=true/></td>
									<td><a href="#">Ceiling Fans</a> <input type="checkbox"
										name="ceilingFans" id="ceilingFans" dbname="ceilingFans"/><br> <input
										type="text" name="d_waiting_celing_fan" id="d_waiting_celing_fan" dbname="ceilingFansCnt"/></td>
								</tr>
								<tr>
									<td><a href="#">Tube Lights</a> <input type="checkbox"
										name="d_waiting_tube_light_check" id="d_waiting_tube_light_check" dbname="tubeLights"/><br> <input
										type="text" name="d_waiting_tube_light" id="d_waiting_tube_light" dbname="tubeLightsCnt"/></td>
									<td><a href="#">Bulbs</a> <input type="checkbox"
										name="Plinth_Area_check_check" id="Plinth_Area" dbname="bulbs"/><br> <input
										type="text" name="d_waiting_bulb" id="d_waiting_bulb" dbname="bulbsCnt"/></td>
								</tr>
								<tr>
									<td><a href="#">S type Chairs</a> <input type="checkbox"
										name="d_waiting_stype_chairs_check" id="d_waiting_stype_chairs_check" dbname="sTypeChairs"/><br> <input
										type="text" name="d_waiting_stype_chairs" id="d_waiting_stype_chairs" dbname="sTypeChairsCnt"/></td>
									<td><a href="#">Chairs</a> <input type="checkbox"
										name="Plinth_Area_check" id="Plinth_Area_check" dbname="chairs"/><br> <input
										type="text" name="d_waiting_chairs" id="d_waiting_chairs" dbname="chairsCnt"/></td>
								</tr>

								<tr>
									<td><a href="#">Tables</a> <input type="checkbox"
										name="d_waiting_tables_check" id="d_waiting_tables_check" dbname="tables"/><br> <input
										type="text" name="d_waiting_tables" id="d_waiting_tables" dbname="tablesCnt"/></td>
									<td><a href="#">Stools</a> <input type="checkbox"
										name="Plinth_Area_check" id="Plinth_Area_check" dbname="stools"/><br> <input
										type="text" name="d_waiting_Stools" id="d_waiting_Stools" dbname="stoolsCnt"/></td>
								</tr>
								<tr>
									<td><a href="#">Wall Mount Fans</a> <input type="checkbox"
										name="d_waiting_wall_mount_fans_check" id="d_waiting_wall_mount_fans_check" dbname="wallMountFans"/><br> <input
										type="text" name="d_waiting_wall_mount_fans" id="d_waiting_wall_mount_fans" dbname="wallMountFansCnt"/></td>
									<td><a href="#">Pedestal fans</a> <input type="checkbox"
										name="Plinth_Area_check_check" id="Plinth_Area_check" dbname="pedestalFans"/><br> <input
										type="text" name="d_waiting_pedestral_fans" id="d_waiting_pedestral_fans" dbname="pedestalFansCnt"/></td>
								</tr>
								<tr>
									<td><a href="#">Doors</a> <input type="checkbox"
										name="d_waiting_doors_check" id="d_waiting_doors_check" dbname="doors"/><br> <input
										type="text" name="d_waiting_doors" id="d_waiting_doors" dbname="doorsCnt"/></td>
									<td><a href="#">Windows</a> <input type="checkbox"
										name="d_waiting_windows_check" id="d_waiting_windows_check" dbname="windows"/><br> <input
										type="text" name="d_waiting_windows" id="d_waiting_windows" dbname="windowsCnt"/></td>
								</tr>

								<tr>
									<td><a href="#">Ventilators</a> <input type="checkbox"
										name="d_waiting_Ventilators_check" id="d_waiting_Ventilators_check" dbname="ventilators"/><br> <input
										type="text" name="d_waiting_Ventilators" id="d_waiting_Ventilators" dbname="ventilatorsCnt"/></td>
								</tr>

							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="panel-group" id="accordion">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">					
						<a data-toggle="collapse" data-parent="#accordion"
								href="#collapse525"> <span class="glyphicon glyphicon-menu-down" ></span></a> &nbsp;&nbsp; <a data-toggle="collapse" data-parent="#accordion"
								href="#" >Clinic Hall
							</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
							type="checkbox" name="clinichall" id="clinichall" dbname="clinicHall" />
							
					</h4>
				</div>
				<div id="collapse525" class="panel-collapse collapse">
					<div class="panel-body">
						<div class="table-responsive">
							<table class="table">

								<tr>
									<td><label
										style="padding-right: 20px; padding-left: 90px;"><b>Block</b></label>
										<select name="d_clinic_floorId" id="d_clinic_floorId" class="form-control" dbname="blockId"
										style="width: 200px;">
											<option value="0">Select block</option>
											<option value="1">1st Block</option>
											<option value="2">Second Block</option>
											<option value="3">Third Block</option>
									</select></td>

									<td><label
										style="padding-right: 20px; padding-left: 90px;"><b>Floor</b></label>
										<select name="d_clinic_floorId" id="d_clinic_floorId" class="form-control" dbname="floorId"
										style="width: 200px;">
											<option value="0">Select floor</option>
											<option value="1">Ground Floor</option>
											<option value="2">First Floor</option>
											<option value="3">Second Floor</option>
									</select></td>
								</tr>
								<tr>
									<td><a href="#">Length (in sft)</a> <br> 
									<input type="text" name="d_clinic_Length" id="d_clinic_Length" dbname="length" /></td>
									<td><a href="#">Width (in sft)</a> <br> 
									<input type="text" name="d_clinic_Width" id="d_clinic_Width" dbname="width" /></td>
								</tr>
								<tr>
									<td><a href="#">Carpet Area</a> <input type="checkbox"
										name="d_clinic_Plinth_Area_check" id="d_clinic_Plinth_Area_check" dbname="carpetArea"/><br> <input
										type="text" name="d_clinic_Plinth_Area" id="d_clinic_Plinth_Area" dbname="carpetAreaCnt" readonly=true/></td>
									<td><a href="#">Ceiling Fans</a> <input type="checkbox"
										name="d_clinic_celing_fan_check" id="d_clinic_celing_fan_check" dbname="ceilingFans"/><br> <input
										type="text" name="d_clinic_celing_fan" id="d_clinic_celing_fan" dbname="ceilingFansCnt"/></td>
								</tr>
								<tr>
									<td><a href="#">Tube Lights</a> <input type="checkbox"
										name="d_clinic_tube_light_check" id="d_clinic_tube_light_check" dbname="tubeLights"/><br> <input
										type="text" name="d_clinic_tube_light" id="d_clinic_tube_light" dbname="tubeLightsCnt"/></td>
									<td><a href="#">Bulbs</a> <input type="checkbox"
										name="d_clinic_bulb_check" id="d_clinic_bulb_check" dbname="bulbs"/><br> <input
										type="text" name="d_clinic_bulb" id="d_clinic_bulb" dbname="bulbsCnt"/></td>
								</tr>
								<tr>
									<td><a href="#">S type Chairs</a> <input type="checkbox"
										name="d_clinic_stype_chairs_check" id="d_clinic_stype_chairs_check" dbname="sTypeChairs"/><br> <input
										type="text" name="d_clinic_stype_chairs" id="d_clinic_stype_chairs" dbname="sTypeChairsCnt"/></td>
									<td><a href="#">Chairs</a> <input type="checkbox"
										name="Plinth_Area" id="Plinth_Area" dbname="chairs"/><br> <input
										type="text" name="d_clinic_chairs" id="d_clinic_chairs" dbname="chairsCnt"/></td>
								</tr>

								<tr>
									<td><a href="#">Tables</a> <input type="checkbox"
										name="d_clinic_tables_check" id="d_clinic_tables_check" dbname="tables"/><br> <input
										type="text" name="d_clinic_tables" id="d_clinic_tables" dbname="tablesCnt"/></td>
									<td><a href="#">Stools</a> <input type="checkbox"
										name="d_clinic_Stools_check" id="d_clinic_Stools_check" dbname="stools"/><br> <input
										type="text" name="d_clinic_Stools" id="d_clinic_Stools" dbname="stoolsCnt"/></td>
								</tr>

								<tr>
									<td><a href="#">Wall Mount Fans</a> <input type="checkbox"
										name="d_clinic_wall_mount_fans_check" id="d_clinic_wall_mount_fans_check"  dbname="wallMountFans"/><br> <input
										type="text" name="d_clinic_wall_mount_fans" id="d_clinic_wall_mount_fans" dbname="wallMountFansCnt"/></td>
									<td><a href="#">Pedestal fans</a> <input type="checkbox"
										name="d_clinic_pedestral_fans_check" id="d_clinic_pedestral_fans_check" dbname="pedestalFans"/><br> <input
										type="text" name="d_clinic_pedestral_fans" id="d_clinic_pedestral_fans" dbname="pedestalFansCnt"/></td>
								</tr>
								<tr>
									<td><a href="#">Doors</a> <input type="checkbox"
										name="d_clinic_doors_check" id="d_clinic_doors_check" dbname="doors"/><br> <input
										type="text" name="d_clinic_doors" id="d_clinic_doors" dbname="doorsCnt"/></td>
									<td><a href="#">Windows</a> <input type="checkbox"
										name="Plinth_Area_check" id="Plinth_Area_check" dbname="windows"/><br> <input
										type="text" name="d_clinic_windows" id="d_clinic_windows" dbname="windowsCnt"/></td>
								</tr>

								<tr>
									<td><a href="#">Ventilators</a> <input type="checkbox"
										name="d_clinic_Ventilatorsv_check" id="d_clinic_Ventilatorsv_check" dbname="ventilators"/><br> <input
										type="text" name="d_clinic_Ventilatorsv" id="d_clinic_Ventilatorsv" dbname="ventilatorsCnt"/></td>
									<td><a href="#">Cots</a> <input type="checkbox"
										name="d_clinic_cots_check" id="d_clinic_cots_check" dbname="cots"/><br> <input
										type="text" name="d_clinic_cots" id="d_clinic_cots" dbname="cotsCnt"/></td>
								</tr>
								<tr>
									<td><a href="#">Glass Door Almira</a> <input
										type="checkbox" name="d_clinic_glass_door_check" id="d_clinic_glass_door_check" dbname="glassDoorAlmira"/><br>
										<input type="text" name="d_clinic_glass_door" id="d_clinic_glass_door" dbname="glassDoorAlmiraCnt"/></td>
									<td><a href="#">Storewell Almira</a> <input
										type="checkbox" name="Plinth_Area" id="Plinth_Area" dbname="storeWallAlmira"/><br>
										<input type="text" name="d_clinic_storewell" id="d_clinic_storewell" dbname="storeWallAlmiraCnt"/></td>
								</tr>
								<tr>
									<td><a href="#">Wooden Almira</a> <input
										type="checkbox" name="d_clinic_wooden_check" id="d_clinic_glass_wooden" dbname="woodenAlmira"/><br>
										<input type="text" name="d_clinic_wooden" id="d_clinic_wooden" dbname="woodenAlmiraCnt"/></td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="panel-group" id="accordion">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">												
							<a data-toggle="collapse" data-parent="#accordion"
								href="#collapse526"> <span class="glyphicon glyphicon-menu-down" ></span></a> &nbsp;&nbsp; <a data-toggle="collapse" data-parent="#accordion"
								href="#" >Toilets
							</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
							type="checkbox" id="dm_toilets" dbname="toilets" />							
					</h4>
				</div>
				<div id="collapse526" class="panel-collapse collapse">
					<div class="panel-body">
						<div class="table-responsive">
							<table class="table">
								<tr>
									<td><a href="#">Exhaust Fans</a> <input type="checkbox"
										name="d_toilets_exhaustfans_check" id="d_toilets_exhaustfans_check" dbname="exhaustFans"/><br> <input
										type="text" name=d_toilets_exhaustfans id="d_toilets_exhaustfans" dbname="exhaustFansCnt"/></td>
									<td><a href="#">Tube Lights</a> <input type="checkbox"
										name="d_toilets_tube_light_check" id="d_toilets_tube_light_check" dbname="tubeLights"/><br> <input
										type="text" name="d_toilets_tube_light" id="d_toilets_tube_light" dbname="tubeLightsCnt"/></td>
								</tr>
								<tr>
									<td><a href="#">Bulbs</a> <input type="checkbox"
										name="d_toilets_bulb_check" id="d_toilets_bulb_check" dbname="bulbs"/><br> <input
										type="text" name="d_toilets_bulb" id="d_toilets_bulb" dbname="bulbsCnt"/></td>
									<td><a href="#">Indian Toilet</a> <input type="checkbox"
										name="d_toilets_indian_check" id="d_toilets_indian_check" dbname="indianToilets"/><br> <input
										type="text" name="d_toilets_indian" id="d_toilets_indian" dbname="indianToiletsCnt"/></td>

								</tr>

								<tr>
									<td><a href="#">Water Closet</a> <input type="checkbox"
										name="d_toilets_water_closet_check" id="d_toilets_water_closet_check" dbname="waterCloset"/><br> <input
										type="text" name="d_toilets_water_closet" id="d_toilets_water_closet" dbname="waterClosetCnt"/></td>
									<td><a href="#">Running Water</a> <input type="checkbox"
										name="d_toilets_running_water_check" id="d_toilets_running_water_check" dbname="runningWater"/><br> <input
										type="text" name="d_toilets_running_water" id="d_toilets_running_water" dbname="runningWaterCnt"/></td>

								</tr>



								<tr>
									<td><a href="#">Flush System</a> <input type="checkbox"
										name="d_toilets_flush_system_check" id="d_toilets_flush_system_check" dbname="flushSystem"/><br> <input
										type="text" name="d_toilets_flush_system" id="d_toilets_flush_system" dbname="flushSystemCnt"/></td>
								</tr>


							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="panel-group" id="accordion">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">													
							<a data-toggle="collapse" data-parent="#accordion"
								href="#collapse527"> <span class="glyphicon glyphicon-menu-down" ></span></a> &nbsp;&nbsp; <a data-toggle="collapse" data-parent="#accordion"
								href="#"  >Bathrooms
							</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
							type="checkbox" id="dm_bathhroom" dbname="bathRooms"/>
					</h4>
				</div>
				<div id="collapse527" class="panel-collapse collapse">
					<div class="panel-body">
						<div class="table-responsive">
							<table class="table">
								<tr>
									<td><a href="#">Quantity</a> <input type="checkbox"
										name="d_bathroom_quantity_check" id="d_bathroom_quantity_check" dbname="quantity"/><br> <input
										type="text" name="d_bathroom_quantity" id="d_bathroom_quantity" dbname="quantityCnt"/></td>

									<td><a href="#">Exhaust Fans</a> <input type="checkbox"
										name="d_bathroom_exhaustfans_check" id="d_bathroom_exhaustfans_check" dbname="exhaustFans"/><br> <input
										type="text" name="d_bathroom_exhaustfans" id="d_bathroom_exhaustfans" dbname="exhaustFansCnt"/></td>

								</tr>
								<tr>
									<td><a href="#">Tube Lights</a> <input type="checkbox"
										name="d_bathroom_tube_light_check" id="d_bathroom_tube_light_check" dbname="tubeLights"/><br> <input
										type="text" name="d_bathroom_tube_light" id="d_bathroom_tube_light" dbname="tubeLightsCnt"/></td>

									<td><a href="#">Bulbs</a> <input type="checkbox"
										name="d_bathroom_bulb_check" id="d_bathroom_bulb_check" dbname="bulbs"/><br> <input
										type="text" name="d_bathroom_bulb" id="d_bathroom_bulb" dbname="bulbsCnt"/></td>
								</tr>

								<tr>
									<td><a href="#">Geezers</a> <input type="checkbox"
										name="d_bathroom_geezers_check" id="d_bathroom_geezers_check" dbname="geezers"/><br> <input
										type="text" name="d_bathroom_geezers" id="d_bathroom_geezers" dbname="geezersCnt"/></td>
									<td><a href="#">Washing Area</a> <input type="checkbox"
										placeholder="size" dbname="washingArea" ><br> <input type="text"
										name="d_bathroom_washarea" id="d_bathroom_washarea" dbname="washingAreaCnt"/></td>


								</tr>


							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="panel-group" id="accordion">
			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">													
							<a data-toggle="collapse" data-parent="#accordion"
								href="#collapse5271"> <span class="glyphicon glyphicon-menu-down" ></span></a> &nbsp;&nbsp; <a data-toggle="collapse" data-parent="#accordion"
								href="#"  >Common Area
							</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
							type="checkbox" id="dm_commonArea" dbname="commonArea" />
					</h4>
				</div>
				<div id="collapse5271" class="panel-collapse collapse">
					<div class="panel-body">
						<div class="table-responsive">
							<table class="table">
								<tr>
									<td><a href="#">Entrance Lobby</a> <input type="checkbox"
										name="d_commonarea_entancelobby_check" id="d_commonarea_entancelobby_check" dbname="entranceLobby" /><br> <input
										type="text" name="d_commonarea_entancelobby" id="d_commonarea_entancelobby" dbname="entranceLobbyCnt"/></td>
								</tr>
								<tr>
									<td><a href="#">Warandah</a> <input type="checkbox"
										name="d_commonarea_Warandah_check" id="d_commonarea_Warandah_check" dbname="warandah"/><br> <input
										type="text" name="d_commonarea_Warandah" id="d_commonarea_Warandah" dbname="warandahCnt"/></td>

								</tr>
								<tr>
									<td><a href="#">Stair Case</a> <input type="checkbox"
										name="d_commonarea_stair_case_check" id="d_commonarea_stair_case_check" dbname="stairCase"/><br> <input
										type="text" name="d_commonarea_stair_case" id="d_commonarea_stair_case" dbname="stairCaseCnt"/></td>
								</tr>
								<tr>
									<td><a href="#">Water Tank</a> <input type="text"  dbname="waterTankCnt"
										placeholder="enter no of tanks" id="d_commonarea_watertank" onChange="addTypeCapacity(this,'dwater');">
									<div id="dwater"></div>
									</td>
								</tr>
								<tr>
									<td><a href="#">Solar Power System </a> <input
										type="checkbox" name="d_commonarea_solar_powersystem_check" id="d_commonarea_solar_powersystem_check" dbname="solarPowerSystem"/><br>
										<input type="text" name="d_commonarea_solar_powersystem" id="d_commonarea_solar_powersystem" dbname="solarPowerSystemCnt" /></td>
								</tr>
								<tr>
									<td><a href="#">Inverters</a> <input type="checkbox" id="d_commonarea_inventers" dbname="inventers"  class="dontHideCls" placeholder="size">
										<input type="text"  dbname="inventersCnt" style="display:none;"/></td>
								</tr>
								<tr>
									<td><a href="#">Inverter Capacity </a><br> <input
										type="text" name="d_commonarea_inverter_capacity" id="d_commonarea_inverter_capacity" dbname="inventersCapacity" /></td>
								</tr>
								<tr>
									<td><a href="#">RO Plant</a> 
									<br> <select name='d_commonarea_ro_plant' id='d_commonarea_ro_plant' dbname="roPlant" >
									<option value='st'>Select Type</option><option value='250LPH'>250LPH</option>
									<option value='500LPH'>500LPH</option><option value='1000LPH'>1000LPH</option>
									</select></td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</div>
			<div
				style="float: left; padding-top: 30px; padding-bottom: 30px; padding-right: 30px;"
				id="dormitorySaveDiv">
				<input type="button" name="Save" value="Save">
			</div>

			<div style="float: left; padding-top: 30px; padding-bottom: 30px"
				id="dormitoryCancelDiv">
				<input type="button" name="Cancel" value="Cancel">
			</div>
		</div>
	</div>
</div>		
<script type="text/javascript">
function getDormitoryDetails() {	
	var selectedValue = $('#institute').val();
	
	console.log(selectedValue);
	getDmHallDetails();
	getDmWardenHallDetails();
	getDmOfficeDetails();
	getDmWaitingHallDetails();
	getDmClinicDetails();
	getDmToiletsDetails();
	getDmBathroomDetails();
	getDmCommonAreaDetails();
	$.ajax({
		type : 'POST',
		url : "../dormitory/getdormitorydetails.htm",
		data : {
			'instituteid' : selectedValue
		},
		dataType : 'json',
		success : function(data) {
			console.log(data);
			$("#wardenHall").attr('checked', data.Warden_Hall);
			$("#officehall").attr('checked', data.Office_Hall);
			$("#waitinghall").attr('checked', data.Waiting_Hall);
			$("#clinichall").attr('checked', data.Clinic_Hall);
			$("#dm_toilets").attr('checked', data.Toilets);
			$("#dm_bathhroom").attr('checked', data.Bathrooms);
			$("#dm_commonArea").attr('checked', data.Common_Area);
		},
		failure : function() {
			alert("Failed!");
		}
	});
	
}

function getDmHallDetails(){
	var selectedValue = $('#institute').val();
	console.log('getDmWardenHallDetails');
	$.ajax({
		type : 'POST',
		url : "../dormitory/getDmHallData.htm",
		data : {
			'instituteid' : selectedValue
		},
		dataType : 'json',
		success : function(data) {
			console.log(data);
			$('#hall-staff-rooms').val(data.arraysize);
			addHalls();
			 for (var i = 0; i <data.arraysize; i++) {
				 getHallData(i);
			 }
		},
		failure : function() {
			alert("Failed!");
		}
	});
}


function getDmWardenHallDetails(){
	var selectedValue = $('#institute').val();
	console.log('getDmWardenHallDetails');
	$.ajax({
		type : 'POST',
		url : "../dormitory/getDmWardenData.htm",
		data : {
			'instituteid' : selectedValue
		},
		dataType : 'json',
		success : function(data) {
			console.log("Data populating....... getDmWardenHallDetails");
			console.log(data);
			$("#d_warden_Plinth_Area").val(data.Plinth_Area);
			$("#d_warden_celing_fan").val(data.Ceiling_Fans_Count);
			$("#d_warden_tube_light").val(data.TubeLights_Count);
			$("#d_warden_bulb").val(data.Bulbs_Count);
			$("#d_warden_glass_door").val(data.Glass_Door_Almira_Count);
			$("#d_warden_storewell").val(data.Store_Well_Almira_Count);
			$("#d_warden_stype_chairs").val(data.S_Type_Chairs_Count);
			$("#d_warden_chairs").val(data.Chairs_Count);
			$("#d_warden_tables").val(data.Tables_Count);
			$("#d_warden_Stools").val(data.Stools_Count);
			$("#d_warden_wall_mount_fans").val(data.Wall_Mount_Fans_Count);
			$("#d_warden_pedestral_fans").val(data.Pedestal_Fans_Count);
			$("#d_warden_rooms").val(data.Doors_Count);
			$("#d_warden_windows").val(data.Windows_Count);
			$("#d_warden_cots").val(data.Cots_Count);
			$("#d_warden_Ventilators").val(data.Ventilators_Count);
			//alert(data.Block_Id+"------>"+data.Floor_Id);
			//$('#d_warden_blockId option')[data.Block_Id].selected = true;
			//$('#d_warden_floorId option')[data.Floor_Id].selected = true;
			$("#d_warden_blockId option[value="+data.Block_Id+"]").prop('selected', true);
			$("#d_warden_floorId option[value="+data.Floor_Id+"]").prop('selected', true);
						
			$("#d_warden_celing_fan_check").attr('checked',data.Ceiling_Fans);
			$("#d_warden_tube_light_check").attr('checked',data.TubeLights);
			$("#d_warden_bulb_check").attr('checked',data.Bulbs);
			$("#d_warden_glass_door_check").attr('checked',data.Glass_Door_Almira);
			$("#d_warden_storewell_check").attr('checked',data.Store_Well_Almira);
			$("#d_warden_stype_chairs_check").attr('checked',data.Chairs);
			$("#d_warden_chairs_check").attr('checked',data.Ceiling_Fans);
			$("#d_warden_tables_check").attr('checked',data.Tables);
			$("#d_warden_Stools_check").attr('checked',data.Stools);
			$("#d_warden_wall_mount_fans_check").attr('checked',data.Wall_Mount_Fans);
			$("#d_warden_pedestral_fans_check").attr('checked',data.Pedestal_Fans);
			$("#d_warden_rooms_check").attr('checked',data.Doors);
			$("#d_warden_windows_check").attr('checked',data.Windows);
			$("#d_warden_cots_check").attr('checked',data.Cots);
			$("#d_warden_Ventilators_check").attr('checked',data.Ventilators);	

		},
		failure : function(err) {
			alert("Failed!");
		}
	});
}
//2
function getDmOfficeDetails(){
	var selectedValue = $('#institute').val();
	console.log(selectedValue);
	$.ajax({
		type : 'POST',
		url : "../dormitory/getDmOfficeDetails.htm",
		data : {
			'instituteid' : selectedValue
		},
		dataType : 'json',
		success : function(data) {
			console.log("Data populating....... getDmOfficeDetails");
			$("#d_office_Plinth_Area").val(data.Plinth_Area);
			$("#d_office_celing_fan").val(data.Ceiling_Fans_Count);
			$("#d_office_tube_light").val(data.TubeLights_Count);
			$("#d_office_bulb").val(data.Bulbs_Count);
			$("#d_office_glass_door").val(data.Glass_Door_Almira_Count);
			$("#d_office_storewell").val(data.Store_Well_Almira_Count);
			$("#d_office_stype_chairs").val(data.S_Type_Chairs_Count);
			$("#d_office_chairs").val(data.Chairs_Count);
			$("#d_office_tables").val(data.Tables_Count);
			$("#d_office_Stools").val(data.Stools_Count);
			$("#d_office_wall_mount_fans").val(data.Wall_Mount_Fans_Count);
			$("#d_office_pedestral_fans").val(data.Pedestal_Fans_Count);
			$("#d_office_doors").val(data.Doors_Count);
			$("#d_office_windows").val(data.Windows_Count);
			$("#d_office_Ventilators").val(data.Ventilators_Count);
			$("#d_office_blockId").val(data.Block_Id);
			$("#d_office_floorId").val(data.Floor_Id);
			
			$("#d_office_Plinth_Area_check").attr('checked',data.Plinth_Area);
			$("#d_office_celing_fan_check").attr('checked',data.Ceiling_Fans);
			$("#d_office_tube_light_check").attr('checked',data.TubeLights);
			$("#d_office_bulb_check").attr('checked',data.Bulbs);
			$("#d_office_glass_door_check").val(data.Glass_Door_Almira);
			$("#d_office_storewell_check").attr('checked',data.Store_Well_Almira);
			$("#d_office_stype_chairs_check").attr('checked',data.S_Type_Chairs);
			$("#d_office_chairs_check").attr('checked',data.Chairs);
			$("#d_office_tables_check").attr('checked',data.Tables);
			$("#d_office_Stools_check").attr('checked',data.Stools);
			$("#d_office_wall_mount_fans_check").attr('checked',data.Wall_Mount_Fans);
			$("#d_office_pedestral_fans_check").attr('checked',data.Pedestal_Fans);
			$("#d_office_doors_check").attr('checked',data.Doors);
			$("#d_office_windows_check").attr('checked',data.Windows);
			$("#d_office_Ventilators_check").attr('checked',data.Ventilators);
			
		},
		failure : function() {
			alert("Failed!");
		}
	});
}
//3
function getDmWaitingHallDetails(){
	var selectedValue = $('#institute').val();
	console.log(selectedValue);
	$.ajax({
		type : 'POST',
		url : "../dormitory/getDmWaitingHallDetails.htm",
		data : {
			'instituteid' : selectedValue
		},
		dataType : 'json',
		success : function(data) {
			console.log("Data populating....... getDmWaitingHallDetails");
			console.log(data);
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
//4
function getDmClinicDetails(){
	var selectedValue = $('#institute').val();
	console.log(selectedValue);
	$.ajax({
		type : 'POST',
		url : "../dormitory/getDmClinicDetails.htm",
		data : {
			'instituteid' : selectedValue
		},
		dataType : 'json',
		success : function(data) {
			console.log(data);
			console.log("Data populating....... getDmClinicDetails");
						$("#d_clinic_Plinth_Area").val(data.Plinth_Area);
						$("#d_clinic_celing_fan").val(data.Ceiling_Fans_Count);
						$("#d_clinic_tube_light").val(data.TubeLights_Count);
						$("#d_clinic_bulb").val(data.Bulbs_Count);
						$("#d_clinic_glass_door").val(data.Glass_Door_Almira_Count);
						$("#d_clinic_storewell").val(data.Store_Well_Almira_Count);
						$("#d_clinic_stype_chairs").val(data.S_Type_Chairs_Count);
						$("#d_clinic_chairs").val(data.Chairs_Count);
						$("#d_clinic_tables").val(data.Tables_Count);
						$("#d_clinic_Stools").val(data.Stools_Count);
						$("#d_clinic_wall_mount_fans").val(data.Wall_Mount_Fans_Count);
						$("#d_clinic_pedestral_fans").val(data.Pedestal_Fans_Count);
						$("#d_clinic_doors").val(data.Doors_Count);
						$("#d_clinic_windows").val(data.Windows_Count);
						$("#d_clinic_cots").val(data.Cots_Count);
						$("#d_clinic_Ventilatorsv").val(data.Ventilators_Count);
						$("#d_clinic_blockId").val(data.Block_Id);
						$("#d_clinic_floorId").val(data.Floor_Id);
						
						//$("#d_clinic_Plinth_Area_check").attr('checked',data.Plinth_Area);
						$("#d_clinic_celing_fan_check").attr('checked',data.Ceiling_Fans);
						$("#d_clinic_tube_light_check").attr('checked',data.TubeLights);
						$("#d_clinic_bulb_check").attr('checked',data.Bulbs);
						$("#d_clinic_glass_door_check").attr('checked',data.Glass_Door_Almira);
						$("#d_clinic_storewell_check").attr('checked',data.Store_Well_Almira);
						$("#d_clinic_stype_chairs_check").attr('checked',data.S_Type_Chairs);
						$("#d_clinic_chairs_check").attr('checked',data.Chairs);
						$("#d_clinic_tables_check").attr('checked',data.Tables);
						$("#d_clinic_Stools_check").attr('checked',data.Stools);
						$("#d_clinic_wall_mount_fans_check").attr('checked',data.Wall_Mount_Fans);
						$("#d_clinic_pedestral_fans_check").attr('checked',data.Pedestal_Fans);
						$("#d_clinic_doors_check").attr('checked',data.Doors);
						$("#d_clinic_windows_check").attr('checked',data.Windows);
						$("#d_clinic_cots_check").attr('checked',data.Cots);
						$("#d_clinic_Ventilatorsv_check").attr('checked',data.Ventilators);
			
		},
		failure : function() {
			alert("Failed!");
		}
	});
}
//5
function getDmToiletsDetails(){
	var selectedValue = $('#institute').val();
	console.log(selectedValue);
	$.ajax({
		type : 'POST',
		url : "../dormitory/getDmToiletsDetails.htm",
		data : {
			'instituteid' : selectedValue
		},
		dataType : 'json',
		success : function(data) {
			console.log(data);
			console.log("Data populating....... getDmToiletsDetails");
			$("#d_toilets_exhaustfans").val(data.Exhaust_Fans_Count);
						$("#d_toilets_indian").val(data.Indian_Toilet_Count);
						$("#d_toilets_tube_light").val(data.TubeLights_Count);
						$("#d_toilets_bulb").val(data.Bulbs_Count);
						$("#d_toilets_water_closet").val(data.Water_Closet_Count);
						$("#d_toilets_running_water").val(data.Running_Water_Count);
						$("#d_toilets_flush_system").val(data.Flush_System_Count);
						
						$("#d_toilets_exhaustfans_check").attr('checked',data.Exhaust_Fans);
						$("#d_toilets_indian_check").attr('checked',data.Indian_Toilet);
						$("#d_toilets_tube_light_check").attr('checked',data.TubeLights);
						$("#d_toilets_bulb_check").attr('checked',data.Bulbs);
						$("#d_toilets_water_closet_check").attr('checked',data.Water_Closet);
						$("#d_toilets_running_water_check").attr('checked',data.Running_Water);
						$("#d_toilets_flush_system_check").attr('checked',data.Flush_System);
			
		},
		failure : function() {
			alert("Failed!");
		}
	});
}
//6
function getDmBathroomDetails(){
	var selectedValue = $('#institute').val();
	console.log(selectedValue);
	$.ajax({
		type : 'POST',
		url : "../dormitory/getDmBathroomDetails.htm",
		data : {
			'instituteid' : selectedValue,'type':'Dorm'
			
		},
		dataType : 'json',
		success : function(data) {
			console.log(data);
			console.log("Data populating....... getDmBathroomDetails");
			$("#d_bathroom_quantity").val(data.Quantity_Count);
			$("#d_bathroom_exhaustfans").val(data.Exhaust_Fans_Count);
			$("#d_bathroom_tube_light").val(data.TubeLights_Count);
			$("#d_bathroom_bulb").val(data.Bulbs_Count);
			$("#d_bathroom_geezers").val(data.Geezers_Count);
			$("#d_bathroom_washarea").val(data.Washing_Area_Count);
			
			$("#d_bathroom_quantity_check").attr('checked',data.Quantity);
			$("#d_bathroom_exhaustfans_check").attr('checked',data.Exhaust_Fans);
			$("#d_bathroom_tube_light_check").attr('checked',data.TubeLights);
			$("#d_bathroom_bulb_check").attr('checked',data.Bulbs);
			$("#d_bathroom_geezers_check").attr('checked',data.GeeZers);
			$("#d_bathroom_washarea_check").attr('checked',data.Washing_Area);

		},
		failure : function() {
			alert("Failed!");
		}
	});
	
	
}
//7
function getDmCommonAreaDetails(){
	var selectedValue = $('#institute').val();
	console.log(selectedValue);
	$.ajax({
		type : 'POST',
		url : "../dormitory/getDmCommonAreaDetails.htm",
		data : {
			'instituteid' : selectedValue,'type':'D'
		},
		dataType : 'json',
		success : function(data) {
			console.log(data);
			console.log("Data populating....... getDmCommonAreaDetails");
			$("#d_commonarea_entancelobby").val(data.Entance_Lobby_Count);
			$("#d_commonarea_Warandah").val(data.Warandah_Count);
			$("#d_commonarea_stair_case").val(data.Stair_Case_Count);
			$("#d_commonarea_watertank").val(data.Water_Tank_Count);
			$("#d_commonarea_solar_powersystem").val(data.Solor_Power_System_Count);
			$("#d_commonarea_inverter_capacity").val(data.Inverter_Capacity_Count);
			
			$("#d_commonarea_entancelobby_check").attr('checked',data.Entance_Lobby);
			$("#d_commonarea_Warandah_check").attr('checked',data.Warandah);
			$("#d_commonarea_stair_case_check").attr('checked',data.Stair_Case);
			$("#d_commonarea_watertank_check").attr('checked',data.Water_Tank_Count);
			$("#d_commonarea_solar_powersystem_check").attr('checked',data.Solor_Power_System);
			$("#d_commonarea_inventers").attr('checked',data.Inverters);
			$("#d_commonarea_inverter_capacity_check").attr('checked',data.Inverter_Capacity);
		},
		failure : function(err) {
			alert("Failed!");
		}
	});
}



$('#dormitorySaveDiv').on('click',function(){
	console.log('-----SchoolSave-----');
	var dropDownId = $('#institute').val();
	var waterJson = [];
	var divJson = { "dormitoryId":dropDownId,"institutionId":dropDownId,"buildingId":dropDownId,'hallsArray':[] };
	$('#dormitory >div').each(function(){
		var $this= $(this);
		var divThis = $($this).find('>div >div >h4').find('input'); 
		divJson[$(divThis).attr('dbname')] = $(divThis).is(':checked')?'Y':'N';
		var childJson = {"dormitoryId":divJson["dormitoryId"],"institutionId":divJson["institutionId"],"buildingId":divJson["buildingId"]};
		
		$($this).find('>div >div.panel-collapse >div >div.table-responsive').find('input').each(function(){
			childJson[$(this).attr('dbname')] = $(this).attr('type')=='checkbox'?($(this).is(':checked')?'Y':'N'):($(this).val() == ''?'0':$(this).val());
		});
		$($this).find('>div >div.panel-collapse >div >div.table-responsive').find('select').each(function(){
			childJson[$(this).attr('dbname')] = $(this).val();
		});
		if($(divThis).attr('dbname') == 'commonArea'){
			$('div#dwater >div.table-responsive >table >tbody >tr').each(function(){
				waterJson.push({"type":$(this).find('select').val() ,"capacity":($(this).val() == ''?'0':$(this).val()) });
			});
			childJson['waterJson'] = waterJson;
		}
		if($(divThis).attr('dbname') == 'hall'){ 
			childJson['hallId'] = (divJson['hallsArray']).length+1;
			(divJson['hallsArray']).push(childJson);			
		}else{
			divJson[$(this).find('h4').find('input').attr('dbname')+'Obj'] = childJson;	
		}
	});
	console.log(divJson);
	
	$.ajax({
	    type: 'POST',
     	url: "../dormitory/updateDormitoryDetails.htm",
     	data : {'finalSaveJson':JSON.stringify(divJson)},
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
function addHalls(){
	var a;
  a = document.getElementById('hall-staff-rooms').value;
  if (a == "") {
    alert("Please enter some numeric value");
  } else {
    var rows = "";
    for (var i = 0; i < a; i++) {
    	 rows += "<div class='panel-group dormitoryHallDiv'> <div class='panel panel-default' ><div class='panel-heading'><h4 class='panel-title'><a data-toggle='collapse' data-parent='#accordion' href='#collapse1222".concat(i+1)+ "'><span class='glyphicon glyphicon-menu-down'></span></a>&nbsp;&nbsp;&nbsp;<a href='#' >	Hall</a> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type='checkbox' dbname='hall'/></h4> </div> "+
		         "<div id='collapse1222".concat(i+1)+ "' class='panel-collapse collapse'> <div class='panel-body'><div class='table-responsive'> "+
		         "<table class='table'> <tr><td> <label style='padding-right: 20px;padding-left: 90px;'><b>Block</b></label> <select name='H_Block_Id_#I#' id='H_Block_Id_#I#' dbname='blockId' class='form-control' style='width:200px;'>     <option value='0'>Select block</option> <option value='1'>1st Block</option> <option value='2'>Second Block</option> <option value='3'>Third Block</option> </select> </td>  <td> <label style='padding-right: 20px;padding-left: 90px;'><b>Floor</b></label> <select dbname='floorId' name='H_Floor_Id_#I#' id='H_Floor_Id_#I#' class='form-control' style='width:200px;'>     <option value='0'>Select floor</option> <option value='1'>Ground Floor</option> <option value='2'>First Floor</option> <option value='3'>Second Floor</option> </select> </td></tr>"+  
		         "<tr><td>Length (in sft)<br><input type='text' name='H_Length_#I#' id='H_Length_#I#' /></td><td>Width (in sft)<br><input type='text' name='H_Width_#I#' id='H_Width_#I#' /></td></tr><tr> <td><a href='#'>Carpet Area</a> <input type='checkbox'><br> <input type='text' name='H_Plinth_Area_#I#' id ='H_Plinth_Area_#I#' dbname='carpetAreaCnt' readonly=true></td><td><a href='#'>Ceiling Fans</a> <input type='checkbox' name='H_Ceiling_Fans_#I#' id ='H_Ceiling_Fans_#I#' dbname='ceilingFans'><br> <input type='text' name='H_Ceiling_Fans_Count_#I#' id ='H_Ceiling_Fans_Count_#I#' dbname='ceilingFansCnt'></td> 	</tr>  "+
		         "<tr><td><a href='#'>Tube Lights</a> <input type='checkbox' name='H_TubeLights_#I#' id ='H_TubeLights_#I#' dbname='tubeLights'><br> <input type='text'name='H_TubeLights_Count_#I#' id ='H_TubeLights_Count_#I#' dbname='tubeLightsCnt'></td><td><a href='#'>Bulbs</a> <input type='checkbox' name='H_Bulbs_#I#' id ='H_Bulbs_#I#' dbname='bulbs'><br> <input type='text' name='H_Bulbs_Count_#I#' id ='H_Bulbs_Count_#I#' dbname='bulbsCnt'></td></tr>"+  
		         "<tr><td><a href='#'>S type Chairs</a> <input type='checkbox' name='H_S_Type_Chairs_#I#' id ='H_S_Type_Chairs_#I#' dbname='sTypeChairs'><br> <input type='text'name='H_S_Type_Chairs_Count_#I#' id ='H_S_Type_Chairs_Count_#I#' dbname='sTypeChairsCnt'></td><td><a href='#'>Chairs</a> <input type='checkbox' name='H_Chairs_#I#' id ='H_Chairs_#I#' dbname='chairs'><br> <input type='text' name='H_Chairs_Count_#I#' id ='H_Chairs_Count_#I#' dbname='chairsCnt'></td></tr> "+
		         "<tr><td><a href='#'>Tables</a> <input type='checkbox' name='H_Tables_#I#' id ='H_Tables_#I#' dbname='tables'><br> <input type='text' name='H_Tables_Count_#I#' id ='H_Tables_Count_#I#' dbname='tablesCnt'></td><td><a href='#'>Stools</a> <input type='checkbox' name='H_Stools_#I#' id ='H_Stools_#I#' dbname='stools'><br> <input type='text' name='H_Stools_Count_#I#' id ='H_Stools_Count_#I#' dbname='stoolsCnt'></td> </tr>  "+
		         "<tr><td><a href='#'>Wall Mount Fans</a> <input type='checkbox' name='H_Wall_Mount_Fans_#I#' id ='H_Wall_Mount_Fans_#I#' dbname='wallMountFans'><br> <input type='text'name='H_Wall_Mount_Fans_Count_#I#' id ='H_Wall_Mount_Fans_Count_#I#' dbname='wallMountFansCnt'></td><td><a href='#'>Pedestal fans</a> <input type='checkbox' name='H_Pedestal_Fans_#I#' id ='H_Pedestal_Fans_#I#' dbname='pedestalFans'><br> <input type='text' name='H_Pedestal_Fans_Count_#I#' id ='H_Pedestal_Fans_Count_#I#' dbname='pedestalFansCnt'></td> 	</tr>"+ 	 
		         "<tr><td><a href='#'>Doors</a> <input type='checkbox' name='H_Doors_#I#' id ='H_Doors_#I#' dbname='doors'><br> <input type='text' name='H_Doors_Count_#I#' id ='H_Doors_Count_#I#' dbname='doorsCnt'></td><td><a href='#'>Windows</a> <input type='checkbox' name='H_Windows_#I#' id ='H_Windows_#I#' dbname='windows'><br> <input type='text' name='H_Windows_Count_#I#' id ='H_Windows_Count_#I#' dbname='windowsCnt'></td> </tr> "+
		         "<tr><td><a href='#'>2-tier Cots</a> <input type='checkbox' name='H_two_tier_cots_#I#' id ='H_two_tier_cots_#I#' dbname='2TierCots'><br> <input type='text' name='H_two_tier_cots_Count_#I#' id ='H_two_tier_cots_Count_#I#' dbname='2TierCotsCnt'></td><td><a href='#'>cots</a> <input type='checkbox' name='H_Cots_#I#' id ='H_Cots_#I#' dbname='cots'><br> <input type='text' name='H_Cots_Count_#I#' id ='H_Cots_Count_#I#' dbname='cotsCnt'></td></tr>"+
		         "<tr><td><a href='#'>Glass Door Almira</a> <input type='checkbox' name='H_Glass_Door_Almira_#I#' id ='H_Glass_Door_Almira_#I#' dbname='glassDoorAlmira'><br> <input type='text' name='H_Glass_Door_Almira_Count_#I#' id ='H_Glass_Door_Almira_Count_#I#' dbname='glassDoorAlmiraCnt'></td><td><a href='#'>Storewell Almira</a> <input type='checkbox' name='H_Store_Well_Almira_#I#' id ='H_Store_Well_Almira_#I#' dbname='storeWallAlmira'><br> <input type='text' name='H_Store_Well_Almira_Count_#I#' id ='H_Store_Well_Almira_Count_#I#' dbname='storeWallAlmiraCnt'></td></tr>"+  
		         "<tr><td><a href='#'>Wooden Almira</a> <input type='checkbox' name='H_Wooden_Almira_#I#' id ='H_Wooden_Almira_#I#' dbname='woodenAlmira'><br> <input type='text' name='H_Wooden_Almira_Count_#I#' id ='H_Wooden_Almira_Count_#I#' dbname='woodenAlmiraCnt'></td></tr>"+  
		         "</table></div> </div> </div></div><div></div>  ";
      rows = rows.replace(/#I#/g,i);
    }
   	$('.dormitoryHallDiv').remove();
   	$('#hall-staff-rooms').after(rows);
   	$('input[type="checkbox"]:not(.dontHideCls)').hide();
   	bindChangeEvent();
	//$('input[type="text"],select').addClass("form-control");
  }
}
//getHallData(#I#)
function getHallData(i){
var selectedValue = $('#institute').val();
	console.log(i);
	 $.ajax({
		type : 'POST',
		url : "../dormitory/getHallData.htm",
		data : {
			'instituteid' : selectedValue,'hallId':(i+1)
		},
		dataType : 'json',
		success : function(data) {
			$.each(data, function(k, v) {
				if( k == 'Block_Id' || k == 'Floor_Id')
				{
					$("#H_"+k+"_"+i+" option[value='"+v+"']").prop('selected', true);
				} else {
					$('#H_'+k+'_'+i).val(v);
					$('#H_'+k+'_'+i).attr('checked', v);
				 }
			});

		},
		failure : function(err) {
			alert('Delete Failed with an Exception');
        	console.log(err);
		}
	}); 
}	



</script>		
		
		