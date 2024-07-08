<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*" %> 
<!DOCTYPE html>
	<html>
		<head>
		<meta charset="utf-8">
		<title>데이터베이스 연결</title>
		<style>
			td {
				border : 1px solid black;
				border-collapse : collapse;
			}
		</style>
	</head>
	<body>
		<%
			Connection conn=null;	//회선연결
			Statement stmt=null;	//쿼리문 전달용 객체
			ResultSet rs=null;		//select문의 결과를 담을 객체
			String url="jdbc:mysql://127.0.0.1:3306/sample";
			String db_id="root";
			String db_pw="iotiot";
			
			String nm;
			String user;
			String add;
			try{
				//접속 시도 위치
				Class.forName("com.mysql.jdbc.Driver");
				conn=DriverManager.getConnection(url, db_id, db_pw);
				stmt=conn.createStatement();
				String sql="select * from register;";
				rs=stmt.executeQuery(sql);
				
				boolean fin;
				fin=rs.next();
				System.out.println(fin);
				String number=rs.getString("num");
				user=rs.getString("id");
				String pw=rs.getString("pass");
				nm=rs.getString("name");
				String em=rs.getString("email");
				String ps=rs.getString("phone");
				add=rs.getString("address");
				out.print("<table>");
				out.print("<tr>");
				out.print("<th>고유번호</th>");
				out.print("<th>아이디</th>");
				out.print("<th>이메이르</th>");
				out.print("</tr>");
				while(rs.next()) {
					number=rs.getString("num");
					user=rs.getString("id");
					em=rs.getString("email");
					out.print("<tr>");
					out.print("<td>"+number+"</td>");
					out.print("<td>"+user+"</td>");
					out.print("<td>"+em+"</td>");
					out.print("</tr>");
				}
				out.print("</table>");
				
				out.print("<table>");
					out.print("<tr>");
						out.print("<td>");
							out.print(number);
						out.print("</td>");
						out.print("<td>");
							out.print(nm);
						out.print("</td>");
						out.print("<td>");
							out.print(ps);
						out.print("</td>");
						out.print("<td>");
							out.print(user);
						out.print("</td>");
						out.print("<td>");
							out.print(add+"<br>");
						out.print("</td>");
					out.print("</tr>");
				out.print("</table>");


				number=rs.getString("num");
				user=rs.getString("id");
				pw=rs.getString("pass");
				nm=rs.getString("name");
				em=rs.getString("email");
				ps=rs.getString("phone");
				add=rs.getString("address");
				out.print("<table>");
					out.print("<tr>");
						out.print("<td>");
							out.print(number);
						out.print("</td>");
						out.print("<td>");
							out.print(nm);
						out.print("</td>");
						out.print("<td>");
							out.print(ps);
						out.print("</td>");
						out.print("<td>");
							out.print(user);
						out.print("</td>");
						out.print("<td>");
							out.print(add+"<br>");
						out.print("</td>");
					out.print("</tr>");
				out.print("</table>");
				%>
				<table>
					<tr>
						<td><%=nm%></td>
						<td><%=user %></td>
						<td><%=add %></td>
					</tr>
				</table>
				<%
			}catch(Exception e){
				System.out.println("접속 중 오류발생 : "+e);
			}finally{
				try{
					//접속 해제 위치
					if(conn!=null)conn.close();
				}catch(Exception ex){
					System.out.println("접속 해제 중 오류발생 : "+ex);
				}
			}
		%>
	</body>
</html>