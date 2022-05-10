<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="UTF-8" %>
<%@ page errorPage="exceptionNotFound.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Person Detail Information</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8");
String sample_id = request.getParameter("sample_id");
%>
	<jsp:include page="header.jsp" />
	
	<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost/sample_db"  
     user="root"  password="mysql비밀번호"/>
     
<sql:query dataSource="${db}" var="rs">  
SELECT * from mfdsfood where sample_id = '<%=sample_id %>';
</sql:query> 

	<div class="jumbotron">
			<h1 class="display-3">Food Detail Information</h1>
	</div>  


		<table class="table table-striped">
		<tr>  
<td>Sample_id</td>
<td>Name</td>
<td>Category</td>
<td>Serving_size</td>
<td>Calorie</td>
<td>Water</td>
<td>Protein</td>
<td>Fat</td>
<td>Carbohydrate</td>
<td>Sugars</td>
<td>Fiber</td>
<td>Calcium</td>
<td>Iron</td>
<td>Magnesium</td>
<td>Phosphorus</td>
<td>Potassium</td>
<td>Sodium</td>
<td>Zinc</td>
<td>Copper</td>
<td>Manganese</td>
<td>Selenium</td>
</tr> 

<c:forEach var="person" items="${rs.rows}">  
<td><c:out value="${person.sample_id}"/></td>  
<td><c:out value="${person.name}"/></td>  
<td><c:out value="${person.category}"/></td>  
<td><c:out value="${person.serving_size}"/></td>  
<td><c:out value="${person.calorie}"/></td>  
<td><c:out value="${person.water}"/></td> 
<td><c:out value="${person.protein}"/></td>  
<td><c:out value="${person.fat}"/></td>  
<td><c:out value="${person.carbohydrate}"/></td>  
<td><c:out value="${person.sugars}"/></td>  
<td><c:out value="${person.fiber}"/></td>  
<td><c:out value="${person.calcium}"/></td>  
<td><c:out value="${person.iron}"/></td>  
<td><c:out value="${person.magnesium}"/></td>  
<td><c:out value="${person.phosphorus}"/></td>  
<td><c:out value="${person.potassium}"/></td>  
<td><c:out value="${person.sodium}"/></td>  
<td><c:out value="${person.zinc}"/></td>  
<td><c:out value="${person.copper}"/></td>  
<td><c:out value="${person.manganese}"/></td>  
<td><c:out value="${person.selenium}"/></td>  
</c:forEach>
</table>
</body>
</html>