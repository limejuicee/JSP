<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Expression Language</title>
	</head>
	<body>
		<!-- EL(Expression Language) : 표현언어, 변수의 값을 외부로 표현해주는 역할 -->
		<%--${내용}	:	내용은 변수의 이름 또는 값, 계산식을 포함한 외부로 적어주기 위한 데이터 --%>
		<%out.print("테스트"); %> <br>
		<%="테스트" %><br>
		${"테스트" }<br>
		
		<!-- EL의 종류 -->
		정수형 : ${10 }<br>
		실수형 : ${5.6}<br>
		문자열형 : ${"iot 융합" }<br>
		논리형 : ${true }<br>
		null처리 : ${null }<Br><!-- EL에서 null은 표현할게 없는거니까 안보임 -->
		
		<hr>
		<!-- EL의 산술연산 -->
		1+2 : ${1+2 }<br>
		3-4 : ${3-4 }<br>
		5*6 : ${5*6 }<br>
		7/8 : ${7/8 }<br>
		9%10 : ${9%10 }<br>
		11 div 12 : ${11 div 12 }<br>
		
		<hr>
		
		<!-- 관계연산 -->
		1==2 : ${1==2 }<br>
		1 eq 2 : ${1 eq 2 }<br>
		3 != 4 : ${3 !=4 }<br>
		3 ne 4 : ${3 ne 4 }<br>
		5 < 6 : ${5<6 }<br>
		5 lt 6 : ${5 lt 6 }<br>
		5 > 6 : ${5 >6 }<br>
		5 gt 6 : ${5 gt 6 }<br>
		9 <= 10 : ${9 <= 10 }<br>
		9 le 10 : ${9 le 10 }<br>
		11 >= 12 : ${11 >= 12 }<br>
		11 ge 12 : ${11 ge 12 }<br>
		
		<hr>
		true && false : ${true && false}<br>
		true || false : ${true || false}<br>
		!true : ${!true }<br>
		
		<hr>
		<!--  null 확인연산 -->
		empty null : ${empty null }<br>
		
		<%
			int a=3+5;
			pageContext.setAttribute("num",a);
		%>
		${num}
	</body>
</html>