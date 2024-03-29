/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50547
Source Host           : localhost:3306
Source Database       : kiscms

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2016-04-17 16:45:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for kis_doc
-- ----------------------------
DROP TABLE IF EXISTS `kis_doc`;
CREATE TABLE `kis_doc` (
  `doc_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文档ID',
  `create_id` int(10) unsigned NOT NULL COMMENT '创建者ID',
  `doc_ext_id` int(10) unsigned NOT NULL COMMENT '扩展字段ID',
  `state` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '文档状态 1=草稿 2=已发布',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `keywords` varchar(50) NOT NULL DEFAULT '' COMMENT 'seo关键词',
  `image` varchar(200) NOT NULL DEFAULT '' COMMENT '图片',
  `content` text NOT NULL COMMENT '主体',
  `createtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `edittime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `pushtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '发布时间',
  PRIMARY KEY (`doc_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='文档表';

-- ----------------------------
-- Records of kis_doc
-- ----------------------------
INSERT INTO `kis_doc` VALUES ('1', '2', '0', '2', 'kiscms是什么?', '', '', '&lt;p style=&quot;text-indent:2em;&quot;&gt;\n	Keep it simple！这个是一个简单的便于二次开发的web内容管理系统。大多数情况下，它不能满足您的需求。\n&lt;/p&gt;\n&lt;p style=&quot;text-indent:2em;&quot;&gt;\n	kiscms适合二次开发。它具备基本的模块：\n&lt;/p&gt;\n&lt;p style=&quot;text-indent:2em;&quot;&gt;\n	1、用户模块\n&lt;/p&gt;\n&lt;p style=&quot;text-indent:2em;&quot;&gt;\n	2、权限模块\n&lt;/p&gt;\n&lt;p style=&quot;text-indent:2em;&quot;&gt;\n	3、文档模块\n&lt;/p&gt;', '2016-02-24 15:48:35', '2016-03-06 20:02:44', '2016-02-24 15:48:46');
INSERT INTO `kis_doc` VALUES ('2', '2', '0', '2', '我们为什么需要它?', '', '', '&lt;p style=&quot;text-indent:2em;&quot;&gt;\n	网站的开发需要做大量的工作，为了加快项目进度，我们通常会用上框架技术，甚至是一些现成的项目，进行二次开发。\n&lt;/p&gt;\n&lt;p style=&quot;text-indent:2em;&quot;&gt;\n	kiscms是一个工作进度介于框架与现成项目之间的产品。用它做二次开发，可以减少我们搭建框架、编写基本模块的工作量，加快项目进度。\n&lt;/p&gt;', '2016-02-24 16:32:50', '2016-02-29 16:24:28', '2016-02-24 16:33:02');
INSERT INTO `kis_doc` VALUES ('3', '2', '0', '2', '它有什么优势?', '', '', '&lt;p style=&quot;text-indent:2em;&quot;&gt;\n	1、kiscms采用了ThinkPHP、Bootstrap、Layer、Laydate、Jquery、Ckeditor、Plupload等优秀的框架与库，它们可以极大的提高我们的项目质量。\n&lt;/p&gt;\n&lt;p style=&quot;text-indent:2em;&quot;&gt;\n	2、简明规范的数据库表设计，方便我们在二次开发的时候进行大刀阔斧的增改。\n&lt;/p&gt;\n&lt;p style=&quot;text-indent:2em;&quot;&gt;\n	3、简洁的后台界面，就一个字“高颜值”！\n&lt;/p&gt;', '2016-02-24 16:35:21', '2016-04-16 23:05:13', '2016-02-26 23:49:23');
INSERT INTO `kis_doc` VALUES ('4', '1', '0', '2', '如何获取它?', '', '', '&lt;p style=&quot;text-indent:2em;&quot;&gt;\n	kiscms程序完全遵循MIT（The MIT License）开源协议。&lt;a href=&quot;https://github.com/buexplain/kiscms/archive/master.zip&quot;&gt;下载&lt;/a&gt; \n&lt;/p&gt;', '2016-02-28 19:53:25', '2016-03-13 14:56:28', '2016-02-28 19:53:39');
INSERT INTO `kis_doc` VALUES ('5', '1', '0', '2', '其它', '', '', '&lt;p style=&quot;text-indent:2em;&quot;&gt;\n	kiscms QQ交流群：89292141\n&lt;/p&gt;\n&lt;p style=&quot;text-indent:2em;&quot;&gt;\n	建议安装环境： Linux + Apache + PHP or Linux + Nginx + PHP\n&lt;/p&gt;\n&lt;p style=&quot;text-indent:2em;&quot;&gt;\n	安装步骤：\n&lt;/p&gt;\n&lt;p style=&quot;text-indent:2em;&quot;&gt;\n	1、导入（工具：phpmyadmin） kiscms.sql\n&lt;/p&gt;\n&lt;p style=&quot;text-indent:2em;&quot;&gt;\n	2、配置数据库连接文件 Application/Common/Conf/db.php\n&lt;/p&gt;\n&lt;p style=&quot;text-indent:2em;&quot;&gt;\n	3、配置网站根目录到 www\n&lt;/p&gt;\n&lt;p style=&quot;text-indent:2em;&quot;&gt;\n	4、进入后台更改密码，后台地址：http://域名/Admin/Sign/index.html\n&lt;/p&gt;\n&lt;p style=&quot;text-indent:2em;&quot;&gt;\n	后台登录帐号，将其中的#去掉：\n&lt;/p&gt;\n&lt;p style=&quot;text-indent:2em;&quot;&gt;\n	admin#@admin.c#om&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 12345678\n&lt;/p&gt;\n&lt;p style=&quot;text-indent:2em;&quot;&gt;\n	buexplain#@163.c#om&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 12345678\n&lt;/p&gt;\n&lt;p style=&quot;text-indent:2em;&quot;&gt;\n	guest#@guest.c#om&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; 12345678\n&lt;/p&gt;\n&lt;p style=&quot;text-indent:2em;&quot;&gt;\n	&lt;br /&gt;\n&lt;/p&gt;', '2016-02-28 19:54:15', '2016-03-13 14:49:19', '2016-02-28 19:54:22');

-- ----------------------------
-- Table structure for kis_doc_category
-- ----------------------------
DROP TABLE IF EXISTS `kis_doc_category`;
CREATE TABLE `kis_doc_category` (
  `cid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `pid` int(10) unsigned NOT NULL COMMENT '父ID',
  `cname` varchar(50) NOT NULL DEFAULT '' COMMENT '分类名',
  `route` varchar(50) NOT NULL DEFAULT '' COMMENT '导航路由',
  `depth` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '层级深度',
  `sort` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='文档分类表';

-- ----------------------------
-- Records of kis_doc_category
-- ----------------------------
INSERT INTO `kis_doc_category` VALUES ('1', '0', '编程', '', '1', '0');
INSERT INTO `kis_doc_category` VALUES ('2', '0', '随笔', '', '1', '0');
INSERT INTO `kis_doc_category` VALUES ('3', '0', '关于kiscms', 'Single', '1', '0');
INSERT INTO `kis_doc_category` VALUES ('4', '0', '关于我', 'Single', '1', '0');
INSERT INTO `kis_doc_category` VALUES ('5', '0', '博客声明', 'Single', '1', '0');
INSERT INTO `kis_doc_category` VALUES ('6', '1', 'html', '', '2', '0');
INSERT INTO `kis_doc_category` VALUES ('7', '1', 'css', '', '2', '0');
INSERT INTO `kis_doc_category` VALUES ('8', '1', 'javascript', '', '2', '0');
INSERT INTO `kis_doc_category` VALUES ('9', '1', 'php', '', '2', '0');
INSERT INTO `kis_doc_category` VALUES ('10', '1', 'mysql', '', '2', '0');
INSERT INTO `kis_doc_category` VALUES ('11', '1', 'memcache', '', '2', '0');
INSERT INTO `kis_doc_category` VALUES ('12', '1', 'redis', '', '2', '0');
INSERT INTO `kis_doc_category` VALUES ('13', '1', 'linux', '', '2', '0');

-- ----------------------------
-- Table structure for kis_doc_category_relation
-- ----------------------------
DROP TABLE IF EXISTS `kis_doc_category_relation`;
CREATE TABLE `kis_doc_category_relation` (
  `doc_id` int(10) unsigned NOT NULL COMMENT '文档ID',
  `cid` int(10) unsigned NOT NULL COMMENT '分类ID',
  PRIMARY KEY (`doc_id`,`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文档分类关系表';

-- ----------------------------
-- Records of kis_doc_category_relation
-- ----------------------------
INSERT INTO `kis_doc_category_relation` VALUES ('1', '3');
INSERT INTO `kis_doc_category_relation` VALUES ('2', '3');
INSERT INTO `kis_doc_category_relation` VALUES ('3', '3');
INSERT INTO `kis_doc_category_relation` VALUES ('4', '3');
INSERT INTO `kis_doc_category_relation` VALUES ('5', '3');

-- ----------------------------
-- Table structure for kis_doc_ext
-- ----------------------------
DROP TABLE IF EXISTS `kis_doc_ext`;
CREATE TABLE `kis_doc_ext` (
  `doc_ext_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文档扩展ID',
  `ext_name` varchar(50) NOT NULL DEFAULT '' COMMENT '扩展名',
  `sort` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`doc_ext_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文档扩展表';

-- ----------------------------
-- Records of kis_doc_ext
-- ----------------------------

-- ----------------------------
-- Table structure for kis_doc_ext_field
-- ----------------------------
DROP TABLE IF EXISTS `kis_doc_ext_field`;
CREATE TABLE `kis_doc_ext_field` (
  `doc_ext_field_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `doc_ext_id` int(10) unsigned NOT NULL COMMENT '文档扩展ID',
  `field_name` varchar(50) NOT NULL DEFAULT '' COMMENT '字段名',
  `field_desc` varchar(50) NOT NULL DEFAULT '' COMMENT '字段说明',
  `form_value` varchar(100) NOT NULL DEFAULT '' COMMENT '表单默认值 英文逗号分隔',
  `form_type` varchar(50) NOT NULL DEFAULT '' COMMENT '表单类型 select=下拉框 checkbox=多选框 radio=单选框 date=日期框 text=文本框 textarea=文本域',
  `sort` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`doc_ext_field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文档扩展字段表';

-- ----------------------------
-- Records of kis_doc_ext_field
-- ----------------------------

-- ----------------------------
-- Table structure for kis_doc_ext_value
-- ----------------------------
DROP TABLE IF EXISTS `kis_doc_ext_value`;
CREATE TABLE `kis_doc_ext_value` (
  `doc_id` int(10) unsigned NOT NULL COMMENT '文档ID',
  `doc_ext_id` int(10) unsigned NOT NULL COMMENT '文档扩展ID',
  `doc_ext_field_id` int(10) unsigned NOT NULL COMMENT '文档扩展字段ID',
  `value` varchar(21840) NOT NULL DEFAULT '' COMMENT '值(65535 - 1 - 2 - 4 - 4 - 4)/3',
  PRIMARY KEY (`doc_id`,`doc_ext_field_id`),
  KEY `doc_id_doc_ext_id` (`doc_id`,`doc_ext_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文档扩展数据表';

-- ----------------------------
-- Records of kis_doc_ext_value
-- ----------------------------

-- ----------------------------
-- Table structure for kis_node
-- ----------------------------
DROP TABLE IF EXISTS `kis_node`;
CREATE TABLE `kis_node` (
  `node_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '权限节点ID',
  `pid` int(10) unsigned NOT NULL COMMENT '父ID',
  `zh_name` varchar(50) NOT NULL DEFAULT '' COMMENT '节点中文名',
  `en_name` varchar(50) NOT NULL DEFAULT '' COMMENT '节点名英文',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '1=模块 2=控制器 3=方法 ',
  `is_nav` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否菜单显示 0=否 1=是',
  `remark` varchar(100) NOT NULL DEFAULT '' COMMENT '备注',
  `ban` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否禁止 0=否 1=是',
  PRIMARY KEY (`node_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='权限节点表';

-- ----------------------------
-- Records of kis_node
-- ----------------------------
INSERT INTO `kis_node` VALUES ('1', '0', '根节点', 'Root', '0', '0', '根节点', '0');
INSERT INTO `kis_node` VALUES ('2', '1', '后台管理', 'Admin', '1', '0', '后台管理', '0');
INSERT INTO `kis_node` VALUES ('3', '2', '权限管理', 'Auth', '2', '1', '权限管理', '0');
INSERT INTO `kis_node` VALUES ('5', '3', '添加角色', 'addRole', '3', '0', '添加角色', '0');
INSERT INTO `kis_node` VALUES ('6', '3', '删除角色', 'delRole', '3', '0', '删除角色', '0');
INSERT INTO `kis_node` VALUES ('7', '3', '设置权限', 'setRoleNode', '3', '0', '设置角色的权限节点', '0');
INSERT INTO `kis_node` VALUES ('8', '3', '节点管理', 'listNode', '3', '1', '节点管理', '0');
INSERT INTO `kis_node` VALUES ('9', '3', '添加节点', 'addNode', '3', '0', '添加节点', '0');
INSERT INTO `kis_node` VALUES ('10', '3', '删除节点', 'delNode', '3', '0', '删除节点', '0');
INSERT INTO `kis_node` VALUES ('11', '2', '用户管理', 'User', '2', '1', '用户管理', '0');
INSERT INTO `kis_node` VALUES ('12', '11', '用户帐号', 'listAccounts', '3', '1', '用户帐号列表', '0');
INSERT INTO `kis_node` VALUES ('14', '11', '添加信息', 'addUinfo', '3', '0', '添加用户信息', '0');
INSERT INTO `kis_node` VALUES ('15', '11', '修改密码', 'setPasswd', '3', '0', '修改密码', '0');
INSERT INTO `kis_node` VALUES ('16', '11', '用户信息', 'listUinfo', '3', '1', '用户信息列表', '0');
INSERT INTO `kis_node` VALUES ('17', '11', '禁封帐号', 'setBan', '3', '0', '禁封帐号', '0');
INSERT INTO `kis_node` VALUES ('18', '11', '添加帐号', 'addAccounts', '3', '0', '添加帐号', '0');
INSERT INTO `kis_node` VALUES ('19', '2', '分类管理', 'DocCategory', '2', '1', '分类管理', '0');
INSERT INTO `kis_node` VALUES ('20', '19', '分类信息', 'listDocCategory', '3', '1', '分类信息', '0');
INSERT INTO `kis_node` VALUES ('21', '19', '添加分类', 'addDocCategory', '3', '0', '添加分类', '0');
INSERT INTO `kis_node` VALUES ('22', '19', '删除分类', 'delDocCategory', '3', '0', '删除分类', '0');
INSERT INTO `kis_node` VALUES ('23', '2', '文档扩展', 'DocExt', '2', '1', '文档扩展', '0');
INSERT INTO `kis_node` VALUES ('24', '23', '扩展列表', 'listDocExt', '3', '1', '扩展列表', '0');
INSERT INTO `kis_node` VALUES ('25', '23', '添加扩展', 'addDocExt', '3', '0', '添加扩展', '0');
INSERT INTO `kis_node` VALUES ('26', '23', '删除扩展', 'delDocExt', '3', '0', '删除扩展', '0');
INSERT INTO `kis_node` VALUES ('27', '23', '扩展字段', 'listField', '3', '0', '扩展字段', '0');
INSERT INTO `kis_node` VALUES ('28', '23', '添加字段', 'addField', '3', '0', '添加字段', '0');
INSERT INTO `kis_node` VALUES ('29', '23', '删除字段', 'delField', '3', '0', '删除字段', '0');
INSERT INTO `kis_node` VALUES ('30', '2', '文档管理', 'Doc', '2', '1', '文档管理', '0');
INSERT INTO `kis_node` VALUES ('31', '30', '文档列表', 'listDoc', '3', '1', '文档列表', '0');
INSERT INTO `kis_node` VALUES ('32', '30', '添加文档', 'addDoc', '3', '0', '添加文档', '0');
INSERT INTO `kis_node` VALUES ('33', '30', '删除文档', 'delDoc', '3', '0', '删除文档', '0');
INSERT INTO `kis_node` VALUES ('34', '30', '添加文档扩展数据', 'addDocExtData', '3', '0', '添加文档扩展数据', '0');
INSERT INTO `kis_node` VALUES ('35', '30', '删除文档扩展数据', 'delDocExtData', '3', '0', '删除文档扩展数据', '0');
INSERT INTO `kis_node` VALUES ('36', '30', '更新文档状态', 'setState', '3', '0', '更新文档状态', '0');
INSERT INTO `kis_node` VALUES ('37', '3', '角色管理', 'listRole', '3', '1', '角色管理', '0');
INSERT INTO `kis_node` VALUES ('38', '11', '登录日志', 'listLoginLog', '3', '0', '登录日志', '0');

-- ----------------------------
-- Table structure for kis_role
-- ----------------------------
DROP TABLE IF EXISTS `kis_role`;
CREATE TABLE `kis_role` (
  `role_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(50) NOT NULL DEFAULT '' COMMENT '角色名',
  `ban` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否禁止 0=否 1=是',
  `remark` varchar(100) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of kis_role
-- ----------------------------
INSERT INTO `kis_role` VALUES ('1', '超级管理员', '0', '超级管理员');
INSERT INTO `kis_role` VALUES ('2', '管理员', '0', '管理员');
INSERT INTO `kis_role` VALUES ('3', '观光团', '0', '观光团');

-- ----------------------------
-- Table structure for kis_role_node
-- ----------------------------
DROP TABLE IF EXISTS `kis_role_node`;
CREATE TABLE `kis_role_node` (
  `role_id` int(10) unsigned NOT NULL COMMENT '角色ID',
  `node_id` int(10) unsigned NOT NULL COMMENT '权限节点ID',
  KEY `role_id` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色权限节点表';

-- ----------------------------
-- Records of kis_role_node
-- ----------------------------
INSERT INTO `kis_role_node` VALUES ('1', '1');
INSERT INTO `kis_role_node` VALUES ('1', '2');
INSERT INTO `kis_role_node` VALUES ('1', '3');
INSERT INTO `kis_role_node` VALUES ('1', '5');
INSERT INTO `kis_role_node` VALUES ('1', '6');
INSERT INTO `kis_role_node` VALUES ('1', '7');
INSERT INTO `kis_role_node` VALUES ('1', '8');
INSERT INTO `kis_role_node` VALUES ('1', '9');
INSERT INTO `kis_role_node` VALUES ('1', '10');
INSERT INTO `kis_role_node` VALUES ('1', '11');
INSERT INTO `kis_role_node` VALUES ('1', '12');
INSERT INTO `kis_role_node` VALUES ('1', '14');
INSERT INTO `kis_role_node` VALUES ('1', '15');
INSERT INTO `kis_role_node` VALUES ('1', '16');
INSERT INTO `kis_role_node` VALUES ('1', '17');
INSERT INTO `kis_role_node` VALUES ('1', '18');
INSERT INTO `kis_role_node` VALUES ('1', '19');
INSERT INTO `kis_role_node` VALUES ('1', '20');
INSERT INTO `kis_role_node` VALUES ('1', '21');
INSERT INTO `kis_role_node` VALUES ('1', '22');
INSERT INTO `kis_role_node` VALUES ('1', '23');
INSERT INTO `kis_role_node` VALUES ('1', '24');
INSERT INTO `kis_role_node` VALUES ('1', '25');
INSERT INTO `kis_role_node` VALUES ('1', '26');
INSERT INTO `kis_role_node` VALUES ('1', '27');
INSERT INTO `kis_role_node` VALUES ('1', '28');
INSERT INTO `kis_role_node` VALUES ('1', '29');
INSERT INTO `kis_role_node` VALUES ('1', '30');
INSERT INTO `kis_role_node` VALUES ('1', '31');
INSERT INTO `kis_role_node` VALUES ('1', '32');
INSERT INTO `kis_role_node` VALUES ('1', '33');
INSERT INTO `kis_role_node` VALUES ('1', '34');
INSERT INTO `kis_role_node` VALUES ('1', '35');
INSERT INTO `kis_role_node` VALUES ('1', '36');
INSERT INTO `kis_role_node` VALUES ('1', '37');
INSERT INTO `kis_role_node` VALUES ('3', '1');
INSERT INTO `kis_role_node` VALUES ('3', '2');
INSERT INTO `kis_role_node` VALUES ('3', '3');
INSERT INTO `kis_role_node` VALUES ('3', '8');
INSERT INTO `kis_role_node` VALUES ('3', '37');
INSERT INTO `kis_role_node` VALUES ('3', '11');
INSERT INTO `kis_role_node` VALUES ('3', '12');
INSERT INTO `kis_role_node` VALUES ('3', '16');
INSERT INTO `kis_role_node` VALUES ('3', '19');
INSERT INTO `kis_role_node` VALUES ('3', '20');
INSERT INTO `kis_role_node` VALUES ('3', '23');
INSERT INTO `kis_role_node` VALUES ('3', '24');
INSERT INTO `kis_role_node` VALUES ('3', '27');
INSERT INTO `kis_role_node` VALUES ('3', '30');
INSERT INTO `kis_role_node` VALUES ('3', '31');
INSERT INTO `kis_role_node` VALUES ('1', '38');
INSERT INTO `kis_role_node` VALUES ('2', '1');
INSERT INTO `kis_role_node` VALUES ('2', '2');
INSERT INTO `kis_role_node` VALUES ('2', '11');
INSERT INTO `kis_role_node` VALUES ('2', '12');
INSERT INTO `kis_role_node` VALUES ('2', '14');
INSERT INTO `kis_role_node` VALUES ('2', '15');
INSERT INTO `kis_role_node` VALUES ('2', '16');
INSERT INTO `kis_role_node` VALUES ('2', '17');
INSERT INTO `kis_role_node` VALUES ('2', '18');
INSERT INTO `kis_role_node` VALUES ('2', '38');
INSERT INTO `kis_role_node` VALUES ('2', '19');
INSERT INTO `kis_role_node` VALUES ('2', '20');
INSERT INTO `kis_role_node` VALUES ('2', '21');
INSERT INTO `kis_role_node` VALUES ('2', '22');
INSERT INTO `kis_role_node` VALUES ('2', '23');
INSERT INTO `kis_role_node` VALUES ('2', '24');
INSERT INTO `kis_role_node` VALUES ('2', '25');
INSERT INTO `kis_role_node` VALUES ('2', '26');
INSERT INTO `kis_role_node` VALUES ('2', '27');
INSERT INTO `kis_role_node` VALUES ('2', '28');
INSERT INTO `kis_role_node` VALUES ('2', '29');
INSERT INTO `kis_role_node` VALUES ('2', '30');
INSERT INTO `kis_role_node` VALUES ('2', '31');
INSERT INTO `kis_role_node` VALUES ('2', '32');
INSERT INTO `kis_role_node` VALUES ('2', '33');
INSERT INTO `kis_role_node` VALUES ('2', '34');
INSERT INTO `kis_role_node` VALUES ('2', '35');
INSERT INTO `kis_role_node` VALUES ('2', '36');

-- ----------------------------
-- Table structure for kis_role_user
-- ----------------------------
DROP TABLE IF EXISTS `kis_role_user`;
CREATE TABLE `kis_role_user` (
  `uid` int(10) unsigned NOT NULL COMMENT '用户ID',
  `role_id` int(10) unsigned NOT NULL COMMENT '角色ID',
  KEY `uid` (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色表';

-- ----------------------------
-- Records of kis_role_user
-- ----------------------------
INSERT INTO `kis_role_user` VALUES ('1', '1');
INSERT INTO `kis_role_user` VALUES ('2', '2');
INSERT INTO `kis_role_user` VALUES ('3', '3');

-- ----------------------------
-- Table structure for kis_ucenter
-- ----------------------------
DROP TABLE IF EXISTS `kis_ucenter`;
CREATE TABLE `kis_ucenter` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `email` varchar(50) NOT NULL DEFAULT '' COMMENT '登录邮箱',
  `passwd` char(32) NOT NULL DEFAULT '' COMMENT '密码',
  `salt` char(6) NOT NULL DEFAULT '' COMMENT '密码盐',
  `ban` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '用户状态 1=正常 2=禁止 3=邮箱未激活',
  `regtime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '注册时间',
  `regip` char(15) NOT NULL DEFAULT '' COMMENT '注册IP',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户中心表';

-- ----------------------------
-- Records of kis_ucenter
-- ----------------------------
INSERT INTO `kis_ucenter` VALUES ('1', 'admin@admin.com', '1a39e64fc32a29cc00dd8c3d36b2d324', 'TEXAhv', '1', '2016-02-24 15:27:55', '127.0.0.1');
INSERT INTO `kis_ucenter` VALUES ('2', 'buexplain@163.com', '3627b00e5bfd8e6ce11a93f4df1dd805', 'uSWUrc', '1', '2016-02-24 15:27:55', '127.0.0.1');
INSERT INTO `kis_ucenter` VALUES ('3', 'guest@guest.com', 'a050e09a819dfe75f2f900c8ab114565', 'zLOmZn', '1', '2016-02-29 17:24:18', '127.0.0.1');

-- ----------------------------
-- Table structure for kis_uinfo
-- ----------------------------
DROP TABLE IF EXISTS `kis_uinfo`;
CREATE TABLE `kis_uinfo` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `utype` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '用户类型 1=会员 2=员工',
  `email` varchar(50) NOT NULL DEFAULT '' COMMENT '邮箱',
  `mobile` char(11) NOT NULL DEFAULT '' COMMENT '手机号',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '昵称',
  `realname` varchar(4) NOT NULL DEFAULT '' COMMENT '姓名',
  `sex` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '性别 1=未知 2=女 3=男',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of kis_uinfo
-- ----------------------------
INSERT INTO `kis_uinfo` VALUES ('1', '2', 'admin@admin.com', '', '威震诸魔', '威震诸魔', '2');
INSERT INTO `kis_uinfo` VALUES ('2', '2', 'buexplain@163.com', '', '威震诸魔-总钻风', '总钻风', '1');
INSERT INTO `kis_uinfo` VALUES ('3', '2', 'guest@guest.com', '', '威震诸魔-小钻风', '小钻风', '1');

-- ----------------------------
-- Table structure for kis_usign
-- ----------------------------
DROP TABLE IF EXISTS `kis_usign`;
CREATE TABLE `kis_usign` (
  `usign_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `uid` int(10) unsigned NOT NULL COMMENT '用户ID',
  `sign_ip` char(15) NOT NULL DEFAULT '' COMMENT '登录IP',
  `sign_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '登录时间',
  `sign_api` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '登录入口 1=管理后台',
  PRIMARY KEY (`usign_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='用户登录日志';

-- ----------------------------
-- Records of kis_usign
-- ----------------------------
INSERT INTO `kis_usign` VALUES ('1', '1', '127.0.0.1', '2016-03-17 22:32:24', '1');
INSERT INTO `kis_usign` VALUES ('2', '1', '127.0.0.1', '2016-03-26 11:41:42', '1');
INSERT INTO `kis_usign` VALUES ('3', '1', '127.0.0.1', '2016-04-04 15:37:17', '1');
INSERT INTO `kis_usign` VALUES ('4', '1', '127.0.0.1', '2016-04-16 23:04:27', '1');
INSERT INTO `kis_usign` VALUES ('5', '1', '127.0.0.1', '2016-04-17 16:36:38', '1');
