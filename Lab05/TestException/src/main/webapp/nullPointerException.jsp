<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Null Pointer Exception</title>
</head>
<body>

<%-- web.xml --%>
<%--
	<error-page>
		<error-code>500</error-code>
		<location>/errorCode500.jsp</location>
	</error-page>
--%>

<%
String str = null;
out.println(str.toString());
%>

</body>
</html>