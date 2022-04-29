<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  
  <title>Lab3_2</title>
</head>
<div class="py-5 text-center">
    <div class="jumbotron">
    <h1>Lab3_2</h1>
    <h4>회원가입 양식</h4>
    </div></div>

 
<form action="Process.jsp" name="member" method="post">
<div class="container">  

    <div class="form-group">
      <label>이름</label>
      <input type="text" class="form-control" name = "name"/>
    </div>
    
    <div class="form-group">
      <label>아이디</label>
      <input type="text" class="form-control" name = "id"/>
    </div>
    
    <div class="form-group">
      <label>비밀번호</label>
      <input type="password" class="form-control" name = "password"/>
    </div>
    
    <div class="form-group">
      <label>이메일</label>
      <input type="email" class="form-control" name = "email"/>
    </div>
    
    <div class="form-group">
    <p>성별</p>
    <div>
    <input type="radio" name="gender" value="MEN" checked>
    <label for="contactChoice1">남자</label>
    <input type="radio" name="gender" value="WOMEN">
    <label for="contactChoice2">여자</label>
    </div></div>
    
    <div class="form-group">
    <p>연락처<select name="phone1">
    <option value="010">010</option>
    			<option value="011">011</option>
    			<option value="016">016</option>
    			<option value="017">017</option>
    			<option value="019">019</option>
             </select>
                 - <input type="text" maxlength="4" name="phone2"> - <input type="text" maxlength="4" name="phone3">
                 </p>
                 </div>
    
    <div class="form-group">
    <label>주소</label>
    <input type="text" class="form-control" name="address"/>
    </div>
    <button type="submit" class="btn btn-primary" onclick="msg()">회원가입</button>
 </div> </form>  
</body>
<script>

function msg(){
	alert("회원가입 되었습니다!");
}
</script>
</html>