<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Try Catch</title>
</head>
<body>
<%
	try {
		int num = 20 / 0;
	} catch (ArithmeticException e) {
		RequestDispatcher dispatcher = request.getRequestDispatcher("errorPage.jsp");
		dispatcher.forward(request, response);
	}
%>
</body>
</html>