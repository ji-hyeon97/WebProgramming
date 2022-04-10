<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true"%>
<% response.setStatus(HttpServletResponse.SC_OK); %> <%-- 이것은 현재 페이지가 정상적으로 응답되는 페이지임을 지정하는 코드다. 이 코드를 생략하면 웹 브라우저는 자체적인 에러 페이지를 표시한다. --%>
<!-- 
또는 아래와 같이

만약 에러 페이지의 길이가 513바이트보다 작다면,

인터넷 익스플로러는 이페이지가 출력하는 출력하는 에러페이지를 출력하지 않고

자체적으로 제공하는 'HTTP오류메세지' 화면을 출력할 것입니다.

만약 에러 페이지의 길이가 513 바이트보다 작은데

에러페이지의 내용의 인터넷 익스플로러에서도 올바르게 출력되길 원한다면,

응답 결과에 이 주석과 같은 내용을 포함시켜서

에러 페이지의 길이가 513 바이트 이상이 되도록 해주어야 합니다.

-->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>isError Page</title>
</head>
<body>
	<p>오류가 발생하였습니다.
	<p>예외 : <%=exception%>
	<p>toString() : <%=exception.toString()%>
	<p>getClass().getName() : <%=exception.getClass().getName()%>
	<p>getMessage() : <%=exception.getMessage()%>

</body>
</html>