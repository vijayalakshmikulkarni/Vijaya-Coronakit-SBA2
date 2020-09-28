<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Checkout</title>

</head>
<body>
	<jsp:include page="header.jsp" />	
	<ul >
		<li><a  href="${pageContext.request.contextPath}/user/home">Home</a></li>
		<li><a  href="${pageContext.request.contextPath}/user/show-kit">Show Kit</a></li>
		<li><a  href="${pageContext.request.contextPath}/user/show-list">Show Products List</a></li>
	</ul>
	<div>
	<h1>Provide Address</h1>
		<table>
			<tr>
				<td>
					<form action="${pageContext.request.contextPath}/user/finalize" method="post">
						<label>Address	:    <textarea name="address" rows="3" cols="40" required></textarea></label> <br> <br>
						<div>
							<button >Place Order >></button>
						</div>
					</form>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>