<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <style>
    
 		  body {
            text-align: center;
            padding: 50px 0px 0px 0px;
        }   
    
        #sh {
            width: 300px;
            height: 30px;
            border: solid dimgray 3px;
            text-align: center;
        }
        
        #shbtn { 
            width: 50px;
            height: 30px;
            border: 0px;
            background-color: black;
            color: white;
            font-size: 17px;
            text-align: center;
        }
    </style>
<html>
<head>
<meta charset="UTF-8">
<title>도서</title>
</head>
<body>
<form action="Bookresult.jsp" method="get">
    <input type="search" name="sh" id="sh">
    <input type="submit" value="검색" id="shbtn">
    </form>
</body>
</html>