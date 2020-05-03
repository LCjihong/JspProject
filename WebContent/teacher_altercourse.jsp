<%@page import="com.webdata.service.impl.WebdataServiceImpl"%>
<%@page import="com.webdata.pojo.Course"%>
<%@page import="java.util.List"%>
<%@page import="com.webdata.service.WebdataService"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>修改</title>

<%
HttpSession hs = request.getSession();
request.setCharacterEncoding("utf-8");
boolean login = Boolean.parseBoolean(hs.getAttribute("login") + "");
if (hs.getAttribute("login") == null || !login) {
	response.sendRedirect("LoginPage.jsp");
}
String major = request.getParameter("major");
int cid = Integer.parseInt(request.getParameter("cid"));
WebdataService webdataservice = new WebdataServiceImpl();
Course c = webdataservice.showCourse(request.getParameter("major"), cid);
String[] time = { "8:00-9:50", "10:10-12:00", "14:30-16:20", "16:30-18:20", "19:00-20:80" };
%>
<h3><%=request.getParameter("major") %>专业<br/>第<%=request.getParameter("cid") %>节:<%=time[cid - 1] %></h3>
<hr/>
</head>
<body>

<form action="Course_Alter" method="post">
周一：&nbsp;<input type="text" name="monday" value="<%=c.getMonday() %>"><br/>
周二：&nbsp;<input type="text" name="tuesday" value="<%=c.getTuesday() %>"><br/>
周三：&nbsp;<input type="text" name="wednesday" value="<%=c.getWednesday() %>"><br/>
周四：&nbsp;<input type="text" name="thursday" value="<%=c.getThursday() %>"><br/>
周五：&nbsp;<input type="text" name="friday" value="<%=c.getFriday() %>"><br/>
<input type="hidden" name="cnumber" value="<%=cid %>">
<input type="hidden" name="major" value="<%=major %>">
<input type="submit" value="提交">
<a href="teacher_managercourse.jsp"><input type="button" value="返回"></a>
</form>

</body>
</html>