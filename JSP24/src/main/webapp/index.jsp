<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>스코프 범위 처리</title>
	</head>
	<body>
		<%
			//page scope	:	한 페이지 내부에서 사용가능
			//request scope	:	request와 전달받은 페이지에서 사용가능
			//session scope	:	세션을 부여받은 클라이언트의 전체 페이지에서 사용가능
			//application scope	:	전체 사용자 전체 페이지에서 사용가능
			
			//같은 검색어로 여로 scope에 데이터가 존재하는 경우 pageScope가 우선권을 가진다
			
			pageContext.setAttribute("name", "page scope");
			request.setAttribute("name", "request scope");
			session.setAttribute("name", "session scope");
			application.setAttribute("name", "application scope");
		%>
		<h1>${pageScope.name }</h1>
		<h1>${requestScope.name }</h1>
		<h1>${sessionScope.name }</h1>
		<h1>${applicationScope.name }</h1>
		<a href="start.jsp">데이터 확인하기(페이지단위)</a>
	</body>
</html>