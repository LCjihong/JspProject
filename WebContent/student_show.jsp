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
	if (hs.getAttribute("login") == null || !login) {
		response.sendRedirect("LoginPage.jsp");
	}
%>
<style type="text/css">
body {
	font-size: 20px;
	font-family: "仿宋";
	background: coral;
	background-image: url(images/light.png);
	background-repeat: no-repeat;
}

* {
	padding: 0;
	margin: 0;
}

.cloud {
	position: absolute;
	top: 0px;
	left: 0px;
	width: 100%;
	height: 100%;
	background: url(images/cloud.png) no-repeat;
	z-index: 1;
	opacity: 0.5;
}

#cloud2 {
	z-index: 2;
	background: url(images/loginbg3.png) no-repeat center center;
}

.logintop {
	height: 47px;
	top: 0;
	background: url(images/loginbg1.png) repeat-x;
	z-index: 100;
	width: 100%;
}

.logintop span {
	color: #fff;
	line-height: 47px;
	background: url(images/loginsj.png) no-repeat 21px 18px;
	text-indent: 44px;
	float: left;
}

.one1 {
	width: 500px;
	height: 630px;
	padding-left: 120px;
	margin-left: 100px;
	padding-top: 60px;
	border-style: solid;
	border-width: 0px;
	margin: 0 auto;
	background-color: white;
	opacity: 0.6;
	border-radius: 30px;
	margin-top: 70px;
}

.one1 div {
	padding-bottom: 40px;
	font-size: 25px;
}

.one1 div span {
	padding-right: 30px;
}

.last {
	margin-right: 5px;
	padding-left: 10px;
}

.one1 a input {
	width: 110px;
	height: 35px;
	background-color: #ff7c49;
	border-radius: 0px;
	font-size: 20px;
	font-family: "仿宋";
	border-radius: 20px;
}

.one1 a {
	padding-left: 60px;
}
</style>
</head>
<body>
	<div id="mainBody">
		<div id="cloud1" class="cloud"></div>
		<div id="cloud2" class="cloud"></div>
	</div>
	<div class="logintop">
		<span>学生个人资料显示</span>
	</div>
	<div class="one1">
		<div>
			<span>学号：</span><%=hs.getAttribute("id")%></div>
		<div>
			<span>姓名：</span><%=hs.getAttribute("name")%></div>
		<div>
			<span>性别：</span><%=hs.getAttribute("sex")%></div>
		<div>
			<span>专业：</span><%=hs.getAttribute("major")%></div>
		<div>
			<span>年级：</span><%=hs.getAttribute("grade")%></div>
		<div>
			<span>地址：</span><%=hs.getAttribute("address")%></div>
		<div>
			<span>电话：</span><%=hs.getAttribute("phone")%></div>
		<div>
			<span class="last">Q Q：</span><%=hs.getAttribute("qq")%></div>
		<a href="student_welcome.jsp"><input type="button" value="返回" /></a>
	</div>
</body>
</html>