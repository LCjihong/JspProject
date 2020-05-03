<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录页面</title>
</head>
<%
HttpSession hs = request.getSession();
boolean login = Boolean.parseBoolean(hs.getAttribute("login") + "");
if (hs.getAttribute("login") != null || login){
	if(hs.getAttribute("grade") == null){
		response.sendRedirect("teacher_welcome.jsp");
	}else{
		response.sendRedirect("student_welcome.jsp");
	}
}
%>
<style type="text/css">
* {
	margin: 0px;
	padding: 0px;
}

body {
	font-family: '微软雅黑';
	margin: 0 auto;
	min-width: 980px;
	background-image: url(images/light.png);
	background-repeat: no-repeat;
	background-position: center top;
	overflow: hidden;
	background-color: coral;
}

.app2 {
	margin: 0 auto;
	width: 546px;
	height: 340px;
	box-shadow: 2px 1px 40px rgba(0, 0, 0, 0.18);
	border-radius: 5px;
	background-color: white;
	opacity: 0.7;
	margin-top: 125px;
	text-align: center;
}

.opp button {
	border: 0px solid blue;
	width: 270px;
	height: 60px;
	font-size: 18px;
	text-decoration: none;
	background-color: white;
}

.opp button:hover {
	background: cornflowerblue;
}

input {
	width: 60%;
	height: 40px;
	border-radius: 5px;
	border: 1px solid #d4d4d4;
	font-size: 14px;
	padding-left: 8px;
	margin-left: -80px;
}

input:focus {
	border: 1px solid #15b0eb;
}

#num1 {
	padding-top: 13px;
	padding-left: 44px;
	display: none;
}

#num2:target {
	display: inline-block;
}

#num1:target {
	display: inline-block;
}

#num1 div {
	margin-top: 30px;
	width: 450px;
}

#num1 span {
	width: 120px;
	float: left;
	margin-left: -50px;
	margin-top: 8px;
	text-align: right;
	padding-right: 10px;
}

#num2 {
	padding-top: 13px;
	padding-left: 44px;
	display: none;
}

#num2:target {
	display: inline-block;
}

#num2 div {
	margin-top: 30px;
	width: 450px;
}

#num2 span {
	width: 120px;
	float: left;
	margin-left: -50px;
	margin-top: 8px;
	text-align: right;
	padding-right: 10px;
}

.qi input {
	background-color: #f66f6a;
	color: white;
	width: 40%;
	height: 40px;
	border: 0;
	font-size: 16px;
	box-sizing: content-box;
	border-radius: 5px;
	text-align: center;
}

.qi input:hover {
	background-color: #a54b4a;
}

.call {
	height: 50px;
	line-height: 50px;
	text-align: center;
	background: url(images/loginbg2.png) repeat-x;
	position: absolute;
	bottom: 0;
	width: 100%;
	color: #fff8f5;
}

.call a {
	font-weight: bold;
	color: #fff8f5;
	text-decoration: none;
}

.call a:hover {
	color: #fff;
}

.loginbody {
	background: url(images/loginbg3.png) no-repeat center center;
	width: 100%;
	height: 585px;
	overflow: hidden;
	position: absolute;
	z-index: -1;
	top: 47px;
}

ul, li {
	display: block;
	margin: 0;
	padding: 0;
	list-style: none;
}

#mainBody {
	width: 100%;
	height: 100%;
	position: absolute;
	z-index: -1;
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
<body>
	<div id="mainBody">
		<div id="cloud1" class="cloud"></div>
		<div id="cloud2" class="cloud"></div>
	</div>
	<div class="logintop">
		<span>欢迎使用学生信息管理系统</span>
		<ul>
			<li><a href="LoginPage.jsp">回首页</a></li>
			<li><a href="help.jsp">帮助</a></li>
			<li><a href="about.jsp">关于</a></li>
		</ul>
	</div>

	<div class="app2">

		<div class="opp">
			<a href="#num2"><button>教师登录</button></a> <a href="#num1"><button>学生登录</button></a>
		</div>

		<div id="num1">

			<form action="getDataStu" method="post">
				<div>
					<p>
						<span>账号\学号:</span> <input name="uid" placeholder="请输入账号\学号"
							/  required>
					</p>
				</div>

				<div>
					<p>
						<span>密码:</span> <input name="pwd" type="password" placeholder="请输入密码" /  required>
					</p>
				</div>

				<div class="qi">
					<input type="submit" value="登录">
				</div>

				<div class="well">
					<a href="student_register.jsp">注册登录</a>
					<a href="student_forgetword.jsp">忘记密码</a>
				</div>
			</form>

		</div>

		<div id="num2">
			<form action="getDataTea" method="post">
				<div>
					<p>
						<span>账号\工号:</span> <input name="uid" placeholder="请输入账号\工号"
							/  required>
					</p>
				</div>

				<div>
					<p>
						<span>密码:</span> <input name="pwd" type="password" placeholder="请输入密码" /  required>

					</p>
				</div>

				<div class="qi">
					<input type="submit" value="登录">
				</div>

				<div class="well">
					<a href="teacher_register.jsp">注册登录</a>
					<a href="teacher_forgetword.jsp">忘记密码</a>
				</div>
			</form>
		</div>

	</div>
	<div class="loginbody"></div>
	<div class="call">
		制作团队： <a href="group.jsp">大数据jsp小组</a>仅供娱乐
	</div>
</body>
</html>
