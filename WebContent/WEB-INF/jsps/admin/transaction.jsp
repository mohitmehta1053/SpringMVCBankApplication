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
	function showForm(val) {
		if (val == 'deposit') {
			
			document.getElementById("deposit").style.display = "block";
			document.getElementById("withdraw").style.display = "none";
		} else if (val == 'withdraw') {
			document.getElementById("withdraw").style.display = "block";
			document.getElementById("deposit").style.display = "none";
		} else {
			document.getElementById("deposit").style.display = "none";
			document.getElementById("withdraw").style.display = "none";

		}

	}
</script>


</head>
<body leftmargin="0" topmargin="0" rightmargin="0">

<c:import url="header.jsp"></c:import>
 <div class="content">
            <div class="container-fluid">
                <div class="row">
                   
                    <div class="col-lg-12 col-md-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">Commit Transaction</h4>
                                <h6><c:out value="${msg }"></c:out></h6>
                                
                            </div>
                            <div class="content">
                            
                            
                            <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Deposit</label>
                                               <input type="radio" name="r" value="deposit" class="form-control border-input" onclick="showForm(this.value)">
                                            </div>
                                        </div>
                                        
                                        
                                         <div class="col-md-6">
                                            <div class="form-group">
                                                <label>Withdraw</label>
                                               <input type="radio" name="r" value="withdraw" class="form-control border-input" onclick="showForm(this.value)">
                                            </div>
                                        </div>
                                       
                                       
                                    </div>
                                    
                            
                            <div id="deposit" style="display: none;">
                                <form method="post" action="${pageContext.request.contextPath }/ProcessDeposit">
                                    
                                    
									
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label> Enter Account number</label>
                                              <input type="text" name="accountNumber" list="data" />
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

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label> Enter Amount</label>
                                              <input type="text" name="amount" />
                                            </div>
                                        </div>
                                    </div>

                           
                                    <div class="text-center">
                                        <input type="submit" class="btn btn-info btn-fill btn-wd" value="Process Deposit">
                                    </div>
                                    <div class="clearfix"></div>
                                </form>
                                
                                
                                </div>
                                
                                
                                
                                <div id="withdraw" style="display: none;">
                                <form method="post" action="${pageContext.request.contextPath }/ProcessWithdraw">
                                    
                                    
									
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label> Enter Account number</label>
                                              <input type="text" name="accountNumber" list="data" />
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

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label> Enter Amount</label>
                                              <input type="text" name="amount" />
                                            </div>
                                        </div>
                                    </div>

                           
                                    <div class="text-center">
                                        <input type="submit" class="btn btn-info btn-fill btn-wd" value="Process Withdrawal">
                                    </div>
                                    <div class="clearfix"></div>
                                </form>
                                
                                
                                </div>
                                
                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </div>
























	<div id="main">
	
	<c:out value="${msg }"></c:out>
		<hr>
		<input type="radio" name="r" value="deposit"
			onclick="showForm(this.value)"> Deposit &nbsp &nbsp &nbsp
		&nbsp <input type="radio" name="r" value="withdraw"
			onclick="showForm(this.value)"> Withdraw <br>
		<br>
		<br>
		<div id="deposit" style="display: none;">
			<form method="post"
				action="${pageContext.request.contextPath }/ProcessDeposit">
				Enter Account number<input type="text" name="accountNumber"
					list="data" />
				<datalist id="data"> <c:forEach items="${list}"
					var="cus">
					<option value="<c:out value="${cus.getAccountNumber() }"></c:out>">
						--
						<c:out value="${cus.getFname() }"></c:out>
						<c:out value="${cus.getLname() }"></c:out>
					</option>
				</c:forEach> </datalist>
				<br>
				<br>
				<br> Enter Amount<input type="text" name="amount" /> <br>
				<br>
				<br> <input type="submit" value="Process Deposit">

			</form>
		</div>
		<div id="withdraw" style="display: none;">
			<form method="post"
				action="${pageContext.request.contextPath }/ProcessWithdraw">
				Enter Account number:&nbsp &nbsp &nbsp<input type="text"
					name="accountNumber" list="data"> <br>
				<br>
				<br> 
				<datalist id="data"> <c:forEach items="${list}"
					var="cus">
					<option value="<c:out value="${cus.getAccountNumber() }"></c:out>">
						--
						<c:out value="${cus.getFname() }"></c:out>
						<c:out value="${cus.getLname() }"></c:out>
					</option>
				</c:forEach> </datalist>
				
				
				Enter Amount: &nbsp &nbsp &nbsp<input type="text"
					name="amount"> <br>
				<br>
				<br> <input type="submit" value="Process Withdrawal">

			</form>
		</div>

	</div>

	






</body>
</html>