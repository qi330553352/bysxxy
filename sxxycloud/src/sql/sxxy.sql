/*
SQLyog Ultimate v11.25 (64 bit)
MySQL - 5.7.18-log : Database - sxxy
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sxxy` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `sxxy`;

/*Table structure for table `cloud_ecs_info` */

DROP TABLE IF EXISTS `cloud_ecs_info`;

CREATE TABLE `cloud_ecs_info` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `addr` varchar(20) DEFAULT NULL,
  `mac_addr` varchar(40) DEFAULT NULL,
  `addr_type` varchar(20) DEFAULT NULL,
  `addr_version` int(20) DEFAULT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_time` timestamp NULL DEFAULT NULL,
  `last_update_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `cloudecs_ecsgroup_relationship` */

DROP TABLE IF EXISTS `cloudecs_ecsgroup_relationship`;

CREATE TABLE `cloudecs_ecsgroup_relationship` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cloudecs_id` varchar(40) DEFAULT NULL COMMENT '云主机ID',
  `ecsgroup_id` bigint(20) DEFAULT NULL COMMENT '云主机组ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=267 DEFAULT CHARSET=utf8;

/*Table structure for table `ecs_group_info` */

DROP TABLE IF EXISTS `ecs_group_info`;

CREATE TABLE `ecs_group_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(40) DEFAULT NULL COMMENT '组名',
  `status` varchar(20) DEFAULT NULL COMMENT '运行状态',
  `remarks` varchar(400) DEFAULT NULL COMMENT '备注说明',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Table structure for table `system_resource` */

DROP TABLE IF EXISTS `system_resource`;

CREATE TABLE `system_resource` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `resource_name` varchar(20) DEFAULT NULL COMMENT '资源名称',
  `url` varchar(50) DEFAULT NULL COMMENT '路径匹配模式',
  `pid` bigint(20) DEFAULT '0' COMMENT '父节点ID',
  `pids` varchar(200) DEFAULT NULL COMMENT '父编号列表',
  `permission` varchar(200) DEFAULT NULL COMMENT '权限字符串',
  `resource_type` int(4) DEFAULT NULL COMMENT '资源类型 ResourceTypeEnum 枚举',
  `icon` varchar(20) DEFAULT NULL COMMENT '图标地址',
  `idx` int(10) DEFAULT NULL COMMENT '排序',
  `enabled` tinyint(1) DEFAULT '1' COMMENT '是否启用 true:启用 false:不启用',
  `http_method` varchar(30) DEFAULT NULL COMMENT '请求方法',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='系统资源';

/*Table structure for table `work_instance` */

DROP TABLE IF EXISTS `work_instance`;

CREATE TABLE `work_instance` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `introducer` varchar(20) DEFAULT NULL,
  `create_time` date DEFAULT NULL,
  `work_type` varchar(20) DEFAULT NULL,
  `describes` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
