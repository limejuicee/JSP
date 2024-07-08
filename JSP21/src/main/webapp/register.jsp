<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>액션태그를 이용한 데이터 처리</title>
	</head>
	<body>
		<%
			request.setCharacterEncoding("utf-8");
		%>
		<jsp:useBean class="beans.Reg" id="r" scope="page"></jsp:useBean>
		<jsp:setProperty name="r" property="*"></jsp:setProperty>
		<%
			
		%>
		<h1>전송받은 데이터</h1>
		<p>이름 : <%=r.getName() %></p>
		<p>아이디 : <%=r.getUserId() %></p>
		<p>비밀번호 : <%=r.getPass() %></p>
		<p>이메일 : <%=r.getEmail() %></p>
		<p>연락처 : <%=r.getPhone() %></p>
	</body>
</html>