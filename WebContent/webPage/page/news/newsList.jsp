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
	<%-- <script type="text/javascript" src="<%=basePath%>/static/layui/layui.js"></script> --%>
	<script type="text/javascript" src="<%=basePath%>/webPage/page/news/newsList.js"></script>
	<script type="text/javascript">
		function collect(dataid, indexid){
			console.log(dataid);
			console.info(dataid.id);	
			alert(dataid);
			if($("#news_collect_"+indexid).text().indexOf("已收藏") > 0){
				// 取消收藏
				/* $.post("/xiaochaoo/path/collect/delete",{newsId: dataid},function(data){
					console.log(data);
				}); */
				$.ajax({
					url:"/xiaochaoo/path/collect/delete",
					data:{newsId:dataid.id},
					dataType:"json",
					type:"post",
					success:function(da){
						console.log(da);
						layer.msg("取消收藏成功！");
					}
				});
				$("#news_collect_"+indexid).html("<i class='layui-icon'>&#xe600;</i> 收藏");
			}else{
				/* var d = $(".news_collect").attr("id"); */
				/* console.log(dataid);
				console.log(d); */
				// 收藏
				/* $.post("/xiaochaoo/path/collect/save",{newsId: dataid},function(data){
					console.log(data);
					layer.msg("收藏成功！");
				}); */
				$.ajax({
					url:"/xiaochaoo/path/collect/save",
					data:{newsId:dataid.id},
					dataType:"json",
					type:"post",
					success:function(da){
						console.log(da);
						layer.msg("收藏成功！");
					}
				});
				$("#news_collect_"+indexid).html("<i class='iconfont icon-star'></i> 已收藏");
			}
		}
	</script>
	
	
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
			<a class="layui-btn layui-btn-normal" href="<%=basePath%>/path/news/from">添加文章</a>
		</div>
		<div class="layui-inline">
			<a class="layui-btn recommend" style="background-color:#5FB878" >推荐文章</a>
		</div>
		<div class="layui-inline">
			<a class="layui-btn audit_btn">审核文章</a>
		</div>
		<div class="layui-inline">
			<a class="layui-btn layui-btn-danger batchDel">批量删除</a>
		</div>
		<div class="layui-inline">
			<div class="layui-form-mid layui-word-aux">本页面刷新后除新添加的文章外所有操作无效，关闭页面所有数据重置</div>
		</div>
	</blockquote>
	<div class="layui-form news_list">
	  	<table class="layui-table"  lay-even lay-skin="nob">
		    <colgroup>
				<col width="50">
				<col>
				<col width="9%">
				<col width="9%">
				<col width="9%">
				<col width="9%">
				<col width="9%">
				<col width="15%">
		    </colgroup>
		    <thead>
				<tr>
					<th><input type="checkbox" name="" lay-skin="primary" lay-filter="allChoose" id="allChoose"></th>
					<th style="text-align:left;">文章标题</th>
					<th>发布人</th>
					<th>审核状态</th>
					<th>浏览权限</th>
					<th>是否展示</th>
					<th>发布时间</th>
					<th>操作</th>
				</tr> 
		    </thead>
		    <tbody class="news_content">
		      <c:forEach items="${newsList}" var="news" varStatus="status">
		    	<tr>
			    	<td><input type="checkbox" id="${news.id}" name="${news.id}" lay-skin="primary" lay-filter="choose"/>
			    		<%-- <form:input type="hidden" name="id" value="'+currData[i].id+'" lay-skin="primary" lay-filter="id"></td> --%>
			    	<td align="left">${news.title}</td>
			    	<td>${news.author}</td>
				    <td ><c:if test="${news.isStatus == '待审核'}"><font style="color: red">${news.isStatus} </font></c:if>
						 <c:if test="${news.isStatus == '已审核'}">${news.isStatus} </c:if></td>
			    	<td>${news.competence}</td>
			    	<td><input type="checkbox" name="isshow" lay-skin="switch" lay-text="是|否" lay-filter="isShow" ${news.isShow}>${news.isShow}</td>
			    	<td>${news.createDate}</td>
			    	<td>
						<a class="layui-btn layui-btn-mini news_edit_${status.index}" href="/xiaochaoo/path/news/from?id=${news.id}"><i class="iconfont icon-edit"></i> 编辑</a>
						<%-- <a class="layui-btn layui-btn-normal layui-btn-mini" class="news_collect" href="/xiaochaoo/path/collect/collect?newsId=${news.id}" id="${news.id}"> --%>
						<%-- <a class="layui-btn layui-btn-normal layui-btn-mini" class="news_collect_${status.index}" onclick="collect(${news.id}, ${status.index})" href="#" id="${news.id}">
							<c:if test="${news.collect==0}"><i class="layui-icon">&#xe600;</i> 收藏</c:if>
							<c:if test="${news.collect==1}"><i class="iconfont icon-star"></i> 已收藏</c:if>
						</a> --%>
				    	<a class="layui-btn layui-btn-danger layui-btn-mini news_del" data-id="${news.id }" href="/xiaochaoo/path/news/delete?id=${news.id }"><i class="layui-icon">&#xe640;</i> 删除</a>
			        </td>
			    	</tr>
		      </c:forEach>
		    </tbody>
		</table>
	</div>
	<div id="page"></div>
	
</body>
</html>