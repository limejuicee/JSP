<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="utf-8">
		<title>EL패러미터의 특징</title>
	</head>
	<body>
		<%
			request.setCharacterEncoding("utf-8");
			String first=request.getParameter("first");
			String second=request.getParameter("second");
			
			String result=first+second;
		%>
		<h1>더한 값 : <%=result %></h1>
		<%
			int numf=Integer.parseInt(first);
			int nums=Integer.parseInt(second);
			int numr=numf+nums;
		%>
		<h1>parseInt : <%=numr %></h1>
		<h1> ${param.first}</h1>
		<h1> ${param.second }</h1>
		<h1> ${param.first+param.second }</h1>
		<h1>${param.first }${ param.second}</h1>
		
		<%
			//scope				:	데이터가 남아있을 수 있는 범위 ***
			//page scope		:	현재 페이지에서 존재
			//request scope		:	리퀘스트가 발생해서 전달된 페이지까지 존재
			//session scope		:	세션이 존재하는 한 존재(1:1로 매칭된 특정 클라이언트 범위에서 존재)
			//application scope	:	해당 소프트웨어 내에서 모든 사용장게 공유되도록 존재
		%>
	</body>
</html>