
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>show page</title>
<%
HttpSession hs = request.getSession();
boolean login = Boolean.parseBoolean(hs.getAttribute("login") + "");
if (hs.getAttribute("login") == null || !login){
	response.sendRedirect("LoginPage.jsp");
}
%>
</head>
<body>
	<form action="student_welcome.jsp">
		<div>学号：<%=hs.getAttribute("id")%></div>
		<div>姓名：<%=hs.getAttribute("name")%></div>
		<div>性别：<%=hs.getAttribute("sex")%></div>
		<div>专业：<%=hs.getAttribute("major")%></div>
		<div>年级：<%=hs.getAttribute("grade")%></div>
		<div>地址：<%=hs.getAttribute("address")%></div>
		<div>电话：<%=hs.getAttribute("phone")%></div>
		<div>QQ：<%=hs.getAttribute("qq")%></div>
		<input type='submit' value='返回' />
	</form>
	
</body>
</html>