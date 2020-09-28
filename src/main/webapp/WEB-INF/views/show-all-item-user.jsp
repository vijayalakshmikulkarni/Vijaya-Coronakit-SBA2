<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Corona Kit-All Products</title>

</head>
<body>
	<jsp:include page="header.jsp" />	
	<ul>
		<li><a href="${pageContext.request.contextPath}/user/home">Home</a></li>
		<li><a href="${pageContext.request.contextPath}/user/show-kit">Show Kit</a></li>
	</ul>

	<h1>Products Available</h1>
	<c:choose>
		<c:when test="${products==null || products.isEmpty() }">
			<p>No products found!!</p>
		</c:when>
		<c:otherwise>
			<div>
				<div >
						<table border="1" cellspacing="5px" cellpadding="5px">
							<thead>
								<tr>
									<th>Product Name</th>
									<th>Product Description</th>
									<th>Cost</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${products }" var="product">
									<tr>
										<td>${product.productName }</td>
										<td>${product.productDescription }</td>
										<td>${product.cost }</td>
										<td><a href="${pageContext.request.contextPath}/user/add-to-cart/${product.id }">Add to cart</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
				</div>
			</div>
		</c:otherwise>
	</c:choose>
</body>
</html>