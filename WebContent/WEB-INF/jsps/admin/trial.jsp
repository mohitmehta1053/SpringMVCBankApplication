<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


    <div class="card card-user">
                            <div class="image">
                                <img src="assets/img/background.jpg" alt="..."/>
                            </div>
                            <div class="content">
                                <div class="author">
                                  <img class="avatar border-white" src="assets/img/faces/face-2.jpg" alt="..."/>
                                  <h4 class="title">Chet Faker<br />
                                     <a href="#"><small>@chetfaker</small></a>
                                  </h4>
                                </div>
                                <p class="description text-center">
                                    "I like the way you work it <br>
                                    No diggity <br>
                                    I wanna bag it up"
                                </p>
                            </div>
                            <hr>
                            <div class="text-center">
                                <div class="row">
                                    <div class="col-md-3 col-md-offset-1">
                                        <h5>12<br /><small>Files</small></h5>
                                    </div>
                                    <div class="col-md-4">
                                        <h5>2GB<br /><small>Used</small></h5>
                                    </div>
                                    <div class="col-md-3">
                                        <h5>24,6$<br /><small>Spent</small></h5>
                                    </div>
                                </div>
                            </div>
                        </div>
        
        
        
        
        
        
        
       <!-- 
        <div id="main">
<h1>Customer Info</h1>
Name: <c:out value="${customer.getFname() }"/> &nbsp; <c:out value="${customer.getMname() }"/> &nbsp; <c:out value="${customer.getLname() }"/>
<BR>
Contact: <c:out value="${customer.getContact() }"/> <BR>
Address: <c:out value="${customer.getAddress() }"/> <BR>
Pan Number: <c:out value="${customer.getPanNumber() }"/> <BR>

<h1>Account Info</h1>
<sv:form method="post" action="${pageContext.request.contextPath }/createCustomerAccount" modelAttribute="ba">
	Account Type <sv:select path="type" onchange="valueChange(this.value)">
		<option value="none">--select account type--</option>
		<option value="savings">Savings Account</option>
		<option value="current">Current Account</option>
	</sv:select> <BR><BR>
	<hr>
<div id="msg" ></div>
	
	<div id="balance"></div>
	<hr>
	<div id="interest"></div>
	<hr>
	<div id="overdraft"></div>
	
	<br><br><br><br><br><br>
	<input type="submit" value="Create Account"><BR><BR>
	
</sv:form>
</div>
 --> 
</body>
</html>