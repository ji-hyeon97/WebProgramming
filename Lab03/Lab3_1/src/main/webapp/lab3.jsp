<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="dao.DataImporter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>식품 영양 성분</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<body>
    <%@ include file="declaration.jsp" %>
	<jsp:include page="header.jsp" />

	<div class="jumbotron">
	
			<h1 class="display-3">식품 영양 성분</h1>

	</div>
	<a href="Form.jsp" class="btn btn-secondary" role="button"> Form태그 &raquo;</a>
		<div style="padding-top: 50px">
		<table class="table table-hover">
				<tr class="background1">
					<th>sample_id</th>
					<th>name</th>
					<th>category</th>
					<th>serving_size</th>
					<th>calorie</th>
					<th>water</th>
					<th>protein</th>
					<th>fat</th>
					<th>carbohydrate</th>
					<th>sugars</th>
					<th>fiber</th>
					<th>calcium</th>
					<th>iron</th>
					<th>magnesium</th>
					<th>phosphorus</th>
					<th>potassium</th>
					<th>sodium</th>
					<th>zinc</th>
					<th>copper</th>
					<th>manganese</th>
					<th>selenium</th>
					<th>detail</th>
				</tr>
			<%
				List<FoodBean> pList = manager.get(); // getlist
				for (FoodBean p : pList) {
		    %>
					<tr>
					<td><%= p.getSample_id()%></td>
					<td><%= p.getName()%></td>
					<td><%= p.getCategory()%></td>
					<td><%= p.getServing_size()%></td>
					<td><%= p.getCalorie() %></td>
					<td><%= p.getWater()%></td>
					<td><%= p.getProtein()%></td>
					<td><%= p.getFat()%></td>
					<td><%= p.getCarbohydrate()%></td>
					<td><%= p.getSugars()%></td>
					<td><%= p.getFiber()%></td>
					<td><%= p.getCalcium()%></td>
					<td><%= p.getIron()%></td>
					<td><%= p.getMagnesium()%></td>
					<td><%= p.getPhosphorus()%></td>
					<td><%= p.getPotassium()%></td>
					<td><%= p.getSodium()%></td>
					<td><%= p.getZinc()%></td>
					<td><%= p.getCopper()%></td>
					<td><%= p.getManganese()%></td>
					<td><%= p.getSelenium()%></td>
					<td><a href="detailView.jsp?name=<%= p.getSample_id()%>" class="btn btn-secondary" role="button"> Detail &raquo;</a></td>
					<%--get 방식으로 parameter을 넘길 수 있다. --%>
			<%
				}
			%>
			</table>
			
		</div>
		<hr>
</body>
<jsp:include page="footer.jsp">
		<jsp:param name="course" value="Advanced Java Programming for Problem Solving"/>
		<jsp:param name="year" value="2022"/>
	</jsp:include> 
</html>