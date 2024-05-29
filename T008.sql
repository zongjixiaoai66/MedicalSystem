/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t008`;
CREATE DATABASE IF NOT EXISTS `t008` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_croatian_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t008`;

DROP TABLE IF EXISTS `chuzhenxinxi`;
CREATE TABLE IF NOT EXISTS `chuzhenxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishenggonghao` varchar(200) DEFAULT NULL COMMENT '医生工号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `keshi` varchar(200) DEFAULT NULL COMMENT '科室',
  `shanzhang` varchar(200) DEFAULT NULL COMMENT '擅长',
  `chuzhenshijian` date NOT NULL COMMENT '出诊时间',
  `keyuerenshu` int NOT NULL COMMENT '可约人数',
  `guahaofei` int NOT NULL COMMENT '挂号费',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616405123711 DEFAULT CHARSET=utf8mb3 COMMENT='出诊信息';

DELETE FROM `chuzhenxinxi`;
INSERT INTO `chuzhenxinxi` (`id`, `addtime`, `yishenggonghao`, `yishengxingming`, `zhaopian`, `zhicheng`, `keshi`, `shanzhang`, `chuzhenshijian`, `keyuerenshu`, `guahaofei`, `clicktime`, `clicknum`) VALUES
	(51, '2022-03-12 09:16:43', '医生工号1', '医生姓名1', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '职称1', '科室1', '擅长1', '2022-03-12', 1, 1, '2022-03-12 17:16:43', 1),
	(52, '2022-03-12 09:16:43', '医生工号2', '医生姓名2', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '职称2', '科室2', '擅长2', '2022-03-12', 2, 2, '2022-03-12 17:16:43', 2),
	(53, '2022-03-12 09:16:43', '医生工号3', '医生姓名3', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '职称3', '科室3', '擅长3', '2022-03-12', 3, 3, '2022-03-12 17:16:43', 3),
	(54, '2022-03-12 09:16:43', '医生工号4', '医生姓名4', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '职称4', '科室4', '擅长4', '2022-03-12', 4, 4, '2022-03-12 17:19:21', 6),
	(55, '2022-03-12 09:16:43', '医生工号5', '医生姓名5', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '职称5', '科室5', '擅长5', '2022-03-12', 5, 5, '2022-03-12 17:16:43', 5),
	(56, '2022-03-12 09:16:43', '医生工号6', '医生姓名6', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '职称6', '科室6', '擅长6', '2022-03-12', 6, 6, '2022-03-12 17:26:55', 11),
	(1616405123710, '2022-03-12 09:25:23', '1', '张悦', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '主任医师', '皮肤科', '治疗过敏性皮炎', '2021-03-24', 40, 20, '2023-12-08 13:07:29', 4);

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/jspmkt6ay/upload/1616404907828.jpg'),
	(2, 'picture2', 'http://localhost:8080/jspmkt6ay/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/jspmkt6ay/upload/1616405096324.jpg'),
	(6, 'homepage', NULL);

DROP TABLE IF EXISTS `discusschuzhenxinxi`;
CREATE TABLE IF NOT EXISTS `discusschuzhenxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb3 COMMENT='出诊信息评论表';

DELETE FROM `discusschuzhenxinxi`;
INSERT INTO `discusschuzhenxinxi` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(131, '2022-03-12 09:16:43', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(132, '2022-03-12 09:16:43', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(133, '2022-03-12 09:16:43', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(134, '2022-03-12 09:16:43', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(135, '2022-03-12 09:16:43', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(136, '2022-03-12 09:16:43', 6, 6, '用户名6', '评论内容6', '回复内容6');

DROP TABLE IF EXISTS `discusskeshixinxi`;
CREATE TABLE IF NOT EXISTS `discusskeshixinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616405289630 DEFAULT CHARSET=utf8mb3 COMMENT='科室信息评论表';

DELETE FROM `discusskeshixinxi`;
INSERT INTO `discusskeshixinxi` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(121, '2022-03-12 09:16:43', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(122, '2022-03-12 09:16:43', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(123, '2022-03-12 09:16:43', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(124, '2022-03-12 09:16:43', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(125, '2022-03-12 09:16:43', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(126, '2022-03-12 09:16:43', 6, 6, '用户名6', '评论内容6', '回复内容6'),
	(1616405289629, '2022-03-12 09:28:08', 1616405044113, 1616405175804, NULL, '很不错的诊室', NULL);

DROP TABLE IF EXISTS `discussyiyuangonggao`;
CREATE TABLE IF NOT EXISTS `discussyiyuangonggao` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616405244591 DEFAULT CHARSET=utf8mb3 COMMENT='医院公告评论表';

DELETE FROM `discussyiyuangonggao`;
INSERT INTO `discussyiyuangonggao` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(111, '2022-03-12 09:16:43', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(112, '2022-03-12 09:16:43', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(113, '2022-03-12 09:16:43', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(114, '2022-03-12 09:16:43', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(115, '2022-03-12 09:16:43', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(116, '2022-03-12 09:16:43', 6, 6, '用户名6', '评论内容6', '回复内容6'),
	(1616405244590, '2022-03-12 09:27:23', 1616405004299, 1616405175804, NULL, 'dfgf', NULL);

DROP TABLE IF EXISTS `jiuzhenpingjia`;
CREATE TABLE IF NOT EXISTS `jiuzhenpingjia` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishenggonghao` varchar(200) DEFAULT NULL COMMENT '医生工号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `keshi` varchar(200) DEFAULT NULL COMMENT '科室',
  `chuzhenshijian` varchar(200) DEFAULT NULL COMMENT '出诊时间',
  `shijianduan` varchar(200) DEFAULT NULL COMMENT '时间段',
  `taidupingfen` varchar(200) DEFAULT NULL COMMENT '态度评分',
  `jishupingfen` varchar(200) DEFAULT NULL COMMENT '技术评分',
  `pingjianeirong` longtext COMMENT '评价内容',
  `pingjiariqi` date DEFAULT NULL COMMENT '评价日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616405470305 DEFAULT CHARSET=utf8mb3 COMMENT='就诊评价';

DELETE FROM `jiuzhenpingjia`;
INSERT INTO `jiuzhenpingjia` (`id`, `addtime`, `yishenggonghao`, `yishengxingming`, `zhicheng`, `keshi`, `chuzhenshijian`, `shijianduan`, `taidupingfen`, `jishupingfen`, `pingjianeirong`, `pingjiariqi`, `yonghuming`, `xingming`, `sfsh`, `shhf`) VALUES
	(91, '2022-03-12 09:16:43', '医生工号1', '医生姓名1', '职称1', '科室1', '出诊时间1', '时间段1', '1', '1', '评价内容1', '2022-03-12', '用户名1', '姓名1', '是', ''),
	(92, '2022-03-12 09:16:43', '医生工号2', '医生姓名2', '职称2', '科室2', '出诊时间2', '时间段2', '1', '1', '评价内容2', '2022-03-12', '用户名2', '姓名2', '是', ''),
	(93, '2022-03-12 09:16:43', '医生工号3', '医生姓名3', '职称3', '科室3', '出诊时间3', '时间段3', '1', '1', '评价内容3', '2022-03-12', '用户名3', '姓名3', '是', ''),
	(94, '2022-03-12 09:16:43', '医生工号4', '医生姓名4', '职称4', '科室4', '出诊时间4', '时间段4', '1', '1', '评价内容4', '2022-03-12', '用户名4', '姓名4', '是', ''),
	(95, '2022-03-12 09:16:43', '医生工号5', '医生姓名5', '职称5', '科室5', '出诊时间5', '时间段5', '1', '1', '评价内容5', '2022-03-12', '用户名5', '姓名5', '是', ''),
	(96, '2022-03-12 09:16:43', '医生工号6', '医生姓名6', '职称6', '科室6', '出诊时间6', '时间段6', '1', '1', '评价内容6', '2022-03-12', '用户名6', '姓名6', '是', ''),
	(1616405470304, '2022-03-12 09:31:09', '1', '张悦', '主任医师', '皮肤科', '2021-03-24', '10:00-10:30', '5', '5', '很不错的医生，医术高明，态度和蔼', '2021-03-24', '2', '陈一', '是', '多注意皮肤保养');

DROP TABLE IF EXISTS `keshixinxi`;
CREATE TABLE IF NOT EXISTS `keshixinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `keshi` varchar(200) NOT NULL COMMENT '科室',
  `tupian` varchar(200) NOT NULL COMMENT '图片',
  `keshijieshao` longtext COMMENT '科室介绍',
  `keshiweizhi` varchar(200) DEFAULT NULL COMMENT '科室位置',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616405044114 DEFAULT CHARSET=utf8mb3 COMMENT='科室信息';

DELETE FROM `keshixinxi`;
INSERT INTO `keshixinxi` (`id`, `addtime`, `keshi`, `tupian`, `keshijieshao`, `keshiweizhi`) VALUES
	(31, '2022-03-12 09:16:43', '科室1', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '科室介绍1', '科室位置1'),
	(32, '2022-03-12 09:16:43', '科室2', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '科室介绍2', '科室位置2'),
	(33, '2022-03-12 09:16:43', '科室3', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '科室介绍3', '科室位置3'),
	(34, '2022-03-12 09:16:43', '科室4', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '科室介绍4', '科室位置4'),
	(35, '2022-03-12 09:16:43', '科室5', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '科室介绍5', '科室位置5'),
	(36, '2022-03-12 09:16:43', '科室6', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '科室介绍6', '科室位置6'),
	(1616405044113, '2022-03-12 09:24:03', '皮肤科', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '成立于2006年，本科室设备先进,技术力量雄厚，科室共有医护人员7名，主治医师2名、医师2名、美容技师1名、护士2名。', '门诊大楼2楼');

DROP TABLE IF EXISTS `menzhenbingli`;
CREATE TABLE IF NOT EXISTS `menzhenbingli` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `keshi` varchar(200) DEFAULT NULL COMMENT '科室',
  `chuzhenshijian` varchar(200) DEFAULT NULL COMMENT '出诊时间',
  `shijianduan` varchar(200) DEFAULT NULL COMMENT '时间段',
  `zhusu` varchar(200) DEFAULT NULL COMMENT '主诉',
  `xianbingshi` varchar(200) DEFAULT NULL COMMENT '现病史',
  `jiwangshi` varchar(200) DEFAULT NULL COMMENT '既往史',
  `yaominshi` varchar(200) DEFAULT NULL COMMENT '药敏史',
  `zhenduan` varchar(200) DEFAULT NULL COMMENT '诊断',
  `zhiliaofangan` longtext COMMENT '治疗方案',
  `yizhu` varchar(200) DEFAULT NULL COMMENT '医嘱',
  `yishenggonghao` varchar(200) DEFAULT NULL COMMENT '医生工号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616405404933 DEFAULT CHARSET=utf8mb3 COMMENT='门诊病历';

DELETE FROM `menzhenbingli`;
INSERT INTO `menzhenbingli` (`id`, `addtime`, `yonghuming`, `xingming`, `keshi`, `chuzhenshijian`, `shijianduan`, `zhusu`, `xianbingshi`, `jiwangshi`, `yaominshi`, `zhenduan`, `zhiliaofangan`, `yizhu`, `yishenggonghao`, `yishengxingming`) VALUES
	(81, '2022-03-12 09:16:43', '用户名1', '姓名1', '科室1', '出诊时间1', '时间段1', '主诉1', '现病史1', '既往史1', '药敏史1', '诊断1', '治疗方案1', '医嘱1', '医生工号1', '医生姓名1'),
	(82, '2022-03-12 09:16:43', '用户名2', '姓名2', '科室2', '出诊时间2', '时间段2', '主诉2', '现病史2', '既往史2', '药敏史2', '诊断2', '治疗方案2', '医嘱2', '医生工号2', '医生姓名2'),
	(83, '2022-03-12 09:16:43', '用户名3', '姓名3', '科室3', '出诊时间3', '时间段3', '主诉3', '现病史3', '既往史3', '药敏史3', '诊断3', '治疗方案3', '医嘱3', '医生工号3', '医生姓名3'),
	(84, '2022-03-12 09:16:43', '用户名4', '姓名4', '科室4', '出诊时间4', '时间段4', '主诉4', '现病史4', '既往史4', '药敏史4', '诊断4', '治疗方案4', '医嘱4', '医生工号4', '医生姓名4'),
	(85, '2022-03-12 09:16:43', '用户名5', '姓名5', '科室5', '出诊时间5', '时间段5', '主诉5', '现病史5', '既往史5', '药敏史5', '诊断5', '治疗方案5', '医嘱5', '医生工号5', '医生姓名5'),
	(86, '2022-03-12 09:16:43', '用户名6', '姓名6', '科室6', '出诊时间6', '时间段6', '主诉6', '现病史6', '既往史6', '药敏史6', '诊断6', '治疗方案6', '医嘱6', '医生工号6', '医生姓名6'),
	(1616405404932, '2022-03-12 09:30:04', '2', '陈一', '皮肤科', '2021-03-24', '10:00-10:30', '皮肤瘙痒', '皮肤痒', '无', '无', '皮肤过敏', '用药', '按时用药，复诊 ', '1', '张悦');

DROP TABLE IF EXISTS `storeup`;
CREATE TABLE IF NOT EXISTS `storeup` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616405305346 DEFAULT CHARSET=utf8mb3 COMMENT='收藏表';

DELETE FROM `storeup`;
INSERT INTO `storeup` (`id`, `addtime`, `userid`, `refid`, `tablename`, `name`, `picture`) VALUES
	(1616405241186, '2022-03-12 09:27:20', 1616405175804, 1616405004299, 'yiyuangonggao', '就医指南', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png'),
	(1616405282617, '2022-03-12 09:28:02', 1616405175804, 1616405044113, 'keshixinxi', '皮肤科', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 21, '用户1', 'yonghu', '用户', 'xzwbjufn1uniz629fh4s3zzyexesxl7b', '2022-03-12 09:18:53', '2022-03-12 10:18:53'),
	(2, 1, 'abo', 'users', '管理员', 'theg7z6mapjx44q94r7nzrzwjb99u7v8', '2022-03-12 09:20:23', '2023-12-08 06:06:48'),
	(3, 1616405073237, '1', 'yisheng', '医生', 'k9fppxovpvv82mw44dr31gx1w9zyfdl4', '2022-03-12 09:25:06', '2022-03-12 10:31:19'),
	(4, 1616405175804, '2', 'yonghu', '用户', 'feo03rc3qfdth2mozoc7l6qknnce2vtp', '2022-03-12 09:26:21', '2022-03-12 10:30:16');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2022-03-12 09:16:43');

DROP TABLE IF EXISTS `yisheng`;
CREATE TABLE IF NOT EXISTS `yisheng` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishenggonghao` varchar(200) NOT NULL COMMENT '医生工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yishengxingming` varchar(200) NOT NULL COMMENT '医生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `keshi` varchar(200) DEFAULT NULL COMMENT '科室',
  `shanzhang` varchar(200) DEFAULT NULL COMMENT '擅长',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616405073238 DEFAULT CHARSET=utf8mb3 COMMENT='医生';

DELETE FROM `yisheng`;
INSERT INTO `yisheng` (`id`, `addtime`, `yishenggonghao`, `mima`, `yishengxingming`, `xingbie`, `zhaopian`, `zhicheng`, `keshi`, `shanzhang`, `shouji`) VALUES
	(41, '2022-03-12 09:16:43', '医生1', '123456', '医生姓名1', '男', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '医师', '科室1', '擅长1', '13823888881'),
	(42, '2022-03-12 09:16:43', '医生2', '123456', '医生姓名2', '男', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '医师', '科室2', '擅长2', '13823888882'),
	(43, '2022-03-12 09:16:43', '医生3', '123456', '医生姓名3', '男', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '医师', '科室3', '擅长3', '13823888883'),
	(44, '2022-03-12 09:16:43', '医生4', '123456', '医生姓名4', '男', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '医师', '科室4', '擅长4', '13823888884'),
	(45, '2022-03-12 09:16:43', '医生5', '123456', '医生姓名5', '男', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '医师', '科室5', '擅长5', '13823888885'),
	(46, '2022-03-12 09:16:43', '医生6', '123456', '医生姓名6', '男', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '医师', '科室6', '擅长6', '13823888886'),
	(1616405073237, '2022-03-12 09:24:33', '1', '1', '张悦', '女', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '主任医师', '皮肤科', '治疗过敏性皮炎', '12345678945');

DROP TABLE IF EXISTS `yiyuangonggao`;
CREATE TABLE IF NOT EXISTS `yiyuangonggao` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonggaobiaoti` varchar(200) NOT NULL COMMENT '公告标题',
  `leixing` varchar(200) NOT NULL COMMENT '类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `neirong` longtext COMMENT '内容',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616405004300 DEFAULT CHARSET=utf8mb3 COMMENT='医院公告';

DELETE FROM `yiyuangonggao`;
INSERT INTO `yiyuangonggao` (`id`, `addtime`, `gonggaobiaoti`, `leixing`, `tupian`, `neirong`, `faburiqi`) VALUES
	(11, '2022-03-12 09:16:43', '公告标题1', '类型1', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '内容1', '2022-03-12'),
	(12, '2022-03-12 09:16:43', '公告标题2', '类型2', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '内容2', '2022-03-12'),
	(13, '2022-03-12 09:16:43', '公告标题3', '类型3', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '内容3', '2022-03-12'),
	(14, '2022-03-12 09:16:43', '公告标题4', '类型4', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '内容4\r\n', '2022-03-12'),
	(15, '2022-03-12 09:16:43', '公告标题5', '类型5', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '内容5', '2022-03-12'),
	(16, '2022-03-12 09:16:43', '公告标题6', '类型6', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '内容6', '2022-03-12'),
	(1616405004299, '2022-03-12 09:23:24', '就医指南', '指南', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '1）用户首次预约必须注册就诊人的真实有效基本信息，包括就诊人员的真实姓名、有效证件号(身份证、军官证、护照、港澳通行证、台胞证)、性别、电话、手机号码等基本信息。\r\n2）可选择相应科室，医生进行挂号预约，支付挂号费预约后，需要医生审核，审核通过方式预约成功\r\n3）成功预约挂号后，系统将自动保存用户预约记录\r\n\r\n', '2021-03-23');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1616405175805 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `addtime`, `yonghuming`, `mima`, `xingming`, `touxiang`, `xingbie`, `lianxidianhua`, `shenfenzheng`) VALUES
	(21, '2022-03-12 09:16:43', '用户1', '123456', '姓名1', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '男', '13823888881', '440300199101010001'),
	(22, '2022-03-12 09:16:43', '用户2', '123456', '姓名2', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '男', '13823888882', '440300199202020002'),
	(23, '2022-03-12 09:16:43', '用户3', '123456', '姓名3', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '男', '13823888883', '440300199303030003'),
	(24, '2022-03-12 09:16:43', '用户4', '123456', '姓名4', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '男', '13823888884', '440300199404040004'),
	(25, '2022-03-12 09:16:43', '用户5', '123456', '姓名5', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '男', '13823888885', '440300199505050005'),
	(26, '2022-03-12 09:16:43', '用户6', '123456', '姓名6', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '男', '13823888886', '440300199606060006'),
	(1616405175804, '2022-03-12 09:26:15', '2', '2', '陈一', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '女', '12312312312', '123456789789456123');

DROP TABLE IF EXISTS `yuyueguahao`;
CREATE TABLE IF NOT EXISTS `yuyueguahao` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishenggonghao` varchar(200) DEFAULT NULL COMMENT '医生工号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `keshi` varchar(200) DEFAULT NULL COMMENT '科室',
  `guahaofei` varchar(200) DEFAULT NULL COMMENT '挂号费',
  `chuzhenshijian` varchar(200) DEFAULT NULL COMMENT '出诊时间',
  `shijianduan` varchar(200) DEFAULT NULL COMMENT '时间段',
  `jiuzhenmiaoshu` varchar(200) DEFAULT NULL COMMENT '就诊描述',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1616405317775 DEFAULT CHARSET=utf8mb3 COMMENT='预约挂号';

DELETE FROM `yuyueguahao`;
INSERT INTO `yuyueguahao` (`id`, `addtime`, `yishenggonghao`, `yishengxingming`, `zhicheng`, `keshi`, `guahaofei`, `chuzhenshijian`, `shijianduan`, `jiuzhenmiaoshu`, `riqi`, `yonghuming`, `xingming`, `shenfenzheng`, `sfsh`, `shhf`, `ispay`) VALUES
	(71, '2022-03-12 09:16:43', '医生工号1', '医生姓名1', '职称1', '科室1', '挂号费1', '出诊时间1', '时间段1', '就诊描述1', '2022-03-12', '用户名1', '姓名1', '身份证1', '是', '', '未支付'),
	(72, '2022-03-12 09:16:43', '医生工号2', '医生姓名2', '职称2', '科室2', '挂号费2', '出诊时间2', '时间段2', '就诊描述2', '2022-03-12', '用户名2', '姓名2', '身份证2', '是', '', '未支付'),
	(73, '2022-03-12 09:16:43', '医生工号3', '医生姓名3', '职称3', '科室3', '挂号费3', '出诊时间3', '时间段3', '就诊描述3', '2022-03-12', '用户名3', '姓名3', '身份证3', '是', '', '未支付'),
	(74, '2022-03-12 09:16:43', '医生工号4', '医生姓名4', '职称4', '科室4', '挂号费4', '出诊时间4', '时间段4', '就诊描述4', '2022-03-12', '用户名4', '姓名4', '身份证4', '是', '', '未支付'),
	(75, '2022-03-12 09:16:43', '医生工号5', '医生姓名5', '职称5', '科室5', '挂号费5', '出诊时间5', '时间段5', '就诊描述5', '2022-03-12', '用户名5', '姓名5', '身份证5', '是', '', '未支付'),
	(76, '2022-03-12 09:16:43', '医生工号6', '医生姓名6', '职称6', '科室6', '挂号费6', '出诊时间6', '时间段6', '就诊描述6', '2022-03-12', '用户名6', '姓名6', '身份证6', '是', '', '未支付'),
	(1616404756745, '2022-03-12 09:19:16', '医生工号4', '医生姓名4', '职称4', '科室4', '4', '2022-03-12', '时间段2', '发 ', '2022-03-12', '用户1', '姓名1', '440300199101010001', '否', NULL, '未支付'),
	(1616405317774, '2022-03-12 09:28:37', '1', '张悦', '主任医师', '皮肤科', '20', '2021-03-24', '10:00-10:30', '皮肤过敏', '2022-03-12', '2', '陈一', '123456789789456123', '是', 'ok', '已支付');

DROP TABLE IF EXISTS `yuyueshijianduan`;
CREATE TABLE IF NOT EXISTS `yuyueshijianduan` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shijianduan` varchar(200) NOT NULL COMMENT '时间段',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shijianduan` (`shijianduan`)
) ENGINE=InnoDB AUTO_INCREMENT=1616405088701 DEFAULT CHARSET=utf8mb3 COMMENT='预约时间段';

DELETE FROM `yuyueshijianduan`;
INSERT INTO `yuyueshijianduan` (`id`, `addtime`, `shijianduan`) VALUES
	(61, '2022-03-12 09:16:43', '时间段1'),
	(62, '2022-03-12 09:16:43', '时间段2'),
	(63, '2022-03-12 09:16:43', '时间段3'),
	(64, '2022-03-12 09:16:43', '时间段4'),
	(65, '2022-03-12 09:16:43', '时间段5'),
	(66, '2022-03-12 09:16:43', '时间段6'),
	(1616405088700, '2022-03-12 09:24:47', '10:00-10:30');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
