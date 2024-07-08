<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h1>일반 자바방식</h1>
		<%
			beans.Student s1=new beans.Student();
			s1.setName("이영준");
			s1.setAge("19");
			s1.setAddress("서울시 강동구");
		%>
		<%=s1 %>
		<h1>jsp액션태그방식</h1>
		<jsp:useBean class="beans.Student" id="s2"></jsp:useBean>
		<jsp:setProperty property="name" name="s2" value="고희선"></jsp:setProperty>
		<jsp:setProperty property="age" name="s2" value="25"></jsp:setProperty>
		<jsp:setProperty property="address" name="s2" value="서울시 강서구"></jsp:setProperty>
		<%=s2 %>
		<h1>jstl방식</h1>
		<c:set var="s3" value="<%=new beans.Student() %>"></c:set>
		<c:set target="${s3 }" property="name" value="김철수"></c:set>
		<c:set target="${s3 }" property="age" value="31"></c:set>
		<c:set target="${s3 }" property="address" value="서울시 도봉구"></c:set>
		${s3 }
		<!-- 읽기 연습하기는 좋은데 실제 개발할때는 적당히 쓰는게 오호홍 좋아용 -->
		<a href="delete.jsp">데이터 소거</a>
	</body>
</html>