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
String sample_id = request.getParameter("sample_id");
String name = request.getParameter("name");
String category = request.getParameter("category");
int serving_size = Integer.parseInt(request.getParameter("serving_size"));
double calorie = Double.parseDouble(request.getParameter("calorie"));
double water = Double.parseDouble(request.getParameter("water"));
double protein = Double.parseDouble(request.getParameter("protein"));
double fat = Double.parseDouble(request.getParameter("fat"));
double carbohydrate = Double.parseDouble(request.getParameter("carbohydrate"));
double sugars = Double.parseDouble(request.getParameter("sugars"));
double fiber = Double.parseDouble(request.getParameter("fiber"));
int calcium = Integer.parseInt(request.getParameter("calcium"));
double iron = Double.parseDouble(request.getParameter("iron"));
int magnesium = Integer.parseInt(request.getParameter("magnesium"));
int phosphorus = Integer.parseInt(request.getParameter("phosphorus"));
int potassium = Integer.parseInt(request.getParameter("potassium"));
int sodium = Integer.parseInt(request.getParameter("sodium"));
double zinc = Double.parseDouble(request.getParameter("zinc"));
double copper = Double.parseDouble(request.getParameter("copper"));
double manganese = Double.parseDouble(request.getParameter("manganese"));
double selenium = Double.parseDouble(request.getParameter("selenium"));
%>

	<sql:setDataSource var="dataSource"
	url="jdbc:mysql://localhost:3306/sample_db"
	driver="com.mysql.jdbc.Driver" user="root" password="MYsql비밀번호" />
	
		
	<sql:update dataSource="${dataSource}" var="resultSet">
		update mfdsfood set name=?,category=?,serving_size=?,calorie=?,water=?,protein=?,fat=?,carbohydrate=?,sugars=?,fiber=?,calcium=?,iron=?,magnesium=?,phosphorus=?,potassium=?,sodium=?,zinc=?,copper=?,manganese=?,selenium=? where sample_id=?
		<sql:param value="<%= name %>" />
		<sql:param value="<%= category%>" />
		<sql:param value="<%= serving_size %>" />
		<sql:param value="<%= calorie %>" />
		<sql:param value="<%= water%>" />
		<sql:param value="<%= protein %>" />
		<sql:param value="<%= fat %>" />
		<sql:param value="<%= carbohydrate%>" />
		<sql:param value="<%= sugars%>" />
		<sql:param value="<%= fiber %>" />
		<sql:param value="<%= calcium%>" />
		<sql:param value="<%= iron %>" />
		<sql:param value="<%= magnesium %>" />
		<sql:param value="<%= phosphorus%>" />
		<sql:param value="<%= potassium %>" />
		<sql:param value="<%= sodium %>" />
		<sql:param value="<%= zinc%>" />
		<sql:param value="<%= copper%>" />
		<sql:param value="<%= manganese %>" />
		<sql:param value="<%= selenium%>" />
			
		<sql:param value="<%= sample_id %>" />
	</sql:update>
	<c:import var="url" url="listView.jsp" />
	${url}
			
</body>
</html>