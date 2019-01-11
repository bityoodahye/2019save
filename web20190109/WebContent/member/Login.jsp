<%@page import="member.Memberinfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	String userId = request.getParameter("uid");
	String userPw = request.getParameter("upw");
	
	if(userId != null && userPw != null && userId.equals(userPw)){
		// 로그인 인증 성공
		// Session 속성으로 사용자 정보를 저장
		
		// id 값으로 DB에서 검색 -> 결과가 null 이 아니어야한다.
		// DB에 있는 pw 와 사용자가 입력한 pw 비교 --> 같으면 인증 성공
		// 세션에 사용자 정보를 저장
		
		Memberinfo memberinfo = new Memberinfo();
		
		memberinfo.setId("cool");
		memberinfo.setName("쿨");
		
		memberinfo.setPassword("");
		
		session.setAttribute("loginInfo", memberinfo);
		
		response.sendRedirect("mypage.jsp");
	} else {
		
		response.sendRedirect("loginForm.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>로그인 성공</h1>


</body>
</html>