<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>view product</title>
</head>
<body>
	<b>Details about the product</b>
	<c:url value="/resources/images/${product.id}.png }" var="imageUrl"></c:url>
	<table>
		<tr>
			<td><img src="${imageUrl }" height="70" width="70"></td>
		</tr>
		<tr>
			<td>Product Name:</td>
			<td>${product.productName }</td>
		</tr>
		<tr>
			<td>Price:</td>
			<td>${product.price }</td>
		</tr>
		<tr>
			<td>Description:</td>
			<td>${product.description}</td>
		</tr>
		<tr>
			<td>Quantity:</td>
			<td>${product.quantity }</td>
		</tr>
	</table>
	<c:url value="/all/product/getallproducts" var="url1"></c:url>
	<a href="{url1}">Back to Product list</a><br>
	
</body>
</html>
<%@include file="footer.jsp"%>