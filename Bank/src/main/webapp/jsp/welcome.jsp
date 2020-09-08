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
									<li><a href="register" class="scroll">New User</a></li>
									<li><a href="addamount" class="scroll">Add Amount</a></li>
									<li><a href="sendMail" class="scroll">Contact Us</a></li>
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
									
								</div>
								<div class="clearfix"></div>
							</div>

						</li>

					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- about -->

 
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