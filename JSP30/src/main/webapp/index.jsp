<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>메인 페이지</title>
	</head>
	<body>
		<h1>여기는 메인 페이지 입니다</h1>
		<a href="login.do">로그인 처리</a>
		<a href="list.do">전체멤버 조회</a>
		<a href="join.do">회원가입</a>
		<!-- 
			서블릿 호출 기준 ***
			doGet() : a태그 클릭, form태그의 method=get submit실행, 브라우저 도메인 직접입력, Ajax get send
			doPost() : form태그의 method=post submit실행, Ajax post send(Data)
		 -->
	</body>
</html>