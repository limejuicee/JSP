<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>자바빈 이용하기</title>
	</head>
	<body>
		<!-- jsp:useBean -->
		<!-- class부분에는 정말 java class경로를 적어주면 된다 -->
		<!-- id부분에는 변수의 이름을 적어주면 된다 -->
		<!-- scope부분에는 변수가 유지될 범위를 적어주면 된다 -->
		<jsp:useBean class="beans.Student" id="s" scope="page"></jsp:useBean>
		
		<%-- 
		<%
			//beans.Student s=new beans.Student();
			//class id=new class();
			s.setName("이승구");
		%>
		 --%>
		<!-- name객체 내부에 property필드를 찾아 set을 붙인 메서드에 value를 입력 -->
		<jsp:setProperty name="s" property="name" value="이승구"></jsp:setProperty>
		<h1><jsp:getProperty name="s" property="name"></jsp:getProperty></h1>
		
		<!-- age, address에서도 데이터를 set하고 get해보세요 -->
		<jsp:setProperty name="s" property="age" value="13"></jsp:setProperty>
		<h1><jsp:getProperty name="s" property="age"></jsp:getProperty></h1>
		
		<jsp:setProperty name="s" property="address" value="도봉구"></jsp:setProperty>
		<h1><jsp:getProperty name="s" property="address"></jsp:getProperty></h1>
	</body>
</html>