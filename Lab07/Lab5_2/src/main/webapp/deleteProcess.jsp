<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ page import="dto.*"%>
<%@ page import="dao.*"%>
<%@ page import="jdbc.*"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page errorPage="exceptionNotFound.jsp" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>식품 영양 성분</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
int num = Integer.parseInt(request.getParameter("num"));
%>
	<sql:setDataSource var="dataSource"
	url="jdbc:mysql://localhost:3306/sample_db"
	driver="com.mysql.jdbc.Driver" user="root" password="mysql비밀번호" />
	<sql:update dataSource="${dataSource}" var="resultSet">
	delete from buy where num=?
		<sql:param value="<%= num %>" />
	</sql:update>
	<c:import var="url" url="listView.jsp" />
	${url}
			
</body>
</html>