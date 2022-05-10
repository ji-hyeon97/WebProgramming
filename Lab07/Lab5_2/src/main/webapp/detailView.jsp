<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="UTF-8" %>
<%@ page errorPage="exceptionNotFound.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>BuyBean Detail Information</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
int num = Integer.parseInt(request.getParameter("num"));
%>
	<jsp:include page="header.jsp" />
	
	<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost/sample_db"  
     user="root"  password="mysql비밀번호"/>
     
<sql:query dataSource="${db}" var="rs">  
SELECT * from buy where num = '<%=num %>';
</sql:query> 

	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">Buy Detail Information</h1>
		</div>
	</div>  

<div style="padding-top: 10px">
		<table class="table table-striped">
		<tr>  
<td>번호</td>
<td>제품</td>
<td>제품분류</td>
<td>가격</td>
<td>수량</td>
</tr> 

<c:forEach var="person" items="${rs.rows}">  
<td><c:out value="${person.num}"/></td>  
<td><c:out value="${person.prod_name}"/></td>  
<td><c:out value="${person.group_name}"/></td>  
<td><c:out value="${person.price}"/></td>  
<td><c:out value="${person.amount}"/></td>  
</c:forEach>
</table>
</body>
</html>