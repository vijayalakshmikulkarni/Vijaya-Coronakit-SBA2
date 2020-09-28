
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Products List</title>
</head>
<body>
	
	 <jsp:include page="header.jsp" /> 
	<h3>Products List</h3>
	
	<ul>
		<li><a href="${pageContext.request.contextPath}/admin/home">Home</a></li>
		<li><a href="${pageContext.request.contextPath}/admin/product-entry">Add Product</a></li>
	</ul>
			
	<c:choose>
		<c:when test="${products==null || products.isEmpty() }">
			<p>No Products Found</p>
		</c:when>
		<c:otherwise>
			<table border="1" cellspacing="5px" cellpadding="5px">
				<tr>
					<th>Id</th>
					<th>ProductName</th>
					<th>Cost</th>
					<th>Product Description</th>
					<th>Action</th>
				</tr>
				<c:forEach items="${products }" var="product">
					<tr>
					<td>${product.id }</td>
					<td>${product.productName }</td>
					<td>${product.cost }</td>
					<td>${product.productDescription }</td>
					
					<td>
						<a href="${pageContext.request.contextPath }/admin/product-delete/${product.id }">DELETE</a> <span>|</span>
						
					</td>
				</tr>				
				</c:forEach>
			</table>
		</c:otherwise>
	</c:choose>
</body>
</html>