<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@taglib uri="http://www.springframework.org/security/tags" prefix="security" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Corona Kit-Summary</title>
</head>
<body>
	<jsp:include page="header.jsp" />	
	<ul >
	<li ><a  href="${pageContext.request.contextPath}/user/home">Home</a></li>
	</ul>
	<h1>Order Summary</h1>
	<c:choose>
		<c:when test="${orderedproducts==null || orderedproducts.isEmpty() }">
			<div ">No products found!!</div>
		</c:when>
		<c:otherwise>
			
					<table border="1" cellspacing="5px" cellpadding="5px">
						<tr>
							<th >User Name</th>
							<th >Corona Kit id</th>
							<th >Address</th>
							<th >Order Date</th>
							<th>Final Amount</th>
						</tr>
						<tr>
							<td><security:authentication property="principal.username"/></td>
							<td>${coronaKit.getId()}</td>
							<td>${coronaKit.getDeliveryAddress()}</td>
							<td>${coronaKit.getOrderDate()}</td>
							<td>${coronaKit.getTotalAmount() }</td>
						</tr>
					</table>
				
					<table border="1" cellspacing="5px" cellpadding="5px">
						<thead>
							<tr>
								<th >Product Name</th>
								<th >Product Description</th>
								<th >Cost</th>
								<th >Quantity</th>
								<th >Amount</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${orderedproducts }" var="product">
								<tr>
									<td>${product.productName }</td>
									<td>${product.productDescription }</td>
									<td>${product.cost }</td>
									<c:choose>
										<c:when test="${orderDetils[product.id]==null}">
											<td>0</td>
											<td>0</td>
										</c:when>
										<c:otherwise>
											<td>${orderDetils[product.id].quantity}</td>
											<td>${orderDetils[product.id].amount}</td>
										</c:otherwise>
									</c:choose>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				
		</c:otherwise>
	</c:choose>
</body>
</html>