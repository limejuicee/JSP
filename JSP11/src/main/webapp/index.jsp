<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="utf-8">
		<title>세션</title>
	</head>
	<body>
		<%
			//세션은 제작하지 않아도 서버 내부에 미리 만들어져 있음*
			//세션의 정보는 단일 사용자에게 전체 페이지에서 공유된다 ***
			//세션의 정보는 모든 jsp파일이 공유해서 사용가능
			//request또는 response와 무관하게 사용 가능하다
			String str="세션에 대해 공부합니다";
			//session.setAttribute("검색어",값);
			session.setAttribute("msg",str);
		%>
		<a href="data.jsp">세션정보 확인하러 가기</a>
	</body>
</html>