<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>복습</title>
	</head>
	<body>
		<h1>index.jsp입니다. 시작은 여기서 합니다.</h1>
		<form method="post" action="req.jsp">
			전송 문자 데이터 : <input type="text" value="여기다 문자 입력" name="first">
			<hr>
			전송 색상 데이터 : <input type="color" value="ff0000" name="c">
			<hr>
			<input type="submit" value="눌러서 전송">
		</form>
		<hr>
		<a href="req.jsp?first=a태그로+전송된+데이터&c=%230000ff">a태그로 get전송</a>
		<hr>
		<button>자바스크립트로 데이터 전송</button>
		<script>
			let btn=document.getElementsByTagName("button")[0];
			btn.addEventListener("click",function(){
				location.href="req.jsp?first=자바스크립트로+전송된+데이터&c=%2300ff00";
			});
			
		</script>
	</body>
</html>