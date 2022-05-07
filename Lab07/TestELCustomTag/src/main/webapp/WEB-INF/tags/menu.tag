<!-- menu.tag -->
<%@ tag language="java" pageEncoding="UTF-8" dynamic-attributes="buttons" %> <!-- 넘어온 동적 속성=값을 담을 Map객체의 이름 정의 (dynamic-attribute)   -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<nav class="navbar navbar-expand navbar-dark bg-dark">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="index.jsp">Home</a>
		</div>		
		<c:forEach var="button" items="${buttons}">
		<a href="${button.value}" class="btn btn-secondary" role="button"> ${button.key} &raquo;</a>
		</c:forEach>
	</div>
</nav>
