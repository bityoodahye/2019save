<%@page import="java.net.URLDecoder"%>
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
			
			if(cookies[i].getName().equals("name")){
			%>
			<%= cookies[i].getName() %> : <%= cookies[i].getValue() %>
			:<%= URLDecoder.decode(cookies[i].getValue(), "utf-8") %>
			<br>
			<% 
			}
		}
	} else {
		
		%>
		저장된 쿠키 정보가 없습니다.
		<% 
	}
%>

</body>
</html>