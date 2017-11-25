<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>用户登录</title>
</head>
<body>
<form action="dologin.jsp" method="post">
		<p>用户名：<input type="text" name="uname"/></p>    <!-- 这里的name是为了在dologin.jsp中来获取里面的值 -->
		<p>密码：<input type="password" name="pwd"/></p>
		<p>颜色：
				<input type="checkbox" name="color" value="红色"/>红色
				<input type="checkbox" name="color" value="绿色"/>绿色
				<input type="checkbox" name="color" value="蓝色"/>蓝色
				<input type="checkbox" name="color" value="黄色"/>黄色
				<input type="checkbox" name="color" value="黑色"/>黑色
		</p>
		<input type="submit" value="登录"/>
</form>
</body>
</html>