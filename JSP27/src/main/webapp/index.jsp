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
		<%
			String[] season={"봄","여름","가을","겨울"};
			System.out.println(season);
			//for문을 이용해서 하나씩 확인
			for(int i=0; i<season.length; i++) {
				out.println("<h3 style='color:red;'>"+season[i]+"</h3>");
			}
			//향상된 for문을 이용해서 하나씩 확인
			for(String str:season) {
				out.print("<h3 style='color:blue;'>"+str+"</h3>");
			}
			pageContext.setAttribute("arr",season);
		%>
		<!-- forEach varStatus 내부의 변수 -->
		<!-- 	index : 배열의 인덱스와 동일 0번부터 시작해서 배열 끝번호-1번까지 존재하는 번호-->
		<!--	count : 반복의 횟수데이터-->
		<!-- 	first : 첫번째 요소인지 여부 -->
		<!-- 	last  : 마지막 요소인지 여부 -->
		<c:forEach var="str" items="${arr }" varStatus="iter">
			<c:if test="${iter.first }">
				<div style="border:2px solid blue;">
			</c:if>
			<h3 style='color:green;'>${str }</h3>
			<c:if test="${iter.last }">
				</div>
			</c:if>			
		</c:forEach>
		<%
			for(int i=0; i<5; i++) {
				out.print("<h3 style='color:orange'>"+i+"</h3>");
			}
		%>
		<c:forEach var="i" begin="0" end="4" >
			<h3 style='color:purple'>${i }</h3>
		</c:forEach>
		
		<%
			String student="이영준,김철수,홍길동,고희선";
			pageContext.setAttribute("student",student);
		%>
		<c:forTokens var="data" items="${student }" delims=",">
			<h3 style='color:purple'>${data }</h3>
		</c:forTokens>
		${student }
	</body>
</html>