<!-- list.tag -->
<%@ tag language="java" pageEncoding="UTF-8" body-content="empty"%>
<%@ attribute name="mode" required="true"%><!-- required 속성, 필수 attribute 명시 --> 
<%@ attribute name="personBMIList" type="java.util.List" required="true"%><!-- type 속성, 기본 값은 String --> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
			<th>${mode}</th>
		</tr>		
		<c:forEach var="person" items="${personBMIList}">
		<tr>
			<td>${person.name}</td>
			<td>${person.age}</td>
			<td>${person.gender}</td>
			<td>${person.height}</td>
			<td>${person.weight}</td>
			<td>${person.neck}</td>
			<td>${person.waist}</td>
			<td>${person.hip}</td>
			<td>${person.index}</td>
		</tr>
		</c:forEach>
	</table>
</div>
