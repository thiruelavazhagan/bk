<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />


<!DOCTYPE html>
<html lang="en">
<head>
<title>E-Banking</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="E-Banking Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
<script type="application/x-javascript">
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 


</script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!-- Custom Theme files -->
<link href="resources/css/bootstrap.css" type="text/css"
	rel="stylesheet" media="all">
<link href="resources/css/style.css" type="text/css" rel="stylesheet"
	media="all">
<link href="resources/css/font-awesome.css" rel="stylesheet">
<!-- font-awesome icons -->
<!-- //Custom Theme files -->
<!-- js -->
<script src="resources/js/jquery-2.2.3.min.js"></script>
<!-- web-fonts -->
<!-- //web-fonts -->
<style>
.a_demo_four {
	background-color: #49c7ed;
	font-family: 'Open Sans', sans-serif;
	font-size: 12px;
	text-decoration: none;
	color: #fff;
	position: relative;
	padding: 10px 20px;
	padding-right: 50px;
	background-image: linear-gradient(bottom, rgb(62, 51, 46) 0%,
		rgb(101, 86, 78) 100%);
	border-radius: 5px;
	box-shadow: inset 0px 1px 0px #9e8d84, 0px 5px 0px 0px #3898b5, 0px 10px
		5px #999;
}

.a_demo_four:active {
	top: 3px;
	background-image: linear-gradient(bottom, rgb(62, 51, 46) 100%,
		rgb(101, 86, 78) 0%);
	box-shadow: inset 0px 1px 0px #9e8d84, 0px 2px 0px 0px #322620, 0px 5px
		3px #999;
}

.a_demo_four::before {
	background-color: #036c8c;
	background-image: url(resources/images/right_arrow.png);
	background-repeat: no-repeat;
	background-position: center center;
	content: "";
	width: 20px;
	height: 20px;
	position: absolute;
	right: 15px;
	top: 50%;
	margin-top: -9px;
	border-radius: 50%;
	box-shadow: inset 0px 1px 0px #19120f, 0px 1px 0px #827066;
}

.a_demo_four:active::before {
	top: 50%;
	margin-top: -12px;
	box-shadow: inset 0px 1px 0px #827066, 0px 3px 0px #19120f, 0px 6px 3px
		#382e29;
}
</style>
</head>
<body>
	<!-- header -->
	<div class="headerw3-agile">
		<div class="header-w3mdl">
			<!-- header-two -->
			<div class="container">
				<div class="agileits-logo navbar-left">
					<h1>
						<a href="index.jsp"><img src="resources/images/e.png"
							alt="logo" />Banking</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</h1>
				</div>
				<div class="agileits-hdright nav navbar-nav">
					<div class="header-nav">
						<!-- header-three -->
						<nav class="navbar navbar-default">
							<div class="navbar-header">
								<button type="button" class="navbar-toggle"
									data-toggle="collapse"
									data-target="#bs-example-navbar-collapse-1">
									<span class="sr-only">Toggle navigation</span> Menu
								</button>
							</div>
							<!-- top-nav -->
							<div class="collapse navbar-collapse"
								id="bs-example-navbar-collapse-1">
								<ul class="nav navbar-nav">
									<li><a href="index.jsp" class="active">Home</a></li>
									<li><a href="#" onclick="alert('Login to Add New User!');"
										class="scroll">New User</a></li>
									<li><a href="#" onclick="alert('Login to View History!');"
										class="scroll">History</a></li>
									<li><a href="#" onclick="alert('Login to Contact!');"
										class="scroll">Contact Us</a></li>
									<!-- 										<li><a href="register" class="scroll">Register</a></li>     -->
									<!-- 						<li><a href="login" class="scroll">Login</a></li>   -->
								</ul>
								<div class="clearfix"></div>
							</div>
						</nav>
					</div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- //header -->
	<!-- banner -->
	<div class="banner">

		<!-- banner-text -->
		<!-- banner -->
		<div class="container">
			<div class="banner-text agileits-w3layouts">
				<div id="top" class="callbacks_container">
					<ul class="rslides" id="slider3">
						<li>
							<div class="banner-textagileinfo">
								<h6>Welcome To E-Banking</h6>
								<h3>Safe,secure and convenient banking</h3>
								<div class="agileits-banner-bot">
									<div id="container_buttons">
										<p>
											<a class="a_demo_four" value="Login" href="login"> Login
											</a>
											
										</p>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>

	<div class="w3_agile-copyright text-center">
		<p>© 2020 E-Banking. All rights reserved | Design by
			globaltechnosolutions</p>
	</div>
	<!--//footer-->

	<script src="resources/js/responsiveslides.min.js"></script>
	<script>
		// You can also use "$(window).load(function() {"
		$(function() {
			// Slideshow 3
			$("#slider3").responsiveSlides({
				auto : true,
				pager : false,
				nav : true,
				speed : 500,
				namespace : "callbacks",
				before : function() {
					$('.events').append("<li>before event fired.</li>");
				},
				after : function() {
					$('.events').append("<li>after event fired.</li>");
				}
			});

		});
	</script>
	<script src="resources/js/SmoothScroll.min.js"></script>
	<!-- smooth-scrolling-of-move-up -->
	<script type="text/javascript" src="resources/js/move-top.js"></script>
	<script type="text/javascript" src="resources/js/easing.js"></script>
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

			$().UItoTop({
				easingType : 'easeOutQuart'
			});

		});
	</script>


	<!-- //smooth-scrolling-of-move-up -->

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="resources/js/bootstrap.js"></script>

</body>
</html>