<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page isErrorPage="true"%>
<% response.setStatus(HttpServletResponse.SC_OK); %> <%-- �̰��� ���� �������� ���������� ����Ǵ� ���������� �����ϴ� �ڵ��. �� �ڵ带 �����ϸ� �� �������� ��ü���� ���� �������� ǥ���Ѵ�. --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<h1>Error!</h1>
<p>Exception : <%= exception %>
<p>toString() : <%= exception.toString() %>
<p>getClass().getName() : <%=exception.getClass().getName()%>
<p>getMessage() : <%=exception.getMessage()%>
	

</body>
</html>