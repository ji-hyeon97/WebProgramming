<%-- cookie delete --%>
<%
Cookie[] cookies = request.getCookies();
for (int i = 0; i < cookies.length; i++) {
	cookies[i].setMaxAge(0);
	response.addCookie(cookies[i]);
}

response.sendRedirect("index.jsp");
%>
