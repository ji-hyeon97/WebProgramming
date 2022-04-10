<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Session Process</title>
</head>
<body>
<%
	String id = request.getParameter("userID");
	String pw = request.getParameter("userPW");
	
	if (id.equals("ace") && pw.equals("12345")) {
		session.setMaxInactiveInterval(1 * 60); // 1 minute
		session.setAttribute("userID", id);
		session.setAttribute("userPW", pw);
		out.println("Session Successful~");
		out.println("Welcome " + id);
		response.sendRedirect("index.jsp");
	}
	else {
		out.println("Session Failed");
	}
%>
</body>
</html>