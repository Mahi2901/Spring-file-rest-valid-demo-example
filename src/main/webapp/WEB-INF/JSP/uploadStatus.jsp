<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Spring Boot - Upload Status</h1>

<div>
<c:if test="${message}">  
    <h3><c:out value="${message}"/></h3>
    </c:if>
</div>

</body>
</html>