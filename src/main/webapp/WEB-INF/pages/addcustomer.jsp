<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://www.springframework.org/tags/form"  prefix="form" %>
    <%@ taglib uri ="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add customer</title>
</head>
<body>

<p> RowAdded</p><c:out value ="${rowAdded }"/>

<form:form method = "post" action = "customers">

<form:label path ="id">customer id</form:label>
<form:input path ="id"/>

<form:label path ="customername">customer name</form:label>
<form:input path ="customername"/>

<form:label path ="email">Email</form:label>
<form:input path ="email"/>


<input type ="submit" value ="Add">
</form:form>


</body>
</html>