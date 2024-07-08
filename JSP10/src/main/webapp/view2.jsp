<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="utf-8">
		<title>쿠키 정보 공유 확인</title>
	</head>
	<body>
		<%
			Cookie[] cookies=request.getCookies();
			for(int i=0; i<cookies.length; i++){
		%>
				<p>쿠키 이름확인 : <%=cookies[i].getName() %></p>
				<p>쿠키 값확인 : <%=cookies[i].getValue() %></p>
		<%
			}
		%>
	</body>
</html>