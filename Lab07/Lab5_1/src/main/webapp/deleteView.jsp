<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<title>Update Person</title>
</head>
<body>
<p>mode: ${param.mode}
<c:choose>
<c:when test="${param.mode eq 'add'}">
<c:set var="title" value="Add Person" />
<c:set var="updateAction" value="AddPersonAction.do" />
</c:when>
<c:when test="${param.mode eq 'edit'}">
<c:set var="title" value="Edit Person" />
<c:set var="updateAction" value="EditPersonAction.do" />
</c:when>
</c:choose>

	<jsp:include page="header.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">식품 영양 성분</h1>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-7">
			<form action="deleteProcess.jsp" name="member" method="post">
					<div class="form-group">
      <label>sampled_id</label>
      <input type="text" class="form-control" name = "sample_id"/>
    </div>  
    
    <button type="submit" class="btn btn-primary" onclick="msg()">전송</button>
 </div> </form>  
</body>
<script>
function msg(){
	alert("식품정보가 전송 되었습니다!");
}
</script>
</html>