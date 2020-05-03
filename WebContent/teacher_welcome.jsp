<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>欢迎界面</title>
<%
HttpSession hs = request.getSession();
boolean login = Boolean.parseBoolean(hs.getAttribute("login") + "");
if (hs.getAttribute("login") == null || !login){
	response.sendRedirect("LoginPage.jsp");
}
%>
<style type="text/css">
* {
	margin: 0px;
	padding: 0px;
	border: 0;
}

body {
	font-family: '微软雅黑';
	min-width: 980px;
}

img {
	border: 0;
}

a {
	text-decoration: none;
}

.double {
	margin: 0 auto;
	width: 600px;
	height: 300px;
	box-shadow: 2px 1px 40px rgba(0, 0, 0, 0.18);
	border-radius: 5px;
	padding: 30px;
	background-color: white;
	margin-top:80px;
	opacity: 0.7;
}

.double div {
	margin-top: 15%;
	margin-left: 20px;
}

input {
	width: 60%;
	height: 40px;
	border-radius: 5px;
	border: 1px solid #d4d4d4;
	font-size: 14px;
	padding-left: 10px;
}

input:focus {
	border: 1px solid #15b0eb;
}

em {
	color: red;
}

.double span {
	width: 120px;
	display: inline-block;
	text-align: right;
	padding-right: 10px;
}

h3 {
	font-size: 26px;
	text-align: center;
}

.balle {
	padding-bottom: 70px;
	margin: 0px;
	height: 50px;
	top: 0;
	background: url(./images/loginbg1.png) repeat-x;
	z-index: 100;
	width: 100%;
}

ul {
	display: block;
	margin: 0;
	padding: 0;
	list-style: none;
}

li {
	display: block;
	margin: 0;
	padding: 0;
	list-style: none;
}

.balle span {
	font-size: 16px;
	color: #fff;
	line-height: 47px;
	background: url(./images/loginsj.png) no-repeat 21px 18px;
	text-indent: 44px;
	float: left;
	display: block;
	margin: 0;
	padding: 0;
	list-style: none;
}

.balle  ul {
	float: right;
	padding-right: 30px;
}

.balle ul li {
	float: left;
	margin-left: 20px;
	line-height: 47px;
}

.balle ul li a {
	color: #fff;
}

.balle ul li a:hover {
	color: #fff;
}

.calle {
	height: 50px;
	line-height: 50px;
	text-align: center;
	background: url(./images/loginbg2.png) repeat-x;
	position: absolute;
	bottom: 0;
	width: 100%;
	color: #fff8f5;
}

.calle a {
	font-weight: bold;
	color: #fff8f5;
}

.calle a:hover {
	color: #fff;
}

#mainBodye {
	width: 100%;
	height: 100%;
	position: absolute;
	z-index: -1;
}

.cloude {
	position: absolute;
	top: 0px;
	left: 0px;
	width: 100%;
	height: 100%;
	background: url(./images/cloud.png) no-repeat;
	z-index: 1;
	opacity: 0.5;
}

#cloude2 {
	z-index: 2;
}

.loginbodye {
	background: url(./images/loginbg3.png) no-repeat center center;
	width: 100%;
	height: 585px;
	overflow: hidden;
	position: absolute;
	z-index: -1;
	top: 47px;
}

#nav {
	line-height: 24px;
	list-style-type: none;
	background: #666;
}

#nav a {
	display: block;
	width: 80px;
	text-align: center;
}

#nav a:link {
	color: #666;
	text-decoration: none;
}

#nav a:hover {
	color: #FFF;
	text-decoration: none;
	font-weight: bold;
}

#nav li {
	float: left;
	width: 80px;
	background: #CCC;
}

#nav li a:hover {
	background: #f66f6a;
}

#nav li ul {
	line-height: 30px;
	list-style-type: none;
	text-align: center;
	left: -999em;
	width: 180px;
	position: absolute;
}

#nav li ul li {
	float: left;
	width: 180px;
	background: #F6F6F6;
}

#nav li ul a {
	display: block;
	width: 135px;
	text-align: left;
	padding-left: 45px;
}

#nav li ul a:link {
	color: #f66f6a;
	text-decoration: none;
}

#nav li ul a:visited {
	color: #000000;
	text-decoration: none;
}

#nav li ul a:hover {
	color: #F3F3F3;
	text-decoration: none;
	font-weight: normal;
	background: #C00;
}

#nav li:hover ul {
	left: auto;
}

#nav li.sfhover ul {
	left: auto;
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
	color: #fff;
	float: left;
}

.logintop ul {
	float: right;
	padding-right: 30px;
}

.logintop ul li {
	float: left;
	margin-left: 20px;
	line-height: 47px;
}

.logintop ul li a {
	color: #fff;
	text-decoration: none;
}

.logintop ul li a:hover {
	color: #fff;
}

ul, li {
	display: block;
	margin: 0;
	padding: 0;
	list-style: none;
}
</style>
</head>
<body
	style="background-color: #df7611; background-image: url(./images/light.png); background-repeat: no-repeat; background-position: center top; overflow: hidden;">
	<div id="mainBodye">
		<div id="cloude1" class="cloude"></div>
		<div id="cloude2" class="cloude"></div>
	</div>

	<div class="logintop">
		<span>欢迎使用学生信息管理系统</span>
		<ul>
			<li><a href="Logout">退出登录</a></li>
		</ul>
	</div>

	<div class="double">
		<h3>欢迎您！请选择您需要执行的操作！</h3>

		<ul id="nav" style="margin-left: 210px; margin-top: 90px;">
			<li style="width: 180px; height: 35px;">
			<a href="#" style="width: 180px; height: 27px; padding-top: 5px;">教师信息</a>
				<ul>
						<li><a href="teacher_show.jsp">查看个人信息</a></li>
						<li><a href="teacher_alter.jsp">修改个人信息</a></li>
						<li><a href="teacher_managercourse.jsp">管理课程信息</a></li>
					</ul></li>
		</ul>
	</div>

	<div class="loginbodye"></div>

	<div class="calle">
		制作团队： <a href="group.jsp">大数据jsp小组</a> 仅供娱乐
	</div>

</body>
</html>
