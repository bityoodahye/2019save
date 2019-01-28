<%@page import="java.util.List"%>
<%@page import="booksearch.Book"%>
<%@page import="booksearch.Search"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String keyword = request.getParameter("sh");
    System.out.println(keyword);
    Search search = new Search();
    List<Book> list = search.serachBook(keyword, 15, 1);
    
    pageContext.setAttribute("list", list);
    
    %>
<!DOCTYPE html>
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic" rel="stylesheet">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">    
    <style>
        * { margin : 0px; padding: 0px;}
        h2 {
            font-family: 'Nanum Gothic', sans-serif;
            font-size : 30px;
            padding: 30px 0px 20px 30px;
        }
        hr {
            width: 900px;
            border: solid 1px silver;
            float: left;
            margin-left: 30px;
        }
        .reuslt {
         	padding : 15px 0px 20px 20px;
         	font-family: 'Nanum Gothic', sans-serif;
         	font-size : 20px;
			background-color : black;
			opacity : 0.7;
			color : white;
			width : 1100px;
			height: 700px;
			margin-left : 30px;
			
        }
        
        a {
        text-decoration: none;
        color : white;
        }
        
        p {
        color : white;
        margin-bottom: 10px;
        font-family: 'Nanum Gothic', sans-serif;
        }
        
        #p {
        color : darkgray;
        margin-bottom: 15px;
        margin-left : 30px;
        font-family: 'Nanum Gothic', sans-serif;
        }
        
        </style>
<html>
<head>

<meta charset="UTF-8">
<title>검색결과</title>
</head>
<body>
<h2><strong><i class="fa fa-book">&ensp;</i>책 검색</strong></h2>
    <hr><br>
    <p id="p"><strong>관련 도서 홈페이지로 이동하려면 도서제목을 클릭하세요.</strong></p>
    <div class="reuslt">
    
<%for(int i = 0; i < list.size(); i++){ %>
	<p><%=i+1 %>&emsp;<a href='<%=list.get(i).getLink()%>'><%=list.get(i).getTitle() %></a><br></p>
<%} %>

</div>
</body>
</html>