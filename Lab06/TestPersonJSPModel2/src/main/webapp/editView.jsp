<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>Edit Person</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">Edit Person</h1>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-7">
				<form name="editPerson" action="EditPersonAction.do" method="post">
					<div class="form-group row">
						<label class="col-sm-2">Person Name</label>
						<div class="col-sm-3">
						<input type="text" name="name" class="form-control" value="${person.getName()}">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">Person Age</label>
						<div class="col-sm-3">
						<input type="text" name="age" class="form-control" value="${person.getAge()}">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">Person Gender</label>
						<div class="col-sm-3">
						<!--  <input type="text" name="gender" class="form-control" value="${person.getGender()}">  -->
						<select name="gender" id="gender">
						<c:forEach var="g" items="<%=Gender.values()%>" >					
						<option value="${g}" <c:if test="${g eq person.getGender()}">selected</c:if>>${g}</option>
						</c:forEach>
						</select>
						</div>
					</div>
					<div class="form-group row">
						<div class="col-sm-offset-2 col-sm-10 ">
							<input type="submit" class="btn btn-primary" value="Submit">
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>

</body>
</html>
