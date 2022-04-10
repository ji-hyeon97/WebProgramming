<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="errorPage.jsp" %> <%-- page directive --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Test Error</title>
</head>
<body>
<%-- page directive --%>

<%= 20/0 %> <%-- arithmetic exception --%>

</body>
</html>