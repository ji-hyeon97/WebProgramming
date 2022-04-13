<%@ page contentType="text/html; charset=utf-8"%>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Error Not Found</title>
</head>
<body>
	<jsp:include page="header.jsp" />	
	<div class="jumbotron">
		<div class="container">
			<h2 class="alert alert-danger">Request cannot be found.</h2>
		</div>
	</div>
	<div class="container">
		<p><%=request.getRequestURL()%>?<%=request.getQueryString()%>
		<p><a href="index.jsp" class="btn btn-secondary"> main &raquo;</a>			
	</div>
</body>
</html>
