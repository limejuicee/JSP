<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>자바 일반 문법의 이용</title>
	</head>
	<body>
	
		<%
			int number=-2;
			if(number>0) {	
		%>
				<h1><%=number+"\t"%>는 양수입니다</h1>
		<%
			}else {
				%><h2>음수입니다.</h2><%
		%>
				<h2><%=number+"\t"%>는 음수입니다</h2>
		<%
			}
			//음수일 경우 h2태그로 음수입니다. 라고 출력되도록 제작하시오.
		%>
		<a href="next.jsp">눌러서 for문 확인하러 가기</a>
	</body>
</html>