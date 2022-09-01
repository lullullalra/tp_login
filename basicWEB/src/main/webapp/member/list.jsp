<%@page import="gntp.lesson.vo.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member List</title>
<link rel="stylesheet" href="../css/style.css">
</head>
<body>
<h1>Member List</h1>
<%
	ArrayList<MemberVO> list = (ArrayList<MemberVO>)request.getAttribute("list");
	for(MemberVO member : list){
		//out.print(member.toString()+"<br>");
	}
%>
<table>
	<tr><th>아이디</th><th>패스워드</th><th>이름</th><th>이메일</th><th>가입일자</th></tr>
<% for(MemberVO member : list){%>	
	<tr>
		<td>
			<a href="../logic/process2.jsp?id=<%=member.getId()%>">
				<%=member.getId() %>
			</a>
		</td>
		<td><%=member.getPwd() %></td>
		<td><%=member.getName() %></td>
		<td><%=member.getEmail() %></td>
		<td><%=member.getJoinDate() %></td>
	</tr>
<%} %>
</table>
</body>
</html>