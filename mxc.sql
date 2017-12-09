/*
Navicat MySQL Data Transfer

Source Server         : data
Source Server Version : 50616
Source Host           : localhost:3306
Source Database       : mxc

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2017-12-09 14:38:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for collect
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect` (
  `id` varchar(255) NOT NULL,
  `newsid` varchar(255) DEFAULT NULL COMMENT '新闻id',
  `userid` varchar(255) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of collect
-- ----------------------------
INSERT INTO `collect` VALUES ('5cbc6031c32d43b5b16cfe6ebe0d0f3a', 'b8e5dc518599434d9a1859993fc6714b', '1');
INSERT INTO `collect` VALUES ('8467ed64e1364f558c553eeac8df0be9', 'af3c7de31d3849608d4a64fc9d351372', '1');
INSERT INTO `collect` VALUES ('96faff5feda74a778fc7f345c39f399d', 'd1170839f83842bfbcf203aff3a43417', '1');

-- ----------------------------
-- Table structure for links
-- ----------------------------
DROP TABLE IF EXISTS `links`;
CREATE TABLE `links` (
  `id` varchar(255) NOT NULL,
  `home` varchar(255) DEFAULT NULL COMMENT '网站名称',
  `urls` varchar(2000) DEFAULT NULL COMMENT '网站地址',
  `createDate` date DEFAULT NULL COMMENT '添加时间',
  `createBy` varchar(255) DEFAULT NULL COMMENT '创建者',
  `updateDate` date DEFAULT NULL COMMENT '更新时间',
  `updateBy` varchar(255) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of links
-- ----------------------------
INSERT INTO `links` VALUES ('1', '百度', 'www.baidu.com', '2017-10-09', null, null, null);
INSERT INTO `links` VALUES ('2', '搜狗', 'www.sogou.com', '2017-10-11', null, null, null);
INSERT INTO `links` VALUES ('3', '谷歌香港', 'www.google.com.hk', '2017-10-10', null, null, null);

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `author` varchar(255) DEFAULT NULL COMMENT '作者',
  `competence` varchar(255) DEFAULT NULL COMMENT '浏览权限',
  `status` varchar(255) DEFAULT NULL COMMENT '浏览权限',
  `isrecommend` varchar(255) DEFAULT NULL COMMENT '是否推荐',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `summary` varchar(255) DEFAULT NULL COMMENT '内容摘要',
  `content` longtext COMMENT '文本',
  `isshow` varchar(255) DEFAULT NULL COMMENT '是否展示',
  `createDate` date DEFAULT NULL COMMENT '发布时间',
  `createBy` varchar(255) DEFAULT NULL COMMENT '发布人',
  `updateDate` date DEFAULT NULL,
  `updateBy` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('147e6bb3cd904e2e8959edb2757f013f', '关于layer中自带的btn回调弹层页面的内容', 'admin', '开放浏览', '已审核', '', 'layui', 'layui', '阿斯蒂芬', '否', '2017-09-23', '1', '2017-10-09', null);
INSERT INTO `news` VALUES ('1b0ee802294b4930a7ee41d9995f29e6', 'css3用transition实现边框动画效果', '请叫我马哥', '公开', '已审核', null, 'layui', 'layui', 'fasdfasdfasdf', '是', '2017-09-23', '1', '2017-09-23', '1');
INSERT INTO `news` VALUES ('5171dbc518334b00b3743c0fa32c5cbc', 'layui上传组件不支持上传前的图片预览嘛？', 'admin', '公开', '已审核', null, 'layui', 'layui', 'fasdfasdfasdf', '是', '2017-09-23', '1', '2017-09-23', '1');
INSERT INTO `news` VALUES ('687f23bbca7047b7b2a22d53dfad7ce8', '关于layer.confirm点击无法关闭的疑惑', 'admin', '公开', '已审核', null, 'layui', 'layui', 'fasdfasdfasdf', '是', '2017-09-23', '1', '2017-09-23', '1');
INSERT INTO `news` VALUES ('725dd753746a40ec834b73938afdfad4', 'layer mobileV2.0 yes回调函数无法用？', 'admin', '公开', '已审核', null, 'layui', 'layui', 'fasdfasdfasdf', '是', '2017-09-23', '1', '2017-09-23', '1');
INSERT INTO `news` VALUES ('79332c6c2c4e4df0a486ed64cf10ab1b', '微信页面中富文本编辑器LayEdit无法使用', 'admin', '公开', '待审核', null, 'layui', 'layui', 'fasdfasdfasdf', '否', '2017-09-23', '1', '2017-09-23', '1');
INSERT INTO `news` VALUES ('8dc482477c4d47908584381b72387cde', 'layui form表单提交成功如何拿取返回值', 'admin', '公开', '已审核', null, 'layui', 'layui', 'fasdfasdfasdf', '是', '2017-09-23', '1', '2017-09-23', '1');
INSERT INTO `news` VALUES ('97991dc06bdc4985bb19bc336454bcf6', '表单元素长度应该怎么调整才美观', 'admin', '公开', '待审核', null, 'layui', 'layui', 'fasdfasdfasdf', '否', '2017-09-23', '1', '2017-09-23', '1');
INSERT INTO `news` VALUES ('af3c7de31d3849608d4a64fc9d351372', '这是layui测试', '阿斯蒂芬,阿斯蒂芬', '开放浏览', null, null, 'fasdf', '发生短发三大发射点发', '<p>这是layui测试</p>', '是', '2017-10-09', null, '2017-10-14', null);
INSERT INTO `news` VALUES ('b08f824ef3b144df9e5e44b403ef7a2c', 'layui.upload如何带参数？像jq的data:{}那样', 'admin', '公开', '待审核', null, 'layui', 'layui', 'fasdfasdfasdf', '否', '2017-09-23', '1', '2017-09-23', '1');
INSERT INTO `news` VALUES ('b8e5dc518599434d9a1859993fc6714b', 'fdas', 'dfasdf', '开放浏览', '已审核', null, 'gsdf', 'gsdfg', 'sdfg', '是', '2017-10-11', null, null, null);
INSERT INTO `news` VALUES ('c0ce0a8cb9bd4e83b07c27ffa2678c9f', 'layui.tree如何ajax加载二级菜单', 'admin', '公开', '已审核', null, 'layui', 'layui', 'fasdfasdfasdf', '是', '2017-09-23', '1', '2017-09-23', '1');
INSERT INTO `news` VALUES ('d1170839f83842bfbcf203aff3a43417', '请问儿童', '犬瘟热', '开放浏览', '已审核', null, '犬瘟热', '犬瘟热', '犬瘟热', '是', '2017-10-13', null, null, null);
INSERT INTO `news` VALUES ('d3848fe685b749e3976bda5a689f23fc', '自定义的模块名称可以包含/吗', '请叫我马哥', '公开', '待审核', null, 'layui', 'layui', 'fasdfasdfasdf', '否', '2017-09-23', '1', '2017-09-25', '1');
INSERT INTO `news` VALUES ('fc55c16d599d48b7858915a63ad47bfc', '色调风格', '321321', '公开', '待审核', null, 'layui', 'layui', 'fasdfasdfasdf', '是', '2017-09-23', '1', '2017-09-23', '1');
INSERT INTO `news` VALUES ('fe8a5f05d73645ea9f2a42ababe0d02d', 'layui 什么时候发布新的版本呀', 'admin', '公开', '待审核', null, 'layui', 'layui', 'fasdfasdfasdf', '否', '2017-09-23', '1', '2017-09-23', '1');

-- ----------------------------
-- Table structure for systemconfig
-- ----------------------------
DROP TABLE IF EXISTS `systemconfig`;
CREATE TABLE `systemconfig` (
  `id` varchar(64) NOT NULL DEFAULT '' COMMENT '主键',
  `smtp` varchar(64) DEFAULT NULL COMMENT '邮箱服务器地址',
  `port` varchar(64) DEFAULT NULL COMMENT '邮箱服务器端口',
  `mailname` varchar(64) DEFAULT NULL COMMENT '系统邮箱地址',
  `mailpassword` varchar(64) DEFAULT NULL COMMENT '系统邮箱密码',
  `smsname` varchar(64) DEFAULT NULL COMMENT '短信用户名',
  `smspassword` varchar(64) DEFAULT NULL COMMENT '短信密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='系统配置';

-- ----------------------------
-- Records of systemconfig
-- ----------------------------
INSERT INTO `systemconfig` VALUES ('1', 'smtp.qq.com', '465', '260737830@qq.com', 'liangdong', '110931', '1b199a5a17bf6e51ec8b86a7cc36bbd3');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `company_id` varchar(64) DEFAULT NULL COMMENT '归属公司',
  `office_id` varchar(64) DEFAULT NULL COMMENT '归属部门',
  `username` varchar(100) DEFAULT NULL COMMENT '登录名',
  `password` varchar(100) DEFAULT NULL COMMENT '密码',
  `no` varchar(100) DEFAULT NULL COMMENT '工号',
  `name` varchar(100) DEFAULT NULL COMMENT '姓名',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(200) DEFAULT NULL COMMENT '电话',
  `mobile` varchar(200) DEFAULT NULL COMMENT '手机',
  `user_type` char(1) DEFAULT NULL COMMENT '用户类型',
  `photo` varchar(1000) DEFAULT NULL COMMENT '用户头像',
  `login_ip` varchar(100) DEFAULT NULL COMMENT '最后登陆IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `login_flag` varchar(64) DEFAULT NULL COMMENT '是否可登录',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标记',
  `qrcode` varchar(1000) DEFAULT NULL COMMENT '二维码',
  `sign` varchar(450) DEFAULT NULL COMMENT '个性签名',
  `depart_id` varchar(64) DEFAULT NULL COMMENT '部门编号',
  `user_status` varchar(10) DEFAULT NULL COMMENT '用户状态',
  `sex` varchar(2) DEFAULT NULL COMMENT '性别',
  `wxopenid` varchar(100) DEFAULT NULL COMMENT '微信Openid',
  PRIMARY KEY (`id`),
  KEY `sys_user_office_id` (`office_id`),
  KEY `sys_user_login_name` (`username`),
  KEY `sys_user_company_id` (`company_id`),
  KEY `sys_user_update_date` (`update_date`),
  KEY `sys_user_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', '1', '5', 'admin', 'admin', '13815874603', '超级管理员', '260737830@qq.com', '0536-12345678', '15610273932', '1', '/qhbx/userfiles/1/images/tu2.png', '182.33.183.97', '2017-12-02 12:11:03', '1', '1', '2013-05-27 08:00:00', '1', '2017-11-27 15:35:25', '备注信息', '0', '/check/userfiles/1/qrcode/1.png', '你好啊', null, 'zc', null, null);

-- ----------------------------
-- Table structure for t_group
-- ----------------------------
DROP TABLE IF EXISTS `t_group`;
CREATE TABLE `t_group` (
  `id` varchar(64) NOT NULL DEFAULT '' COMMENT '主键',
  `groupname` varchar(64) CHARACTER SET utf8 DEFAULT NULL COMMENT '群组名',
  `avatar` varchar(256) DEFAULT NULL COMMENT '群头像',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '备注信息',
  `del_flag` varchar(64) DEFAULT NULL COMMENT '逻辑删除标记（0：显示；1：隐藏）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='群组';

-- ----------------------------
-- Records of t_group
-- ----------------------------

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL COMMENT '用户名称',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `sex` char(1) DEFAULT NULL COMMENT '性别',
  `address` varchar(256) DEFAULT NULL COMMENT '地址',
  `password` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', '王五', null, '2', null, null, '25');
INSERT INTO `t_user` VALUES ('2', '张三', '2014-07-10', '1', '北京市', null, '25');
INSERT INTO `t_user` VALUES ('3', '王小明', null, '1', '河南郑州', null, '25');
INSERT INTO `t_user` VALUES ('4', '陈小明', null, '1', '河南郑州', null, '25');
INSERT INTO `t_user` VALUES ('5', '张三丰', null, '1', '河南郑州', null, '25');
INSERT INTO `t_user` VALUES ('6', '陈小明', null, '1', '河南郑州', null, '25');
INSERT INTO `t_user` VALUES ('7', '王五', null, null, null, null, '25');
INSERT INTO `t_user` VALUES ('8', '小A', '2015-06-27', '2', '北京', null, '25');
INSERT INTO `t_user` VALUES ('9', '小B', '2015-06-27', '2', '北京', null, '25');
INSERT INTO `t_user` VALUES ('10', '小C', '2015-06-27', '1', '北京', null, '25');
INSERT INTO `t_user` VALUES ('11', '小D', '2015-06-27', '2', '北京', null, '25');
INSERT INTO `t_user` VALUES ('12', 'nxh', '1994-09-10', '1', '12', null, '12');
INSERT INTO `t_user` VALUES ('13', 'admin', null, null, null, 'admin', null);

-- ----------------------------
-- Procedure structure for delete_task_byid
-- ----------------------------
DROP PROCEDURE IF EXISTS `delete_task_byid`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `delete_task_byid`(in taskidIn varchar(64))
BEGIN
    #变量声明
    declare rtnCode								varchar(2);
		declare rtnMsg								varchar(200);
		declare dayofweek							int;
		declare weekofmonth 					int;
		declare taskname							varchar(200);
		declare taskremarks						varchar(500);
		declare tasktasktype					varchar(64);
		declare taskbegindate					varchar(64);
		declare taskenddate						varchar(64);
		declare taskbegintime					varchar(64);
		declare taskendtime						varchar(64);
		declare taskworkdayset				varchar(64);
		declare taskweekofmonth				varchar(64);
		declare taskworkday						varchar(64);
		declare taskcompanyid					varchar(64);
		declare taskdepartid					varchar(64);
		declare taskbanzu							varchar(64);
		declare taskdianweilist				varchar(10000);
		declare taskzhibiaolist				varchar(10000);
		declare taskgendate						varchar(60);
		declare nowday								varchar(30);
		declare itotal								int;
		declare dianweitotal					int;
		declare indextotal						int;
		declare ii										int;
		declare jj										int;
		declare eachdianwei						varchar(64);
		declare taskbanzuname 				varchar(200);
		declare eachdianweiname				varchar(200);
		declare eachindex							varchar(64);
		declare eachindexname 				varchar(200);
		declare taskgentotal 					int DEFAULT 0;
    declare ttasksl 							int;
		declare ctasksl 							int;

    DECLARE t_error INTEGER DEFAULT 0;  
		DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET t_error=1;

		#解析输入数据
		set rtnCode = '00';
		set rtnMsg = '删除任务成功';
		set nowday = DATE_FORMAT(now(),'%Y-%m-%d');

		#任务处理
		SELECT 
				name,remarks,tasktype,DATE_FORMAT(begindate,'%Y-%m-%d'), DATE_FORMAT(enddate,'%Y-%m-%d'),
				begintime,endtime,workdayset,weekofmonth,workday,companyid,departid,banzu,dianweilist,zhibiaolist,generatedate
		INTO taskname,taskremarks,tasktasktype,taskbegindate,taskenddate,taskbegintime,taskendtime,taskworkdayset,taskweekofmonth,
				 taskworkday,taskcompanyid,taskdepartid,taskbanzu,taskdianweilist,taskzhibiaolist,taskgendate
		FROM shanghu_depart_task 
		WHERE id=taskidIn;

		#如果今天已经产生任务，则删除今天的任务
    BEGIN
			if taskgendate=nowday then
				 DELETE FROM shanghu_depart_task_dianwei WHERE taskid=taskidIn AND generatedate=nowday;
				 DELETE FROM shanghu_depart_task_index WHERE taskid=taskidIn AND generatedate=nowday;
				 SET taskgentotal = 1;
			end if;

			-- 删除该任务
			DELETE FROM shanghu_depart_task where id=taskidIn;
      UPDATE shanghu set currenttask=IFNULL(currenttask,0)-1 where id=taskcompanyid;
		END;

		#事务判定
		IF t_error = 1 THEN 
			 set rtnCode = '99';
			 set rtnMsg = '删除任务成功!';
			 ROLLBACK;
		ELSE
			 COMMIT;
		END IF;
     
    #记录执行日志
    insert into task_gen_log(id,rtncode,rtnmsg,time,tasksl) values(replace(UUID(),'-',''),rtnCode,CONCAT(taskcompanyid,'→',taskdepartid,'→',rtnMsg),NOW(),taskgentotal);

end
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for generate_task
-- ----------------------------
DROP PROCEDURE IF EXISTS `generate_task`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `generate_task`()
BEGIN
	  #变量声明
		declare rtnCode   		varchar(2);
		declare rtnMsg    		varchar(200);
		declare dayofweek			int;
		declare weekofmonth 	int;

		declare taskid				varchar(64);
		declare taskname				varchar(200);
		declare taskremarks				varchar(500);
		declare tasktasktype				varchar(64);
		declare taskbegindate				varchar(64);
		declare taskenddate				varchar(64);
		declare taskbegintime				varchar(64);
		declare taskendtime				varchar(64);
		declare taskworkdayset				varchar(64);
		declare taskweekofmonth				varchar(64);
		declare taskworkday				varchar(64);
		declare taskcompanyid				varchar(64);
		declare taskdepartid				varchar(64);
		declare taskbanzu				varchar(64);
		declare taskdianweilist				varchar(10000);
		declare taskzhibiaolist				varchar(10000);
		declare taskgendate						varchar(60);
		declare nowday								varchar(30);
		declare itotal								int;
		declare dianweitotal					int;
		declare indextotal						int;
		declare ii										int;
		declare jj										int;
		declare eachdianwei						varchar(64);
		declare taskbanzuname 				varchar(200);
		declare eachdianweiname				varchar(200);
		declare eachindex							varchar(64);
		declare eachindexname 				varchar(200);
		declare taskgentotal 					int DEFAULT 0;
		declare ttasksl 							int;
		declare ctasksl 							int;

		-- 遍历数据结束标志
		DECLARE done INT DEFAULT FALSE;
		
		-- 事务处理标志
		DECLARE t_error INTEGER DEFAULT 0;

    -- 游标定义
		DECLARE cur CURSOR FOR 
		select id,name,remarks,tasktype,DATE_FORMAT(begindate,'%Y-%m-%d'), DATE_FORMAT(enddate,'%Y-%m-%d'),
		begintime,endtime,workdayset,weekofmonth,workday,companyid,departid,banzu,dianweilist,zhibiaolist,generatedate 
		from shanghu_depart_task;
		
		-- 将结束标志绑定到游标
		DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
		DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET t_error=1;

		#解析输入数据
		set rtnCode = '00';
		set rtnMsg = '任务生成成功';
		set nowday = DATE_FORMAT(now(),'%Y-%m-%d');

		#判断今天星期几
		#mysql规则:1-星期日，2-星期一，3-星期二，4-星期三，5-星期四，6-星期五，7-星期六
		#系统规则: 7-星期日，1-星期一，2-星期二，3-星期三，4-星期四，5-星期五，6-星期六
    select 
			case when DAYOFWEEK(now())=1 then 7 when DAYOFWEEK(now())=2 then 1 
			when DAYOFWEEK(now())=3 then 2 when DAYOFWEEK(now())=4 then 3 when DAYOFWEEK(now())=5 then 4
			when DAYOFWEEK(now())=6 then 5 when DAYOFWEEK(now())=7 then 6 else 0 end
    into dayofweek from dual;

		#判断今天是月的第几周
    set weekofmonth = (day(nowday)+WEEKDAY(nowday-interval day(nowday) day)) div 7 + 1;

    -- 打开游标
		OPEN cur;

		-- 开始循环任务表
		read_loop: LOOP

				-- 提取游标里的数据
				FETCH cur INTO taskid,taskname,taskremarks,tasktasktype,taskbegindate,taskenddate,taskbegintime,taskendtime,taskworkdayset,taskweekofmonth,
				               taskworkday,taskcompanyid,taskdepartid,taskbanzu,taskdianweilist,taskzhibiaolist,taskgendate; 
				-- 班组名称				
				select name into taskbanzuname from shanghu_depart_banzu where id=taskbanzu; 

				-- 声明结束的时候
				IF done THEN
					LEAVE read_loop;
				END IF;
				
        
				-- 【日任务类型/周任务类型】
        if tasktasktype='daytask' or tasktasktype='weektask' then
					 -- 当前日期在任务的开始日期和结束日期区间内，并且今天没有生成过的，生成任务。
           select count(1) into itotal from dual where (nowday between taskbegindate and taskenddate) and (FIND_IN_SET(dayofweek,taskworkdayset) > 0) and (taskgendate is null or taskgendate != nowday);
				end if;

				-- 【月任务类型】
				if tasktasktype='monthtask' then 
						-- 当前日期在任务的开始日期和结束日期区间内，并且当前月周次和星期几和任务的一致，并且今天没有生成过的，生成任务。
           select count(1) into itotal from dual where (nowday between taskbegindate and taskenddate) and weekofmonth=taskweekofmonth and dayofweek=taskworkdayset and (taskgendate is null or taskgendate != nowday);
				end if;

				-- 【临时任务类型】
				if tasktasktype='temptask' then 
						-- 当前日期等于任务日期，并且今天没有生成过的，生成任务。
           select count(1) into itotal from dual where taskworkday=nowday and (taskgendate is null or taskgendate != nowday);
				end if;

        -- 这个任务需要今天生成
				if itotal>0 THEN

						if taskdianweilist is not null THEN
							 
							-- 任务点位数量
							 set dianweitotal = func_get_split_string_total(taskdianweilist,','); 
							 set ii = 1;                 

							 -- 遍历点位
							 while ii <= dianweitotal do  

									-- 点位ID
									set eachdianwei = func_get_split_string(taskdianweilist,',',ii); 

									-- 点位名称
									select name into eachdianweiname from shanghu_depart_dianwei where id=eachdianwei; 
									
									-- 生成点位记录										
									insert into shanghu_depart_task_dianwei(id,taskid,taskname,dianweiid,dianweiname,banzuid,banzuname,generatedate,companyid,departid)
									values(replace(UUID(),'-',''),taskid,taskname,eachdianwei,eachdianweiname,taskbanzu,taskbanzuname,nowday,taskcompanyid,taskdepartid);

									-- 生成点位的指标记录
									if taskzhibiaolist is not null then

											-- 指标数量
											set indextotal = func_get_split_string_total(taskzhibiaolist,','); 
											set jj = 1;
											
											-- 遍历指标
											while jj <= indextotal do 

													-- 指标ID
													set eachindex = func_get_split_string(taskzhibiaolist,',',jj); 
													select name into eachindexname from shanghu_index where id=eachindex;

													-- 生成指标记录
													insert into shanghu_depart_task_index(id,taskid,dianweiid,indexid,indexname,generatedate,companyid,departid)
													values(replace(UUID(),'-',''),taskid,eachdianwei,eachindex,eachindexname,nowday,taskcompanyid,taskdepartid);
		
													set jj = jj+1;
											end while;
									end if;	
									
									set ii = ii+1;
							 end while;
						end if;   -- taskdianweilist is not null THEN 
						
						-- 更新任务的生成日期为今日，避免重复生成
						update shanghu_depart_task set generatedate=nowday where id=taskid;
						set taskgentotal = taskgentotal + 1;

						-- 执行日志
						insert into task_gen_log(id,rtncode,rtnmsg,time,tasksl) values(replace(UUID(),'-',''),rtnCode,CONCAT(taskcompanyid,'→',taskdepartid,'→',rtnMsg),NOW(),taskgentotal);

				end if;  -- if itotal>0 THEN
				

	  END LOOP;

		-- 关闭游标
		CLOSE cur;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for generate_task_byid
-- ----------------------------
DROP PROCEDURE IF EXISTS `generate_task_byid`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `generate_task_byid`(in taskidIn varchar(64), out rtnCode varchar(2),out rtnMsg varchar(200))
BEGIN
	  #变量声明
		declare dayofweek			int;
		declare weekofmonth 	int;
		declare taskname				varchar(200);
		declare taskremarks				varchar(500);
		declare tasktasktype				varchar(64);
		declare taskbegindate				varchar(64);
		declare taskenddate				varchar(64);
		declare taskbegintime				varchar(64);
		declare taskendtime				varchar(64);
		declare taskworkdayset				varchar(64);
		declare taskweekofmonth				varchar(64);
		declare taskworkday				varchar(64);
		declare taskcompanyid				varchar(64);
		declare taskdepartid				varchar(64);
		declare taskbanzu				varchar(64);
		declare taskdianweilist				varchar(10000);
		declare taskzhibiaolist				varchar(10000);
		declare taskgendate						varchar(60);
		declare nowday								varchar(30);
		declare itotal								int;
		declare dianweitotal					int;
		declare indextotal						int;
		declare ii										int;
		declare jj										int;
		declare eachdianwei						varchar(64);
		declare taskbanzuname 				varchar(200);
		declare eachdianweiname				varchar(200);
		declare eachindex							varchar(64);
		declare eachindexname 				varchar(200);
		declare taskgentotal 					int DEFAULT 0;
    declare ttasksl 							int;
		declare ctasksl 							int;

    DECLARE t_error INTEGER DEFAULT 0;  
		DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET t_error=1;		

		#解析输入数据
		set rtnCode = '00';
		set rtnMsg = '任务生成成功';
		set nowday = DATE_FORMAT(now(),'%Y-%m-%d');

		#判断今天星期几
		#mysql规则:1-星期日，2-星期一，3-星期二，4-星期三，5-星期四，6-星期五，7-星期六
		#系统规则: 7-星期日，1-星期一，2-星期二，3-星期三，4-星期四，5-星期五，6-星期六
    select 
			case when DAYOFWEEK(now())=1 then 7 when DAYOFWEEK(now())=2 then 1 
			when DAYOFWEEK(now())=3 then 2 when DAYOFWEEK(now())=4 then 3 when DAYOFWEEK(now())=5 then 4
			when DAYOFWEEK(now())=6 then 5 when DAYOFWEEK(now())=7 then 6 else 0 end
    into dayofweek from dual;

		#判断今天是月的第几周
    set weekofmonth = (day(nowday)+WEEKDAY(nowday-interval day(nowday) day)) div 7 + 1;

    #任务处理
		SELECT 
				name,remarks,tasktype,DATE_FORMAT(begindate,'%Y-%m-%d'), DATE_FORMAT(enddate,'%Y-%m-%d'),
				begintime,endtime,workdayset,weekofmonth,workday,companyid,departid,banzu,dianweilist,zhibiaolist,generatedate
		INTO taskname,taskremarks,tasktasktype,taskbegindate,taskenddate,taskbegintime,taskendtime,taskworkdayset,taskweekofmonth,
				 taskworkday,taskcompanyid,taskdepartid,taskbanzu,taskdianweilist,taskzhibiaolist,taskgendate
		FROM shanghu_depart_task 
		WHERE id=taskidIn;

		-- 班组名称				
		select name into taskbanzuname from shanghu_depart_banzu where id=taskbanzu; 
 
    #如果今天已经产生任务，则先删除今天的任务,再重新生成
    BEGIN
			if taskgendate=nowday then
         UPDATE shanghu_depart_task SET generatedate=NULL where id=taskidIn;
				 DELETE FROM shanghu_depart_task_dianwei WHERE taskid=taskidIn AND generatedate=nowday;
				 DELETE FROM shanghu_depart_task_index WHERE taskid=taskidIn AND generatedate=nowday;
				 set taskgendate=NULL;
			end if;
		END;
			  
		#判定任务今日是否需要产生
		-- 【日任务类型/周任务类型】
		if tasktasktype='daytask' or tasktasktype='weektask' then
			 -- 当前日期在任务的开始日期和结束日期区间内，并且今天没有生成过的，生成任务。
			 select count(1) into itotal from dual where (nowday between taskbegindate and taskenddate) and (FIND_IN_SET(dayofweek,taskworkdayset) > 0) and (taskgendate is null or taskgendate != nowday);
		end if;

		-- 【月任务类型】
		if tasktasktype='monthtask' then 
				-- 当前日期在任务的开始日期和结束日期区间内，并且当前月周次和星期几和任务的一致，并且今天没有生成过的，生成任务。
			 select count(1) into itotal from dual where (nowday between taskbegindate and taskenddate) and weekofmonth=taskweekofmonth and dayofweek=taskworkdayset and (taskgendate is null or taskgendate != nowday);
		end if;

		-- 【临时任务类型】
		if tasktasktype='temptask' then 
				-- 当前日期等于任务日期，并且今天没有生成过的，生成任务。
			 select count(1) into itotal from dual where taskworkday=nowday and (taskgendate is null or taskgendate != nowday);
		end if;

		#这个任务需要今天生成
    BEGIN
				if itotal>0 THEN

						if taskdianweilist is not null THEN
							 
							 -- 任务点位数量
							 set dianweitotal = func_get_split_string_total(taskdianweilist,','); 
							 set ii = 1;                 

							 -- 遍历点位
							 while ii <= dianweitotal do  

									-- 点位ID
									set eachdianwei = func_get_split_string(taskdianweilist,',',ii); 

									-- 点位名称
									select name into eachdianweiname from shanghu_depart_dianwei where id=eachdianwei; 
									
									-- 生成点位记录										
									insert into shanghu_depart_task_dianwei(id,taskid,taskname,dianweiid,dianweiname,banzuid,banzuname,generatedate,companyid,departid)
									values(replace(UUID(),'-',''),taskidIn,taskname,eachdianwei,eachdianweiname,taskbanzu,taskbanzuname,nowday,taskcompanyid,taskdepartid);

									-- 生成点位的指标记录
									if taskzhibiaolist is not null then

											-- 指标数量
											set indextotal = func_get_split_string_total(taskzhibiaolist,','); 
											set jj = 1;
											
											-- 遍历指标
											while jj <= indextotal do 

													-- 指标ID
													set eachindex = func_get_split_string(taskzhibiaolist,',',jj); 
													select name into eachindexname from shanghu_index where id=eachindex;

													-- 生成指标记录
													insert into shanghu_depart_task_index(id,taskid,dianweiid,indexid,indexname,generatedate,companyid,departid)
													values(replace(UUID(),'-',''),taskidIn,eachdianwei,eachindex,eachindexname,nowday,taskcompanyid,taskdepartid);

													set jj = jj+1;
											end while;
									end if;	
									
									set ii = ii+1;
							 end while;
						end if;   -- taskdianweilist is not null THEN 
						
						-- 更新任务的生成日期为今日，避免重复生成
						update shanghu_depart_task set generatedate=nowday where id=taskidIn;
						set taskgentotal = taskgentotal + 1;

				end if;  -- if itotal>0 THEN
		END;

		#事务判定
		IF t_error = 1 THEN 
			 set rtnCode = '99';
			 set rtnMsg = '任务生成失败!';
			 ROLLBACK;
		ELSE
			 COMMIT;
		END IF;

		#记录执行日志
    insert into task_gen_log(id,rtncode,rtnmsg,time,tasksl) values(replace(UUID(),'-',''),rtnCode,CONCAT(taskcompanyid,'→',taskdepartid,'→',rtnMsg),NOW(),taskgentotal);

END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for func_get_split_string
-- ----------------------------
DROP FUNCTION IF EXISTS `func_get_split_string`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `func_get_split_string`(
f_string varchar(1000),f_delimiter varchar(5),f_order int) RETURNS varchar(255) CHARSET utf8
BEGIN
  declare result varchar(255) default '';
  set result = reverse(substring_index(reverse(substring_index(f_string,f_delimiter,f_order)),f_delimiter,1));
  return result;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for func_get_split_string_total
-- ----------------------------
DROP FUNCTION IF EXISTS `func_get_split_string_total`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `func_get_split_string_total`(
f_string varchar(1000),f_delimiter varchar(5)
) RETURNS int(11)
BEGIN
  return 1+(length(f_string) - length(replace(f_string,f_delimiter,'')));
END
;;
DELIMITER ;

-- ----------------------------
-- Event structure for event_task_generation
-- ----------------------------
DROP EVENT IF EXISTS `event_task_generation`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` EVENT `event_task_generation` ON SCHEDULE EVERY 1 DAY STARTS '2017-02-11 00:35:00' ON COMPLETION PRESERVE ENABLE DO CALL generate_task()
;;
DELIMITER ;
