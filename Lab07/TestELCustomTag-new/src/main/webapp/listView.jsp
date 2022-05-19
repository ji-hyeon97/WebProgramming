<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Date"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags"%> 
<%@ taglib prefix="elfunc" uri="/WEB-INF/tlds/elfunction.tld" %> 
<%@ page import="util.ELNumberUtil"%> 
<%@ page import="util.ELMessage"%> 

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
	
	<%-- EL & JSTL implicit objects & datatype --%>	
	<hr>
	<div class="container">
	${header["host"]}<br>
	${pageContext.request.requestURI} <br>
	${param.mode} <br>
	${mode} <br>
	${title} <br>
	${10}<br>
	${10.3}<br> <%-- double --%>
	${'10.3'} <br> <%-- String --%>
	${"10" + 3} <br> <%-- "10" -> 10 변환 + 3 = 13 --%>
	${'a'; 'b'; 'c'; 'd'} <br>
	${true} <br>
	${null} <br>
	<!--  EL3.0 -->
	${number = 123456789}<br>
	${number} <br>	
	</div>

	<%-- ELMessage --%>
	<hr>
	<div class="container">
	<% 
	ELMessage elm = new ELMessage(); 
	request.setAttribute("elm", elm); 
	%> 
	${elm.put("Advanced Java Programming")} <br>
	${elm.getMessageLength("Park")} <br>
	${elm.getMessageLength("is")} <br>
	${elm.getMessageLength("Advanced Java Programming")} <br>
	<p>	
	</div>
	
	<%-- messages.tag --%>
	<hr>
	<div class="container">
	<tf:messages messageMap="${elm.getMap()}" />
	</div>
	
	<%-- ELNumberUtil --%>
	<hr>
	<div class="container">
	<c:set var="number" value="12345"/>
	number = ${number}<br>
	<%
	int number = 12345;
	%>
	ELNumberUtil number = <%= ELNumberUtil.format(number) %><br> <!-- 스크립트에서 number를 지정해야함 -->
	number = ${number = 123456789}<br> <!-- 스크립트릿과는 다른 변수 -->
	ELNumberUtil number = ${ELNumberUtil.format(123456789)}<br> 
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