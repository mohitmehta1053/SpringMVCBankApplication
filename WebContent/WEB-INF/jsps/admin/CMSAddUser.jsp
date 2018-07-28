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

<c:import url="CMSHeader.jsp"></c:import> 

	
      
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                   
                    <div class="col-lg-12 col-md-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Add User Details</h4>
                            </div>
                            <div class="content">
                                <form action="${pageContext.request.contextPath }/cms/CreateUser"
										method="POST">
                                    <div class="row">
                                        <div class="col-md-5">
                                            <div class="form-group">
                                                <label>Enter Username</label>
                                               <input type="text" name="username" class="form-control border-input" placeholder="Enter Username">
                                            </div>
                                        </div>
                                       
                                       
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label> Password</label>
                                              <input type="password" class="form-control border-input"
													name="password" placeholder="Enter Password">
                                            </div>
                                        </div>
                                       
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12">
                                           Select Authority <select name="authority"  class="form-control border-input"> 
														<option value="clerk">Clerk</option>
														<option value="admin">Admin</option>
														<option value="executive">Executive</option>
														<option value="manager">Manager</option>

												</select>
                                        </div>
                                    </div>

                           
                                    <div class="text-center">
                                        <input type="submit" class="btn btn-info btn-fill btn-wd" value="Add User">
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