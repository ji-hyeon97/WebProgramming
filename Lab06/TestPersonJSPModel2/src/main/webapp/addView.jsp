<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="dto.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta charset="EUC-KR">
<title>Add Person</title>
</head>
<body>
	<jsp:include page="header.jsp" />
<div class="jumbotron">
	<div class="container">
		<h1 class="display-3">Add Person</h1>
	</div>
</div>

<div class="container">
	<form name="addPerson" action="AddPersonAction.do" method="post">
		<div class="form-group row">
			<label class="col-sm-2">Person Name</label>
			<div class="col-sm-3"><input type="text" name="name" class="form-control"></div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2">Person Age</label>
			<div class="col-sm-3"><input type="text" name="age" class="form-control"></div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2">Person Gender</label>
			<div class="col-sm-3">
				<!--  <input type="text" name="gender" class="form-control" value="${person.getGender()}">  -->
				<select name="gender" id="gender">
				<c:forEach var="g" items="<%=Gender.names()%>" >
				<option value="${g}">${g}</option>
				</c:forEach>
				</select>
			</div>
		</div>
		<div class="form-group row">
			<div class="col-sm-offset-2 col-sm-10">
				<input type="submit" class="btn btn-primary" value="Add">
			</div>
		</div>
	</form>
</div>

</body>
</html>