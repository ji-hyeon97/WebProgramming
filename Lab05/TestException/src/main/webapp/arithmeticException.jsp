<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Test Error</title>
</head>
<body>

<%-- web.xml --%>
<%--
	<error-page>
		<exception-type>java.lang.ArithmeticException</exception-type>
		<location>/isErrorPage.jsp</location>
	</error-page>
--%>

<%= 20/0 %>

</body>
</html>