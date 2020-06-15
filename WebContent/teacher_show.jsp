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
	background:coral;
	background-image:url(images/light.png);
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
	background:url(images/loginbg3.png) no-repeat center center;
	z-index: -1;
	opacity: 0.5;
}
.cloud1{
	background: url(images/cloud.png) no-repeat;
	position:fixed;
	z-index: 1;
	top: 0px;
	left: 0px;
	width: 40%;
	height: 30%;
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

.one1 {	
	z-index: 55;
	width: 450px;
	height: 400px;
	padding-left: 150px;
	margin-left:100px;
	padding-top: 100px;
	border-style:solid;
    border-width:0px;
    margin: 0 auto;
    background-color: white;
    opacity: 0.5;
    border-radius: 30px;
    margin-top: 120px;
}
.one1 div{
	padding-bottom: 40px;
	font-size: 25px;
}
 
.one1 div span{
	padding-right: 30px;
} 

.one1 a input{
	width: 110px;
	height: 35px;
	background-color: #ff7c49;
	border-radius: 0px;
	font-size: 20px;
	font-family: "仿宋";
	border-radius: 20px;
	z-index: 55555;
}
.one1 a input:hover{
	cursor:pointer;
}
.one1 a{
	padding-left: 60px;
}  
.three{
	margin-right: 15px;
}
</style>
</head>
<body>

	<div class="logintop">
		<span>教师个人资料显示</span>

	</div>

<div class="one1">
			<div>
				<span>工号:</span><%=hs.getAttribute("id")%></div>
			<div>
				<span>姓名:</span><%=hs.getAttribute("name")%></div>
			<div>
				<span class="three">性别:</span><%=hs.getAttribute("sex")%></div>
			<div>
				<span class="last">电话:</span><%=hs.getAttribute("phone")%></div>

			<a href="LoginPage.jsp"><input type="button" value="返回"/></a>
	</div>
		<div class="cloud"></div>
		<div class="cloud1"></div>

</body>
</html>