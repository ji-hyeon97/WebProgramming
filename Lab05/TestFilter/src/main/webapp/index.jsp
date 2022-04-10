<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Test Filter</title>
</head>
<body>
LoggingFilter logs all(*) in c:\\temp\\loggingFilter.log<br>
EncodingFilter encodes all(*) with charset = EUC-KR<br>
AuthenticationFilter verifies loginProcess.jsp<br>
	<button onClick="location.href='login.jsp'">Login</button>
</body>
</html>