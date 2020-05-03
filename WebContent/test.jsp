<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>测试</title>
<h3>这里是测试界面</h3>
<hr/>
</head>
<style type="text/css">
#num1 {
	display: none;
}
#num1:target {
	display: inline-block;
}
#num2 {
	display: none;
}
#num2:target {
	display: inline-block;
}
</style>
<body>
	<form action="test.jsp" method="get">
	<select name="major">
		<option>-请选择</option>
		<option>数据科学与大数据技术</option>
		<option>智能科学与技术</option>
	</select>
	
	<input type="submit" value="更换">
	</form>
	<div id="num1">
		<span>This is 1 <%=request.getAttribute("name") %></span>
	</div>
	<div id="num2">
		<span>This is 2</span>
	</div>
	
</body>
</html>