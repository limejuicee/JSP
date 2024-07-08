<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>스코프 데이터 입력 페이지</title>
	</head>
	<body>
		<%
			pageContext.setAttribute("pag","page단위 데이터");
			session.setAttribute("ses","session단위 데이터");
			application.setAttribute("app","application단위 데이터");
		%>
		<h1>\${pag } : ${pag }</h1>
		<h1>\${req } : ${req }</h1>
		<h1>\${ses } : ${ses }</h1>
		<h1>\${app } : ${app }</h1>
		
		<a href="start.jsp">페이지 단위의 scope확인</a><br>
		<a href="#" onclick="sub()">리퀘스트 단위의 scope확인</a><br>
		<a href="page3.jsp">세션 단위의 scope확인</a><br>
		<a href="page4.jsp">어플리케이션 단위의 scope확인</a><br>
		<form id="frm" method="get" action="page2.jsp">
			<input type="hidden" name="req" value="request단위 데이터">
		
		</form>
		<script>
			let frm=document.getElementById("frm");
			function sub(){
				frm.submit();
			}
		</script>
	</body>
</html>