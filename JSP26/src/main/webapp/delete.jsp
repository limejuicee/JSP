<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>jstl 데이터 소거</title>
	</head>
	<body>
		<%
			//pageContext.setAttribute("add", 3+5);
			//pageContext.removeAttribute("add");
		%>
		<c:set var="add" value="${3+5 }"></c:set>
		\${add} : ${add }<br>
		<c:remove var="add"></c:remove>
		\${add} : ${add }<br>
		
		<form method="get" action="select.jsp">
			색상을 선택해 주세요
			<select name="color">
				<option value="1">빨강</option>
				<option value="2">주황</option>
				<option value="3" selected>노랑</option>
			</select>
			<input type="submit" value="선택">
		</form>		
	</body>
</html>