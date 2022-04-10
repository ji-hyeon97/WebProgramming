<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Process using AuthenticationFilter</title>
</head>
<body>
<%
	String userID = request.getParameter("userID");
	String userPW = request.getParameter("userPW");
	
	if (userID != null && userPW != null) {
		out.println("Welcome " + userID + " " + userPW + "<br>");
	}
%>
<button onClick="location.href='logout.jsp'">Logout</button>
</body>
</html>