<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container wrapper">
<div class="contaner">
<c:url value="/all/savecustomer" var="url"></c:url>
<form:form action="${url }" modelAttribute="customer">

<div class="boxed" style="border:1px solid">
	<div class="form-group">
	<form:label path="firstName">Enter FirstName</form:label>
	<form:input path="firstName" class="form-control"/>
	<form:errors path="firstName" cssStyle="color:red"></form:errors>
	</div>
	<div class="form-group">
	<form:label path="lastName">Enter LastName</form:label>
	<form:input path="lastName" class="form-control"/>
	<form:errors path="lastName" cssStyle="color:red"></form:errors>
	</div>
	<div class="form-group">
	<form:label path="email">Enter Email</form:label>
	<form:input path="email" class="form-control"/>
	<form:errors path="email" cssStyle="color:red"></form:errors>
	</div>
	<div class="form-group">
	<form:label path="phone">Enter Phone no</form:label>
	<form:input path="phone" class="form-control"/>
	<form:errors path="phone" cssStyle="color:red"></form:errors>
	</div>
</div>
<br>
<div class="boxed" style="border:1px solid">
	<div class="form-group">
	<form:label path="user.userName">Enter Username</form:label>
	<form:input path="user.userName" class="form-control"/>
	<form:errors path="user.userName" cssStyle="color:red"></form:errors>
	</div>
	<div class="form-group">
	<form:label path="user.password">Enter Password</form:label>
	<form:input type="password" path="user.password" class="form-control"/>
	<form:errors path="user.password" cssStyle="color:red"></form:errors>
	</div>
</div>
<br>
<div class="boxed" style="border:1px solid">
	<div class="form-group">
	<form:label path="BillingAddress.streetName">Enter Street Name</form:label>
	<form:input path="BillingAddress.streetName" class="form-control"/>
	<form:errors path="BillingAddress.streetName" cssStyle="color:red"></form:errors>
	</div>
	<div class="form-group">
	<form:label path="BillingAddress.apartmentNumber">Enter Apartment Number</form:label>
	<form:input path="BillingAddress.apartmentNumber" class="form-control"/>
	<form:errors path="BillingAddress.apartmentNumber" cssStyle="color:red"></form:errors>
	</div>
	<div class="form-group">
	<form:label path="BillingAddress.state">Enter State</form:label>
	<form:input path="BillingAddress.state" class="form-control"/>
	<form:errors path="BillingAddress.state" cssStyle="color:red"></form:errors>
	</div>
	<div class="form-group">
	<form:label path="BillingAddress.city">Enter City</form:label>
	<form:input path="BillingAddress.city" class="form-control"/>
	<form:errors path="BillingAddress.city" cssStyle="color:red"></form:errors>
	</div>
	<div>
	<form:label path="BillingAddress.country">Enter Country</form:label>
	<form:input path="BillingAddress.country" class="form-control"/>
	<form:errors path="BillingAddress.country" cssStyle="color:red"></form:errors>
	</div>
	<div>
	<form:label path="BillingAddress.zipcode">Enter Zipcode</form:label>
	<form:input path="BillingAddress.zipcode" class="form-control"/>
	<form:errors path="BillingAddress.zipcode" cssStyle="color:red"></form:errors>
	</div>
</div>
<br>
<div class="boxed" style="border:1px solid">
	<div class="form-group">
	<form:label path="ShippingAddress.streetName">Enter Street Name</form:label>
	<form:input path="ShippingAddress.streetName" class="form-control"/>
	<form:errors path="ShippingAddress.streetName" cssStyle="color:red"></form:errors>
	</div>
	<div class="form-group">
	<form:label path="ShippingAddress.apartmentNumber">Enter Apartment Number</form:label>
	<form:input path="ShippingAddress.apartmentNumber" class="form-control"/>
	<form:errors path="ShippingAddress.apartmentNumber" cssStyle="color:red"></form:errors>
	</div>
	<div class="form-group">
	<form:label path="ShippingAddress.state">Enter State</form:label>
	<form:input path="ShippingAddress.state" class="form-control"/>
	<form:errors path="ShippingAddress.state" cssStyle="color:red"></form:errors>
	</div>
	<div class="form-group">
	<form:label path="ShippingAddress.city">Enter City</form:label>
	<form:input path="ShippingAddress.city" class="form-control"/>
	<form:errors path="ShippingAddress.city" cssStyle="color:red"></form:errors>
	</div>
	<div>
	<form:label path="ShippingAddress.country">Enter Country</form:label>
	<form:input path="ShippingAddress.country" class="form-control"/>
	<form:errors path="ShippingAddress.country" cssStyle="color:red"></form:errors>
	</div>
	<div>
	<form:label path="ShippingAddress.zipcode">Enter Zipcode</form:label>
	<form:input path="ShippingAddress.zipcode" class="form-control"/>
	<form:errors path="ShippingAddress.zipcode" cssStyle="color:red"></form:errors>
	</div>
</div>
	<div class="form-group">
	<input type="submit" value="Register">
	</div>
</form:form>
</div>
</div>
</body>
</html>