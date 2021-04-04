<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Luv2ode Company Home Page</title>
</head>
<body>

    <h1>Luv2ode Company Home Page</h1>
    <hr>
    
    <sec:authentication property="principal.username"/>
    <br><br>
    <sec:authentication property="principal.authorities"/>
    <hr>
    
    <sec:authorize access="hasRole('MANAGER')">
    <p>Welcome to the luv2code company home page! </p>
    
        <a href="${pageContext.request.contextPath }/leaders">Leadership Meeting</a>
    (Only for Manger peeps)
    
    </sec:authorize>
    
    <br>
    
    <sec:authorize access="hasRole('ADMIN')">
    <a href="${pageContext.request.contextPath }/systems">IT System Meeting</a>
    (Only for Admin peeps)
    
    </sec:authorize>
     
     <hr>
    
    <form:form action="${pageContext.request.contextPath }/logout" method="POST">
       <input type="submit" value="logout">
    </form:form>

</body>
</html>