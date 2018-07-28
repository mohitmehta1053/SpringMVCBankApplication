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
<h3>Customer Details</h3>
<hr>

<c:import url="CMSHeader.jsp"></c:import> 

<div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Details of Each Customer</h4>
                                <p class="category">Fields are AccountNumber, FName , Lname Contact, Balance
                            </div>
                            <div class="content table-responsive table-full-width">
                                <table class="table table-striped">
                                    <thead>
                                        <th>Account Number</th>
                                    	<th>First Name</th>
                                    	<th>Last Name</th>
                                    	<th>Contact</th>
                                    	<th>Balance</th>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${list }" var="c">
                                        <tr>
                                        	<td><c:out value="${c.getAccountNumber() }"></c:out></td>
                                        	<td><c:out value="${c.getFname() }"></c:out></td>
                                        	<td><c:out value="${c.getLname() }"></c:out></td>
                                        	<td><c:out value="${c.getContact() }"></c:out></td>
                                        	<td><c:out value="${c.getBalance() }"></c:out></td>
                                        </tr>
                                        </c:forEach>
                                        
                                    </tbody>
                                </table>

                            </div>
                            
                            
                            <div class="content">
                                <form action="${pageContext.request.contextPath }/cms/SortCustomerDetails"
										method="POST">
                                   
                                  
                                    <div class="row">
                                        <div class="col-md-12">
                                           Sort By <select name="sort"  class="form-control border-input"> 
                                           
														<option value="fname">fname</option>
														<option value="lname">lname</option>
														<option value="balance_in_Ascending">balance in Ascending</option>
														<option value="balance_in_Descending">balance in Descending</option>
														

												</select>
                                        </div>
                                    </div>

                           
                                    <div class="text-center">
                                        <input type="submit" class="btn btn-info btn-fill btn-wd" value="Sort">
                                    </div>
                                    <div class="clearfix"></div>
                                </form>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </div>


</body>
</html>