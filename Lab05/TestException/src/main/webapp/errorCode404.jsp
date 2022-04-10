<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true"%>
<% response.setStatus(HttpServletResponse.SC_OK); %> <%-- 이것은 현재 페이지가 정상적으로 응답되는 페이지임을 지정하는 코드다. 이 코드를 생략하면 웹 브라우저는 자체적인 에러 페이지를 표시한다. --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>errorCode 404</title>
</head>
<body>
<p>errorCode 404 에러. 
<p>요청한 페이지는 존재하지 않습니다!! - 이 에러는 클라이언트가 요청한 문서를 찾지 못한 경우에 발생함. URL을 다시 잘 보고 주소가 올바로 입력되었는지를 확인함. 
</body>
</html>