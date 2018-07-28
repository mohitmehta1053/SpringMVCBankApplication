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

<c:import url="header.jsp"></c:import>

	<div class="content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-9">


					<div class="card card-user">
						<div class="image">
							<img src="${pageContext.request.contextPath }/resources/images/background.jpg" alt="..." />
						</div>
						<div class="content">
							<div class="author">
								<img class="avatar border-white"
									src="${pageContext.request.contextPath }/resources/images/faces/face-2.jpg" alt="..." />
								<h4 class="title">
									Chet Faker<br /> <a href="#"><small>@chetfaker</small></a>
								</h4>
							</div>
							<p class="description text-center">
								"I like the way you work it <br> No diggity <br> I
								wanna bag it up"
							</p>
						</div>
						<hr>
						<div class="text-center">
							<div class="row">
								<div class="col-md-3 col-md-offset-1">
									<h5>
										12<br />
										<small>Files</small>
									</h5>
								</div>
								<div class="col-md-4">
									<h5>
										2GB<br />
										<small>Used</small>
									</h5>
								</div>
								<div class="col-md-3">
									<h5>
										24,6$<br />
										<small>Spent</small>
									</h5>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>