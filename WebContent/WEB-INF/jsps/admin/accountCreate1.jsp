<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sv" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<script type="text/javascript">

function valueChange(value)
{
	
	if(value=="none")
		{
			document.getElementById("msg").innerHTML="Select a category";
			return ;
			
		}
	if(value=="savings")
	{
		document.getElementById("balance").innerHTML="Min Balance:1000";
		document.getElementById("interest").innerHTML="Interest rate : 6%";
		document.getElementById("overdraft").innerHTML="OverDraft: 0";
		return ;
		
	}

	
	if(value=="current")
	{
		document.getElementById("balance").innerHTML="Min Balance:5000";
		document.getElementById("interest").innerHTML="Interest rate: 0%";
		document.getElementById("overdraft").innerHTML="OverDraft : 5000";
		return ;
		
	}
	
	
	
	
	}

</script>


</head>
<body leftmargin="0" topmargin="0" rightmargin="0">

	<c:import url="header.jsp"></c:import>

	<div class="content">
		<div class="container-fluid">

			<div class="row">

				<div class="col-md-12">
					<div class="card">
						<div class="header">
							<h4 class="title">Customer Details</h4>
							<p class="category">Check the details</p>
						</div>
						<div class="content">
							<div class="row">
								<div class="col-md-5">
									<div class="form-group">
										<label>First Name</label>
										<c:out value="${customer.getFname() }" />
									</div>
								</div>

								<div class="col-md-5">
									<div class="form-group">
										<label> Last Name</label>
										<c:out value="${customer.getLname() }" />
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-md-5">
									<div class="form-group">
										<label>Middle Name</label>
										<c:out value="${customer.getMname() }" />
									</div>
								</div>

								<div class="col-md-5">
									<div class="form-group">
										<label> Contact</label>
										<c:out value="${customer.getContact() }" />
									</div>
								</div>
							</div>

							<div class="row">
								<div class="col-md-5">
									<div class="form-group">
										<label>Address</label>
										<c:out value="${customer.getAddress() }" />
									</div>
								</div>

								<div class="col-md-5">
									<div class="form-group">
										<label> Pan Number</label>
										<c:out value="${customer.getPanNumber() }" />
									</div>
								</div>
							</div>





						</div>
					</div>
				</div>
			</div>



			<div class="row">

				<div class="col-md-12">
					<div class="card">
						<div class="header">
							<h4 class="title">Select Account Type</h4>

						</div>
						<div class="content">



							<sv:form method="post"
								action="${pageContext.request.contextPath }/createCustomerAccount"
								modelAttribute="ba">

								<div class="row">
									<div class="col-md-12">
										Account Type
										<sv:select path="type" onchange="valueChange(this.value)">
											<option value="none">--select account type--</option>
											<option value="savings">Savings Account</option>
											<option value="current">Current Account</option>
										</sv:select>
										<BR>
										<BR>
										<hr>
									</div>
								</div>
								
								<div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label> Balance</label>
                                              <div id="balance"></div>
	<hr>
                                            </div>
                                        </div>
                                       
                                    </div>
                                    
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label> Interest</label>
                                              <div id="interest"></div>
	<hr>
                                            </div>
                                        </div>
                                       
                                    </div>
                                    
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label> OverDraft</label>
                                              <div id="overdraft"></div>
                                            </div>
                                        </div>
                                       
                                    </div>
							<div class="text-center">
                                        <input type="submit" class="btn btn-info btn-fill btn-wd" value="Create Customer's Account">
                                    </div>
                                    <div class="clearfix"></div>

							</sv:form>

						</div>
					</div>
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