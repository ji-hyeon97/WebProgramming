<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Test Cookie</title>
</head>
<body>
<%!
	boolean logoutFlag = false;
%>
<%
	String userID = null;
	String userPW = null;
	
	Cookie[] cookies = request.getCookies();
	if (cookies != null) {
		for (int i = 0; i < cookies.length; i++) {
			String name = cookies[i].getName();
			String value = cookies[i].getValue();
			out.println("설정된 쿠티의 속성 이름 [ " + i + " ] : " + cookies[i].getName() + "<br>");
			out.println("설정된 쿠키의 속성 값 [ " + i + " ] : " + cookies[i].getValue() + "<br>");
			out.println("---------------------------------------------<br>");
			if (name.equals("userID")) {
				userID = value;
			}
			if (name.equals("userPW")) {
				userPW = value;
			}
		}
	}
	if (userID == null || userID.equals("")) {
		logoutFlag = false;
	}
	if (userID != null && userPW != null) {
		out.println("Cookie Successful~ <br>");
		out.println("Welcome " + userID + " " + userPW + "<br>");

		logoutFlag = true;
	}
%>
<%
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