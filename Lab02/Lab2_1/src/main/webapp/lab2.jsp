<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��ǰ ���� ����</title>
</head>
<body>
	<%@ include file="declaration.jsp" %>
	<%@ include file = "list.jsp" %>
	<jsp:include page="header.jsp" />

	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">��ǰ ���� ����</h1>
		</div>
	</div>
	
	<div class="container">
		<div style="padding-top: 50px">
			<table class="table table-hover">
				<tr class="background1">
					<th>��ǰ�ڵ�</th>
					<th>��ǰ��</th>
					<th>��ǰ�󼼺з�</th>
					<th>������(��)</th>
					<th>����(g)</th>
					<th>�ܹ���(g)</th>
					<th>����(g)</th>
					<th>ź��ȭ��(g)</th>
					<th>Į��(��)</th>
					<th>���׳׽�(��)</th>
					<th>��Ÿ�� B1(��)</th>
					<th>�ݷ����׷�(��)</th>
					<th>������������</th>
				</tr>
			<%
				List<foodNutrientFacts> pList = manager.get(); // getlist
				for (foodNutrientFacts p : pList) {
			%>
					<tr>
					<td><%= p.getFoodCode()%></td>
					<td><%= p.getFoodName()%></td>
					<td><%= p.getFoodCategory()%></td>
					<td><%= p.getKcal()%></td>
					<td><%= p.getMoisture()%></td>
					<td><%= p.getProtein()%></td>
					<td><%= p.getFat()%></td>
					<td><%= p.getCarbohydrate()%></td>
					<td><%= p.getCalcium()%></td>
					<td><%= p.getMagnesium()%></td>
					<td><%= p.getVitaminB1()%></td>
					<td><%= p.getCholesterol()%></td>
					<td><a href="detailview.jsp?name=<%= p.getFoodCode()%>" class="btn btn-secondary" role="button"> Detail &raquo;</a></td>
					<%--get ������� parameter�� �ѱ� �� �ִ�. --%>
			<%
				}
			%>
			</table>
		</div>
		<hr>
	</div>
	
	
	<jsp:include page="footer.jsp">
		<jsp:param name="course" value="Advanced Java Programming for Problem Solving"/>
		<jsp:param name="year" value="2022"/>
	</jsp:include> 
	
</body>
=======
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��ǰ ���� ����</title>
</head>
<body>
	<%@ include file="declaration.jsp" %>
	<%@ include file = "list.jsp" %>
	<jsp:include page="header.jsp" />

	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">��ǰ ���� ����</h1>
		</div>
	</div>
	
	<div class="container">
		<div style="padding-top: 50px">
			<table class="table table-hover">
				<tr class="background1">
					<th>��ǰ�ڵ�</th>
					<th>��ǰ��</th>
					<th>��ǰ�󼼺з�</th>
					<th>������(��)</th>
					<th>����(g)</th>
					<th>�ܹ���(g)</th>
					<th>����(g)</th>
					<th>ź��ȭ��(g)</th>
					<th>Į��(��)</th>
					<th>���׳׽�(��)</th>
					<th>��Ÿ�� B1(��)</th>
					<th>�ݷ����׷�(��)</th>
					<th>������������</th>
				</tr>
			<%
				List<foodNutrientFacts> pList = manager.get(); // getlist
				for (foodNutrientFacts p : pList) {
			%>
					<tr>
					<td><%= p.getFoodCode()%></td>
					<td><%= p.getFoodName()%></td>
					<td><%= p.getFoodCategory()%></td>
					<td><%= p.getKcal()%></td>
					<td><%= p.getMoisture()%></td>
					<td><%= p.getProtein()%></td>
					<td><%= p.getFat()%></td>
					<td><%= p.getCarbohydrate()%></td>
					<td><%= p.getCalcium()%></td>
					<td><%= p.getMagnesium()%></td>
					<td><%= p.getVitaminB1()%></td>
					<td><%= p.getCholesterol()%></td>
					<td><a href="detailview.jsp?name=<%= p.getFoodCode()%>" class="btn btn-secondary" role="button"> Detail &raquo;</a></td>
			<%
				}
			%>
			</table>
		</div>
		<hr>
	</div>
	
	
	<jsp:include page="footer.jsp">
		<jsp:param name="course" value="Advanced Java Programming for Problem Solving"/>
		<jsp:param name="year" value="2022"/>
	</jsp:include> 
	
</body>
>>>>>>> 6f526871052167d9510e765dcf88395334345a0f
</html>