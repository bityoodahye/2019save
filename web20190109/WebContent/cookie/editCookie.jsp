<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.net.URLEncoder"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
   //배열로 모든 쿠키를 담는다.
   Cookie[] cookies = request.getCookies();

   if(cookies !=null && cookies.length >0){
      for(int i=0; i<cookies.length; i++){
         if(cookies[i].getName().equals("name")){
            //새로운 쿠키 생성
            Cookie c= new Cookie("name", URLEncoder.encode("JSP프로그래밍", "UTF=8"));
            response.addCookie(c);
         }
         
      }
   } else {
      %>
      저장된 쿠키 정보가 없습니다.
      <%
   }
%>
<h3>
   <a href="viewCookie.jsp">쿠키 정보 보기</a>
</h3>
</body>
</html>