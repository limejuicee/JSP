<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>세션 단위 데이터 확인</title>
	</head>
	<body>
		<h1>\${pag } : ${pag }</h1>
		<h1>\${param.req } : ${param.req }</h1>
		<h1>\${ses } : ${ses }</h1>
		<h1>\${app } : ${app }</h1>
		<%
			session.invalidate();
			//application.removeAttribute("app");	어플리케이션단위 데이터 소개
		%>
		<h1>세션 정보 만료 후</h1>
		<h1>\${ses } : ${ses }</h1>
		<a href="start.jsp">페이지 단위의 scope확인</a><br>
		<a href="page2.jsp">리퀘스트 단위의 scope확인</a><br>
		<a href="page3.jsp">세션 단위의 scope확인</a><br>
		<a href="page4.jsp">어플리케이션 단위의 scope확인</a><br>
	</body>
</html>