<!-- messages.tag -->
<%@ tag language="java" pageEncoding="UTF-8" body-content="empty"%>
<%@ attribute name="messageMap" type="java.util.Map" required="true"%><!-- type 속성, 기본 값은 String --> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div style="padding-top: 10px">
	<table class="table table-hover">
		<tr>
			<th>Message</th>
			<th>Length</th>
		</tr>		
		<c:forEach var="message" items="${messageMap}">
		<tr>
			<td>${message.key}</td>
			<td>${message.value}</td>
		</tr>
		</c:forEach>
	</table>
</div>

