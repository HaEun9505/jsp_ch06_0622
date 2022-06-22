<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 정보 확인</title>
</head>
<body>
	<h2>session 정보 확인</h2>
	<hr>
	<%
		//자식클래스로 만든 mid는 부모클래스로 만든 객체를 받을 수 없으므로 형 변환 
		String mid = (String)session.getAttribute("memberId");
		if(mid == null){	//mid가 null값이면(로그인 x)
			out.println("로그인<br>");
		}else {	//로그인 되어있으면
	%>
		현재 <%= mid %>님은 로그인 중입니다.<br>
		<a href='logout.jsp'>로그아웃</a>
	<%
		}
	%>
	<br>
	<a href="login.jsp">로그인페이지로 가기</a>
	
	<%-- <%		
			out.println("로그아웃<br>");
			//로그아웃을 누르면
			out.println("현재 " + mid + "님은 로그인중입니다.");
		}
		
	%> --%>
	
</body>
</html>