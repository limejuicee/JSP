<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>세션 정보 확인</title>
	</head>
	<body>
		<%
			//세션으로부터 정보를 가져오는 방법
			//session.getAttribute("검색어");
			//세션은 모든 정보를 저장할 수 있지만
			//저장된 정보를 사용하기 위해서는 형변환을 해줘야 한다
			String data=(String)session.getAttribute("msg");
		%>
		<h1><%=data %></h1>
	</body>
</html>