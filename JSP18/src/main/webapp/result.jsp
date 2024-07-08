<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="data.Student" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>데이터 전송 목적지</title>
	</head>
	<body>
		<%
			request.setCharacterEncoding("utf-8");
			Student s=(Student)session.getAttribute("obj");
			
		%>
		<h1>여기는 result.jsp입니다</h1>
		<h2>request정보가 도달하지 않습니다</h2>
		<h2>하지만 session정보는 도달할 수 있습니다</h2>
		<p>이름 : <%=s.getName() %></p>
		<p>국어 : <%=s.kor %></p>
		<p>영어 : <%=s.eng %></p>
		<p>수학 : <%=s.math %></p>
		<p>총점 : <%=s.sum() %></p>
		<p>평균 : <%=s.avr() %></p>
		<p>객체 : <%=s %></p>
	</body>
</html>