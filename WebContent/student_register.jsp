<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注册页面</title>
<style type="text/css">
* {
	margin: 0px;
	padding: 0px;
	border: 0;
}

select {
	width: 200px;
}

body {
	font-size: 16px;
	color: #282828;
	font-family: '微软雅黑';
	min-width: 980px;
	background-image: url(./images/light.png);
	background-repeat: no-repeat;
	background-position: center top;
	overflow: hidden;
	background-color: coral;
}

img {
	border: 0;
}

form {
	width: 500px;
	height: 580px;
	margin: 20px auto;
	margin-top: 0px;
	padding-left: 356px;
	position: absolute;
	left: 10%;
	top: 27%
}

.hobby {
	width: 1100px;
	height: 870px;
	background-size: cover;
}

.hobby p {
	margin-top: 10px;
}

.hobby p span {
	width: 120px;
	display: inline-block;
	text-align: left;
	padding-right: 10px;
}

.hobby p input {
	width: 200px;
	height: 27px;
	border: 1px solid gray;
	padding: 2px;
	border-radius: 5px;
}

.app {
	margin: 0 auto;
	width: 550px;
	height: 440px;
	box-shadow: 2px 1px 40px rgba(0, 0, 0, 0.18);
	border-radius: 5px;
	padding: 30px;
	background-color: white;
	opacity: 0.7;
	margin-top: 76px;
}

.app div {
	margin-top: 15px;
	margin-left: 150px;
}

.app1 a {
	color: cornflowerblue;
	text-decoration: none;
}

.app1 p {
	color: darkgrey;
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

.btn button {
	background-color: dodgerblue;
	width: 200px;
	height: 40px;
	border: 0;
	border-radius: 25px;
	color: white;
	font-size: 16px;
	margin-right: 60px;
	position: relative;
	margin-left: -35px;
}

.btn button:hover {
	background: skyblue;
}

.logintop {
	height: 47px;
	position: absolute;
	top: 0;
	background: url(./images/loginbg1.png) repeat-x;
	z-index: 100;
	width: 100%;
}

.logintop span {
	color: #fff;
	line-height: 47px;
	background: url(./images/loginsj.png) no-repeat 21px 18px;
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

.loginbm {
	height: 50px;
	line-height: 50px;
	text-align: center;
	background: url(./images/loginbg2.png) repeat-x;
	position: absolute;
	bottom: 0;
	width: 100%;
	color: #fff8f5;
}

.loginbm a {
	font-weight: bold;
	color: #fff8f5;
}

.loginbm a:hover {
	color: #fff;
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

a {
	text-decoration: none;
}

a:hover {
	color: mediumpurple;
}
</style>
</head>
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

	<div class="app">

		<h1>欢迎注册（学生版）</h1>
		<p class="app1">
			已有账号？<a href="LoginPage.jsp" class="app1">登录</a>
		</p>

		<div class="hobby">
			<form action="Register_Stu" method="post">

				<p>
					<span>学号：</span> <input type="text" name="uid"
						placeholder="输入10位的学号" class="input_style" pattern="^\d{10}$"
						/ required autofocus>
				</p>

				<p>
					<span>姓名：</span> <input type="text" name="uname"
						pattern="^[\u4e00-\ u9fa5]{0,}$" placeholder="请输入姓名" required
						autofocus />
				</p>

				<p>
					<span>性别:&nbsp;&nbsp;</span> <select name="usex">
						<option style="display: none">-请选择</option>
						<option>男</option>
						<option>女</option>
					</select>
				</p>

				<p>
					<span>专业:&nbsp;&nbsp;</span> <select name="umajor">
						<option style="display: none">-请选择</option>
						<option>数据科学与大数据技术</option>
						<option>智能科学与技术</option>
					</select>
				</p>

				<p>
					<span>年级:&nbsp;&nbsp;</span> <select name="ugrade">
						<option style="display: none">-请选择</option>
						<option>2015</option>
						<option>2016</option>
						<option>2017</option>
						<option>2018</option>
						<option>2019</option>
						<option>2020</option>
					</select>
				</p>

				<p>
					<span>地址：</span> <input type="tel" name="uaddress" maxlength="200"
						/ required autofocus>
				</p>

				<p>
					<span>手机号：</span> <input type="tel" name="uphone"
						pattern="^\d{11}$" / required autofocus>
				</p>

				<p>
					<span>QQ：</span> <input type="tel" name="uqq" maxlength="10"
						/ required autofocus>
				</p>

				<p>
					<span>密码：</span> <input type="password" name="pwd" maxlength="8"
						size="10" / required autofocus>
				</p>

				<p class="btn">
					<button type="submit" value="注册" />
					注册
					</button>
					<button type="reset" value="重置" />
					重置
					</button>
				</p>
				</from>
		</div>

	</div>
	<div class="loginbody"></div>
	<div class="loginbm">
		制作团队： <a href="group.jsp">大数据jsp小组</a> 仅供娱乐
	</div>
</body>
</html>
