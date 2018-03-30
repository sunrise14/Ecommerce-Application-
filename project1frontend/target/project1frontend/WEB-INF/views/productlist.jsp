<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="header.jsp" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>productList</title>
<script>
	$(document).ready(function(){
		var searchCondition='${searchCondition}';
		$('.table').DataTable({
			"lengthMenu":[[3,5,7,-1],[3,5,7,"All"]],
			"oSearch":{
				"sSearch":searchCondition
			}
		})
	})
</script>
</head>

<body>
	<b>List of products</b>
	<div class="container">
		<table class="table tablestriped">
			<thead>
				<tr><th>Image</th><th>Product Name</th><th>Price</th><th>Quick Actions</th></tr>
			</thead>
			<tbody>
				<c:forEach items="${products}" var="p">
				<c:url value="/all/product/viewproduct/${p.id }" var="viewUrl"></c:url>
				<c:url value="/admin/product/deleteproduct/${p.id }" var="deleteUrl"></c:url>
				<c:url value="/resources/images/${p.id }.png" var="imageUrl"></c:url>
				<tr>
					<td><img src="${imageUrl }" height="50" width="50"></td>
					<td><a href="${viewUrl }">${p.productName}</a></td>
					<td>${p.price }</td>
					<td>
						<a href="${viewUrl }"><span class="glyphicon glyphicon-info-sign"></span></a>
						<a href="${deleteUrl}"><span class="glyphicon glyphicon-trash"></span></a>
						<c:url value="/admin/product/geteditform/${p.id }" var="editUrl"></c:url>
						<a href="${editUrl }"><span class="plyphicon glyphicon-pencil"></span></a>
					</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>