<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Welcome</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light d-flex justify-content-center align-items-center vh-100">
    <div class="card shadow p-4 text-center" style="width: 100%; max-width: 400px;">
        <!-- Check session for username -->
        <c:choose>
            <c:when test="${not empty sessionScope.username}">
                <h2 class="mb-4">Welcome, ${sessionScope.username}!</h2>
                <p>Thank you for logging in.</p>
                <a href="login.jsp" class="btn btn-danger w-100 mt-3">Logout</a>
            </c:when>
            <c:otherwise>
                <script>window.location = 'login.jsp';</script>
            </c:otherwise>
        </c:choose>
    </div>
</body>
</html>
