<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:import url="header.jsp"></c:import>  

<h3> Loan Process</h3>

 Status : <c:out value="${cibil.isStatus() }"></c:out>
 <br>
 
 
 Score : <c:out value="${cibil.getScore() }"></c:out>
</body>
</html>