<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<title></title>
<%
HttpSession hs = request.getSession();
boolean login = Boolean.parseBoolean(hs.getAttribute("login") + "");
if (hs.getAttribute("login") == null || !login){
	response.sendRedirect("LoginPage.jsp");
}
%>
<style type="text/css">
body {
	font-size: 20px;
	font-family: "仿宋";
}

* {
	padding: 0;
	margin: 0;
}

h2 {
	color: yellow;
}

.bg {
	width: 1519px;
	height: 754px;
	/*background-image: linear-gradient(to bottom right, #e66465, #9198e5);*/
	background: url(images/b4c4b91fbc61e953a5dde4d9f09276e3.jpeg) no-repeat;
	background-size: 100%;
}

form {
	width: 580px;
	height: 580px;
	margin: 20px auto;
	padding-left: 10px;
	position: absolute;
	left: 34%;
	top: 7%;
}

h2 {
	text-align: center;
	padding-top: 10px;
	position: relative;
	left: -17px;
	top: 22px;
}

p {
	margin-top: 10px;
}

p span {
	width: 120px;
	display: inline-block;
	text-align: right;
	padding-right: 20px;
	color: yellow;
}

p input {
	width: 200px;
	height: 18px;
	border: 1px solid #38a1bf;
	padding: 2px;
}

.lucky input {
	width: 100px;
	height: 24px;
}

.hobby input {
	width: 40px;
	height: 20px;
}

label {
	color: yellow;
}

.sex input {
	width: 30px;
	height: 20px;
}

.jianjie input {
	width: 110px;
	height: 25px;
	background-color: greenyellow;
	border-radius: 10px;
	margin: 30px;
}

p {
	padding: 10px;
	margin: 30px;
}
.tijiao input{
				width: 110px;
				height: 25px;
				background-color: greenyellow;
				border-radius: 10px;
				margin: 30px;
			}
</style>
</head>
<body>
	<div class="bg">
		<h2>修改个人信息</h2>
		<form action="UpdateTea" method="post">
			<p>
				<span>姓名:&nbsp;&nbsp;</span> <input type="text" name="uname"
					value="<%=hs.getAttribute("name")%>" maxlength="8" autofocus
					autocomplete / required autofocus>
			</p>
			<p>
				<span>性别:&nbsp;&nbsp;</span> <select value="qingxuanze" name="usex">
					<option style="display:none">-请选择</option>
					<option>男</option>
					<option>女</option>
				</select>
			</p>
			<p>
				<span>手机号:&nbsp;</span> <input type="tel" name="uphone"
					value="<%=hs.getAttribute("phone")%>" pattern="^\d{11}$" / required autofocus>
			</p>
			<p class="tijiao">
				<input type="submit" value="提交" "/>
				<a href="teacher_welcome.jsp"><input type="button" value="返回"/></a>
			</p>
			
		</form>
	</div>
</body>
</html>