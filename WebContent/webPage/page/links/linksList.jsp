<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/static/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>文章列表--layui后台管理模板</title>
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="format-detection" content="telephone=no">
	<link rel="stylesheet" href="<%=basePath%>/static/layui/css/layui.css" media="all" />
	<link rel="stylesheet" href="<%=basePath%>/static/css/font_eolqem241z66flxr.css" media="all" />
	<link rel="stylesheet" href="<%=basePath%>/static/css/news.css" media="all" />
	<script type="text/javascript" src="<%=basePath%>/webPage/page/links/linksList.js"></script>
</head>
<body class="childrenBody">
	<blockquote class="layui-elem-quote news_search">
		<div class="layui-inline">
		    <div class="layui-input-inline">
		    	<input type="text" value="" placeholder="请输入关键字" class="layui-input search_input">
		    </div>
		    <a class="layui-btn search_btn">查询</a>
		</div>
		<div class="layui-inline">
			<a class="layui-btn linksAdd_btn" style="background-color:#5FB878" href="<%=basePath%>/webPage/page/links/linksAdd.jsp">添加链接</a>
		</div>
		<div class="layui-inline">
			<a class="layui-btn layui-btn-danger batchDel">批量删除</a>
		</div>
		<div class="layui-inline">
			<div class="layui-form-mid layui-word-aux">本页面刷新后除新添加的链接外所有操作无效，关闭页面所有数据重置</div>
		</div>
	</blockquote>
	<div class="layui-form links_list">
	  	<table class="layui-table">
		    <colgroup>
				<col width="30">
				<col width="20%">
				<col width="20%">
				<col>
				<col>
				<col>
				<col>
				<col>
				<col width="13%">
		    </colgroup>
		    <thead>
				<tr>
					<th><input type="checkbox" name="" lay-skin="primary" lay-filter="allChoose" id="allChoose"></th>
					<th style="text-align:left;">网站名称</th>
					<th>网站地址</th>
					<!-- <th>站长邮箱</th> -->
					<th>添加时间</th>
					<!-- <th>展示位置</th> -->
					<th>操作</th>
				</tr> 
		    </thead>
		    <tbody class="links_content">
		    	<form:form>
		    	<c:forEach items="${linksList}" var="links">
			    	<tr>
				    	<td><input type="checkbox" name="${links.id }" id="${links.id }" lay-skin="primary" lay-filter="choose"></td>
				    	<td align="left">${links.home }</td>
				    	<td><a style="color:#1E9FFF;" target="_blank" href="http://${links.urls }">${links.urls }</a></td>
				    	<td>${links.createDate }</td>
				    	<td>
							<a class="layui-btn layui-btn-mini links_edit" href="/xiaochaoo/path/links/form?id=${links.id }"><i class="iconfont icon-edit"></i> 编辑</a>
							<a class="layui-btn layui-btn-danger layui-btn-mini links_del" data-id="${links.id }"><i class="layui-icon">&#xe640;</i> 删除</a>
				        </td>
			    	</tr>
		    	</c:forEach>
		    	</form:form>
		    </tbody>
		</table>
	</div>
	<div id="page"></div>
</body>
</html>