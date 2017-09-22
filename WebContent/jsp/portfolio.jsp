<!DOCTYPE html>
<html lang="en">
<head>
<title>TSWREIS CISTracker</title>
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
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js"></script>
<!-- //js -->
 <link rel="stylesheet" href="css/jquery.gallery.css">
 <!-- <style type="text/css">
 
 label {
    width:180px;
    clear:left;
    text-align:right;
    padding-right:50px;
}

input, label {
    float:left;
}
 
 </style>
 --> <link rel="stylesheet" href="https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css">
<!-- pop-up-box -->
<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
<!-- //pop-up-box -->
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<link href="//fonts.googleapis.com/css?family=Work+Sans:100,200,300,400,500,600,700,800,900&amp;subset=latin-ext" rel="stylesheet">
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<script type="text/javascript">

/* function toggle_visibility(id) {
    var e = document.getElementById(id);
    if(e.style.display == 'block')
       e.style.display = 'none';
    else
       e.style.display = 'block';
}

 */
 
 function disable(){
	 
	 return null;
 }
 function swichReport(){
	
	var val=document.getElementById('switch').value;
	
	
	//alert(val);
	
	if(val=="Select"){
		
	var e=document.getElementById('Aug');
	
	//alert(e);
	e.style.display == 'none'
	
	var e1=document.getElementById('Infra');
	
	//alert(e1);
	e1.style.display == 'none'
		
	
	}
		
	else	if(val=="Augmentation & Permanent Works"){
		
		//alert('Aug');
	
		var e2=document.getElementById('Aug');
		
		   e2.style.display = 'block';
		   
		   var y=document.getElementById('Infra');
			
		   y.style.display = 'none';
	}
	
	else if("Additional Infrastructure Works"){
		
		//alert('Infra');
		var e3=document.getElementById('Infra');
		
		   e3.style.display = 'block';
		   
		   var x=document.getElementById('Aug');
			
		   x.style.display = 'none';

	}
	
	
	return;
}

 var dataSet1=[
	 
	 
	 ["Construction of Parents waiting Hall to TSWRSCS in Nizamabad Dist","13","12","169.00","0","0","1","0","0","12","60.64","9.81","70.45","0.00","70.45"],
	 ["Construction of Gaurd Room to TSWRSCS in Nizamabad Dist","7","6","20.30","0","0","1","0","0","6","9.65","0.00","9.65","2.81","12.46"]
	 
	 
	 
 ]
var dataSet = [
	    [ "K.Sanjay","P.Srinivas(Outsourcing)","Provisioning Additional Infrastructure facilities to upgrade the existing TSWRSCS (Boys) at Armoor (V&M)","G.O.Ms.No 4 of S.W. (RD .2) Dept. Dt.20.01.14","707.04","456/2013-14 Dt.05.02.14","15.11.15","-","445.70","0.00","445.70","48.86","Dormitories(18 Halls), Kitchen-cum-Dining (1 No.) , Laboratories (4 Nos.) , Principal Quarters ( 1 No.) , OHSR (1 No) & RO Plant" , "Completed"],
	    [ "K.Sanjay","P.Srinivas(Outsourcing)","Provisioning Additional Infrastructure facilities to upgrade the existing TSWRSCS (Girls) at Pochampad (V) Balkonda (M)","G.O.Ms.No 4 of S.W. (RD .2) Dept. Dt.20.01.14","673.44","438/2013-14 Dt.31.04.14","31.01.16","10.10.16","385.42","0.00","385.42","0.00","Dormitories(18 Halls), Kitchen-cum-Dining (1 No.) , Laboratories (4 Nos.) , Principal Quarters ( 1 No.) , OHSR (1 No) & RO Plant" , "Finishing Stage"]
	   
	    ];
	 
	$(document).ready(function() {
		
		
	    $('#example').DataTable( {
	        data: dataSet,
	        columns: [
	            { title: "Dy.E.E" },
	            { title: "Section Officer" },
	            { title: "Work" },
	            { title: "Proc.No & Date" },
	            { title: "Estt.Cost" },
				{ title: "Agrt.No & Date" },
	            { title: "Date of Completion" },
	            { title: "Probable Date of Completion" },
	            { title: "Expenditure Upto Previous Month" },
	            { title: "Expenditure During the Month" },
	            { title: "Total Expenditure" },
	{ title: "Bills Pending" },
	{ title: "Sanctioned Components" },
	{ title: "Stage of Work" }
	        ]
	    } );
	
	
	  $('#table1').DataTable( {
		        data: dataSet1,
		        columns: [
		            { title: "Scheme" },
		            { title: "No. of Works Sanctioned" },
		            { title: "No. of Works Grounded" },
		            { title: "Est.Cost" },
		           	{ title: "No. of works Tender Stage" },
		            { title: "Agreement Stage/Concluded" },
		            { title: "No. of Works site Problem / Not required" },
		            { title: "No. of works in Progress " },
		            { title: "No. of works in Finishing Stage" },
		            { title: "No. of works completed" },
		{ title: "Expenditure Upto Previous Month" },
		{ title: "Expenditure During the Month" },
		{ title: "Total Expenditure" },
		{ title: "Bills pending with APAONZB" },
		{ title: "Grand Total" }
		
		        ]
		    } );
	
		   var x=document.getElementById('Aug');
			
		   x.style.display = 'none';
		   
		   //alert(x);
		   
		   var y=document.getElementById('Infra');
			
		   y.style.display = 'none';
		
		   //alert(y);
		   //alert("blocked");
		  
	} );


</script>
</head>
	
<body>
<!-- header -->
	<div class="header">
		<div class="container">
			<div class="agile_header_grid">
				<div class="w3_agile_logo">
					<h1><a href="index.html"><span>CIS</span>Tracker</a></h1>
				</div>
				<div class="agileits_w3layouts_sign_in">
					<ul>
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
								<li ><a href="index.html">Home</a></li>
								<li><a href="index.html" class="hvr-sweep-to-bottom" onclick="disable();">Requests</a></li>
								<li class="dropdown" >
									<a href="#" class="dropdown-toggle hvr-sweep-to-bottom" data-toggle="dropdown">Asset Management<b class="caret"></b></a>
									<ul class="dropdown-menu agile_short_dropdown">
										<li><a href="services.html">View</a></li>
										<li><a href="AddAssets.html">Manage</a></li>
									</ul>
								</li>
								<li class="active"><a href="portfolio.html" class="hvr-sweep-to-bottom">Progress Reports</a></li>
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
<!-- banner -->	
	<div class="banner1">
		<h3>Progress Reports</h3>
	</div>
<!-- //banner -->
<!-- portfolio -->
	<div class="portfolio">
		<div class="container">
			<h3 class="agile_head">Reports for Augmentation , Permanent  & Additional infrastructure works</h3>
			<p class="w3_agile_para"></p><br>
			<label style="padding-right:20px;">Select Report</label> 
			
			
			 <select onchange="swichReport()" id="switch">
			 <option selected="selected">Select</option>
			 <option >Augmentation & Permanent Works</option>
			 <option >Additional Infrastructure Works</option>
				
			</select>
			
			<div class="w3_agile_portfolio_grids" >
			<div class="container" id="Aug" style="display:none;"> 
			
			
			<table class="display" id="example" style="font-size: 10px; text-align: left">
				
		</table>
			
				
			</div>
		</div>
		
		<div class="w3_agile_portfolio_grids" >
			<div class="container" id="Infra" style="display:none;"> 
			
			
			<table  class="display" id="table1" style="font-size: 10px; text-align: left">
				
		</table>
			
				
			</div>
		</div>
		
			
		</div>
		
	
		
		
		
		
				
	</div>
<!-- //portfolio -->
	
	<!-- footer -->
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
					<p>Nalkkanche, Hyderabad, Telangana 521456</p>
					
				</div>
				<div class="col-md-2 w3_footer_grid">
					<div class="w3l_footer_grid">
						<i class="fa fa-phone" aria-hidden="true"></i>
					</div>
					<h4>Call Us</h4>
					<p><span>040 2331 9810</span></p>
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
					<li><a href="index.html">Home</a></li>
					<li><a href="index.html">Requests</a></li>
					<li><a href="index.html">Asset Management</a></li>
					<li class="active"><a href="portfolio.html">Progress Reports</a></li>
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