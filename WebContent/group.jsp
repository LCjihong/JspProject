<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>小组介绍</title>
		<style type="text/css">
			*{
				margin: 0;
				padding: 0;
				list-style: none;
			}
			input,textarea{
				outline: none;
			}
			@font-face {
				font-family:'freshskin';
				src: url(fonts/MD.ttf);
			}
			.videobox{
				width: 100%;
				height: 647px;
				overflow: hidden;
				position: relative;
			}
			.videobox video{
				width: 100%;
				min-width: 1280px;
				position: absolute;
				top: 50%;
				left: 50%;
				transform: translate(-50%,-50%);
			}
			.videobox header{
				width: 100%;
				height: 40px;
				background: rgba(0,0,0,0.2);
				z-index: 999;
				position: absolute;
			}
			.videobox header .con{
				width: 1030px;
				height: 40px;
				margin: 0 auto;
			}
			.videobox header .right,.left{
				margin-top: 10px;
				float: right;
			}
			.videobox header .left{
				margin-top: 10px;
				float: left;
			}
			.videobox header .right a,.videobox header .left a{
				margin-left: 10px;
				color:darkorange;
				text-decoration: none;
			}
			.videobox .pic{
				width: 770px;
				height: 710px;
				position: absolute;
				left: 50%;
				top: 50%;
				transform: translate(-50%,-50%);
				text-align: center;
			}
			.videobox .pic p{
				margin-top: 240px;
				color: orangered;
				font-size: 70px;
				font-family:"freshskin";
			}
			.videobox .pic ul{
				position: absolute;
				color: #999;
			}
			.videobox .pic ul li{
				width: 250px;
				height: 300px;
				border-radius: 28px;
				background: gainsboro;
			}	
			.videobox .pic ul .one{
				line-height: 30px;
				position: absolute;
				margin-left: -220px;
				margin-top:-100px;
				opacity: 0;
				transition: all 2s ease-in 0s;
				}
			.videobox .pic ul .two{
				line-height: 30px;
				position: absolute;
				margin-left: 350px;
				margin-top:-100px;
				opacity: 0;
				transition: all 2s ease-in 0s;
				}
			body:hover .videobox .pic ul .one{
				position: absolute;
				left: 100px;
				top: 40px;
				opacity: 0.8;
			}
			body:hover .videobox .pic ul .two{
				position: absolute;
				left: 300px;
				top: 40px;
				opacity: 0.8;
			}
			.videobox .pic ul .one span,.videobox .pic ul .two span{
				float: left;
				text-align: center;
				line-height: 22px;
	            margin: 10px 10px 0 80px;
				font-weight: bold;
				color: darkorange;
			}
			.videobox .pic ul .two span{
				margin: 10px 30px 0 40px;
			}
			
		</style>
	</head>
	<body>
		<div class="videobox">
			<header>
				<div class="con">
					<section class="left">
						<a href="#">学生信息管理系统</a>
					</section>
					<section class="right">
						<a href="LoginPage.jsp">回首页</a>
					</section>
				</div>
			</header>
				<video src="video/bm_Trim.mp4" autoplay="autoplay" loop="loop"></video>
				<div class="pic">
					<p>
						夕阳红制作小组
					</p>
					<ul>
						<li class="one">
							<span>小组成员</span></br>
							<span>&nbsp;&nbsp;&nbsp;&nbsp;蒋金淼</span></br>
							<span>&nbsp;&nbsp;&nbsp;&nbsp;钟明昊</span></br>
							<span>&nbsp;&nbsp;&nbsp;&nbsp;李一可</span></br>
							<span>&nbsp;&nbsp;&nbsp;&nbsp;唐祎灿</span></br>
							<span>&nbsp;&nbsp;&nbsp;&nbsp;王慧琳(最可爱)</span></br>
							<span>&nbsp;&nbsp;&nbsp;&nbsp;任继宏(最帅)</span></br>
						</li>
						<li class="two">
							<span>学部：</span></br>
							<span>&nbsp;&nbsp;&nbsp;&nbsp;工学部</span></br>
							<span>专业：</span></br>
							<span>&nbsp;&nbsp;&nbsp;&nbsp;数据科学与大数据技术</span></br>
							<span>班级：</span></br>
							<span>&nbsp;&nbsp;&nbsp;&nbsp;大数据B171</span></br>
							<span>指导老师：</span></br>
							<span>&nbsp;&nbsp;&nbsp;&nbsp;冯笛</span></br>
						</li>
					</ul>
				</div>
		</div>
    </body>
</html>
