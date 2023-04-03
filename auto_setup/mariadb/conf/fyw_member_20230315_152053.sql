-- MySQL dump 10.13  Distrib 5.7.41, for Linux (x86_64)
--
-- Host: localhost    Database: fyw_member
-- ------------------------------------------------------
-- Server version	5.7.41-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `fke_auth_mobile`
--

DROP TABLE IF EXISTS `fke_auth_mobile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fke_auth_mobile` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mobile` varchar(16) DEFAULT '',
  `authcode` varchar(6) DEFAULT '',
  `is_checked` tinyint(4) DEFAULT '0',
  `check_error_times` tinyint(4) DEFAULT '0' COMMENT '输入错误次数',
  `check_time` int(10) unsigned DEFAULT '0' COMMENT '验证时间',
  `send_time` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fke_auth_mobile`
--

LOCK TABLES `fke_auth_mobile` WRITE;
/*!40000 ALTER TABLE `fke_auth_mobile` DISABLE KEYS */;
/*!40000 ALTER TABLE `fke_auth_mobile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fke_broker_info`
--

DROP TABLE IF EXISTS `fke_broker_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fke_broker_info` (
  `id` int(11) NOT NULL,
  `realname` varchar(20) CHARACTER SET utf8 DEFAULT '',
  `province_id` int(10) unsigned DEFAULT NULL,
  `city_id` int(10) unsigned DEFAULT NULL,
  `cityarea_id` int(11) DEFAULT NULL,
  `cityarea2_id` int(11) DEFAULT '0',
  `address` varchar(240) DEFAULT '' COMMENT '详细地址',
  `city_website_id` int(10) unsigned DEFAULT NULL,
  `mobile` varchar(20) CHARACTER SET utf8 DEFAULT '',
  `mobile_checked` tinyint(3) unsigned DEFAULT '0' COMMENT '0未认证 1已认证',
  `avatar` varchar(100) CHARACTER SET utf8 DEFAULT '',
  `signed` varchar(200) CHARACTER SET utf8 DEFAULT '',
  `company` varchar(100) CHARACTER SET utf8 DEFAULT '',
  `outlet` varchar(100) CHARACTER SET utf8 DEFAULT '',
  `outlet_addr` varchar(200) CHARACTER SET utf8 DEFAULT '',
  `post_code` varchar(10) CHARACTER SET utf8 DEFAULT '',
  `com_tell` varchar(20) CHARACTER SET utf8 DEFAULT '',
  `com_fax` varchar(20) CHARACTER SET utf8 DEFAULT '',
  `gender` tinyint(1) DEFAULT '0',
  `birthday` date DEFAULT NULL,
  `borough_id` int(11) DEFAULT NULL,
  `introduce` mediumtext,
  `broker_type` tinyint(4) DEFAULT '1',
  `outlet_first` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `outlet_last` varchar(100) CHARACTER SET utf8 DEFAULT '',
  `zhiwu` varchar(50) CHARACTER SET utf8 DEFAULT '',
  `servicearea` varchar(250) CHARACTER SET utf8 DEFAULT '',
  `status` tinyint(4) DEFAULT '0' COMMENT '1开店',
  `brand_apartment_id` int(10) unsigned DEFAULT '0' COMMENT '所属品牌公寓',
  PRIMARY KEY (`id`),
  KEY `city_website_id` (`city_website_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fke_broker_info`
--

LOCK TABLES `fke_broker_info` WRITE;
/*!40000 ALTER TABLE `fke_broker_info` DISABLE KEYS */;
INSERT INTO `fke_broker_info` VALUES (284186,'王女士',13,9862,9879,9911,'',44,'15071317540',1,'','','','','','','','',0,NULL,0,'',1,'','','','',0,0),(284187,'刘玉国',2,52,508,3933,'',1,'13716287000',1,'','','','','','','','',0,NULL,0,'',1,'','','','',0,0),(284188,'吴荣辉',6,77,4376,18422,'固戍一路108号正奇隆工业园',4,'13378650780',1,'','','深圳市中鹏程实业有限公司','正奇隆大厦','','','','',0,NULL,0,'正奇隆工业园位于深圳市宝安区西乡街道固戍一路，交通十分便利，距广深高速鹤州出口2公里，距固戍地铁站出口1公里。园区使用面积约3.5万平方米，是固戍片区较大的工业园。\r\n园区主导发展智能装备、机器人等高技术产业，着力打造高技术、高附加值、绿色环保的生态示范园区。',1,'','','','固戍、福永、西乡、新安、南山、松岗、沙井、石岩、公明',0,0),(284189,'薛松松',24,13844,13854,20227,'',286,'15630907815',1,'',NULL,'境商地产','紫汀苑南门店',NULL,'',NULL,NULL,0,NULL,0,'本人从事房地产经纪行业 3 年零 6个月，具有丰富的从业经验。熟悉小区各种户型，了解小区周围配套及未来发展规划，为您精确计算购房的税费及首付，为您合理科学的设计购房规划。',1,'','','','曲江|高新|未央|浐灞',0,0),(284190,'黄楚',6,77,4381,4812,'',4,'18476888764',1,'',NULL,'','',NULL,'',NULL,NULL,0,NULL,0,'',1,'','','','',0,0),(284191,'姜海洋',31,15407,15422,19284,'杭州拱墅区拱墅',43,'15694552431',1,'','','创富港','创业产业园','','','','',0,NULL,0,'1办公室具体出租方式:户型多样按独立办公间出租,使用面积=独立办公间+商务接待区\r\n+茶水间+会议室+洽谈室,其中商务接待区、茶水间、书吧、路演厅、卫生间等区域可供免费\r\n使用。\r\n2费用全包(包括物业管理费、水电费、空调费、网络费、清洁费等)\r\n3所有办公间已配齐全套办公家私,您只需提电脑就能过来办公\r\n',1,'','','','拱墅|上城|西湖',0,0),(284192,'张明东',6,77,4376,0,'石岩街道塘头大道金三角商务大厦509',4,'18923441436',1,'',NULL,'优丰泰物业管理有限公司','金三角商务大厦写字楼',NULL,'',NULL,NULL,0,NULL,0,'金三角商务大厦写字楼位于石岩街道塘头大道中端，共七层，五层办公室出租，价格优惠，可注册公司，可做办公中心，小加工中心，展示中心，直播中心等，周围有大型工业园，商场，餐厅，酒店，停车场，公寓，物流园，人流量大，快递方便',1,'','','','办公室出租|厂房出租',0,0),(284193,'何小姐',6,80,7220,7248,'',81,'13760158456',1,'','','','','','','','',0,NULL,0,'',1,'','','','',0,0),(284194,'禹焕霞',16,10773,10793,10849,'',229,'17326188696',1,'',NULL,'','',NULL,'',NULL,NULL,0,NULL,0,'',1,'','','','',0,0),(284195,'樊凡',6,77,4372,0,'',4,'18122084416',1,'',NULL,'','',NULL,'',NULL,NULL,0,NULL,0,'',1,'','','','',0,0),(284196,'李茂',18,11874,12362,0,'',133,'13940686260',1,'','','','','','','','',0,NULL,0,'',1,'','','','',0,0),(284197,'张女士',27,343,5336,5364,'',46,'18522470601',1,'','','','','','','','',0,NULL,0,'',1,'','','','',0,0),(284198,'方',31,15408,15543,0,'',192,'15867467197',1,'','','','','','','','',0,NULL,0,'',1,'','','','',0,0),(284199,'刘总',26,14162,14185,14264,'',39,'18848261187',1,'','','','','','','','',0,NULL,0,'',1,'','','','',0,0),(284200,'华铖',31,15407,15428,15537,'',43,'15557118007',1,'',NULL,'','',NULL,'',NULL,NULL,0,NULL,0,'',1,'','','','',0,0),(284201,'',26,14162,0,0,'',39,'',1,'','','','','','','','',0,NULL,NULL,'',1,'','','','',0,0),(284202,'刘恂开',25,321,2716,4283,'',354,'13651628968',1,'',NULL,'','',NULL,'',NULL,NULL,0,NULL,0,'',1,'','','','',0,0),(284203,'陈阿布',25,321,2706,4093,'',354,'18721101006',1,'',NULL,'上海元捷','漕河泾',NULL,'',NULL,NULL,0,NULL,0,'商业地产租赁7年，专车接送，免佣服务',1,'','','','徐汇|闵行',0,0),(284204,'陈春峰',25,321,2706,4093,'',354,'13761176521',1,'',NULL,'','',NULL,'',NULL,NULL,0,NULL,0,'',1,'','','','',0,0),(284205,'高',27,343,16817,18765,'',46,'18613841758',1,'','','','','','','','',0,NULL,0,'',1,'','','','',0,0),(284206,'梁照堂',6,95,7569,7649,'横栏壹加壹附近幸福年华',336,'19876271393',1,'','','靓房地产','幸福年华','','','','',0,NULL,0,'我是广东中山本地农村人，我姓梁。本人从事这个行业好多年，专业为你们服务，本人也希望跟你们一起合作。',1,'','','','横栏.古镇.沙溪.西区.小榄.江门',0,0),(284207,'李存宇',25,321,2706,4099,'',354,'19532532459',1,'',NULL,'上海瀚秀商务咨询中心','徐汇',NULL,'',NULL,NULL,0,NULL,0,'我是上海瀚秀地产有限公司的，本人精耕徐家汇，中山公园，静安寺商圈10年',1,'','','','徐家汇|打浦桥|淮海中路|新天地|中山公园|长风公园|静安寺',0,0),(284208,'凌相龙',25,321,2705,4087,'华宁路4188号',354,'15221133892',1,'',NULL,'绿亮集团','绿亮资本大厦',NULL,'',NULL,NULL,0,NULL,0,'本人从事商业办公厂房20多年，资源共享，目前负责绿亮集团招商，项目位于闵行松江，有合适客户欢迎对接',1,'','','','闵行莘庄-梅陇-松江泗泾',0,0),(284209,'',6,87,0,0,'',215,'',1,'','','','','','','','',0,NULL,NULL,'',1,'','','','',0,0),(284210,'汤晓辉',2,52,503,0,'凯旋城6号楼1702',1,'17035329999',1,'',NULL,'安家青年公寓','亚运村店',NULL,'',NULL,NULL,0,NULL,0,'以诚待人  全网最低价格找到性价比最高的房子',1,'','','','亚运村|亚运村小营|惠心西街北口|北苑路北',0,0),(284211,'',22,6088,0,0,'',211,'13188983109',1,'','','','','','','','',0,NULL,NULL,'',1,'','','','',0,0),(284212,'',3,16129,0,0,'',97,NULL,0,'','','','','','','','',0,NULL,NULL,'',1,'','','','',0,0),(284213,'',3,16142,0,0,'',391,'13856832178',1,'','','','','','','','',0,NULL,NULL,'',1,'','','','',0,0),(284214,'',3,16142,0,0,'',391,NULL,0,'','','','','','','','',0,NULL,NULL,'',1,'','','','',0,0),(284215,'王生',6,80,7221,7255,'广东省佛山市南海区邓岗路10号',81,'13143575291',1,'','','勤思地产','万冠广场营销中心','','','','',0,NULL,0,'真诚为您，服务至上！',1,'','','','里水',0,0),(284216,'张静芳',31,15407,15421,15437,'',43,'16750010608',1,'','','','','','','','',0,NULL,0,'',1,'','','','',0,0),(284217,'',2,52,0,0,'',1,'15001096662',1,'','','','','','','','',0,NULL,NULL,'',1,'','','','',0,0),(284218,'刘飞雷',25,321,2710,18348,'',354,'18321296817',1,'','','','','','','','',0,NULL,0,'',1,'','','','',0,0),(284219,'闫连锋',31,15407,15428,19253,'',43,'17815617855',1,'',NULL,'','',NULL,'',NULL,NULL,0,NULL,0,'',1,'','','','',0,0),(284220,'杜付利',25,321,2716,4290,'',354,'18721645943',1,'',NULL,'','',NULL,'',NULL,NULL,0,NULL,0,'',1,'','','','',0,0);
/*!40000 ALTER TABLE `fke_broker_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fke_house_new`
--

DROP TABLE IF EXISTS `fke_house_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fke_house_new` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityarea_id` int(11) unsigned DEFAULT '0',
  `cityarea2_id` int(11) unsigned DEFAULT '0',
  `column_type` tinyint(3) unsigned DEFAULT '0' COMMENT '栏目分类：1普通房源  2写字楼  3商铺 4车位',
  `house_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '房源类型',
  `house_price` float unsigned DEFAULT '0',
  `house_price_average` float unsigned DEFAULT '0',
  `house_totalarea` float unsigned NOT NULL DEFAULT '0',
  `house_room` tinyint(4) DEFAULT '0',
  `house_floor` int(11) DEFAULT '0',
  `house_toward` tinyint(4) DEFAULT '0',
  `house_fitment` tinyint(4) DEFAULT '0',
  `mid` int(11) unsigned NOT NULL DEFAULT '0',
  `mtype` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '发布人类型',
  `down_time` int(11) DEFAULT '0' COMMENT '下架时间',
  `is_checked` tinyint(4) DEFAULT '1' COMMENT '0待审 1审核通过 -1审核失败 2已下架',
  `is_delete` tinyint(3) unsigned DEFAULT '0' COMMENT '0正常\r\n1待审核回收站\r\n2通过审核回收站\r\n3未通过审核回收站',
  `is_lock` tinyint(4) DEFAULT '0' COMMENT '是否被锁定：0正常 1锁定状态。管理员删除的房源会进行锁定',
  `is_down` tinyint(4) DEFAULT '0' COMMENT '是否下架：0正常 1已下架',
  `is_banner` tinyint(4) DEFAULT '0' COMMENT '是否是Banner房源：0示审核 1设置为幻灯 2图片不合格',
  `house_status` tinyint(4) DEFAULT '0' COMMENT '0待审核 1删除电话 2不确定房源 3真实房源 4中介房源 5房源已成交',
  `deal_time` int(11) DEFAULT '0' COMMENT '成交时间',
  `created` int(11) DEFAULT '0',
  `updated` int(11) DEFAULT '0',
  `source_id` int(11) unsigned DEFAULT '0' COMMENT '信息来源',
  `city_website_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '所属站点',
  `house_hall` tinyint(4) DEFAULT '0',
  `house_toilet` tinyint(4) DEFAULT '0',
  `house_veranda` tinyint(4) DEFAULT '0',
  `house_topfloor` tinyint(4) DEFAULT '0',
  `click_num` int(11) unsigned DEFAULT '0' COMMENT '点击数',
  `click_virtual` int(10) unsigned DEFAULT '0' COMMENT '虚拟点击数',
  `hide_phone` tinyint(4) DEFAULT '0' COMMENT '0显示电话  1隐藏电话',
  `report_count` int(11) DEFAULT '0' COMMENT '投诉次数',
  `truth_degree` tinyint(3) unsigned DEFAULT '0' COMMENT 'æˆ¿æºçœŸå®žåº¦0åˆ°100',
  `belong` tinyint(4) DEFAULT '0' COMMENT '产权',
  `house_title` varchar(120) NOT NULL DEFAULT '',
  `house_title_crc32` int(11) unsigned NOT NULL DEFAULT '0',
  `house_age` int(4) unsigned DEFAULT '0' COMMENT '房龄',
  `house_thumb` varchar(100) DEFAULT '' COMMENT '缩略图',
  `keywords` varchar(30) DEFAULT '',
  `owner_name` varchar(18) DEFAULT '',
  `owner_phone` varchar(16) NOT NULL DEFAULT '' COMMENT '联系人电话',
  `owner_phone_crc32` int(11) unsigned DEFAULT '0',
  `owner_phone_pic` varchar(100) DEFAULT '' COMMENT '电话图片',
  `borough_name` varchar(60) DEFAULT '' COMMENT '小区名称',
  `house_address` varchar(60) DEFAULT '' COMMENT '房源地址',
  `wechat` varchar(60) DEFAULT '' COMMENT '用户微信号码',
  `qq` varchar(60) DEFAULT '' COMMENT '会员发布房源时的QQ号码',
  `promote_end_time` int(10) unsigned DEFAULT '0' COMMENT '推广过期时间',
  `is_cooperation` tinyint(3) unsigned DEFAULT '0' COMMENT '0普通房源 1经纪人合作房源',
  `elevator` tinyint(4) DEFAULT '0' COMMENT '有无电梯：0未填写  1有电梯  -1无电梯',
  `parking_lot` tinyint(4) DEFAULT '0' COMMENT '有无车位：0未填写  1有车位  -1没有车位',
  `bright_spot` varchar(120) DEFAULT '' COMMENT '房屋亮点',
  `parking_type` tinyint(3) unsigned DEFAULT '0' COMMENT '车位类型：1地上露天车位 2地上车库 3地下车库',
  `down_payment` decimal(10,0) unsigned DEFAULT '0' COMMENT '首付款',
  `first_floor_height` decimal(10,2) DEFAULT '0.00',
  `floor_type` tinyint(4) DEFAULT '0' COMMENT '楼层类型：1单层 2多层(独栋)',
  `data_update_time` int(10) unsigned DEFAULT '0' COMMENT '数据更新时间',
  `refresh_count` int(10) unsigned DEFAULT '0' COMMENT '刷新次数',
  `register` tinyint(4) DEFAULT '0' COMMENT '0不可注册  1可注册',
  PRIMARY KEY (`id`),
  KEY `created` (`created`),
  KEY `cityarea_id` (`cityarea_id`),
  KEY `city_website_id` (`city_website_id`) USING BTREE,
  KEY `updated` (`updated`) USING BTREE,
  KEY `mid` (`mid`),
  KEY `house_title_crc32` (`house_title_crc32`),
  KEY `owner_phone_crc32` (`owner_phone_crc32`),
  KEY `promote_end_time` (`promote_end_time`),
  KEY `data_update_time` (`data_update_time`)
) ENGINE=InnoDB AUTO_INCREMENT=7532 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fke_house_new`
--

LOCK TABLES `fke_house_new` WRITE;
/*!40000 ALTER TABLE `fke_house_new` DISABLE KEYS */;
INSERT INTO `fke_house_new` VALUES (7500,2707,4120,1,1,399,1330000,3,2,1,9,3,271441,1,1669942301,1,1,0,0,-1,0,0,1669856947,1669856947,0,354,1,1,0,6,11,22,0,0,0,0,'浦东住宅新房出售APP2室1厅1卫',2122855043,2021,'house/new/20221201/166985687047869.jpg','浦东,碧云','夏女士','13111779202',3367864250,'','住宅新房出售APP','','','',0,0,1,1,'1',0,0,NULL,0,1669942301,0,0),(7501,501,3618,3,7,11,10000,11,2,1,9,5,252960,1,1669858252,0,1,0,0,0,0,0,1669858152,1670941801,0,1,2,1,0,1,0,22,0,0,0,0,'西城财税财税',1735543606,1999,'','西城,金融街,金融街','宋xc','18610851893',389799267,'','财税','','','',0,0,0,0,'',0,0,0.00,0,1670941801,0,0),(7502,15434,19222,1,1,150,6818.18,220,5,3,9,3,284004,1,0,1,0,0,0,-1,0,0,1669874403,1669874416,0,43,2,4,0,3,21,23,0,0,0,3,'杭州周边绿城九溪玫瑰园5室2厅4卫',2391243049,2022,'house/new/20221201/166987425910012.jpg','杭州周边,','刘灿佳','15957116376',3514126375,'','绿城九溪玫瑰园','牟山湖国际旅游度假区里面的','','',0,0,1,1,',6,8,10,11,12,',0,0,0.00,0,1669874611,0,0),(7503,2717,4303,1,1,399,102308,39,2,3,9,3,271441,1,1670030298,1,1,0,0,-1,0,0,1669942347,1669942347,0,354,1,1,0,9,13,23,0,0,0,0,'宝山新房住宅出售手机端2室1厅1卫',1175441340,2020,'house/new/20221202/166994231384547.jpg','宝山,','夏女士','13111779202',3367864250,'','新房住宅出售手机端','','','',0,0,1,1,',1,',0,0,0.00,0,1670030298,0,0),(7504,509,3948,3,7,349,42048.2,83,2,1,4,5,284024,2,0,1,0,0,0,1,0,0,1669950328,1669950328,0,1,1,1,0,1,9,26,0,0,0,3,'带租对外出售',2517102081,2019,'house/new/20221202/166995009980881.jpg','门头沟,永定','王宁','15620560394',3187221785,'','大都汇','欢乐大都汇','','',0,0,0,0,'',0,0,NULL,0,1669951163,0,0),(7505,2703,4037,1,1,396,120000,33,2,1,9,3,271441,1,1670288561,1,1,0,0,-1,0,0,1670030342,1670030342,0,354,1,1,0,9,13,22,0,0,0,0,'长宁住宅新房出售APP2室1厅1卫',2715827776,2020,'house/new/20221203/167003031253251.jpg','长宁,动物园','夏女士','13111779202',3367864250,'','住宅新房出售APP','','','',0,0,1,1,'1',0,0,NULL,0,1670288561,0,0),(7506,9889,9993,3,7,240,20168.1,119,2,1,9,1,282746,3,0,1,0,0,0,-1,0,0,1670045356,1670894870,0,44,1,1,0,2,13,21,0,0,0,0,'青山地铁口临街旺铺',2492451954,2019,'house/new/20221203/167004523437726.jpg','青山,冶金大道','田经理','18674088480',3319291966,'','地铁口临街旺铺','','','',0,0,0,0,'',0,0,NULL,0,1670894870,0,0),(7507,19196,19343,2,5,400,12500,320,2,5,1,1,284041,3,0,1,0,0,0,-1,0,0,1670057101,1670057192,0,43,1,1,0,8,12,24,0,0,0,2,'新房临平区朱家角邻里中心',1679655933,2019,'house/new/20221203/167005687833042.jpg','临平区,东湖','刘增辉','13396556981',3269942377,'','朱家角邻里中心','兴起路508号','','',0,0,0,0,'',0,0,NULL,0,1670057972,0,0),(7508,503,3781,2,5,11,10000,11,2,1,1,5,252960,1,1670202052,0,1,0,0,0,0,0,1670201734,1670943600,0,1,2,1,0,1,1,25,0,0,0,0,'朝阳测试测试',3918740692,1999,'house/new/20221205/167020172967997.jpg','朝阳,豆各庄,豆各庄','宋xc','18610851893',389799267,'','测试','','','',0,0,0,0,'',0,0,0.00,0,1670943600,0,0),(7509,2705,4072,1,1,399,110833,36,2,3,9,5,61297,1,0,1,0,0,0,-1,0,0,1670286321,1670941801,0,354,1,1,0,9,30,22,0,0,0,0,'闵行新房住宅出售2室1厅1卫',3641698603,2019,'house/new/20221206/167028629057606.jpg','闵行,华漕,华漕','房产小达人','15600236508',3551218080,'','新房住宅出售','','','',0,0,1,1,',1,',0,0,0.00,0,1670941801,0,0),(7510,500,3605,1,1,11,10000,11,2,1,9,5,252960,1,1670289463,0,1,0,0,0,0,0,1670289337,1670941201,0,1,2,1,0,1,0,25,0,0,0,3,'东城测试2室2厅1卫',3596795227,2001,'house/new/20221206/167028932969566.jpg','东城,交道口,交道口','宋xc','18610851893',389799267,'','测试','','','',0,0,1,1,',1,9,',0,0,0.00,0,1670941201,0,0),(7511,2716,4280,1,1,366,101667,36,2,1,9,3,271441,1,1670374203,1,1,0,0,-1,0,0,1670289530,1670289530,0,354,1,1,0,9,5,21,0,0,0,0,'嘉定新房住宅出售小程序2室1厅1卫',939087627,2021,'house/new/20221206/167028948069070.jpg','嘉定,黄渡','夏女士','13111779202',3367864250,'','新房住宅出售小程序','','','',0,0,1,1,'1',0,0,NULL,0,1670374203,0,0),(7512,2718,4332,1,1,34800,3551020,98,3,14,9,3,284083,3,0,1,0,0,0,1,0,0,1670293749,1670293749,0,354,2,2,0,16,11,23,0,0,0,3,'青浦大名城·映辰3室2厅2卫',1189552168,2022,'house/new/20221206/167029348846037.jpg','青浦,重固','肖江华','15216786162',3081137134,'','大名城·映辰','上海市青浦区重固镇郏店288弄','','',0,0,1,1,'6',0,0,NULL,0,1670296941,0,0),(7513,2718,4333,1,1,36000,3829790,94,3,6,9,3,284083,3,0,1,0,0,0,1,0,0,1670294071,1670294071,0,354,2,2,0,8,17,21,0,0,0,3,'青浦同润朱韵澜庭3室2厅2卫',673126033,2022,'house/new/20221206/167029392931630.jpg','青浦,朱家角','肖江华','15216786162',3081137134,'','同润朱韵澜庭','上海市青浦区朱家角港周路与阁游路交汇处','','',0,0,1,1,'6,12,9,8',0,0,NULL,0,1670296941,0,0),(7514,2707,4121,1,1,399,102308,39,2,1,9,3,271441,1,1670460675,1,1,0,0,-1,0,0,1670374253,1670374253,0,354,1,1,0,9,6,25,0,0,0,0,'浦东住宅新房出售APP2室1厅1卫',2122855043,2020,'house/new/20221207/167037422188274.jpg','浦东,曹路','夏女士','13111779202',3367864250,'','住宅新房出售APP','','','',0,0,1,1,'1',0,0,NULL,0,1670460675,0,0),(7515,503,18234,3,7,11,10000,11,3,1,9,5,252960,1,1670377061,0,1,0,0,0,0,0,1670376916,1670942401,0,1,2,2,0,1,0,25,0,0,0,0,'朝阳测试测试',3918740692,2001,'house/new/20221207/167037690355912.jpg','朝阳,北工大,北工大','宋xc','18610851893',389799267,'','测试','','','',0,0,0,0,'',0,0,0.00,0,1670942401,0,0),(7516,2710,4192,1,1,5000,1000000,50,1,1,4,3,284112,2,0,1,0,0,0,-1,0,0,1670389143,1670389143,0,354,1,1,0,3,11,23,0,0,0,2,'静安王家沙花苑1室1厅1卫',1928441225,1998,'house/new/20221207/167038882937848.jpg','静安,北京西路','何健','18905096207',962367704,'','王家沙花苑','北京西路605弄40号一楼后门','','',0,0,-1,1,'6,7,5',0,0,NULL,0,1670392162,0,0),(7517,9754,0,1,1,20.5,2928.57,70,2,1,9,5,279635,2,0,1,0,0,0,-1,0,0,1670392422,1670392422,0,66,1,1,0,6,6,26,0,0,0,3,'让胡路乘风庄8区2室大明厅走到外国语5分钟',2033222819,1999,'house/new/20221207/167039202630567.jpg','让胡路,','自由','13394597725',3743991485,'','乘风庄8区','乘风庄8区','','',0,0,-1,0,',1,6,10,12,',0,0,0.00,0,1670392422,0,0),(7518,2717,4303,1,1,399,128710,31,2,3,9,3,271441,1,1670548732,1,1,0,0,-1,0,0,1670461006,1670461006,0,354,1,1,0,9,5,25,0,0,0,0,'宝山新房住宅出售手机端2室1厅1卫',1175441340,2021,'house/new/20221208/167046096013073.jpg','宝山,','夏女士','13111779202',3367864250,'','新房住宅出售手机端','','','',0,0,1,1,',1,',0,0,0.00,0,1670548732,0,0),(7519,503,3770,3,7,11,10000,11,3,1,9,3,252960,1,1670463150,0,1,0,0,1,0,0,1670462503,1670941501,0,1,1,1,0,1,2,20,0,0,0,0,'朝阳测试测试',3918740692,2001,'house/new/20221208/167046249966138.jpg','朝阳,朝青板块,朝青板块','宋xc','18610851893',389799267,'','测试','','','',0,0,0,0,'',0,0,0.00,0,1670941501,0,0),(7520,508,3938,1,1,216,24269.7,89,3,6,9,4,275995,1,0,1,0,0,0,1,0,0,1670470550,1670470972,0,1,2,2,0,8,54,19,0,0,0,3,'房山六环1公里，精装修商品房3居2卫216万',3495104703,2022,'house/new/20221208/167047022428498.jpeg','房山,','蔺吉智','13552383563',1922922215,'','中骏云景台','','','',0,0,1,1,',2,',0,0,0.00,0,1670470972,0,0),(7521,508,3938,1,1,215,24157.3,89,3,7,9,3,262746,1,0,1,0,0,0,1,0,0,1670482926,1670482926,0,1,2,2,0,9,18,22,0,0,0,3,'精装修三居两卫！超高性价比！六环旁！公园内的家！',116173300,2022,'house/new/20221208/167048289762934.jpg','房山,良乡,良乡','高振宇','15330005006',3994915029,'','中骏云景台','良乡新城','','',0,0,1,1,',2,7,8,',0,0,0.00,0,1670482926,0,0),(7522,2712,4216,1,1,396,110000,36,2,1,9,3,271441,1,1670634671,1,1,0,0,-1,0,0,1670548808,1670548808,0,354,1,1,0,9,7,21,0,0,0,0,'虹口新房住宅出售小程序2室1厅1卫',715834368,2021,'house/new/20221209/167054876292837.jpg','虹口,和平公园','夏女士','13111779202',3367864250,'','新房住宅出售小程序','','','',0,0,1,1,'1',0,0,NULL,0,1670634671,0,0),(7523,2710,4193,1,1,399,102308,39,2,1,9,3,271441,1,1670893684,1,1,0,0,-1,0,0,1670634719,1670634719,0,354,1,1,0,6,7,21,0,0,0,0,'静安住宅新房出售APP2室1厅1卫',2572717213,2019,'house/new/20221210/167063469185830.jpg','静安,曹家渡','夏女士','13111779202',3367864250,'','住宅新房出售APP','','','',0,0,1,1,'1',0,0,NULL,0,1670893684,0,0),(7524,507,18329,2,5,11,10000,11,4,1,9,3,252960,1,1670722695,0,1,0,0,0,0,0,1670722596,1670942401,0,1,2,2,0,1,0,14,0,0,0,0,'石景山测试测试',3361069620,2001,'house/new/20221211/167072259115921.jpg','石景山,金安桥,金安桥','宋xc','18610851893',389799267,'','测试','','','',0,0,0,0,'',0,0,0.00,0,1670942401,0,0),(7525,507,3920,1,1,1,10000,1,2,1,9,3,252960,1,1670808178,0,1,0,0,0,0,0,1670808014,1670941501,0,1,1,1,0,1,1,11,0,0,0,0,'石景山测试2室1厅1卫',2610724339,2001,'house/new/20221212/167080800998356.jpg','石景山,古城,古城','宋xc','18610851893',389799267,'','测试','','','',0,0,1,1,',1,',0,0,0.00,0,1670941501,0,0),(7526,2706,4104,3,7,399,120909,33,2,3,9,5,61297,1,0,1,0,0,0,-1,0,0,1670890970,1670941501,0,354,1,1,0,9,20,8,0,0,0,0,'徐汇新房商铺出售',1021144118,2020,'house/new/20221213/167089086971676.jpg','徐汇,龙华,龙华','房产小达人','15600236508',3551218080,'','新房商铺出售','','','',0,0,0,0,'',0,0,0.00,0,1670941501,0,0),(7527,508,3938,1,1,11,10000,11,1,1,9,5,252960,1,1670894155,0,1,0,0,0,0,0,1670893776,1670940600,0,1,1,1,0,1,2,7,0,0,0,0,'房山测试1室1厅1卫',828756396,2001,'house/new/20221213/167089377228128.jpg','房山,良乡,良乡','宋xc','18610851893',389799267,'','测试','','','',0,0,1,1,',1,',0,0,0.00,1,1670940600,0,0),(7528,2706,4093,1,1,339,102727,33,2,1,9,3,271441,1,1670978411,1,1,0,0,-1,0,0,1670893817,1670893817,0,354,1,1,0,9,11,9,0,0,0,0,'徐汇新房住宅出售APP2室1厅1卫',331192139,2020,'house/new/20221213/167089372747693.jpg','徐汇,漕河泾','夏女士','13111779202',3367864250,'','新房住宅出售APP','','','',0,0,1,1,'1',0,0,NULL,0,1670978411,0,0),(7529,2705,18391,1,1,399,102308,39,2,2,9,3,271441,1,0,1,0,0,0,-1,0,0,1670978464,1670978464,0,354,1,1,0,9,23,3,0,0,0,0,'闵行新房住宅出售手机端2室1厅1卫',2449332119,2021,'house/new/20221214/167097842191442.jpg','闵行,','夏女士','13111779202',3367864250,'','新房住宅出售手机端','','','',0,0,1,1,',1,',0,0,0.00,0,1670978464,0,0),(7530,4376,4768,1,1,68,5762.71,118,3,8,9,1,280786,2,0,1,0,0,0,-1,0,0,1670984868,1670984868,0,4,2,2,0,12,6,1,0,0,0,5,'宝安区 长安中中心区【中心2号】3房118平68万',894097789,2021,'house/new/20221214/167098473675594.jpg','宝安区,宝安,宝安','刘永华','13266227149',3076016077,'','长安【中心2号】','东莞 长安中心区 万科附近','','',0,0,1,1,',6,7,8,',0,0,0.00,0,1670984868,0,0),(7531,4376,4772,1,1,78,6724.14,116,3,9,9,1,280786,2,0,1,0,0,0,-1,0,0,1670985839,1670985839,0,4,2,2,0,12,8,2,0,0,0,5,'宝安中心区 临深圳松岗 涌头学府3房116平 78万起分期5',3137928753,2020,'house/new/20221214/167098570298739.jpg','宝安区,福永,福永','刘永华','13266227149',3076016077,'','涌头学府','东莞 长安中心区','','',0,0,1,1,',6,7,8,12,',0,0,0.00,0,1670985839,0,0);
/*!40000 ALTER TABLE `fke_house_new` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fke_house_new_check_log`
--

DROP TABLE IF EXISTS `fke_house_new_check_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fke_house_new_check_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `house_id` int(11) unsigned DEFAULT '0',
  `operation_type` tinyint(3) unsigned DEFAULT '0' COMMENT '操作类型：0待审核 1删除电话 2不确定房源 3真实房源 4中介房源 5房源已成交',
  `admin_id` int(11) DEFAULT NULL,
  `admin_name` varchar(20) DEFAULT NULL,
  `admin_note` varchar(255) DEFAULT NULL COMMENT '审核时备注信息',
  `add_time` int(11) unsigned DEFAULT '0' COMMENT '添加时间，审核时间',
  PRIMARY KEY (`id`),
  KEY `house_id` (`house_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29800 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fke_house_new_check_log`
--

LOCK TABLES `fke_house_new_check_log` WRITE;
/*!40000 ALTER TABLE `fke_house_new_check_log` DISABLE KEYS */;
INSERT INTO `fke_house_new_check_log` VALUES (29770,11960174,6,10,'系统自动','',1670296972),(29771,11960175,6,10,'系统自动','',1670296972),(29772,11960197,6,10,'系统自动','',1670371890),(29773,7511,9,0,'用户','用户删除',1670374203),(29774,7515,9,0,'用户','用户删除',1670377061),(29775,11960224,6,10,'系统自动','',1670384016),(29776,7516,6,7,'wll','',1670392162),(29777,7516,6,7,'系统自动','',1670392162),(29778,7514,9,0,'用户','用户删除',1670460675),(29779,7519,9,0,'用户','用户删除',1670463150),(29780,11960331,6,7,'系统自动','',1670473762),(29781,11960351,6,7,'系统自动','',1670545406),(29782,7518,9,0,'用户','用户删除',1670548732),(29783,7522,9,0,'用户','用户删除',1670634671),(29784,11960443,6,10,'系统自动','',1670718121),(29785,7524,9,0,'用户','用户删除',1670722695),(29786,11960468,6,10,'系统自动','',1670741223),(29787,11960471,6,10,'系统自动','',1670741223),(29788,11960472,6,10,'系统自动','',1670745370),(29789,11960473,6,10,'系统自动','',1670745370),(29790,11960474,6,10,'系统自动','',1670745370),(29791,7525,9,0,'用户','用户删除',1670808178),(29792,11960479,6,10,'系统自动','',1670808382),(29793,7479,10,0,'用户','房源下架',1670890769),(29794,7479,11,0,'用户','房源恢复上架',1670890785),(29795,7479,9,0,'用户','用户删除',1670890797),(29796,7523,9,0,'用户','用户删除',1670893684),(29797,7527,9,0,'用户','用户删除',1670894155),(29798,11960534,6,7,'系统自动','',1670907326),(29799,7528,9,0,'用户','用户删除',1670978411);
/*!40000 ALTER TABLE `fke_house_new_check_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fke_house_new_extend`
--

DROP TABLE IF EXISTS `fke_house_new_extend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fke_house_new_extend` (
  `house_id` int(11) unsigned NOT NULL,
  `cityarea2_name` varchar(60) DEFAULT '',
  `house_feature` varchar(30) DEFAULT '',
  `house_support` varchar(30) DEFAULT '' COMMENT '配套设施',
  `source_url` varchar(250) DEFAULT '',
  `check_type` tinyint(3) unsigned DEFAULT '0' COMMENT '0正常 1非法电话 2非法网址 3非法关键字',
  `check_note` varchar(120) DEFAULT '',
  `words` varchar(240) DEFAULT '' COMMENT '非法关键字',
  `owner_notes` varchar(120) DEFAULT '',
  `house_desc` text,
  PRIMARY KEY (`house_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fke_house_new_extend`
--

LOCK TABLES `fke_house_new_extend` WRITE;
/*!40000 ALTER TABLE `fke_house_new_extend` DISABLE KEYS */;
INSERT INTO `fke_house_new_extend` VALUES (7500,'碧云','',NULL,'',0,NULL,NULL,'',''),(7501,'','','','',0,'','','','<p>财税ddddddd的点点滴滴多多多多多多多多</p>'),(7502,'','','','',0,'','','','绿城开发精装修的山顶别墅总价150万起'),(7503,'','','','',0,'','','',''),(7504,'','',NULL,'',0,NULL,NULL,'','带有租户对外出售，年回报率5%以上，价格可谈，位于商街唯一入口的位置。租金季度，还有约3年合同到期。地下专属停车位。前两小时免费。'),(7505,'动物园','',NULL,'',0,NULL,NULL,'',''),(7506,'','','null','',0,'null','null','','国企开发现铺，即买即用。成熟社区配套齐全。地铁口临街人流量大。'),(7507,'','','null','',0,'null','null','','可以做写字楼，独立产证，地铁口700米（规划中）两梯三户，户型方正，4.95米层高。'),(7508,'','','','',0,'','','','<p>测试哒哒哒哒哒哒多多多多多</p>'),(7509,'','','','',0,'','','',''),(7510,'','','','',0,'','','',''),(7511,'','',NULL,'',0,NULL,NULL,'',''),(7512,'','',NULL,'',0,NULL,NULL,'',''),(7513,'','',NULL,'',0,NULL,NULL,'',''),(7514,'曹路','',NULL,'',0,NULL,NULL,'',''),(7515,'','','','',0,'','','',''),(7516,'','',NULL,'',0,NULL,NULL,'','地铁2号线南京西路站和13号线自然博物馆站旁边，后门就是南京西路商业街，王家沙花苑小区，看房随时，大门密码锁，看中价格可谈。'),(7517,'','','','',0,'','','','室内简装，位置超好，外国语学区房'),(7518,'','','','',0,'','','',''),(7519,'','','','',0,'','','','<p>测试哒哒哒哒哒哒多多多多多多多多多多</p>'),(7520,'','','','',0,'','','',''),(7521,'','','','',0,'','','','<p>房子户型特别好！三居两卫！南北通透！洋房品质！在公园里的房子！出行方便！公交场站就在小区旁！立体交通！六环出入口就在小区1.5公里处！</p>'),(7522,'和平公园','',NULL,'',0,NULL,NULL,'',''),(7523,'曹家渡','',NULL,'',0,NULL,NULL,'',''),(7524,'','','','',0,'','','','<p>测试大是哒哒哒哒哒哒多多多多多多多多<br/></p>'),(7525,'','','','',0,'','','',''),(7526,'','','','',0,'','','',''),(7527,'','','','',0,'','','','<p>测试哒哒哒哒哒哒多多多多多多</p>'),(7528,'漕河泾','',NULL,'',0,NULL,NULL,'',''),(7529,'','','','',0,'','','',''),(7530,'','','','',0,'','','','<p>中心2号&nbsp; &nbsp;AB两栋 全新现房，闪亮登场</p><p>优势1：公园就在家门口，长安公园，体育公园，长安广场，三在公园围绕！</p><p>优势2：商圈成熟，长青街，地王广场 ，万科广场，长安海鲜市场，天虹商场，嘉荣超市，各大购物中心应有尽有，尽享繁华</p><p>优势3：学区现房，幼儿园，小学，中学，培训机构近在咫尺，让孩子赢在起跑线，助力实现北大清华梦</p><p>优势4：交通便利，358省道，广深高速出入口，连花站</p><p>优势5：街道第一排，高端大气上档次，镇中心区，配套完善，居家投资两相宜</p><p>户型&nbsp;&nbsp;</p><p>二房一厅一卫&nbsp; 76平方，三房二厅二卫 116.5平方-119.6平</p><p>付款方式&nbsp; 首付5成分期5年&nbsp;&nbsp;</p>'),(7531,'','','','',0,'','','','<p>深圳0距离，全新项目启动</p><p>【长安 涌头学府】</p><p>A栋房源全部推出，抢到就是赚到</p><p>A B栋2大栋，商品房格局</p><p>长安107旁，涌头社区，深圳0距离&nbsp;</p><p>深圳11号线300米，东莞R3线300米</p><p>长安汽车总站，双地铁物业，先到先得</p><p>价格 6500元/平，套内面积使用率80%</p><p>户型 两房两厅两卫 92平&nbsp; &nbsp;三房二厅 106.8-115-118平</p><p>首坟5成分期3年，利息4.8厘&nbsp; &nbsp; 地铁口学区房，项目自带停车场&nbsp;</p>');
/*!40000 ALTER TABLE `fke_house_new_extend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fke_house_new_mobile_auth`
--

DROP TABLE IF EXISTS `fke_house_new_mobile_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fke_house_new_mobile_auth` (
  `house_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '房源ID',
  `mobile_auth_code` varchar(6) DEFAULT '' COMMENT '手机验证码',
  `sms_send_time` int(11) unsigned DEFAULT '0' COMMENT '短信发送时间',
  `sms_send_count` int(11) unsigned DEFAULT '0' COMMENT '短信发送次数',
  PRIMARY KEY (`house_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fke_house_new_mobile_auth`
--

LOCK TABLES `fke_house_new_mobile_auth` WRITE;
/*!40000 ALTER TABLE `fke_house_new_mobile_auth` DISABLE KEYS */;
/*!40000 ALTER TABLE `fke_house_new_mobile_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fke_house_new_pic`
--

DROP TABLE IF EXISTS `fke_house_new_pic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fke_house_new_pic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(10) unsigned DEFAULT '0',
  `pic_url` varchar(100) NOT NULL DEFAULT '',
  `pic_thumb` varchar(100) DEFAULT '',
  `pic_desc` varchar(120) DEFAULT '',
  `house_id` int(11) unsigned NOT NULL DEFAULT '0',
  `order_sort` tinyint(3) unsigned DEFAULT '0' COMMENT '排序',
  `addtime` int(11) unsigned DEFAULT '0',
  `is_checked` tinyint(4) DEFAULT '0' COMMENT '0待审 1审核通过 -1审核失败',
  `is_main` tinyint(4) DEFAULT '0' COMMENT '是否是主图',
  `is_collect` tinyint(4) DEFAULT '0' COMMENT '0普通 1采集',
  `admin_name` varchar(20) DEFAULT '',
  `checked_time` int(11) unsigned DEFAULT '0' COMMENT '审核时间',
  `is_uploaded` tinyint(4) DEFAULT '0',
  `is_delete` tinyint(4) DEFAULT '0' COMMENT '删除状态：0正常 1删除',
  `upload_device` tinyint(3) unsigned DEFAULT '0' COMMENT '上传设备：1电脑 2手机 3微信',
  `wechat_token_id` int(10) unsigned DEFAULT '0' COMMENT '微信传图当前Token对应的ID值',
  PRIMARY KEY (`id`),
  KEY `checked_time` (`checked_time`),
  KEY `house_id` (`house_id`) USING BTREE,
  KEY `is_checked` (`is_checked`),
  KEY `mid` (`mid`),
  KEY `is_delete` (`is_delete`) USING BTREE,
  KEY `addtime` (`addtime`),
  KEY `addtime_2` (`addtime`),
  KEY `wechat_token_id` (`wechat_token_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51851 DEFAULT CHARSET=utf8
/*!50100 PARTITION BY RANGE (id)
(PARTITION p0 VALUES LESS THAN (15000001) ENGINE = InnoDB,
 PARTITION p1 VALUES LESS THAN (20000001) ENGINE = InnoDB) */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fke_house_new_pic`
--

LOCK TABLES `fke_house_new_pic` WRITE;
/*!40000 ALTER TABLE `fke_house_new_pic` DISABLE KEYS */;
INSERT INTO `fke_house_new_pic` VALUES (51816,252960,'house/new/20221211/167072259115921.jpg','house/new/20221211/167072259115921.jpg','',7524,1,1670722596,1,1,0,'sxc',1670723404,1,1,1,0),(51817,252960,'house/new/20221211/167072259151581.jpg','house/new/20221211/167072259151581.jpg','',7524,2,1670722596,1,0,0,'sxc',1670723404,1,1,1,0),(51818,284172,'house/new/20221211/167073852746701.jpg','house/new/20221211/167073852746701.jpg','',0,0,1670738528,0,0,0,'',0,1,0,3,0),(51819,284172,'house/new/20221211/167073852710759.jpg','house/new/20221211/167073852710759.jpg','',0,0,1670738528,0,0,0,'',0,1,0,3,0),(51820,284172,'house/new/20221211/167073852795649.jpg','house/new/20221211/167073852795649.jpg','',0,0,1670738528,0,0,0,'',0,1,0,3,0),(51821,284172,'house/new/20221211/167073852742519.jpg','house/new/20221211/167073852742519.jpg','',0,0,1670738528,0,0,0,'',0,1,0,3,0),(51822,284172,'house/new/20221211/167073852753239.jpg','house/new/20221211/167073852753239.jpg','',0,0,1670738528,0,0,0,'',0,1,0,3,0),(51823,284172,'house/new/20221211/167073852735816.jpg','house/new/20221211/167073852735816.jpg','',0,0,1670738528,0,0,0,'',0,1,0,3,0),(51824,252960,'house/new/20221212/167080800998356.jpg','house/new/20221212/167080800998356.jpg','',7525,1,1670808014,1,1,0,'sxc',1670808442,1,1,1,0),(51825,252960,'house/new/20221212/167080801076735.jpg','house/new/20221212/167080801076735.jpg','',7525,2,1670808014,1,0,0,'sxc',1670808442,1,1,1,0),(51826,252960,'house/new/20221212/167080801128965.jpg','house/new/20221212/167080801128965.jpg','',7525,3,1670808014,1,0,0,'sxc',1670808442,1,1,1,0),(51827,61297,'house/new/20221213/167089086971676.jpg','house/new/20221213/167089086971676.jpg','',7526,1,1670890970,1,1,0,'',0,1,0,1,0),(51828,61297,'house/new/20221213/167089087030100.jpg','house/new/20221213/167089087030100.jpg','',7526,2,1670890970,1,0,0,'',0,1,0,1,0),(51829,61297,'house/new/20221213/167089087048021.jpg','house/new/20221213/167089087048021.jpg','',7526,3,1670890970,1,0,0,'',0,1,0,1,0),(51830,61297,'house/new/20221213/2392140526855086783872531192.jpg','house/new/20221213/2392140526855086783872531192.jpg','',7526,4,1670890970,1,0,0,'',0,1,0,3,40700),(51831,61297,'house/new/20221213/2392140706337362410806480233.jpg','house/new/20221213/2392140706337362410806480233.jpg','',7526,5,1670890970,1,0,0,'',0,1,0,3,40700),(51832,271441,'house/new/20221213/167089372747693.jpg','house/new/20221213/167089372747693.jpg',NULL,7528,1,1670893817,1,1,0,'',0,1,1,3,0),(51833,252960,'house/new/20221213/167089377228128.jpg','house/new/20221213/167089377228128.jpg','',7527,1,1670893776,1,1,0,'sxc',1670898992,1,1,1,0),(51834,252960,'house/new/20221213/167089377216320.jpg','house/new/20221213/167089377216320.jpg','',7527,2,1670893776,1,0,0,'sxc',1670898992,1,1,1,0),(51835,271441,'house/new/20221214/167097842191442.jpg','house/new/20221214/167097842191442.jpg','',7529,1,1670978464,1,1,0,'',0,1,0,1,0),(51836,280786,'house/new/20221214/167098473675594.jpg','house/new/20221214/167098473675594.jpg','',7530,1,1670984868,1,1,0,'',0,1,0,1,0),(51837,280786,'house/new/20221214/167098475669208.jpg','house/new/20221214/167098475669208.jpg','',7530,2,1670984868,1,0,0,'',0,1,0,1,0),(51838,280786,'house/new/20221214/167098477667206.jpg','house/new/20221214/167098477667206.jpg','',7530,3,1670984868,1,0,0,'',0,1,0,1,0),(51839,280786,'house/new/20221214/167098478973742.jpg','house/new/20221214/167098478973742.jpg','',7530,4,1670984868,1,0,0,'',0,1,0,1,0),(51840,280786,'house/new/20221214/167098480633791.jpg','house/new/20221214/167098480633791.jpg','',7530,5,1670984868,1,0,0,'',0,1,0,1,0),(51841,280786,'house/new/20221214/167098482035739.jpg','house/new/20221214/167098482035739.jpg','',7530,6,1670984868,1,0,0,'',0,1,0,1,0),(51842,280786,'house/new/20221214/167098483380107.jpg','house/new/20221214/167098483380107.jpg','',7530,7,1670984868,1,0,0,'',0,1,0,1,0),(51843,280786,'house/new/20221214/167098568953784.jpg','house/new/20221214/167098568953784.jpg','',0,0,1670985689,0,0,0,'',0,1,0,1,0),(51844,280786,'house/new/20221214/167098570298739.jpg','house/new/20221214/167098570298739.jpg','',7531,1,1670985839,1,1,0,'',0,1,0,1,0),(51845,280786,'house/new/20221214/167098573352916.jpg','house/new/20221214/167098573352916.jpg','',7531,2,1670985839,1,0,0,'',0,1,0,1,0),(51846,280786,'house/new/20221214/167098575516425.jpg','house/new/20221214/167098575516425.jpg','',7531,3,1670985839,1,0,0,'',0,1,0,1,0),(51847,280786,'house/new/20221214/167098578041392.jpg','house/new/20221214/167098578041392.jpg','',7531,4,1670985839,1,0,0,'',0,1,0,1,0),(51848,280786,'house/new/20221214/167098580227186.jpg','house/new/20221214/167098580227186.jpg','',7531,5,1670985839,1,0,0,'',0,1,0,1,0),(51849,280786,'house/new/20221214/167098581448988.jpg','house/new/20221214/167098581448988.jpg','',7531,6,1670985839,1,0,0,'',0,1,0,1,0),(51850,280786,'house/new/20221214/167098583374827.jpg','house/new/20221214/167098583374827.jpg','',7531,7,1670985839,1,0,0,'',0,1,0,1,0);
/*!40000 ALTER TABLE `fke_house_new_pic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fke_houserent`
--

DROP TABLE IF EXISTS `fke_houserent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fke_houserent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityarea_id` int(11) unsigned DEFAULT '0',
  `cityarea2_id` int(11) unsigned DEFAULT '0',
  `column_type` tinyint(4) unsigned DEFAULT '0' COMMENT '栏目分类：1住宅  2写字楼  3商铺 4车位',
  `house_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '房源类型',
  `house_price` float unsigned NOT NULL DEFAULT '0',
  `house_month_price` float unsigned DEFAULT '0',
  `original_price` decimal(12,2) unsigned DEFAULT '0.00' COMMENT '用户最填写的价格',
  `unit_type` tinyint(4) DEFAULT '0' COMMENT '1元/月 2元/㎡·天 3元/天 4万元',
  `house_deposit` tinyint(4) DEFAULT '1' COMMENT '付款方式',
  `house_totalarea` float unsigned DEFAULT '0',
  `house_room` tinyint(4) DEFAULT '0',
  `house_floor` int(4) DEFAULT '0',
  `house_toward` tinyint(4) DEFAULT '0',
  `house_fitment` tinyint(4) DEFAULT '0',
  `mid` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '发布人ID',
  `mtype` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '发布人类型',
  `is_checked` tinyint(4) DEFAULT '1' COMMENT '0待审 1审核通过 -1审核失败 2已下架',
  `is_delete` tinyint(4) DEFAULT '0' COMMENT '0正常\r\n1待审核回收站\r\n2通过审核回收站\r\n3未通过审核回收站',
  `is_lock` tinyint(4) DEFAULT '0' COMMENT '是否被锁定：0正常 1锁定状态。管理员删除的房源会进行锁定',
  `is_down` tinyint(4) DEFAULT '0' COMMENT '是否下架：0正常 1已下架',
  `is_banner` tinyint(4) DEFAULT '0' COMMENT '是否是Banner房源：0示审核 1设置为幻灯 2图片不合格',
  `house_status` tinyint(4) DEFAULT '0' COMMENT '0待审核 1删除电话 2不确定房源 3真实房源 4中介房源 5房源已成交',
  `deal_time` int(11) DEFAULT '0' COMMENT '成交时间',
  `down_time` int(10) unsigned DEFAULT '0' COMMENT '下架时间',
  `created` int(11) DEFAULT '0' COMMENT '创建时间',
  `updated` int(11) DEFAULT '0' COMMENT '刷新时间',
  `source_id` int(11) unsigned DEFAULT '0' COMMENT '来源',
  `city_website_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '所属站点',
  `rent_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1整租 2合租',
  `house_hall` tinyint(4) DEFAULT '0' COMMENT '厅',
  `house_toilet` tinyint(4) DEFAULT '0' COMMENT '卫生间',
  `house_veranda` tinyint(4) DEFAULT NULL,
  `house_topfloor` tinyint(4) DEFAULT '0' COMMENT '顶层',
  `click_num` int(11) unsigned DEFAULT '0' COMMENT '点击数',
  `click_virtual` int(10) unsigned DEFAULT '0' COMMENT '虚拟点击数',
  `hide_phone` tinyint(4) DEFAULT '0' COMMENT '0显示电话  1隐藏电话',
  `report_count` int(11) unsigned DEFAULT '0' COMMENT '投诉举报次数',
  `truth_degree` tinyint(3) unsigned DEFAULT '0' COMMENT 'æˆ¿æºçœŸå®žåº¦0åˆ°100',
  `house_title` varchar(120) NOT NULL DEFAULT '',
  `house_title_crc32` int(11) unsigned DEFAULT '0',
  `video` varchar(240) DEFAULT '',
  `house_thumb` varchar(100) DEFAULT '' COMMENT '缩略图',
  `house_age` varchar(4) DEFAULT '' COMMENT '房龄',
  `keywords` varchar(30) DEFAULT '',
  `owner_name` varchar(18) DEFAULT '',
  `owner_phone` varchar(16) NOT NULL DEFAULT '' COMMENT '联系人电话',
  `owner_phone_crc32` int(11) unsigned DEFAULT '0',
  `owner_phone_pic` varchar(100) DEFAULT '' COMMENT '电话图片',
  `borough_name` varchar(60) DEFAULT '' COMMENT '小区名称',
  `house_address` varchar(60) DEFAULT '' COMMENT '房源地址',
  `occupancy_time` int(10) unsigned DEFAULT '0' COMMENT '可入住时间',
  `wechat` varchar(60) DEFAULT '' COMMENT '用户微信号码',
  `qq` varchar(60) DEFAULT '' COMMENT '会员发布房源时的QQ号码',
  `promote_end_time` int(10) unsigned DEFAULT '0' COMMENT '推广过期时间',
  `is_sublet` tinyint(4) DEFAULT '0' COMMENT '0业主房屋 1转租房',
  `is_cooperation` tinyint(3) unsigned DEFAULT '0' COMMENT '0普通房源 1经纪人合作房源',
  `brand_apartment_checked` tinyint(4) DEFAULT '0' COMMENT '品牌公寓是否已审核：0未审核 1审核通过 -1审核失败',
  `brand_apartment_id` int(10) unsigned DEFAULT '0' COMMENT '品牌公寓ID',
  `elevator` tinyint(4) DEFAULT '0' COMMENT '有无电梯：0未填写  1有电梯  -1无电梯',
  `parking_lot` tinyint(4) DEFAULT '0' COMMENT '有无车位：0未填写  1有车位  -1没有车位',
  `bright_spot` varchar(120) DEFAULT '' COMMENT '房屋亮点',
  `rent_require` varchar(120) DEFAULT '' COMMENT '出租要求',
  `parking_type` tinyint(3) unsigned DEFAULT '0' COMMENT '车位类型：1地上露天车位 2地上车库 3地下车库',
  `parking_pay_month` tinyint(3) unsigned DEFAULT '0' COMMENT '车位付款几个月',
  `parking_deposit_month` tinyint(3) unsigned DEFAULT '0' COMMENT '车位押金几个月',
  `parking_lease_term` tinyint(3) unsigned DEFAULT '0' COMMENT '车位起租期(月)',
  `transfer_fee` decimal(10,2) unsigned DEFAULT '0.00' COMMENT '车位转让费',
  `first_floor_height` decimal(10,2) DEFAULT '0.00',
  `left_rent_month` tinyint(4) DEFAULT '0' COMMENT '剩余租期',
  `lease_term` tinyint(4) DEFAULT '0' COMMENT '起租期',
  `floor_type` tinyint(4) DEFAULT '0' COMMENT '楼层类型：1单层 2多层(独栋)',
  `store_rent_type` varchar(30) CHARACTER SET utf8 DEFAULT '' COMMENT '租赁类型字符串1整租  2分租',
  `is_owner_direct_rent` tinyint(4) DEFAULT '0' COMMENT '业主直租： 0否  1是',
  `commission` tinyint(3) unsigned DEFAULT '100' COMMENT '默认为100%',
  `data_update_time` int(10) unsigned DEFAULT '0' COMMENT '数据更新时间',
  `refresh_count` int(10) unsigned DEFAULT '0' COMMENT '刷新次数',
  `register` tinyint(4) DEFAULT '0' COMMENT '0不可注册  1可注册',
  PRIMARY KEY (`id`),
  KEY `created` (`created`) USING BTREE,
  KEY `updated` (`updated`) USING BTREE,
  KEY `cityarea_id` (`cityarea_id`) USING BTREE,
  KEY `city_website_id` (`city_website_id`) USING BTREE,
  KEY `mid` (`mid`),
  KEY `house_title_crc32` (`house_title_crc32`),
  KEY `owner_phone_crc32` (`owner_phone_crc32`),
  KEY `promote_end_time` (`promote_end_time`),
  KEY `data_update_time` (`data_update_time`)
) ENGINE=InnoDB AUTO_INCREMENT=19011090 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fke_houserent`
--

LOCK TABLES `fke_houserent` WRITE;
/*!40000 ALTER TABLE `fke_houserent` DISABLE KEYS */;
INSERT INTO `fke_houserent` VALUES (19011055,15421,15439,2,5,1.66667,500,0.00,2,0,10,2,6,9,3,284312,2,1,0,0,0,-1,0,0,0,1672992332,1672992332,0,43,1,1,1,0,9,7,5,0,0,0,'西湖区华鸿大厦 联合办公卡位出租 拎包办公 另有会议室出租',23752634,'','house/rent/20230106/167299226093412.jpg','','西湖,黄龙,黄龙','徐秋金','13777825584',1234008360,'','华鸿大厦','天目山路238号',1672934400,'','',0,0,0,0,0,0,0,'','',0,0,0,0,0.00,0.00,0,0,1,'',0,0,1672992332,0,0),(19011056,4374,4756,2,5,0.977778,880,0.00,2,0,30,2,20,9,3,127893,1,1,0,0,0,-1,0,0,0,1672992383,1672992383,0,4,1,1,1,0,35,3,4,0,0,0,'南山前海精装办公室丨注册前海公司变更秒解异常丨年底可送免租',3664019072,'','house/rent/20230106/167299237933817.jpg','','南山区,前海,前海','吴小姐','13682417227',690785781,'','前海香缤国际金融中心','',1672934400,'','',0,0,0,0,0,0,0,'','',0,0,0,0,0.00,0.00,0,0,1,'',0,100,1672992383,0,1),(19011057,4372,4683,2,5,1.62963,880,0.00,2,0,18,2,18,9,3,127893,1,1,0,0,0,1,0,0,0,1672992449,1672992449,0,4,1,1,1,0,25,7,6,0,0,0,'送免租丨罗湖联合卡位办公室直租丨可注册变更解除异常丨配红本',216199343,'','house/rent/20230106/167299244399066.jpg','','罗湖区,蔡屋围,蔡屋围','吴小姐','13682417227',690785781,'','金丰城大厦','',1672934400,'','',0,0,0,0,0,0,0,'','',0,0,0,0,0.00,0.00,0,0,1,'',0,100,1672992449,0,1),(19011058,4377,4780,2,5,1.46667,880,0.00,2,0,20,2,8,9,3,127893,1,1,0,0,0,1,0,0,0,1672992516,1672992516,0,4,1,1,1,0,15,6,9,0,0,0,'年前特惠丨可短租丨龙岗精装办公室加放货丨银行税务可解异常',3367402207,'','house/rent/20230106/167299250965237.jpg','','龙岗区,横岗,横岗','吴小姐','13682417227',690785781,'','2013创业谷','',1672934400,'','',0,0,0,0,0,0,0,'','',0,0,0,0,0.00,0.00,0,0,1,'',0,100,1672992516,0,1),(19011059,15425,19307,2,5,1.66667,500,0.00,2,0,10,2,5,9,3,284312,2,1,0,0,0,1,0,0,0,1672992526,1672992526,0,43,1,1,1,0,42,7,10,0,0,0,'钱江新城500元月卡位，会议室，培训室，联合办公室地铁口',1199686331,'','house/rent/20230106/167299250091402.jpg','','上城,钱江新城,钱江新城','徐秋金','13777825584',1234008360,'','鑫亚钱江国际时代广场','城星路111号',1672934400,'','',0,0,0,0,0,0,0,'','',0,0,0,0,0.00,0.00,0,0,1,'',0,0,1672992526,0,0),(19011060,4373,4720,2,5,1.46667,880,0.00,2,0,20,2,15,9,3,127893,1,1,0,0,0,1,0,0,0,1672992625,1672992625,0,4,1,1,1,0,25,6,7,0,0,0,'华强北电子市场独立仓库办公室出租丨红本地址挂靠丨可短租过渡',1754039987,'','house/rent/20230106/167299262083701.jpg','','福田区,华强北,华强北','吴小姐','13682417227',690785781,'','现代之窗附楼','',1672934400,'','',0,0,0,0,0,0,0,'','',0,0,0,0,0.00,0.00,0,0,1,'',0,100,1672992625,0,1),(19011061,4374,4759,2,5,1.62963,880,0.00,2,0,18,2,18,9,3,127893,1,1,0,0,0,-1,0,0,0,1672992734,1672992734,0,4,1,1,1,0,28,3,9,0,0,0,'南山小户型办公室，适合初创业，1一8人办公，可注册',2849780406,'','house/rent/20230106/167299272952403.jpg','','南山区,深圳湾,深圳湾','吴小姐','13682417227',690785781,'','海王星辰总部大厦','',1672934400,'','',0,0,0,0,0,0,0,'','',0,0,0,0,0.00,0.00,0,0,1,'',0,100,1672992734,0,1),(19011062,4373,4707,2,5,0.838095,880,0.00,2,0,35,2,4,9,3,127893,1,1,0,0,0,1,0,0,0,1672992848,1672992848,0,4,1,1,1,0,20,2,10,0,0,0,'八卦岭精装办公室丨配家私网络丨配红本地址丨可注册解除异常',1982756953,'','house/rent/20230106/167299281630660.jpg','','福田区,八卦岭,八卦岭','吴小姐','13682417227',690785781,'','八卦岭工业区-414栋','',1672934400,'','',0,0,0,0,0,0,0,'','',0,0,0,0,0.00,0.00,0,0,1,'',0,100,1672992848,0,1),(19011063,4381,18438,2,5,1.62963,880,0.00,2,0,18,2,5,9,3,127893,1,1,0,0,0,1,0,0,0,1672993035,1672993035,0,4,1,1,1,0,12,3,5,0,0,0,'龙华精装办公室出租丨可挂靠开户补贴秒解除各种企业异常',1032366558,'','house/rent/20230106/167299303128989.jpg','','龙华区,清湖,清湖','吴小姐','13682417227',690785781,'','清湖科技园','',1672934400,'','',0,0,0,0,0,0,0,'','',0,0,0,0,0.00,0.00,0,0,1,'',0,100,1672993035,0,1),(19011064,503,18236,2,5,7.5,43425,0.00,2,0,193,2,20,6,3,222373,2,1,0,0,0,1,0,0,0,1672993748,1672993748,0,1,1,1,1,0,29,5,8,0,0,0,'出租东二环朝阳门丰联广场193平高层南向精装',2197190440,'','house/rent/20230106/167299367820066.jpg','','朝阳,朝阳门外,朝阳门外','李经理','13581690699',3261277646,'','丰联广场','18号',1672934400,'','',0,0,0,0,0,0,0,'','',0,0,0,0,0.00,0.00,0,0,1,'',0,0,1672993748,0,1),(19011065,15540,15561,2,5,1.05714,888,0.00,2,0,28,2,4,9,3,128427,1,1,0,0,0,1,0,0,0,1672993864,1672993864,0,192,1,1,1,0,4,14,9,0,0,0,'不是中介！小面积独立精装办公室，工商备案，可注册银行开户',3456969437,'','house/rent/20230106/167299363219586.jpg','','海曙,西门,西门','吕口口','13023787989',4144486832,'','宜居缘写字楼','宜居缘',1672934400,'','',0,0,0,0,0,0,0,'','',0,0,0,0,0.00,0.00,0,0,1,'',1,100,1672993864,0,1),(19011066,15422,16964,2,5,0.111111,100,0.00,2,0,30,2,8,9,3,283166,2,1,0,0,0,1,0,0,0,1672994146,1672994146,0,43,1,1,1,0,13,9,7,0,0,0,'会议室杭州各主城区出租设备齐全按时按天计价',2495380257,'','house/rent/20230106/167299274690542.jpg','','拱墅,石祥路,石祥路','冯淑琼','15595191719',2604320486,'','拱墅区立新大厦','',1672934400,'','',0,0,0,0,0,0,0,'','',0,0,0,0,0.00,0.00,0,0,1,'',0,0,1672994146,0,1),(19011067,12933,12965,2,5,1,300,0.00,2,0,10,2,3,2,3,269260,3,1,0,0,0,1,0,0,0,1672994721,1672994721,0,130,1,1,1,0,15,4,4,0,0,0,'出租历下齐源大厦精品独立办公位 可注册 拎包即可办公',3346590620,'','house/rent/20230106/167299465353860.jpg','','历下,','黄女士','15563830687',3278975749,'','齐源大厦','齐源大厦',1672934400,'','',0,0,0,0,0,0,0,'','',0,0,0,0,0.00,0.00,0,0,1,'',0,0,1672994721,0,1),(19011068,12933,12958,2,5,1.66667,1000,0.00,2,0,20,2,8,3,3,269260,3,1,0,0,0,-1,0,0,0,1672994928,1672994928,0,130,1,1,1,0,24,7,8,0,0,0,'历下力高国际精装写字间 可单租可整租 可注册',4092035806,'','house/rent/20230106/167299485031527.jpg','','历下,','黄女士','15563830687',3278975749,'','力高国际-10号楼','花园路地铁口',1672934400,'','',0,0,0,0,0,0,0,'','',0,0,0,0,0.00,0.00,0,0,1,'',0,0,1672994928,0,1),(19011069,12933,12965,2,5,1.8,1620,0.00,2,0,30,2,3,2,3,269260,3,1,0,0,0,-1,0,0,0,1672995023,1672995023,0,130,1,1,1,0,15,4,6,0,0,0,'经十路历下段精装写字间 家具齐全 轻松办公可注册',3419556044,'','house/rent/20230106/167299493570782.jpg','','历下,','黄女士','15563830687',3278975749,'','齐源大厦','齐源大厦',1672934400,'','',0,0,0,0,0,0,0,'','',0,0,0,0,0.00,0.00,0,0,1,'',0,0,1672995023,0,1),(19011070,12933,12965,2,5,0.66,198,0.00,2,0,10,2,3,2,3,269260,3,1,0,0,0,-1,0,0,0,1672995122,1672995122,0,130,1,1,1,0,15,3,9,0,0,0,'专业注册各类公司 为您全程代办 配合核查',4090322248,'','house/rent/20230106/167299506458188.jpg','','历下,','黄女士','15563830687',3278975749,'','齐源大厦','齐源大厦',1672934400,'','',0,0,0,0,0,0,0,'','',0,0,0,0,0.00,0.00,0,0,1,'',0,0,1672995122,0,1),(19011071,12933,12965,2,5,0.66,198,0.00,2,0,10,2,3,2,3,269260,3,1,0,0,0,-1,0,0,0,1672995227,1672995227,0,130,1,1,1,0,15,3,6,0,0,0,'实地地址 可注册各类公司 医疗 食品 为您代办',3948057057,'','house/rent/20230106/167299513098783.jpg','','历下,','黄女士','15563830687',3278975749,'','齐源大厦','齐源大厦',1672934400,'','',0,0,0,0,0,0,0,'','',0,0,0,0,0.00,0.00,0,0,1,'',0,0,1672995227,0,1),(19011072,15421,15436,2,5,2.77778,1000,0.00,2,0,12,2,6,9,3,282665,2,1,0,0,0,1,0,0,0,1672996677,1672996677,0,43,1,1,1,0,19,11,6,0,0,0,'西湖3人间小户型办公室出租 地铁口可短租 拎包入住',3459075771,'','house/rent/20230106/167299665327339.jpg','','西湖,翠苑,翠苑','肖清','13568398732',3153563718,'','西湖区华鸿大厦','',1672934400,'','',0,0,0,0,0,0,0,'','',0,0,0,0,0.00,0.00,0,0,1,'',0,0,1672996677,0,1),(19011073,15422,19271,2,5,1,300,0.00,2,0,10,2,4,9,3,283166,2,1,0,0,0,1,0,0,0,1672996737,1672996737,0,43,1,1,1,0,5,15,8,0,0,0,'公司注册工商代办财税管理省心靠谱无忧',4218069364,'','house/rent/20230106/167299629920942.jpg','','拱墅,东新,东新','冯淑琼','15595191719',2604320486,'','创新中国产业园','',1672934400,'','',0,0,0,0,0,0,0,'','',0,0,0,0,0.00,0.00,0,0,1,'',0,0,1672996737,0,1),(19011074,15422,15452,2,5,2,2700,0.00,2,0,45,2,2,9,3,283166,2,1,0,0,0,1,0,0,0,1672997144,1672997144,0,43,1,1,1,0,23,11,10,0,0,0,'出租拱墅复地北城小面积办公室可注册可实际办公',1250592663,'','house/rent/20230106/167299713898247.jpg','','拱墅,半山,半山','冯淑琼','15595191719',2604320486,'','复地北城','',1672934400,'','',0,0,0,0,0,0,0,'','',0,0,0,0,0.00,0.00,0,0,1,'',0,0,1672997144,0,1),(19011075,6923,0,1,1,900,900,0.00,1,0,37,1,8,3,3,187077,1,1,0,0,0,1,0,0,0,1673006191,1673006191,0,213,1,1,1,0,28,7,9,0,0,0,'星光耀广场 单身公寓 配套齐全 拧包入住',640523381,'','house/rent/20230106/167300617558021.jpg','','丰泽,,','陈亚芬','13105060712',3001353759,'','星光耀广场(商住楼)','安吉南路970号',1672934400,'','',0,0,0,0,0,1,-1,'','',0,0,0,0,0.00,0.00,0,0,0,'',0,0,1673006191,0,0),(19011076,6923,0,2,5,0.675676,3000,0.00,2,0,148,1,1,9,3,187077,1,1,0,0,0,1,0,0,0,1673006328,1673006328,0,213,1,0,0,0,27,6,5,0,0,0,'星光耀万达精装办公出租  150平 3000',1347430533,'','house/rent/20230106/167300630238142.jpg','','丰泽,,','陈亚芬','13105060712',3001353759,'','星光耀广场','安吉南路',1672934400,'','',0,0,0,0,0,-1,-1,'','',0,0,0,0,0.00,0.00,0,0,0,'',0,0,1673006328,0,0),(19011077,6923,0,2,5,0.670017,4000,0.00,2,0,199,1,5,9,3,187077,1,1,0,0,0,1,0,0,0,1673006340,1673006340,0,213,1,0,0,0,24,9,6,0,0,0,'华大泰禾200平精装带设备出租4000',1021638348,'','house/rent/20230106/167300633265024.jpg','','丰泽,,','陈亚芬','13105060712',3001353759,'','华大泰禾广场','城华北路568号',1672934400,'','',0,0,0,0,0,-1,-1,'','',0,0,0,0,0.00,0.00,0,0,0,'',0,0,1673006340,0,0),(19011078,6923,0,2,5,0.719424,3000,0.00,2,0,139,1,3,9,3,187077,1,1,0,0,0,1,0,0,0,1673006355,1673006355,0,213,1,0,0,0,27,5,7,0,0,0,'万达楼上星光耀SOHO 办公精装修出租 看房随时',1478779599,'','house/rent/20230106/167300634490680.jpg','','丰泽,,','陈亚芬','13105060712',3001353759,'','星光耀广场','安吉南路',1672934400,'','',0,0,0,0,0,-1,-1,'','',0,0,0,0,0.00,0.00,0,0,0,'',0,0,1673006355,0,0),(19011079,6923,0,2,5,0.000154882,0.92,0.00,2,0,198,1,1,9,3,187077,1,1,0,0,0,1,0,0,0,1673006368,1673006368,0,213,1,0,0,0,1,8,6,0,0,0,'今日特价！丰泽城东万达看江户型200平精装，5500租',1755603638,'','house/rent/20230106/167300636231671.jpg','','丰泽,,','陈亚芬','13105060712',3001353759,'','星光耀广场','安吉南路',1672934400,'','',0,0,0,0,0,1,-1,'','',0,0,0,0,0.00,0.00,0,0,0,'',0,0,1673006368,0,0),(19011080,6923,0,2,5,0.0000872483,0.78,0.00,2,0,298,1,2,9,3,187077,1,1,0,0,0,1,0,0,0,1673006382,1673006382,0,213,1,0,0,0,24,6,5,0,0,0,'（房东直租）华大泰禾300平精装带设备直播间7000可租',3691892835,'','house/rent/20230106/167300637357187.jpg','','丰泽,,','陈亚芬','13105060712',3001353759,'','华大泰禾广场','城华北路568号',1672934400,'','',0,0,0,0,0,1,-1,'','',0,0,0,0,0.00,0.00,0,0,0,'',0,0,1673006382,0,0),(19011081,6923,0,2,5,0.000144231,0.9,0.00,2,0,208,1,3,9,3,187077,1,1,0,0,0,-1,0,0,0,1673006393,1673006393,0,213,1,0,0,0,16,6,4,0,0,0,'城东万达世界城大平层写字楼210平方含办公设备',2905892574,'','house/rent/20230106/167300638539551.jpg','','丰泽,,','陈亚芬','13105060712',3001353759,'','星光耀广场','安吉南路',1672934400,'','',0,0,0,0,0,1,-1,'','',0,0,0,0,0.00,0.00,0,0,0,'',0,0,1673006393,0,0),(19011082,2707,16701,1,1,3980,3980,0.00,1,0,39,2,6,9,3,271441,1,1,0,0,0,-1,0,0,0,1673053235,1673053235,0,354,1,1,1,0,9,9,4,0,0,0,'浦东住宅出租手机端2室1厅1卫',5333677,'','house/rent/20230107/167305307595726.jpg','','浦东,','夏女士','15230710655',237941985,'','住宅出租手机端','',1673020800,'','',0,0,0,0,0,0,0,',3,',',1,',0,0,0,0,0.00,0.00,0,0,1,'',1,0,1673053235,0,0),(19011083,15426,16973,1,1,6000,6000,0.00,1,0,109,3,39,9,4,284464,1,1,0,0,0,1,0,0,0,1673056763,1673056763,0,43,1,2,2,0,40,30,5,0,0,0,'余杭城北万象城幸福里3室2厅2卫',792298866,'','house/rent/20230107/167305673528459.jpg',NULL,'余杭,勾庄','解晨','13162575410',118924882,'','城北万象城幸福里','',1673020800,'','',0,0,0,0,4120,1,1,'3,1,2,4,9,11','5,7,8',0,0,0,0,0.00,0.00,0,0,0,NULL,0,50,1673070768,0,0),(19011084,4376,4779,2,5,1.4902,3800,0.00,2,0,85,2,5,9,3,282611,3,1,0,0,0,1,0,0,0,1673057222,1673057222,0,4,1,1,1,0,8,8,3,0,0,0,'出租宝安区九围+邮政大厦',2872232429,'','house/rent/20230107/167305713936227.jpg','','宝安区,西乡,西乡','许小姐','15219488530',3017089839,'','九围+邮政大厦','九围社区洲石路551号',1673020800,'','',0,0,0,0,0,0,0,'','',0,0,0,0,0.00,0.00,0,0,1,'',0,0,1673057222,0,1),(19011085,2707,4148,2,5,1.2,2700,0.00,2,0,75,2,1,3,3,284465,2,1,0,0,0,-1,0,0,0,1673058035,1673058035,0,354,1,1,1,0,10,20,1,0,0,0,'物业直租 朝南精装75平办公室可注册',2106162613,'','house/rent/20230107/167305782978667.jpg',NULL,'浦东,外高桥','冯燕','17521288366',685840768,'','众原国际大厦','德堡路38号',1673020800,'','',0,0,0,0,0,0,0,'','',0,0,0,0,0.00,0.00,0,0,2,NULL,0,100,1673070740,0,0),(19011086,2707,4148,2,5,1,15000,0.00,2,0,500,2,1,9,3,284465,2,1,0,0,0,1,0,0,0,1673058394,1673058394,0,354,1,1,1,0,12,32,4,0,0,0,'整层出租高端办公楼、玻璃幕墙、有装修带隔断和办公家具、可研发',3814188494,'','house/rent/20230107/167305808862978.jpg',NULL,'浦东,外高桥','冯燕','17521288366',685840768,'','众原传媒大厦','泰谷路78号',1673020800,'','',0,0,0,0,0,0,0,'','',0,0,0,0,0.00,0.00,0,0,2,NULL,0,100,1673070740,0,0),(19011087,2707,4148,2,5,1.2,2700,0.00,2,0,75,2,1,5,3,284465,2,1,0,0,0,1,0,0,0,1673059191,1673059191,0,354,1,1,1,0,12,23,1,0,0,0,'地铁6号线航津路精装75平办公室可注册',19854975,'','house/rent/20230107/167305906280957.jpg',NULL,'浦东,外高桥','冯燕','17521288366',685840768,'','众原企业天地','美盛路255号',1673020800,'','',0,0,0,0,0,0,0,'','',0,0,0,0,0.00,0.00,0,0,2,NULL,0,100,1673070740,0,0),(19011088,2707,4128,2,5,1.2,5400,0.00,2,0,150,2,1,3,3,284465,2,1,0,0,0,-1,0,0,0,1673059725,1673059725,0,354,1,1,1,0,10,26,4,0,0,0,'房东直租 精装办公室30-2000平停车便利 随时看房',366387550,'','house/rent/20230107/167305959472231.jpg',NULL,'浦东,高行','冯燕','17521288366',685840768,'','众原国际大厦','德堡路38号',1673020800,'','',0,0,0,0,0,0,0,'','',0,0,0,0,0.00,0.00,0,0,2,NULL,0,100,1673070740,0,0),(19011089,503,3823,1,1,4800,4800,0.00,1,0,60,1,6,3,3,263617,1,1,0,0,0,-1,0,0,0,1673071814,1673071814,0,1,1,1,1,0,6,19,1,0,0,0,'潘家园地铁松榆西里1室1厅1卫',1257206893,'','house/rent/20230107/167307161522453.jpg',NULL,'朝阳,松榆里','孟俊','15034194227',463132872,'','松榆西里','',1673020800,'','',0,0,0,0,4121,-1,1,'3,4,9','7',0,0,0,0,0.00,0.00,0,0,0,NULL,0,80,1673071814,0,0);
/*!40000 ALTER TABLE `fke_houserent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fke_houserent_check_log`
--

DROP TABLE IF EXISTS `fke_houserent_check_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fke_houserent_check_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `house_id` int(11) unsigned DEFAULT '0',
  `operation_type` tinyint(3) unsigned DEFAULT '0' COMMENT '操作类型：0待审核 1删除电话 2不确定房源 3真实房源 4中介房源 5房源已成交',
  `admin_id` int(11) DEFAULT NULL,
  `admin_name` varchar(20) DEFAULT NULL,
  `admin_note` varchar(255) DEFAULT NULL COMMENT '审核时备注信息',
  `add_time` int(11) unsigned DEFAULT '0' COMMENT '添加时间，审核时间',
  PRIMARY KEY (`id`),
  KEY `house_id` (`house_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4043452 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fke_houserent_check_log`
--

LOCK TABLES `fke_houserent_check_log` WRITE;
/*!40000 ALTER TABLE `fke_houserent_check_log` DISABLE KEYS */;
INSERT INTO `fke_houserent_check_log` VALUES (4043416,19008452,10,0,'用户','房源下架',1670988494),(4043417,19008452,9,0,'用户','用户删除',1670988494),(4043418,19006810,9,0,'用户','用户删除',1670988498),(4043419,19008453,10,0,'用户','房源下架',1670988517),(4043420,19008453,9,0,'用户','用户删除',1670988518),(4043421,19008454,10,0,'用户','房源下架',1670988542),(4043422,19008454,9,0,'用户','用户删除',1670988543),(4043423,19008455,10,0,'用户','房源下架',1670988565),(4043424,19008455,9,0,'用户','用户删除',1670988565),(4043425,19008456,10,0,'用户','房源下架',1670988580),(4043426,19008456,9,0,'用户','用户删除',1670988581),(4043427,19008457,10,0,'用户','房源下架',1670988601),(4043428,19008457,9,0,'用户','用户删除',1670988602),(4043429,19008458,10,0,'用户','房源下架',1670988618),(4043430,19008458,9,0,'用户','用户删除',1670988619),(4043431,19008459,10,0,'用户','房源下架',1670988638),(4043432,19008459,9,0,'用户','用户删除',1670988638),(4043433,19008460,10,0,'用户','房源下架',1670988654),(4043434,19008460,9,0,'用户','用户删除',1670988654),(4043435,19008461,10,0,'用户','房源下架',1670988668),(4043436,19008461,9,0,'用户','用户删除',1670988669),(4043437,19008462,10,0,'用户','房源下架',1670988712),(4043438,19008462,9,0,'用户','用户删除',1670988712),(4043439,19008464,10,0,'用户','房源下架',1670988729),(4043440,19008464,9,0,'用户','用户删除',1670988732),(4043441,19008403,6,10,'sxc','',1670988827),(4043442,19008408,6,10,'系统自动','',1670988828),(4043443,19008411,6,10,'系统自动','',1670988828),(4043444,19008412,6,10,'系统自动','',1670988828),(4043445,19008413,6,10,'系统自动','',1670988828),(4043446,19008414,6,10,'系统自动','',1670988828),(4043447,19008415,6,10,'系统自动','',1670988828),(4043448,19008416,6,10,'系统自动','',1670988828),(4043449,19008437,6,10,'系统自动','',1670988828),(4043450,19008446,6,10,'系统自动','',1670988828),(4043451,19008404,6,10,'sxc','',1670988833);
/*!40000 ALTER TABLE `fke_houserent_check_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fke_houserent_extend`
--

DROP TABLE IF EXISTS `fke_houserent_extend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fke_houserent_extend` (
  `house_id` int(11) unsigned NOT NULL DEFAULT '0',
  `cityarea2_name` varchar(60) DEFAULT '',
  `house_support` varchar(60) DEFAULT '',
  `house_feature` varchar(30) DEFAULT '',
  `source_url` varchar(250) DEFAULT '',
  `check_type` tinyint(3) unsigned DEFAULT '0' COMMENT '0正常 1非法电话 2非法网址 3非法关键字',
  `check_note` varchar(120) DEFAULT '',
  `words` varchar(240) DEFAULT '' COMMENT '非法关键字',
  `owner_notes` varchar(120) DEFAULT '',
  `house_desc` text,
  PRIMARY KEY (`house_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fke_houserent_extend`
--

LOCK TABLES `fke_houserent_extend` WRITE;
/*!40000 ALTER TABLE `fke_houserent_extend` DISABLE KEYS */;
INSERT INTO `fke_houserent_extend` VALUES (19011054,'','','','',0,'','','','<p>罗湖办公室出租、福田办公室出租、南山办公室出租、龙岗办公室出租、宝安办公室出租、前海办公室出租、龙华办公室出租、红本 挂靠、红本租赁合同、红本租赁凭证、租赁合同、场地使用证明、银行开/户、配合上门看场地拍照、代收信函、解工商税局异常！</p><p><br/></p><p>1.办公室1-20人办公位，面积多选择，租期灵活；</p><p>2.精装修，配家私、即租即用，拎包入驻；</p><p>3.租金全包无杂费，物业管理费、水电费、空调费、网络费均无需再付；</p><p>4.每间办公室均可办理红本租赁合同，用于成立新公司，公司地址变更等；</p><p>5.创客空间，政府扶持，可享政府补贴，创业不用愁！</p><p><br/></p><p>告诉帖子来源首月立减300-1000元！</p><p>1、IC智能门禁系统，24h监控，门禁系统保证安全</p><p>2、前台配有复印机、打印机、传真、扫描、会议室、接待区等服务</p><p>1、办公室出租-共享联合办公室-创客空间模式，有红本凭证-可注册办公室有配前台文员 驻场服务，代收信件，配合勘查场地</p><p>2、、费用全包，包括水电，物业管理，空调，网络，办公家私，您每月只需要支付租金即可，没有其他任何杂费。费用透明。</p><p><br/></p><p>联系我时，请备注在哪里看到我的帖子，谢谢！</p><p>罗湖办公室出租、福田办公室出租、南山办公室出租、龙岗办公室出租、宝安办公室出租、前海办公室出租、龙华办公室出租、红本 挂靠、红本租赁合同、红本租赁凭证、租赁合同、场地使用证明、银行开/户、配合上门看场地拍照、代收信函、解工商税局异常！</p><p><br/></p><p>1.办公室1-20人办公位，面积多选择，租期灵活；</p><p>2.精装修，配家私、即租即用，拎包入驻；</p><p>3.租金全包无杂费，物业管理费、水电费、空调费、网络费均无需再付；</p><p>4.每间办公室均可办理红本租赁合同，用于成立新公司，公司地址变更等；</p><p>5.创客空间，政府扶持，可享政府补贴，创业不用愁！</p><p><br/></p><p>告诉帖子来源首月立减300-1000元！</p><p>1、IC智能门禁系统，24h监控，门禁系统保证安全</p><p>2、前台配有复印机、打印机、传真、扫描、会议室、接待区等服务</p><p>1、办公室出租-共享联合办公室-创客空间模式，有红本凭证-可注册办公室有配前台文员 驻场服务，代收信件，配合勘查场地</p><p>2、、费用全包，包括水电，物业管理，空调，网络，办公家私，您每月只需要支付租金即可，没有其他任何杂费。费用透明。</p><p><br/></p><p>联系我时，请备注在哪里看到我的帖子，谢谢！</p><p><br/></p>'),(19011055,'','','','',0,'','','','<p>1.精致的办公室</p><p>2.配备齐全的办公设施，包括：大气的前台、宽敞的会议室、全套办公桌椅、网</p><p>络电话端口、空调消防体系等</p><p>3.另提供办公配套设施：商务座机、打印传真机、饮水机等</p><p>4.专业的行政服务：可为您接收包裹、接听电话、接待客户、打印复印传真</p><p>5.免物业管理费、水电费、空调费、行政服务费，并免费提供饮用水</p><p>6．公司自主研发的BITS智能接电系统，可以为您提供专业的秘书接电服务、实用人工飞线、自动飞线业务，让您随时随地接听办公室的电话。</p><p>△ 创富港虚拟办公室有如下基本套餐：</p><p>1、180元/月：办公地址、代收信件、代收传真、客户接待；</p><p>2、280元/月：办公地址、代接电话、客户接待；</p><p>3、380元/月：办公地址、代收信件、代收传真、代接电话、客户接待；</p><p>4、600元/月：注册地址、代收信件、代收传真、代接电话、客户接待；</p><p>如适合您！欢迎来电咨询或前来看房。</p><p><br/></p>'),(19011056,'','','','',0,'','','','<p>罗湖办公室出租、福田办公室出租、南山办公室出租、龙岗办公室出租、宝安办公室出租、前海办公室出租、龙华办公室出租、红本 挂靠、红本租赁合同、红本租赁凭证、租赁合同、场地使用证明、银行开/户、配合上门看场地拍照、代收信函、解工商税局异常！</p><p><br/></p><p>1.办公室1-20人办公位，面积多选择，租期灵活；</p><p>2.精装修，配家私、即租即用，拎包入驻；</p><p>3.租金全包无杂费，物业管理费、水电费、空调费、网络费均无需再付；</p><p>4.每间办公室均可办理红本租赁合同，用于成立新公司，公司地址变更等；</p><p>5.创客空间，政府扶持，可享政府补贴，创业不用愁！</p><p><br/></p><p>告诉帖子来源首月立减300-1000元！</p><p>1、IC智能门禁系统，24h监控，门禁系统保证安全</p><p>2、前台配有复印机、打印机、传真、扫描、会议室、接待区等服务</p><p>1、办公室出租-共享联合办公室-创客空间模式，有红本凭证-可注册办公室有配前台文员 驻场服务，代收信件，配合勘查场地</p><p>2、、费用全包，包括水电，物业管理，空调，网络，办公家私，您每月只需要支付租金即可，没有其他任何杂费。费用透明。</p><p><br/></p><p>联系我时，请备注在哪里看到我的帖子，谢谢！</p><p>罗湖办公室出租、福田办公室出租、南山办公室出租、龙岗办公室出租、宝安办公室出租、前海办公室出租、龙华办公室出租、红本 挂靠、红本租赁合同、红本租赁凭证、租赁合同、场地使用证明、银行开/户、配合上门看场地拍照、代收信函、解工商税局异常！</p><p><br/></p><p>1.办公室1-20人办公位，面积多选择，租期灵活；</p><p>2.精装修，配家私、即租即用，拎包入驻；</p><p>3.租金全包无杂费，物业管理费、水电费、空调费、网络费均无需再付；</p><p>4.每间办公室均可办理红本租赁合同，用于成立新公司，公司地址变更等；</p><p>5.创客空间，政府扶持，可享政府补贴，创业不用愁！</p><p><br/></p><p>告诉帖子来源首月立减300-1000元！</p><p>1、IC智能门禁系统，24h监控，门禁系统保证安全</p><p>2、前台配有复印机、打印机、传真、扫描、会议室、接待区等服务</p><p>1、办公室出租-共享联合办公室-创客空间模式，有红本凭证-可注册办公室有配前台文员 驻场服务，代收信件，配合勘查场地</p><p>2、、费用全包，包括水电，物业管理，空调，网络，办公家私，您每月只需要支付租金即可，没有其他任何杂费。费用透明。</p><p><br/></p><p>联系我时，请备注在哪里看到我的帖子，谢谢！</p><p><br/></p>'),(19011057,'','','','',0,'','','','<p>罗湖办公室出租、福田办公室出租、南山办公室出租、龙岗办公室出租、宝安办公室出租、前海办公室出租、龙华办公室出租、红本 挂靠、红本租赁合同、红本租赁凭证、租赁合同、场地使用证明、银行开/户、配合上门看场地拍照、代收信函、解工商税局异常！</p><p><br/></p><p>1.办公室1-20人办公位，面积多选择，租期灵活；</p><p>2.精装修，配家私、即租即用，拎包入驻；</p><p>3.租金全包无杂费，物业管理费、水电费、空调费、网络费均无需再付；</p><p>4.每间办公室均可办理红本租赁合同，用于成立新公司，公司地址变更等；</p><p>5.创客空间，政府扶持，可享政府补贴，创业不用愁！</p><p><br/></p><p>告诉帖子来源首月立减300-1000元！</p><p>1、IC智能门禁系统，24h监控，门禁系统保证安全</p><p>2、前台配有复印机、打印机、传真、扫描、会议室、接待区等服务</p><p>1、办公室出租-共享联合办公室-创客空间模式，有红本凭证-可注册办公室有配前台文员 驻场服务，代收信件，配合勘查场地</p><p>2、、费用全包，包括水电，物业管理，空调，网络，办公家私，您每月只需要支付租金即可，没有其他任何杂费。费用透明。</p><p><br/></p><p>联系我时，请备注在哪里看到我的帖子，谢谢！</p><p>罗湖办公室出租、福田办公室出租、南山办公室出租、龙岗办公室出租、宝安办公室出租、前海办公室出租、龙华办公室出租、红本 挂靠、红本租赁合同、红本租赁凭证、租赁合同、场地使用证明、银行开/户、配合上门看场地拍照、代收信函、解工商税局异常！</p><p><br/></p><p>1.办公室1-20人办公位，面积多选择，租期灵活；</p><p>2.精装修，配家私、即租即用，拎包入驻；</p><p>3.租金全包无杂费，物业管理费、水电费、空调费、网络费均无需再付；</p><p>4.每间办公室均可办理红本租赁合同，用于成立新公司，公司地址变更等；</p><p>5.创客空间，政府扶持，可享政府补贴，创业不用愁！</p><p><br/></p><p>告诉帖子来源首月立减300-1000元！</p><p>1、IC智能门禁系统，24h监控，门禁系统保证安全</p><p>2、前台配有复印机、打印机、传真、扫描、会议室、接待区等服务</p><p>1、办公室出租-共享联合办公室-创客空间模式，有红本凭证-可注册办公室有配前台文员 驻场服务，代收信件，配合勘查场地</p><p>2、、费用全包，包括水电，物业管理，空调，网络，办公家私，您每月只需要支付租金即可，没有其他任何杂费。费用透明。</p><p><br/></p><p>联系我时，请备注在哪里看到我的帖子，谢谢！</p><p><br/></p>'),(19011058,'','','','',0,'','','','<p>罗湖办公室出租、福田办公室出租、南山办公室出租、龙岗办公室出租、宝安办公室出租、前海办公室出租、龙华办公室出租、红本 挂靠、红本租赁合同、红本租赁凭证、租赁合同、场地使用证明、银行开/户、配合上门看场地拍照、代收信函、解工商税局异常！</p><p><br/></p><p>1.办公室1-20人办公位，面积多选择，租期灵活；</p><p>2.精装修，配家私、即租即用，拎包入驻；</p><p>3.租金全包无杂费，物业管理费、水电费、空调费、网络费均无需再付；</p><p>4.每间办公室均可办理红本租赁合同，用于成立新公司，公司地址变更等；</p><p>5.创客空间，政府扶持，可享政府补贴，创业不用愁！</p><p><br/></p><p>告诉帖子来源首月立减300-1000元！</p><p>1、IC智能门禁系统，24h监控，门禁系统保证安全</p><p>2、前台配有复印机、打印机、传真、扫描、会议室、接待区等服务</p><p>1、办公室出租-共享联合办公室-创客空间模式，有红本凭证-可注册办公室有配前台文员 驻场服务，代收信件，配合勘查场地</p><p>2、、费用全包，包括水电，物业管理，空调，网络，办公家私，您每月只需要支付租金即可，没有其他任何杂费。费用透明。</p><p><br/></p><p>联系我时，请备注在哪里看到我的帖子，谢谢！</p><p>罗湖办公室出租、福田办公室出租、南山办公室出租、龙岗办公室出租、宝安办公室出租、前海办公室出租、龙华办公室出租、红本 挂靠、红本租赁合同、红本租赁凭证、租赁合同、场地使用证明、银行开/户、配合上门看场地拍照、代收信函、解工商税局异常！</p><p><br/></p><p>1.办公室1-20人办公位，面积多选择，租期灵活；</p><p>2.精装修，配家私、即租即用，拎包入驻；</p><p>3.租金全包无杂费，物业管理费、水电费、空调费、网络费均无需再付；</p><p>4.每间办公室均可办理红本租赁合同，用于成立新公司，公司地址变更等；</p><p>5.创客空间，政府扶持，可享政府补贴，创业不用愁！</p><p><br/></p><p>告诉帖子来源首月立减300-1000元！</p><p>1、IC智能门禁系统，24h监控，门禁系统保证安全</p><p>2、前台配有复印机、打印机、传真、扫描、会议室、接待区等服务</p><p>1、办公室出租-共享联合办公室-创客空间模式，有红本凭证-可注册办公室有配前台文员 驻场服务，代收信件，配合勘查场地</p><p>2、、费用全包，包括水电，物业管理，空调，网络，办公家私，您每月只需要支付租金即可，没有其他任何杂费。费用透明。</p><p><br/></p><p>联系我时，请备注在哪里看到我的帖子，谢谢！</p><p><br/></p>'),(19011059,'','','','',0,'','','','<p>全年提供5-10人，10-25人，30-60人，60-100人不同中、小、大型会议室、培训室出租。小型会议室（5-25人）：配套投影，书写白板，网络，空调，电话会议等多功能。中型会议室（30-50人）：配套投影，音箱，话筒，书写白板，网络，空调，电话会议，灯管，遮光窗帘，悬挂横幅等全功能培训室。大型会议室（50-100人）：配套投影，音箱，话筒，书写白板，网络，空调，电话会议，灯管，遮光窗帘，悬挂横幅等全功能培训室。适合各事业单位，企业，团体，个人举行各种不同大小的会议，培训，沙龙，讲座，专场招聘等会务，有专人提供签到，引导，会场布置，协调，茶水，代客点餐，打印，传真，会务用品代购等会务服务。创富港【虚拟办公室】——便宜的办公室，仅需180－380元/月——因为没有固定办公室，无需承担办公租金！——但是，通过专业的服务确保您公司的形象：▲商业地址：对外拥有一个固定的、体面的办公地址；▲收件传真：一位专职秘书为您打理办公室的一切对外事务，如收发快递、邮包</p>'),(19011060,'','','','',0,'','','','<p>罗湖办公室出租、福田办公室出租、南山办公室出租、龙岗办公室出租、宝安办公室出租、前海办公室出租、龙华办公室出租、红本 挂靠、红本租赁合同、红本租赁凭证、租赁合同、场地使用证明、银行开/户、配合上门看场地拍照、代收信函、解工商税局异常！</p><p><br/></p><p>1.办公室1-20人办公位，面积多选择，租期灵活；</p><p>2.精装修，配家私、即租即用，拎包入驻；</p><p>3.租金全包无杂费，物业管理费、水电费、空调费、网络费均无需再付；</p><p>4.每间办公室均可办理红本租赁合同，用于成立新公司，公司地址变更等；</p><p>5.创客空间，政府扶持，可享政府补贴，创业不用愁！</p><p><br/></p><p>告诉帖子来源首月立减300-1000元！</p><p>1、IC智能门禁系统，24h监控，门禁系统保证安全</p><p>2、前台配有复印机、打印机、传真、扫描、会议室、接待区等服务</p><p>1、办公室出租-共享联合办公室-创客空间模式，有红本凭证-可注册办公室有配前台文员 驻场服务，代收信件，配合勘查场地</p><p>2、、费用全包，包括水电，物业管理，空调，网络，办公家私，您每月只需要支付租金即可，没有其他任何杂费。费用透明。</p><p><br/></p><p>联系我时，请备注在哪里看到我的帖子，谢谢！</p><p>罗湖办公室出租、福田办公室出租、南山办公室出租、龙岗办公室出租、宝安办公室出租、前海办公室出租、龙华办公室出租、红本 挂靠、红本租赁合同、红本租赁凭证、租赁合同、场地使用证明、银行开/户、配合上门看场地拍照、代收信函、解工商税局异常！</p><p><br/></p><p>1.办公室1-20人办公位，面积多选择，租期灵活；</p><p>2.精装修，配家私、即租即用，拎包入驻；</p><p>3.租金全包无杂费，物业管理费、水电费、空调费、网络费均无需再付；</p><p>4.每间办公室均可办理红本租赁合同，用于成立新公司，公司地址变更等；</p><p>5.创客空间，政府扶持，可享政府补贴，创业不用愁！</p><p><br/></p><p>告诉帖子来源首月立减300-1000元！</p><p>1、IC智能门禁系统，24h监控，门禁系统保证安全</p><p>2、前台配有复印机、打印机、传真、扫描、会议室、接待区等服务</p><p>1、办公室出租-共享联合办公室-创客空间模式，有红本凭证-可注册办公室有配前台文员 驻场服务，代收信件，配合勘查场地</p><p>2、、费用全包，包括水电，物业管理，空调，网络，办公家私，您每月只需要支付租金即可，没有其他任何杂费。费用透明。</p><p><br/></p><p>联系我时，请备注在哪里看到我的帖子，谢谢！</p><p><br/></p>'),(19011061,'','','','',0,'','','','<p>罗湖办公室出租、福田办公室出租、南山办公室出租、龙岗办公室出租、宝安办公室出租、前海办公室出租、龙华办公室出租、红本 挂靠、红本租赁合同、红本租赁凭证、租赁合同、场地使用证明、银行开/户、配合上门看场地拍照、代收信函、解工商税局异常！</p><p><br/></p><p>1.办公室1-20人办公位，面积多选择，租期灵活；</p><p>2.精装修，配家私、即租即用，拎包入驻；</p><p>3.租金全包无杂费，物业管理费、水电费、空调费、网络费均无需再付；</p><p>4.每间办公室均可办理红本租赁合同，用于成立新公司，公司地址变更等；</p><p>5.创客空间，政府扶持，可享政府补贴，创业不用愁！</p><p><br/></p><p>告诉帖子来源首月立减300-1000元！</p><p>1、IC智能门禁系统，24h监控，门禁系统保证安全</p><p>2、前台配有复印机、打印机、传真、扫描、会议室、接待区等服务</p><p>1、办公室出租-共享联合办公室-创客空间模式，有红本凭证-可注册办公室有配前台文员 驻场服务，代收信件，配合勘查场地</p><p>2、、费用全包，包括水电，物业管理，空调，网络，办公家私，您每月只需要支付租金即可，没有其他任何杂费。费用透明。</p><p><br/></p><p>联系我时，请备注在哪里看到我的帖子，谢谢！</p><p>罗湖办公室出租、福田办公室出租、南山办公室出租、龙岗办公室出租、宝安办公室出租、前海办公室出租、龙华办公室出租、红本 挂靠、红本租赁合同、红本租赁凭证、租赁合同、场地使用证明、银行开/户、配合上门看场地拍照、代收信函、解工商税局异常！</p><p><br/></p><p>1.办公室1-20人办公位，面积多选择，租期灵活；</p><p>2.精装修，配家私、即租即用，拎包入驻；</p><p>3.租金全包无杂费，物业管理费、水电费、空调费、网络费均无需再付；</p><p>4.每间办公室均可办理红本租赁合同，用于成立新公司，公司地址变更等；</p><p>5.创客空间，政府扶持，可享政府补贴，创业不用愁！</p><p><br/></p><p>告诉帖子来源首月立减300-1000元！</p><p>1、IC智能门禁系统，24h监控，门禁系统保证安全</p><p>2、前台配有复印机、打印机、传真、扫描、会议室、接待区等服务</p><p>1、办公室出租-共享联合办公室-创客空间模式，有红本凭证-可注册办公室有配前台文员 驻场服务，代收信件，配合勘查场地</p><p>2、、费用全包，包括水电，物业管理，空调，网络，办公家私，您每月只需要支付租金即可，没有其他任何杂费。费用透明。</p><p><br/></p><p>联系我时，请备注在哪里看到我的帖子，谢谢！</p><p><br/></p>'),(19011062,'','','','',0,'','','','<p>罗湖办公室出租、福田办公室出租、南山办公室出租、龙岗办公室出租、宝安办公室出租、前海办公室出租、龙华办公室出租、红本 挂靠、红本租赁合同、红本租赁凭证、租赁合同、场地使用证明、银行开/户、配合上门看场地拍照、代收信函、解工商税局异常！</p><p><br/></p><p>1.办公室1-20人办公位，面积多选择，租期灵活；</p><p>2.精装修，配家私、即租即用，拎包入驻；</p><p>3.租金全包无杂费，物业管理费、水电费、空调费、网络费均无需再付；</p><p>4.每间办公室均可办理红本租赁合同，用于成立新公司，公司地址变更等；</p><p>5.创客空间，政府扶持，可享政府补贴，创业不用愁！</p><p><br/></p><p>告诉帖子来源首月立减300-1000元！</p><p>1、IC智能门禁系统，24h监控，门禁系统保证安全</p><p>2、前台配有复印机、打印机、传真、扫描、会议室、接待区等服务</p><p>1、办公室出租-共享联合办公室-创客空间模式，有红本凭证-可注册办公室有配前台文员 驻场服务，代收信件，配合勘查场地</p><p>2、、费用全包，包括水电，物业管理，空调，网络，办公家私，您每月只需要支付租金即可，没有其他任何杂费。费用透明。</p><p><br/></p><p>联系我时，请备注在哪里看到我的帖子，谢谢！</p><p>罗湖办公室出租、福田办公室出租、南山办公室出租、龙岗办公室出租、宝安办公室出租、前海办公室出租、龙华办公室出租、红本 挂靠、红本租赁合同、红本租赁凭证、租赁合同、场地使用证明、银行开/户、配合上门看场地拍照、代收信函、解工商税局异常！</p><p><br/></p><p>1.办公室1-20人办公位，面积多选择，租期灵活；</p><p>2.精装修，配家私、即租即用，拎包入驻；</p><p>3.租金全包无杂费，物业管理费、水电费、空调费、网络费均无需再付；</p><p>4.每间办公室均可办理红本租赁合同，用于成立新公司，公司地址变更等；</p><p>5.创客空间，政府扶持，可享政府补贴，创业不用愁！</p><p><br/></p><p>告诉帖子来源首月立减300-1000元！</p><p>1、IC智能门禁系统，24h监控，门禁系统保证安全</p><p>2、前台配有复印机、打印机、传真、扫描、会议室、接待区等服务</p><p>1、办公室出租-共享联合办公室-创客空间模式，有红本凭证-可注册办公室有配前台文员 驻场服务，代收信件，配合勘查场地</p><p>2、、费用全包，包括水电，物业管理，空调，网络，办公家私，您每月只需要支付租金即可，没有其他任何杂费。费用透明。</p><p><br/></p><p>联系我时，请备注在哪里看到我的帖子，谢谢！</p><p><br/></p>'),(19011063,'','','','',0,'','','','<p>罗湖办公室出租、福田办公室出租、南山办公室出租、龙岗办公室出租、宝安办公室出租、前海办公室出租、龙华办公室出租、红本 挂靠、红本租赁合同、红本租赁凭证、租赁合同、场地使用证明、银行开/户、配合上门看场地拍照、代收信函、解工商税局异常！</p><p><br/></p><p>1.办公室1-20人办公位，面积多选择，租期灵活；</p><p>2.精装修，配家私、即租即用，拎包入驻；</p><p>3.租金全包无杂费，物业管理费、水电费、空调费、网络费均无需再付；</p><p>4.每间办公室均可办理红本租赁合同，用于成立新公司，公司地址变更等；</p><p>5.创客空间，政府扶持，可享政府补贴，创业不用愁！</p><p><br/></p><p>告诉帖子来源首月立减300-1000元！</p><p>1、IC智能门禁系统，24h监控，门禁系统保证安全</p><p>2、前台配有复印机、打印机、传真、扫描、会议室、接待区等服务</p><p>1、办公室出租-共享联合办公室-创客空间模式，有红本凭证-可注册办公室有配前台文员 驻场服务，代收信件，配合勘查场地</p><p>2、、费用全包，包括水电，物业管理，空调，网络，办公家私，您每月只需要支付租金即可，没有其他任何杂费。费用透明。</p><p><br/></p><p>联系我时，请备注在哪里看到我的帖子，谢谢！</p><p>罗湖办公室出租、福田办公室出租、南山办公室出租、龙岗办公室出租、宝安办公室出租、前海办公室出租、龙华办公室出租、红本 挂靠、红本租赁合同、红本租赁凭证、租赁合同、场地使用证明、银行开/户、配合上门看场地拍照、代收信函、解工商税局异常！</p><p><br/></p><p>1.办公室1-20人办公位，面积多选择，租期灵活；</p><p>2.精装修，配家私、即租即用，拎包入驻；</p><p>3.租金全包无杂费，物业管理费、水电费、空调费、网络费均无需再付；</p><p>4.每间办公室均可办理红本租赁合同，用于成立新公司，公司地址变更等；</p><p>5.创客空间，政府扶持，可享政府补贴，创业不用愁！</p><p><br/></p><p>告诉帖子来源首月立减300-1000元！</p><p>1、IC智能门禁系统，24h监控，门禁系统保证安全</p><p>2、前台配有复印机、打印机、传真、扫描、会议室、接待区等服务</p><p>1、办公室出租-共享联合办公室-创客空间模式，有红本凭证-可注册办公室有配前台文员 驻场服务，代收信件，配合勘查场地</p><p>2、、费用全包，包括水电，物业管理，空调，网络，办公家私，您每月只需要支付租金即可，没有其他任何杂费。费用透明。</p><p><br/></p><p>联系我时，请备注在哪里看到我的帖子，谢谢！</p><p><br/></p>'),(19011064,'','','','',0,'','','','<p>出租 东二环 朝阳门 丰联广场 193平 高层 南向 精装带全套家具</p>'),(19011065,'','','','',0,'','','','<p>本月主打小房特价房【1-2人间特价780元精装修】；</p><p>办公室内部设施及服务介绍：</p><p>1、精装修，打印机，复印机，传真机，一体化设备。</p><p>2、全套办公家具，包括办公桌椅、推拉柜，路由器，网线，电话机和电话线等。&nbsp;</p><p>3、全部IT配套，包括即时、高效安全的宽带、专用电话号码及功能的数字话机。&nbsp;</p><p>4、有多种户型设计、1-50人办公室、10-500平、拎包即可办公。</p><p>5、完备的办公区域和设施配套，前台接待区、会议室（免费）、茶水间、IT机房等。</p><p>6、服务：办公室租赁、注册（实地注册）、财务代理记账，省心省力。</p><p>【挂靠注册公司托管==介绍】</p><p>1、【提供的资料：】房产证、租赁合同、租金发票、收据盖章。。</p><p>2、【售后保障：】挂靠地址不重复、可勘验场地、独立真实办公室、专业前台代收各类信函、合同期限内保障正常。</p><p>3、【挂靠适用范围：】各行业公司新注册、变更新地址、解锁工商税务异常等。</p><p>4、银行开户场地 、地址挂靠、工商财税代办、记账报税、注册一般纳税人申请、退税、代办社保、公积金等商务服务</p><p><br/></p>'),(19011066,'','','','',0,'','','','<p>价格80元-100元每小时，按小时、半天、整天出租；</p><p>大气的前台接待区、私密的洽谈室、方便快捷的文印区及快递柜、给您放松的休闲区，每月定时免费使用的会议室；</p><p>多商圈中心选择；华鸿、万塘、火炬、创新、东方茂、瑞丰国际大厦、立新、钱江新城、汽车北站</p><p>室内布局：小会议室的1-20人套间 ，引进国外先进创意会议室模式，为每一位客户打造独具一格的会议感官；</p><p>全力打造以“众创空间(服务式会议室+开放办公位+沙龙活动区)、商务服务、专业孵化、云平台以及互助社群”融为一体的良性创业生态圈。</p><p>商务会议室配套支持：</p><p>1、公共配置：空调、豪华前台、多功能会议室、洽谈室、商务休闲区、咖啡吧、书吧等。</p><p>2、会议设备：前台配打印、传真、复印、扫描一体机；配有电冰箱、微波炉、咖啡机、直饮水机</p><p>会议室内配有白板、投影、视频会议设备等。</p><p>3.租金全包无杂费，（包物业，水电，空调，网络）即租即用，拎包入住</p><p><br/></p>'),(19011067,'','','','',0,'','','','历下5A级写字楼&nbsp;独立办公&nbsp;大中小户型均有&nbsp;环境好&nbsp;免杂费<br />地理位置优越，交通便利，5A级写字楼提升企业形象。<br />商务会议室免费共享，尽享商务办公。<br />免水费、宽带费（30兆光纤）、物业费，<br />让创业初期的您减轻一些负担。<br />办公设备齐全，携带个人笔记本电脑即可入驻办公。<br />6-12人办公间任您选择，小到工位、大到带落窗户的办公间都有，总有一间适合您。<br />真诚邀请您的入驻，办公氛围浓厚，是您办公的不错选择。<br /><br />省心省钱&nbsp;轻松做老板&nbsp;实地地址&nbsp;可注册各类公司<br />轻松开公司，我们免费帮你跑注册，<br />承诺绝对的真实，绝对的实地，<br />工商正规备案，放心使用，绝不是一次性地址。<br />代理记账，一对一服务，专业会计合理做账，企业账户无忧'),(19011068,'','','','',0,'','','','历下5A级商住楼&nbsp;独立办公&nbsp;大中小户型均有&nbsp;环境好&nbsp;免杂费<br />地理位置优越，交通便利，5A级商住楼提升企业形象。<br />商务会议室免费共享，尽享商务办公。<br />免水费、宽带费（30兆光纤）、物业费，<br />让创业初期的您减轻一些负担。<br />办公设备齐全，携带个人笔记本电脑即可入驻办公。<br />6-12人办公间任您选择，小到工位、大到带落窗户的办公间都有，总有一间适合您。<br />真诚邀请您的入驻，办公氛围浓厚，是您办公的不错选择。<br /><br />省心省钱&nbsp;轻松做老板&nbsp;实地地址&nbsp;可注册各类公司<br />轻松开公司，我们免费帮你跑注册，<br />承诺绝对的真实，绝对的实地，<br />工商正规备案，放心使用，绝不是一次性地址。<br />代理记账，一对一服务，专业会计合理做账，企业账户无忧'),(19011069,'','','','',0,'','','','历下5A级写字楼&nbsp;独立办公&nbsp;大中小户型均有&nbsp;环境好&nbsp;免杂费<br />地理位置优越，交通便利，5A级写字楼提升企业形象。<br />商务会议室免费共享，尽享商务办公。<br />免水费、宽带费（30兆光纤）、物业费，<br />让创业初期的您减轻一些负担。<br />办公设备齐全，携带个人笔记本电脑即可入驻办公。<br />6-12人办公间任您选择，小到工位、大到带落窗户的办公间都有，总有一间适合您。<br />真诚邀请您的入驻，办公氛围浓厚，是您办公的不错选择。<br /><br />省心省钱&nbsp;轻松做老板&nbsp;实地地址&nbsp;可注册各类公司<br />轻松开公司，我们免费帮你跑注册，<br />承诺绝对的真实，绝对的实地，<br />工商正规备案，放心使用，绝不是一次性地址。<br />代理记账，一对一服务，专业会计合理做账，企业账户无忧'),(19011070,'','','','',0,'','','','历下5A级写字楼&nbsp;独立办公&nbsp;大中小户型均有&nbsp;环境好&nbsp;免杂费<br />地理位置优越，交通便利，5A级写字楼提升企业形象。<br />商务会议室免费共享，尽享商务办公。<br />免水费、宽带费（30兆光纤）、物业费，<br />让创业初期的您减轻一些负担。<br />办公设备齐全，携带个人笔记本电脑即可入驻办公。<br />6-12人办公间任您选择，小到工位、大到带落窗户的办公间都有，总有一间适合您。<br />真诚邀请您的入驻，办公氛围浓厚，是您办公的不错选择。<br /><br />省心省钱&nbsp;轻松做老板&nbsp;实地地址&nbsp;可注册各类公司<br />轻松开公司，我们免费帮你跑注册，<br />承诺绝对的真实，绝对的实地，<br />工商正规备案，放心使用，绝不是一次性地址。<br />代理记账，一对一服务，专业会计合理做账，企业账户无忧'),(19011071,'','','','',0,'','','','历下5A级写字楼&nbsp;独立办公&nbsp;大中小户型均有&nbsp;环境好&nbsp;免杂费<br />地理位置优越，交通便利，5A级写字楼提升企业形象。<br />商务会议室免费共享，尽享商务办公。<br />免水费、宽带费（30兆光纤）、物业费，<br />让创业初期的您减轻一些负担。<br />办公设备齐全，携带个人笔记本电脑即可入驻办公。<br />6-12人办公间任您选择，小到工位、大到带落窗户的办公间都有，总有一间适合您。<br />真诚邀请您的入驻，办公氛围浓厚，是您办公的不错选择。<br /><br />省心省钱&nbsp;轻松做老板&nbsp;实地地址&nbsp;可注册各类公司<br />轻松开公司，我们免费帮你跑注册，<br />承诺绝对的真实，绝对的实地，<br />工商正规备案，放心使用，绝不是一次性地址。<br />代理记账，一对一服务，专业会计合理做账，企业账户无忧'),(19011072,'','','','',0,'','','','<p>精装修办公室，地址注册出租，卡位，公司注册、变更、注销、股权转让，代理工商、财税等企业一站式服务。</p><p>1、租金价格全包：房租、物业管理费、中央空调费、水电费、办公家具及维修；</p><p>2、精装修，带家私配套齐全，带电脑即可立即办公；</p><p>3、提供免费的宽带上网和24小时饮用水；</p><p>4、提供标准、前台行政服务，让您的企业形象大升；相当于为您节省了一个行政文员的开支。</p><p>5、共享前台接待空间、会议室与洽谈室，提供冰箱、微波炉、自助打印机等设备，日常使用面积超过50㎡，给您省下更多成本；</p><p>6、大小房源均有，提供10-100㎡的小面积精装办公室，还可自由组合；租期灵活多变，可按天、月、年租用，年付还有更多惊喜哦！</p><p>7、可单独为您提供公司注册、财税问题、人力资源、秘书服务等一系列服务。⑴前台人员收发快递、复印传真、接待引领客户⑵配有专业前台、会议室、休闲区、洗手间，就餐交通方便</p><p><br/></p>'),(19011073,'','','','',0,'','','','<p>创富港拥有众创空间、商务秘书注册地址资格，为您提供安全又可靠的注册地址。</p><p>注册地址：3500元起，安全真实可靠，可配合上门调查</p><p>创业者，为什么多半的人选择了我们的办公室？</p><p>办公室租赁行业的玩潮儿 --创富港品牌。</p><p>提供尊贵的商务办公室企业地址</p><p>小公司大形象，即使只有你一人也能给客户气派的形象。我们提供的服务有：公司注册、变更和年检、记账报税（相当于请了个兼职财务）、一般纳税人申请、出口退税、进出口许可证办理、收件传真、秘书接电、打印复印、网站建设、员工招聘。</p><p><br/></p>'),(19011074,'','','','',0,'','','','<p>即租即用可注册小型办公室，带电脑即可办公!</p><p>1.多套精装小面积办公室可供选择，价格低廉，租金888元/月起，除租金外无其他杂费。</p><p>2.专业高档写字楼形象，所有房间均能注册公司。</p><p>3.免水费、电费、物业管理费、空调使用费。</p><p>4.免装修，配家俱，上网免费，带电脑即可办公。</p><p>5.共享办公设施、会议室、洽谈室、前台接待大厅、饮用水。</p><p>6.特别适合1-10人办公、初创业者、小微企业者使用。</p><p>7.优美的前台文秘服务：传真、复印、打印、扫描仪等，选择我们您会更觉得实惠、方便。</p><p>8.位置好，交通便利，高楼林立商圈繁华，周边餐饮，娱乐，休闲等多种多样。</p><p>9.全杭州公司都有分店，主打1-20人间小户型办公室，大面积也有，欢迎来电咨询。</p><p><br/></p>'),(19011075,'','','','',0,'','','','尊敬的客户你好：欢迎来到小店，小店主页还有很多好房源，欢迎你都看看。小店专注御金台小区只为给你提供更好的服务，可以直接咨询我任何关于房源的问题，竭诚为你服务。下面为你介绍本小区：1.周边配套：生活十分便利，小区邻近世界城、万达广场、城东第一医院以及各大银行，出门多条公交路线；2.小区配套：小区内两家超市购物买菜都方便，停车更方便，应有尽有，只有你想不到，没有买不到；3.房源真实，委托真实，公开交易，透明房产，中介费需支付首月租金的50%（如：租金1000元需支付500元）可协商。'),(19011076,'','','','',0,'','','','力荐指数：★★★★★【丰泽城东核心地段的力荐租赁房源】<br>指数：★★★☆ 【干净整洁，配套齐全】<br>看房指数：★★★★☆【钥匙在手，随时看房】<br>出租指数：★★★【此户型本小区不多，租的也少，机不可失失不再来】<br>装修指数：★★★☆【实景拍摄，精致装修，拎包即办公】<br>顾客您好：<br>感谢您关注我的店铺<br>精挑细选每一套房源，用心服务每一位客户。<br>房源信息真实可靠。<br>此房家具家电齐全，交通顺畅，购物方便。<br>房源介绍：<br>1、小区名称：城东星光耀万达广场<br>2、朝向：东南朝向<br>3、面积：150平米，复式两层<br>4、'),(19011077,'','','','',0,'','','','丰泽城东华大泰禾广场1、面积：200平米2.押一付三3、价格：20元/㎡/月4、精装修、5.自带办公设备6、物业费：2.8元/㎡/月7、停车位：地下400元/月 地上：免费8、水费：2.5元/吨 电费：1.1元/度泰禾其他写字楼房源*SOHO 1栋 面积100㎡ 租金1800 楼层 5层SOHO 2栋 面积200㎡ 租金4300 楼层 11层SOHO 3栋 面积300㎡ 租金5800 楼层 15层更多房源　　面积１００－１０００㎡　面积　任你挑选　　楼层任你选　　装修格局任你随时所欲项目介绍本写字楼位于城东街与城华北路交汇，华侨大学斜对面　２０１５年刚交房，产权立项写字楼　'),(19011078,'','','','',0,'','','','选择本办公室的理由：省时：精装修，配套齐全，租期灵活，即租即用，带电脑和你的生意即可省钱：前期无需大笔装修费用，：前台接待和秘书服务，配置高档会议室，茶水间，休闲区专业：IT技术支持，高配置的电话网络，7*24*进出和严密安保系统灵活：各种大小、房型不同的房间，满足多样办公需求我们拥有本市齐全的精装修办公室资源，可直接联系我了解更多资源.'),(19011079,'','','','',0,'','','','1、小区名称：城东星光耀万达广场2、环境：房子采光好，小区环境优美，24*治安管理，周围交通方便，购物方便。3、也许很多虚假的房子让您困扰，我所推的房源纯属*，能为您找到一个温馨的家，一直作为我的首要任务，有需要的请和我联系，我愿意为您找个温馨的家。联系我时，请说是在58同城上看到的，谢谢！'),(19011080,'','','','',0,'','','','丰泽城东华大泰禾广场1、面积：200平米2.押一付三3、价格：20元/㎡/月4、精装修、5.自带办公设备6、物业费：2.8元/㎡/月7、停车位：地下400元/月 地上：免费8、水费：2.5元/吨 电费：1.1元/度泰禾其他写字楼房源*SOHO 1栋 面积100㎡ 租金1800 楼层 5层SOHO 2栋 面积200㎡ 租金4300 楼层 11层SOHO 3栋 面积300㎡ 租金5800 楼层 15层更多房源　　面积１００－１０００㎡　面积　任你挑选　　楼层任你选　　装修格局任你随时所欲项目介绍本写字楼位于城东街与城华北路交汇，华侨大学斜对面　２０１５年刚交房，产权立项写字楼　'),(19011081,'','','','',0,'','','','（尊敬的客户），您好，我是如是房产；经纪人【朱漾平】，很高兴您能在这么多的房源信息中点进我的主页，让我有服务您的机会，我本着如是集团与自己从业多年的宗旨，不炒楼，不赚差价，为您找到，租到，您中意的房子，让您放心入住，【主攻楼盘】城东中骏世界城；星光耀广场；保利城一期;保利城二期；美仙山花苑；南益汇景豪庭;水墨兰庭；中骏柏景湾；中骏裕景湾；中骏雍景台；中骏御景台；滨海华庭；洛江四季公园；海城花苑；等等......我始终坚持，专业的事情由专业的人来做，把你的交托于我，相信我一定能够为你找到您心仪的房子，我们珍惜您的每一次委托，同时希望你能够尊重我们的劳动与付出，选择我，节省你宝'),(19011082,'',',1,2,17,18,19,20,8,9,10,16,','','',0,'','','',''),(19011083,'勾庄','1,2,17,18,19,20,8,9,10,16','','',0,NULL,NULL,'','城北万象城幸福里精装三房两卫6000带走'),(19011084,'','','','',0,'','','','<p>九围168大厦位于西乡街道九围社区洲石路551号，‌‌‌‌‌‌位属于九围国际总部区域，超高使用率65%，物业直租，全新精装修，拎包入住，免费配置办公家具、空调，绿植、窗帘等，户型方正，户户带窗户，通风采光好，楼顶空中花园：鸟语花香，独立园区，车位充足，交通便利，大门口即公交站台，地铁12号线-钟屋南站-E出口马上开通，未来33号线城际轻轨-九围站，给所有选择我们的客户提供一个安全、舒适、便利、整洁的经营环境</p>'),(19011085,'外高桥','','','',0,NULL,NULL,'','物业直租&nbsp;接受中介<br />自贸区2号门3号门4号门5号门均有项目出租<br />面积：30-50-70-90-100-120-150-200-300-500-1000-2000-15000平'),(19011086,'外高桥','','','',0,NULL,NULL,'','航津路地铁口600米，甲级写字楼，可注册，有环评，可办公、研发、直播、展厅等，新项目共15000平，每层2000平，分东楼和西楼，东楼570平，西楼1430平，独立电梯，私密性好，自有物业出租，欢迎中介朋友推荐'),(19011087,'外高桥','','','',0,NULL,NULL,'','【浦东外高桥自贸区保税区】<br />2号门3号门4号门5号门均有项目<br />出租面积有：<br />30-50-60-75-100-150-200-300-400-800-1200-2000-5000-15000平<br />状态：户型方正、大小面积齐全、精装修、隔断、独立空调（部分房源带全新家具）<br />用途：可办公、仓储、展厅、医疗器械、研发、电商、食品、化妆品&nbsp;、进出口贸易、乳制品、电子科技、物流、摄影、生物医药、直播带货、传媒等<br />包您公司地址实地注册成功<br />物业直租房源&nbsp;欢迎中介'),(19011088,'高行','','','',0,NULL,NULL,'','浦东外高桥<br />2号门3号门4号门5号门均有项目<br />出租面积有：<br />30-50-60-75-100-150-200-300-400-800-1200-2000-5000-15000平<br />状态：户型方正、大小面积齐全、精装修、隔断、独立空调（部分房源带全新家具）<br />用途：可办公、仓储、展厅、医疗器械、研发、电商、食品、化妆品&nbsp;、进出口贸易、乳制品、电子科技、物流、摄影、生物医药、直播带货、传媒等<br />包您公司地址实地注册成功<br />房东直租&nbsp;欢迎中介'),(19011089,'松榆里','1,2,17,18,19,20,8,9,10,16','','',0,NULL,NULL,'','本小区临近地铁，生活便利，交通方便，房子精装修朝南向带超大阳台，随时入住');
/*!40000 ALTER TABLE `fke_houserent_extend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fke_houserent_mobile_auth`
--

DROP TABLE IF EXISTS `fke_houserent_mobile_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fke_houserent_mobile_auth` (
  `house_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '房源ID',
  `mobile_auth_code` varchar(6) DEFAULT '' COMMENT '手机验证码',
  `sms_send_time` int(11) unsigned DEFAULT '0' COMMENT '短信发送时间',
  `sms_send_count` int(11) unsigned DEFAULT '0' COMMENT '短信发送次数',
  PRIMARY KEY (`house_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fke_houserent_mobile_auth`
--

LOCK TABLES `fke_houserent_mobile_auth` WRITE;
/*!40000 ALTER TABLE `fke_houserent_mobile_auth` DISABLE KEYS */;
/*!40000 ALTER TABLE `fke_houserent_mobile_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fke_houserent_pic`
--

DROP TABLE IF EXISTS `fke_houserent_pic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fke_houserent_pic` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `mid` int(10) unsigned DEFAULT '0',
  `pic_url` varchar(100) NOT NULL DEFAULT '',
  `pic_thumb` varchar(100) DEFAULT '',
  `pic_desc` varchar(120) DEFAULT '',
  `house_id` int(11) unsigned NOT NULL DEFAULT '0',
  `order_sort` tinyint(3) unsigned DEFAULT '0' COMMENT '排序',
  `addtime` int(11) unsigned DEFAULT '0',
  `is_checked` tinyint(4) DEFAULT '0' COMMENT '0待审 1审核通过 -1审核失败',
  `is_main` tinyint(4) DEFAULT '0' COMMENT '是否是主图',
  `is_collect` tinyint(4) DEFAULT '0' COMMENT '0普通 1采集',
  `admin_name` varchar(20) DEFAULT '',
  `checked_time` int(11) unsigned DEFAULT '0' COMMENT '审核时间',
  `is_uploaded` tinyint(4) DEFAULT '0',
  `is_delete` tinyint(4) DEFAULT '0' COMMENT '0æœªåˆ é™¤ 1å·²åˆ é™¤',
  `upload_device` tinyint(3) unsigned DEFAULT '0' COMMENT '上传设备：1电脑 2手机 3微信',
  `wechat_token_id` int(10) unsigned DEFAULT '0' COMMENT '微信传图当前Token对应的ID值',
  PRIMARY KEY (`id`),
  KEY `checked_time` (`checked_time`),
  KEY `house_id` (`house_id`) USING BTREE,
  KEY `is_checked` (`is_checked`),
  KEY `mid` (`mid`),
  KEY `is_delete` (`is_delete`) USING BTREE,
  KEY `addtime` (`addtime`),
  KEY `wechat_token_id` (`wechat_token_id`)
) ENGINE=InnoDB AUTO_INCREMENT=68755611 DEFAULT CHARSET=utf8
/*!50100 PARTITION BY RANGE (id)
(PARTITION p0 VALUES LESS THAN (10000001) ENGINE = InnoDB,
 PARTITION p1 VALUES LESS THAN (15000001) ENGINE = InnoDB,
 PARTITION p2 VALUES LESS THAN (20000001) ENGINE = InnoDB,
 PARTITION p3 VALUES LESS THAN (23000001) ENGINE = InnoDB,
 PARTITION p4 VALUES LESS THAN (25000001) ENGINE = InnoDB,
 PARTITION p5 VALUES LESS THAN (27000001) ENGINE = InnoDB,
 PARTITION P6 VALUES LESS THAN (29000001) ENGINE = InnoDB,
 PARTITION p7 VALUES LESS THAN (31000001) ENGINE = InnoDB,
 PARTITION p8 VALUES LESS THAN (33000001) ENGINE = InnoDB,
 PARTITION P9 VALUES LESS THAN (35000001) ENGINE = InnoDB,
 PARTITION P10 VALUES LESS THAN (37000001) ENGINE = InnoDB,
 PARTITION P11 VALUES LESS THAN (39000001) ENGINE = InnoDB,
 PARTITION P12 VALUES LESS THAN (41000001) ENGINE = InnoDB,
 PARTITION P13 VALUES LESS THAN (43000001) ENGINE = InnoDB,
 PARTITION P14 VALUES LESS THAN (45000001) ENGINE = InnoDB,
 PARTITION P15 VALUES LESS THAN (47000001) ENGINE = InnoDB,
 PARTITION P16 VALUES LESS THAN (49000001) ENGINE = InnoDB,
 PARTITION P17 VALUES LESS THAN (51000001) ENGINE = InnoDB,
 PARTITION P18 VALUES LESS THAN (53000001) ENGINE = InnoDB,
 PARTITION P19 VALUES LESS THAN (55000001) ENGINE = InnoDB,
 PARTITION P20 VALUES LESS THAN (57000001) ENGINE = InnoDB,
 PARTITION P21 VALUES LESS THAN (59000001) ENGINE = InnoDB,
 PARTITION P22 VALUES LESS THAN (61000001) ENGINE = InnoDB,
 PARTITION P23 VALUES LESS THAN (63000001) ENGINE = InnoDB,
 PARTITION P24 VALUES LESS THAN (65000001) ENGINE = InnoDB,
 PARTITION P25 VALUES LESS THAN (67000001) ENGINE = InnoDB,
 PARTITION P26 VALUES LESS THAN (69000001) ENGINE = InnoDB,
 PARTITION P27 VALUES LESS THAN (71000001) ENGINE = InnoDB) */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fke_houserent_pic`
--

LOCK TABLES `fke_houserent_pic` WRITE;
/*!40000 ALTER TABLE `fke_houserent_pic` DISABLE KEYS */;
INSERT INTO `fke_houserent_pic` VALUES (68755311,283166,'house/rent/20230106/167299713996583.jpg','house/rent/20230106/167299713996583.jpg','',19011074,3,1672997144,1,0,0,'',0,1,0,1,0),(68755312,283166,'house/rent/20230106/167299714055754.jpg','house/rent/20230106/167299714055754.jpg','',19011074,4,1672997144,1,0,0,'',0,1,0,1,0),(68755313,283166,'house/rent/20230106/167299714043980.jpg','house/rent/20230106/167299714043980.jpg','',19011074,5,1672997144,1,0,0,'',0,1,0,1,0),(68755314,283166,'house/rent/20230106/167299714133846.jpg','house/rent/20230106/167299714133846.jpg','',19011074,6,1672997144,1,0,0,'',0,1,0,1,0),(68755315,283166,'house/rent/20230106/167299714153746.jpg','house/rent/20230106/167299714153746.jpg','',19011074,7,1672997144,1,0,0,'',0,1,0,1,0),(68755316,283166,'house/rent/20230106/167299714211871.jpg','house/rent/20230106/167299714211871.jpg','',19011074,8,1672997144,1,0,0,'',0,1,0,1,0),(68755350,187077,'house/rent/20230106/167300617558021.jpg','house/rent/20230106/167300617558021.jpg','',19011075,1,1673006191,1,1,0,'',0,1,0,1,0),(68755351,187077,'house/rent/20230106/167300617871100.jpg','house/rent/20230106/167300617871100.jpg','',19011075,2,1673006191,1,0,0,'',0,1,0,1,0),(68755352,187077,'house/rent/20230106/167300617869799.jpg','house/rent/20230106/167300617869799.jpg','',19011075,3,1673006191,1,0,0,'',0,1,0,1,0),(68755353,187077,'house/rent/20230106/167300618079817.jpg','house/rent/20230106/167300618079817.jpg','',19011075,4,1673006191,1,0,0,'',0,1,0,1,0),(68755354,187077,'house/rent/20230106/167300618059495.jpg','house/rent/20230106/167300618059495.jpg','',19011075,5,1673006191,1,0,0,'',0,1,0,1,0),(68755355,187077,'house/rent/20230106/167300618345094.jpg','house/rent/20230106/167300618345094.jpg','',19011075,6,1673006191,1,0,0,'',0,1,0,1,0),(68755356,187077,'house/rent/20230106/167300618451419.jpg','house/rent/20230106/167300618451419.jpg','',19011075,7,1673006191,1,0,0,'',0,1,0,1,0),(68755357,187077,'house/rent/20230106/167300618958103.jpg','house/rent/20230106/167300618958103.jpg','',19011075,8,1673006191,1,0,0,'',0,1,0,1,0),(68755398,187077,'house/rent/20230106/167300630238142.jpg','house/rent/20230106/167300630238142.jpg','',19011076,1,1673006328,1,1,0,'',0,1,0,1,0),(68755399,187077,'house/rent/20230106/167300631461837.jpg','house/rent/20230106/167300631461837.jpg','',19011076,2,1673006328,1,0,0,'',0,1,0,1,0),(68755400,187077,'house/rent/20230106/167300631590769.jpg','house/rent/20230106/167300631590769.jpg','',19011076,3,1673006328,1,0,0,'',0,1,0,1,0),(68755401,187077,'house/rent/20230106/167300631799210.jpg','house/rent/20230106/167300631799210.jpg','',19011076,4,1673006328,1,0,0,'',0,1,0,1,0),(68755402,187077,'house/rent/20230106/167300631953797.jpg','house/rent/20230106/167300631953797.jpg','',19011076,5,1673006328,1,0,0,'',0,1,0,1,0),(68755403,187077,'house/rent/20230106/167300632167085.jpg','house/rent/20230106/167300632167085.jpg','',19011076,6,1673006328,1,0,0,'',0,1,0,1,0),(68755404,187077,'house/rent/20230106/167300632393796.jpg','house/rent/20230106/167300632393796.jpg','',19011076,7,1673006328,1,0,0,'',0,1,0,1,0),(68755405,187077,'house/rent/20230106/167300632690007.jpg','house/rent/20230106/167300632690007.jpg','',19011076,8,1673006328,1,0,0,'',0,1,0,1,0),(68755406,187077,'house/rent/20230106/167300633265024.jpg','house/rent/20230106/167300633265024.jpg','',19011077,1,1673006340,1,1,0,'',0,1,0,1,0),(68755407,187077,'house/rent/20230106/167300633414835.jpg','house/rent/20230106/167300633414835.jpg','',19011077,2,1673006340,1,0,0,'',0,1,0,1,0),(68755408,187077,'house/rent/20230106/167300633561607.jpg','house/rent/20230106/167300633561607.jpg','',19011077,3,1673006340,1,0,0,'',0,1,0,1,0),(68755409,187077,'house/rent/20230106/167300633676483.jpg','house/rent/20230106/167300633676483.jpg','',19011077,4,1673006340,1,0,0,'',0,1,0,1,0),(68755410,187077,'house/rent/20230106/167300633749807.jpg','house/rent/20230106/167300633749807.jpg','',19011077,5,1673006340,1,0,0,'',0,1,0,1,0),(68755411,187077,'house/rent/20230106/167300633889584.jpg','house/rent/20230106/167300633889584.jpg','',19011077,6,1673006340,1,0,0,'',0,1,0,1,0),(68755412,187077,'house/rent/20230106/167300634037193.jpg','house/rent/20230106/167300634037193.jpg','',19011077,7,1673006340,1,0,0,'',0,1,0,1,0),(68755413,187077,'house/rent/20230106/167300634490680.jpg','house/rent/20230106/167300634490680.jpg','',19011078,1,1673006355,1,1,0,'',0,1,0,1,0),(68755414,187077,'house/rent/20230106/167300634617169.jpg','house/rent/20230106/167300634617169.jpg','',19011078,2,1673006355,1,0,0,'',0,1,0,1,0),(68755415,187077,'house/rent/20230106/167300634756735.jpg','house/rent/20230106/167300634756735.jpg','',19011078,3,1673006355,1,0,0,'',0,1,0,1,0),(68755416,187077,'house/rent/20230106/167300635031333.jpg','house/rent/20230106/167300635031333.jpg','',19011078,4,1673006355,1,0,0,'',0,1,0,1,0),(68755417,187077,'house/rent/20230106/167300635014156.jpg','house/rent/20230106/167300635014156.jpg','',19011078,5,1673006355,1,0,0,'',0,1,0,1,0),(68755418,187077,'house/rent/20230106/167300635356252.jpg','house/rent/20230106/167300635356252.jpg','',19011078,6,1673006355,1,0,0,'',0,1,0,1,0),(68755419,187077,'house/rent/20230106/167300635432879.jpg','house/rent/20230106/167300635432879.jpg','',19011078,7,1673006355,1,0,0,'',0,1,0,1,0),(68755420,187077,'house/rent/20230106/167300635510173.jpg','house/rent/20230106/167300635510173.jpg','',19011078,8,1673006355,1,0,0,'',0,1,0,1,0),(68755421,187077,'house/rent/20230106/167300636231671.jpg','house/rent/20230106/167300636231671.jpg','',19011079,1,1673006368,1,1,0,'',0,1,0,1,0),(68755422,187077,'house/rent/20230106/167300636515835.jpg','house/rent/20230106/167300636515835.jpg','',19011079,2,1673006368,1,0,0,'',0,1,0,1,0),(68755423,187077,'house/rent/20230106/167300636689193.jpg','house/rent/20230106/167300636689193.jpg','',19011079,3,1673006368,1,0,0,'',0,1,0,1,0),(68755424,187077,'house/rent/20230106/167300636660620.jpg','house/rent/20230106/167300636660620.jpg','',19011079,4,1673006368,1,0,0,'',0,1,0,1,0),(68755425,187077,'house/rent/20230106/167300636849839.jpg','house/rent/20230106/167300636849839.jpg','',19011079,5,1673006368,1,0,0,'',0,1,0,1,0),(68755426,187077,'house/rent/20230106/167300637357187.jpg','house/rent/20230106/167300637357187.jpg','',19011080,1,1673006382,1,1,0,'',0,1,0,1,0),(68755427,187077,'house/rent/20230106/167300637688541.jpg','house/rent/20230106/167300637688541.jpg','',19011080,2,1673006382,1,0,0,'',0,1,0,1,0),(68755428,187077,'house/rent/20230106/167300637791562.jpg','house/rent/20230106/167300637791562.jpg','',19011080,3,1673006382,1,0,0,'',0,1,0,1,0),(68755429,187077,'house/rent/20230106/167300637812127.jpg','house/rent/20230106/167300637812127.jpg','',19011080,4,1673006382,1,0,0,'',0,1,0,1,0),(68755430,187077,'house/rent/20230106/167300637926573.jpg','house/rent/20230106/167300637926573.jpg','',19011080,5,1673006382,1,0,0,'',0,1,0,1,0),(68755431,187077,'house/rent/20230106/167300637932412.jpg','house/rent/20230106/167300637932412.jpg','',19011080,6,1673006382,1,0,0,'',0,1,0,1,0),(68755432,187077,'house/rent/20230106/167300638091975.jpg','house/rent/20230106/167300638091975.jpg','',19011080,7,1673006382,1,0,0,'',0,1,0,1,0),(68755433,187077,'house/rent/20230106/167300638193277.jpg','house/rent/20230106/167300638193277.jpg','',19011080,8,1673006382,1,0,0,'',0,1,0,1,0),(68755434,187077,'house/rent/20230106/167300638539551.jpg','house/rent/20230106/167300638539551.jpg','',19011081,1,1673006393,1,1,0,'',0,1,0,1,0),(68755435,187077,'house/rent/20230106/167300638838225.jpg','house/rent/20230106/167300638838225.jpg','',19011081,2,1673006393,1,0,0,'',0,1,0,1,0),(68755436,187077,'house/rent/20230106/167300638970820.jpg','house/rent/20230106/167300638970820.jpg','',19011081,3,1673006393,1,0,0,'',0,1,0,1,0),(68755437,187077,'house/rent/20230106/167300639090813.jpg','house/rent/20230106/167300639090813.jpg','',19011081,4,1673006393,1,0,0,'',0,1,0,1,0),(68755438,187077,'house/rent/20230106/167300639146894.jpg','house/rent/20230106/167300639146894.jpg','',19011081,5,1673006393,1,0,0,'',0,1,0,1,0),(68755439,187077,'house/rent/20230106/167300639110243.jpg','house/rent/20230106/167300639110243.jpg','',19011081,6,1673006393,1,0,0,'',0,1,0,1,0),(68755440,187077,'house/rent/20230106/167300639296062.jpg','house/rent/20230106/167300639296062.jpg','',19011081,7,1673006393,1,0,0,'',0,1,0,1,0),(68755441,271441,'house/rent/20230107/167305307595726.jpg','house/rent/20230107/167305307595726.jpg','',19011082,1,1673053235,1,1,0,'',0,1,0,1,0),(68755442,284464,'house/rent/20230107/167305673528459.jpg','house/rent/20230107/167305673528459.jpg',NULL,19011083,1,1673056763,1,1,0,'wll',1673070705,1,0,3,0),(68755443,284464,'house/rent/20230107/167305673560960.jpg','house/rent/20230107/167305673560960.jpg',NULL,19011083,2,1673056763,1,0,0,'wll',1673070705,1,0,3,0),(68755444,284464,'house/rent/20230107/167305673545959.jpg','house/rent/20230107/167305673545959.jpg',NULL,19011083,3,1673056763,1,0,0,'wll',1673070705,1,0,3,0),(68755445,284464,'house/rent/20230107/167305673542290.jpg','house/rent/20230107/167305673542290.jpg',NULL,19011083,6,1673056763,1,0,0,'wll',1673070705,1,0,3,0),(68755446,284464,'house/rent/20230107/167305673548125.jpg','house/rent/20230107/167305673548125.jpg',NULL,19011083,5,1673056763,1,0,0,'wll',1673070705,1,0,3,0),(68755447,284464,'house/rent/20230107/167305673627618.jpg','house/rent/20230107/167305673627618.jpg',NULL,19011083,4,1673056763,1,0,0,'wll',1673070705,1,0,3,0),(68755448,284464,'house/rent/20230107/167305673657220.jpg','house/rent/20230107/167305673657220.jpg',NULL,19011083,8,1673056763,1,0,0,'wll',1673070705,1,0,3,0),(68755449,284464,'house/rent/20230107/167305673620634.jpg','house/rent/20230107/167305673620634.jpg',NULL,19011083,7,1673056763,1,0,0,'wll',1673070705,1,0,3,0),(68755450,284464,'house/rent/20230107/167305673695043.jpg','house/rent/20230107/167305673695043.jpg',NULL,19011083,9,1673056763,1,0,0,'wll',1673070705,1,0,3,0),(68755451,282611,'house/rent/20230107/167305713936227.jpg','house/rent/20230107/167305713936227.jpg','',19011084,1,1673057222,1,1,0,'',0,1,0,1,0),(68755452,282611,'house/rent/20230107/167305714828547.jpg','house/rent/20230107/167305714828547.jpg','',19011084,2,1673057222,1,0,0,'',0,1,0,1,0),(68755453,282611,'house/rent/20230107/167305715277146.jpg','house/rent/20230107/167305715277146.jpg','',19011084,3,1673057222,1,0,0,'',0,1,0,1,0),(68755454,282611,'house/rent/20230107/167305715931872.jpg','house/rent/20230107/167305715931872.jpg','',19011084,4,1673057222,1,0,0,'',0,1,0,1,0),(68755455,282611,'house/rent/20230107/167305716395334.jpg','house/rent/20230107/167305716395334.jpg','',19011084,5,1673057222,1,0,0,'',0,1,0,1,0),(68755456,282611,'house/rent/20230107/167305719748444.jpg','house/rent/20230107/167305719748444.jpg','',19011084,6,1673057222,1,0,0,'',0,1,0,1,0),(68755457,282611,'house/rent/20230107/167305720261403.jpg','house/rent/20230107/167305720261403.jpg','',19011084,7,1673057222,1,0,0,'',0,1,0,1,0),(68755458,282611,'house/rent/20230107/167305720829145.jpg','house/rent/20230107/167305720829145.jpg','',19011084,8,1673057222,1,0,0,'',0,1,0,1,0),(68755459,284465,'house/rent/20230107/167305782998321.jpg','house/rent/20230107/167305782998321.jpg',NULL,19011085,3,1673058035,1,0,0,'wll',1673070705,1,0,3,0),(68755460,284465,'house/rent/20230107/167305782927777.jpg','house/rent/20230107/167305782927777.jpg',NULL,19011085,4,1673058035,1,0,0,'wll',1673070705,1,0,3,0),(68755461,284465,'house/rent/20230107/167305782978667.jpg','house/rent/20230107/167305782978667.jpg',NULL,19011085,1,1673058035,1,1,0,'wll',1673070705,1,0,3,0),(68755462,284465,'house/rent/20230107/167305782932710.jpg','house/rent/20230107/167305782932710.jpg',NULL,19011085,2,1673058035,1,0,0,'wll',1673070705,1,0,3,0),(68755463,284465,'house/rent/20230107/167305808845755.jpg','house/rent/20230107/167305808845755.jpg',NULL,19011086,2,1673058394,1,0,0,'wll',1673070705,1,0,3,0),(68755464,284465,'house/rent/20230107/167305808862978.jpg','house/rent/20230107/167305808862978.jpg',NULL,19011086,1,1673058394,1,1,0,'wll',1673070705,1,0,3,0),(68755473,284465,'house/rent/20230107/167305906280957.jpg','house/rent/20230107/167305906280957.jpg',NULL,19011087,1,1673059191,1,1,0,'wll',1673070705,1,0,3,0),(68755474,284465,'house/rent/20230107/167305906232229.jpg','house/rent/20230107/167305906232229.jpg',NULL,19011087,2,1673059191,1,0,0,'wll',1673070705,1,0,3,0),(68755475,284465,'house/rent/20230107/167305959487474.jpg','house/rent/20230107/167305959487474.jpg',NULL,19011088,6,1673059725,1,0,0,'wll',1673070705,1,0,3,0),(68755476,284465,'house/rent/20230107/167305959474094.jpg','house/rent/20230107/167305959474094.jpg',NULL,19011088,5,1673059725,1,0,0,'wll',1673070705,1,0,3,0),(68755477,284465,'house/rent/20230107/167305959438057.jpg','house/rent/20230107/167305959438057.jpg',NULL,19011088,2,1673059725,1,0,0,'wll',1673070705,1,0,3,0),(68755478,284465,'house/rent/20230107/167305959431347.jpg','house/rent/20230107/167305959431347.jpg',NULL,19011088,3,1673059725,1,0,0,'wll',1673070705,1,0,3,0),(68755479,284465,'house/rent/20230107/167305959417578.jpg','house/rent/20230107/167305959417578.jpg',NULL,19011088,4,1673059725,1,0,0,'wll',1673070705,1,0,3,0),(68755480,284465,'house/rent/20230107/167305959472231.jpg','house/rent/20230107/167305959472231.jpg',NULL,19011088,1,1673059725,1,1,0,'wll',1673070705,1,0,3,0),(68755481,284465,'house/rent/20230107/167305959462202.jpg','house/rent/20230107/167305959462202.jpg',NULL,19011088,7,1673059725,1,0,0,'wll',1673070705,1,0,3,0),(68755482,263617,'house/rent/20230107/167307161542163.jpg','house/rent/20230107/167307161542163.jpg',NULL,19011089,5,1673071814,1,0,0,'',0,1,0,3,0),(68755483,263617,'house/rent/20230107/167307161522453.jpg','house/rent/20230107/167307161522453.jpg',NULL,19011089,1,1673071814,1,1,0,'',0,1,0,3,0),(68755484,263617,'house/rent/20230107/167307161513120.jpg','house/rent/20230107/167307161513120.jpg',NULL,19011089,4,1673071814,1,0,0,'',0,1,0,3,0),(68755485,263617,'house/rent/20230107/167307161530874.jpg','house/rent/20230107/167307161530874.jpg',NULL,19011089,3,1673071814,1,0,0,'',0,1,0,3,0),(68755486,263617,'house/rent/20230107/167307161575138.jpg','house/rent/20230107/167307161575138.jpg',NULL,19011089,2,1673071814,1,0,0,'',0,1,0,3,0),(68755487,263617,'house/rent/20230107/167307161564975.jpg','house/rent/20230107/167307161564975.jpg',NULL,19011089,6,1673071814,1,0,0,'',0,1,0,3,0),(68755488,263617,'house/rent/20230107/167307161576229.jpg','house/rent/20230107/167307161576229.jpg',NULL,19011089,7,1673071814,1,0,0,'',0,1,0,3,0),(68755489,263617,'house/rent/20230107/167307161591191.jpg','house/rent/20230107/167307161591191.jpg',NULL,19011089,9,1673071814,1,0,0,'',0,1,0,3,0),(68755490,263617,'house/rent/20230107/167307161590726.jpg','house/rent/20230107/167307161590726.jpg',NULL,19011089,8,1673071814,1,0,0,'',0,1,0,3,0),(68755491,263617,'house/rent/20230107/167307162391658.jpg','house/rent/20230107/167307162391658.jpg',NULL,19011089,10,1673071814,1,0,0,'',0,1,0,3,0),(68755492,263617,'house/rent/20230107/167307162388583.jpg','house/rent/20230107/167307162388583.jpg',NULL,19011089,11,1673071814,1,0,0,'',0,1,0,3,0),(68755493,280736,'house/rent/20230107/167307605528337.jpg','house/rent/20230107/167307605528337.jpg','',0,0,1673076059,0,0,0,'',0,1,0,1,0),(68755494,280736,'house/rent/20230107/167307606066929.jpg','house/rent/20230107/167307606066929.jpg','',0,0,1673076061,0,0,0,'',0,1,0,1,0),(68755495,280736,'house/rent/20230107/167307606123494.jpg','house/rent/20230107/167307606123494.jpg','',0,0,1673076062,0,0,0,'',0,1,0,1,0),(68755496,280736,'house/rent/20230107/167307606240941.jpg','house/rent/20230107/167307606240941.jpg','',0,0,1673076063,0,0,0,'',0,1,0,1,0),(68755497,280736,'house/rent/20230107/167307606339209.jpg','house/rent/20230107/167307606339209.jpg','',0,0,1673076063,0,0,0,'',0,1,0,1,0),(68755498,280736,'house/rent/20230107/167307606475845.jpg','house/rent/20230107/167307606475845.jpg','',0,0,1673076065,0,0,0,'',0,1,0,1,0),(68755499,280736,'house/rent/20230107/167307606520003.jpg','house/rent/20230107/167307606520003.jpg','',0,0,1673076066,0,0,0,'',0,1,0,1,0),(68755500,280736,'house/rent/20230107/167307606870376.jpg','house/rent/20230107/167307606870376.jpg','',0,0,1673076070,0,0,0,'',0,1,0,1,0),(68755501,280736,'house/rent/20230107/167307607792211.jpg','house/rent/20230107/167307607792211.jpg','',0,0,1673076079,0,0,0,'',0,1,0,1,0),(68755502,280736,'house/rent/20230107/167307607989574.jpg','house/rent/20230107/167307607989574.jpg','',0,0,1673076080,0,0,0,'',0,1,0,1,0),(68755503,280736,'house/rent/20230107/167307608153423.jpg','house/rent/20230107/167307608153423.jpg','',0,0,1673076082,0,0,0,'',0,1,0,1,0),(68755504,280736,'house/rent/20230107/167307608242077.jpg','house/rent/20230107/167307608242077.jpg','',0,0,1673076084,0,0,0,'',0,1,0,1,0),(68755505,280736,'house/rent/20230107/167307609499952.jpg','house/rent/20230107/167307609499952.jpg','',0,0,1673076098,0,0,0,'',0,1,0,1,0),(68755506,280736,'house/rent/20230107/167307609991015.jpg','house/rent/20230107/167307609991015.jpg','',0,0,1673076100,0,0,0,'',0,1,0,1,0),(68755507,280736,'house/rent/20230107/167307610064288.jpg','house/rent/20230107/167307610064288.jpg','',0,0,1673076101,0,0,0,'',0,1,0,1,0),(68755508,280736,'house/rent/20230107/167307613911782.jpg','house/rent/20230107/167307613911782.jpg','',0,0,1673076141,0,0,0,'',0,1,0,1,0),(68755509,280736,'house/rent/20230107/167307614239733.jpg','house/rent/20230107/167307614239733.jpg','',0,0,1673076144,0,0,0,'',0,1,0,1,0),(68755510,280736,'house/rent/20230107/167307614445445.jpg','house/rent/20230107/167307614445445.jpg','',0,0,1673076145,0,0,0,'',0,1,0,1,0),(68755511,280736,'house/rent/20230107/167307614525897.jpg','house/rent/20230107/167307614525897.jpg','',0,0,1673076147,0,0,0,'',0,1,0,1,0),(68755512,280736,'house/rent/20230107/167307614753219.jpg','house/rent/20230107/167307614753219.jpg','',0,0,1673076148,0,0,0,'',0,1,0,1,0),(68755513,280736,'house/rent/20230107/167307616899867.jpg','house/rent/20230107/167307616899867.jpg','',0,0,1673076170,0,0,0,'',0,1,0,1,0),(68755514,280736,'house/rent/20230107/167307617124678.jpg','house/rent/20230107/167307617124678.jpg','',0,0,1673076171,0,0,0,'',0,1,0,1,0),(68755515,280736,'house/rent/20230107/167307617416876.jpg','house/rent/20230107/167307617416876.jpg','',0,0,1673076176,0,0,0,'',0,1,0,1,0),(68755516,280736,'house/rent/20230107/167307617763796.jpg','house/rent/20230107/167307617763796.jpg','',0,0,1673076177,0,0,0,'',0,1,0,1,0),(68755517,280736,'house/rent/20230107/167307617823498.jpg','house/rent/20230107/167307617823498.jpg','',0,0,1673076178,0,0,0,'',0,1,0,1,0),(68755518,280736,'house/rent/20230107/167307617947307.jpg','house/rent/20230107/167307617947307.jpg','',0,0,1673076179,0,0,0,'',0,1,0,1,0),(68755519,280736,'house/rent/20230107/167307618089643.jpg','house/rent/20230107/167307618089643.jpg','',0,0,1673076180,0,0,0,'',0,1,0,1,0),(68755520,280736,'house/rent/20230107/167307618014817.jpg','house/rent/20230107/167307618014817.jpg','',0,0,1673076181,0,0,0,'',0,1,0,1,0),(68755521,280736,'house/rent/20230107/167307618193911.jpg','house/rent/20230107/167307618193911.jpg','',0,0,1673076181,0,0,0,'',0,1,0,1,0),(68755522,280736,'house/rent/20230107/167307618218857.jpg','house/rent/20230107/167307618218857.jpg','',0,0,1673076182,0,0,0,'',0,1,0,1,0),(68755523,280736,'house/rent/20230107/167307618577461.jpg','house/rent/20230107/167307618577461.jpg','',0,0,1673076189,0,0,0,'',0,1,0,1,0),(68755524,280736,'house/rent/20230107/167307618960892.jpg','house/rent/20230107/167307618960892.jpg','',0,0,1673076190,0,0,0,'',0,1,0,1,0),(68755525,280736,'house/rent/20230107/167307619142713.jpg','house/rent/20230107/167307619142713.jpg','',0,0,1673076192,0,0,0,'',0,1,0,1,0),(68755526,280736,'house/rent/20230107/167307619257034.jpg','house/rent/20230107/167307619257034.jpg','',0,0,1673076193,0,0,0,'',0,1,0,1,0),(68755527,280736,'house/rent/20230107/167307619367571.jpg','house/rent/20230107/167307619367571.jpg','',0,0,1673076194,0,0,0,'',0,1,0,1,0),(68755528,280736,'house/rent/20230107/167307619561840.jpg','house/rent/20230107/167307619561840.jpg','',0,0,1673076196,0,0,0,'',0,1,0,1,0),(68755529,280736,'house/rent/20230107/167307619682142.jpg','house/rent/20230107/167307619682142.jpg','',0,0,1673076197,0,0,0,'',0,1,0,1,0),(68755530,280736,'house/rent/20230107/167307619736803.jpg','house/rent/20230107/167307619736803.jpg','',0,0,1673076198,0,0,0,'',0,1,0,1,0),(68755531,280736,'house/rent/20230107/167307620174504.jpg','house/rent/20230107/167307620174504.jpg','',0,0,1673076203,0,0,0,'',0,1,0,1,0),(68755532,280736,'house/rent/20230107/167307620346579.jpg','house/rent/20230107/167307620346579.jpg','',0,0,1673076204,0,0,0,'',0,1,0,1,0),(68755533,280736,'house/rent/20230107/167307620479159.jpg','house/rent/20230107/167307620479159.jpg','',0,0,1673076204,0,0,0,'',0,1,0,1,0),(68755534,280736,'house/rent/20230107/167307620538823.jpg','house/rent/20230107/167307620538823.jpg','',0,0,1673076205,0,0,0,'',0,1,0,1,0),(68755535,280736,'house/rent/20230107/167307620610149.jpg','house/rent/20230107/167307620610149.jpg','',0,0,1673076206,0,0,0,'',0,1,0,1,0),(68755536,280736,'house/rent/20230107/167307620715451.jpg','house/rent/20230107/167307620715451.jpg','',0,0,1673076207,0,0,0,'',0,1,0,1,0),(68755537,280736,'house/rent/20230107/167307620896731.jpg','house/rent/20230107/167307620896731.jpg','',0,0,1673076208,0,0,0,'',0,1,0,1,0),(68755538,280736,'house/rent/20230107/167307621927963.jpg','house/rent/20230107/167307621927963.jpg','',0,0,1673076220,0,0,0,'',0,1,0,1,0),(68755539,280736,'house/rent/20230107/167307622480548.jpg','house/rent/20230107/167307622480548.jpg','',0,0,1673076226,0,0,0,'',0,1,0,1,0),(68755540,280736,'house/rent/20230107/167307622662634.jpg','house/rent/20230107/167307622662634.jpg','',0,0,1673076227,0,0,0,'',0,1,0,1,0),(68755541,280736,'house/rent/20230107/167307622816879.jpg','house/rent/20230107/167307622816879.jpg','',0,0,1673076228,0,0,0,'',0,1,0,1,0),(68755542,280736,'house/rent/20230107/167307622998970.jpg','house/rent/20230107/167307622998970.jpg','',0,0,1673076230,0,0,0,'',0,1,0,1,0),(68755543,280736,'house/rent/20230107/167307623050410.jpg','house/rent/20230107/167307623050410.jpg','',0,0,1673076231,0,0,0,'',0,1,0,1,0),(68755544,280736,'house/rent/20230107/167307623266158.jpg','house/rent/20230107/167307623266158.jpg','',0,0,1673076233,0,0,0,'',0,1,0,1,0),(68755545,280736,'house/rent/20230107/167307623370829.jpg','house/rent/20230107/167307623370829.jpg','',0,0,1673076234,0,0,0,'',0,1,0,1,0),(68755546,280736,'house/rent/20230107/167307623867214.jpg','house/rent/20230107/167307623867214.jpg','',0,0,1673076242,0,0,0,'',0,1,0,1,0),(68755547,280736,'house/rent/20230107/167307625215417.jpg','house/rent/20230107/167307625215417.jpg','',0,0,1673076256,0,0,0,'',0,1,0,1,0),(68755548,280736,'house/rent/20230107/167307625691223.jpg','house/rent/20230107/167307625691223.jpg','',0,0,1673076257,0,0,0,'',0,1,0,1,0),(68755549,280736,'house/rent/20230107/167307625816700.jpg','house/rent/20230107/167307625816700.jpg','',0,0,1673076259,0,0,0,'',0,1,0,1,0),(68755550,280736,'house/rent/20230107/167307625982601.jpg','house/rent/20230107/167307625982601.jpg','',0,0,1673076260,0,0,0,'',0,1,0,1,0),(68755551,280736,'house/rent/20230107/167307626065882.jpg','house/rent/20230107/167307626065882.jpg','',0,0,1673076262,0,0,0,'',0,1,0,1,0),(68755552,280736,'house/rent/20230107/167307627311477.jpg','house/rent/20230107/167307627311477.jpg','',0,0,1673076276,0,0,0,'',0,1,0,1,0),(68755553,280736,'house/rent/20230107/167307627743416.jpg','house/rent/20230107/167307627743416.jpg','',0,0,1673076280,0,0,0,'',0,1,0,1,0),(68755554,280736,'house/rent/20230107/167307628294199.jpg','house/rent/20230107/167307628294199.jpg','',0,0,1673076283,0,0,0,'',0,1,0,1,0),(68755555,280736,'house/rent/20230107/167307628485578.jpg','house/rent/20230107/167307628485578.jpg','',0,0,1673076285,0,0,0,'',0,1,0,1,0),(68755556,280736,'house/rent/20230107/167307629757548.jpg','house/rent/20230107/167307629757548.jpg','',0,0,1673076300,0,0,0,'',0,1,0,1,0),(68755557,280736,'house/rent/20230107/167307630125078.jpg','house/rent/20230107/167307630125078.jpg','',0,0,1673076301,0,0,0,'',0,1,0,1,0),(68755558,280736,'house/rent/20230107/167307630152203.jpg','house/rent/20230107/167307630152203.jpg','',0,0,1673076302,0,0,0,'',0,1,0,1,0),(68755559,280736,'house/rent/20230107/167307630296314.jpg','house/rent/20230107/167307630296314.jpg','',0,0,1673076302,0,0,0,'',0,1,0,1,0),(68755560,280736,'house/rent/20230107/167307630338843.jpg','house/rent/20230107/167307630338843.jpg','',0,0,1673076303,0,0,0,'',0,1,0,1,0),(68755561,280736,'house/rent/20230107/167307630487076.jpg','house/rent/20230107/167307630487076.jpg','',0,0,1673076304,0,0,0,'',0,1,0,1,0),(68755562,280736,'house/rent/20230107/167307630765495.jpg','house/rent/20230107/167307630765495.jpg','',0,0,1673076308,0,0,0,'',0,1,0,1,0),(68755563,280736,'house/rent/20230107/167307630951496.jpg','house/rent/20230107/167307630951496.jpg','',0,0,1673076310,0,0,0,'',0,1,0,1,0),(68755564,280736,'house/rent/20230107/167307631077110.jpg','house/rent/20230107/167307631077110.jpg','',0,0,1673076311,0,0,0,'',0,1,0,1,0),(68755565,280736,'house/rent/20230107/167307631595732.jpg','house/rent/20230107/167307631595732.jpg','',0,0,1673076316,0,0,0,'',0,1,0,1,0),(68755566,280736,'house/rent/20230107/167307631785476.jpg','house/rent/20230107/167307631785476.jpg','',0,0,1673076317,0,0,0,'',0,1,0,1,0),(68755567,280736,'house/rent/20230107/167307631836190.jpg','house/rent/20230107/167307631836190.jpg','',0,0,1673076318,0,0,0,'',0,1,0,1,0),(68755568,280736,'house/rent/20230107/167307631937792.jpg','house/rent/20230107/167307631937792.jpg','',0,0,1673076319,0,0,0,'',0,1,0,1,0),(68755569,280736,'house/rent/20230107/167307631997584.jpg','house/rent/20230107/167307631997584.jpg','',0,0,1673076320,0,0,0,'',0,1,0,1,0),(68755570,280736,'house/rent/20230107/167307633233839.jpg','house/rent/20230107/167307633233839.jpg','',0,0,1673076335,0,0,0,'',0,1,0,1,0),(68755571,280736,'house/rent/20230107/167307633664879.jpg','house/rent/20230107/167307633664879.jpg','',0,0,1673076336,0,0,0,'',0,1,0,1,0),(68755572,280736,'house/rent/20230107/167307633713181.jpg','house/rent/20230107/167307633713181.jpg','',0,0,1673076337,0,0,0,'',0,1,0,1,0),(68755573,280736,'house/rent/20230107/167307633864050.jpg','house/rent/20230107/167307633864050.jpg','',0,0,1673076338,0,0,0,'',0,1,0,1,0),(68755574,280736,'house/rent/20230107/167307633921568.jpg','house/rent/20230107/167307633921568.jpg','',0,0,1673076340,0,0,0,'',0,1,0,1,0),(68755575,280736,'house/rent/20230107/167307634034938.jpg','house/rent/20230107/167307634034938.jpg','',0,0,1673076341,0,0,0,'',0,1,0,1,0),(68755576,280736,'house/rent/20230107/167307634174975.jpg','house/rent/20230107/167307634174975.jpg','',0,0,1673076341,0,0,0,'',0,1,0,1,0),(68755577,280736,'house/rent/20230107/167307635215478.jpg','house/rent/20230107/167307635215478.jpg','',0,0,1673076355,0,0,0,'',0,1,0,1,0),(68755578,280736,'house/rent/20230107/167307636858442.jpg','house/rent/20230107/167307636858442.jpg','',0,0,1673076372,0,0,0,'',0,1,0,1,0),(68755579,280736,'house/rent/20230107/167307637269469.jpg','house/rent/20230107/167307637269469.jpg','',0,0,1673076373,0,0,0,'',0,1,0,1,0),(68755580,280736,'house/rent/20230107/167307637487791.jpg','house/rent/20230107/167307637487791.jpg','',0,0,1673076375,0,0,0,'',0,1,0,1,0),(68755581,280736,'house/rent/20230107/167307637662582.jpg','house/rent/20230107/167307637662582.jpg','',0,0,1673076377,0,0,0,'',0,1,0,1,0),(68755582,280736,'house/rent/20230107/167307637830313.jpg','house/rent/20230107/167307637830313.jpg','',0,0,1673076379,0,0,0,'',0,1,0,1,0),(68755583,280736,'house/rent/20230107/167307637932212.jpg','house/rent/20230107/167307637932212.jpg','',0,0,1673076381,0,0,0,'',0,1,0,1,0),(68755584,280736,'house/rent/20230107/167307638229120.jpg','house/rent/20230107/167307638229120.jpg','',0,0,1673076383,0,0,0,'',0,1,0,1,0),(68755585,280736,'house/rent/20230107/167307638423702.jpg','house/rent/20230107/167307638423702.jpg','',0,0,1673076385,0,0,0,'',0,1,0,1,0),(68755586,280736,'house/rent/20230107/167307638891558.jpg','house/rent/20230107/167307638891558.jpg','',0,0,1673076396,0,0,0,'',0,1,0,1,0),(68755587,280736,'house/rent/20230107/167307639686656.jpg','house/rent/20230107/167307639686656.jpg','',0,0,1673076399,0,0,0,'',0,1,0,1,0),(68755588,280736,'house/rent/20230107/167307639929623.jpg','house/rent/20230107/167307639929623.jpg','',0,0,1673076402,0,0,0,'',0,1,0,1,0),(68755589,280736,'house/rent/20230107/167307640292233.jpg','house/rent/20230107/167307640292233.jpg','',0,0,1673076404,0,0,0,'',0,1,0,1,0),(68755590,280736,'house/rent/20230107/167307640419838.jpg','house/rent/20230107/167307640419838.jpg','',0,0,1673076405,0,0,0,'',0,1,0,1,0),(68755591,280736,'house/rent/20230107/167307640668433.jpg','house/rent/20230107/167307640668433.jpg','',0,0,1673076407,0,0,0,'',0,1,0,1,0),(68755592,280736,'house/rent/20230107/167307640817859.jpg','house/rent/20230107/167307640817859.jpg','',0,0,1673076409,0,0,0,'',0,1,0,1,0),(68755593,280736,'house/rent/20230107/167307641991611.jpg','house/rent/20230107/167307641991611.jpg','',0,0,1673076423,0,0,0,'',0,1,0,1,0),(68755594,280736,'house/rent/20230107/167307642682085.jpg','house/rent/20230107/167307642682085.jpg','',0,0,1673076429,0,0,0,'',0,1,0,1,0),(68755595,280736,'house/rent/20230107/167307643010397.jpg','house/rent/20230107/167307643010397.jpg','',0,0,1673076430,0,0,0,'',0,1,0,1,0),(68755596,280736,'house/rent/20230107/167307643157694.jpg','house/rent/20230107/167307643157694.jpg','',0,0,1673076432,0,0,0,'',0,1,0,1,0),(68755597,280736,'house/rent/20230107/167307643341581.jpg','house/rent/20230107/167307643341581.jpg','',0,0,1673076434,0,0,0,'',0,1,0,1,0),(68755598,280736,'house/rent/20230107/167307643483646.jpg','house/rent/20230107/167307643483646.jpg','',0,0,1673076435,0,0,0,'',0,1,0,1,0),(68755599,280736,'house/rent/20230107/167307643661833.jpg','house/rent/20230107/167307643661833.jpg','',0,0,1673076436,0,0,0,'',0,0,0,1,0),(68755600,280736,'house/rent/20230107/167307643742546.jpg','house/rent/20230107/167307643742546.jpg','',0,0,1673076438,0,0,0,'',0,1,0,1,0),(68755601,280736,'house/rent/20230107/167307643882998.jpg','house/rent/20230107/167307643882998.jpg','',0,0,1673076439,0,0,0,'',0,1,0,1,0),(68755602,280736,'house/rent/20230107/167307643923929.jpg','house/rent/20230107/167307643923929.jpg','',0,0,1673076440,0,0,0,'',0,1,0,1,0),(68755603,280736,'house/rent/20230107/167307644238613.jpg','house/rent/20230107/167307644238613.jpg','',0,0,1673076445,0,0,0,'',0,1,0,1,0),(68755604,280736,'house/rent/20230107/167307644564857.jpg','house/rent/20230107/167307644564857.jpg','',0,0,1673076446,0,0,0,'',0,1,0,1,0),(68755605,280736,'house/rent/20230107/167307644736367.jpg','house/rent/20230107/167307644736367.jpg','',0,0,1673076447,0,0,0,'',0,1,0,1,0),(68755606,280736,'house/rent/20230107/167307644829059.jpg','house/rent/20230107/167307644829059.jpg','',0,0,1673076448,0,0,0,'',0,1,0,1,0),(68755607,280736,'house/rent/20230107/167307644921632.jpg','house/rent/20230107/167307644921632.jpg','',0,0,1673076449,0,0,0,'',0,1,0,1,0),(68755608,280736,'house/rent/20230107/167307645046844.jpg','house/rent/20230107/167307645046844.jpg','',0,0,1673076451,0,0,0,'',0,1,0,1,0),(68755609,280736,'house/rent/20230107/167307645179825.jpg','house/rent/20230107/167307645179825.jpg','',0,0,1673076452,0,0,0,'',0,1,0,1,0),(68755610,280736,'house/rent/20230107/167307645216806.jpg','house/rent/20230107/167307645216806.jpg','',0,0,1673076453,0,0,0,'',0,1,0,1,0);
/*!40000 ALTER TABLE `fke_houserent_pic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fke_houserent_short_data`
--

DROP TABLE IF EXISTS `fke_houserent_short_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fke_houserent_short_data` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `column_type` tinyint(3) unsigned DEFAULT '0',
  `house_title` varchar(120) DEFAULT '',
  `house_title_crc32` int(10) unsigned DEFAULT '0',
  `owner_phone` varchar(16) DEFAULT '',
  `owner_phone_crc32` int(10) unsigned DEFAULT '0',
  `city_website_id` int(10) unsigned DEFAULT '0',
  `created` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `house_title_crc32` (`house_title_crc32`),
  KEY `owner_phone_crc32` (`owner_phone_crc32`),
  KEY `created` (`created`),
  KEY `city_website_id` (`city_website_id`),
  KEY `column_type` (`column_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fke_houserent_short_data`
--

LOCK TABLES `fke_houserent_short_data` WRITE;
/*!40000 ALTER TABLE `fke_houserent_short_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `fke_houserent_short_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fke_housesell`
--

DROP TABLE IF EXISTS `fke_housesell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fke_housesell` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityarea_id` int(11) unsigned DEFAULT '0',
  `cityarea2_id` int(11) unsigned DEFAULT '0',
  `column_type` tinyint(3) unsigned DEFAULT '0' COMMENT '栏目分类：1普通房源  2写字楼  3商铺 4车位',
  `house_type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '房源类型',
  `house_price` float NOT NULL DEFAULT '0',
  `house_totalarea` float DEFAULT '0',
  `house_room` tinyint(4) DEFAULT '0',
  `house_floor` int(11) DEFAULT '0',
  `house_toward` tinyint(4) DEFAULT '0',
  `house_fitment` tinyint(4) DEFAULT '0',
  `mid` int(11) unsigned NOT NULL DEFAULT '0',
  `mtype` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '发布人类型',
  `down_time` int(11) DEFAULT '0' COMMENT '下架时间',
  `is_checked` tinyint(4) DEFAULT '1' COMMENT '0待审 1审核通过 -1审核失败 2已下架',
  `is_delete` tinyint(3) unsigned DEFAULT '0' COMMENT '0正常\r\n1待审核回收站\r\n2通过审核回收站\r\n3未通过审核回收站',
  `is_lock` tinyint(4) DEFAULT '0' COMMENT '是否被锁定：0正常 1锁定状态。管理员删除的房源会进行锁定',
  `is_down` tinyint(4) DEFAULT '0' COMMENT '是否下架：0正常 1已下架',
  `is_banner` tinyint(4) DEFAULT '0' COMMENT '是否是Banner房源：0示审核 1设置为幻灯 2图片不合格',
  `house_status` tinyint(4) DEFAULT '0' COMMENT '0待审核 1删除电话 2不确定房源 3真实房源 4中介房源 5房源已成交',
  `deal_time` int(11) DEFAULT '0' COMMENT '成交时间',
  `created` int(11) DEFAULT '0',
  `updated` int(11) DEFAULT '0',
  `source_id` int(11) unsigned DEFAULT '0' COMMENT '信息来源',
  `city_website_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '所属站点',
  `house_hall` tinyint(4) DEFAULT '0',
  `house_toilet` tinyint(4) DEFAULT '0',
  `house_veranda` tinyint(4) DEFAULT '0',
  `house_topfloor` tinyint(4) DEFAULT '0',
  `click_num` int(11) unsigned DEFAULT '0' COMMENT '点击数',
  `click_virtual` int(10) unsigned DEFAULT '0' COMMENT '虚拟点击数',
  `hide_phone` tinyint(4) DEFAULT '0' COMMENT '0显示电话  1隐藏电话',
  `report_count` int(11) DEFAULT '0' COMMENT '投诉次数',
  `truth_degree` tinyint(3) unsigned DEFAULT '0' COMMENT 'æˆ¿æºçœŸå®žåº¦0åˆ°100',
  `belong` tinyint(4) DEFAULT '0' COMMENT '产权',
  `house_title` varchar(120) NOT NULL DEFAULT '',
  `house_title_crc32` int(11) unsigned NOT NULL DEFAULT '0',
  `video` varchar(240) DEFAULT '',
  `house_age` int(4) unsigned DEFAULT '0' COMMENT '房龄',
  `house_thumb` varchar(100) DEFAULT '' COMMENT '缩略图',
  `keywords` varchar(30) DEFAULT '',
  `owner_name` varchar(18) DEFAULT '',
  `owner_phone` varchar(16) NOT NULL DEFAULT '' COMMENT '联系人电话',
  `owner_phone_crc32` int(11) unsigned DEFAULT '0',
  `owner_phone_pic` varchar(100) DEFAULT '' COMMENT '电话图片',
  `borough_name` varchar(60) DEFAULT '' COMMENT '小区名称',
  `house_address` varchar(60) DEFAULT '' COMMENT '房源地址',
  `wechat` varchar(60) DEFAULT '' COMMENT '用户微信号码',
  `qq` varchar(60) DEFAULT '' COMMENT '会员发布房源时的QQ号码',
  `promote_end_time` int(10) unsigned DEFAULT '0' COMMENT '推广过期时间',
  `is_cooperation` tinyint(3) unsigned DEFAULT '0' COMMENT '0普通房源 1经纪人合作房源',
  `elevator` tinyint(4) DEFAULT '0' COMMENT '有无电梯：0未填写  1有电梯  -1无电梯',
  `parking_lot` tinyint(4) DEFAULT '0' COMMENT '有无车位：0未填写  1有车位  -1没有车位',
  `bright_spot` varchar(120) DEFAULT '' COMMENT '房屋亮点',
  `parking_type` tinyint(3) unsigned DEFAULT '0' COMMENT '车位类型：1地上露天车位 2地上车库 3地下车库',
  `down_payment` decimal(10,0) unsigned DEFAULT '0' COMMENT '首付款',
  `first_floor_height` decimal(10,2) DEFAULT '0.00',
  `floor_type` tinyint(4) DEFAULT '0' COMMENT '楼层类型：1单层 2多层(独栋)',
  `data_update_time` int(10) unsigned DEFAULT '0' COMMENT '数据更新时间',
  `refresh_count` int(10) unsigned DEFAULT '0' COMMENT '刷新次数',
  `register` tinyint(4) DEFAULT '0' COMMENT '0不可注册  1可注册',
  PRIMARY KEY (`id`),
  KEY `created` (`created`),
  KEY `cityarea_id` (`cityarea_id`),
  KEY `city_website_id` (`city_website_id`) USING BTREE,
  KEY `updated` (`updated`) USING BTREE,
  KEY `mid` (`mid`),
  KEY `house_title_crc32` (`house_title_crc32`),
  KEY `owner_phone_crc32` (`owner_phone_crc32`),
  KEY `promote_end_time` (`promote_end_time`),
  KEY `data_update_time` (`data_update_time`)
) ENGINE=InnoDB AUTO_INCREMENT=11960931 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fke_housesell`
--

LOCK TABLES `fke_housesell` WRITE;
/*!40000 ALTER TABLE `fke_housesell` DISABLE KEYS */;
INSERT INTO `fke_housesell` VALUES (11960900,5905,5968,1,1,82,64,2,14,9,3,228903,2,0,1,0,0,0,-1,0,0,1672809054,1672979960,0,40,2,1,0,29,27,16,0,0,0,0,'九龙坡cmdl2室2厅1卫',335875805,'',2010,'house/sale/20230104/167280917325657.jpeg','九龙坡,','宋','17774988831',2572054017,'','重百大楼','','','',0,0,1,1,'',0,0,0.00,1,1672979960,2,0),(11960901,13458,17888,1,1,129.8,95,3,15,9,4,284437,1,0,1,0,0,0,1,0,0,1672813439,1672813439,0,273,2,1,0,19,6,13,0,0,0,3,'海景房 威海公园会展中心旁 一手环翠海韵华府C区3室2厅1卫',3498478209,'',2017,'house/rent/20230104/2394892644541346540981382004.jpg','环翠,南竹岛,南竹岛','杨志建','15688722070',2520772408,'','海韵华府C区','海韵华府C区','','',0,0,1,0,',2,10,',0,0,0.00,0,1672816407,0,0),(11960902,13462,17909,1,1,57.8,63.01,2,2,9,4,284437,1,0,1,0,0,0,1,0,0,1672813639,1672813639,0,273,2,1,0,7,5,15,0,0,0,3,'世昌大道 欧乐坊商圈 一品莲花城高区一品莲花城2室2厅1卫',2803857391,'',2000,'house/rent/20230104/2394893252569653342943286329.jpg','高区,田村,田村','杨志建','15688722070',2520772408,'','一品莲花城','一品莲花城','','',0,0,0,-1,',2,10,',0,0,0.00,0,1672816407,0,0),(11960903,13458,13468,1,1,58,81,3,4,9,4,284437,1,0,1,0,0,0,-1,0,0,1672814248,1672814248,0,273,2,1,0,6,10,14,0,0,0,3,'市中心统一路 樱泉国际旁 城里中学 环翠杏花街3室2厅1卫',3607023436,'',2000,'house/rent/20230104/2394894026437357592987859524.jpg','环翠,市中心,市中心','杨志建','15688722070',2520772408,'','杏花街','统一路','','',0,0,0,-1,',2,10,',0,0,0.00,0,1672816407,0,0),(11960904,512,3995,1,1,2,2,2,2,1,5,252960,1,1672882899,1,1,0,0,0,0,0,1672878617,1672929302,0,1,1,1,0,2,4,10,0,0,0,0,'昌平北七家2室1厅1卫',3449823955,'',1999,'house/sale/20230105/167287856318152.jpg','昌平,北七家,北七家','宋xc','18610851893',389799267,'','北七家','','','',0,0,0,0,',1,',0,0,0.00,0,1672929302,0,0),(11960905,512,3995,2,5,1,11,1,1,9,5,252960,1,1672882899,1,1,0,0,0,0,0,1672878949,1672929602,0,1,1,1,0,1,2,11,0,0,0,5,'出售昌平测试',2667649856,'',2001,'house/sale/20230105/167287894484197.jpg','昌平,北七家,北七家','宋xc','18610851893',389799267,'','测试','','','',0,0,0,0,'',0,0,0.00,1,1672929602,0,1),(11960906,512,3995,16,16,22,2,0,0,0,0,252960,1,1672882899,1,1,0,0,0,0,0,1672879000,1672929602,0,1,0,0,0,0,1,9,0,0,0,0,'出售昌平厂房',3113023818,'',0,'house/sale/20230105/167287898416318.jpg','昌平,北七家','宋xc','18610851893',389799267,'','','','','',0,0,0,0,'',0,2,2.00,1,1672929602,0,0),(11960907,507,3923,3,7,22,22,1,2,1,5,252960,1,1672882899,1,1,0,0,0,0,0,1672879104,1672929602,0,1,1,1,0,2,1,10,0,0,0,0,'出售石景山重聚园',1159193423,'',1999,'house/sale/20230105/167287909045587.jpg','石景山,鲁谷,鲁谷','宋xc','18610851893',389799267,'','重聚园','','','',0,0,0,0,'',0,0,0.00,0,1672929602,0,0),(11960908,507,3923,4,15,3,3,0,0,0,0,252960,1,1672882899,1,1,0,0,0,0,0,1672879163,1672929602,0,1,0,0,0,0,4,11,0,0,0,0,'出售石景山地上露天车位',3311139319,'',0,'house/sale/20230105/167287915395641.jpg','石景山,鲁谷','宋xc','18610851893',389799267,'','','','','',0,0,0,0,'',1,3,0.00,0,1672929602,0,0),(11960909,507,3923,17,17,22,22,0,0,0,0,252960,1,1672882899,1,1,0,0,0,0,0,1672879296,1672929902,0,1,0,0,0,0,2,13,0,0,0,0,'出售石景山仓库',3478989427,'',0,'house/sale/20230105/167287928744375.jpg','石景山,鲁谷','宋xc','18610851893',389799267,'','','','','',0,0,0,0,'',0,2,22.00,1,1672929902,0,0),(11960910,502,3712,1,1,69,25,3,-1,9,3,277289,2,1672879925,1,1,0,0,0,0,0,1672879834,1672930502,0,1,1,1,0,8,1,13,0,0,0,0,'海淀翠微北里3室1厅1卫',1364108372,'',2001,'house/sale/20230105/167287981287682.jpg','海淀,公主坟','宋女士','15116968196',1799038943,'','翠微北里','','','',0,0,0,0,'1',0,0,0.00,0,1672930502,0,0),(11960911,2710,18348,1,1,396,36,2,3,9,3,271441,1,1672968475,1,1,0,0,-1,0,0,1672880192,1672880192,0,354,1,1,0,9,10,10,0,0,0,0,'静安二手房出售APP2室1厅1卫',4005059204,'',2019,'house/sale/20230105/167288015224221.jpg','静安,大宁','夏女士','15230710655',237941985,'','二手房出售APP','','','',0,0,1,1,'1',0,0,0.00,0,1672968475,0,0),(11960912,502,3712,4,15,6,25,0,0,0,0,252960,1,1672882899,1,1,0,0,0,0,0,1672880245,1672930802,0,1,0,0,0,0,3,9,0,0,0,0,'出售海淀地上露天车位',1025128051,'',0,'house/sale/20230105/167288022836799.jpg','海淀,公主坟','宋xc','18610851893',389799267,'',NULL,'','','',0,0,0,0,NULL,1,1,0.00,0,1672930802,0,0),(11960913,502,3712,4,15,2,36,0,0,0,0,252960,1,1672882899,1,1,0,0,0,0,0,1672880272,1672930802,0,1,0,0,0,0,2,8,0,0,0,0,'出售海淀地上露天车位',1025128051,'',0,'house/sale/20230105/167288025660575.jpg','海淀,公主坟','宋xc','18610851893',389799267,'',NULL,'','','',0,0,0,0,NULL,1,1,0.00,0,1672930802,0,0),(11960914,502,3712,4,15,2,36,0,0,0,0,252960,1,1672882899,1,1,0,0,0,0,0,1672880332,1672930802,0,1,0,0,0,0,4,12,0,0,0,0,'出售海淀地上露天车位',1025128051,'',0,'house/sale/20230105/167288030558191.jpg','海淀,公主坟','宋xc','18610851893',389799267,'',NULL,'','','',0,0,0,0,NULL,1,1,0.00,0,1672930802,0,0),(11960915,502,3712,2,5,29,49,2,2,9,5,252960,1,1672887379,1,1,0,0,1,0,0,1672883339,1672930202,0,1,1,1,0,8,19,7,0,0,0,0,'出售海淀中联部小区',3952527580,'',2009,'house/sale/20230105/167288329174507.jpeg','海淀,','宋xc','18610851893',389799267,'','中联部小区','','','',0,0,0,0,'',0,0,0.00,1,1672930202,0,1),(11960916,502,3712,2,5,1,1,2,1,9,5,252960,1,1672887380,1,1,0,0,1,0,0,1672883792,1672930802,0,1,1,1,0,1,27,14,0,0,0,3,'出售海淀测试',4153815399,'',2001,'house/sale/20230105/167288378835920.jpg','海淀,公主坟,公主坟','宋xc','18610851893',389799267,'','测试','','','',0,0,0,0,'',0,0,0.00,1,1672930802,0,1),(11960917,9886,9960,1,1,120,80,2,3,9,3,249946,1,0,1,0,0,0,1,0,0,1672887026,1672887026,0,44,1,1,0,13,35,13,0,0,0,3,'汉阳二桥西村有独立院子2室1厅1卫出售',599879425,'',1990,'house/rent/20230105/2394998310039707317326938899.jpg','汉阳,郭茨口,郭茨口','肖女士','13971151571',253781327,'','二桥西村','二桥西村','','',0,0,1,1,'',0,0,0.00,0,1672887026,0,0),(11960918,9882,18864,1,1,175,98.38,3,6,3,3,284452,2,0,1,0,0,0,-1,0,0,1672896978,1672897402,0,44,2,1,0,31,30,10,0,0,0,3,'百步亭金桥汇 全新精装3房 老证 无遮挡 采光好',627573084,'',2016,'house/sale/20230105/167289696718800.jpg','江岸,塔子湖,塔子湖','吴先生','13349975337',3072195724,'','百步亭金桥汇','','','',0,0,1,-1,',3,6,7,',0,0,0.00,0,1672899144,0,0),(11960919,8776,0,16,16,780,1500,0,0,0,0,284454,2,0,1,0,0,0,-1,0,0,1672901201,1672901201,0,160,0,0,0,0,10,13,0,0,0,0,'出售生产产房研发车间50年大产权',2401888325,'',0,'house/sale/20230105/167290113671215.jpg','安次区,安次工业园','尹先生','15831645880',3327082212,'','','','','',0,0,0,0,'',0,3,7.80,2,1672906571,0,0),(11960920,8776,0,2,5,500,175,2,3,1,5,284454,2,0,1,0,0,0,1,0,0,1672901694,1672901694,0,160,1,1,0,3,17,11,0,0,0,2,'出售企业总部办公独栋，赠送私享庭院和阳光露台，可通燃气',584726643,'',2023,'house/sale/20230105/167290164851681.jpg','安次区,,安次工业园','尹先生','15831645880',3327082212,'','亿达未来廊坊数字产业新城','','','',0,0,0,0,'',0,0,0.00,0,1672906571,0,0),(11960921,2709,4178,3,7,393,33,3,3,9,3,61297,1,0,1,0,0,0,-1,0,0,1672965355,1673016000,0,354,1,1,0,9,27,6,0,0,0,0,'出售普陀商铺出售',2260207120,'',2020,'house/sale/20230106/167296518052752.jpg','普陀,光新,光新','房产小达人','15600236508',3551218080,'','商铺出售','','','',0,0,0,0,'',0,0,0.00,0,1673016000,0,0),(11960922,2707,16701,1,1,393,39,2,1,9,3,271441,1,1673053649,1,1,0,0,-1,0,0,1672969136,1672969136,0,354,1,1,0,9,5,6,0,0,0,0,'浦东二手房出售APP2室1厅1卫',1087233126,'',2021,'house/sale/20230106/167296908514864.jpg','浦东,大团镇','夏女士','15230710655',237941985,'','二手房出售APP','','','',0,0,0,0,'1',0,0,0.00,0,1673053649,0,0),(11960923,2703,4042,1,1,253,33.4,1,6,3,5,268415,4,0,1,0,0,0,-1,0,0,1672987930,1672987941,0,354,0,1,0,6,18,8,0,0,0,2,'长宁天山五村(4-681号)1室1卫',1161659536,'',1982,'house/sale/20230106/167298779026331.jpg','长宁,天山','张先生','13166357359',3979776402,'','天山五村(4-681号)','天山老五村','','',0,0,-1,1,'4,6,7,9,12',0,0,0.00,0,1672987930,0,0),(11960924,503,3767,3,7,950,211.73,2,1,2,3,125824,1,0,1,0,0,0,1,0,0,1672989605,1672989605,0,1,1,1,0,16,20,7,0,0,0,1,'出售朝阳商铺 带租户 年租金50万 回报率5个点',1828201464,'',2013,'house/sale/20230106/167298955857605.jpg','朝阳,北苑,北苑','张思远','17310180183',3712891763,'','城建N次方商铺','水岸南街19号','','',0,0,0,0,'',0,0,0.00,0,1672989605,0,0),(11960925,507,3920,3,7,666.94,158.8,2,1,2,1,125824,1,0,1,0,0,0,1,0,0,1672994353,1672994386,0,1,1,1,0,1,31,6,0,0,0,3,'出售石景山 有租户 租金高 总价低 带燃气 全业态',3686073824,'',2013,'house/sale/20230106/167299434147513.jpg','石景山,古城,古城','张思远','17310180183',3712891763,'','中海金玺公馆','古城西街','','',0,0,0,0,'',0,0,0.00,0,1672994353,0,0),(11960926,507,3920,3,7,666.92,158,2,1,2,1,125824,1,0,1,0,0,0,1,0,0,1672995567,1672995567,0,1,1,1,0,1,17,8,0,0,0,3,'石景山带燃气使用面积220平米全业态可餐饮中海金玺公馆',3983531170,'',2013,'house/sale/20230106/167299555430102.jpg','石景山,古城,古城','张思远','17310180183',3712891763,'','中海金玺公馆','古城西街','','',0,0,0,0,'',0,0,0.00,0,1672995567,0,0),(11960927,10912,11015,2,5,318,300,2,16,1,5,279875,1,0,1,0,0,0,1,0,0,1673000229,1673070141,0,45,1,1,0,18,10,7,0,0,0,0,'大桥北双地铁甲级办公新盘 自用投资俱佳 弘阳广场旁英发星荟',1713626998,'',2022,'house/sale/20230106/167300017063884.jpg','浦口,桥北,桥北','董淑康','15950465403',3740203049,'','英发星荟中心','大桥北路弘阳广场对面','','',0,0,0,0,'',0,0,0.00,1,1673070141,1,0),(11960928,2706,4098,1,1,393,33,3,3,9,3,61297,1,0,1,0,0,0,-1,0,0,1673051171,1673076600,0,354,1,1,0,9,40,2,0,0,0,0,'徐汇二手房出售二手房出售3室1厅1卫',381267448,'',2002,'house/sale/20230107/167305107154255.jpg','徐汇,华东理工,华东理工','房产小达人','15600236508',3551218080,'','二手房出售二手房出售','','','',0,0,1,1,',1,',0,0,0.00,0,1673076600,0,0),(11960929,2707,16701,1,1,396,36,2,3,9,3,271441,1,0,1,0,0,0,-1,0,0,1673053685,1673053685,0,354,1,1,0,9,22,4,0,0,0,0,'浦东二手房出售小程序2室1厅1卫',3969720969,'',2019,'house/sale/20230107/167305366056458.jpg','浦东,','夏女士','15230710655',237941985,'','二手房出售小程序','','','',0,0,1,1,',1,',0,0,0.00,1,1673053685,0,0),(11960930,10909,20301,2,5,190,127,2,6,6,5,279875,1,0,1,0,0,0,1,0,0,1673070453,1673070453,0,45,1,1,0,23,13,2,0,0,0,0,'南部新城 地铁口品质甲写（复地活力）卡子门大街98平起售',3420231701,'',2022,'house/sale/20230107/167307041972450.jpg','秦淮,卡子门,卡子门','董淑康','15950465403',3740203049,'','复地活力广场','卡子门大街99号','','',0,0,0,0,'',0,0,0.00,1,1673070453,0,0);
/*!40000 ALTER TABLE `fke_housesell` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fke_housesell_check_log`
--

DROP TABLE IF EXISTS `fke_housesell_check_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fke_housesell_check_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `house_id` int(11) unsigned DEFAULT '0',
  `operation_type` tinyint(3) unsigned DEFAULT '0' COMMENT '操作类型：0待审核 1删除电话 2不确定房源 3真实房源 4中介房源 5房源已成交',
  `admin_id` int(11) DEFAULT NULL,
  `admin_name` varchar(20) DEFAULT NULL,
  `admin_note` varchar(255) DEFAULT NULL COMMENT '审核时备注信息',
  `add_time` int(11) unsigned DEFAULT '0' COMMENT '添加时间，审核时间',
  PRIMARY KEY (`id`),
  KEY `house_id` (`house_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5506976 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fke_housesell_check_log`
--

LOCK TABLES `fke_housesell_check_log` WRITE;
/*!40000 ALTER TABLE `fke_housesell_check_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `fke_housesell_check_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fke_housesell_extend`
--

DROP TABLE IF EXISTS `fke_housesell_extend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fke_housesell_extend` (
  `house_id` int(11) unsigned NOT NULL,
  `cityarea2_name` varchar(60) DEFAULT '',
  `house_feature` varchar(30) DEFAULT '',
  `house_support` varchar(30) DEFAULT '' COMMENT '配套设施',
  `source_url` varchar(250) DEFAULT '',
  `check_type` tinyint(3) unsigned DEFAULT '0' COMMENT '0正常 1非法电话 2非法网址 3非法关键字',
  `check_note` varchar(120) DEFAULT '',
  `words` varchar(240) DEFAULT '' COMMENT '非法关键字',
  `owner_notes` varchar(120) DEFAULT '',
  `house_desc` text,
  PRIMARY KEY (`house_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fke_housesell_extend`
--

LOCK TABLES `fke_housesell_extend` WRITE;
/*!40000 ALTER TABLE `fke_housesell_extend` DISABLE KEYS */;
INSERT INTO `fke_housesell_extend` VALUES (0,'','','','',0,'','','','一、推荐理由：\n\n\n黄金楼层 2楼  128平 3室 2厅 豪华装修 户型超好 有地上的车库另加12万\n\n1. 房子豪华装修，看房子方便，业主急售\n\n2.房子南北 通透\n\n3.小区环境好，交通便利\n\n4.紧邻潍坊 恒信学校 \n\n二、交通状况：乘4路丶5路公交车到高架桥东下车即可到达该项目\n\n三、周边信息便 ： \n1.商场: 红星美凯龙,百汇大市场\n\n2.医院:寒亭区第三人民医院 \n\n3.银行:农行\n\n4. \n\n 四、教学机构\n\n中小学: 寒亭外国语小学,实验中学,渤海学校,寒亭一中\n大学:潍坊华洋水运学校\n\n\n    同时推荐以下房源，欢迎来电咨询：'),(362,'','','','',0,'','','','<p>出售的房子位于西南二环外广外马连道茶叶街，小区环境良好，物业管理完善，停车位充足！\r\n现出售的房子为西向，正对家乐福，茶贸最好位置。落地飘窗，采光绝好！\r\n房间内宽敞明亮，有独立的卫浴，私密性好！双层玻璃！\r\n由小区到地铁仅800米即到，有直达西单、航天桥、公主坟的公交车！大大提高了出行的便利！\r\n因小区在商业街内，购物十分方便！有大型的购物超市、菜市场、餐馆、茶楼等！</p><p>此房急售，35平米，外围西向，106.6万含税含佣！</p>'),(1829,'','','','',0,'','','','小区位置好 楼层低 房型好 南北通透，配套齐全 交通方便 公交车站 地铁六号线大毕庄站 小区内设菜市场 超市 药店 社区卫生院 幼儿园 学校 饭店 娱乐。小区内设车位 物业管理好 居民素质好 小区环境干净 整洁，随时看房 欢迎来电咨询13072205736'),(3247,'','','',NULL,0,NULL,'','','火车北站 轨道旺铺 热销 门面 升值潜力无限 \r\n旺铺介绍:　热销旺铺，套内16-233㎡,主力面积41-67㎡，全临街布局，轻轨出口的步行街.对面有多个大型商业体在建中.即将形成火车北广场商圈. 另重庆火车北站北广场即将建好将与本商业体融为一体.\r\n交通便利：主城新兴商圈，四通八达的交通网络，轻轨3号线龙头寺站出站即到；20分钟高速抵达江北机场。\r\n周边配套： 各大型商场入驻，前有世界500强“麦德龙“、全球最大家具零售“宜家家居”、“西部奥特莱斯购物广场”68万方体量国际生活圈，住宅、商业、教育一体，多业态选择钱景无限。\r\n欢迎来电,咨询热线158-2355-0246小陈\r\n'),(3342,'','','',NULL,0,NULL,'','','火车北站 轨道旺铺 热销 门面 升值潜力无限 \r\n旺铺介绍:　热销旺铺，套内16-233㎡,主力面积41-67㎡，全临街布局，轻轨出口的步行街.对面有多个大型商业体在建中.即将形成火车北广场商圈. 另重庆火车北站北广场即将建好将与本商业体融为一体.\r\n交通便利：主城新兴商圈，四通八达的交通网络，轻轨3号线龙头寺站出站即到；20分钟高速抵达江北机场。\r\n周边配套： 各大型商场入驻，前有世界500强“麦德龙“、全球最大家具零售“宜家家居”、“西部奥特莱斯购物广场”68万方体量国际生活圈，住宅、商业、教育一体，多业态选择钱景无限。\r\n欢迎来电,咨询热线158-2355-0246小陈\r\n'),(4888,'','','','',0,'','','','<p>保利江上明珠占地1000亩，以3000亩鸿恩寺森林公园为中心环绕分布。可建总面积125.3万平米，容积率2.1，规划为别墅、洋房和高层三种建筑形态。区域周边商业、餐饮、娱乐、休闲配套十分完善。1：一期馨园套内使用面积125的标准4房双卫双阳台，内圈位置，非常安静，亏本急售150万。2：还有套二期畅园精装修拎包入住的标准3房，亏本急售135万，这些房子（都无营业税哈）都有钥匙在手，随时看房联系廖老师[1361-769-7669也是微信号].</p>'),(6905,'','','','',0,'','','','真心为您服务找到心意的房源\r\n龙居花园坐落在津港公路东侧 与梨双路交口处 本区坐落在龙居中心地带 门口是628路公交总站 商业街 大型购物广场 成熟社区 交通购物方便 配套设施齐全 本房位置好 出入方便 房型好 南北通透  紧邻商业街 吃饭购物都方便 门口有各个公司班车 非常便利 有意者请联系。随时入住 居住办公均可 如果您对本房不满意 请您点击我的头像 进入我的公司 里面有好多房源供您参考！'),(7864,'','','',NULL,0,NULL,'','','北京南站角门东地铁站附近2居精装修出售  复试楼  7克拉小区  有意联系  中介勿扰1.、超低总价无税、业主诚意出售，价格可议，比同类型户型价格低\r\n2.适合客户群体自由购、自由贷、婚房、白领首次置业、长线、短线投资客户投资、年投资率70%--100%左右，客户需求量大，成交率高，低风险，高\r\n3.随时看房业主已将钥匙委托给了我，随时可以带您去看房；\r\n4.生活配套华联商场、收地大峡谷商场，保利影院、华谊兄弟影视城、超市有家乐福、华联超市、乐天马特、美廉美、苏宁电器、国美、大中电器等非常完善的国际标准生活配套\r\n5.紧近地铁1 0号地铁线角门东站，4号线步行5分钟公益西桥站，上班方便\r\n6.周边交通48路、66路、698路、957路、运通107路、运通108路、485路、343路、501路、14路、511路、5路、529路、70路、613路、707路、603路等交通便利\r\n7.周边学校赵登禹小学、中学、丰师附小、马家堡小学、角门中学、北京市第十八中学、西马小学、嘉德双语幼儿园，教育配套设施齐全\r\n8.周边医院月坛医院、马家堡医院、丰台妇幼保健医院、博爱医院、同仁京苑医院、丰台区京材医院、佑安医院、北京安太医院等\r\n对本套房源感兴趣？可立即致电[见上方联系方式]，金都地产老张自我介绍我是金都地产一名普通的经纪人，已从业房地产10余年，很喜欢这份工作，每成交一单都会让我充满成就感，客户对我的评价是真诚和用心，目前我主做马家堡、大红门、角门商圈二手房业务，如果您有租房或出租需求，欢迎随时来电，我将尽“”努力为您提供购房建议，解答二手房交易的相关问题');
/*!40000 ALTER TABLE `fke_housesell_extend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fke_housesell_mobile_auth`
--

DROP TABLE IF EXISTS `fke_housesell_mobile_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fke_housesell_mobile_auth` (
  `house_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '房源ID',
  `mobile_auth_code` varchar(6) DEFAULT '' COMMENT '手机验证码',
  `sms_send_time` int(11) unsigned DEFAULT '0' COMMENT '短信发送时间',
  `sms_send_count` int(11) unsigned DEFAULT '0' COMMENT '短信发送次数',
  PRIMARY KEY (`house_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fke_housesell_mobile_auth`
--

LOCK TABLES `fke_housesell_mobile_auth` WRITE;
/*!40000 ALTER TABLE `fke_housesell_mobile_auth` DISABLE KEYS */;
/*!40000 ALTER TABLE `fke_housesell_mobile_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fke_housesell_pic`
--

DROP TABLE IF EXISTS `fke_housesell_pic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fke_housesell_pic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(10) unsigned DEFAULT '0',
  `pic_url` varchar(100) NOT NULL DEFAULT '',
  `pic_thumb` varchar(100) DEFAULT '',
  `pic_desc` varchar(120) DEFAULT '',
  `house_id` int(11) unsigned NOT NULL DEFAULT '0',
  `order_sort` tinyint(3) unsigned DEFAULT '0' COMMENT '排序',
  `addtime` int(11) unsigned DEFAULT '0',
  `is_checked` tinyint(4) DEFAULT '0' COMMENT '0待审 1审核通过 -1审核失败',
  `is_main` tinyint(4) DEFAULT '0' COMMENT '是否是主图',
  `is_collect` tinyint(4) DEFAULT '0' COMMENT '0普通 1采集',
  `admin_name` varchar(20) DEFAULT '',
  `checked_time` int(11) unsigned DEFAULT '0' COMMENT '审核时间',
  `is_uploaded` tinyint(4) DEFAULT '0',
  `is_delete` tinyint(4) DEFAULT '0' COMMENT '0æœªåˆ é™¤ 1å·²åˆ é™¤',
  `upload_device` tinyint(3) unsigned DEFAULT '0' COMMENT '上传设备：1电脑 2手机 3微信',
  `wechat_token_id` int(10) unsigned DEFAULT '0' COMMENT '微信传图当前Token对应的ID值',
  PRIMARY KEY (`id`),
  KEY `checked_time` (`checked_time`),
  KEY `house_id` (`house_id`) USING BTREE,
  KEY `is_checked` (`is_checked`),
  KEY `mid` (`mid`),
  KEY `is_delete` (`is_delete`) USING BTREE,
  KEY `addtime` (`addtime`),
  KEY `addtime_2` (`addtime`),
  KEY `wechat_token_id` (`wechat_token_id`)
) ENGINE=InnoDB AUTO_INCREMENT=82538453 DEFAULT CHARSET=utf8
/*!50100 PARTITION BY RANGE (id)
(PARTITION p0 VALUES LESS THAN (15000001) ENGINE = InnoDB,
 PARTITION p1 VALUES LESS THAN (20000001) ENGINE = InnoDB,
 PARTITION p2 VALUES LESS THAN (25000001) ENGINE = InnoDB,
 PARTITION p3 VALUES LESS THAN (28000001) ENGINE = InnoDB,
 PARTITION p4 VALUES LESS THAN (30000001) ENGINE = InnoDB,
 PARTITION p5 VALUES LESS THAN (32000001) ENGINE = InnoDB,
 PARTITION P6 VALUES LESS THAN (34000001) ENGINE = InnoDB,
 PARTITION P7 VALUES LESS THAN (36000001) ENGINE = InnoDB,
 PARTITION p8 VALUES LESS THAN (38000001) ENGINE = InnoDB,
 PARTITION p9 VALUES LESS THAN (40000001) ENGINE = InnoDB,
 PARTITION P10 VALUES LESS THAN (42000001) ENGINE = InnoDB,
 PARTITION P11 VALUES LESS THAN (44000001) ENGINE = InnoDB,
 PARTITION P12 VALUES LESS THAN (46000001) ENGINE = InnoDB,
 PARTITION P13 VALUES LESS THAN (48000001) ENGINE = InnoDB,
 PARTITION P14 VALUES LESS THAN (50000001) ENGINE = InnoDB,
 PARTITION P15 VALUES LESS THAN (52000001) ENGINE = InnoDB,
 PARTITION P16 VALUES LESS THAN (54000001) ENGINE = InnoDB,
 PARTITION P17 VALUES LESS THAN (56000001) ENGINE = InnoDB,
 PARTITION P18 VALUES LESS THAN (58000001) ENGINE = InnoDB,
 PARTITION P19 VALUES LESS THAN (60000001) ENGINE = InnoDB,
 PARTITION P20 VALUES LESS THAN (62000001) ENGINE = InnoDB,
 PARTITION P21 VALUES LESS THAN (64000001) ENGINE = InnoDB,
 PARTITION P22 VALUES LESS THAN (66000001) ENGINE = InnoDB,
 PARTITION P23 VALUES LESS THAN (68000001) ENGINE = InnoDB,
 PARTITION P24 VALUES LESS THAN (70000001) ENGINE = InnoDB,
 PARTITION P25 VALUES LESS THAN (72000001) ENGINE = InnoDB,
 PARTITION P26 VALUES LESS THAN (74000001) ENGINE = InnoDB,
 PARTITION P27 VALUES LESS THAN (76000001) ENGINE = InnoDB,
 PARTITION P28 VALUES LESS THAN (78000001) ENGINE = InnoDB,
 PARTITION P29 VALUES LESS THAN (80000001) ENGINE = InnoDB,
 PARTITION P30 VALUES LESS THAN (82000001) ENGINE = InnoDB,
 PARTITION P31 VALUES LESS THAN (84000001) ENGINE = InnoDB) */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fke_housesell_pic`
--

LOCK TABLES `fke_housesell_pic` WRITE;
/*!40000 ALTER TABLE `fke_housesell_pic` DISABLE KEYS */;
INSERT INTO `fke_housesell_pic` VALUES (82538420,122699,'house/sale/20230107/167307803066987.jpg','house/sale/20230107/167307803066987.jpg','',0,0,1673078030,0,0,0,'',0,1,0,1,0),(82538421,122699,'house/sale/20230107/167307803028578.jpg','house/sale/20230107/167307803028578.jpg','',0,0,1673078031,0,0,0,'',0,1,0,1,0),(82538422,122699,'house/sale/20230107/167307803332220.jpg','house/sale/20230107/167307803332220.jpg','',0,0,1673078034,0,0,0,'',0,1,0,1,0),(82538423,122699,'house/sale/20230107/167307803512189.jpg','house/sale/20230107/167307803512189.jpg','',0,0,1673078035,0,0,0,'',0,1,0,1,0),(82538424,122699,'house/sale/20230107/167307803591159.jpg','house/sale/20230107/167307803591159.jpg','',0,0,1673078036,0,0,0,'',0,1,0,1,0),(82538425,122699,'house/sale/20230107/167307803693491.jpg','house/sale/20230107/167307803693491.jpg','',0,0,1673078037,0,0,0,'',0,1,0,1,0),(82538426,122699,'house/sale/20230107/167307804765238.jpg','house/sale/20230107/167307804765238.jpg','',0,0,1673078051,0,0,0,'',0,1,0,1,0),(82538427,122699,'house/sale/20230107/167307805129194.jpg','house/sale/20230107/167307805129194.jpg','',0,0,1673078054,0,0,0,'',0,1,0,1,0),(82538428,122699,'house/sale/20230107/167307805516365.jpg','house/sale/20230107/167307805516365.jpg','',0,0,1673078056,0,0,0,'',0,1,0,1,0),(82538429,122699,'house/sale/20230107/167307805988121.jpg','house/sale/20230107/167307805988121.jpg','',0,0,1673078062,0,0,0,'',0,1,0,1,0),(82538430,122699,'house/sale/20230107/167307806321029.jpg','house/sale/20230107/167307806321029.jpg','',0,0,1673078063,0,0,0,'',0,1,0,1,0),(82538431,122699,'house/sale/20230107/167307806499363.jpg','house/sale/20230107/167307806499363.jpg','',0,0,1673078065,0,0,0,'',0,1,0,1,0),(82538432,122699,'house/sale/20230107/167307806519151.jpg','house/sale/20230107/167307806519151.jpg','',0,0,1673078066,0,0,0,'',0,1,0,1,0),(82538433,122699,'house/sale/20230107/167307807695830.jpg','house/sale/20230107/167307807695830.jpg','',0,0,1673078078,0,0,0,'',0,1,0,1,0),(82538434,122699,'house/sale/20230107/167307807974264.jpg','house/sale/20230107/167307807974264.jpg','',0,0,1673078079,0,0,0,'',0,1,0,1,0),(82538435,122699,'house/sale/20230107/167307808017318.jpg','house/sale/20230107/167307808017318.jpg','',0,0,1673078081,0,0,0,'',0,1,0,1,0),(82538436,122699,'house/sale/20230107/167307808260952.jpg','house/sale/20230107/167307808260952.jpg','',0,0,1673078082,0,0,0,'',0,1,0,1,0),(82538437,122699,'house/sale/20230107/167307808572444.jpg','house/sale/20230107/167307808572444.jpg','',0,0,1673078086,0,0,0,'',0,1,0,1,0),(82538438,122699,'house/sale/20230107/167307808743334.jpg','house/sale/20230107/167307808743334.jpg','',0,0,1673078087,0,0,0,'',0,1,0,1,0),(82538439,122699,'house/sale/20230107/167307808782745.jpg','house/sale/20230107/167307808782745.jpg','',0,0,1673078087,0,0,0,'',0,1,0,1,0),(82538440,122699,'house/sale/20230107/167307808881881.jpg','house/sale/20230107/167307808881881.jpg','',0,0,1673078088,0,0,0,'',0,1,0,1,0),(82538441,122699,'house/sale/20230107/167307808987978.jpg','house/sale/20230107/167307808987978.jpg','',0,0,1673078089,0,0,0,'',0,1,0,1,0),(82538442,122699,'house/sale/20230107/167307809087152.jpg','house/sale/20230107/167307809087152.jpg','',0,0,1673078091,0,0,0,'',0,1,0,1,0),(82538443,122699,'house/sale/20230107/167307809111017.jpg','house/sale/20230107/167307809111017.jpg','',0,0,1673078091,0,0,0,'',0,1,0,1,0),(82538444,122699,'house/sale/20230107/167307809250766.jpg','house/sale/20230107/167307809250766.jpg','',0,0,1673078092,0,0,0,'',0,1,0,1,0),(82538445,122699,'house/sale/20230107/167307809428195.jpg','house/sale/20230107/167307809428195.jpg','',0,0,1673078096,0,0,0,'',0,1,0,1,0),(82538446,122699,'house/sale/20230107/167307809734351.jpg','house/sale/20230107/167307809734351.jpg','',0,0,1673078098,0,0,0,'',0,1,0,1,0),(82538447,122699,'house/sale/20230107/167307809850740.jpg','house/sale/20230107/167307809850740.jpg','',0,0,1673078098,0,0,0,'',0,1,0,1,0),(82538448,122699,'house/sale/20230107/167307809985333.jpg','house/sale/20230107/167307809985333.jpg','',0,0,1673078099,0,0,0,'',0,1,0,1,0),(82538449,122699,'house/sale/20230107/167307809955687.jpg','house/sale/20230107/167307809955687.jpg','',0,0,1673078100,0,0,0,'',0,1,0,1,0),(82538450,122699,'house/sale/20230107/167307810281349.jpg','house/sale/20230107/167307810281349.jpg','',0,0,1673078102,0,0,0,'',0,1,0,1,0);
/*!40000 ALTER TABLE `fke_housesell_pic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fke_housesell_short_data`
--

DROP TABLE IF EXISTS `fke_housesell_short_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fke_housesell_short_data` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `column_type` tinyint(3) unsigned DEFAULT '0',
  `house_title` varchar(120) DEFAULT '',
  `house_title_crc32` int(10) unsigned DEFAULT '0',
  `owner_phone` varchar(16) DEFAULT '',
  `owner_phone_crc32` int(10) unsigned DEFAULT '0',
  `city_website_id` int(10) unsigned DEFAULT '0',
  `created` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `house_title_crc32` (`house_title_crc32`),
  KEY `owner_phone_crc32` (`owner_phone_crc32`),
  KEY `created` (`created`),
  KEY `city_website_id` (`city_website_id`),
  KEY `column_type` (`column_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fke_housesell_short_data`
--

LOCK TABLES `fke_housesell_short_data` WRITE;
/*!40000 ALTER TABLE `fke_housesell_short_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `fke_housesell_short_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fke_member`
--

DROP TABLE IF EXISTS `fke_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fke_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) DEFAULT NULL,
  `passwd` varchar(32) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `new_email` varchar(50) DEFAULT '',
  `email_auth_code` varchar(64) DEFAULT NULL,
  `email_checked` tinyint(4) DEFAULT '0' COMMENT '0未认证 1已认证',
  `email_send_time` int(10) unsigned DEFAULT NULL,
  `user_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 是商家 2是个人会员',
  `user_type_sub` tinyint(3) unsigned DEFAULT '0' COMMENT '会员类型子类',
  `user_type_custom` varchar(60) DEFAULT '',
  `logins` int(11) DEFAULT '0',
  `score` int(10) DEFAULT '0' COMMENT '积分',
  `frozen_score` int(10) DEFAULT '0' COMMENT '冻结的积分',
  `increased_score` int(10) unsigned DEFAULT '0' COMMENT '增加的积分',
  `money` decimal(10,2) DEFAULT '0.00',
  `frozen_money` decimal(10,2) DEFAULT '0.00' COMMENT '冻结的余额',
  `sell_num` int(11) DEFAULT '0',
  `rent_num` int(11) NOT NULL DEFAULT '0',
  `last_login` int(11) DEFAULT '0',
  `active_str` varchar(14) DEFAULT NULL,
  `active_rate` int(11) DEFAULT '0',
  `active_total` int(11) DEFAULT '0',
  `order_weight` float DEFAULT '0',
  `top_day` tinyint(4) DEFAULT '0',
  `add_time` int(11) DEFAULT NULL,
  `is_index` tinyint(4) DEFAULT '0',
  `addsale` int(11) DEFAULT '0',
  `addrent` int(11) DEFAULT '0',
  `vip` tinyint(4) DEFAULT '0',
  `vexation` int(11) DEFAULT '0',
  `company_id` int(11) DEFAULT NULL,
  `restkey` varchar(64) DEFAULT NULL,
  `expiration_time` int(10) unsigned DEFAULT NULL,
  `day_refresh` int(10) unsigned DEFAULT '0',
  `count_datetime` int(10) unsigned DEFAULT '0',
  `sum_refresh` int(10) unsigned DEFAULT '0',
  `account_open` tinyint(4) DEFAULT '1' COMMENT '0禁用账户 1正常',
  `login_error_times` tinyint(3) unsigned DEFAULT '0' COMMENT '登录失败次数',
  `login_time` int(10) unsigned DEFAULT '0' COMMENT '登录时间',
  `last_login_ip` int(10) unsigned DEFAULT '0' COMMENT '最近登录的IP',
  `web_host_id` int(10) unsigned DEFAULT '0' COMMENT '站点ID',
  `disabled` tinyint(4) DEFAULT '0' COMMENT '是否采集的用户',
  `disabled_count` int(10) unsigned DEFAULT '0' COMMENT '采集用户禁用次数',
  `disabled_time` int(10) unsigned DEFAULT '0' COMMENT '禁用时间，或是封账户时间',
  PRIMARY KEY (`id`),
  KEY `username` (`username`) USING BTREE,
  KEY `active_rate` (`active_rate`) USING BTREE,
  KEY `disabled_time` (`disabled_time`),
  KEY `user_type` (`user_type`),
  KEY `account_open` (`account_open`)
) ENGINE=InnoDB AUTO_INCREMENT=284221 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fke_member`
--

LOCK TABLES `fke_member` WRITE;
/*!40000 ALTER TABLE `fke_member` DISABLE KEYS */;
INSERT INTO `fke_member` VALUES (284190,'18476888764','','','',NULL,0,NULL,2,0,'',1,5010,0,5010,0.00,0.00,0,0,1670817135,NULL,0,0,0,0,1670815587,0,0,0,0,0,NULL,NULL,NULL,0,0,0,1,0,0,2004550415,3,0,0,0),(284191,'15694552431','','','',NULL,0,NULL,3,4,'',1,5000,0,0,0.00,0.00,0,0,1670913439,'0|0|0|0|0|0|0',0,0,0,0,1670825500,0,0,0,0,0,NULL,NULL,NULL,0,0,0,1,0,0,2105049253,3,0,0,0),(284192,'18923441436','','','',NULL,0,NULL,3,1,'',1,4804,0,5004,0.00,0.00,0,0,1670925824,NULL,0,0,0,0,1670829529,0,0,0,0,0,NULL,NULL,NULL,0,0,0,1,0,0,235951620,3,0,0,0),(284193,'13760158456','','','',NULL,0,NULL,2,0,'',1,5000,0,0,0.00,0.00,0,0,1670831592,'0|0|0|0|0|0|0',0,0,0,0,1670830709,0,0,0,0,0,NULL,NULL,NULL,0,0,0,1,0,1670831592,3748151470,3,0,0,0),(284194,'17326188696','','','',NULL,0,NULL,2,0,'',1,5000,0,5000,0.00,0.00,0,0,1670833054,NULL,0,0,0,0,1670833054,0,0,0,0,0,NULL,NULL,NULL,0,0,0,1,0,0,986818342,3,0,0,0),(284195,'18122084416','','','',NULL,0,NULL,2,0,'',1,5000,0,5000,0.00,0.00,0,0,1670835003,NULL,0,0,0,0,1670835003,0,0,0,0,0,NULL,NULL,NULL,0,0,0,1,0,0,245062372,3,0,0,0),(284196,'13940686260','','','',NULL,0,NULL,2,0,'',1,5000,0,5000,0.00,0.00,0,0,1670837880,'0|0|0|0|0|0|0',0,0,0,0,1670837880,0,0,0,0,0,NULL,NULL,NULL,0,0,0,1,0,0,3066837304,3,0,0,0),(284197,'18522470601','','','',NULL,0,NULL,2,0,'',1,4905,0,2,0.00,0.00,0,0,1670840297,'0|0|0|0|0|0|0',0,0,0,0,1670838629,0,0,0,0,0,NULL,NULL,NULL,0,0,0,1,0,0,1864497834,3,0,0,0),(284198,'15867467197','','','',NULL,0,NULL,2,0,'',1,5000,0,5000,0.00,0.00,0,0,1670846774,'0|0|0|0|0|0|0',0,0,0,0,1670846764,0,0,0,0,0,NULL,NULL,NULL,0,0,0,1,0,1670846774,1943492921,3,0,0,0),(284199,'18848261187','','','',NULL,0,NULL,2,0,'',1,5000,0,5000,0.00,0.00,0,0,1670893769,'0|0|0|0|0|0|0',0,0,0,0,1670893302,0,0,0,0,0,NULL,NULL,NULL,0,0,0,1,0,0,1857555019,3,0,0,0),(284200,'15557118007','','','',NULL,0,NULL,2,0,'',1,5000,0,5000,0.00,0.00,0,0,1670899836,NULL,0,0,0,0,1670899187,0,0,0,0,0,NULL,NULL,NULL,0,0,0,1,0,0,3545951665,3,0,0,0),(284201,'fyw_03044672','','','',NULL,0,NULL,0,0,'',1,5000,0,5000,0.00,0.00,0,0,1670901090,'0|0|0|0|0|0|0',0,0,0,0,1670901090,0,0,0,0,0,NULL,NULL,NULL,0,0,0,1,0,0,3063238166,3,0,0,0),(284202,'13651628968','','','',NULL,0,NULL,1,0,'',1,4406,0,5006,0.00,0.00,0,0,1670904283,NULL,0,0,0,0,1670904283,0,0,0,0,0,NULL,NULL,NULL,0,0,0,1,0,0,3748189323,3,0,0,0),(284203,'18721101006','','','',NULL,0,NULL,1,0,'',1,10010,0,10010,0.00,0.00,0,0,1670906077,NULL,0,0,0,0,1670906077,0,0,0,0,0,NULL,NULL,NULL,0,0,0,1,0,0,1918299636,3,0,0,0),(284204,'13761176521','','','',NULL,0,NULL,2,0,'',1,5000,0,5000,0.00,0.00,0,0,1670906270,NULL,0,0,0,0,1670906270,0,0,0,0,0,NULL,NULL,NULL,0,0,0,1,0,0,3703881872,3,0,0,0),(284205,'18613841758','','','',NULL,0,NULL,2,0,'',1,5000,0,0,0.00,0.00,0,0,1670918564,'0|0|0|0|0|0|0',0,0,0,0,1670918262,0,0,0,0,0,NULL,NULL,NULL,0,0,0,1,0,1670918263,997038936,3,0,0,0),(284206,'19876271393','','','',NULL,0,NULL,1,0,'',2,5000,0,0,0.00,0.00,0,0,1670923188,'0|0|0|0|0|0|0',0,0,0,0,1670921398,0,0,0,0,0,NULL,NULL,NULL,0,0,0,1,0,1670921867,2067464358,3,0,0,0),(284207,'19532532459','','','',NULL,0,NULL,1,0,'',1,5000,0,5000,0.00,0.00,0,0,1670923376,NULL,0,0,0,0,1670921698,0,0,0,0,0,NULL,NULL,NULL,0,0,0,1,0,0,1883245762,3,0,0,0),(284208,'15221133892','','','',NULL,0,NULL,3,2,'',1,5000,0,5000,0.00,0.00,0,0,1670925047,NULL,0,0,0,0,1670925047,0,0,0,0,0,NULL,NULL,NULL,0,0,0,1,0,0,3728738295,3,0,0,0),(284209,'fyw_32875513','','','',NULL,0,NULL,0,0,'',1,5000,0,5000,0.00,0.00,0,0,1670925829,'0|0|0|0|0|0|0',0,0,0,0,1670925829,0,0,0,0,0,NULL,NULL,NULL,0,0,0,1,0,0,3748150506,3,0,0,0),(284210,'17035329999','','','',NULL,0,NULL,1,0,'',1,5000,0,5000,0.00,0.00,0,0,1670928554,NULL,0,0,0,0,1670928554,0,0,0,0,0,NULL,NULL,NULL,0,0,0,1,0,0,1974701745,3,0,0,0),(284211,'13188983109','','','',NULL,0,NULL,0,0,'',1,5000,0,5000,0.00,0.00,0,0,1670936046,'0|0|0|0|0|0|0',0,0,0,0,1670935728,0,0,0,0,0,NULL,NULL,NULL,0,0,0,1,0,0,2574737917,3,0,0,0),(284212,'fyw_80345319','','','',NULL,0,NULL,0,0,'',1,5000,0,5000,0.00,0.00,0,0,1670983217,NULL,0,0,0,0,1670982552,0,0,0,0,0,NULL,NULL,NULL,0,0,0,1,0,0,1971873021,3,0,0,0),(284213,'13856832178','','','',NULL,0,NULL,0,0,'',1,5000,0,5000,0.00,0.00,0,0,1670983544,NULL,0,0,0,0,1670983544,0,0,0,0,0,NULL,NULL,NULL,0,0,0,1,0,0,1971877040,3,0,0,0),(284214,'fyw_08177547','','','',NULL,0,NULL,0,0,'',1,5000,0,5000,0.00,0.00,0,0,1670984982,NULL,0,0,0,0,1670984982,0,0,0,0,0,NULL,NULL,NULL,0,0,0,1,0,0,1971877040,3,0,0,0),(284215,'13143575291','','','',NULL,0,NULL,3,2,'',1,5003,0,0,0.00,0.00,0,0,1670985926,'0|0|0|0|0|0|0',0,0,0,0,1670984990,0,0,0,0,0,NULL,NULL,NULL,0,0,0,1,0,1670984991,1885360590,3,0,0,0),(284216,'16750010608','','','',NULL,0,NULL,2,0,'',1,5000,0,0,0.00,0.00,0,0,1670987898,'0|0|0|0|0|0|0',0,0,0,0,1670985354,0,0,0,0,0,NULL,NULL,NULL,0,0,0,1,0,1670985354,1942075238,3,0,0,0),(284217,'15001096662','','','',NULL,0,NULL,0,0,'',1,5000,0,5000,0.00,0.00,0,0,1670986992,'0|0|0|0|0|0|0',0,0,0,0,1670985610,0,0,0,0,0,NULL,NULL,NULL,0,0,0,1,0,0,1033198944,3,0,0,0),(284218,'18321296817','','','',NULL,0,NULL,2,0,'',1,5000,0,5000,0.00,0.00,0,0,1670987077,'0|0|0|0|0|0|0',0,0,0,0,1670985912,0,0,0,0,0,NULL,NULL,NULL,0,0,0,1,0,0,1971877040,3,0,0,0),(284219,'17815617855','','','',NULL,0,NULL,2,0,'',1,5000,0,5000,0.00,0.00,0,0,1670987252,NULL,0,0,0,0,1670987252,0,0,0,0,0,NULL,NULL,NULL,0,0,0,1,0,0,3748177387,3,0,0,0),(284220,'18721645943','','','',NULL,0,NULL,2,0,'',1,5001,0,5001,0.00,0.00,0,0,1670989502,NULL,0,0,0,0,1670988794,0,0,0,0,0,NULL,NULL,NULL,0,0,0,1,0,0,1961166353,3,0,0,0);
/*!40000 ALTER TABLE `fke_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fke_qiugou`
--

DROP TABLE IF EXISTS `fke_qiugou`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fke_qiugou` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityarea_id` int(11) unsigned DEFAULT '0',
  `cityarea2_id` int(11) unsigned DEFAULT '0',
  `column_type` tinyint(3) unsigned DEFAULT '0' COMMENT '栏目分类：1普通房源  2写字楼  3商铺',
  `house_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '房源类型',
  `house_price` float unsigned DEFAULT '0',
  `start_price` float unsigned DEFAULT '0',
  `end_price` float unsigned DEFAULT '0',
  `house_totalarea` float unsigned DEFAULT '0',
  `start_totalarea` float unsigned DEFAULT '0',
  `end_totalarea` float unsigned DEFAULT '0',
  `house_room` tinyint(4) unsigned DEFAULT '0',
  `house_floor` tinyint(4) unsigned DEFAULT '0',
  `mid` int(11) unsigned NOT NULL DEFAULT '0',
  `mtype` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '发布人类型',
  `down_time` int(11) unsigned DEFAULT '0' COMMENT '下架时间',
  `is_checked` tinyint(4) DEFAULT '1',
  `is_delete` tinyint(4) unsigned DEFAULT '0' COMMENT '0正常\r\n1待审核回收站\r\n2通过审核回收站\r\n3未通过审核回收站',
  `is_lock` tinyint(4) DEFAULT '0' COMMENT '是否被锁定：0正常 1锁定状态。管理员删除的房源会进行锁定',
  `is_down` tinyint(4) DEFAULT '0' COMMENT '是否下架：0正常 1已下架',
  `house_status` tinyint(4) unsigned DEFAULT '0' COMMENT '0待审核 1删除电话 2不确定房源 3真实房源 4中介房源 5房源已成交',
  `deal_time` int(11) unsigned DEFAULT '0' COMMENT '成交时间',
  `created` int(11) unsigned DEFAULT '0',
  `updated` int(11) unsigned DEFAULT '0',
  `source_id` int(11) unsigned DEFAULT '0' COMMENT '信息来源',
  `city_website_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '所属站点',
  `house_hall` tinyint(3) unsigned DEFAULT '0',
  `house_toilet` tinyint(3) unsigned DEFAULT '0',
  `house_veranda` tinyint(3) unsigned DEFAULT '0',
  `house_topfloor` tinyint(3) unsigned DEFAULT '0',
  `click_num` int(11) unsigned DEFAULT '0' COMMENT '点击数',
  `click_virtual` int(10) unsigned DEFAULT '0' COMMENT '虚拟点击数',
  `hide_phone` tinyint(4) DEFAULT '0' COMMENT '0显示电话  1隐藏电话',
  `report_count` int(11) unsigned DEFAULT '0',
  `truth_degree` tinyint(3) unsigned DEFAULT '0' COMMENT 'æˆ¿æºçœŸå®žåº¦0åˆ°100',
  `belong` tinyint(4) unsigned DEFAULT '0' COMMENT '产权',
  `house_title` varchar(120) NOT NULL DEFAULT '',
  `house_title_crc32` int(11) unsigned DEFAULT '0',
  `house_thumb` varchar(100) DEFAULT '',
  `house_age` varchar(4) DEFAULT '' COMMENT '房龄',
  `owner_name` varchar(18) DEFAULT '' COMMENT '联系人',
  `owner_phone` varchar(16) DEFAULT '' COMMENT '联系人电话',
  `owner_phone_crc32` int(11) unsigned DEFAULT '0',
  `keywords` varchar(30) DEFAULT '',
  `owner_phone_pic` varchar(100) DEFAULT '' COMMENT '电话图片',
  `borough_name` varchar(60) DEFAULT '' COMMENT '小区名称',
  `house_diduan` varchar(60) DEFAULT '' COMMENT '地段',
  `house_address` varchar(60) DEFAULT '' COMMENT '房源所在地址',
  `wechat` varchar(60) DEFAULT '' COMMENT '用户微信号码',
  `qq` varchar(60) DEFAULT '' COMMENT '会员发布房源时的QQ号码',
  `promote_end_time` int(10) unsigned DEFAULT '0' COMMENT '推广过期时间',
  `is_cooperation` tinyint(3) unsigned DEFAULT '0' COMMENT '0普通房源 1经纪人合作房源',
  `data_update_time` int(10) unsigned DEFAULT '0' COMMENT '数据更新时间',
  `refresh_count` int(10) unsigned DEFAULT '0' COMMENT '刷新次数',
  PRIMARY KEY (`id`),
  KEY `created` (`created`),
  KEY `cityarea_id` (`cityarea_id`),
  KEY `city_website_id` (`city_website_id`) USING BTREE,
  KEY `updated` (`updated`) USING BTREE,
  KEY `mid` (`mid`),
  KEY `house_title_crc32` (`house_title_crc32`),
  KEY `owner_phone_crc32` (`owner_phone_crc32`),
  KEY `promote_end_time` (`promote_end_time`),
  KEY `data_update_time` (`data_update_time`)
) ENGINE=InnoDB AUTO_INCREMENT=114694 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fke_qiugou`
--

LOCK TABLES `fke_qiugou` WRITE;
/*!40000 ALTER TABLE `fke_qiugou` DISABLE KEYS */;
/*!40000 ALTER TABLE `fke_qiugou` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fke_qiugou_check_log`
--

DROP TABLE IF EXISTS `fke_qiugou_check_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fke_qiugou_check_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `house_id` int(11) unsigned DEFAULT '0',
  `operation_type` tinyint(3) unsigned DEFAULT '0' COMMENT '操作类型：0待审核 1删除电话 2不确定房源 3真实房源 4中介房源 5房源已成交',
  `admin_id` int(11) DEFAULT NULL,
  `admin_name` varchar(20) DEFAULT NULL,
  `admin_note` varchar(255) DEFAULT NULL COMMENT '审核时备注信息',
  `add_time` int(11) unsigned DEFAULT '0' COMMENT '添加时间，审核时间',
  PRIMARY KEY (`id`),
  KEY `house_id` (`house_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9733 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fke_qiugou_check_log`
--

LOCK TABLES `fke_qiugou_check_log` WRITE;
/*!40000 ALTER TABLE `fke_qiugou_check_log` DISABLE KEYS */;
INSERT INTO `fke_qiugou_check_log` VALUES (9700,114664,6,10,'sxc','',1667865400),(9701,114652,9,0,'用户','用户删除',1667866335),(9702,114666,9,0,'用户','用户删除',1667869358),(9703,114667,9,0,'用户','用户删除',1667956687),(9704,114668,9,0,'用户','用户删除',1668042546),(9705,114669,9,0,'用户','用户删除',1668302552),(9706,114671,9,0,'用户','用户删除',1668388005),(9707,114670,9,0,'用户','用户删除',1668388005),(9708,114658,9,0,'用户','用户删除',1668475998),(9709,114673,9,0,'用户','用户删除',1668476471),(9710,114674,9,0,'用户','用户删除',1668561315),(9711,114675,9,0,'用户','用户删除',1668907173),(9712,114676,9,0,'用户','用户删除',1668994806),(9713,114660,9,0,'用户','用户删除',1669076464),(9714,114678,9,0,'用户','用户删除',1669167362),(9715,114679,9,0,'用户','用户删除',1669251125),(9716,114096,2,7,'wll','',1669428425),(9717,114680,9,0,'用户','用户删除',1669598453),(9718,114665,9,0,'用户','用户删除',1669681242),(9719,114682,9,0,'用户','用户删除',1669683213),(9720,114683,9,0,'用户','用户删除',1669771427),(9721,114410,2,10,'sxc','',1669787238),(9722,114390,4,10,'sxc','',1669787390),(9723,114684,9,0,'用户','用户删除',1669858261),(9724,114685,9,0,'用户','用户删除',1670202057),(9725,114672,9,0,'用户','用户删除',1670286064),(9726,114687,9,0,'用户','用户删除',1670289470),(9727,114688,9,0,'用户','用户删除',1670377067),(9728,114689,10,10,'sxc','管理员删除',1670462992),(9729,114690,9,0,'用户','用户删除',1670722704),(9730,114691,9,0,'用户','用户删除',1670808183),(9731,114677,9,0,'用户','用户删除',1670890504),(9732,114693,9,0,'用户','用户删除',1670894160);
/*!40000 ALTER TABLE `fke_qiugou_check_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fke_qiugou_extend`
--

DROP TABLE IF EXISTS `fke_qiugou_extend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fke_qiugou_extend` (
  `house_id` int(11) unsigned NOT NULL,
  `cityarea2_name` varchar(60) DEFAULT '',
  `source_url` varchar(250) DEFAULT '',
  `check_type` tinyint(3) unsigned DEFAULT '0' COMMENT '0正常 1非法电话 2非法网址 3非法关键字',
  `owner_notes` varchar(120) DEFAULT '',
  `check_note` varchar(120) DEFAULT '',
  `words` varchar(240) DEFAULT '' COMMENT '非法关键字',
  `house_desc` text,
  PRIMARY KEY (`house_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fke_qiugou_extend`
--

LOCK TABLES `fke_qiugou_extend` WRITE;
/*!40000 ALTER TABLE `fke_qiugou_extend` DISABLE KEYS */;
INSERT INTO `fke_qiugou_extend` VALUES (114660,'','',0,'','','',''),(114661,'','',0,'','','',''),(114662,'','',0,'','','','<p>测试哒哒哒哒哒哒多多多多多多多多多多</p>'),(114663,'','',0,'','','',''),(114664,'李哥庄','',0,'',NULL,NULL,'南向朝阳，有上下水'),(114665,'','',0,'','','',''),(114666,'','',0,'','','','<p>是哒哒哒哒哒哒多多多多多多多多</p>'),(114667,'','',0,'','','',''),(114668,'','',0,'','','','<p>测试哒哒哒哒哒哒多多多多多多多多</p>'),(114669,'','',0,'','','','<p>测试哒哒哒哒哒哒多多多多多多多多</p>'),(114670,'','',0,'','','','<p>测试哒哒哒哒哒哒多多多多多</p>'),(114671,'','',0,'','','','<p>测试哒哒哒哒哒哒多多多多</p>'),(114672,'','',0,'','','',''),(114673,'','',0,'','','',''),(114674,'','',0,'','','','<p>测试哒哒哒哒哒哒多多多多多多多</p>'),(114675,'','',0,'','','',''),(114676,'','',0,'','','',''),(114677,'','',0,'','','',''),(114678,'','',0,'','','','<p>财税的点点滴滴多多多多多多多多多多多多多多<br/></p>'),(114679,'','',0,'','','','<p>财税的点点滴滴多多多多多多多多多</p>'),(114680,'','',0,'','','','<p>财税的点点滴滴多多多多多多多多多多多多</p>'),(114681,'','',0,'','','',''),(114682,'','',0,'','','','<p>财税的点点滴滴多多多多多多多多多多多</p>'),(114683,'','',0,'','','','<p>财税的点点滴滴多多多多多多多多多</p>'),(114684,'','',0,'','','','<p>财税的点点滴滴多多多多多多多多多<br/></p>'),(114685,'','',0,'','','',''),(114686,'','',0,'','','',''),(114687,'','',0,'','','','<p>测试哒哒哒哒哒哒多多多多多多多多多多</p>'),(114688,'','',0,'','','',''),(114689,'','',0,'','','',''),(114690,'','',0,'','','',''),(114691,'','',0,'','','','<p>测试哒哒哒哒哒哒多多多多多多多多</p>'),(114692,'','',0,'','','',''),(114693,'','',0,'','','','<p>测试哒哒哒哒哒哒多多多多多多多多多多多多多多多多</p>');
/*!40000 ALTER TABLE `fke_qiugou_extend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fke_qiugou_mobile_auth`
--

DROP TABLE IF EXISTS `fke_qiugou_mobile_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fke_qiugou_mobile_auth` (
  `house_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '房源ID',
  `mobile_auth_code` varchar(6) DEFAULT '' COMMENT '手机验证码',
  `sms_send_time` int(11) unsigned DEFAULT '0' COMMENT '短信发送时间',
  `sms_send_count` int(11) unsigned DEFAULT '0' COMMENT '短信发送次数',
  PRIMARY KEY (`house_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fke_qiugou_mobile_auth`
--

LOCK TABLES `fke_qiugou_mobile_auth` WRITE;
/*!40000 ALTER TABLE `fke_qiugou_mobile_auth` DISABLE KEYS */;
/*!40000 ALTER TABLE `fke_qiugou_mobile_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fke_qiuzu`
--

DROP TABLE IF EXISTS `fke_qiuzu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fke_qiuzu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cityarea_id` int(11) unsigned DEFAULT '0',
  `cityarea2_id` int(11) unsigned DEFAULT '0',
  `column_type` tinyint(4) unsigned DEFAULT '0' COMMENT '栏目分类：1普通房源  2写字楼  3商铺',
  `house_type` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '房源类型',
  `house_price` float unsigned NOT NULL DEFAULT '0',
  `start_price` float unsigned DEFAULT '0',
  `end_price` float unsigned DEFAULT '0',
  `house_month_price` float unsigned DEFAULT '0',
  `start_month_price` float unsigned DEFAULT '0',
  `end_month_price` float unsigned DEFAULT '0',
  `unit_type` tinyint(4) unsigned DEFAULT '0' COMMENT '1元/月 2元/㎡·天 3元/天 4万元',
  `house_totalarea` float unsigned DEFAULT '0',
  `start_totalarea` float unsigned DEFAULT '0',
  `end_totalarea` float unsigned DEFAULT '0',
  `house_room` tinyint(4) unsigned DEFAULT '0',
  `house_topfloor` tinyint(3) unsigned DEFAULT '0' COMMENT '总楼层',
  `click_num` int(11) unsigned DEFAULT '0' COMMENT '点击数',
  `click_virtual` int(10) unsigned DEFAULT '0' COMMENT '虚拟点击数',
  `house_floor` tinyint(4) unsigned DEFAULT '0',
  `mid` int(11) unsigned NOT NULL DEFAULT '0',
  `mtype` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '发布人类型',
  `is_checked` tinyint(4) DEFAULT '1',
  `is_delete` tinyint(4) unsigned DEFAULT '0' COMMENT '0正常\r\n1待审核回收站\r\n2通过审核回收站\r\n3未通过审核回收站',
  `is_lock` tinyint(4) DEFAULT '0' COMMENT '是否被锁定：0正常 1锁定状态。管理员删除的房源会进行锁定',
  `is_down` tinyint(4) DEFAULT '0' COMMENT '是否下架：0正常 1已下架',
  `house_status` tinyint(4) unsigned DEFAULT '0' COMMENT '0待审核 1删除电话 2不确定房源 3真实房源 4中介房源 5房源已成交',
  `deal_time` int(11) unsigned DEFAULT '0' COMMENT '成交时间',
  `down_time` int(11) unsigned DEFAULT '0',
  `created` int(11) unsigned DEFAULT '0',
  `updated` int(11) unsigned DEFAULT '0',
  `source_id` int(11) unsigned DEFAULT '0' COMMENT '来源',
  `city_website_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '所属站点',
  `rent_type` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '1整租 2合租',
  `house_hall` tinyint(3) unsigned DEFAULT '0' COMMENT '厅',
  `house_toilet` tinyint(3) unsigned DEFAULT '0' COMMENT '卫生间',
  `house_veranda` tinyint(3) unsigned DEFAULT '0' COMMENT '阳台',
  `hide_phone` tinyint(4) DEFAULT '0' COMMENT '0显示电话  1隐藏电话',
  `report_count` int(11) unsigned DEFAULT '0' COMMENT '投诉统计',
  `truth_degree` tinyint(3) unsigned DEFAULT '0' COMMENT 'æˆ¿æºçœŸå®žåº¦0åˆ°100',
  `house_title` varchar(120) NOT NULL DEFAULT '' COMMENT '房源标题',
  `house_title_crc32` int(11) unsigned DEFAULT '0',
  `house_thumb` varchar(100) DEFAULT '',
  `owner_name` varchar(18) DEFAULT '' COMMENT '联系人',
  `owner_phone` varchar(16) DEFAULT '' COMMENT '联系人电话',
  `owner_phone_crc32` int(11) unsigned DEFAULT '0',
  `keywords` varchar(30) DEFAULT '' COMMENT '关键字，保存地区名',
  `owner_phone_pic` varchar(100) DEFAULT '' COMMENT '电话图片',
  `borough_name` varchar(60) DEFAULT '' COMMENT '小区名称',
  `house_diduan` varchar(60) DEFAULT '' COMMENT '所在地段',
  `house_address` varchar(60) DEFAULT '' COMMENT '房源地址',
  `wechat` varchar(60) DEFAULT '' COMMENT '用户微信号码',
  `qq` varchar(60) DEFAULT '' COMMENT '会员发布房源时的QQ号码',
  `promote_end_time` int(10) unsigned DEFAULT '0' COMMENT '推广过期时间',
  `is_cooperation` tinyint(3) unsigned DEFAULT '0' COMMENT '0普通房源 1经纪人合作房源',
  `data_update_time` int(10) unsigned DEFAULT '0' COMMENT '数据更新时间',
  `refresh_count` int(10) unsigned DEFAULT '0' COMMENT '刷新次数',
  PRIMARY KEY (`id`),
  KEY `created` (`created`) USING BTREE,
  KEY `updated` (`updated`) USING BTREE,
  KEY `cityarea_id` (`cityarea_id`) USING BTREE,
  KEY `city_website_id` (`city_website_id`) USING BTREE,
  KEY `mid` (`mid`),
  KEY `house_title_crc32` (`house_title_crc32`),
  KEY `owner_phone_crc32` (`owner_phone_crc32`),
  KEY `promote_end_time` (`promote_end_time`),
  KEY `data_update_time` (`data_update_time`)
) ENGINE=InnoDB AUTO_INCREMENT=784558 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fke_qiuzu`
--

LOCK TABLES `fke_qiuzu` WRITE;
/*!40000 ALTER TABLE `fke_qiuzu` DISABLE KEYS */;
INSERT INTO `fke_qiuzu` VALUES (784525,2720,4344,3,7,0,1,9,0,1,9,1,0,1,9,0,0,4,23,0,61297,1,1,1,0,0,0,0,1669681226,1667866379,1670940901,0,354,1,0,0,0,0,0,0,'奉贤商铺求租',2911973016,'','房产小达人','15600236508',3551218080,'奉贤,奉城,奉城','','','','','','',0,0,1670940901,0),(784526,507,18329,1,1,0,2,2,0,2,2,1,0,2,22,2,0,0,28,0,252960,1,0,1,0,0,0,0,1667869362,1667869265,1670940300,0,1,1,1,1,0,0,0,0,'石景山2室1厅1卫',4053996667,'','宋xc','18610851893',389799267,'石景山,金安桥,金安桥','','','','','','',0,0,1670940300,0),(784527,500,18214,1,1,0,1,11,0,1,11,1,0,11,11,1,0,0,28,0,252960,1,0,1,0,0,0,0,1667956695,1667956667,1670941201,0,1,1,1,1,0,0,0,0,'东城1室1厅1卫',830554425,'','宋xc','18610851893',389799267,'东城,朝阳门外,朝阳门外','','','','','','',0,0,1670941201,0),(784528,507,18329,1,1,0,2,2,0,2,2,1,0,2,2,2,0,0,21,0,252960,1,0,1,0,0,0,0,1668042550,1668042474,1670940600,0,1,1,2,1,0,0,0,0,'石景山2室2厅1卫',2133595032,'','宋xc','18610851893',389799267,'石景山,金安桥,金安桥','','','','','','',0,0,1670940600,0),(784529,18144,18999,1,1,0,800,1500,0,800,1500,1,0,70,100,2,0,16,21,0,283639,2,1,0,0,0,0,0,0,1668135741,1668135741,0,40,1,1,1,0,0,0,0,'彭水2室1厅1卫',3040358536,'','钟科','15823998002',1309817718,'彭水,彭水城区,彭水城区','','','','','','',0,0,1668136171,0),(784530,507,3918,1,1,0,1200,2300,0,1200,2300,1,0,1,1,2,0,0,19,0,252960,1,0,1,0,0,0,0,1668302558,1668302530,1670941501,0,1,1,1,2,0,0,0,0,'石景山2室1厅2卫',3809917845,'','宋xc','18610851893',389799267,'石景山,八角,八角','','','','','','',0,0,1670941501,0),(784531,507,18329,1,1,0,1,1,0,1,1,1,0,1,11,1,0,0,21,0,252960,1,0,1,0,0,0,0,1668388010,1668387985,1670940600,0,1,1,1,1,0,0,0,0,'石景山1室1厅1卫',2252195467,'','宋xc','18610851893',389799267,'石景山,金安桥,金安桥','','','','','','',0,0,1670940600,0),(784532,2710,4194,1,1,0,1,9,0,1,9,1,0,1,9,2,0,5,24,0,61297,1,1,1,0,0,0,0,1670286003,1668476019,1670942101,0,354,1,1,1,0,0,0,0,'静安2室1厅1卫',1581972696,'','房产小达人','15600236508',3551218080,'静安,江宁路,江宁路','','','','','','',0,0,1670942101,0),(784533,507,18329,1,1,0,1,11,0,1,11,1,0,1,111,1,0,0,22,0,252960,1,0,1,0,0,0,0,1668476478,1668476394,1670942400,0,1,1,1,1,0,0,0,0,'石景山1室1厅1卫',2252195467,'','宋xc','18610851893',389799267,'石景山,金安桥,金安桥','','','','','','',0,0,1670942400,0),(784534,512,4008,1,1,0,1200,5300,0,1200,5300,1,0,22,22,1,0,0,23,0,252960,1,1,1,0,0,0,0,1668561320,1668561178,1670940901,0,1,1,1,1,0,0,0,0,'昌平1室1厅1卫',2300745953,'','宋xc','18610851893',389799267,'昌平,天通苑,天通苑','','','','','','',0,0,1670940901,0),(784535,9096,9186,1,1,0,1000,3000,0,1000,3000,1,0,50,110,2,0,10,22,0,245873,1,1,0,0,0,0,0,0,1668593056,1668593056,0,333,1,1,1,0,0,0,0,'信富优家14年磨一剑，为广大业主保驾护航托管金水区房源',1771043345,'','王妙','18203692776',3211733967,'管城回族区,商城路,商城路','','','','东明路 城东路','','',0,0,1668593056,0),(784536,9097,9239,1,1,0,1000,5000,0,1000,5000,1,0,56,150,2,0,10,20,0,245873,1,1,0,0,0,0,0,0,1668593243,1668593298,0,333,1,1,1,0,0,0,0,'【郑州信富托管】求租三环以内居住用房1-4室均可 直接付房租',1657584943,'','王妙','18203692776',3211733967,'金水区,燕庄,燕庄','','','','曼哈顿周边','','',0,0,1668593298,0),(784537,9097,9198,1,1,0,1000,3000,0,1000,3000,1,0,50,110,2,0,8,29,0,255655,3,1,0,0,0,0,0,0,1668593819,1668593819,0,333,1,1,1,0,0,0,0,'求租管城区  郑汴路 未来路 城东路附近 一室两室三室房托管',2895407556,'','王苗苗','15203712397',1597017567,'金水区,东明路,东明路','','','','东明路 城东路','','',0,0,1668593819,0),(784538,503,3810,1,1,0,1,1,0,1,1,1,0,1,1,2,0,0,21,0,252960,1,1,1,0,0,0,0,1668907179,1668906539,1670940600,0,1,1,2,1,0,0,0,0,'朝阳2室2厅1卫',1592456568,'','宋xc','18610851893',389799267,'朝阳,三里屯,三里屯','','','','','','',0,0,1670940600,0),(784539,515,16687,1,1,0,1,1,0,1,1,1,0,1,11,1,0,0,18,0,252960,1,1,1,0,0,0,0,1668994813,1668992950,1670940600,0,1,1,1,1,0,0,0,0,'大兴1室1厅1卫',2130314580,'','宋xc','18610851893',389799267,'大兴,河西区,河西区','','','','','','',0,0,1670940600,0),(784540,2708,4163,2,5,0,1,3,0,1,3,1,0,1,3,0,0,15,19,0,61297,1,1,1,0,0,0,0,1670890496,1669076499,1670941501,0,354,1,0,0,0,0,0,0,'杨浦写字楼求租',2475970037,'','房产小达人','15600236508',3551218080,'杨浦,平凉路,平凉路','','','','','','',0,0,1670941501,0),(784541,510,3963,2,5,0,11,11,0,11,11,1,0,11,11,0,0,0,25,0,252960,1,1,1,0,0,0,0,1669167366,1669167338,1670942400,0,1,1,0,0,0,0,0,0,'通州财税的点点滴滴',3467404136,'','宋xc','18610851893',389799267,'通州,马驹桥,马驹桥','','','','','','',0,0,1670942400,0),(784542,507,3916,1,1,0,1,1,0,1,1,1,0,1,1,1,0,0,24,0,252960,1,1,1,0,0,0,0,1669251137,1669250996,1670943001,0,1,1,1,1,0,0,0,0,'石景山1室1厅1卫',2252195467,'','宋xc','18610851893',389799267,'石景山,八宝山,八宝山','','','','','','',0,0,1670943001,0),(784543,507,18329,1,1,0,1,1,0,1,1,1,0,1,11,1,0,0,24,0,252960,1,0,1,0,0,0,0,1669598459,1669598387,1670941201,0,1,1,1,1,0,0,0,0,'石景山1室1厅1卫',2252195467,'','宋xc','18610851893',389799267,'石景山,金安桥,金安桥','','','','','','',0,0,1670941201,0),(784544,2708,4166,3,7,0,1,6,0,1,6,1,0,1,6,0,0,14,29,0,61297,1,1,0,0,0,0,0,0,1669681281,1670941501,0,354,1,0,0,0,0,0,0,'杨浦商铺求租',830648647,'','房产小达人','15600236508',3551218080,'杨浦,新江湾城,新江湾城','','','','','','',0,0,1670941501,0),(784545,503,3785,3,7,0,1,1,0,1,1,1,0,1,11,0,0,0,22,0,252960,1,0,1,0,0,0,0,1669683218,1669683097,1670943300,0,1,1,0,0,0,0,0,0,'朝阳财税的点点滴滴多多多多',861595390,'','宋xc','18610851893',389799267,'朝阳,工体,工体','','','','','','',0,0,1670943300,0),(784546,506,3876,4,15,0,400,600,0,400,600,1,10,0,0,0,0,4,26,0,283968,2,1,0,0,0,0,0,0,1669768381,1669768381,0,1,1,0,0,0,0,0,0,'求租丰台远洋自然小区车位',1878107603,'','刘吉辰','13810849809',4007308814,'丰台,大红门','','','','远洋自然小区','','',0,0,1669772667,0),(784547,501,3629,3,7,0,2,2,0,2,2,1,0,22,22,0,0,0,24,0,252960,1,0,1,0,0,0,0,1669771434,1669771308,1670941501,0,1,1,0,0,0,0,0,0,'西城财税的点点滴滴多多多多多多多多多多多',1778639316,'','宋xc','18610851893',389799267,'西城,西单,西单','','','','','','',0,0,1670941501,0),(784548,501,3618,3,7,0,1,1,0,1,1,1,0,1,11,0,0,0,27,0,252960,1,0,1,0,0,0,0,1669858266,1669858202,1670942101,0,1,1,0,0,0,0,0,0,'西城财税的点点滴滴多多多多多多多多',4259252604,'','宋xc','18610851893',389799267,'西城,金融街,金融街','','','','','','',0,0,1670942101,0),(784549,507,3916,1,1,0,1200,1200,0,1200,1200,1,0,12,21,2,0,0,22,0,252960,1,0,1,0,0,0,0,1670202064,1670201783,1670943600,0,1,1,2,1,0,0,0,0,'石景山测试哒哒哒哒哒哒多多多',372366536,'','宋xc','18610851893',389799267,'石景山,八宝山,八宝山','','','','','','',0,0,1670943600,0),(784550,2709,18411,1,1,0,1,6,0,1,6,1,0,1,6,2,0,15,19,0,61297,1,1,0,0,0,0,0,0,1670286135,1670941501,0,354,1,1,1,0,0,0,0,'普陀2室1厅1卫',3685191569,'','房产小达人','15600236508',3551218080,'普陀,长寿,长寿','','','','','','',0,0,1670941501,0),(784551,500,3605,1,1,0,1,1,0,1,1,1,0,1,11,2,0,0,24,0,252960,1,0,1,0,0,0,0,1670289476,1670289381,1670941201,0,1,1,2,1,0,0,0,0,'东城2室2厅1卫',3364918314,'','宋xc','18610851893',389799267,'东城,交道口,交道口','','','','','','',0,0,1670941201,0),(784552,507,18329,1,6,0,1,1,0,1,1,1,0,1,1,3,0,0,22,0,252960,1,0,1,0,0,0,0,1670377073,1670376964,1670942400,0,1,2,2,2,0,0,0,0,'石景山测试哒哒哒哒哒哒多',3003613543,'','宋xc','18610851893',389799267,'石景山,金安桥,金安桥','','','','','','',0,0,1670942400,0),(784553,503,3770,1,1,0,1,1,0,1,1,1,0,1,1,3,0,0,23,0,252960,1,0,1,0,0,0,0,0,1670462547,1670941501,0,1,1,1,1,0,0,0,0,'朝阳3室1厅1卫',1270922996,'','宋xc','18610851893',389799267,'朝阳,朝青板块,朝青板块','','','','','','',0,0,1670941501,0),(784554,507,18329,2,5,0,1,1,0,1,1,1,0,1,11,0,0,0,14,0,252960,1,0,1,0,0,0,0,1670722708,1670722640,1670942400,0,1,1,0,0,0,0,0,0,'石景山测试哒哒哒哒哒哒多多',2075994449,'','宋xc','18610851893',389799267,'石景山,金安桥,金安桥','','','','','','',0,0,1670942400,0),(784555,507,3920,1,1,0,1,1,0,1,1,1,0,1,1,2,0,0,8,0,252960,1,0,1,0,0,0,0,1670808188,1670808130,1670941501,0,1,1,1,1,0,0,0,0,'石景山2室1厅1卫',4053996667,'','宋xc','18610851893',389799267,'石景山,古城,古城','','','','','','',0,0,1670941501,0),(784556,2710,18346,2,5,0,1,9,0,1,9,1,0,1,9,0,0,2,7,0,61297,1,1,0,0,0,0,0,0,1670890633,1670941201,0,354,1,0,0,0,0,0,0,'静安求租写字楼',2078785864,'','房产小达人','15600236508',3551218080,'静安,宝山路,宝山路','','','','','','',0,0,1670941201,0),(784557,508,3938,1,1,0,1,1,0,1,1,1,0,11,11,1,0,2,7,0,252960,1,0,1,0,0,0,0,1670894250,1670893805,1670940901,0,1,1,1,1,0,0,0,0,'房山1室1厅1卫',363224048,'','宋xc','18610851893',389799267,'房山,良乡,良乡','','','','','','',0,0,1670940901,0);
/*!40000 ALTER TABLE `fke_qiuzu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fke_qiuzu_check_log`
--

DROP TABLE IF EXISTS `fke_qiuzu_check_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fke_qiuzu_check_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `house_id` int(11) unsigned DEFAULT '0',
  `operation_type` tinyint(3) unsigned DEFAULT '0' COMMENT '操作类型：0待审核 1删除电话 2不确定房源 3真实房源 4中介房源 5房源已成交',
  `admin_id` int(11) DEFAULT NULL,
  `admin_name` varchar(20) DEFAULT NULL,
  `admin_note` varchar(255) DEFAULT NULL COMMENT '审核时备注信息',
  `add_time` int(11) unsigned DEFAULT '0' COMMENT '添加时间，审核时间',
  PRIMARY KEY (`id`),
  KEY `house_id` (`house_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11331 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fke_qiuzu_check_log`
--

LOCK TABLES `fke_qiuzu_check_log` WRITE;
/*!40000 ALTER TABLE `fke_qiuzu_check_log` DISABLE KEYS */;
INSERT INTO `fke_qiuzu_check_log` VALUES (11295,784541,9,0,'用户','用户删除',1669167366),(11296,784542,9,0,'用户','用户删除',1669251137),(11297,783120,2,7,'wll','',1669428441),(11298,783014,2,7,'wll','',1669428441),(11299,783013,2,7,'wll','',1669428462),(11300,784543,9,0,'用户','用户删除',1669598459),(11301,783203,2,10,'sxc','',1669599212),(11302,783516,2,10,'sxc','',1669599394),(11303,783135,2,10,'sxc','',1669599394),(11304,784514,2,10,'sxc','',1669599746),(11305,782868,2,10,'sxc','',1669599746),(11306,783583,2,10,'sxc','',1669599746),(11307,784525,9,0,'用户','用户删除',1669681226),(11308,784545,9,0,'用户','用户删除',1669683218),(11309,784547,9,0,'用户','用户删除',1669771434),(11310,784546,6,10,'sxc','',1669772667),(11311,783016,2,10,'sxc','',1669787062),(11312,783031,2,10,'sxc','',1669787062),(11313,784380,2,10,'sxc','',1669787062),(11314,783804,2,10,'sxc','',1669787121),(11315,783590,2,10,'sxc','',1669787238),(11316,784548,9,0,'用户','用户删除',1669858266),(11317,784549,9,0,'用户','用户删除',1670202064),(11318,784497,10,0,'用户','房源下架',1670220964),(11319,784497,9,0,'用户','用户删除',1670220975),(11320,784532,9,0,'用户','用户删除',1670286003),(11321,784551,9,0,'用户','用户删除',1670289476),(11322,784552,9,0,'用户','用户删除',1670377073),(11323,781317,9,0,'用户','用户删除',1670384710),(11324,781318,9,0,'用户','用户删除',1670384752),(11325,781316,9,0,'用户','用户删除',1670384756),(11326,784553,10,10,'sxc','管理员删除',1670463003),(11327,784554,9,0,'用户','用户删除',1670722708),(11328,784555,9,0,'用户','用户删除',1670808188),(11329,784540,9,0,'用户','用户删除',1670890496),(11330,784557,9,0,'用户','用户删除',1670894250);
/*!40000 ALTER TABLE `fke_qiuzu_check_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fke_qiuzu_extend`
--

DROP TABLE IF EXISTS `fke_qiuzu_extend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fke_qiuzu_extend` (
  `house_id` int(11) unsigned NOT NULL,
  `cityarea2_name` varchar(60) DEFAULT '',
  `source_url` varchar(250) DEFAULT '',
  `check_type` tinyint(3) unsigned DEFAULT '0' COMMENT '0正常 1非法电话 2非法网址 3非法关键字',
  `check_note` varchar(120) DEFAULT '',
  `words` varchar(240) DEFAULT '' COMMENT '非法关键字',
  `owner_notes` varchar(120) DEFAULT '',
  `house_desc` text,
  PRIMARY KEY (`house_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fke_qiuzu_extend`
--

LOCK TABLES `fke_qiuzu_extend` WRITE;
/*!40000 ALTER TABLE `fke_qiuzu_extend` DISABLE KEYS */;
INSERT INTO `fke_qiuzu_extend` VALUES (784520,'','',0,'','','',''),(784521,'','',0,'','','',''),(784522,'','',0,'','','','自己住，爱干净，不养宠物'),(784523,'','',0,'','','','<p>测试哒哒哒哒哒哒多多多多多多多多多多</p>'),(784524,'','',0,'','','','<p>测试哒哒哒哒哒哒多多多多多多多多多多多多多多多</p>'),(784525,'','',0,'','','',''),(784526,'','',0,'','','','<p>测试哒哒哒哒哒哒多多多多多多多</p>'),(784527,'','',0,'','','',''),(784528,'','',0,'','','','<p>测试哒哒哒哒哒哒多多多多多多多多多多多</p>'),(784529,'','',0,'','','',''),(784530,'','',0,'','','',''),(784531,'','',0,'','','','<p>测试哒哒哒哒哒哒多多多多多多多多多</p>'),(784532,'','',0,'','','',''),(784533,'','',0,'','','',''),(784534,'','',0,'','','','<p>测试哒哒哒哒哒哒多多多多多多多多多多</p>'),(784535,'','',0,'','','','<p>郑州信富地产：1，三大优势： 郑州wei一一家专注托管租赁14年， 房管局、工商局双重注册备案， 郑州住宅与房地产业理事会会员单位。 2，四大核心服务：专业维修保洁团队， 到期需求推荐服务， 足不出户远程签约， 24小时响应机制。 3，五大经营优势：不改变房屋内部结构， 不该变房屋装修风格， 不分租不群租， 房源多覆盖广， 续签率80%以上。 4，六大托管房屋好处：避免空置， 收益稳定， 减少风险， 省事省心， 提供维修， 马上拿到租金。</p><p>小编已经在公司工作5年以上，公司企业理念，价值观都很正，员工福利待遇也很好。公司管理房子有1W多套，有很多房东的房子已经在公司管了10年以上，还有很多房子是房东转介绍的，有一些房东通过实地考察，感觉公司有实力，比较可靠，就把房子交管给公司。如果有需要，欢迎致电咨询了解</p><p><br/></p>'),(784536,'','',0,'','','','<p>什么是房屋委托？ &nbsp; &nbsp;</p><p>1、避免空置。 &nbsp; &nbsp;</p><p>每年只需要一次招租，中途退房多次招租的风险我们替您承担。 &nbsp; &nbsp;</p><p>2、收入可观。 &nbsp; &nbsp;</p><p>每期准时获得稳定的租金收入，而且全年纯收入一般不低于您亲 &nbsp; &nbsp;</p><p>自管理的全年纯收入。 &nbsp; &nbsp;</p><p>3、减少风险。 &nbsp; &nbsp;</p><p>避免了按时收不到租金，家具家电遭到破坏等非正常损失，同时还 &nbsp; &nbsp;</p><p>节省了正常的管理成本。 &nbsp; &nbsp;</p><p>4、灵活理财。 &nbsp; &nbsp;</p><p>您可以以租代售，既能收到房租，又能不紧不慢的卖个好价钱，租售两便。 &nbsp; &nbsp;</p><p>5、省时。 &nbsp; &nbsp;</p><p>不用再花大量时间和精力，发布信息，约见客户，多次带客户看房。 &nbsp; &nbsp;</p><p>6、省心。 &nbsp; &nbsp;</p><p>不用操心，不用自己管理，不论您在何地，出差或学习或者是旅游，您不用任何担忧，只需要在您身边银行查收 &nbsp; &nbsp;</p><p>租金即可。 &nbsp; &nbsp;</p><p>7、省力。 &nbsp; &nbsp;</p><p>不用自己收租，设施的频繁损坏不用自己维修，小维修我们免费出工出力，大维修我们免费为您跑腿办事。 &nbsp; &nbsp;</p><p>8、放心。 &nbsp; &nbsp;</p><p>把您的房子交给我们来管理，把个人和个人的关系，变成了个人和组织的关系，让您更加放心。 &nbsp; &nbsp;</p><p>公司分店地址：东明路黄河路东汇大厦c606、紫荆山路商城路裕鸿国际B1014、文化路东风路财智名座1925、文化路任寨北街文化嘉园801D、农业路天明路怡丰新都汇8号楼1单元603、大石桥搜狐广场A座711、南阳路东风路盛地大厦770、大铺A时代广场2003、升龙广场曼哈顿3号楼1302 &nbsp; &nbsp;</p><p>公司总部地址：郑汴路康桥商务广场2703室 &nbsp; &nbsp;</p><p>签订合同立马付租金!一室,两室,三室,四室,复式都可! 价钱在500元/月----5000元/月都行、合同期1年-长期均可!!! &nbsp; &nbsp;</p><p><br/></p>'),(784537,'','',0,'','','','<p>求租管城区&nbsp; 郑汴路 未来路 城东路附近 一室两室三室房托管</p>'),(784538,'','',0,'','','','<p>测试哒哒哒哒哒哒多多多多多多多</p>'),(784539,'','',0,'','','',''),(784540,'','',0,'','','',''),(784541,'','',0,'','','',''),(784542,'','',0,'','','','<p>财税的点点滴滴多多多多多多多多多多</p>'),(784543,'','',0,'','','','<p>财税的点点滴滴多多多多多多多多多多</p>'),(784544,'','',0,'','','',''),(784545,'','',0,'','','','<p>财税的点点滴滴多多多多多多多多多多多多多</p>'),(784546,'','',0,'','','','<p>求租丰台远洋自然小区车位，地上地下均可，可长租。有想出租的邻居请联系我。</p>'),(784547,'','',0,'','','','<p>财税的点点滴滴多多多多多多多多</p>'),(784548,'','',0,'','','','<p>财税的点点滴滴多多多多多多多多</p>'),(784549,'','',0,'','','',''),(784550,'','',0,'','','',''),(784551,'','',0,'','','','<p>测试哒哒哒哒哒哒多多多多多多多</p>'),(784552,'','',0,'','','',''),(784553,'','',0,'','','','<p>测试哒哒哒哒哒哒多多多多多多多</p>'),(784554,'','',0,'','','',''),(784555,'','',0,'','','','<p>测试哒哒哒哒哒哒多多多多多多多多多</p>'),(784556,'','',0,'','','',''),(784557,'','',0,'','','','');
/*!40000 ALTER TABLE `fke_qiuzu_extend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fke_qiuzu_mobile_auth`
--

DROP TABLE IF EXISTS `fke_qiuzu_mobile_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fke_qiuzu_mobile_auth` (
  `house_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '房源ID',
  `mobile_auth_code` varchar(6) DEFAULT '' COMMENT '手机验证码',
  `sms_send_time` int(11) unsigned DEFAULT '0' COMMENT '短信发送时间',
  `sms_send_count` int(11) unsigned DEFAULT '0' COMMENT '短信发送次数',
  PRIMARY KEY (`house_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fke_qiuzu_mobile_auth`
--

LOCK TABLES `fke_qiuzu_mobile_auth` WRITE;
/*!40000 ALTER TABLE `fke_qiuzu_mobile_auth` DISABLE KEYS */;
/*!40000 ALTER TABLE `fke_qiuzu_mobile_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fke_qiuzu_short_data`
--

DROP TABLE IF EXISTS `fke_qiuzu_short_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fke_qiuzu_short_data` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `column_type` tinyint(3) unsigned DEFAULT '0',
  `house_title` varchar(120) DEFAULT '',
  `house_title_crc32` int(10) unsigned DEFAULT '0',
  `owner_phone` varchar(16) DEFAULT '',
  `owner_phone_crc32` int(10) unsigned DEFAULT '0',
  `city_website_id` int(10) unsigned DEFAULT '0',
  `created` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `house_title_crc32` (`house_title_crc32`),
  KEY `owner_phone_crc32` (`owner_phone_crc32`),
  KEY `created` (`created`),
  KEY `city_website_id` (`city_website_id`),
  KEY `column_type` (`column_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fke_qiuzu_short_data`
--

LOCK TABLES `fke_qiuzu_short_data` WRITE;
/*!40000 ALTER TABLE `fke_qiuzu_short_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `fke_qiuzu_short_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fke_report`
--

DROP TABLE IF EXISTS `fke_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fke_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `house_type` tinyint(3) unsigned DEFAULT '1',
  `house_id` int(11) NOT NULL,
  `report_target` int(11) NOT NULL,
  `reason` tinyint(3) unsigned DEFAULT '0',
  `reporter` int(11) NOT NULL,
  `status` tinyint(11) DEFAULT '0',
  `addtime` int(11) NOT NULL,
  `ip` int(10) unsigned DEFAULT NULL,
  `city_website_id` int(10) unsigned DEFAULT '0',
  `column_type` varchar(20) DEFAULT NULL,
  `note` varchar(255) DEFAULT '' COMMENT '¹ÜÀíÔ±±¸×¢ÐÅÏ¢',
  `content` varchar(255) DEFAULT '' COMMENT 'Í¶ËßÄÚÈÝÇé¿öËµÃ÷',
  `website_id` int(10) unsigned NOT NULL DEFAULT '0',
  `is_text_phone` tinyint(3) DEFAULT '0',
  `is_owner_phone_pic` tinyint(4) DEFAULT '0',
  `report_status` tinyint(4) DEFAULT '0',
  `owner_phone` varchar(30) DEFAULT '',
  `admin_name` varchar(255) DEFAULT '',
  `check_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ip` (`ip`) USING BTREE,
  KEY `addtime` (`addtime`) USING BTREE,
  KEY `house_type` (`house_type`),
  KEY `house_id` (`house_id`),
  KEY `reason` (`reason`),
  KEY `check_time` (`check_time`),
  KEY `city_website_id` (`city_website_id`),
  KEY `column_type` (`column_type`),
  KEY `report_status` (`report_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fke_report`
--

LOCK TABLES `fke_report` WRITE;
/*!40000 ALTER TABLE `fke_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `fke_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fke_search_count`
--

DROP TABLE IF EXISTS `fke_search_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fke_search_count` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `website_id` int(10) unsigned NOT NULL DEFAULT '0',
  `region_id` int(10) unsigned NOT NULL DEFAULT '0',
  `click` int(10) unsigned NOT NULL DEFAULT '0',
  `house_type` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fke_search_count`
--

LOCK TABLES `fke_search_count` WRITE;
/*!40000 ALTER TABLE `fke_search_count` DISABLE KEYS */;
/*!40000 ALTER TABLE `fke_search_count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fke_shop_conf`
--

DROP TABLE IF EXISTS `fke_shop_conf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fke_shop_conf` (
  `broker_id` int(11) NOT NULL,
  `shop_name` varchar(100) DEFAULT NULL,
  `shop_url` varchar(150) DEFAULT NULL,
  `shop_notice` text,
  `shop_style` varchar(20) DEFAULT 'default',
  `click_num` int(11) DEFAULT '0',
  `created` int(11) NOT NULL,
  PRIMARY KEY (`broker_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fke_shop_conf`
--

LOCK TABLES `fke_shop_conf` WRITE;
/*!40000 ALTER TABLE `fke_shop_conf` DISABLE KEYS */;
/*!40000 ALTER TABLE `fke_shop_conf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fke_shop_viewlog`
--

DROP TABLE IF EXISTS `fke_shop_viewlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fke_shop_viewlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `broker_id` int(11) NOT NULL,
  `friend_id` int(11) NOT NULL,
  `click_num` int(11) DEFAULT NULL,
  `add_time` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fke_shop_viewlog`
--

LOCK TABLES `fke_shop_viewlog` WRITE;
/*!40000 ALTER TABLE `fke_shop_viewlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `fke_shop_viewlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fke_sph_counter`
--

DROP TABLE IF EXISTS `fke_sph_counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fke_sph_counter` (
  `counter_id` int(11) NOT NULL,
  `max_doc_id` int(11) NOT NULL,
  PRIMARY KEY (`counter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fke_sph_counter`
--

LOCK TABLES `fke_sph_counter` WRITE;
/*!40000 ALTER TABLE `fke_sph_counter` DISABLE KEYS */;
INSERT INTO `fke_sph_counter` VALUES (1,1553968717),(2,1553966245),(3,1553958000),(4,1553958000),(5,284220);
/*!40000 ALTER TABLE `fke_sph_counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fke_sphinx_count`
--

DROP TABLE IF EXISTS `fke_sphinx_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fke_sphinx_count` (
  `id` int(10) unsigned NOT NULL,
  `min_id` int(10) unsigned DEFAULT '0' COMMENT '最小值',
  `max_id` int(10) unsigned DEFAULT '0' COMMENT '最大值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sphinx搜索数据统计';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fke_sphinx_count`
--

LOCK TABLES `fke_sphinx_count` WRITE;
/*!40000 ALTER TABLE `fke_sphinx_count` DISABLE KEYS */;
INSERT INTO `fke_sphinx_count` VALUES (1,1614873742,1673078401),(2,1593986409,1646436342),(3,1622446406,1673076600),(4,1614913182,1670984893),(5,1615076842,1670984906),(8,1614902100,1670985839),(9,1613781346,1648690986);
/*!40000 ALTER TABLE `fke_sphinx_count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fke_statistics`
--

DROP TABLE IF EXISTS `fke_statistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fke_statistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stat_name` varchar(50) NOT NULL,
  `stat_index` varchar(20) NOT NULL,
  `stat_value` int(11) NOT NULL DEFAULT '0',
  `stat_unit` varchar(6) DEFAULT NULL,
  `stat_class` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `stat_index` (`stat_index`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fke_statistics`
--

LOCK TABLES `fke_statistics` WRITE;
/*!40000 ALTER TABLE `fke_statistics` DISABLE KEYS */;
/*!40000 ALTER TABLE `fke_statistics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fke_suggest`
--

DROP TABLE IF EXISTS `fke_suggest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fke_suggest` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `s_name` varchar(30) NOT NULL,
  `tel` varchar(30) NOT NULL,
  `add_time` int(10) unsigned NOT NULL,
  `website_id` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `website_id` (`website_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fke_suggest`
--

LOCK TABLES `fke_suggest` WRITE;
/*!40000 ALTER TABLE `fke_suggest` DISABLE KEYS */;
/*!40000 ALTER TABLE `fke_suggest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'fyw_member'
--

--
-- Dumping routines for database 'fyw_member'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-15 15:20:53
