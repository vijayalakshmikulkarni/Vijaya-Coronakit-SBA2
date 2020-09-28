<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://www.springframework.org/security/tags" prefix="security" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User home</title>
</head>
<body>
<jsp:include page="header.jsp" />
<h3>Hello <security:authentication property="principal.username"/></h3>
<hr/>
<h3>This is User dashboard!!!</h3>

<security:authorize access="hasRole('USER')">
	<hr/>
	<a href="${pageContext.request.contextPath}/user/show-list">Show product list to add</a>
	<span>|</span>
	<a href="${pageContext.request.contextPath}/user/show-kit">Show Kit</a>
</security:authorize>


</body>
</html>




		
		