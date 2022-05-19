<!-- sum.tag -->
<%@ tag language="java" pageEncoding="UTF-8" %>
<%@ tag trimDirectiveWhitespaces="true" %>
<%@ attribute name="begin" type="java.lang.Integer" required="true"%>
<%@ attribute name="end" type="java.lang.Integer" required="true"%> 
<%@ variable name-given="sum" variable-class="java.lang.Integer" scope="NESTED" %> <!-- 태그 몸체 내부에서 사용가능한 EL 변수 sum -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="sum" value="${0}" /> <!-- EL 변수 sum=0 -->
<c:forEach var="num" begin="${begin}" end="${end}"> 
<c:set var="sum" value="${sum + num}" /> <!-- sum = sum + num -->
</c:forEach>

<jsp:doBody /> <!-- 몸체 내용을 실행하기 전에 태그 파일에서 정의한 변수 sum을 태그를 호출한 페이지에 전달 -->