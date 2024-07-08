<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>페이지 이동 테스트</title>
		<link rel="stylesheet" href="css/test.css">
	</head>
	<body>
		<div id="wrap">
			<jsp:include page="header.jsp"></jsp:include>
			<p>여기는 <u>next.jsp</u>입니다</p>
			<p>페이지가 이동해도 같은 page를 사용해서 편리합니다</p>							
			<jsp:include page="footer.jsp"></jsp:include>
		</div>
	</body>
</html>