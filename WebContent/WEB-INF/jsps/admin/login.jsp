<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="${pageContext.request.contextPath }/resources/images/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/fonts/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/util.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/resources/css/main.css">
<!--===============================================================================================-->
</head>
<body onload='document.f.username.focus();'>

<font color="red" size="15"><c:out value="${msg1 }"></c:out></font>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
			<div class="login100-pic js-tilt" data-tilt>
					<img src="${pageContext.request.contextPath }/resources/images/img-01.png" alt="IMG">
				</div>
				
				
				<form class="login100-form validate-form" name='f' action='${pageContext.request.contextPath }/login' method='POST'>
					<span class="login100-form-title">
						Employee Login
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
						<input class="input100" type="text" name='username' value='' placeholder="Email">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<input class="input100" type="password"  name='password'  placeholder="Password">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					
					<div class="container-login100-form-btn">
						
							<input class="login100-form-btn" name="submit" type="submit" value="Login"/>
						
					</div>

					

					
				</form>
				
			
			</div>
		</div>
	</div>





<!--  
	<h3>Login with Username and Password</h3>
<c:if test='${param.status == "error" }'>
<font color="red">Invalid Login Details, please try again!!</font>
</c:if>
<c:if test='${param.status == "logout" }'>
<font color="red">You have Logged out Successfully!!!</font>
</c:if>
<form name='f' 
action='${pageContext.request.contextPath }/login' method='POST'>
<table>
	<tr><td>Username:</td><td><input type='text' name='username' value=''></td></tr>
	<tr><td>Password:</td><td><input type='password' name='password'/></td></tr>
	<tr><td colspan='2'><input name="submit" type="submit" value="Login"/></td></tr>
	
</table>
</form>
 -->
 
<!--===============================================================================================-->	
	<script src="resources/js/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/js/popper.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/js/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="resources/js/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
<!--===============================================================================================-->
	<script src="${pageContext.request.contextPath }/js/main.js"></script>



</body>
</html>