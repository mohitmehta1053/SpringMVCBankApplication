<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<link rel="apple-touch-icon" sizes="76x76"
	href="resources/images/apple-icon.png">
<link rel="icon" type="image/png" sizes="96x96"
	href="resources/images/favicon.png">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

<title>Paper Dashboard by Creative Tim</title>

<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0'
	name='viewport' />
<meta name="viewport" content="width=device-width" />


<!-- Bootstrap core CSS     -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet" />

<!-- Animation library for notifications   -->
<link href="resources/css/animate.min.css" rel="stylesheet" />

<!--  Paper Dashboard core CSS    -->
<link href="resources/css/paper-dashboard.css" rel="stylesheet" />


<!--  CSS for Demo Purpose, don't include it in your project     -->
<link href="resources/css/demo.css" rel="stylesheet" />


<!--  Fonts and icons     -->
<link href="resources/fonts/font-awesome.css" rel="stylesheet">
<link href="resources/css/themify-icons.css" rel="stylesheet">
</head>
<body>

	<!--   Core JS Files   -->
	<script src="resources/js/jquery-1.10.2.js" type="text/javascript"></script>
	<script src="resources/js/bootstrap.min.js" type="text/javascript"></script>

	<!--  Checkbox, Radio & Switch Plugins -->
	<script src="resources/js/bootstrap-checkbox-radio.js"></script>

	<!--  Charts Plugin -->
	<script src="resources/js/chartist.min.js"></script>

	<!--  Notifications Plugin    -->
	<script src="resources/js/bootstrap-notify.js"></script>

	<!-- Paper Dashboard Core javascript and methods for Demo purpose -->
	<script src="resources/js/paper-dashboard.js"></script>

	<!-- Paper Dashboard DEMO methods, don't include it in your project! -->
	<script src="resources/js/demo.js"></script>

	<script type="text/javascript">
    	$(document).ready(function(){

        	demo.initChartist();

        	$.notify({
            	icon: 'ti-gift',
            	message: "Welcome to <b>My Bank Application</b> - created using Java Spring Framework."

            },{
                type: 'success',
                timer: 4000
            });

    	});
	</script>

	<div class="wrapper">
		<div class="sidebar" data-background-color="white"
			data-active-color="danger">

			<!--
		Tip 1: you can change the color of the sidebar's background using: data-background-color="white | black"
		Tip 2: you can change the color of the active button using the data-active-color="primary | info | success | warning | danger"
	-->

			<div class="sidebar-wrapper">

				<div class="logo">
					<a href="#" class="simple-text"> My Bank </a>
				</div>


				<ul class="nav">
					<li class="active"><a
						href="${pageContext.request.contextPath }/AccountCreation"> <i
							class="ti-panel"></i>
							Create Account
					</a></li>
					<br><br>
					<li><a href="${pageContext.request.contextPath }/LoanProcess">
							<i class="ti-user"></i>
							Loan Process
					</a></li>
					<br><br>
					<li><a
						href="${pageContext.request.contextPath }/CustomerSearch"> <i
							class="ti-view-list-alt"></i>
							Customer Search
					</a></li>
					<br><br>
					<li><a href="${pageContext.request.contextPath }/Transactions">
							<i class="ti-text"></i>
							Transactions
					</a></li>
					<br><br>
					<li><a href="${pageContext.request.contextPath }/login"> <i
							class="ti-pencil-alt2"></i>
							Logout
					</a></li>
					<br><br>
					<li><a href="${pageContext.request.contextPath }/cms/dashboard"> <i
							class="ti-pencil-alt2"></i>
							CMS Login
					</a></li>
					
					<li><a href="${pageContext.request.contextPath }/EditProfile">
							<i class="ti-user"></i>
							Edit Profile
							
					</a></li>
					
				</ul>


			</div>
		</div>


		<div class="main-panel">

			<nav class="navbar navbar-default">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar bar1"></span> <span class="icon-bar bar2"></span>
						<span class="icon-bar bar3"></span>
					</button>
					<a class="navbar-brand" href="#">Welcome <c:out
							value="${username }" /></a>
						
							
				</div>
				<div class="collapse navbar-collapse">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="#" class="dropdown-toggle" data-toggle="dropdown"> <i class="ti-panel"></i>
								Profile
						</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown"> <i class="ti-bell"></i>
								<p class="notification">5</p>
								<p>Notifications</p> <b class="caret"></b>
						</a>
							<ul class="dropdown-menu">
								<li><a href="#">Notification 1</a></li>
								<li><a href="#">Notification 2</a></li>
								<li><a href="#">Notification 3</a></li>
								<li><a href="#">Notification 4</a></li>
								<li><a href="#">Another notification</a></li>
							</ul></li>
						<li><a href="#"> <i class="ti-settings"></i>
								<p>Settings</p>
						</a></li>
					</ul>

				</div>
			</div>
			</nav>

		
		

</body>
</html>