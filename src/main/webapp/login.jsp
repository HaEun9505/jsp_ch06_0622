<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 로그인</title>
</head>
<body>
	<form action="loginOk.jsp" method="post"><!-- method 생략하면 get방식 -->
		아이디 : <input type="text" name="id"><br><br>
		비밀번호 : <input type="password" name="pw"><br><br>
		<input type="submit" value="로그인">
	
	</form>
</body>
</html>