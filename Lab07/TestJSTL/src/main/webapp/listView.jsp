<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Date"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>  
<%@ taglib prefix ="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix = "x" uri="http://java.sun.com/jsp/jstl/xml" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Person List</title>
</head>
<body>
<script type="text/javascript">
	function deleteConfirm(name) {
		if (confirm("Do you want to remove?") == true)
			location.href = "DeletePersonBMIAction.do?name=" + name;
		else
			return;
	}
</script>
<jsp:include page="header.jsp" />

	<c:if test="${empty mode}">
	<c:set var="mode" value="add" />
	</c:if>	
	<c:set var="title" value="BMI Calculator Table" />
	 	
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">${title}</h1>
		</div>
	</div>
	
	<div class="container">
		<div style="padding-top: 10px">
		<table class="table table-hover">
			<tr>
				<th>Name</th>
				<th>Age</th>
				<th>Gender</th>
				<th>Height</th>
				<th>Weight</th>
				<th>Neck</th>
				<th>Waist</th>
				<th>Hip</th>
				<th>Activity</th>
				<th>BMI</th>
				<th></th>
			</tr>		
			<c:forEach var="person" items="${bmiList}">
			<tr>
				<td>${person.getName()}</td>
				<td>${person.getAge()}</td>
				<td>${person.getGender()}</td>
				<td>${person.getHeight()}</td>
				<td>${person.getWeight()}</td>
				<td>${person.getNeck()}</td>
				<td>${person.getWaist()}</td>
				<td>${person.getHip()}</td>
				<td>${person.getActivity()}</td>
				<td>${person.getIndex()}</td>
				<td>
				<c:if test="${mode eq 'delete'}">
				<p><a href="#" onclick="deleteConfirm('${person.getName()}')" class="btn btn-danger" role="button"> Delete &raquo;</a>
				</c:if>
				<c:if test="${mode eq 'edit'}">
				<p><a href="EditViewPersonBMIAction.do?name=${person.getName()}" class="btn btn-success" role="button"> Edit &raquo;</a>
				</c:if>
				</td>
			</tr>
			</c:forEach>

		</table>
		</div>
	</div>
	
	<div class="container">	
	<c:set var="list" value="${bmiList}"/>
	<c:out value="Person 리스트 출력" /><br>
	<c:forEach var="person" items="${list}">
	${person}<br>
	</c:forEach>
	</div>
	<p></p>

	<div class="container">	
	<c:out value="2의 배수 출력 " />
	<c:forEach var="i" begin="1" end="9" step="1">
	${2 * i} &nbsp;&nbsp;
	</c:forEach>
	</div>
	<p></p>

	<div class="container">	
	<c:set var="arr" value="<%= new int[]{1,2,3,4,5} %>"/>
	<c:out value="배열 출력 " />
	<c:forEach var="i" items="${arr}">
	${i} &nbsp;&nbsp;
	</c:forEach>
	</div>
	<p></p>
	
	<div class="container">
	<c:set var="rainbow" value="red,orange,yellow,green,blue,indigo,violet." />
	rainbow : 
	<c:forTokens var="color" items="${rainbow}" delims=",.">
	<c:out value="${color}" /> &nbsp;&nbsp;
	</c:forTokens>
	<c:if test="${fn:contains(rainbow, 'blue')}">  
	<p>rainbow contains blue<p>
	</c:if>  
	<c:set var="rainbow2" value="${fn:split(rainbow, ',.')}" />
	rainbow2 : 
	<c:forEach var="i" items="${rainbow2}">
	${i} &nbsp;&nbsp;
	</c:forEach>
	<br>
	<c:set var="rainbow3" value="${fn:join(rainbow2, '-')}" />  
	<c:out value="rainbow3: ${rainbow3}" />
	</div>		
	<p></p>
	
	<div class="container">
	숫자 : <fmt:formatNumber value="98745612345.678" type="number"/><br>
	통화 : <fmt:formatNumber value="12345.789" type="currency" currencySymbol="$"/><br>
	숫자 : <fmt:formatNumber value="12345.456" pattern="#,##0.0"/><br>
	<c:set var="kor" value="87" />
	<c:set var="eng" value="81" />
	<c:set var="math" value="95" />
	<c:out value="국어: ${kor}" /> &nbsp;&nbsp;
	<c:out value="영어: ${eng}" /> &nbsp;&nbsp;
	<c:out value="수학: ${math}" /> &nbsp;&nbsp;
	평균 : <fmt:formatNumber value="${(kor + eng + math) / 3}" pattern="##0.0"/>
	</div>
	<p></p>
	
	<div class="container">
	<c:set var="now" value="<%= new Date() %>" />
	${now}<br>
	날짜 : <fmt:formatDate value="${now}" type="date"/><br>
	시간 : <fmt:formatDate value="${now}" type="time"/><br>
	날짜 : <fmt:formatDate value="${now}" type="both" dateStyle="full"/>
	</div>
	<p></p>
	
	<div class="container">
	<c:import var="WOEIDList" url="WOEIDList.xml" />
	<x:parse xml = "${WOEIDList}" var = "output"/>
	<c:forEach var="i" items="${WOEIDList}">
	${i}<br>
	</c:forEach>	
	<p></p>
	<x:out select = "$output/ArrayOfWOEID/WOEID[1]/Code" />
	<x:out select = "$output/ArrayOfWOEID/WOEID[1]/City" />
	<x:out select = "$output/ArrayOfWOEID/WOEID[1]/Country" />
	<x:out select = "$output/ArrayOfWOEID/WOEID[1]/Latitude" />
	<x:out select = "$output/ArrayOfWOEID/WOEID[1]/Longitude" />
	<br>
	</div>

	<div class="container">
	<a href="footer.jsp">lecture site</a>
	</div>
	<p></p>

</body>
</html>