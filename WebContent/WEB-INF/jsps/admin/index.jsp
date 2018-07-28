<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body leftmargin="0" topmargin="0" rightmargin="0">

<c:import url="header.jsp"></c:import>


<div class="content">
            <div class="container-fluid">
               
                
                <div class="row">
					<c:choose>
						<c:when test="${customer != null }">
						<div class="col-md-12">
	                        <div class="card">
	                        	 <div class="header">
                                <h4 class="title">Account Info</h4>
                                <p class="category"><c:out value="${msg }"></c:out> </p>
                            </div>
                            <div class="content">
                            		<h3>Account Number:  <c:out value="${customer.getAccountNumber() }"></c:out></h3>
												Name: <c:out value="${customer.getFname() }"></c:out> <c:out value="${customer.getMname() }"></c:out>
												 <c:out value="${customer.getLname() }"></c:out>
												<BR>
												Contact: <c:out value="${customer.getContact() }"></c:out> <BR>
												Address: <c:out value="${customer.getAddress() }"></c:out> <BR>
												Pan Number: <c:out value="${customer.getPanNumber() }"></c:out><BR>
												Balance: <c:out value="${customer.getBa().getMinBalance() }"></c:out><BR>
                            </div>
	                        </div>
                        </div>
							

							
						</c:when>
						<c:otherwise>
							 <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">About the Project</h4>
                                <p class="category">Bank System MVC </p>
                            </div>
                            <div class="content">
                                <ul>
                                	<li> Points </li>
                                	<li> Points </li>
                                	<li> Points </li>
                                	<li> Points </li>
                                	<li> Points </li>
                                	<li> Points </li>
                                	<li> Points </li>
                                	<li> Points </li>
                                	<li> Points </li>
                                </ul>
                                <div class="footer">
                                   
                                    <hr>
                                    <div class="stats">
                                        <i class="ti-reload"></i> @Your Name
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
						</c:otherwise>
					</c:choose>
                   
                    
                    
                </div>
                
                
             </div>   
</div>




<!--  <div id="header"><h1>Bank App</h1></div>
<div id="sidebar">
<ul>
<li><a href="${pageContext.request.contextPath }/AccountCreation">Account Creation</a></li>
<li> <a href="${pageContext.request.contextPath }/LoanProcess">Loan Process</a></li>
<li> <a href="${pageContext.request.contextPath }/CustomerSearch">Customer Search</a></li>
<li> <a href="${pageContext.request.contextPath }/Transactions">Transactions</a></li>
<li> <a href="${pageContext.request.contextPath }/login">Logout</a></li>

</ul>
</div>
<div id="main">
Welcome Admin
<br><br>
<c:if test="${customer!=null }">
<font color="red"><c:out value="${msg }"></c:out></font>
</c:if>
</div>




<c:if test="${customer!=null }">

<div id="content" align="center">
First Name: <c:out value="${customer.getFname() }"></c:out><br><br>

Middle Name: <c:out value="${customer.getMname() }"></c:out><br><br>


Last Name: <c:out value="${customer.getLname() }"></c:out><br><br>

Contact: <c:out value="${customer.getContact() }"></c:out><br><br>

Pan Number: <c:out value="${customer.getPanNumber() }"></c:out><br><br>

Address: <c:out value="${customer.getAddress() }"></c:out><br><br>

Balance: <c:out value="${customer.getBa().getMinBalance() }"></c:out><br><br>

Account Number: <c:out value="${customer.getAccountNumber() }"></c:out>

</div>

</c:if>
-->




</body>
</html>