<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인</title>
</head>
<body>
	<%
		String memberId = request.getParameter("id");	//form의 name(tiger)
		String memberPw = request.getParameter("pw");	//form의 name(12345)
		
		//tiger와 12345가 memberId, memberPw와 같으면
		if(memberId.equals("tiger") && memberPw.equals("12345")){
			//세션에 저장
			session.setAttribute("memberId", memberId); 	//name,value
			session.setAttribute("memberPw", memberPw);
			
			out.println("로그인 성공!<br>");	//웹에 출력
			out.println(memberId+"님 반갑습니다.");
		} else{
			
			out.println("로그인 실패!<br>");
		}
	%>
</body>
</html>