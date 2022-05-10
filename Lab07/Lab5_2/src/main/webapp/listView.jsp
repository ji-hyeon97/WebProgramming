<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Item List</title>
</head>
<body>
<script type="text/javascript">
	function deleteConfirm(name) {
		if (confirm("Do you want to remove?") == true)
			location.href = "DeleteBuyBeanAction.do?num=" + num;
		else
			return;
	}
</script>
	
	<jsp:include page="header.jsp" />
	
	<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost/sample_db"  
     user="root"  password="mysql비밀번호"/>  
  
<sql:query dataSource="${db}" var="rs">  
SELECT * from buy;  
</sql:query>  

	<div class="jumbotron">
			<h3>Item List</h3>
			<script language="JavaScript">
           expireDate = new Date
           expireDate.setMonth(expireDate.getMonth()+6)
           hitCt = eval(cookieVal("pageHit"))
           hitCt++
           document.cookie = "pageHit="+hitCt+";expires=" + expireDate.toGMTString()
           function cookieVal(cookieName) {
              thisCookie = document.cookie.split("; ")
              for (i=0; i<thisCookie.length; i++) {
                   if (cookieName == thisCookie[i].split("=")[0]) {
                        return thisCookie[i].split("=")[1]
                  }
            }
            return 0
           }
           </script>
            <script language = "javascript" type = "text/javascript">
           document.write("<font color = blue>" + hitCt+"</font>번째 방문자입니다!")
           </script><br>
		<a href="AddViewBuyBeanAction.do" class="btn btn-primary" role="button">제품 추가</a>
        <a href="ListViewBuyBeanAction.do?mode=edit" class="btn btn-info" role="button">제품 데이터변경</a>
        <a href="ListViewBuyBeanAction.do?mode=delete" class="btn btn-success" role="button">제품 삭제</a>
		</div>
	<div style="padding-top: 10px">
		<table class="table table-striped">
		<tr>  
<td>번호</td>
<td>제품이름</td>
<td>제품분류</td>
<td>제품가격</td>
<td>제품잔여수량</td>
<td>기능</td>
</tr> 


<c:forEach var="person" items="${rs.rows}">
<td><c:out value="${person.num}"/></td>  
<td><c:out value="${person.prod_name}"/></td>  
<td><c:out value="${person.group_name}"/></td>  
<td><c:out value="${person.price}"/></td>  
<td><c:out value="${person.amount}"/></td> 
					
				    <c:if test="${mode == null}">
					<td><a href="DetailViewBuyBeanAction.do?num=${person.num}" class="btn btn-secondary" role="button"> Detail &raquo;</a>
					</td></c:if>
					<c:if test="${mode eq 'delete'}">
					<td><a href="DeleteBuyBeanAction.do?num=${person.num}" class="btn btn-danger" role="button"> Delete &raquo;</a>
					</td></c:if>
					<c:if test="${mode eq 'edit'}">
					<td><a href="EditViewBuyBeanAction.do?num=${person.num}" class="btn btn-success" role="button"> Edit &raquo;</a>
					</td></c:if></tr>
			</c:forEach>
			</table>
		</div>
		<hr>
	<jsp:include page="footer.jsp" />	
</body>
</html>