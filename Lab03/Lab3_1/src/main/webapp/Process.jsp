<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<%request.setCharacterEncoding("utf-8");%>
<%@ page import="dto.FoodBean" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lab3_2</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
<jsp:useBean id="member" class="dto.FoodBean" scope="request" />
<jsp:setProperty name="member" property="*"/>   

<nav class="navbar navbar-expand navbar-dark bg-dark">
	<div class="container">
		<div class="navbar-header">
			<h1 class="navbar-brand"><jsp:getProperty name="member" property="sample_id"/>의 정보입니다</h1>
		</div>
	</div>
</nav>   
	<table class="table table-striped">
		<tr>
			<th scope="col">요청 파라미터 이름</th>
			<th scope="col">요청 파라미터 값</th>
		</tr>
		<%
			request.setCharacterEncoding("UTF-8");		
			Enumeration<String> paramNames = request.getParameterNames();
			while (paramNames.hasMoreElements()) {
				String paramName = (String) paramNames.nextElement();
				out.print("<tr><td>" + paramName + " </td>\n");
				String paramValue = request.getParameter(paramName);
				out.println("<td> " + paramValue + "</td></tr>\n");
			}
		%>
	</table>
	
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>