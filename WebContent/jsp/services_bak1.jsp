<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
<head>
<style type="text/css">

.dropdown-submenu {
    position: relative;
}

.dropdown-submenu>.dropdown-menu {
    top: 0;
    left: 100%;
    margin-top: -6px;
    margin-left: -1px;
    -webkit-border-radius: 0 6px 6px 6px;
    -moz-border-radius: 0 6px 6px;
    border-radius: 0 6px 6px 6px;
}

.dropdown-submenu:hover>.dropdown-menu {
    display: block;
}

.dropdown-submenu>a:after {
    display: block;
    content: " ";
    float: right;
    width: 0;
    height: 0;
    border-color: transparent;
    border-style: solid;
    border-width: 5px 0 5px 5px;
    border-left-color: #ccc;
    margin-top: 5px;
    margin-right: -10px;
}

.dropdown-submenu:hover>a:after {
    border-left-color: #fff;
}

.dropdown-submenu.pull-left {
    float: none;
}

.dropdown-submenu.pull-left>.dropdown-menu {
    left: -100%;
    margin-left: 10px;
    -webkit-border-radius: 6px 0 6px 6px;
    -moz-border-radius: 6px 0 6px 6px;
    border-radius: 6px 0 6px 6px;
}
ul.list-group:after{
clear:both;
display:block;
content:"";


}
.list-group-item{
float:left;
}

.two-col {
    overflow: hidden;/* Makes this div contain its floats */
}

.two-col .col1,
.two-col .col2,
.two-col .col3 {
    width 25%;
}

.two-col .col1 {
    float: left;
}

.two-col .col2 {
    float: left;
}

.two-col .col3 {
    float: right;
}

.two-col label {
    display: block;
}

p
    {
        width:auto;
        float:left;
        margin-right:10px;
    }

</style>

<title></title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Lucrative Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script type="text/javascript">


	jQuery(document).ready(function($) {
		
//		alert('amamama');
		
		
	
	    $(".Collapsable").load(function () {

	        $(this).parent().children().toggle();
	        $(this).toggle();

	    });

	
		
		
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>

<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>

<link href="js/jquery.treetable.css" rel="stylesheet" type="text/css" />
<script src="js/jquery.treetable.js"></script>
<link href="js/jquery.treetable.theme.default.css" rel="stylesheet" type="text/css" />


<!-- //js -->
<!-- pop-up-box -->
<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
<!-- //pop-up-box -->
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<link href="//fonts.googleapis.com/css?family=Work+Sans:100,200,300,400,500,600,700,800,900&amp;subset=latin-ext" rel="stylesheet">
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<script type="text/javascript">


$("#Asset-Table").treetable();

</script>


<script type="text/javascript">

function toggle(){
	
	switchSchool();
	switchOverview();
	switchStaffQtr();
	switchPrinciQtr();
	switchDormBuilding();
	switchOthers();
}

function switchSchool(){
	 
	//alert('school report');
	
	//alert(document.getElementById('School-Div').style.display);
switchClass();
	
	$('#switchSchool').addClass('active');
	
		
	if(document.getElementById('School-Div').style.display=='none')
	document.getElementById('School-Div').style.display = 'block';
	else
		document.getElementById('School-Div').style.display='none';
	
	document.getElementById('Overview-Div').style.display='none';
	document.getElementById('Staff-Div').style.display='none';
	document.getElementById('Principal-Div').style.display='none';
	document.getElementById('Dorm-Div').style.display='none';
	document.getElementById('Others-Div').style.display='none';

	document.getElementById('stats-div').style.display='none';
	
	
	
	
}
function switchClass(){

if ( $('#switchOverview').hasClass('active') ){
		
		alert('smskdskld');
		
		$('#switchOverview').removeClass('active');
		
	
	
	}

if ( $('#switchSchool').hasClass('active') ){
	
	alert('switchSchool');
	
	$('#switchSchool').removeClass('active');
	


}

if ( $('#switchStaffQtr').hasClass('active') ){
	
	alert('switchStaffQtr');
	
	$('#switchStaffQtr').removeClass('active');
	


}

if ( $('#switchPrinciQtr').hasClass('active') ){
	
	alert('switchPrinciQtr');
	
	$('#switchPrinciQtr').removeClass('active');
	

}


if ( $('#switchDormBuilding').hasClass('active') ){
	
	alert('switchDormBuilding');
	
	$('#switchDormBuilding').removeClass('active');
	

}

if ( $('#switchOthers').hasClass('active') ){
	
	alert('switchOthers');
	
	$('#switchOthers').removeClass('active');
	

}

	


	
}

function switchOverview(){
	



	switchClass();
	
	$('#switchOverview').addClass('active');


	 
	//alert('school report');
	
	//alert(document.getElementById('School-Div').style.display);
	if(document.getElementById('Overview-Div').style.display=='none')
	document.getElementById('Overview-Div').style.display = 'block';
	else
		document.getElementById('Overview-Div').style.display='none';
	
	if(document.getElementById('stats-div').style.display=='none')
		document.getElementById('stats-div').style.display = 'block';
		else
			document.getElementById('stats-div').style.display='none';
		
	
	
	
	document.getElementById('School-Div').style.display='none';
	document.getElementById('Staff-Div').style.display='none';
	document.getElementById('Principal-Div').style.display='none';
	document.getElementById('Dorm-Div').style.display='none';
	document.getElementById('Others-Div').style.display='none';

}

function switchStaffQtr(){
	 
switchClass();
	
	$('#switchStaffQtr').addClass('active');

	
	//alert('staff Qtr');
	
	//alert(document.getElementById('Staff-Div').style.display);
	if(document.getElementById('Staff-Div').style.display=='none')
	document.getElementById('Staff-Div').style.display = 'block';
	else
		document.getElementById('Staff-Div').style.display='none';
	
	document.getElementById('School-Div').style.display='none';
	document.getElementById('Overview-Div').style.display='none';
	document.getElementById('Principal-Div').style.display='none';
	document.getElementById('Dorm-Div').style.display='none';
	document.getElementById('Others-Div').style.display='none';
	document.getElementById('stats-div').style.display='none';
	
}

function switchPrinciQtr(){
	 
	//alert('switchPrinciQtr');
	
	switchClass();
	
	$('#switchPrinciQtr').addClass('active');


	
	//alert(document.getElementById('Principal-Div').style.display);
	if(document.getElementById('Principal-Div').style.display=='none')
	document.getElementById('Principal-Div').style.display = 'block';
	else
		document.getElementById('Principal-Div').style.display='none';
	
	document.getElementById('School-Div').style.display='none';
	document.getElementById('Overview-Div').style.display='none';
	document.getElementById('Staff-Div').style.display='none';
	document.getElementById('Dorm-Div').style.display='none';
	document.getElementById('Others-Div').style.display='none';
	document.getElementById('stats-div').style.display='none';
	
}
function switchDormBuilding(){
	 
switchClass();
	
	$('#switchDormBuilding').addClass('active');


	
	//alert('switchDormBuilding');
	
	//alert(document.getElementById('Dorm-Div').style.display);
	if(document.getElementById('Dorm-Div').style.display=='none')
	document.getElementById('Dorm-Div').style.display = 'block';
	else
		document.getElementById('Dorm-Div').style.display='none';
	
	document.getElementById('School-Div').style.display='none';
	document.getElementById('Overview-Div').style.display='none';
	document.getElementById('Staff-Div').style.display='none';
	document.getElementById('Principal-Div').style.display='none';
	document.getElementById('Others-Div').style.display='none';
	document.getElementById('stats-div').style.display='none';
	
}

function switchOthers(){
	 

	
switchClass();
	
	$('#switchOthers').addClass('active');

	//alert('switchDormBuilding');
	
	//alert(document.getElementById('Dorm-Div').style.display);
	if(document.getElementById('Others-Div').style.display=='none')
	document.getElementById('Others-Div').style.display = 'block';
	else
		document.getElementById('Others-Div').style.display='none';
	
	document.getElementById('School-Div').style.display='none';
	document.getElementById('Overview-Div').style.display='none';
	document.getElementById('Staff-Div').style.display='none';
	document.getElementById('Principal-Div').style.display='none';
	document.getElementById('Dorm-Div').style.display='none';
	document.getElementById('stats-div').style.display='none';
	
}

 function swichReport(){
	 
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

</script>




</head>
	
<body>
	
<body>
<!-- header -->
	<div class="header">
		<div class="container">
			<div class="agile_header_grid">
				<div class="w3_agile_logo" style="float: left;">
					<h1><a href="index.html"><span>CIS</span>Tracker</a></h1>
				</div>
				
				<div class="agileits_w3layouts_sign_in">
				
					<ul>
					<li><img alt="" src="./images/logo.png"></li>
						<li><a href="#small-dialog" class="play-icon popup-with-zoom-anim">Sign In</a></li>
						
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="w3_agileits_nav">
				<nav class="navbar navbar-default">
					<div class="navbar-header navbar-left">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
					</div>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse navbar-right" id="bs-example-navbar-collapse-1">
						<nav>
							<ul class="nav navbar-nav">
								<li ><a href="index.html" class="hvr-sweep-to-bottom">Home</a></li>
								<li><a href="index.html" class="hvr-sweep-to-bottom">Requests</a></li>
								<!-- <li class="dropdown">
									<a href="#" class="dropdown-toggle hvr-sweep-to-bottom" data-toggle="dropdown">Asset Management<b class="caret"></b></a>
									<ul class="dropdown-menu agile_short_dropdown">
										<li><a href="services.html">View</a></li>
										<li><a href="AddAssets.html">Manage</a></li>
									</ul>
								</li> -->
								<li class="active"><a href="services.html" class="hvr-sweep-to-bottom">Asset Management</a></li>
								<li><a href="portfolio.html" class="hvr-sweep-to-bottom">Progress Reports</a></li>
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
				<input type="email" name="email" placeholder="Your Email" required="">
				<input type="password" name="password" placeholder="Password" required="">
				<div class="agile_remember">
					<div class="agile_remember_left">
						<div class="check">
							<label class="checkbox"><input type="checkbox" name="checkbox"><i> </i>remember me</label>
						</div>
					</div>
					<div class="agile_remember_right">
						<a href="#">Forgot Password?</a>
					</div>
					<div class="clearfix"> </div>
				</div>
				<input type="submit" value="SIGN IN">
				<p>Don't have an account <a href="#small-dialog1" class="play-icon popup-with-zoom-anim">Sign Up</a></p>
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
				<input type="email" name="email" placeholder="Your Email" required="">
				<input type="password" name="password" placeholder="Password" required="">
				<input type="password" name="password" placeholder="Confirm Password" required="">
				<input type="submit" value="SIGN UP">
				<p>Already a member <a href="#small-dialog" class="play-icon popup-with-zoom-anim">Sign In</a></p>
				<div class="w3agile_social_icons">
					<ul>
						</ul>	
				</div>
			</form>
		</div>
	</div>
<!-- //pop-up-box -->	
<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
<script>






	$(document).ready(function() {
	$('.popup-with-zoom-anim').magnificPopup({
		type: 'inline',
		fixedContentPos: false,
		fixedBgPos: true,
		overflowY: 'auto',
		closeBtnInside: true,
		preloader: false,
		midClick: true,
		removalDelay: 300,
		mainClass: 'my-mfp-zoom-in'
	});
																	
	});
</script>
<!-- <div class="container">
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    Indicators
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    Wrapper for slides
    <div class="carousel-inner">

      <div class="item active">
        <img src="images/sud1.jpg" alt="Los Angeles" style="height:300px;width:100%">
        <div class="carousel-caption">
         
        </div>
      </div>

      <div class="item">
        <img src="images/sud2.jpg" alt="Chicago" style="height:300px;width:1500px">
        <div class="carousel-caption">
          
        </div>
      </div>
    
      <div class="item">
        <img src="images/sud3.jpg" alt="New York" style="height:300px;width:1500px">
        <div class="carousel-caption">
       
        </div>
      </div>
  
    </div>

    Left and right controls
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
 -->
<div class="services-bottom">
		<div class="container">
			<div class="col-md-4 w3_agile_services_grid">
					<div class="agile_services_grid">
						<div class="hover06 column">
							<div style="background-color:#668cff;padding: 20px;">
								<table>
					<tr><td>
				<label style="padding-right: 20px"><b>District</b></label> </td><td>
				<select name="district" id="district" 	class="form-control">
					<option value="0">Select District</option>
					<option value="ADILABAD">ADILABAD</option>
					<option value="KARIMNAGAR">KARIMNAGAR</option>
					<option value="WARANGAL">WARANGAL</option>
					<option value="KHAMMAM">KHAMMAM</option>
					<option value="MAHABOOBNAGAR">MAHABOOBNAGAR</option>
					<option value="RANGA RED">RANGA REDDY</option>
					<option value="HYDERABAD">HYDERABAD</option>
					<option value="MEDAK">MEDAK</option>
					<option value="NIZAMABAD">NIZAMABAD</option>
					<option value="NALGONDA">NALGONDA</option>
					
				</select> </td></tr>
				<tr></tr><tr></tr><tr></tr>
								</table>
							</div>
						</div>
					</div>
					</div>
					<div class="col-md-4 w3_agile_services_grid">
					<div class="agile_services_grid">
						<div class="hover06 column">
							<div style="background-color: #ff9966;padding: 20px;">
					<table>
					
				<tr align="left"><td>
				<label style="padding-right: 20px;"><b>Institute</b></label></td><td>
				 <select name="institute" id="institute" 	class="form-control" id="switch" onchange="swichReport()">
					<option value="0">Select Institute</option>
					<option value="1">ASIFABAD</option>
					<option value="1">ADILABAD</option>
					<option value="1">SIRPUR</option>
					<option value="1">MUDHOLE</option>
					<option value="1">BOATH</option>
					<option value="1">LUXETTIPET</option>
					<option value="1">CHENNUR</option>
					<option value="1">NIRMAL</option>
					<option value="1">KADDAM (DPIP)</option>
					<option value="1">BELLAMPALLI (DPIP)</option>
					<option value="1">SIRPUR (DPIP)</option>
					<option value="1">JAM (DPIP)</option>
					<option value="1">BELLAMPALLI  (NEW)</option>
					<option value="1">CHENNUR (NEW)</option>
					</select></td></tr>
				<tr align="center"><td></td><td>
		</td></tr>
				</table>
				</div>
						</div>
						
					</div>
					</div>
				
							
				
		</div>
	</div>
<!-- //banner -->		
<!-- services -->
	

<!-- <div class="container">

<div class="panel-group" id="accordion">

<div class="panel panel-default">
<div class="panel-heading"></div>

<h4 class="panel-title">

<a data-toggle="collapse" data-parent="#accordion" href="#School-Div">
School Building
</a>

</h4>

</div>
  -->




</div>




</div>		
<nav class="navbar navbar-default" style="padding-top: 30px;padding-left: 20px; display: none;" id="Details1"   class="accordion-body collapse"
    data-toggle="false">
  <div class="container-fluid">
    <div class="navbar-header">
      
    </div>
    <ul class="nav navbar-nav">
      <li  class="list-inline-item active" onclick="switchOverview()" id="switchOverview"><a href="#"><font color="black"><b>Overview</b></font></a></li>
       <li  class="list-inline-item" onclick="switchSchool()" id="switchSchool" ><a href="#"><B><font color="black">School Building</font></B></a></li>
    <li  class="list-inline-item" onclick="switchStaffQtr()" id="switchStaffQtr"><a href="#"><B><font color="black">Staff Quarters</font></B></a></li>
    <li  class="list-inline-item" onclick="switchPrinciQtr()" id="switchPrinciQtr"><a href="#"><B><font color="black">Principal Quarters</font></B></a></li>
    <li  class="list-inline-item" onclick="switchDormBuilding()" id="switchDormBuilding"><a href="#"><B><font color="black">Dormitory</font></B></a></li>
    <li  class="list-inline-item" onclick="switchOthers()" id="switchOthers"><a href="#"><B><font color="black">Others</font></B></a></li>
    </ul>
  </div>
</nav>

		
		
		
	<!-- <div class="container" style="padding-top: 30px;padding-left: 20px; display: none;" id="Details1"   class="accordion-body collapse"
    data-toggle="false" >
	
	<ul class="list-inline" >
  
  <li   class="list-inline-item active" onclick="switchOverview()" ><a href="#"><font color="white"><b>Overview</b></font></a></li>
    
    <li  class="list-inline-item" onclick="switchSchool()" ><a href="#"><B><font color="black">School Building</font></B></a></li>
    <li  class="list-inline-item" onclick="switchStaffQtr()" ><a href="#"><B><font color="black">Staff Quarters</font></B></a></li>
    <li  class="list-inline-item" onclick="switchPrinciQtr()" ><a href="#"><B><font color="black">Principal Quarters</font></B></a></li>
    <li  class="list-inline-item" onclick="switchDormBuilding()" ><a href="#"><B><font color="black">Dormitory</font></B></a></li>
    <li  class="list-inline-item" onclick="switchOthers()" ><a href="#"><B><font color="black">Others</font></B></a></li>
  </ul>
	

<div style="width: 20%">
  
  <ul class="list-group" >
  
  <li  class="list-group-item active" onclick="switchOverview()" ><a href="#"><font color="white"><b>Overview</b></font></a></li>
    
    <li class="list-group-item" onclick="switchSchool()" ><a href="#"><B><font color="black">School Building</font></B></a></li>
    <li class="list-group-item" onclick="switchStaffQtr()" ><a href="#"><B><font color="black">Staff Quarters</font></B></a></li>
    <li class="list-group-item" onclick="switchPrinciQtr()" ><a href="#"><B><font color="black">Principal Quarters</font></B></a></li>
    <li class="list-group-item" onclick="switchDormBuilding()" ><a href="#"><B><font color="black">Dormitory</font></B></a></li>
    <li class="list-group-item" onclick="switchOthers()" ><a href="#"><B><font color="black">Others</font></B></a></li>
  </ul>

</div>
 -->		
	<!-- School Building -->
	
	
	
	<div id="Others-Div" style="background-color: #e6ebff;padding-bottom: 40px;padding-left: 70px;padding-right: 40px;padding-top: 40px;    margin: 10px; display: none;">
		
		
			<div class="container" style="padding-top: 20px;padding-left: 20px; display: none;" id="Details2"   class="accordion-body collapse"
    data-toggle="false" >
    
    
    <p ><B>Sanitary System</B>
<input type="checkbox" style="padding-right: 10 px;padding-left: 20px;">
<br>
<span class="wpcf7-form-control-wrap your-name" style="padding-right: 30px;">
    <input type="text" name="your-name" value="" size="30" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true">
</span> 
</p>

<p><B>Compound Wall</B>
<input type="checkbox" style="padding-right: 10 px;padding-left: 20px;">

<br>
<span class="wpcf7-form-control-wrap your-email" style="padding-right: 30px;">
    <input type="email" name="your-email" value="" size="30" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7- validates-as-email" aria-required="true">
</span>
</p>    
<p><B>Gaurd Room</B>
<input type="checkbox" style="padding-right: 10 px;padding-left: 20px;">

<br>
<span class="wpcf7-form-control-wrap your-email" style="padding-right: 30px;">
    <input type="email" name="your-email" value="" size="30" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7- validates-as-email" aria-required="true">
</span>
</p>    

    <div style="float: left; padding-top: 30px;">
<p><B>Power Generator</B>
<input type="checkbox" style="padding-right: 20px;"> 
<br>
<span class="wpcf7-form-control-wrap your-email" style="padding-right: 30px;">
    <input type="email" name="your-email" value="" size="30" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7- validates-as-email" aria-required="true">
</span>
</p>


<p><B>Internal Roads</B>
<input type="checkbox" style="padding-right: 20px;"> 
<br>
<span class="wpcf7-form-control-wrap your-email" style="padding-right: 30px;">
    <input type="email" name="your-email" value="" size="30" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7- validates-as-email" aria-required="true">
</span>
</p>
<p><B>Street Lighting</B>
<input type="checkbox" style="padding-right: 20px;"> 
<br>
<span class="wpcf7-form-control-wrap your-email" style="padding-right: 30px;">
    <input type="email" name="your-email" value="" size="30" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7- validates-as-email" aria-required="true">
</span>
</p>
</div>

    <div style="float: left; padding-top: 30px;padding-bottom: 30px">
<div>
<p><B>Under Ground Pump</B>
<input type="checkbox" style="padding-right: 20px;"> 
<br>
<span class="wpcf7-form-control-wrap your-email" style="padding-right: 30px;">
    <input type="email" name="your-email" value="" size="30" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7- validates-as-email" aria-required="true">
</span>
</p>


<p><B>External Water Supply</B>
<input type="checkbox" style="padding-right: 20px;"> 
<br>
<span class="wpcf7-form-control-wrap your-email" style="padding-right: 30px;">
    <input type="email" name="your-email" value="" size="30" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7- validates-as-email" aria-required="true">
</span>
</p>
<p><B>OverHead Service Reservoir</B>
<input type="checkbox" style="padding-right: 20px;"> 
<br>
<span class="wpcf7-form-control-wrap your-email" style="padding-right: 30px;">
    <input type="email" name="your-email" value="" size="30" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7- validates-as-email" aria-required="true">
</span>
</p>
</div>
    
    <div style="float: left; padding-top: 30px;padding-bottom: 30px;padding-right: 30px;"> <input type="button" name="Save" value="Save"></div>
    
    <div style="float: left; padding-top: 30px;padding-bottom: 30px"> <input type="button" name="Cancel" value="Cancel"></div>
    </div>
	
	
	</div>
	
		
		</div>
		
		<div class="stats" id="stats-div" style="display: none;">
		<div class="wthree_stat">
			<div class="container">
				<div class="col-md-5 wthree_stat_left">
					<h3>Institute Name ASIFABAD &nbsp;(51901)</h3>
					<p><b>Total Area : 24,567 sft</b>
					
					</p>
					
					
					<table style="text-align: left; float: left; background-color:#e6ebff; ">
		
		
		<tr><td style="padding: 20px;"><img alt="" src=".//images//Capture.PNG"></td></tr>
		
		
		</table>
		
<div id="Overview-Div" style="padding-bottom: 40px;padding-left: 70px;padding-right: 40px;padding-top: 40px;    margin: 10px;">
		
		
		
				
		
		
		</div>
					
					
				</div>
				<div class="col-md-7 wthree_stat_right" >
					<ul style="margin-bottom:20px;">
						<li>
							<div class="wthree_stat_right1">
								<i class="glyphicon glyphicon-hourglass" aria-hidden="true"></i>
								<h4>Work In Progress</h4>
								<p class="counter" >8</p> 
							</div>
						</li>
						<li>
							<div class="wthree_stat_right1">
								<i class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></i>
								<h4>Completed </h4>
								<p class="counter" >11</p> 
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
						
						<ul>
						<li>
							<div class="wthree_stat_right1" >
								<i class="glyphicon glyphicon-bullhorn" aria-hidden="true"></i>
								<h4>Issues Raised</h4>
								<p class="counter">31</p> 
							</div>
						</li>
						<li>
							<div class="wthree_stat_right1">
								<i class="glyphicon glyphicon-piggy-bank" aria-hidden="true"></i>
								<h4>Tenders Associated</h4>
								<p class="counter">8</p> 
							</div>
						</li>
						<li>
							<div class="wthree_stat_right1">
								<i class="glyphicon glyphicon-new-window" aria-hidden="true"></i>
								<h4>Administrative Sanctions </h4>
								<p class="counter">13</p> 
							</div>
						</li>
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		
	</div>
		
		
		
		
		<div id="Overview-Div" style="padding-bottom: 40px;padding-left: 70px;padding-right: 40px;padding-top: 40px;    margin: 10px; display: none;">
		
		<table style="text-align: left; float: left; background-color:#e6ebff; ">
		
		
		<tr><td style="padding: 20px;"><label style="padding-right: 100px;padding-left: 20px; float: left;"><b>Institute Name</b></label></td><td style="padding: 20px;"><label style="padding-right: 100px;padding-left: 20px; float: left;"><b>:</b></label></td><td ><label style="padding-right: 100px;"><b>ASIFABAD &nbsp;(51901)</b></label></td></tr>
		
		<tr><td style="padding: 20px;"><label style="padding-right: 100px;padding-left: 20px; float: left;"><b><b>Profile &nbsp;&nbsp;Completion &nbsp;&nbsp;(%)</b></label></td><td style="padding: 20px;"><label style="padding-right: 100px;padding-left: 20px; float: left;"><b>:</b></label></td><td ><label style="padding-right: 100px;"><b>5</b></label></td></tr>
		
		<tr><td style="padding: 20px;"><label style="padding-right: 100px;padding-left: 20px; float: left;"><b><b>Total Area</b></label></td><td style="padding: 20px;"><label style="padding-right: 100px;padding-left: 20px; float: left;"><b>:</b></label></td><td ><label style="padding-right: 100px;"><b>29400 sft</b></label></td></tr>
		
		<tr></tr>
		<tr></tr>
		<tr></tr>
		<tr></tr>
		<tr></tr>
		<tr></tr>
		
		<tr><td style="padding: 20px;"><img alt="" src=".//images//Capture.PNG"></td></tr>
		
		
		</table>
		
		
				
		
		
		</div>




	<div id="School-Div" style="background-color: #e6ebff;padding-bottom: 40px;padding-left: 70px;padding-right: 40px;padding-top: 40px;    margin: 10px; display: none;" class="panel-collapse collapse out">
	

	<label style="padding-right: 20px;"><h3>School Building</h3></label> <input type="checkbox" style="border-color: black;padding-left: 25px;">
	
	
	<!-- 
	
	Temp
	
	
	 -->
	
	<div class="container" style="padding-top: 20px;padding-left: 20px; " id="Details2"   class="accordion-body collapse"
    data-toggle="false" >
    <div class="container">
	<div class="row">
       
        <div class="dropdown">
            <a id="dLabel" role="button" data-toggle="dropdown" class="btn btn-primary" data-target="#" href="/page.html">
                Admin <span class="caret"></span>
            </a>
    		<ul class="dropdown-menu multi-level" role="menu" aria-labelledby="dropdownMenu">
              <li class="dropdown-submenu">
                <a tabindex="-1" href="#">1</a>
                <ul class="dropdown-menu">
                  <li class="dropdown-submenu">
                    <a href="#">Even More..</a>
                    <ul class="dropdown-menu">
                        <li>3rd level &nbsp;<input type="checkbox" ></li>
                    	<li>3rd level&nbsp;<input type="checkbox" ></li>
                    </ul>
                  </li>
                   <li class="dropdown-submenu">
                    <a href="#">Even More..</a>
                    <ul class="dropdown-menu">
                        <li>3rd level &nbsp;<input type="checkbox" ></li>
                    	<li>3rd level&nbsp;<input type="checkbox" ></li>
                    </ul>
                  </li>
                </ul>
              </li>
              <li class="dropdown-submenu">
                <a tabindex="-1" href="#">Hover me for more options</a>
                <ul class="dropdown-menu">
                  <li class="dropdown-submenu">
                    <a href="#">Even More..</a>
                    <ul class="dropdown-menu">
                        <li>3rd level &nbsp;<input type="checkbox" ></li>
                    	<li>3rd level&nbsp;<input type="checkbox" ></li>
                    </ul>
                  </li>
                   <li class="dropdown-submenu">
                    <a href="#">Even More..</a>
                    <ul class="dropdown-menu">
                        <li>3rd level &nbsp;<input type="checkbox" ></li>
                    	<li>3rd level&nbsp;<input type="checkbox" ></li>
                    </ul>
                  </li>
                  
                 
                </ul>
              </li>
              
              <li class="dropdown-submenu">
                <a tabindex="-1" href="#">Hover me for more options</a>
                <ul class="dropdown-menu">
                  <li><a tabindex="-1" href="#">Second level</a></li>
                  
                   <li class="dropdown-submenu">
                    <a href="#">Even More..</a>
                    <ul class="dropdown-menu">
                        <li>3rd level &nbsp;<input type="checkbox" ></li>
                    	<li>3rd level&nbsp;<input type="checkbox" ></li>
                    </ul>
                  </li>
                   <li class="dropdown-submenu">
                    <a href="#">Even More..</a>
                    <ul class="dropdown-menu">
                        <li>3rd level &nbsp;<input type="checkbox" ></li>
                    	<li>3rd level&nbsp;<input type="checkbox" ></li>
                    </ul>
                  </li>
                  
                </ul>
              </li>
            </ul>
        </div>
	</div>
</div>
    
   <!--  <p ><B>Area in Sft</B>
<br>
<span class="wpcf7-form-control-wrap your-name" style="padding-right: 30px;">
    <input type="text" name="your-name" value="" size="30" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true">
</span> 
</p>

<p><B>Library Room</B>
<input type="checkbox" style="padding-right: 10 px;padding-left: 20px;">

<br>
<span class="wpcf7-form-control-wrap your-email" style="padding-right: 30px;">
    <input type="email" name="your-email" value="" size="30" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7- validates-as-email" aria-required="true">
</span>
</p>    
<p><B>Office Store</B>
<input type="checkbox" style="padding-right: 10 px;padding-left: 20px;">

<br>
<span class="wpcf7-form-control-wrap your-email" style="padding-right: 30px;">
    <input type="email" name="your-email" value="" size="30" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7- validates-as-email" aria-required="true">
</span>
</p>    

    <div style="float: left; padding-top: 30px;">
<p><B>Staff Room</B>
<input type="checkbox" style="padding-right: 20px;"> 
<br>
<span class="wpcf7-form-control-wrap your-email" style="padding-right: 30px;">
    <input type="email" name="your-email" value="" size="30" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7- validates-as-email" aria-required="true">
</span>
</p>


<p><B>Principal Room</B>
<input type="checkbox" style="padding-right: 20px;"> 
<br>
<span class="wpcf7-form-control-wrap your-email" style="padding-right: 30px;">
    <input type="email" name="your-email" value="" size="30" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7- validates-as-email" aria-required="true">
</span>
</p>
<p><B>Games Room</B>
<input type="checkbox" style="padding-right: 20px;"> 
<br>
<span class="wpcf7-form-control-wrap your-email" style="padding-right: 30px;">
    <input type="email" name="your-email" value="" size="30" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7- validates-as-email" aria-required="true">
</span>
</p> -->
<!-- </div>

    <div style="float: left; padding-top: 30px;padding-bottom: 30px">
<div>
<p><B>Entrance Hall</B>
<input type="checkbox" style="padding-right: 20px;"> 
<br>
<span class="wpcf7-form-control-wrap your-email" style="padding-right: 30px;">
    <input type="email" name="your-email" value="" size="30" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7- validates-as-email" aria-required="true">
</span>
</p>


<p><B>First Floor Class Rooms</B>
<input type="checkbox" style="padding-right: 20px;"> 
<br>
<span class="wpcf7-form-control-wrap your-email" style="padding-right: 30px;">
    <input type="email" name="your-email" value="" size="30" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7- validates-as-email" aria-required="true">
</span>
</p>
<p><B>Second Floor Class Rooms</B>
<input type="checkbox" style="padding-right: 20px;"> 
<br>
<span class="wpcf7-form-control-wrap your-email" style="padding-right: 30px;">
    <input type="email" name="your-email" value="" size="30" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7- validates-as-email" aria-required="true">
</span>
</p>


</div>
    


<div style="float: left; padding-top: 30px;padding-bottom: 30px">
<p><B>Ground Floor Class Rooms</B>
<input type="checkbox" style="padding-right: 20px;"> 
<br>
<span class="wpcf7-form-control-wrap your-email" style="padding-right: 30px;">
    <input type="email" name="your-email" value="" size="30" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7- validates-as-email" aria-required="true">
</span>
</p>

<p><B>Physics Lab</B>
<input type="checkbox" style="padding-right: 20px;"> 
<br>
<span class="wpcf7-form-control-wrap your-email" style="padding-right: 30px;">
    <input type="email" name="your-email" value="" size="30" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7- validates-as-email" aria-required="true">
</span>
</p>

<p><B>Chemistry Lab</B>
<input type="checkbox" style="padding-right: 20px;"> 
<br>
<span class="wpcf7-form-control-wrap your-email" style="padding-right: 30px;">
    <input type="email" name="your-email" value="" size="30" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7- validates-as-email" aria-required="true">
</span>
</p>








</div>

<div style="float: left; padding-top: 30px;padding-bottom: 30px">
<p><B>Botany Lab</B>
<input type="checkbox" style="padding-right: 20px;"> 
<br>
<span class="wpcf7-form-control-wrap your-email" style="padding-right: 30px;">
    <input type="email" name="your-email" value="" size="30" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7- validates-as-email" aria-required="true">
</span>
</p>

<p><B>Zoology Lab</B>
<input type="checkbox" style="padding-right: 20px;"> 
<br>
<span class="wpcf7-form-control-wrap your-email" style="padding-right: 30px;">
    <input type="email" name="your-email" value="" size="30" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7- validates-as-email" aria-required="true">
</span>
</p>

<p><B>Computer Room</B>
<input type="checkbox" style="padding-right: 20px;"> 
<br>
<span class="wpcf7-form-control-wrap your-email" style="padding-right: 30px;">
    <input type="email" name="your-email" value="" size="30" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7- validates-as-email" aria-required="true">
</span>
</p>


</div>

<div style="float: left; padding-top: 30px;padding-bottom: 30px">
<p><B>Toilet Blocks</B>
<input type="checkbox" style="padding-right: 20px;"> 
<br>
<span class="wpcf7-form-control-wrap your-email" style="padding-right: 30px;">
    <input type="email" name="your-email" value="" size="30" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7- validates-as-email" aria-required="true">
</span>
</p>
</div>
    <div style="float: left; padding-top: 30px;padding-bottom: 30px;padding-top: 30px;padding-bottom: 30px;padding-right: 30px;">
    <div style="float: left; padding-top: 30px;padding-bottom: 30px;padding-right: 30px;"> <input type="button" name="Save" value="Save"></div>
    
    <div style="float: left; padding-top: 30px;padding-bottom: 30px"> <input type="button" name="Cancel" value="Cancel"></div>
    </div>
	 -->
	</div>
	</div>
	<!--  Temp end-->
	
	
	
	
	
    
    
    
    </div>
	

	
	<!-- School Building -->
	
	
		
		<!--Staff Quarters  -->
		
	
	<div id="Staff-Div" style="background-color: #ff9966;padding-bottom: 40px;padding-left: 40px;padding-right: 40px;padding-top: 40px; margin: 10px; display: none;">
	<label>Staff Quarters</label> <input type="checkbox" style="border-color: black;padding-left: 25px;">
	
	<ul style="font-family: serif;font-weight: bold;font-size:x-large; padding-left: 20px;">
    <li ><ul>
        <li style="font-size:medium; padding-left: 15px;"
        ><span class="Collapsable">Area 6044 sft</span></li>
        
        <li style="font-size:medium; padding-left: 15px;"
        ><span class="Collapsable">Quantity 6</span></li>
        
        <li></li>
        <li style="font-size:medium; padding-left: 15px;" ><span class="Collapsable">Living/Dining </span><img alt="" src="images/tick.png" style="padding-left: 15px;"
        ><ul>
            <li style="font-size:small; padding-left: 18px;"><span class="Collapsable">Quantity 1</span></li>
        </ul>
        </li>
        
        <li></li>
        
         <li style="font-size:medium; padding-left: 15px;" ><span class="Collapsable">Bed Rooms </span><img alt="" src="images/tick.png" style="padding-left: 15px;"
        ><ul>
            <li style="font-size:small; padding-left: 18px;"><span class="Collapsable">Quantity 2</span></li>
        </ul>
        </li>
       <li></li>
         <li style="font-size:medium; padding-left: 15px;" ><span class="Collapsable">Toilets </span><img alt="" src="images/tick.png" style="padding-left: 15px;"
        ><ul>
            <li style="font-size:small; padding-left: 18px;"><span class="Collapsable">Quantity 2</span></li>
        </ul>
        </li>
       <li></li>
       
        <li></li>
        <li style="font-size:medium; padding-left: 15px;" ><span class="Collapsable">Kitchen </span><img alt="" src="images/tick.png" style="padding-left: 15px;"
        ></li>
    </ul>
    </li>
    </ul>
    <div style="float: left; padding-top: 30px;padding-bottom: 30px;padding-right: 30px;" id="Save-Div"> <input type="button" name="Save" value="Save"></div>
    
    <div style="float: left; padding-top: 30px;padding-bottom: 30px" id="Cancel-Div"> <input type="button" name="Cancel" value="Cancel"></div>
    
    </div>	
	
	<!-- Staff Quarters -->
		
	

	<!-- Principal Quarters -->
	
	<div id="Principal-Div" style="background-color: #ffffcc;padding-bottom: 40px;padding-left: 40px;padding-right: 40px;padding-top: 40px;  margin: 10px; display: none;">
	<label>Principal Quarters</label> <input type="checkbox" style="border-color: black;padding-left: 25px;">
	
	<ul style="font-family: serif;font-weight: bold;font-size:x-large; padding-left: 20px;">
    <li ><ul>
        <li style="font-size:medium; padding-left: 15px;"
        ><span class="Collapsable">Area 1036 sft</span></li>
        <li></li>
        <li style="font-size:medium; padding-left: 15px;" ><span class="Collapsable">Living/Dining </span><img alt="" src="images/tick.png" style="padding-left: 15px;"
        ><ul>
            <li style="font-size:small; padding-left: 18px;"><span class="Collapsable">Quantity 1</span></li>
        </ul>
        </li>
        
        <li></li>
        
         <li style="font-size:medium; padding-left: 15px;" ><span class="Collapsable">Bed Rooms </span><img alt="" src="images/tick.png" style="padding-left: 15px;"
        ><ul>
            <li style="font-size:small; padding-left: 18px;"><span class="Collapsable">Quantity 2</span></li>
        </ul>
        </li>
       <li></li>
         <li style="font-size:medium; padding-left: 15px;" ><span class="Collapsable">Toilets </span><img alt="" src="images/tick.png" style="padding-left: 15px;"
        ><ul>
            <li style="font-size:small; padding-left: 18px;"><span class="Collapsable">Quantity 2</span></li>
        </ul>
        </li>
       <li></li>
       <li style="font-size:medium; padding-left: 15px;" ><span class="Collapsable">Drawing Room </span><img alt="" src="images/tick.png" style="padding-left: 15px;"
        ><ul>
            <li style="font-size:small; padding-left: 18px;"><span class="Collapsable">Quantity 1</span></li>
        </ul>
        </li>
        <li></li>
        <li style="font-size:medium; padding-left: 15px;" ><span class="Collapsable">Kitchen </span><img alt="" src="images/tick.png" style="padding-left: 15px;"
        ></li>
        <li></li>
        <li style="font-size:medium; padding-left: 15px;" ><span class="Collapsable">Portico </span><img alt="" src="images/tick.png" style="padding-left: 15px;"
        ></li>
        <li></li>
        <li style="font-size:medium; padding-left: 15px;" ><span class="Collapsable">Utility </span><img alt="" src="images/tick.png" style="padding-left: 15px;"
        ></li>
    </ul>
    </li>
    </ul>
    <div style="float: left; padding-top: 30px;padding-bottom: 30px;padding-right: 30px;" id="Save-Div"> <input type="button" name="Save" value="Save"></div>
    
    <div style="float: left; padding-top: 30px;padding-bottom: 30px" id="Cancel-Div"> <input type="button" name="Cancel" value="Cancel"></div>
    
    </div>
	
	<!-- Principal Quarters -->




	<!-- Dormitory  Building -->
	
	
	<div id="Dorm-Div" style="background-color: #ffe6ff;padding-bottom: 40px;padding-left: 40px;padding-right: 40px;padding-top: 40px; margin: 10px;display: none;">
	
	<input type="checkbox" style="border-color: black;padding-left: 25px;">
	
	
	<ul style="font-family: serif;font-weight: bold;font-size:x-large; padding-left: 20px;">
    <li ><ul>
   <li style="font-size:medium; padding-left: 15px;" ><span class="Collapsable">Halls </span><img alt="" src="images/tick.png" style="font-size:medium; padding-left: 15px;"><ul>
            <li style="font-size:small; padding-left: 18px;"><span class="Collapsable">Quantity 16</span></li>
            <li style="font-size:small; padding-left: 18px;"><span class="Collapsable">Ground Floor</span><img alt="" src="images/tick.png" style="font-size:medium; padding-left: 15px;">
            
            <ul>
            
            <li style="font-size:x-small; padding-left: 18px;"><span class="Collapsable">Quantity 4</span></li>
            
            </ul>
            
            </li>
            <li style="font-size:small; padding-left: 18px;"><span class="Collapsable">First Floor</span><img alt="" src="images/tick.png" style="font-size:medium; padding-left: 15px;">
            
             <ul>
            
            <li style="font-size:x-small; padding-left: 18px;"><span class="Collapsable">Quantity 6</span></li>
            
            </ul>
           
            
            
            </li>
            <li style="font-size:small; padding-left: 18px;"><span class="Collapsable">Second Floor</span><img alt="" src="images/tick.png" style="font-size:medium; padding-left: 15px;">
            
             <ul>
            
            <li style="font-size:x-small; padding-left: 18px;"><span class="Collapsable">Quantity 6</span></li>
            
            </ul>
           
            
            
            </li>
        </ul>
        </li>
        <li></li>
        
         <li style="font-size:medium; padding-left: 15px;" ><span class="Collapsable">Warden Room </span><img alt="" src="images/tick.png" style="font-size:medium; padding-left: 15px;"></li>
  
  <li></li>
<li style="font-size:medium; padding-left: 15px;" ><span class="Collapsable">Office Room </span><input type="checkbox" style="padding-left: 25px;"><input type="checkbox" style="padding-left: 25px;"></li>
          <li></li>
  <li style="font-size:medium; padding-left: 15px;" ><span class="Collapsable">Waiting Hall </span><img alt="" src="images/tick.png" style="font-size:medium; padding-left: 15px;"></li>
        <li></li>
  <li style="font-size:medium; padding-left: 15px;" ><span class="Collapsable">Clinic Hall</span><input type="checkbox" style="padding-left: 25px;"></li>
  <li></li>
  
        <li style="font-size:medium; padding-left: 15px;"
        ><span class="Collapsable">Toilets</span><img alt="" src="images/tick.png" style="font-size:medium; padding-left: 15px;">
        
        <ul>
            <li style="font-size:small; padding-left: 18px;"><span class="Collapsable">Quantity 60</span></li>
        </ul>
        
        
        </li>
        <li></li>
        
        <li style="font-size:medium; padding-left: 15px;"
        ><span class="Collapsable">Bath Rooms</span><img alt="" src="images/tick.png" style="font-size:medium; padding-left: 15px;"><ul>
            <li style="font-size:small; padding-left: 18px;"><span class="Collapsable">Quantity 60</span></li>
        </ul>
        </li>
    </ul>
    </li>
    </ul>
    
    <div style="float: left; padding-top: 30px;padding-bottom: 30px;padding-right: 30px;" id="Save-Div"> <input type="button" name="Save" value="Save"></div>
    
    <div style="float: left; padding-top: 30px;padding-bottom: 30px" id="Cancel-Div"> <input type="button" name="Cancel" value="Cancel"></div>
    
    </div>
	
	<!-- Dormitory Building -->


		
	
	


    
	
  
<!-- //services -->
<!-- services-bottom -->
	<!-- //services-bottom --><!-- footer -->
	<div class="footer">
		<div class="container">
			<div class="w3_footer_grids">
				<div class="col-md-4 w3_footer_grid">
					<h2><a href="index.html"><span>M</span>ission</a></h2>
					<p>The mission of the TSWREI Society is to prepare the students to face the challenges of the 21st century with a sense of self-confidence and collaborative behavior.</p>
				</div>
				<div class="col-md-3 w3_footer_grid">
					<div class="w3l_footer_grid">
						<i class="fa fa-home" aria-hidden="true"></i>
					</div>
					<h4>Address</h4>
					<p>Nalkkanche , Hyderabad, Telangana 521456.</p>
				</div>
				<div class="col-md-2 w3_footer_grid">
					<div class="w3l_footer_grid">
						<i class="fa fa-phone" aria-hidden="true"></i>
					</div>
					<h4>Call Us</h4>
					<p>040 2331 9810</p>
				</div>
				<div class="col-md-3 w3_footer_grid">
					<div class="w3l_footer_grid">
						<i class="fa fa-envelope" aria-hidden="true"></i>
					</div>
					<h4>Mail Us</h4>
					<p><a href="mailto:info@example.com">info@tswreis.com</a>
						<span><a href="mailto:info@example.com">support@tswreis.com</a></span></p>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
		<div class="copyright">
		<div class="container">
			<div class="w3ls_copyright_left">
				<ul>
					<li ><a href="index.html">Home</a></li>
					<li><a href="index.html">Requests</a></li>
					<li class="active"><a href="serices.html">Asset Management</a></li>
					<li ><a href="portfolio.html">Progress Reports</a></li>
					<li ><a href="index.html">Dashborad</a></li>
					
	</ul>
				<p>© 2017 TSWREIS. All Rights Reserved </p>
			</div>
			<div class="w3ls_copyright_right">
				
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //footer -->

<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
<!-- for bootstrap working -->
	<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->
</body>
</html>