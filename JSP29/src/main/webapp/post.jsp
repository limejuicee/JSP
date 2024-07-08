<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>post로 서블릿이 호출</title>
	</head>
	<body>
		<h1 style="color:red;">여기는 post.jsp입니다</h1>
		<p>test서블릿을 post방식으로 호출한 경우 이 페이지가 반환됩니다</p>
		${requestScope.data }
	</body>
</html>