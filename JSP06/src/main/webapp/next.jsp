<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>p태그 값 전송</title>
	</head>
	<body>
		<h1>next.jsp</h1>
		<%
			request.setCharacterEncoding("utf-8");
			String dt=request.getParameter("data");
		%>
		<h3><%=dt %></h3>
		
		
	</body>
</html>