-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssmiagf8
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssmiagf8/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmiagf8/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmiagf8/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussremendongman`
--

DROP TABLE IF EXISTS `discussremendongman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussremendongman` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611558558288 DEFAULT CHARSET=utf8 COMMENT='热门动漫评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussremendongman`
--

LOCK TABLES `discussremendongman` WRITE;
/*!40000 ALTER TABLE `discussremendongman` DISABLE KEYS */;
INSERT INTO `discussremendongman` VALUES (81,'2021-01-25 06:49:15',1,1,'评论内容1','回复内容1'),(82,'2021-01-25 06:49:15',2,2,'评论内容2','回复内容2'),(83,'2021-01-25 06:49:15',3,3,'评论内容3','回复内容3'),(84,'2021-01-25 06:49:15',4,4,'评论内容4','回复内容4'),(85,'2021-01-25 06:49:15',5,5,'评论内容5','回复内容5'),(86,'2021-01-25 06:49:15',6,6,'评论内容6','回复内容6'),(1611558558287,'2021-01-25 07:09:18',21,1611558485396,'登陆后可以收藏  评论','这里可以回复用户评论');
/*!40000 ALTER TABLE `discussremendongman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussxinpindongman`
--

DROP TABLE IF EXISTS `discussxinpindongman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussxinpindongman` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611558601346 DEFAULT CHARSET=utf8 COMMENT='新品动漫评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussxinpindongman`
--

LOCK TABLES `discussxinpindongman` WRITE;
/*!40000 ALTER TABLE `discussxinpindongman` DISABLE KEYS */;
INSERT INTO `discussxinpindongman` VALUES (91,'2021-01-25 06:49:15',1,1,'评论内容1','回复内容1'),(92,'2021-01-25 06:49:15',2,2,'评论内容2','回复内容2'),(93,'2021-01-25 06:49:15',3,3,'评论内容3','回复内容3'),(94,'2021-01-25 06:49:15',4,4,'评论内容4','回复内容4'),(95,'2021-01-25 06:49:15',5,5,'评论内容5','回复内容5'),(96,'2021-01-25 06:49:15',6,6,'评论内容6','回复内容6'),(1611558601345,'2021-01-25 07:10:00',31,1611558485396,'11',NULL);
/*!40000 ALTER TABLE `discussxinpindongman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dongmanleixing`
--

DROP TABLE IF EXISTS `dongmanleixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dongmanleixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `leixing` (`leixing`)
) ENGINE=InnoDB AUTO_INCREMENT=1611558765054 DEFAULT CHARSET=utf8 COMMENT='动漫类型';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dongmanleixing`
--

LOCK TABLES `dongmanleixing` WRITE;
/*!40000 ALTER TABLE `dongmanleixing` DISABLE KEYS */;
INSERT INTO `dongmanleixing` VALUES (11,'2021-01-25 06:49:15','热血'),(12,'2021-01-25 06:49:15','剧情'),(13,'2021-01-25 06:49:15','校园'),(14,'2021-01-25 06:49:15','悬疑'),(15,'2021-01-25 06:49:15','机甲'),(16,'2021-01-25 06:49:15','类型6'),(1611558765053,'2021-01-25 07:12:44','这里可以添加动漫类型');
/*!40000 ALTER TABLE `dongmanleixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611558698149 DEFAULT CHARSET=utf8 COMMENT='剧情交流';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (1611558374833,'2021-01-25 07:06:14','火影忍者头像混编','<p>&nbsp;</p><p><img src=\"https://inews.gtimg.com/newsapp_bt/0/13082094912/641\"></p><p><br></p><p>这里可以管理员用户的交流  针对敏感类话题或者字眼  可以删除  或者修改</p>',0,41,'001','开放'),(1611558412547,'2021-01-25 07:06:52','火影忍者：火影中的梗，鸣人有点惨','<p style=\"margin: 0px; padding: 0px; font-size: 16px; line-height: 24px; color: #333333; text-align: justify; font-family: arial; background-color: #ffffff;\"><span class=\"bjh-p\">1：日本一男子，婚前受尽老婆白眼，婚后更是受尽丈母娘家一家人的白眼</span></p>\n<div class=\"img-container\" style=\"margin-top: 30px; font-family: arial; font-size: 12px; background-color: #ffffff;\">&nbsp;</div>\n<p style=\"margin: 26px 0px 0px; padding: 0px; font-size: 16px; line-height: 24px; color: #333333; text-align: justify; font-family: arial; background-color: #ffffff;\"><span class=\"bjh-p\">没错，这个人就是鸣人了，虽然日向一族的白眼是家族因素导致，但鸣人的的确确是遭受到了日向全族的白眼，没办法，人家有这条件，你这算上门女婿了，不白眼你白眼谁，没对着你喊白眼就好了！</span>多重影分身的欢乐鸣人绝对体验过多次了，因为每一个分身都是实体，能把各种感受回馈给本体，而有大量查克拉的鸣人能分出无数的分身，这乐趣在哪，你们想到了吗？估计九尾必须要关小黑屋里等着吧。</p>',0,41,'001','开放'),(1611558686897,'2021-01-25 07:11:26','这里可以发布交流','<p>可以插入图片</p>\n<p><img src=\"../../../upload/1611558685329.jpg\" /></p>',0,1611558485396,'666','开放'),(1611558698148,'2021-01-25 07:11:38',NULL,'这里可以回复',1611558374833,1611558485396,'666',NULL);
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='系统公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (71,'2021-01-25 06:49:15','细数那些高达动漫的彩蛋，五大最强高达战士，动漫神作之一','人气爆棚的高达机动战士，大家应该都略有耳闻，全名叫机动高达，有一种机械风格，各种武器与导弹机制的渲染和炫彩的特效，让很多动漫迷因此追随。高达作为日本机械系动漫其中之一的超人气动漫，触发了动漫制作史上比较深远的影响','http://localhost:8080/ssmiagf8/upload/news_picture1.jpg','<p class=\"ql-align-justify\">接下来要给大家介绍的在动漫中隐藏的五大超强机器人：排名第一的是高达逆A，这个高达是在被称为自月面环形大山里发掘出来的比较年代漫长的机体，该高达面部长了两颗类似獠牙的东西，因此外表很丑，被很多人叫作野猪王高达，但是此机体对任何驾驶员的要求非常低，而且有自我治愈能力，战场上更是披荆斩棘，得到了好多驾驶员的认可，听闻此高达前身曾经毁灭过星球殖民地内的所有旧人类文明，听着都很彪悍，可谓是战斗力极强！</p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">第二高达机体有点像电影里深海巨兽或者克苏恩之类北欧神话中的触手怪，被称为恶魔高达，自带自我升级机制，可以在自我体内变异进化达到更高层次而增加攻击力增加自身防御系统，但是在动漫大结局导致自我系统重载出了问题，要毁灭星球！</span></p>'),(72,'2021-01-25 06:49:15','官宣时刻｜爷青回！《灌篮高手》即将电影化，“全国大赛”要来了','每个80和90后，甚至是00后，心里或多或少总会有些关于《灌篮高手》的记忆。\n\n也许那是小学时班里忽然刮起的一阵篮球风，也许是那年暑假每到傍晚家家户户传来的相同音乐声，也许仅仅是几根铁杆子围出的一个圈……傍晚的动画时间，大家飞奔回家，打开点播频道，那群打球会慢放的男人闪动着，酷酷的流川枫和傻乎乎的樱木花道这对欢喜冤家的互动，我还可以看一百集，那就是青春的味道。','http://localhost:8080/ssmiagf8/upload/news_picture2.jpg','<p>如今，井上雄彦老头子终究是又一次照顾了我们的梦想！在2018年将其再版之后，时隔三年，2021年1月7日，井上雄彦再次在个人社交平台发文！《灌篮高手》即将电影化了！灌篮高手》究竟有多火？</p><p>“灌篮高手”是著名漫画家“井上雄彦”在1991年至1996年在《周刊少年JUMP》上连载的作品。作为一部青春热血题材的运动漫画，《灌篮高手》是一道难以超越的高峰，这部作品在前段时间日本15万漫迷投票最“喜欢”作品中依然拿到了第三的排名。要知道这是1996年完结的作品，足以能见识到这部作品的影响力有多大了。对于国内的漫迷来说同样如此，就像是那句经久不衰的“台词”，“安西教练，我好想打篮球”一样让人无法忘记。</p>'),(73,'2021-01-25 06:49:15','超能陆战队：人生的路还很长，学会放下，学会成长','温暖自己照耀他人，世间没有完美的事物，我们不必对自己如此苛责，接受自己的不完美，尽力去做，接受别人的不完美，尽力去爱。','http://localhost:8080/ssmiagf8/upload/news_picture3.jpg','<p class=\"ql-align-justify\"><strong style=\"color: rgb(0, 0, 0);\">愿你被世界世界温柔以待</strong></p><p class=\"ql-align-justify\"><strong>我们门每个都是一轮骄阳，只要愿意突破自己不使心灵蒙尘，阳光就会散发出来。</strong>温暖自己照耀他人，世间没有完美的事物，我们不必对自己如此苛责，接受自己的不完美，尽力去做，接受别人的不完美，尽力去爱。</p><p><br></p>'),(74,'2021-01-25 06:49:15','好莱坞将拍摄真人版《火影忍者》，演员阵容主要是亚洲人！','真人电影《火影忍者》的选角公告显示，演员阵容主要是亚洲人。是否吸取了过去翻拍日本动漫的“选角”争议教训呢？','http://localhost:8080/ssmiagf8/upload/news_picture4.jpg','<p class=\"ql-align-justify\">好莱坞计划拍摄的《火影忍者》真人电影似乎将要避免过去动画改编版中一直存在的争议。动漫和漫画的真人化在粉丝中享有相当糟糕的声誉，而且并非没有充分的理由。</p><p class=\"ql-align-justify\">尽管有少数日本制作的漫改电影获得了好评，但在好莱坞的票房却相当惨淡，这主要是因为这些电影要么忽略了它们的素材，要么是由于整体质量不高。</p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(51, 51, 51);\">好莱坞的真人漫改电影中出现的一个特别的问题就是角色“洗白”，即让白人演员扮演动漫中具有不同种族背景的角色。美版翻拍的《死亡笔记》和《攻壳机动队》就是最明显的例子，电影都把西方演员塑造成传统的日本角色，因此针对电影的批评不在少数。</span></p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remendongman`
--

DROP TABLE IF EXISTS `remendongman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `remendongman` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dongmanmingcheng` varchar(200) NOT NULL COMMENT '动漫名称',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `dongmanzuozhe` varchar(200) DEFAULT NULL COMMENT '动漫作者',
  `faxingriqi` date DEFAULT NULL COMMENT '发行日期',
  `shipinjieshao` varchar(200) DEFAULT NULL COMMENT '视频介绍',
  `dongmanxiangqing` longtext COMMENT '动漫详情',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='热门动漫';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remendongman`
--

LOCK TABLES `remendongman` WRITE;
/*!40000 ALTER TABLE `remendongman` DISABLE KEYS */;
INSERT INTO `remendongman` VALUES (21,'2021-01-25 06:49:15','高达','机甲','http://localhost:8080/ssmiagf8/upload/remendongman_tupian1.jpg','动漫作者1','2018-01-14','http://localhost:8080/ssmiagf8/upload/1611557927543.mp4','<p>动漫详情1</p>'),(22,'2021-01-25 06:49:15','动漫名称2','类型2','http://localhost:8080/ssmiagf8/upload/remendongman_tupian2.jpg','动漫作者2','2021-01-25','','动漫详情2'),(23,'2021-01-25 06:49:15','动漫名称3','类型3','http://localhost:8080/ssmiagf8/upload/remendongman_tupian3.jpg','动漫作者3','2021-01-25','','动漫详情3'),(24,'2021-01-25 06:49:15','动漫名称4','类型4','http://localhost:8080/ssmiagf8/upload/remendongman_tupian4.jpg','动漫作者4','2021-01-25','','动漫详情4'),(25,'2021-01-25 06:49:15','动漫名称5','类型5','http://localhost:8080/ssmiagf8/upload/remendongman_tupian5.jpg','动漫作者5','2021-01-25','','动漫详情5'),(26,'2021-01-25 06:49:15','动漫名称6','类型6','http://localhost:8080/ssmiagf8/upload/remendongman_tupian6.jpg','动漫作者6','2021-01-25','','动漫详情6');
/*!40000 ALTER TABLE `remendongman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611558545057 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1611558545056,'2021-01-25 07:09:04',1611558485396,21,'remendongman','高达','http://localhost:8080/ssmiagf8/upload/remendongman_tupian1.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','dise58jtxmu02p9tes7i6qx857m0ox1c','2021-01-25 06:52:27','2021-01-25 08:12:19'),(2,41,'001','yonghu','用户','w3yptreuxtd03gmy9rj50v8bcpqqg2e1','2021-01-25 07:05:30','2021-01-25 08:05:31'),(3,1611558485396,'666','yonghu','用户','jy3scv79mzgsd4njem0nvu78mgmnqdme','2021-01-25 07:08:11','2021-01-25 08:15:20');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-01-25 06:49:15'),(2,'000','000','管理员','2021-01-25 07:14:20');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xinpindongman`
--

DROP TABLE IF EXISTS `xinpindongman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xinpindongman` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dongmanmingcheng` varchar(200) NOT NULL COMMENT '动漫名称',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `dongmanzuozhe` varchar(200) DEFAULT NULL COMMENT '动漫作者',
  `shipinjieshao` varchar(200) DEFAULT NULL COMMENT '视频介绍',
  `dongmanxiangqing` longtext COMMENT '动漫详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='新品动漫';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xinpindongman`
--

LOCK TABLES `xinpindongman` WRITE;
/*!40000 ALTER TABLE `xinpindongman` DISABLE KEYS */;
INSERT INTO `xinpindongman` VALUES (31,'2021-01-25 06:49:15','动漫名称1','类型1','http://localhost:8080/ssmiagf8/upload/xinpindongman_tupian1.jpg','动漫作者1','http://localhost:8080/ssmiagf8/upload/1611557943597.mp4','<p>动漫详情1</p>','2021-01-25 15:10:03',4),(32,'2021-01-25 06:49:15','动漫名称2','类型2','http://localhost:8080/ssmiagf8/upload/xinpindongman_tupian2.jpg','动漫作者2','','动漫详情2','2021-01-25 14:49:15',2),(33,'2021-01-25 06:49:15','动漫名称3','类型3','http://localhost:8080/ssmiagf8/upload/xinpindongman_tupian3.jpg','动漫作者3','','动漫详情3','2021-01-25 14:49:15',3),(34,'2021-01-25 06:49:15','动漫名称4','类型4','http://localhost:8080/ssmiagf8/upload/xinpindongman_tupian4.jpg','动漫作者4','','动漫详情4','2021-01-25 14:49:15',4),(35,'2021-01-25 06:49:15','动漫名称5','类型5','http://localhost:8080/ssmiagf8/upload/xinpindongman_tupian5.jpg','动漫作者5','','动漫详情5','2021-01-25 15:15:57',6),(36,'2021-01-25 06:49:15','动漫名称6','类型6','http://localhost:8080/ssmiagf8/upload/xinpindongman_tupian6.jpg','动漫作者6','','动漫详情6','2021-01-25 14:49:15',6);
/*!40000 ALTER TABLE `xinpindongman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1611558485397 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (41,'2021-01-25 06:49:15','001','001','小吴','女','http://localhost:8080/ssmiagf8/upload/yonghu_touxiang1.jpg','13823888881','773890001@qq.com'),(42,'2021-01-25 06:49:15','用户2','123456','姓名2','男','http://localhost:8080/ssmiagf8/upload/yonghu_touxiang2.jpg','13823888882','773890002@qq.com'),(43,'2021-01-25 06:49:15','用户3','123456','姓名3','男','http://localhost:8080/ssmiagf8/upload/yonghu_touxiang3.jpg','13823888883','773890003@qq.com'),(44,'2021-01-25 06:49:15','用户4','123456','姓名4','男','http://localhost:8080/ssmiagf8/upload/yonghu_touxiang4.jpg','13823888884','773890004@qq.com'),(45,'2021-01-25 06:49:15','用户5','123456','姓名5','男','http://localhost:8080/ssmiagf8/upload/yonghu_touxiang5.jpg','13823888885','773890005@qq.com'),(46,'2021-01-25 06:49:15','用户6','123456','姓名6','男','http://localhost:8080/ssmiagf8/upload/yonghu_touxiang6.jpg','13823888886','773890006@qq.com'),(1611558485396,'2021-01-25 07:08:05','666','666','小李','男','http://localhost:8080/ssmiagf8/upload/1611558507748.jpg','16459878983','1645@123.com');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-26 20:38:08
