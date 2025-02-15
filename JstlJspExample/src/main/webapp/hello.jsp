<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Hello JSP & JSTL</title>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/css/style.css' />">
</head>
<body>
	<h1>${message}</h1>
	<h2>Items:</h2>
	<ul>
		<c:forEach var="item" items="${items}">
			<li>${item}</li>
		</c:forEach>
	</ul>
	<!-- // c:out tag is used to print value on page
// C:set tag is used to declare variable and use it  -->
	<c:set var="name" value="Nirav" />
	<p>
		Hello,
		<c:out value="${name}" />
		!
	</p>
	<p></p>
	<c:out value="Narsing"></c:out>
	<!-- // c:if tag is used for conditional satements
// c:choose tag is used for switch cases -->
	<c:if test="${ 10>3 }">
		<p>10 is greater than 3</p>
	</c:if>
	<c:set var="marks" value="95" />
	<c:choose>
		<c:when test="${marks>90}">A Grade</c:when>
		<c:when test="${marks>80}">B Grade</c:when>
		<c:when test="${marks>70}">C Grade</c:when>
		<c:when test="${marks>60}">D Grade</c:when>
		<c:when test="${marks>50}">E Grade</c:when>
		<c:otherwise>Not satisfactory</c:otherwise>
	</c:choose>
	<c:catch var="error">
		<%= 10 / 0 %>
	</c:catch>
	<p>
		Error:
		<c:out value="${error}" />
	</p>
</body>
</html>
