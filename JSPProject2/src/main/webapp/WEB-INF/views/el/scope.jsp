<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>2. Servlet/JSP 내장 객체와 범위(Scope)</title>
</head>
<body>
	<h1>Servlet/JSP 내장 객체와 범위(Scope)</h1>
	
	<pre>
		Servlet?JSP에는 기본적으로 내장되어있는 4가지 객체가 존재함
		
		4종류의 객체는 각각 영향을 미칠수 있는 범위가 다름
		
		1. page : 현재 페이지
		-> 현재 Servlet 또는 JSP에서만 사용가능 (1페이지)
		
		2. request : 요청받은 페이지(Servlet/JSP)와
					요청을 위임받은 페이지(Servlet/JSP)에서 사용 가능
					(최소 2페이지 이상)
					
		3. session : 현재 사이트에 접속한 브라우저당 1개 씩 생성'
						브라우저가 종룓히거나 Seesion이 만료 될떄까지 유지
			(세션에 로그인 정보를 기록해둠 -> 브라우저가 종료되고나 로그아웃 되기 전까지 계속 로그인 상태)
			
			
		4. apploiction : 하나의 웹 어플리케이션 당 1개만 생성되는 객체
					-> 서버 시작 시 생성되면 종료 시 까지 유지
					-> 누구든지 사용 가능		
					
					
					
					********* 내장 객체의 우선 순위 **********		
					범위가 가장 작은 순서부터 우선된다
					
					-> setAttribute("Key", value)로 내장 객체가 값을 세팅할 때 
						key값이 중복되는 경우
						
						\${ key }로 작성 하는 경우
						범위가 작은 내장 객체가 높은 우선 순위를 갖게 된다
						
						page > request > session > application
	</pre>
	
	<ul>
		<li>
			<%
				pageContext.setAttribute("pageMsg", "페이지 범위 입니다");
			%>
			
			page scope pageMsg : ${pageMsg}
		</li>
		
		<li>request scope message : ${message }</li>
		
		<li>session scope sessionValue : ${sessionvalue }</li>
		
		<li>appliction scope appValue : ${appValue }</li>
	</ul>
	
	<h3>page의 str값 : ${pageScope.str }</h3>
	<h3>request의 str값 : ${requestScope.str }</h3>
	<h3>session의 str값 : ${sessionScope.str }</h3>
	<h3>application의 str값 : ${applicaionScope.str }</h3>
    
</body>
</html>
















