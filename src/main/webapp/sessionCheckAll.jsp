<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>모든 세션 정보 확인</title>
</head>
<body>
	<h2>모든 세션 정보 확인하기</h2>
	<hr>
	<%	
		//세션 값 여러개 가져올때(Enumeration 객체로 반환)
		Enumeration enumer =session.getAttributeNames();
		
		String name;
		String value;
		
		//원소만큼 돌다가 값이 없으면 false(세션의 개수만큼 가져옴)
		while(enumer.hasMoreElements())
		{
			name = enumer.nextElement().toString();	//다음 값을 문자열로 반환해서 가져오기
			value = (String)session.getAttribute(name);
			
			out.println("세션의 이름 : " + name + "<br>");
			out.println("세션의 속성값 : " + value + "<br>");
		}
	%>
</body>
</html>