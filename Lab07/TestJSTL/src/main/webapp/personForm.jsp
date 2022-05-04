<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="dto.*"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Person Form</title>
</head>
<body>

<c:choose>
<c:when test="${param.mode eq 'add'}">
<c:set var="formName" value="AddPersonBMI" />
<c:set var="formAction" value="AddPersonBMIAction.do" />
</c:when>
<c:when test="${param.mode eq 'edit'}">
<c:set var="formName" value="EditPersonBMI" />
<c:set var="formAction" value="EditPersonBMIAction.do" />
</c:when>
</c:choose>

<jsp:include page="header.jsp" />

<c:out value="${formName}" />

<div class="container">
	<form name=${formName} action=${formAction} method="post">
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
			<input type="radio" id="MALE" name="gender" value="MALE" <c:if test="${person.getGender() eq 'MALE'}">checked</c:if>>Male
			<input type="radio" id="FEMALE" name="gender" value="FEMALE" <c:if test="${person.getGender() eq 'FEMALE'}">checked</c:if>>Female<br />
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2">Person Height(cm)</label>
			<div class="col-sm-3">
			<input type="text" name="height" class="form-control" value="${person.getHeight()}">
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2">Person Weight(kg)</label>
			<div class="col-sm-3">
			<input type="text" name="weight" class="form-control" value="${person.getWeight()}">
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2">Person Neck(cm)</label>
			<div class="col-sm-3">
			<input type="text" name="neck" class="form-control" value="${person.getNeck()}">
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2">Person Waist(cm)</label>
			<div class="col-sm-3">
			<input type="text" name="waist" class="form-control" value="${person.getWaist()}">
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2">Person Hip(cm)</label>
			<div class="col-sm-3">
			<input type="text" name="hip" class="form-control" value="${person.getHip()}">
			</div>
		</div>
		<div class="form-group row">
			<label class="col-sm-2">Person Activity</label>
			<div class="col-sm-3">
			<select name="activity" id="activity">
				<c:forEach var="activity" items="<%=Activity.names()%>" >
				<option value="${activity}" <c:if test="${activity eq person.getActivity()}">selected</c:if>>${activity}</option>
				</c:forEach>
			</select>
			</div>
		</div>
		<input type="submit" value="Submit">
		<input type="reset" value="Reset" />
	</form>
</div>

</body>
</html>