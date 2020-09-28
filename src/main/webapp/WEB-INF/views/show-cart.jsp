<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show kit</title>


</head>
<body>
	<jsp:include page="header.jsp" />	
	<ul >
		<li><a href="${pageContext.request.contextPath}/user/home">Home</a></li>
		<li><a href="${pageContext.request.contextPath}/user/show-list">Show products list</a></li>
	</ul>

	<h2>Shopping cart - Show kit details</h2>
	<c:choose>
		<c:when test="${products==null || products.isEmpty() }">
			<div >No products found. Please add products to the cart!!</div>
		</c:when>
		<c:otherwise>
			<div>
				<div>
						<table border="1" cellspacing="5px" cellpadding="5px">
							<thead>
								<tr>
									<th >ProductName</th>
									<th >Product Description</th>
									<th >Cost</th>
									<th >Quantity</th>
									<th >Total Amount</th>
									<th >Action</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${products }" var="product">
									<tr>
										<td>${product.productName }</td>
										<td>${product.productDescription }</td>
										<td>${product.cost }</td>
										<c:choose>
											<c:when test="${cart[product.id]==null}">
												<td>0</td>
												<td>0</td>
											</c:when>
											<c:otherwise>
											<td>${cart[product.id].quantity}</td>
											<td>${cart[product.id].amount}</td>
											</c:otherwise>
										</c:choose>
									<td><a href="${pageContext.request.contextPath}/user/delete/${product.id }">Delete</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<br>
					<a  href="${pageContext.request.contextPath}/user/checkout">Checkout >></a>
				</div>
			</div>
		</c:otherwise>
	</c:choose>
</body>
</html>