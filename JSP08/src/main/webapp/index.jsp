<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="css/style.css">
		<script src="js/script.js"></script>
		<!-- <style>
			td {
			border : 1px solid black;
			text-align : center;
			font-weight : border;
			border-collapse : collapse;
			width : 100px;
			}
			form {
			border : 1px solid black;
			text-align : center;
			display : block;
			}
			div {
			border : 1px solid black; 
			}
		</style> -->
	</head>
	<body>
		<div id="wrap">
			<div class="th">상품명</div>
			<div class="th">가격</div>
			<div class="th">수량</div>
			<div class="td">컴퓨터</div>
			<div class="td">1000000</div>
			<div class="td">
				<select>
					<option>0</option>
					<option>1</option>
					<option>2</option>
					<option>3</option>
					<option>4</option>
					<option>5</option>
				</select>
			</div>
				
			<div class="td">스마트폰</div>
			<div class="td">1500000</div>
			<div class="td">
				<select>
					<option>0</option>
					<option>1</option>
					<option>2</option>
					<option>3</option>
					<option>4</option>
					<option>5</option>
				</select>
			</div>
			<div class="result">
				<h1>결제총액</h1>
				<h1>0원</h1>
				<form method="get" action="pay.jsp">
					<input type="hidden" name="comp">
					<input type="hidden" name="phone">
					<input type="submit" value="결제하기">
				</form>
			</div>
		</div>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		<!--  <table>
			<tr>
				<td>상품명</td>
				<td>가격</td>
				<td>수량</td>
			</tr>
			<tr>
				<td>컴퓨터</td>
				<td>1000000</td>
				<td>
					<select>
						<option>0</option>
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						<option>5</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>스마트폰</td>
				<td>1500000</td>
				<td>
					<select>
						<option>0</option>
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						<option>5</option>
					</select>
				</td>
			</tr>
		</table>
		<div>
			<form method="post" action="pay.jsp">
				<h1>결제총액</h1><h1>0원</h1><input type="submit" value="결제하기">
				</td>
			</tr>
		</div>
	</div>  -->
	</body>
</html>