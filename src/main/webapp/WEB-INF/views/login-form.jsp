<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="spring-form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Form</title>
</head>
<body>
<h3>Log In</h3>
<core:if test="${param.error ne null}">
	<i>Invalid Credentials!!!</i>
</core:if>
<core:if test="${param.logout != null}">
	<i>You have been logged out successfully!!!</i>
</core:if>
<spring-form:form action="${pageContext.request.contextPath}/validate" method="POST">

	<hr/>
	<label>Enter user name</label>
	<input type="text" name="username" />
	<br/>
	<br/>
	<label>Enter password</label>
	<input type="password" name="password" />
	<br/>
	<br/>
	<input type="submit" value="Login" />
</spring-form:form>
<hr/>

</body>
</html>