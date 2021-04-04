<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bootstrap Form</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css"
	integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p"
	crossorigin="anonymous" />
</head>
<body>

	<div class="container">
		<div class="row justify-content-center">
			<div class="col-md-3">
				<h3 class="mt-4 mb-3">Admin Area</h3>
			</div>
		</div>

		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-4">
					<div class="alert alert-primary" role="alert">Sign In</div>
					<div class="card">
						<div class="card-body">
							<form:form
								action="${pageContext.request.contextPath }/authenticateTheUser"
								method="POST">
								<c:if test="${param.error != null }">
								   <div class="alert alert-danger" role="alert">Sorry! you entered a invalid username/password </div>
								</c:if>
								<c:if test="${param.logout != null }">
								   <div class="alert alert-primary" role="alert">Success Logout (: </div>
								</c:if>
								<div class="form-group">
									<div class="input-group flex-nowrap mb-2">
										<span class="input-group-text" id="addon-wrapping"><i
											class="fas fa-user"></i></span> <input type="text" name="username"
											class="form-control" placeholder="Username"
											aria-label="Username" aria-describedby="addon-wrapping">
									</div>
									<div class="input-group flex-nowrap mb-2">
										<span class="input-group-text" id="addon-wrapping"><i
											class="fas fa-lock"></i></span> <input type="password" name="password"
											class="form-control" placeholder="Password"
											aria-label="Username" aria-describedby="addon-wrapping">
									</div>
									<button class="btn btn-success">Login</button>
								</div>
							</form:form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>