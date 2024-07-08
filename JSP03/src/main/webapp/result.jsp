<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>데이터를 전송받는 페이지</title>
</head>
<body>
	<h1>여기는 result.jsp입니다. 데이터를 전송 받을겁니다</h1>
	<%
		String A=request.getParameter("test");
		String B=request.getParameter("num");
	//***REQUEST : 서버측에 클라이언트가 접속을 요청할 때 전송되는 데이터를 담는 부분
	%>
	<h1>전송받은 데이터 : <%=A %></h1>
	<h1>전송받은 데이터2 : <%=B %></h1>
</body>
</html>