<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>重新设置密码</title>
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
	opacity: 0.7;
}

.double div {
	margin-top: 30px;
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

#one button {
	background-color: #f66f6a;
	color: white;
	width: 63%;
	height: 40px;
	border: 0;
	font-size: 16px;
	box-sizing: content-box;
	border-radius: 5px;
	margin-left: 110px;
}

#one button:hover {
	background-color: #a54b4a;
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
</style>
</head>
<body
	style="background-color: #df7611; background-image: url(./images/light.png); background-repeat: no-repeat; background-position: center top; overflow: hidden;">
	<div id="mainBodye">
		<div id="cloude1" class="cloude"></div>
		<div id="cloude2" class="cloude"></div>
	</div>

	<div class="balle">
		<span>欢迎使用学生信息管理系统</span>
		<ul>
			<li><a href="LoginPage.jsp">>>返回登录页面</a></li>
			<li><a href="student_forgetword.jsp">返回上一页</a></li>
		</ul>
	</div>

	<div class="double">
		<form action="AlterPwd_Tea2" method="post">
			<h3>修改登陆密码</h3>

			<div>
				<p>
					<span>新密码<em>*</em>：
					</span> <input type="password" name="pwd" id="pw1" />
				</p>
			</div>

			<div>
				<p>
					<span>确认密码<em>*</em>：
					</span> <input type="password" name="pwd" id="pw2" onkeyup="validate()" /><span
						id="tishi"></span>
			</div>
			</p>

			<div id="one">
				<button type="submit">提交</button>
			</div>
		</form>

		<script>
			function validate() {
				var pw1 = document.getElementById("pw1").value;
				var pw2 = document.getElementById("pw2").value;
				if (pw1 == pw2) {
					document.getElementById("tishi").innerHTML = "<font color='green'>两次密码相同</font>";
					document.getElementById("submit").disabled = false;
				} else {
					document.getElementById("tishi").innerHTML = "<font color='red'>两次密码不相同</font>";
					document.getElementById("submit").disabled = true;
				}
			}
		</script>
	</div>

	<div class="loginbodye"></div>

	<div class="calle">
		制作团队： <a href="group.jsp">大数据jsp小组</a> 仅供娱乐
	</div>

</body>
</html>
