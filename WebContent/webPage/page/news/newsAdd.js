layui.config({
	base : "js/"
}).use(['form','layer','jquery','layedit','laydate'],function(){
	var form = layui.form,
		layer = parent.layer === undefined ? layui.layer : parent.layer,
		laypage = layui.laypage,
		layedit = layui.layedit,
		laydate = layui.laydate,
		$ = layui.jquery;
	
			laydate.render({
			    elem: '.createDate'
			  , type: 'datetime'
			  , format: 'yyyy-MM-dd HH:mm:ss'
			}); 

	//创建一个编辑器
 	var editIndex = layedit.build('news_content');
 	var addNewsArray = [],addNews;
 	form.on("submit(addNews)",function(data){
 		console.log(data.elem) //被执行事件的元素DOM对象，一般为button对象
		console.log(data.form) //被执行提交的form对象，一般在存在form标签时才会返回
		console.log(data.field) //当前容器的全部表单字段，名值对形式：{name: value}
 		
 		//是否添加过信息
	 	if(window.sessionStorage.getItem("addNews")){
	 		addNewsArray = JSON.parse(window.sessionStorage.getItem("addNews"));
	 	}
	 	
	 	//显示、审核状态
// 		var isShow = data.field.show=="on" ? "checked" : "",
// 			newsStatus = data.field.shenhe=="on" ? "审核通过" : "待审核";

// 		addNews = '{"id":"'+$(".id").val()+'",';  //文章id
// 		addNews += '"title":"'+new Date().getTime()+'",';	 //文章名称
// 		addNews += '"competence":"'+$(".newsLook option").eq($(".newsLook").val()).text()+'",'; //开放浏览
// 		addNews += '"createDate":"'+$(".newsTime").val()+'",'; //发布时间
// 		addNews += '"newsAuthor":"'+$(".newsAuthor").val()+'",'; //文章作者
// 		addNews += '"isShow":"'+ isShow +'",';  //是否展示
// 		addNews += '"newsStatus":"'+ newsStatus +'"}'; //审核状态
//	 	addNewsArray.unshift(JSON.parse(data.field));
// 		window.sessionStorage.setItem("addNews",JSON.stringify(addNewsArray));
// 		addNewsArray.unshift(data.field);
// 		window.sessionStorage.setItem("addNews",addNewsArray);
 		//弹出loading
 		var index = top.layer.msg('数据提交中，请稍候',{icon: 16,time:false,shade:0.8});
 		
        setTimeout(function(){
            top.layer.close(index);
			top.layer.msg("文章添加成功！");
 			layer.closeAll("iframe");
	 		//刷新父页面
	 		parent.location.reload();
	 		$.post("/xiaochaoo/path/news/findList");
        },2000);
 		return true;
 	})
	
})
