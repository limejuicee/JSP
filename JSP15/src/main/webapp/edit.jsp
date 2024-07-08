<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>회원정보 수정</title>
		<style>
			#wrap {
				margin : 0 auto;
				width : 700px;
				border : 10px solid gray;
				padding : 40px;
			}
			
			td,th {
				border:1px solid black;
				padding : 10px;
			}
			form {
				width : 700px;
				margin :10px auto;
			}
			span {
				display : inline-block;
				width :160px;
			}
		</style>
	</head>
	<body>
		<%
			//정보수정을 하기 위해서는 select를 하고 update를 해줘야 사용자가 진행이 가능하다.
			Connection conn=null;
			Statement stmt=null;
			ResultSet rs=null;
			
			String url="jdbc:mysql://127.0.0.1:3306/sample";
			String db_id="root";
			String db_pw="iotiot";
			
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn=DriverManager.getConnection(url,db_id,db_pw);
				String sql="select * from register;";
				stmt=conn.createStatement();
				rs=stmt.executeQuery(sql);
				%>
					<div id="wrap">
						<table>
							<tr>
								<td>회원번호</td>
								<td>아이디</td>
								<td>비밀번호</td>
								<td>이름</td>
								<td>이메일</td>
								<td>연락처</td>
								<td>주소</td>
							</tr>
					</div>
				<%
				while(rs.next()){
					String num=rs.getString("num");
					String id=rs.getString("id");
					String pass=rs.getString("pass");
					String name=rs.getString("name");
					String email=rs.getString("email");
					String phone=rs.getString("phone");
					String address=rs.getString("address");
				
				%>
					<tr>
						<td><%=num %></td>
						<td><%=id %></td>
						<td><%=pass %></td>
						<td><%=name %></td>
						<td><%=email %></td>
						<td><%=phone %></td>
						<td><%=address %></td>
					</tr>			
				<%
				}
				%>
						</table>
						
					</div>
				<%
			}catch(Exception e){
				System.out.println("접속 중 오류 발생 : "+e);
			}finally{
				try{
					if(rs!=null)rs.close();
					if(stmt!=null)rs.close();
					if(conn!=null)rs.close();
				}catch(Exception ex){
					System.out.println("접속 해제중 오류 발생 : "+ex);
				}
			}
		%>
		<form method="post" action="update.jsp">
			변경하실 회원의 번호를 입력해 주세요 : <input type="text" name="number"> <br>
			<fieldset>
				<legend>수정사항 입력</legend>
				<span>회원 아이디 변경 : </span> <input type="text" name="id"><br>
				<span>회원 비밀번호 변경 : </span> <input type="text" name="pw"><br>
				<span>회원 이름 변경 : </span> <input type="text" name="nm"><br>
				<span>회원 이메일 변경 : </span> <input type="text" name="em"><br>
				<span>회원 연락처 변경 : </span> <input type="text" name="ph"><br>
				<span>회원 주소 변경 : </span> <input type="text" name="ad"><br>				
			</fieldset>
			<input type="submit" value="수정">
		</form>
	</body>
</html>