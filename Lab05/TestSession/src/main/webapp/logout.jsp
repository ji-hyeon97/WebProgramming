<%-- session delete --%>
<%
session.invalidate();
response.sendRedirect("index.jsp");
%>
