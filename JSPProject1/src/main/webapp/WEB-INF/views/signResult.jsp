<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	String id = request.getParameter("userId");
	String[] userPw = request.getParameterValues("userPw");
	String name = request.getParameter("userName");
	String email = request.getParameter("Email");
	String[] hobby = request.getParameterValues("hobby");
	

%>




<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>


	
	<% if(!userPw[0].equals(userPw[1])) { %>
	<h3>비밀번호가 일치하지 않음</h3>
	
    	<% } else {  %>	
    		아이디 : <%= id %>
    		비밀번호 : <%= userPw[0] %>
    		이름 : <%= name %>
    		이메일 : <%= email %>
    		취미 :
    	 	<% for(String h : hobby){ %>
    			<%= h %>
			
			<% } %>
			
			<h3><%=name %>회원가입완료</h3>
    	<% } %>	


    

    
</body>
</html>