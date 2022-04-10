<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Test Session</title>
</head>
<body>
<%!
	boolean logoutFlag = false;
%>
<%
	String userID = (String)session.getAttribute("userID");
	String userPW = (String)session.getAttribute("userPW");

	if (userID == null || userID.equals("")) {
		logoutFlag = false;
	}
	if (userID != null && userPW != null) {
		out.println("Session Successful~ <br>");
		out.println("Welcome " + userID + " " + userPW + "<br>");

		String sessinID = session.getId();
		long lastTime = session.getLastAccessedTime();
		long startTime = session.getCreationTime();
		long elapsedTime = (lastTime - startTime) / 60000;
		out.println("세션 아이디 : " + sessinID + "<br>");
		out.println("요청 시작 시간  : " + startTime + "<br>");
		out.println("요청 마지막 시간  : " + lastTime + "<br>");
		out.println("웹 사이트에서 경과 시간  : " + elapsedTime + "<br>");
		int sessionTime = session.getMaxInactiveInterval() / 60;
		out.println("세션 유효시간  : " + sessionTime + "<br>");
		
		logoutFlag = true;
	}
	if (logoutFlag) {
%>
	<button onClick="location.href='logout.jsp'">Logout</button>
<%		
	} else {
%>	
	<button onClick="location.href='login.jsp'">Login</button>
<%
	}
%>
</body>
</html>