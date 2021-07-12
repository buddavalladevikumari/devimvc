<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
       
         <%@ taglib uri= "http://java.sun.com/jsp/jstl/core"   prefix = "c"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <c:out value="${heading}"/>>

<table>
<tr>
<th>id</th>
<th>customer name</th>
<th>email</th>
</tr>
<c:forEach items = "${list}" var="eachItem"/>
<!-- <tr> -->
<%-- <th><c:out values="${eachItem.id}"/></th> --%>
<%-- <th><c:out values="${eachItem.customername}"/></th> --%>
<%-- <th><c:out values="${eachItem.email}"/></th> --%>
<!-- </tr> -->
</table>
</body>
</html>