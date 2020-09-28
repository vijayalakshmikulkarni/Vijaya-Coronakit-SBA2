
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Form</title>
</head>
<body>

	 <jsp:include page="header.jsp" /> 
	<h3>Add new product</h3>
	
	<ul>
		<li><a  href="${pageContext.request.contextPath}/admin/home">Home</a></li>
		<li><a  href="${pageContext.request.contextPath}/admin/product-list">Products List</a></li>
	</ul>
	
	
	
	<form:form action="${pageContext.request.contextPath }/admin/product-save" method="POST" modelAttribute="product">
				
		<div>
			<form:label path="productName">Product Name: </form:label>
			<form:input type="text" path="productName" />
			<form:errors path="productName"/>
		</div>		
		<div>
			<form:label path="cost">Cost: </form:label>
			<form:input type="number" path="cost" />
			<form:errors path="cost"/>			
		</div>
		<div>
			<form:label path="productDescription">Product Description: </form:label>
			<form:input type="text" path="productDescription" />
			<form:errors path="productDescription"/>
		</div>
		
		<button>SAVE</button>		
	</form:form>
	
	
	
</body>
</html>