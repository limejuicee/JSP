<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>bean과 request처리</title>
		<style>
			span {
				width :75px;
				display : inline-block;
			}
		</style>
	</head>
	<body>
		<!--
			//Scope 		:	데이터가 존재할 수 있는 범위를 지정하는 방법
			//				:	서비스의 종류, 데이터의 특징에따라 맞는 scope를 사용해야 한다
			//page			:	단일 페이지 내에서만 유지, 일반적인 변수
			//request		:	request가 유지되는 범위 내에서만 유지, 1회의 request로부터 response가 발생하기 직전까지 유지
			//session		:	단일 클라이언트에 대해 session이 살아있는한 유지, 다른 클라이언트에 대해서는 동작하지 않음
			//application	:	프로그램 전체에서 유지, 모든 사용자 모든 페이지에서 동작
		-->
		
		<div id="wrap">
			<form method="post" action="register.jsp">
				<span>이름 : </span><input type="text" name="name"><br>
				<span>아이디 : </span><input type="text" name="userId"><br>
				<span>비밀번호 : </span><input type="password" name="pass"><br>
				<span>이메일 : </span><input type="text" name="email"><br>
				<span>연락처 : </span><input type="text" name="phone"><br>
				<input type="submit" value="전송">
			</form>
		</div>
	</body>
</html>