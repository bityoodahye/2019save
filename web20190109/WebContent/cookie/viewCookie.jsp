<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>쿠키 정보 보기</h1>

<%
	Cookie[] cookies = request.getCookies();

	if(cookies != null && cookies.length > 0){
		for ( int i=0; i < cookies.length ; i++) {
			if (cookies[i].getName().equals("name")) {
				Cookie cookie = new Cookie("name",
				URLEncoder.encode("JSP 프로그래밍","utf-8"));
				response.addCookie(cookie);
			}
		}
	} else {
		
		%>
		저장된 쿠키 정보가 없습니다.
		<% 
	}
%>

<h3>
<a href="editCookie.jsp">쿠키 수정하기</a><br>
<a href="deletCookie.jsp">쿠키 삭제하기</a>

</h3>

</body>
</html>