<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>데이터 확인</title>
	</head>
	<body>
		<h1>여기는 result.jsp입니다</h1>
		<%
			String A=request.getParameter("nm");
			String B=request.getParameter("first");
			String C=request.getParameter("second");
			int num1=Integer.parseInt(B);
			int num2=Integer.parseInt(C);
			
			
			String sql="insert into test(name,number) values ('"+A+"',"+B+");";
			
			
		%>
		<h1>이름 : <%=A %></h1>
		<h1>첫번째 데이터 : <%=B %> </h1>
		<H1>두번째 데이터 : <%=C %></H1>
		<h1>데이터의 합 : <%=num1+num2 %></h1>
		<p><%=sql %></p>
	</body>
</html>