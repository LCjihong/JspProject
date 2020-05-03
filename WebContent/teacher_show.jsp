<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%
HttpSession hs = request.getSession();
boolean login = Boolean.parseBoolean(hs.getAttribute("login") + "");
if (hs.getAttribute("login") == null || !login){
	response.sendRedirect("LoginPage.jsp");
}
%>
<title>show page</title>
</head>
<body>
	<form action="teacher_welcome.jsp">
		<div>工号：<%=hs.getAttribute("id")%></div>
		<div>姓名：<%=hs.getAttribute("name")%></div>
		<div>性别：<%=hs.getAttribute("sex")%></div>
		<div>电话：<%=hs.getAttribute("phone")%></div>
		<input type='submit' value='返回' />
	</form>
	
</body>
</html>