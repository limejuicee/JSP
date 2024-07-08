<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>GET을 통한 데이터 전송</title>
</head>
<body>
	<%
		String data="이 내용을 출력";
		int number=9876;
	%>
	<% out.print(data);	%>
	<br>
	<%=data %>
	<a href="result.jsp?test=<%=data%>&num=<%=number%>">눌러서 결과확인</a>
	<!-- 127.0.0.1/JSP03/result.jsp?검색어=데이터 -->
	<!-- 목적지?키1=값1&키2=값2&키3=값3 -->
	<!-- GET방식의 데이터 전송방법 -->
</body>
</html>