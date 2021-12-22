<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>회원가입 페이지</h2>
	<form name="signupForm" action="${pageContext.request.contextPath}/signupController">
			<label for="userid">아이디 : </label><input type="text" placeholder="아이디를 입력하세요" name="userid"><br>
			<label for="password">패스워드 : </label><input type="password" placeholder="패스워드를 입력하세요" name="password" id="password"><br>
			<label for="pwCheck">패스워드 확인 : </label><input type="password" placeholder="패스워드 확인" name="pwCheck" id="pwCheck"><br>
			<label for="name">이름 : </label><input type="text" placeholder="성함을 입력하세요" name="name"><br>			
			<input type="button" id="signup" value="등록"></input>
	</form>
	
	<script>
		document.getElementById("signup").addEventListener("click", function(){
			this.disable = true;
		     if(document.getElementById('password').value !='' && document.getElementById('pwCheck').value!=''){
	                if(document.getElementById('password').value==document.getElementById('pwCheck').value){
	                	document.signupForm.submit();
	                }
	                else{
	                	 alert("패스워드와 패스워드 확인이 일치하지 않습니다.");
	                }
	            }
		
		});
	</script>
</body>
</html>