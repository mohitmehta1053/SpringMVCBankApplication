<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@taglib prefix="sv" uri="http://www.springframework.org/tags/form"%>
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
							<h4 class="title">Search Account by Account Number</h4>
						</div>
						<div class="content">
							<sv:form method="post"
								action="${pageContext.request.contextPath }/SearchByAccountNumber"
								modelAttribute="customer">
								<div class="row">
									<div class="col-md-10">
										<div class="form-group">
											<label>Enter Account Number</label>
											<sv:input type="text" path="accountNumber" list="data" />
										</div>
									</div>


								</div>

								<div class="text-center">
									<input type="submit" class="btn btn-info btn-fill btn-wd"
										value="Search">
								</div>
								<div class="clearfix"></div>
								<hr>
							</sv:form>
						</div>
					</div>
				</div>


			</div>

			<div class="row">

				<div class="col-lg-12 col-md-12">
					<div class="card">
						<div class="header">
							<h4 class="title">
								<c:out value="${customer.getAccountNumber() }"></c:out>
							</h4>
						</div>
						<c:if test='${customer.getAccountNumber()!= "" }'>
							<div class="content">

								<div class="row">
									<div class="col-md-5">
										<div class="form-group">
											<label> Account Number</label>
											<c:out value="${customer.getAccountNumber()}"></c:out>
										</div>
									</div>



								</div>
								
					<div class="row">
									<div class="col-md-5">
										<div class="form-group">
											<label>First Name</label>
											<c:out value="${customer.getFname()}"></c:out>
										</div>
									</div>

									<div class="col-md-5">
										<div class="form-group">
											<label> Last Name</label>
											<c:out value="${customer.getLname()}"></c:out>
										</div>
									</div>
								</div>

								<div class="row">
									<div class="col-md-5">
										<div class="form-group">
											<label> Middle Name</label>
											<c:out value="${customer.getMname()}"></c:out>
										</div>
									</div>

									<div class="col-md-5">
										<div class="form-group">
											<label> Contact </label>
											<c:out value="${customer.getContact()}"></c:out>
										</div>
									</div>

								</div>

								<div class="row">
									<div class="col-md-5">
										<div class="form-group">
											<label> Address</label>
											<c:out value="${customer.getAddress()}"></c:out>
										</div>
									</div>

									<div class="col-md-5">
										<div class="form-group">
											<label> Pan Number </label>
											<c:out value="${customer.getPanNumber()}"></c:out>
										</div>
									</div>

								</div>
							<div class="clearfix"></div>

							</div>
						</c:if>
					</div>
				</div>

			</div>

		</div>
	</div>



	<datalist id="data"> <c:forEach items="${list}" var="cus">
		<option value="<c:out value="${cus.getAccountNumber() }"></c:out>">
			--
			<c:out value="${cus.getFname() }"></c:out>
			<c:out value="${cus.getLname() }"></c:out>
		</option>
	</c:forEach> </datalist>


















	<!--  
	
	<div id="main">

		<h2>Search Account by Account Number</h2>

	<sv:form method="post" action="${pageContext.request.contextPath }/SearchByAccountNumber" modelAttribute="customer">

	Enter Account Number : <sv:input type="text" path="accountNumber" list="data" />

			<input type="submit" value="Search">
		</sv:form>



		

		<hr>
		
		<h3><c:out value="${customer.getAccountNumber() }"></c:out></h3>

		<c:if test='${customer.getAccountNumber()!= "" }'>
			<div align="center">
				<h2>
					Customer Info from Search for Account Number :
					<c:out value="${customer.getAccountNumber()}"></c:out>
				</h2>

				First Name:
				<c:out value="${customer.getFname() }"></c:out>
				<br>
				<br> Middle Name:
				<c:out value="${customer.getMname() }"></c:out>
				<br>
				<br> Last Name:
				<c:out value="${customer.getLname() }"></c:out>
				<br>
				<br> Contact:
				<c:out value="${customer.getContact() }"></c:out>
				<br>
				<br> Pan Number:
				<c:out value="${customer.getPanNumber() }"></c:out>
				<br>
				<br> Address:
				<c:out value="${customer.getAddress() }"></c:out>
				<br>
				<br> Balance:
				<c:out value="${customer.getBalance() }"></c:out>
				<br>
				<br> Account Number:
				<c:out
					value="${customer.getAccountNumber() }"></c:out>

			</div>
		</c:if>


	</div>

 -->




</body>
</html>