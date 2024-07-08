<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>for문의 사용 예시</title>
	</head>
	<body>
		<h1 id="start">여기가 시작점입니다.</h1>
		<%
			for(int i=1; i<=6; i++) {
				%><h<%=i%>>저는 h<%=i%>입니다.</h<%=i%>><%
				out.print("<h"+i+">저는 h"+i+"입니다.</h"+i+">");
			}
			
			//h1~h6까지 반복해서 출력하도록 작성하시오
		%>
		<%
			for(int i=1; i<=7; i++) {
			%><h1 style="color:i">색상이 변동</h1><%
			}
		%>
			<h1 style="color:red;">색상이 변동</h1>
			<h1 style="color:orange;">색상이 변동</h1>
			<h1 style="color:yellow;">색상이 변동</h1>
			<h1 style="color:green;">색상이 변동</h1>
			<h1 style="color:blue;">색상이 변동</h1>
			<h1 style="color:navy;">색상이 변동</h1>
			<h1 style="color:pulple;">색상이 변동</h1>
			<hr>
			<%
				String[] color={"red","orange","yellow","green","blue","navy","purple"}; 
				for(int i=0; i<=100; i++) {
						%><h1 style="color:<%=color[i%7]%>;">색상이 변동</h1><% 
				}
			%>
			<a href="#start">시작점으로 이동</a>
			<a href="next2.jsp">next2로 이동</a>
	</body>
</html>