<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Date"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags"%> 
<%@ taglib prefix="elfunc" uri="/WEB-INF/tlds/elfunction.tld" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Person BMI List</title>
</head>
<body>
	<%-- custom tag menu --%>
	<tf:menu BMI="ListViewPersonBMIAction.do?mode=BMI" BMR="ListViewPersonBMRAction.do?mode=BMR" BFP="ListViewPersonBFPAction.do?mode=BFP" />

	<%-- EL & JSTL --%>	
	<c:if test="${empty mode}">
	<c:set var="mode" value="BMI" />
	</c:if>
	<c:set var="title" value="${mode} Calculator Table" /> 	
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">${title}</h1>
		</div>
	</div>
	
	<%-- custom tag personBMIList --%>
	<hr>	
	<div class="container">
	<tf:personBMIList personBMIList="${personBMIList}" mode="${mode}" />			
	<hr>
	<jsp:include page="personForm.jsp?mode=${mode}" />
	</div>
	
	<%-- EL & JSTL --%>	
	<hr>
	<div class="container">
	<c:out value="arithmetic operations: " /><br>
	${10 mod 3} <br> <!-- 10 % 3 = 1 -->
	${10 / 3} <br> <!-- 10 / 3 = 3.3333 -->
	${10 * 3} <br> <!-- 10 * 3 = 30 -->
	${10 + 3} <br> <!-- 10 + 3 = 13 -->
	${10 - 3} <br> <!-- 10 - 3 = 7 -->
	${10 lt 3 ? 'true' : 'false'} <br> <!-- false -->
	${10 > 3 and 1 < 2} <br> <!-- true -->
	</div>

	<%-- EL & JSTL --%>	
	<hr>
	<div class="container">	
	<c:set var="arr" value="<%= new int[]{1,2,3,4,5} %>"/>
	array is empty? ${empty arr}<br> <!-- false -->
	<c:out value="array: " />
	<c:forEach var="i" items="${arr}">
	${i} &nbsp;&nbsp;
	</c:forEach><br>
	<% pageContext.setAttribute("arr2", null); %>
	${empty arr2}<br> <!-- true -->
	</div>
	
	<%-- CustomTag person & EL & JSTL --%>	
	<hr>
	<div class="container">
	PersonList <br>
	<c:forEach var="p" items="${personBMIList}">
	<tf:person name="${p.name}" age="${p.age}" gender="${p.gender}" height="${p.height}" weight="${p.weight}" neck="${p.neck}" waist="${p.waist}" hip="${p.hip}" /><p>
	</c:forEach>
	</div>

	<%-- CustomTag sum & EL --%>	
	<hr>
	<div class="container">
	<tf:sum begin="1" end="10">
	1-10 sum EL Function : ${sum}
	</tf:sum>
	</div>
	
	<%-- Date Format EL Function & JSTL --%>	
	<hr>
	<div class="container">
	<c:set var="today" value="<%= new Date() %>"/>
	Date Format EL Function : 
	<c:out value="${elfunc:dateFormat(today)}" /> 
	</div>

	<%-- Random Number EL Function & JSTL --%>	
	<hr>
	<div class="container">
	Random Number Between 5~20 EL Function : 
	<c:out value="${elfunc:randomNumberBetween(5, 20)}" /> 
	</div>
		
	<%-- Custom Tag footer --%>	
	<hr>
	<tf:footer course="Advanced Java Programming" year="2022" />
	
</body>
</html>