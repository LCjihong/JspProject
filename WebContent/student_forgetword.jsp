<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8" />
<title>忘记密码</title>
<style type="text/css">
* {
	margin: 0px;
	padding: 0px;
	border: 0;
}

body {
	font-size: 16px;
	color: #282828;
	font-family: '微软雅黑';
	min-width: 980px;
}

img {
	border: 0;
}

.app {
	margin: 0 auto;
	width: 600px;
	height: 370px;
	box-shadow: 2px 1px 40px rgba(0, 0, 0, 0.18);
	border-radius: 5px;
	padding: 30px;
	background-color: white;
	margin-top: 51px;
	opacity: 0.7;
}

.app div {
	margin-top: 15px;
	margin-left: 150px;
}

h3 {
	font-size: 26px;
	text-align: center;
}

input {
	width: 60%;
	height: 30px;
	border-radius: 5px;
	border: 1px solid #d4d4d4;
	font-size: 14px;
	padding-left: 10px;
}

input:focus {
	border: 1px solid #15b0eb;
}

.submit {
	background-color: #f66f6a;
	color: white;
	width: 60%;
	height: 35px;
	border: 0;
	font-size: 16px;
	box-sizing: content-box;
	margin-top: 20px;
	border-radius: 15px;
}

.submit:hover {
	background-color: #a54b4a;
}

em {
	color: red;
}

.ball {
	padding-bottom: 70px;
	margin: 0px;
	height: 50px;
	top: 0;
	background: url(./images/loginbg1.png) repeat-x;
	z-index: 100;
	width: 100%;
}

.ball h2 {
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

.ball a {
	color: white;
	padding-left: 880px;
	font-size: 16px;
}

a {
	text-decoration: none;
}

.ball a:hover {
	color: #fff;
}

.call {
	height: 50px;
	line-height: 50px;
	text-align: center;
	background: url(./images/loginbg2.png) repeat-x;
	position: absolute;
	bottom: 0;
	width: 100%;
	color: #fff8f5;
}

.call a {
	font-weight: bold;
	color: #fff8f5;
}

.call a:hover {
	color: #fff;
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
	background: url(./images/cloud.png) no-repeat;
	z-index: 1;
	opacity: 0.5;
}

#cloud2 {
	z-index: 2;
}

.loginbody {
	background: url(./images/loginbg3.png) no-repeat center center;
	width: 100%;
	height: 585px;
	overflow: hidden;
	position: absolute;
	z-index: -1;
	top: 47px;
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

	<div class="app">
		<form action="AlterPwd_Stu1" method="post">
			<h3>找回密码</h3>
			<div>
				<p>
					学号<em>*</em>
				</p>
				<input name="uid" placeholder="请输入学号" / required autofocus>
			</div>

			<div>
				<p>
					姓名<em>*</em>
				</p>
				<input name="uname" placeholder="请输入姓名" / required autofocus>
			</div>

			<div>
				<p>
					手机号<em>*</em>
				</p>
				<input name="uphone" placeholder="请输入手机号" / required autofocus>
			</div>

			<div>
				<input type="submit" class="submit" value="下一步" />
			</div>
		</form>
	</div>

	<div class="loginbody"></div>

	<div class="call">
		制作团队： <a href="group.jsp">大数据jsp小组</a> 仅供娱乐
	</div>

</body>
</html>
