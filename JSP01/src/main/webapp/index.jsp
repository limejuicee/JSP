<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Insert title here</title>
		<style>
			h1 {
				text-align:center;
			}
			/*CSS 주석 모양*/
		</style>
	</head>
	<body>
		<%
			int a=10;
			int b=20;
			int result=a+b;
			//Java 주석모양
		%>
		<h1>반갑습니다!</h1>
		<% String str="자바로 만든 인사"; %>
		<% out.print(str); %>
		<h1 style="color:red"><%out.print(result); %></h1>		
		<h1 style='color:green;'>이렇게 작성합니다.</h1>
		<!-- HTML 주석모양 -->
		<%-- JSP 주석모양 --%>
		<script>	
			alert("<%out.print(result);%>")
		</script>
		<%--	JSP전체 주석처리
		
			/**/ CSS주석 모양
			<!-- --!> HTML주석 모양
			// /* */ Java 주석 모양
			// /* */ JavaScript 주석 모양
			상황에 따라 알잘딱하게 써야함
		 --%>
	</body>
</html>