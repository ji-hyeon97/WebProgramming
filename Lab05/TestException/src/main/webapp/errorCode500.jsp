<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true"%>
<% response.setStatus(HttpServletResponse.SC_OK); %> <%-- 이것은 현재 페이지가 정상적으로 응답되는 페이지임을 지정하는 코드다. 이 코드를 생략하면 웹 브라우저는 자체적인 에러 페이지를 표시한다. --%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error code 500</title>
</head>
<body>
<p>Error code 500 에러
<p>Internal Server Error, 서버 내부 오류 - 이 에러는 웹 서버가 요청사항을 수행할 수 없을 경우에 발생함 
<p>에러타입:: <%= exception.getClass().getName()%>  //익셉션 기본 객체의 클래스 이름을 출력
<p>에러메세지:: <%= exception.getMessage()%>   //예외메세지출력
</body>
</html>