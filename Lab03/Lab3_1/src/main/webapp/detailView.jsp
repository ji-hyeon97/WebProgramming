<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>식품 영양 성분</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<body>

<%@ include file = "declaration.jsp" %>
<%
	String name = request.getParameter("name");
    FoodBean p = manager.get(name);
%>


	<jsp:include page="header.jsp" />
	<div class="jumbotron">
		
			<h1 class="display-3"><%= p.getSample_id()%> 정보</h1>
		</div>
	

		<div style="padding-top: 50px">
			<table class="table table-hover">
				<tr class="background1">
					<th>sample_id</th>
					<th>category</th>
					<th>name</th>
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
				</tr>
				
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
				</tr>
				</table>
			</div>

	<jsp:include page="footer.jsp">
		<jsp:param name="course" value="Advanced Java Programming"/>
		<jsp:param name="year" value="2022"/>
	</jsp:include> 

</body>
</html>