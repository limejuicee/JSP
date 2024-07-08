<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Insert title here</title>
	</head>
	<style>
		td {
		border : 1px solid black;
		}
	</style>
	<body>
		<table>
			<tr>
				<td>i=0, j=0</td> <td>i=0, j=1</td> <td> i=0, j=2</td> <td>i=0, j=3</td>
			</tr>
			<tr>
				<td>i=1, j=0</td> <td>i=1, j=1</td> <td> i=1, j=2</td> <td>i=1, j=3</td>
			</tr>
			<tr>
				<td>i=2, j=0</td> <td>i=2, j=1</td> <td> i=2, j=2</td> <td>i=2, j=3</td>
			</tr>
			<tr>
				<td>i=3, j=0</td> <td>i=3, j=1</td> <td> i=3, j=2</td> <td>i=3, j=3</td>
			</tr>
			<tr>
				<td>i=4, j=0</td> <td>i=4, j=1</td> <td> i=4, j=2</td> <td>i=4, j=3</td>
			</tr>
		</table>
		<table>
			<%
				for(int i=0; i<5; i++) {
					%>
					<tr>
						<%
							for(int j=0; j<4; j++) {
								%><td>i=<%=i %>, j=<%=j %></td><%
							}
						%>
					</tr>
					<%
				}
			%>
		</table>
		<script>
			let tds=document.getElementsByTagName("td");
			for (let i=0; i<tds.lenght; i++) {
				tds[i].style.border="1px solid red";
				/*tds[i].setAtrribute("style","border:1px solid red");*/
			}
		</script>
	</body>
</html>