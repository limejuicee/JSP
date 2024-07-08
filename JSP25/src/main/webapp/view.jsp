<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>jstl표현법 연습</title>
	</head>
	<body>
		<%
			String data="자바단위 데이터";
			//일반 자바 변수는 java실행 즉시 사라지므로 EL실행시까지 존재하지 않는다
			//따라서 일반 자바변수는 EL로 출력 시 null을 반환하며 EL은 null은 표현하지 않는다
			pageContext.setAttribute("pag","페이지단위 데이터");
			request.setAttribute("req","리퀘스트단위 데이터");
			session.setAttribute("ses","세션단위 데이터");
			application.setAttribute("app","어플리케이션 단위 데이터");
		%>
		<h1>EL의 출력</h1>
		${data }<br>
		${pag }<br>
		${req }<br>
		${ses }<br>
		${app }<br>
		
		<h1>jstl의 출력</h1>
		<c:set var="pag2" value="jstl로 입력한 페이지 단위 데이터" scope="page"></c:set>
		<c:set var="req2" value="jstl로 입력한 리퀘스트단위 데이터" scope="request"></c:set>
		<c:set var="ses2" value="jstl로 입력한 세션 단위 데이터" scope="session"></c:set>
		<c:set var="app2" value="jstl로 입력한 어플리케이션 단위 데이터" scope="application"></c:set>
		<c:out value="${pag2 }"></c:out><br>
		<c:out value="${req2 }"></c:out><br>
		<c:out value="${ses2 }"></c:out><br>
		<c:out value="${app2 }"></c:out><br>
	</body>
</html>