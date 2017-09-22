<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
<head>
<title>TSWREIS CISTracker</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
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

function callSMS(){
	
	//alert(document.getElementById("mobile"));
	var mobilenum =document.getElementById("mobile").value;
//alert(mobilenum)	;

var xhttp = new XMLHttpRequest();
xhttp.open("GET", "http://localhost:8080/CISTrack/rest/UserService/sms?mobile="+mobilenum, false);
xhttp.setRequestHeader("Content-type", "application/json");
xhttp.send();
var response = JSON.parse(xhttp.responseText);
 
}


</script>
</head>
	
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
						<%
							if (request.getSession().getAttribute("User")!= null) {
						%>
						<li><a href="#small-dialog" class="play-icon popup-with-zoom-anim"><%out.print( request.getSession().getAttribute("User")) ;%></a></li>
						<%
							} else {
						%>
								<li><a href="#small-dialog" class="play-icon popup-with-zoom-anim">Sign In</a></li>
						<% } %>
						
						
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
								<li class="active"><a href="index.html">Home</a></li>
								<li><a href="index.html" class="hvr-sweep-to-bottom">Requests</a></li>
								<!-- <li class="dropdown">
									<a href="#" class="dropdown-toggle hvr-sweep-to-bottom" data-toggle="dropdown">Asset Management<b class="caret"></b></a>
									<ul class="dropdown-menu agile_short_dropdown">
										<li><a href="services.html">View</a></li>
										<li><a href="AddAssets.html">Manage</a></li>
									</ul>
								</li> -->
								<li><a href="services.html" class="hvr-sweep-to-bottom">Asset Management</a></li>
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
			<form action="CIS/userRegistration.htm" method="post">
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

<div style="padding-bottom: 30px;"></div>

<div class="w3layouts_newsletter" style="padding-top: 30px;">
			<div class="container">
				<div class="w3layouts_newsletter_left">
					<h3>Join CISTrack</h3>
				</div>
				<div class="w3layouts_newsletter_right">
					<form action="#" method="post" >
						<input type="number" name="Mobile Number" placeholder="+91" required="" size=30 id="mobile">
						<input type="submit" value="Join" onclick="callSMS();">
					</form>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
<!-- banner -->	
<!-- 	<div class="banner1" style="padding-top: 60px">
	
	<div class="container">
	    <div class="w3layouts_newsletter_left" style="background-color: red;">
	      <h3 style="padding-bottom: 20px;padding-left: 20px;padding-right: 20px;">Join CISTrack</h3>
        </div>
        
	    <div class="w3layouts_newsletter_right" style="background-color: red;padding-bottom: 20px;padding-left: 20px;padding-right: 20px;padding-top: 20px;">
	      <form action="#" method="post">
	        <input type="email" name="Mobile Number" placeholder="+91" required="">
	        <input type="submit" value="Join">
          </form>
        </div>
	    <div class="clearfix"> </div>
      </div>
		
		
				
			</div>
		
		
					
		
		
 -->	
	<!-- //banner -->
	<div>
 <img src="images/banner.jpg" style="height:400px;width:100%">
 </div>


<!-- bootstrap-pop-up -->
	<div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<section>
					<div class="modal-body">
					</div>
				</section>
			</div>
		</div>
	</div>
<!-- //bootstrap-pop-up -->
<!-- banner-bottom -->
	<div class="banner-bottom">
		<div class="container">
			<div class="col-md-8 w3l_banner_bottom_left">
				<h3>TSWREIS- Mission & Vision</h3>
				<p>Telangana Social Welfare Residential Educational Institutions Society (TSWREIS) is running 267 residential educational institutions (from 5th standard to Undergraduate level) in the state of Telangana under the Ministry of Scheduled Caste Development, Government of Telangana. The Society has been working with the noble aim of providing quality education to the needy and deprived children on par with the other advantaged children<span>The TSWREIS has been catering to the dire educational needs of the marginalized children especially Scheduled Caste (SC) children hailing from the remote rural areas of Telangana.</span></p>
			</div>
			<div class="col-md-4 w3l_banner_bottom_right" style="padding-left: 50px">
				<img src="images/kcr.jpg" alt=" " class="img-responsive" />
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
<!-- //banner-bottom -->

<div class="stats">
		<div class="wthree_stat">
			<div class="container">
				<div class="col-md-5 wthree_stat_left">
					<h3>Our Stats</h3>
					<p>TSWREIS undertakes work to provide state of the art infrastructure to the students.</p>
					
				</div>
				<div class="col-md-7 wthree_stat_right">
					<ul>
						<li>
							<div class="wthree_stat_right1">
								<i class="glyphicon glyphicon-hourglass" aria-hidden="true"></i>
								<h4>Work In Progress</h4>
								<p class="counter">70</p> 
							</div>
						</li>
						<li>
							<div class="wthree_stat_right1">
								<i class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></i>
								<h4>Completed </h4>
								<p class="counter">26</p> 
							</div>
						</li>
						<li>
							<div class="wthree_stat_right1">
								<i class="glyphicon glyphicon-bell" aria-hidden="true"></i>
								<h4>On Hold</h4>
								<p class="counter">20</p> 
							</div>
						</li>
						</ul>
						<br>
						<ul>
						<li>
							<div class="wthree_stat_right1">
								<i class="glyphicon glyphicon-bullhorn" aria-hidden="true"></i>
								<h4>Issues</h4>
								<p class="counter">31</p> 
							</div>
						</li>
						<li>
							<div class="wthree_stat_right1">
								<i class="glyphicon glyphicon-piggy-bank" aria-hidden="true"></i>
								<h4>Tenders</h4>
								<p class="counter">108</p> 
							</div>
						</li>
						<li>
							<div class="wthree_stat_right1">
								<i class="glyphicon glyphicon-new-window" aria-hidden="true"></i>
								<h4> Upcoming </h4>
								<p class="counter">13</p> 
							</div>
						</li>
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		
	</div>
<!-- two-grids -->
	<!-- //two-grids -->
<!-- news -->
	<div class="news">
		<div class="container">
			<h3 class="agile_head">Projects - Work In Progress</h3>
			<p class="w3_agile_para">Status of work from all the schools across 21 Districts of Telangana</p>
			<div class="agileits_w3layouts_news_grids">
				<ul id="flexiselDemo1">	
					<li>
						<div class="agileits_w3layouts_news_grid">
							<div class="w3_agileits_news_grid">
								<img src="images/111.jpg" alt=" " class="img-responsive" style="height:180px;width:450px" />
								<div class="w3_agileits_news_grid_pos">
									<h4>Date : January 2016</h4>
								</div>
							</div>
							<h5><a href="#" data-toggle="modal" data-target="#myModal">District : ADILABAD <br></a></h5>
							<p>Constituency : Chennur<br> Location : Kotapalli<br>Category : Boys</p>
						</div>
					</li>
					<li>
						<div class="agileits_w3layouts_news_grid">
							<div class="w3_agileits_news_grid">
								<img src="images/122.jpg" alt=" " class="img-responsive" style="height:180px;width:450px"/>
								<div class="w3_agileits_news_grid_pos">
									<h4>Date : August 2016</h4>
								</div>
							</div>
							<h5><a href="#" data-toggle="modal" data-target="#myModal">District : Karimnagar</a></h5>
							<p>Constituency : Manthani<br> Location : Kataram<br>Category : Boys</p>
						</div>
					</li>
					<li>
						<div class="agileits_w3layouts_news_grid">
							<div class="w3_agileits_news_grid">
								<img src="images/123.jpg" alt=" " class="img-responsive" style="height:180px;width:450px" />
								<div class="w3_agileits_news_grid_pos">
									<h4>Date : November 2016</h4>
								</div>
							</div>
							<h5><a href="#" data-toggle="modal" data-target="#myModal">District : Warangal</a></h5>
							<p>Constituency : Manthani<br> Location : Kataram<br>Category : Boys</p>
						</div>
					</li>
					<li>
						<div class="agileits_w3layouts_news_grid">
							<div class="w3_agileits_news_grid">
								<img src="images/124.jpg" alt=" " class="img-responsive" style="height:180px;width:450px"/>
								<div class="w3_agileits_news_grid_pos">
									<h4>Date : June 2016</h4>
								</div>
							</div>
							<h5><a href="#" data-toggle="modal" data-target="#myModal">District : Khammam </a></h5>
							<p>Constituency : Pinapaka<br> Location : Manuguru<br>Category : Boys</p>
						</div>
					</li>
					<li>
						<div class="agileits_w3layouts_news_grid">
							<div class="w3_agileits_news_grid">
								<img src="images/125.jpg" alt=" " class="img-responsive" style="height:180px;width:450px" />
								<div class="w3_agileits_news_grid_pos">
									<h4>Date : November 2017</h4>
								</div>
							</div>
							<h5><a href="#" data-toggle="modal" data-target="#myModal">District : Mahabub Nagar</a></h5>
							<p>Constituency : Alampur<br> Location : Manopad<br>Category : Boys</p>
						</div>
					</li>
				</ul>
				<script type="text/javascript">
						$(window).load(function() {
							$("#flexiselDemo1").flexisel({
								visibleItems: 4,
								animationSpeed: 1000,
								autoPlay: true,
								autoPlaySpeed: 3000,    		
								pauseOnHover: true,
								enableResponsiveBreakpoints: true,
								responsiveBreakpoints: { 
									portrait: { 
										changePoint:480,
										visibleItems: 1
									}, 
									landscape: { 
										changePoint:640,
										visibleItems:2
									},
									tablet: { 
										changePoint:768,
										visibleItems: 3
									}
								}
							});
							
						});
				</script>
				<script type="text/javascript" src="js/jquery.flexisel.js"></script>
			</div>
		</div>
	</div>
<!-- //news -->
<!-- stats -->
	<div class="two-grids">
		<div class="col-md-6 w3_two_grid_left">
			<img src="images/2.jpg" alt=" " class="img-responsive" />
		</div>
		<div class="col-md-6 w3_two_grid_right">
			<h3>Upcoming Features </h3>
			<div class="w3_two_grid_right1">
				<div class="col-xs-3 w3_two_grid_right_grid">
					<div class="w3_two_grid_right_grid1">
						<i class="fa fa-thumbs-up" aria-hidden="true"></i>
					</div>
				</div>
				<div class="col-xs-9 w3_two_grid_right_gridr">
					<h4>Progress Reports</h4>
					<p>Progress Reports to track the ongoing works</p>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="w3_two_grid_right1">
				<div class="col-xs-3 w3_two_grid_right_grid">
					<div class="w3_two_grid_right_grid1">
						<i class="fa fa-building" aria-hidden="true"></i>
					</div>
				</div>
				<div class="col-xs-9 w3_two_grid_right_gridr">
					<h4>Requests</h4>
					<p>Users will create requests online for any project work
					</p>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="w3_two_grid_right1">
				<div class="col-xs-3 w3_two_grid_right_grid">
					<div class="w3_two_grid_right_grid1">
						<i class="fa fa-wrench" aria-hidden="true"></i>
					</div>
				</div>
				<div class="col-xs-9 w3_two_grid_right_gridr">
					<h4>Dashboard</h4>
					<p>Users will have a comprehensive view of the works in graphical format</p>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="w3_two_grid_right1">
				<div class="col-xs-3 w3_two_grid_right_grid">
					<div class="w3_two_grid_right_grid1">
						<i class="fa fa-trophy" aria-hidden="true"></i>
					</div>
				</div>
				<div class="col-xs-9 w3_two_grid_right_gridr">
					<h4>Reports</h4>
					<p>Scheduled and adhoc reports for management</p>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
		<div class="clearfix"> </div>
	</div>
	
<!-- //stats -->
<!-- stats -->
	<script src="js/waypoints.min.js"></script> 
	<script src="js/counterup.min.js"></script> 
	<script>
		jQuery(document).ready(function( $ ) {
			$('.counter').counterUp({
				delay: 20,
				time: 1000
			});
		});
	</script>
<!-- stats -->
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
					<p>Nalkkanche, Hyderabad, Telangana 521456.</p>
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
					<li class="active"><a href="index.html">Home</a></li>
					<li><a href="index.html">Requests</a></li>
					<li><a href="index.html">Asset Management</a></li>
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