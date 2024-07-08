<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>전송 페이지</title>
		<style>
			th,td{
				border:1px solid black;
			}
			input[type="text"] {
				width : 50px;
			}
			input[type="submit"] {
				width : 100%;
			}
		</style>
	</head>
	<body>
		<div id="wrap">
			<form method="get" action="next.jsp">
				<table>
					<tr>
						<th>이름</th>
						<th>국어</th>
						<th>영어</th>
						<th>수학</th>						
					</tr>
					<tr>
						<td><input type="text" name="nm"></td>
						<td><input type="text" name="kr"></td>
						<td><input type="text" name="en"></td>
						<td><input type="text" name="ma"></td>
					</tr>
					<tr>
						<td colspan="4"><input type="submit" value="전송"></td>
					</tr>
				</table>
			</form>
		</div>
	</body>
</html>