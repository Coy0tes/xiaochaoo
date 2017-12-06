<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/static/taglib.jsp"%>

<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>用户登录</title>

<link href="<%=basePath%>/static/sys_page/index_login/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="<%=basePath%>/static/sys_page/index_login/css/zzsc.css">
<link rel="stylesheet" type="text/css" href="<%=basePath%>/static/sys_page/index_login/css/index_login.css">

<script type="text/javascript">
	function doSubmit (){
		console.log("1233123");
		console.info($("#inputForm"));
		$("#inputForm").submit();
		return false;
	}
</script>
</head>
<body><!-- <script src="/demos/googlegg.js"></script> -->
<div class="demo form-bg">
	<div class="container">
		<div class="row">
			<div class="col-md-offset-3 col-md-6">
				<form id="inputForm" class="form-horizontal" action="/xiaochaoo/login/checkLogin" method="post">
					<span class="heading">用户登录</span>
					<div class="form-group">
						<!-- <input type="email" class="form-control" id="inputEmail3" placeholder="用户名"> -->
						<input type="text" class="form-control" id="user" name="user" placeholder="用户名" value="admin">
						<i class="fa fa-user"></i>
					</div>
					<div class="form-group help">
						<input type="password" class="form-control" id="password" name="password" placeholder="密码" value="admin">
						<i class="fa fa-lock"></i>
						<a href="#" class="fa fa-question-circle"></a>
					</div> 
					<div class="form-group">
						<div class="main-checkbox">
							<input type="checkbox" value="None" id="checkbox1" name="check"/>
							<label for="checkbox1"></label>
						</div>
						<span class="text">记住我</span>
					</div>
					<button onclick="doSubmit()" class="btn btn-default">立刻登录</button>
				</form>
			</div>
		</div>
	</div>
</div>

<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';color:#ffffff">
<p>适用浏览器：360、FireFox、Chrome、Safari、Opera、傲游、搜狗、世界之窗. 不支持IE8及以下浏览器。</p>
<p>来源：<a href="http://www.lanrenzhijia.com/" target="_blank">懒人素材</a></p>
</div>
</body>
</html>