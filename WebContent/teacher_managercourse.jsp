<%@page import="com.webdata.pojo.Course"%>
<%@page import="com.webdata.service.impl.WebdataServiceImpl"%>
<%@page import="com.webdata.service.WebdataService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.io.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>管理课程信息</title>
<style type="text/css">
.www {
	width: 100%;
	height: 100%;
	border: 2px;
}

.hhh {
	width: 1200px;
	height: 500px;
	border: 2px;
	margin: 0px auto;
}

body {
	font-family: '微软雅黑';
	margin: 0 auto;
	min-width: 980px;
	background-image: url(images/light.png);
	background-repeat: no-repeat;
	background-position: center top;
	overflow: hidden;
}

th {
	width: 90px;
	height: 0px;
}

td {
	width: 90px;
	height: 0px;
}

p {
	height: 7px;
	padding-top: 0px;
	font-size: 12px;
	margin-bottom: 23px;
}


.colo {
	
}

.colo:hover {
	background: cornflowerblue;
}

ul, li {
	display: block;
	margin: 0;
	padding: 0;
	list-style: none;
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

.loginbody {
	background: url(images/loginbg3.png) no-repeat center center;
	width: 100%;
	height: 585px;
	overflow: hidden;
	position: absolute;
	z-index: -1;
	top: 47px;
}
</style>
<%
	HttpSession hs = request.getSession();
	boolean login = Boolean.parseBoolean(hs.getAttribute("login") + "");
	if (hs.getAttribute("login") == null || !login) {
		response.sendRedirect("LoginPage.jsp");
	}
	request.setCharacterEncoding("utf-8");
	String major = request.getParameter("major");
	if (major == null || major.equals("-请选择")) {
		major = "请选择专业";
	} else {
		WebdataService webdataservice = new WebdataServiceImpl();
		List<Course> list = webdataservice.showAll_Cor(major);
		request.setAttribute("list", list);
	}
	String[] time = { "8:00-9:50", "10:10-12:00", "14:30-16:20", "16:30-18:20", "19:00-20:80" };
	int i = 0;
%>
</head>
<body>
	<div class="logintop">
		<span>欢迎使用学生信息管理系统</span>
		<ul>
			<li><a href="LoginPage.jsp">回首页</a></li>
		</ul>
	</div>
	<div id="mainBody">
		<div id="cloud1" class="cloud"></div>
		<div id="cloud2" class="cloud"></div>
	</div>
	<div class="www">
		<div class="hhh">
			<h3 style="text-align: center">
				<%=major%>
			</h3>
			<h4 style="text-align: right">
				<form action="teacher_managercourse.jsp" method="get">
					专业：<select name="major">
						<option>-请选择</option>
						<option>数据科学与大数据技术</option>
						<option>智能科学与技术</option>
					</select> <input type="submit" value="切换">
				</form>
			</h4>
			<div id="num1">
				<table border="1" cellpadding="10" width="100%">
					<tr>
						<th>时间\日期</th>
						<th>周一</th>
						<th>周二</th>
						<th>周三</th>
						<th>周四</th>
						<th>周五</th>
						<th></th>
					</tr>
					<c:forEach items="${list }" var="course">
						<tr>
							<td><%=time[i++]%></td>
							<td class="colo"><p>${course.monday }</p></td>
							<td class="colo"><p>${course.tuesday }</p></td>
							<td class="colo"><p>${course.wednesday }</p></td>
							<td class="colo"><p>${course.thursday }</p></td>
							<td class="colo"><p>${course.friday }</p></td>
							<td class="colo"><a
								href="teacher_altercourse.jsp?major=<%=major %>&cid=${course.number }">修改</a></td>
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
	<div class="loginbody"></div>
	<div class="call">
		制作团队： <a href="group.jsp">大数据jsp小组</a>仅供娱乐
	</div>
</body>
</html>
