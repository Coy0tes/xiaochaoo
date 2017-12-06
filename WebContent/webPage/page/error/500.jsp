<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>500--layui后台管理模板</title>
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="format-detection" content="telephone=no">
	<link rel="stylesheet" href="<%=basePath%>/static/layui/css/layui.css" media="all" />
</head>
<body class="childrenBody">
	<div style="text-align: center; padding:11% 0;">
		<i class="layui-icon" style="line-height:20rem; font-size:20rem; color: #393D50;">&#x1007;</i>
		<p style="font-size: 20px; font-weight: 300; color: #999;">错误信息：500 我勒个去，页面被外星人捣蛋了!</p>
	</div>
</body>
</html>