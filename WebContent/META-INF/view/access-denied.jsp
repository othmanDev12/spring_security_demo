<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Luv2coce - Access Denied Page</title>
</head>
<body>

    <h2> Access Denied -You are not authorized to access this resource.</h2>
    
    <hr>
    <a href="${pageContext.request.contextPath}/">Back to Home Page</a>
    
   

</body>
</html>