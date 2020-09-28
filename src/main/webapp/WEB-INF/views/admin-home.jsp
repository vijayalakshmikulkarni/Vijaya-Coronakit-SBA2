<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://www.springframework.org/security/tags" prefix="security" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin home</title>
</head>
<body>
<jsp:include page="header.jsp" />
<h3>Hello <security:authentication property="principal.username"/></h3>
<hr/>
<h3>This is Admin dashboard!!!</h3>

<security:authorize access="hasRole('ADMIN')">
	<hr/>
	<a href="${pageContext.request.contextPath}/admin/product-entry">Add New Product</a>
	<span>|</span>
	<a href="${pageContext.request.contextPath}/admin/product-list">Products List</a>
</security:authorize>


</body>
</html>