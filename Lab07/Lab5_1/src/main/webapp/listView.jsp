<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Food List</title>
</head>
<body>
<script type="text/javascript">
	function deleteConfirm(name) {
		if (confirm("Do you want to remove?") == true)
			location.href = "DeleteFoodBeanAction.do?name=" + name;
		else
			return;
	}
</script>
	
	<jsp:include page="header.jsp" />
	
	<sql:setDataSource var="db" driver="com.mysql.jdbc.Driver"  
     url="jdbc:mysql://localhost/sample_db"  
     user="root"  password="mysql비밀번호"/>  
  
<sql:query dataSource="${db}" var="rs">  
SELECT * from mfdsfood;  
</sql:query>  

	<div class="jumbotron">
			<h3>식품 영양 성분</h3>
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
		<a href="AddViewFoodBeanAction.do" class="btn btn-primary" role="button">제품 추가</a>
        <a href="ListViewFoodBeanAction.do?mode=edit" class="btn btn-info" role="button">제품 데이터변경</a>
        <a href="ListViewFoodBeanAction.do?mode=delete" class="btn btn-success" role="button">제품 삭제</a>
		</div>
	<div style="padding-top: 10px">
		<table class="table table-striped">
		<tr>  
<td>Sample_id</td>
<td>Name</td>
<td>Category</td>
<td>Serving_size</td>
<td>Calorie</td>
<td>Water</td>
<td>Protein</td>
<td>Fat</td>
<td>Carbohydrate</td>
<td>Sugars</td>
<td>Fiber</td>
<td>Calcium</td>
<td>Iron</td>
<td>Magnesium</td>
<td>Phosphorus</td>
<td>Potassium</td>
<td>Sodium</td>
<td>Zinc</td>
<td>Copper</td>
<td>Manganese</td>
<td>Selenium</td>
<td>function</td>
</tr> 

<c:forEach var="person" items="${rs.rows}">  
<td><c:out value="${person.sample_id}"/></td>  
<td><c:out value="${person.name}"/></td>  
<td><c:out value="${person.category}"/></td>  
<td><c:out value="${person.serving_size}"/></td>  
<td><c:out value="${person.calorie}"/></td>  
<td><c:out value="${person.water}"/></td> 
<td><c:out value="${person.protein}"/></td>  
<td><c:out value="${person.fat}"/></td>  
<td><c:out value="${person.carbohydrate}"/></td>  
<td><c:out value="${person.sugars}"/></td>  
<td><c:out value="${person.fiber}"/></td>  
<td><c:out value="${person.calcium}"/></td>  
<td><c:out value="${person.iron}"/></td>  
<td><c:out value="${person.magnesium}"/></td>  
<td><c:out value="${person.phosphorus}"/></td>  
<td><c:out value="${person.potassium}"/></td>  
<td><c:out value="${person.sodium}"/></td>  
<td><c:out value="${person.zinc}"/></td>  
<td><c:out value="${person.copper}"/></td>  
<td><c:out value="${person.manganese}"/></td>  
<td><c:out value="${person.selenium}"/></td>  
					
				    <c:if test="${mode == null}">
					<td><a href="DetailViewFoodBeanAction.do?sample_id=${person.sample_id}" class="btn btn-secondary" role="button"> Detail &raquo;</a>
					</td></c:if>
					<c:if test="${mode eq 'delete'}">
					<td><a href="DeleteFoodBeanAction.do?sample_id=${person.sample_id}" class="btn btn-danger" role="button"> Delete &raquo;</a>
					</td></c:if>
					<c:if test="${mode eq 'edit'}">
					<td><a href="EditViewFoodBeanAction.do?name=${person.name}" class="btn btn-success" role="button"> Edit &raquo;</a>
					</td></c:if></tr>
			</c:forEach>
			</table>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp" />	
</body>
</html>