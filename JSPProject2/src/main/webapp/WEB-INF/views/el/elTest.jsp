<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>1. EL</title>
</head>
<body>
    <h1>EL(Expression Language)</h1>
    
    <pre>
    	JSP의 표현식을 조금더 효울적으로 간단히 작성할수 있도록 고안된 표현언어
    	
    	화면에 출력하고자 하는 자바코드를
    	${ key } 형식으로 작성하면
    	해당 위치에 value가 출력됨
    	
    	(추가적인 방법도 존재)
    	
    	** EL의 특징 **
    	1. get이라는 단어를 사용하지 않는다
    	-> EL은 화면에 표현만 하는 언어 == 출력용 언어(set) 블가능
    	--> set을 못하기에 get도 생략(무조건 get 수행)
    	
    	2. EL은 null을 빈칸으로 처리
    	\ ${ null인 변수 } -> 빈칸 출력
    	\ ${ NullPointerExcetion 발생 코드 } -> 빈칸출력(예외발생 X)
    	
  	
    </pre>
    
    
    테스트1 : <%= request.getParameter("test") %> <br>
    테스트2 : ${ param.test } <br>
    
    <form action="/JSPProject2/elTest" method="post">
    	이름 : <input type="text" name="inputName"> <br>
    	
    	나이 : <input type="number" name="inputAge"> <br>
    	
    	주소 : <input type="text" name="inputAddress" size="50"> <br>
    	
    	<button>제출하기</button>
    </form>
    
    <hr>
    
    <ul>
		<li>request scope message : ${message }</li>
		
		<li>session scope sessionValue : ${sessionvalue }</li>
		
		<li>appliction scope appValue : ${appValue }</li>
	</ul>
    
    <hr>
    
    <h1>우선순위 확인 : ${str }</h1>
    
    
</body>
</html>