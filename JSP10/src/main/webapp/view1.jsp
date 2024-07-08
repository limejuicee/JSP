<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="utf-8">
		<title>쿠키 정보 확인 페이지</title>
	</head>
	<body>
		<h1>여기는 view1.jsp 입니다</h1>
		<%
			//브라우저에 여러개가 저장되어 있을 수 있으므로 Cookie타입의 배열로 받아온다
			Cookie[] cookies=request.getCookies();
		
			//배열이므로 쿠키의 수는 length로 확인할 수 있다
			int size=cookies.length;
		%>
		<h1>현재 브라우저에 저장된 쿠키 수는 : <%=size %></h1>
		<%
			for(int i=0; i<cookies.length; i++) {
		%>
				<p>쿠키의 이름 확인 : <%=cookies[i].getName() %></p>
				<p>쿠키의 값 확인 : <%=cookies[i].getValue() %></p>
		<%
			}
		%>
	</body>
</html>