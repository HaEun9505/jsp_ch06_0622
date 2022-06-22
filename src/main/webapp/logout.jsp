<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그아웃</title>
</head>
<body>
	<h2>로그아웃 확인</h2>
	<hr>
	<%
		session.invalidate();	//세션 무효화(세션삭제)
	%>
	<%	
		//세션이 있는지 체크
		//자식클래스로 만든 mid는 부모클래스로 만든 객체를 받을 수 없으므로 형 변환
		//String mid = (String)session.getAttribute("memberId");
		if(request.isRequestedSessionIdValid() != true){
		//true값이 아니면 세션이 없는 상태
			out.println("로그아웃 되셨습니다.<br>");
			out.println("<a href='logout.jsp'>");
			out.println("로그인<br>");
			out.println("</a>");
		}else {	//로그인 되어있으면(세션이 있으면)
	%>
		<br>
		<a href='logout.jsp'>로그아웃</a>
	<%
		}
	%>
</body>
</html>