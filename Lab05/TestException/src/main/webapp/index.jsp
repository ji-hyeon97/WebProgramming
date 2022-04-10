<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Exception</title>
</head>
<body>


<p><a href="testErrorPage.jsp">Click here to see exception (testErrorPage.jsp causes ArithmeticException) (page directive - errorPage.jsp)</a></p>
<p><a href="error.jsp">Click here to see ErrorCode 404 (error.jsp is not existed) (web.xml - errorCode404.jsp)</a></p>
<%-- web.xml --%>
<%-- error.jsp 없으므로 ErrorCode 404 발생 --%>
<%-- 
	<error-page>
		<error-code>404</error-code>
		<location>/errorCode404.jsp</location>
	</error-page>
--%>
<p><a href="nullPointerException.jsp">Click here to see ErrorCode 500 (nullPointerException.jsp internal server error) (web.xml - errorCode500.jsp)</a></p>
<p><a href="arithmeticException.jsp">Click here to see exception-type (arithmeticException.jsp causes java.lang.ArithmeticException) (web.xml - isErrorPage.jsp)</a></p>
<p><a href="testTryCatch.jsp">Click here to see exception (testTryCatch.jsp uses try/catch - errorPage.jsp)</a></p>
<p><a href="numberForm.jsp">Click here to see number form</a></p>
<%--
number form에 만약 abc 등 문자 입력시 ErrorCode500 발생 errorCode500.jsp 호출
number form에 만약 num1=12, num2=0 등 ArithmeticException 발생 isErrorPage.jsp 호출
--%>
</body>
</html>