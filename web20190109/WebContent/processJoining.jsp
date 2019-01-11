<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<!-- 빈즈 객체 생성  -->
<jsp:useBean id="memberinfo" class="member.Memberinfo"/>
<!-- 사용자 입력 데이터 받기 -->
<!-- 빈즈 클래스의 변수 이름과 폼 name 속성의 값이  같아야 한다 -->
<jsp:setProperty property="*" name="memberinfo"/>

<!-- 빈즈의 멤버에 값을 명시적 입력 -->
<jsp:setProperty property="password" name="memberinfo"
value="<%= memberinfo.getPassword() %>"/>
<html>
<head>
<meta charset="UTF-8">
<title>가입</title>
</head>
<body>
<table width = "400" border = "1" cellpadding="0"
cellspacing="0">
<tr>
<td>아이디</td>
<td><jsp:getProperty property="id" name="memberinfo"/></td>
<td>암호</td>
<td><jsp:getProperty property="password" name="memberinfo"/></td>
</tr>
<tr>
<td>이름</td>
<td><jsp:getProperty property="name" name="memberinfo"/></td>
<td>이메일</td>
<td><jsp:getProperty property="email" name="memberinfo"/></td>
</tr>
<tr>
<td>주소</td>
<td colspan="3">
<jsp:getProperty property="address" name="memberinfo"/>
</td>
</tr>
</table>

</body>
</html>