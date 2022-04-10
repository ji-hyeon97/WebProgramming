<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Cookie Process</title>
</head>
<body>
<%
	String id = request.getParameter("userID");
	String pw = request.getParameter("userPW");

	
	if (id.equals("ace") && pw.equals("12345")) {
		Cookie cookieID = new Cookie("userID", id);
		Cookie cookiePW = new Cookie("userPW", pw);
		response.addCookie(cookieID);
		response.addCookie(cookiePW);
		out.println("Cookie Creation Successful~");
		out.println("Welcome " + id);
		response.sendRedirect("index.jsp");
	}
	else {
		out.println("Cookie Creation Failed");
	}
%>
</body>
</html>