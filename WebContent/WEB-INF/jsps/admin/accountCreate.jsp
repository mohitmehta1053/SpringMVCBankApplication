<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="sv" uri="http://www.springframework.org/tags/form" %>
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
                   
                    <div class="col-lg-12 col-md-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Add Customer Details</h4>
                            </div>
                            <div class="content">
                                <sv:form method="post" action="${pageContext.request.contextPath }/createCustomer" modelAttribute="customer">
                                    <div class="row">
                                        <div class="col-md-5">
                                            <div class="form-group">
                                                <label>First Name</label>
                                               <sv:input type="text"  path="fname" class="form-control border-input" placeholder="Enter First Name"/>
                                            </div>
                                        </div>
                                       
									 <div class="col-md-5">
                                            <div class="form-group">
                                                <label> Last Name</label>
                                                <sv:input type="text" path="lname" class="form-control border-input" placeholder="Enter Last Name" />
                                            </div>
                                        </div>                                       
                                    </div>

                                    <div class="row">
                                        <div class="col-md-5">
                                            <div class="form-group">
                                                <label>  Middle Name</label>
                                              <sv:input type="text" class="form-control border-input"
													path="mname" placeholder="Enter Middle Name"/>
                                            </div>
                                        </div>
                                        
                                         <div class="col-md-5">
                                            <div class="form-group">
                                                <label> Contact </label>
                                                <sv:input type="text" path="contact" class="form-control border-input" placeholder="Enter Contact Number" />
                                            </div>
                                        </div> 
                                       
                                    </div>

                                   <div class="row">
                                        <div class="col-md-5">
                                            <div class="form-group">
                                                <label> Address</label>
                                              <sv:input type="text" class="form-control border-input"
													path="address" placeholder="Enter Address"/>
                                            </div>
                                        </div>
                                        
                                         <div class="col-md-5">
                                            <div class="form-group">
                                                <label> Pan Number </label>
                                                <sv:input type="text" path="panNumber" class="form-control border-input" placeholder="Enter Pan Number" />
                                            </div>
                                        </div> 
                                       
                                    </div>

                           
                                    <div class="text-center">
                                        <input type="submit" class="btn btn-info btn-fill btn-wd" value="Create Account">
                                    </div>
                                    <div class="clearfix"></div>
                                </sv:form>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </div>


</body>
</html>