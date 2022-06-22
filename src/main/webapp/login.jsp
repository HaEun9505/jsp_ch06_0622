<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 로그인</title>
</head>
<body>
	<%	
		//로그인 중이면 가져옴
		String mid = (String)session.getAttribute("memberId");
		//세션 유효화 체크
		if(mid == null) {
	%>
	<%-- null값이면 --%>
	<form action="loginOk.jsp" method="post"><!-- method 생략하면 get방식 -->
		아이디 : <input type="text" name="id"><br><br>
		비밀번호 : <input type="password" name="pw"><br><br>
		<input type="submit" value="로그인">
	
	</form>
	<%	//세션이 없으면
		}else{
	%>
		현재 <%= mid %>님 로그인 중입니다.<br><br>
		<input type="button" value="로그아웃" onclick="location.href='logout.jsp'">
		<%-- 로그아웃 페이지로 이동 --%>
	<%
		}
	%>
</body>
</html>