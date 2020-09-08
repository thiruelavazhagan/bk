<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page import="java.sql.*"%>
<%@ page isELIgnored="false"%>
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
/*custom font*/
@import url(https://fonts.googleapis.com/css?family=Montserrat);

/*basic reset*/
* {
	margin: 0;
	padding: 0;
}

html {
	height: 100%;
	/*Image only BG fallback*/
	/*background = gradient + image pattern combo*/
	background: linear-gradient(rgba(196, 102, 0, 0.6),
		rgba(155, 89, 182, 0.6));
}

body {
	font-family: montserrat, arial, verdana;
}
/*form styles*/
#msform {
	width: 400px;
	margin: 50px auto;
	position: relative;
}

#msform fieldset {
	background: white;
	border: 0 none;
	border-radius: 3px;
	box-shadow: 0 0 15px 1px rgba(0, 0, 0, 0.4);
	padding: 20px 30px;
	box-sizing: border-box;
	width: 80%;
	margin: 0 10%;
	/*stacking fieldsets above each other*/
	position: relative;
}
/*Hide all except first fieldset*/
#msform fieldset:not(:first-of-type) {
	display: none;
}
/*inputs*/
#msform input, #msform textarea, #msform select {
	padding: 15px;
	border: 1px solid #ccc;
	border-radius: 3px;
	margin-bottom: 10px;
	/*  	width: 100%;  */
	box-sizing: border-box;
	font-family: montserrat;
	color: #2C3E50;
	/*   	font-size: 13px;   */
}
/*buttons*/
#msform .action-button {
	width: 100px;
	background: #27AE60;
	font-weight: bold;
	color: white;
	border: 0 none;
	border-radius: 1px;
	cursor: pointer;
	padding: 10px 5px;
	margin: 10px 5px;
}

#msform .action-button:hover, #msform .action-button:focus {
	box-shadow: 0 0 0 2px white, 0 0 0 3px #27AE60;
}
div.fixed {
	position: fixed;
}
/*headings*/
.fs-title {
	font-size: 15px;
	text-transform: uppercase;
	color: #2C3E50;
	margin-bottom: 10px;
}

.fs-subtitle {
	font-weight: normal;
	font-size: 13px;
	color: #666;
	margin-bottom: 20px;
}
/*progressbar*/
#progressbar {
	margin-bottom: 30px;
	overflow: hidden;
	/*CSS counters to number the steps*/
	counter-reset: step;
}

#progressbar li {
	list-style-type: none;
	color: black;
	text-transform: uppercase;
	font-size: 9px;
	width: 33.33%;
	float: left;
	position: relative;
}

#progressbar li:before {
	content: counter(step);
	counter-increment: step;
	width: 20px;
	line-height: 20px;
	display: block;
	font-size: 10px;
	color: #333;
	background: white;
	border-radius: 3px;
	margin: 0 auto 5px auto;
}
/*progressbar connectors*/
#progressbar li:after {
	content: '';
	width: 100%;
	height: 2px;
	background: white;
	position: absolute;
	left: -50%;
	top: 9px;
	z-index: -1; /*put it behind the numbers*/
}

#progressbar li:first-child:after {
	/*connector not needed before the first step*/
	content: none;
}
/*marking active/completed steps green*/
/*The number of the step and the connector before it = green*/
#progressbar li.active:before, #progressbar li.active:after {
	background: #27AE60;
	color: white;
}
</style>
</head>
<body style="background-color: #aceafc">
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
									<li><a href="index.jsp" class="scroll">Home</a></li>
									<li><a href="register" class="scroll">New User</a></li>
									<li><a href="addamount" class="active">Add Amount</a></li>
									<li><a href="payment" class="scroll">Contact Us</a></li>

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
	<!-- multistep form -->
	<br>
	<br>
	<br>
	<br>
	<form:form id="msform" modelattribute="add" action="addamountprocess"
		method="post">

		<!-- fieldsets -->
		<fieldset>
			<h2 class="fs-title">Add Amount</h2>

			<form:select id="stateSelect" path="accno" style="width:100%">
				<form:option value="NONE" label="Select" />
				<form:options items="${countryList}" />

			</form:select>


			<form:input path="firstname" name="firstname" id="input"
 				placeholder="User Name" style="width:100%" required="required" readonly="true"/>
			<form:input path="totalamnt" name="totalamnt" id="totalamnt"
				placeholder="Amount To Add.." style="width:100%" required="required" />

			<form:button id="register" class="action-button" name="register">Credit</form:button>

		</fieldset>
	</form:form>

	<div class="clearfix"></div>

	<!-- about -->
	<br>
	<br>
	<br>
	<br>

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

	<script>
		//jQuery time
		var current_fs, next_fs, previous_fs; //fieldsets
		var left, opacity, scale; //fieldset properties which we will animate
		var animating; //flag to prevent quick multi-click glitches

		$(".next").click(
				function() {
					if (animating)
						return false;
					animating = true;

					current_fs = $(this).parent();
					next_fs = $(this).parent().next();

					//activate next step on progressbar using the index of next_fs
					$("#progressbar li").eq($("fieldset").index(next_fs))
							.addClass("active");

					//show the next fieldset
					next_fs.show();
					//hide the current fieldset with style
					current_fs.animate({
						opacity : 0
					}, {
						step : function(now, mx) {
							//as the opacity of current_fs reduces to 0 - stored in "now"
							//1. scale current_fs down to 80%
							scale = 1 - (1 - now) * 0.2;
							//2. bring next_fs from the right(50%)
							left = (now * 50) + "%";
							//3. increase opacity of next_fs to 1 as it moves in
							opacity = 1 - now;
							current_fs.css({
								'transform' : 'scale(' + scale + ')',
								'position' : 'absolute'
							});
							next_fs.css({
								'left' : left,
								'opacity' : opacity
							});
						},
						duration : 800,
						complete : function() {
							current_fs.hide();
							animating = false;
						},
						//this comes from the custom easing plugin
						easing : 'easeInOutBack'
					});
				});

		$(".previous").click(
				function() {
					if (animating)
						return false;
					animating = true;

					current_fs = $(this).parent();
					previous_fs = $(this).parent().prev();

					//de-activate current step on progressbar
					$("#progressbar li").eq($("fieldset").index(current_fs))
							.removeClass("active");

					//show the previous fieldset
					previous_fs.show();
					//hide the current fieldset with style
					current_fs.animate({
						opacity : 0
					}, {
						step : function(now, mx) {
							//as the opacity of current_fs reduces to 0 - stored in "now"
							//1. scale previous_fs from 80% to 100%
							scale = 0.8 + (1 - now) * 0.2;
							//2. take current_fs to the right(50%) - from 0%
							left = ((1 - now) * 50) + "%";
							//3. increase opacity of previous_fs to 1 as it moves in
							opacity = 1 - now;
							current_fs.css({
								'left' : left
							});
							previous_fs.css({
								'transform' : 'scale(' + scale + ')',
								'opacity' : opacity
							});
						},
						duration : 800,
						complete : function() {
							current_fs.hide();
							animating = false;
						},
						//this comes from the custom easing plugin
						easing : 'easeInOutBack'
					});
				});

		$(".submit").click(function() {
			return false;
		})
	</script>
	<script>
		$('#stateSelect').change(function() {
			var getValue = $(this).val();
			var myStringArray = getValue.split('@');
			$('#input').val(myStringArray[0]);
		});
	</script>
	<!-- //smooth-scrolling-of-move-up -->

	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="resources/js/bootstrap.js"></script>

</body>
</html>