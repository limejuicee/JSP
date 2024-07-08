<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="data.Student" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>데이터 확인 페이지</title>
	</head>
	<body>
		<%
			request.setCharacterEncoding("utf-8");
			Student s=new Student();
		
			s.setName(request.getParameter("nm"));
			s.kor=Integer.parseInt(request.getParameter("kr"));
			s.eng=Integer.parseInt(request.getParameter("en"));
			s.math=Integer.parseInt(request.getParameter("ma"));
			
			session.setAttribute("obj", s);
		%>
		<h1>전송 결과 확인</h1>
		<p>이름 : <%=s.getName() %></p>
		<p>국어 : <%=s.kor %></p>
		<p>영어 : <%=s.eng %></p>
		<p>수학 : <%=s.math %></p>
		
		<a href="result.jsp">눌러서 다른 페이지 이동</a>
		
		
		<%--
		<form id="data" method="get" action="result.jsp">
			<input type="hidden" name="nm">
			<input type="hidden" name="kr">
			<input type="hidden" name="en">
			<input type="hidden" name="ma">
		</form>
		
		
		<script>
			let data=document.getElementById("data");
			data.nm.value="<%=name%>";
			data.kr.value="<%=kor%>";
			data.en.value="<%=eng%>";
			data.ma.value="<%=math%>";	
			
			function sub(){
				data.submit();
			}
		</script>	
		--%>
	</body>
</html>