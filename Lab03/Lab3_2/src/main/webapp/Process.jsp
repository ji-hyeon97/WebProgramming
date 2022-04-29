<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>
<%@ page import="java.util.Enumeration" %>
<%@ page import="member.Member" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lab3_2</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>

<jsp:useBean id="member" class="member.Member" scope="request" />
<jsp:setProperty name="member" property="*"/>

<div class="py-5 text-center">
    <div class="jumbotron">
<h2><jsp:getProperty name="member" property="name"/>님의 정보입니다</h2></div></div>

	<table class="table table-striped">
		<tr>
			<th scope="col">요청 파라미터 이름</th>
			<th scope="col">요청 파라미터 값</th>
		</tr>
		<%
			request.setCharacterEncoding("utf-8");	
			Enumeration<String> paramNames = request.getParameterNames();
			while (paramNames.hasMoreElements()) {
				String paramName = (String) paramNames.nextElement();
				out.print("<tr><td>" + paramName + " </td>\n");
				String paramValue = request.getParameter(paramName);
				out.println("<td> " + paramValue + "</td></tr>\n");
			}
		%>
	</table>
</body>
</html>