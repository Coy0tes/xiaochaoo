<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/static/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>文章添加--layui后台管理模板</title>
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="format-detection" content="telephone=no">
	<link rel="stylesheet" href="<%=basePath%>/static/layui/css/layui.css" media="all" />
	<link rel="stylesheet" href="<%=basePath%>/static/css/font_eolqem241z66flxr.css" media="all" />
	<%-- <script type="text/javascript" src="<%=basePath%>/static/layui/layui.js"></script> --%>
	<script type="text/javascript" src="<%=basePath%>/webPage/page/news/newsAdd.js"></script>
	<script type="text/javascript">
	</script>
</head>
<body class="childrenBody">
	<form:form modelAttribute="news" class="layui-form" id="layui-form" method="POST" action="/xiaochaoo/path/news/save">
		<form:input path="id" type="hidden"/>
		<div class="layui-form-item">
			<label class="layui-form-label">文章标题<font style="color: red">*</font></label>
			<div class="layui-input-block">
				<form:input path="title" class="layui-input title" lay-verify="required" placeholder="请输入文章标题"/>
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-inline">		
				<label class="layui-form-label">文章作者<font style="color: red;">*</font></label>
				<div class="layui-input-inline">
					<form:input path="author" class="layui-input" lay-verify="required" placeholder="请输入文章作者"/>
				</div>
			</div>
			<div class="layui-inline">		
				<label class="layui-form-label">发布时间</label>
				<div class="layui-input-inline">
					<form:input path="createDate" class="layui-input createDate" lay-verify="date" onclick="laydate({elem:this})"/>
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">浏览权限</label>
				<div class="layui-input-inline">
				    <form:select path="competence" class="newsLook" lay-filter="browseLook">
				        <option value="开放浏览">公开</option>
				        <option value="会员浏览">会员浏览</option>
				        <option value="     ">&nbsp;&nbsp;</option>
			        </form:select>
				</div>
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-inline">
				<label class="layui-form-label">是否展示</label>
				<div class="layui-input-block">
					<form:radiobutton path="isShow" value="是" title="是"/>
					<form:radiobutton path="isShow" value="否" title="否"/>
				</div>
			</div>
			<div class="layui-inline">
				<label class="layui-form-label">审核状态</label>
				<div class="layui-input-block">
					<form:radiobutton path="isStatus" class="tuijian" title="已审核"/>
					<form:radiobutton path="isStatus" class="tuijian" title="未审核"/>
				</div>
			</div>
			
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">关键字</label>
			<div class="layui-input-block">
				<form:input path="keywords" class="layui-input" placeholder="请输入文章关键字"/>
				
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">内容摘要</label>
			<div class="layui-input-block">
				<form:textarea path="summary" placeholder="请输入内容摘要" class="layui-textarea"/>
			</div>
		</div>
		<div class="layui-form-item">
			<label class="layui-form-label">文章内容</label>
			<div class="layui-input-block">
				<form:textarea class="layui-textarea layui-hide" path="content" lay-verify="content" id="news_content"/>
			</div>
		</div>
		<div class="layui-form-item">
			<div class="layui-input-block">
				<button class="layui-btn" lay-submit="" lay-filter="addNews">立即提交</button>
				<button type="reset" class="layui-btn layui-btn-primary">重置</button>
		    </div>
		</div>
	</form:form>
	
</body>
</html>