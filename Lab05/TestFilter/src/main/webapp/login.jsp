<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Form</title>
</head>
<body>
Please enter "ace" & "12345" to see login filter (AuthenticationFilter) working!<br>
Please try another login "park" & "123" to see login filter (AuthenticationFilter) working!<br>
Please try another login "" & "" to see login filter (AuthenticationFilter) working!<br>
	<form action="loginProcess.jsp" method="post">
		<p>User ID: <input type="text" name="userID">
		<p>User PW: <input type="text" name="userPW">
		<p><input type="submit" value="전송">
	</form>
</body>
</html>