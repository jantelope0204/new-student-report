/*
 Navicat Premium Data Transfer

 Source Server         : 服务名字lingyang
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost:3306
 Source Schema         : new_student_report

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 20/04/2021 15:05:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (1, 'stuent_info', '学生基本信息', NULL, NULL, 'StuentInfo', 'crud', 'com.ruoyi.student', 'student', 'info', 'studentInfo', '西亚', '0', '/', '{}', 'admin', '2021-01-28 11:16:05', '', '2021-01-28 14:34:51', NULL);
INSERT INTO `gen_table` VALUES (2, 'stu_build', '宿舍楼栋信息', '', '', 'StuBuild', 'crud', 'com.ruoyi.building', 'building', 'building', '宿舍楼', 'zhangxiya', '0', '/', '{}', 'admin', '2021-04-20 10:07:45', '', '2021-04-20 10:29:06', NULL);
INSERT INTO `gen_table` VALUES (3, 'stu_room', '宿舍表', NULL, NULL, 'StuRoom', 'crud', 'com.ruoyi.room', 'room', 'room', '宿舍', 'ruoyi', '0', '/', '{}', 'admin', '2021-04-20 10:07:45', '', '2021-04-20 10:26:30', NULL);
INSERT INTO `gen_table` VALUES (4, 'stu_room_info', '学生入住信息', NULL, NULL, 'StuRoomInfo', 'crud', 'com.ruoyi.stuRoomInfo', 'stuRoomInfo', 'info', '学生入住信息', '张西亚', '0', '/', '{\"parentMenuId\":2007}', 'admin', '2021-04-20 13:41:15', '', '2021-04-20 13:42:22', NULL);
INSERT INTO `gen_table` VALUES (6, 'stu_class', '班级信息', NULL, NULL, 'StuClass', 'crud', 'com.ruoyi.classInfo', 'classInfo', 'classInfo', 'classInfo', 'zhangxiya', '0', '/', '{}', 'admin', '2021-04-20 14:49:49', '', '2021-04-20 14:50:24', NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (1, '1', 'stu_id', '学号', 'varchar(32)', 'String', 'stuId', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-01-28 11:16:05', '', '2021-01-28 14:34:51');
INSERT INTO `gen_table_column` VALUES (2, '1', 'stu_name', '学生姓名', 'varchar(32)', 'String', 'stuName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2021-01-28 11:16:05', '', '2021-01-28 14:34:51');
INSERT INTO `gen_table_column` VALUES (3, '1', 'stu_sex', '1男性0女性', 'int(1)', 'Integer', 'stuSex', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', '', 3, 'admin', '2021-01-28 11:16:05', '', '2021-01-28 14:34:51');
INSERT INTO `gen_table_column` VALUES (4, '1', 'stu_age', '年龄', 'int(2)', 'Integer', 'stuAge', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-01-28 11:16:05', '', '2021-01-28 14:34:51');
INSERT INTO `gen_table_column` VALUES (5, '1', 'stu_code', '身份证', 'bigint(20)', 'Long', 'stuCode', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2021-01-28 11:16:05', '', '2021-01-28 14:34:51');
INSERT INTO `gen_table_column` VALUES (6, '1', 'stu_score', '高考成绩', 'int(3)', 'Integer', 'stuScore', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2021-01-28 11:16:05', '', '2021-01-28 14:34:51');
INSERT INTO `gen_table_column` VALUES (7, '1', 'stu_dept', '学院ID', 'varchar(20)', 'String', 'stuDept', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2021-01-28 11:16:05', '', '2021-01-28 14:34:51');
INSERT INTO `gen_table_column` VALUES (8, '1', 'stu_major', '专业代码', 'varchar(20)', 'String', 'stuMajor', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2021-01-28 11:16:05', '', '2021-01-28 14:34:51');
INSERT INTO `gen_table_column` VALUES (9, '1', 'stu_native', '籍贯', 'varchar(20)', 'String', 'stuNative', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2021-01-28 11:16:05', '', '2021-01-28 14:34:51');
INSERT INTO `gen_table_column` VALUES (10, '1', 'stu_folk', '民族', 'varchar(10)', 'String', 'stuFolk', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2021-01-28 11:16:05', '', '2021-01-28 14:34:51');
INSERT INTO `gen_table_column` VALUES (11, '1', 'stu_political_status', '政治面貌', 'varchar(10)', 'String', 'stuPoliticalStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 11, 'admin', '2021-01-28 11:16:05', '', '2021-01-28 14:34:51');
INSERT INTO `gen_table_column` VALUES (12, '1', 'stu_phone', '联系电话', 'bigint(20)', 'Long', 'stuPhone', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2021-01-28 11:16:05', '', '2021-01-28 14:34:51');
INSERT INTO `gen_table_column` VALUES (13, '1', 'stu_status', '报到状态0未报到1报到', 'bigint(2)', 'Integer', 'stuStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 13, '', '2021-01-28 11:38:51', '', '2021-01-28 14:34:51');
INSERT INTO `gen_table_column` VALUES (14, '1', 'stu_qq', 'QQ号', 'bigint(18)', 'Long', 'stuQq', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, '', '2021-01-28 14:34:22', '', '2021-01-28 14:34:51');
INSERT INTO `gen_table_column` VALUES (15, '2', 'build_id', '楼栋主键', 'varchar(64)', 'String', 'buildId', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-04-20 10:07:45', '', '2021-04-20 10:29:06');
INSERT INTO `gen_table_column` VALUES (16, '2', 'location', '区域', 'varchar(64)', 'String', 'location', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-04-20 10:07:45', '', '2021-04-20 10:29:06');
INSERT INTO `gen_table_column` VALUES (17, '2', 'build_name', '楼栋名称', 'varchar(64)', 'String', 'buildName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2021-04-20 10:07:45', '', '2021-04-20 10:29:06');
INSERT INTO `gen_table_column` VALUES (18, '3', 'room_id', '主键', 'varchar(64)', 'String', 'roomId', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-04-20 10:07:45', '', '2021-04-20 10:26:30');
INSERT INTO `gen_table_column` VALUES (19, '3', 'room_name', '房间编号', 'varchar(64)', 'String', 'roomName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2021-04-20 10:07:45', '', '2021-04-20 10:26:30');
INSERT INTO `gen_table_column` VALUES (20, '3', 'room_num', '人数', 'int(2)', 'Integer', 'roomNum', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-04-20 10:07:45', '', '2021-04-20 10:26:30');
INSERT INTO `gen_table_column` VALUES (21, '3', 'room_stu', '入住学生', 'varchar(64)', 'String', 'roomStu', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-04-20 10:07:45', '', '2021-04-20 10:26:30');
INSERT INTO `gen_table_column` VALUES (22, '3', 'build_id', '楼栋id', 'varchar(64)', 'String', 'buildId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, '', '2021-04-20 10:09:03', '', '2021-04-20 10:26:30');
INSERT INTO `gen_table_column` VALUES (23, '3', 'current_num', '当前人数', 'int(2)', 'Integer', 'currentNum', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, '', '2021-04-20 10:37:27', '', NULL);
INSERT INTO `gen_table_column` VALUES (24, '4', 'id', '主键', 'varchar(64)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-04-20 13:41:15', '', '2021-04-20 13:42:22');
INSERT INTO `gen_table_column` VALUES (25, '4', 'room_id', '房间id', 'varchar(64)', 'String', 'roomId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-04-20 13:41:15', '', '2021-04-20 13:42:22');
INSERT INTO `gen_table_column` VALUES (26, '4', 'room_name', '房间编号', 'varchar(64)', 'String', 'roomName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2021-04-20 13:41:15', '', '2021-04-20 13:42:22');
INSERT INTO `gen_table_column` VALUES (27, '4', 'stu_id', '学生学号', 'varchar(64)', 'String', 'stuId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-04-20 13:41:15', '', '2021-04-20 13:42:22');
INSERT INTO `gen_table_column` VALUES (28, '4', 'stu_name', '学生名字', 'varchar(64)', 'String', 'stuName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 5, 'admin', '2021-04-20 13:41:15', '', '2021-04-20 13:42:22');
INSERT INTO `gen_table_column` VALUES (33, '6', 'id', '主键ID', 'varchar(64)', 'String', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-04-20 14:49:49', '', '2021-04-20 14:50:24');
INSERT INTO `gen_table_column` VALUES (34, '6', 'class_name', '班级名称', 'varchar(64)', 'String', 'className', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2021-04-20 14:49:49', '', '2021-04-20 14:50:24');
INSERT INTO `gen_table_column` VALUES (35, '6', 'teacher_id', '导师工号', 'varchar(64)', 'String', 'teacherId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-04-20 14:49:49', '', '2021-04-20 14:50:24');
INSERT INTO `gen_table_column` VALUES (36, '6', 'teacher_name', '导师姓名', 'varchar(64)', 'String', 'teacherName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2021-04-20 14:49:49', '', '2021-04-20 14:50:24');

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `blob_data` blob NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `cron_expression` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `time_zone_id` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/15 * * * * ?', 'Asia/Shanghai');
INSERT INTO `qrtz_cron_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', '0/20 * * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `entry_id` varchar(95) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fired_time` bigint(13) NOT NULL,
  `sched_time` bigint(13) NOT NULL,
  `priority` int(11) NOT NULL,
  `state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `job_class_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_durable` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `is_update_data` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_data` blob NULL,
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001774278E05078707400007070707400013174000E302F3130202A202A202A202A203F74001172795461736B2E72794E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001774278E05078707400007070707400013174000E302F3135202A202A202A202A203F74001572795461736B2E7279506172616D7328277279272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740001317800);
INSERT INTO `qrtz_job_details` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B59741903000078707708000001774278E05078707400007070707400013174000E302F3230202A202A202A202A203F74003872795461736B2E72794D756C7469706C65506172616D7328277279272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974000133740001317800);

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `lock_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'STATE_ACCESS');
INSERT INTO `qrtz_locks` VALUES ('RuoyiScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_checkin_time` bigint(13) NOT NULL,
  `checkin_interval` bigint(13) NOT NULL,
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------
INSERT INTO `qrtz_scheduler_state` VALUES ('RuoyiScheduler', 'CAA-C17060035X1618901879841', 1618902289844, 15000);

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `repeat_count` bigint(7) NOT NULL,
  `repeat_interval` bigint(12) NOT NULL,
  `times_triggered` bigint(10) NOT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `str_prop_1` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `str_prop_2` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `str_prop_3` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `int_prop_1` int(11) NULL DEFAULT NULL,
  `int_prop_2` int(11) NULL DEFAULT NULL,
  `long_prop_1` bigint(20) NULL DEFAULT NULL,
  `long_prop_2` bigint(20) NULL DEFAULT NULL,
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL,
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL,
  `bool_prop_1` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bool_prop_2` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `next_fire_time` bigint(13) NULL DEFAULT NULL,
  `prev_fire_time` bigint(13) NULL DEFAULT NULL,
  `priority` int(11) NULL DEFAULT NULL,
  `trigger_state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trigger_type` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `start_time` bigint(13) NOT NULL,
  `end_time` bigint(13) NULL DEFAULT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `misfire_instr` smallint(2) NULL DEFAULT NULL,
  `job_data` blob NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name`, `job_name`, `job_group`) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 1618901880000, -1, 5, 'PAUSED', 'CRON', 1618901880000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 1618901880000, -1, 5, 'PAUSED', 'CRON', 1618901880000, 0, NULL, 2, '');
INSERT INTO `qrtz_triggers` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 1618901880000, -1, 5, 'PAUSED', 'CRON', 1618901880000, 0, NULL, 2, '');

-- ----------------------------
-- Table structure for stu_build
-- ----------------------------
DROP TABLE IF EXISTS `stu_build`;
CREATE TABLE `stu_build`  (
  `build_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '楼栋主键',
  `location` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '区域',
  `build_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '楼栋名称',
  PRIMARY KEY (`build_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stu_build
-- ----------------------------
INSERT INTO `stu_build` VALUES ('a7a3be02-dd01-44d5-9d35-a7f89318e755', '南苑', '一号楼');

-- ----------------------------
-- Table structure for stu_class
-- ----------------------------
DROP TABLE IF EXISTS `stu_class`;
CREATE TABLE `stu_class`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键ID',
  `class_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '班级名称',
  `teacher_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '导师工号',
  `teacher_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '导师姓名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for stu_room
-- ----------------------------
DROP TABLE IF EXISTS `stu_room`;
CREATE TABLE `stu_room`  (
  `room_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `room_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房间编号',
  `room_num` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房间类型',
  `room_stu` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '入住学生',
  `build_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '楼栋id',
  `current_num` int(2) NULL DEFAULT NULL COMMENT '房间类型',
  PRIMARY KEY (`room_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stu_room
-- ----------------------------
INSERT INTO `stu_room` VALUES ('1e279653-f087-455f-b13c-0aeca3945c3e', '1-102', '4', NULL, 'a7a3be02-dd01-44d5-9d35-a7f89318e755', NULL);

-- ----------------------------
-- Table structure for stu_room_info
-- ----------------------------
DROP TABLE IF EXISTS `stu_room_info`;
CREATE TABLE `stu_room_info`  (
  `id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `room_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房间id',
  `room_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房间编号',
  `stu_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生学号',
  `stu_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学生名字',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '学生入住信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stu_room_info
-- ----------------------------
INSERT INTO `stu_room_info` VALUES ('6409586b-2ece-429b-b16a-ea7efd17b3c0', '1e279653-f087-455f-b13c-0aeca3945c3e', '1-102', '103202101290054', '周凯');

-- ----------------------------
-- Table structure for stuent_info
-- ----------------------------
DROP TABLE IF EXISTS `stuent_info`;
CREATE TABLE `stuent_info`  (
  `stu_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学号',
  `stu_name` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学生姓名',
  `stu_sex` int(1) NOT NULL COMMENT '1男性0女性',
  `stu_age` int(2) NOT NULL COMMENT '年龄',
  `stu_code` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '身份证',
  `stu_score` int(3) NULL DEFAULT NULL COMMENT '高考成绩',
  `stu_dept` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学院ID',
  `stu_major` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专业代码',
  `stu_native` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '籍贯',
  `stu_folk` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '民族',
  `stu_political_status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '政治面貌',
  `stu_phone` bigint(20) NULL DEFAULT NULL COMMENT '联系电话',
  `stu_status` int(2) NULL DEFAULT NULL COMMENT '报到状态0未报到1报到',
  `stu_qq` bigint(18) NULL DEFAULT NULL COMMENT 'QQ号',
  `stu_email` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `room_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '宿舍id',
  PRIMARY KEY (`stu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stuent_info
-- ----------------------------
INSERT INTO `stuent_info` VALUES ('103202101290054', '周凯', 1, 18, '331003200102059306', 452, '103', '7', '中国', '珞巴族', '团员', 18093401017, 0, 9189749, '3m7vqnigi@126.com', '1e279653-f087-455f-b13c-0aeca3945c3e');
INSERT INTO `stuent_info` VALUES ('103202101290055', '赵敏英', 0, 18, '440515200309177972', 421, '103', '7', '中国', '鄂伦春族', '群众', 13903329936, 1, 25696198, 'gpdliknpyskpy@live.com', NULL);
INSERT INTO `stuent_info` VALUES ('103202101290056', '周华婷', 0, 20, '130535200303308786', 455, '103', '7', '中国', '土家族', '群众', 19980039930, 0, 862269546554, '8rau5y5v6@3721.net', NULL);
INSERT INTO `stuent_info` VALUES ('103202101290057', '端木雷波', 1, 19, '65900120000827990X', 426, '103', '7', '中国', '瑶族', '党员', 18861257779, 1, 819509542, 'ic0dpenlap@googlemail.com', NULL);
INSERT INTO `stuent_info` VALUES ('103202101290058', '上官洋', 1, 20, '650100200302116977', 413, '103', '7', '中国', '壮族', '党员', 18337919547, 0, 532510586, 'bldpil1@ask.com', NULL);
INSERT INTO `stuent_info` VALUES ('103202101290059', '王强', 0, 18, '410800200209294246', 466, '103', '7', '中国', '包括蒙古族', '团员', 14992108479, 0, 4451514, 'nojfkmf0kis@yeah.net', NULL);
INSERT INTO `stuent_info` VALUES ('103202101290060', '徐浩', 1, 19, '341422200109172929', 486, '103', '7', '中国', '哈萨克族', '团员', 14981773618, 0, 89642050, '6deq86e@0355.net', NULL);
INSERT INTO `stuent_info` VALUES ('103202101290061', '吴敏峰', 1, 19, '34020720010302804X', 423, '103', '7', '中国', '高山族', '团员', 15648456892, 0, 38403819846, '048tyeuzr@hotmail.com', NULL);
INSERT INTO `stuent_info` VALUES ('103202101290062', '胡青', 1, 20, '542421200311013181', 426, '103', '7', '中国', '土族', '党员', 15698379796, 0, 7118069, '6lfx8eg6@ask.com', NULL);
INSERT INTO `stuent_info` VALUES ('103202101290063', '孙蓉军', 1, 19, '330624200202249960', 484, '103', '7', '中国', '裕固族', '群众', 19874234797, 0, 9335773553, '2zy7d5zb3u@0355.net', NULL);
INSERT INTO `stuent_info` VALUES ('103202101290064', '杨娜', 0, 18, '630000200307048302', 401, '103', '7', '中国', '柯尔克孜族', '群众', 14934108863, 0, 634968472016, 'ji2f4siya@163.net', NULL);
INSERT INTO `stuent_info` VALUES ('103202101290065', '欧阳强斌', 0, 21, '630121200207083597', 462, '103', '7', '中国', '毛南族', '党员', 18971339462, 0, 714151941, 'm1gb00@163.net', NULL);
INSERT INTO `stuent_info` VALUES ('103202101290066', '王敏伟', 0, 20, '411724200202073850', 477, '103', '7', '中国', '汉族', '团员', 15915927538, 0, 921975, 'vpyxh0k@live.com', NULL);
INSERT INTO `stuent_info` VALUES ('103202101290067', '黄华敏', 1, 20, '230304200306230898', 437, '103', '7', '中国', '羌族', '党员', 13626526904, 0, 8642134669, 'lzbby800tjm3t@3721.net', NULL);
INSERT INTO `stuent_info` VALUES ('103202101290068', '胡敏', 1, 19, '410305200104041132', 443, '103', '7', '中国', '土族', '团员', 13447191279, 0, 66798383, 'fct7qy@126.com', NULL);
INSERT INTO `stuent_info` VALUES ('103202101290069', '刘刚浩', 0, 19, '610204200109032951', 423, '103', '7', '中国', '哈萨克族', '群众', 18040199663, 0, 3539443, 'csrdkgxgyok@live.com', NULL);
INSERT INTO `stuent_info` VALUES ('103202101290070', '司马萍波', 0, 21, '360322200104154331', 468, '103', '7', '中国', '普米族', '党员', 13488702753, 0, 9943847, 'ngdyixenqm2d@yahoo.com', NULL);
INSERT INTO `stuent_info` VALUES ('103202101290071', '李翔', 0, 21, '450321200012299221', 457, '103', '7', '中国', '毛南族', '团员', 14917030628, 0, 126126364, 'owjftnr6s9d8g@msn.com', NULL);
INSERT INTO `stuent_info` VALUES ('103202101290072', '上官军鑫', 0, 21, '420202200001158933', 458, '103', '7', '中国', '畲族', '群众', 17816697605, 0, 593919, 'ec2mhqqkl1@263.net', NULL);
INSERT INTO `stuent_info` VALUES ('103202101290073', '上官薇宁', 1, 20, '110101200312294559', 485, '103', '7', '中国', '鄂温克族', '党员', 18197959553, 0, 316877, 'liqjaa2vv02zv@hotmail.com', NULL);
INSERT INTO `stuent_info` VALUES ('103202101290074', '张薇', 1, 20, '211404200303165050', 441, '103', '7', '中国', '水族', '党员', 15749808312, 0, 522711321963, 'qttybhg1z@gmail.com', NULL);
INSERT INTO `stuent_info` VALUES ('103202101290075', '胡宁勇', 0, 18, '140922200310079573', 433, '103', '7', '中国', '布依族', '党员', 13196964491, 0, 64270727392, 'bx4yq933@live.com', NULL);
INSERT INTO `stuent_info` VALUES ('103202101290076', '周强健', 1, 20, '431228200109127772', 483, '103', '7', '中国', '哈尼族', '团员', 13624182932, 0, 83496031, 'b1w10e@gmail.com', NULL);
INSERT INTO `stuent_info` VALUES ('103202101290077', '太史龙慧', 0, 21, '411722200011026389', 456, '103', '7', '中国', '东乡族', '党员', 15954240937, 0, 31975564, 'ggursh@msn.com', NULL);
INSERT INTO `stuent_info` VALUES ('103202101290078', '黄宁', 0, 19, '371625200106200352', 485, '103', '7', '中国', '保安族', '群众', 13906229658, 0, 532914313, 'j8imvz7g4@msn.com', NULL);
INSERT INTO `stuent_info` VALUES ('103202101290079', '司马翔', 1, 21, '210213200211170113', 438, '103', '7', '中国', '布朗族', '群众', 17181411843, 0, 822188, 'lqavaj37@sina.com', NULL);
INSERT INTO `stuent_info` VALUES ('103202101290080', '司马强', 0, 19, '350403200210060018', 464, '103', '7', '中国', '黎族', '群众', 18039895500, 0, 76516669161, 'bkdltb9nbpq@163.com', NULL);
INSERT INTO `stuent_info` VALUES ('103202101300001', '司马薇波', 0, 21, '410403200303021444', 471, '103', '7', '中国', '土族', '党员', 18462870760, 0, 426881, 'rat2k6n@hotmail.com', NULL);
INSERT INTO `stuent_info` VALUES ('103202101300002', '欧阳雪英', 0, 18, '420625200204204203', 487, '103', '7', '中国', '怒族', '党员', 18542892977, 0, 50769014, 'ttfl8cu@googlemail.com', NULL);
INSERT INTO `stuent_info` VALUES ('103202101300003', '上官凯明', 1, 21, '350400200008296255', 469, '103', '7', '中国', '京族', '团员', 15162391025, 0, 3909755, 'roosame@live.com', NULL);
INSERT INTO `stuent_info` VALUES ('103202101300004', '陈鹏翔', 0, 18, '330322200210066786', 432, '103', '7', '中国', '壮族', '党员', 17180679456, 0, 113891493, 'oq3d4mlu21jse@3721.net', NULL);
INSERT INTO `stuent_info` VALUES ('103202101300005', '赵敏波', 0, 19, '340711200303234413', 406, '103', '7', '中国', '彝族', '群众', 15860845410, 0, 30656383201, 'qgywnsjv6@gmail.com', NULL);
INSERT INTO `stuent_info` VALUES ('103202101300006', '吴剑建', 0, 21, '360727200203214305', 436, '103', '7', '中国', '毛南族', '群众', 18342809563, 0, 51983159372, 'plqzpg@aol.com', NULL);
INSERT INTO `stuent_info` VALUES ('103202101300007', '王华', 1, 19, '430521200307305761', 422, '103', '7', '中国', '土家族', '群众', 13807626326, 0, 883381, 'ouyjas7@yahoo.com', NULL);
INSERT INTO `stuent_info` VALUES ('103202101300008', '王刚佳', 0, 21, '150821200005106512', 487, '103', '7', '中国', '藏族', '群众', 18072693777, 0, 42768552, 'h951an5@googlemail.com', NULL);
INSERT INTO `stuent_info` VALUES ('103202101300009', '陈鹏龙', 0, 19, '230422200010182135', 407, '103', '7', '中国', '汉族', '团员', 15866484340, 0, 9464810914, 'vr0d7aasjanr2@sina.com', NULL);
INSERT INTO `stuent_info` VALUES ('103202101300010', '李杰', 1, 18, '231100200302214211', 461, '103', '7', '中国', '包括蒙古族', '党员', 19961793394, 0, 9489609, 'azhl5se@qq.com', NULL);
INSERT INTO `stuent_info` VALUES ('103202101300011', '朱伟静', 0, 18, '45012620020530645X', 495, '103', '7', '中国', '门巴族', '群众', 17799183077, 0, 190284, 'u40vdy0czta@yahoo.com.cn', NULL);
INSERT INTO `stuent_info` VALUES ('103202101300012', '太史鹏艳', 1, 20, '211400200301205092', 495, '103', '7', '中国', '苗族', '党员', 19989185008, 0, 8952778028, 'fa0c2anak@sina.com', NULL);
INSERT INTO `stuent_info` VALUES ('103202101300013', '陈军洁', 1, 21, '321183200211246018', 484, '103', '7', '中国', '柯尔克孜族', '团员', 13295551568, 0, 8963893, '0zfl9qcrm@hotmail.com', NULL);
INSERT INTO `stuent_info` VALUES ('103202101300014', '欧阳锋梅', 0, 19, '230903200207163155', 475, '103', '7', '中国', '傈僳族', '群众', 18527664082, 0, 5080936560, 'fmhukne@gmail.com', NULL);
INSERT INTO `stuent_info` VALUES ('103202101300015', '孙欣', 0, 18, '620802200002040419', 437, '103', '7', '中国', '阿昌族', '群众', 15248045070, 0, 959738179, 'q9e90rr@3721.net', NULL);
INSERT INTO `stuent_info` VALUES ('103202101300016', '李彬琴', 0, 20, '360722200102188783', 413, '103', '7', '中国', '独龙族', '团员', 17389800269, 0, 89931220, 's64jjxdc91u@googlemail.com', NULL);
INSERT INTO `stuent_info` VALUES ('103202101300017', '陈伟倩', 0, 19, '640502200311201463', 473, '103', '7', '中国', '彝族', '团员', 13958112789, 0, 28127741190, 'q8p7bnexlu7z@aol.com', NULL);
INSERT INTO `stuent_info` VALUES ('103202101300018', '杨娜颖', 0, 19, '152529200108199287', 434, '103', '7', '中国', '普米族', '党员', 13374880253, 0, 9809992932, 'zj653k@163.com', NULL);
INSERT INTO `stuent_info` VALUES ('103202101300019', '黄彬', 0, 20, '441702200311250542', 483, '103', '7', '中国', '景颇族', '群众', 15350677692, 0, 5453268, 'm4sjfp0v53gwx@googlemail.com', NULL);
INSERT INTO `stuent_info` VALUES ('103202101300020', '黄锋', 1, 21, '150726200109049774', 468, '103', '7', '中国', '土族', '团员', 18644503727, 0, 15714437127, 'l60abcmjopae@yahoo.com', NULL);
INSERT INTO `stuent_info` VALUES ('103202101300021', '端木翔雪', 0, 21, '640324200007229506', 407, '103', '7', '中国', '佤族', '群众', 18087799883, 0, 8498543, 'wecxuq78d@163.net', NULL);
INSERT INTO `stuent_info` VALUES ('103202101300022', '徐鹏', 1, 18, '445302200011164679', 492, '103', '7', '中国', '塔塔尔族', '团员', 15143206555, 0, 9823078125, 'c3bwv5prtdwe@yahoo.com', NULL);
INSERT INTO `stuent_info` VALUES ('103202101300023', '刘婷', 1, 18, '34182420001210334X', 488, '103', '7', '中国', '景颇族', '群众', 14728384947, 0, 5958015698, 'fefyjeq6u23cd@163.com', NULL);
INSERT INTO `stuent_info` VALUES ('103202101300024', '王蕾剑', 0, 21, '410482200006223475', 405, '103', '7', '中国', '俄罗斯族', '团员', 18970479812, 0, 827621841, 'fjkfbhwfgmjc@0355.net', NULL);
INSERT INTO `stuent_info` VALUES ('103202101300025', '徐辉', 0, 18, '611022200106169541', 486, '103', '7', '中国', '仡佬族', '党员', 13292086877, 0, 94657184564, '25stk341ek2a0@163.net', NULL);
INSERT INTO `stuent_info` VALUES ('103202101300026', '胡英静', 1, 20, '45033220020529424X', 418, '103', '7', '中国', '拉祜族', '群众', 13790309882, 0, 832385872541, '1626w2ebc0@gmail.com', NULL);
INSERT INTO `stuent_info` VALUES ('103202101300027', '杨敏', 1, 19, '421024200311085846', 444, '103', '7', '中国', '门巴族', '群众', 18935256517, 0, 13838483, '473zayqrgd@3721.net', NULL);
INSERT INTO `stuent_info` VALUES ('104202101290027', '赵莹', 1, 21, '411381200310173643', 416, '104', '1', '中国', '塔塔尔族', '团员', 17735572122, 0, 158135, 'jow5hm8hb@yahoo.com.cn', NULL);
INSERT INTO `stuent_info` VALUES ('104202101290028', '杨平', 0, 19, '510723200301286786', 435, '104', '1', '中国', '侗族', '党员', 18424554392, 0, 3863437, '1jpfa4ygsgr@sohu.com', NULL);
INSERT INTO `stuent_info` VALUES ('104202101290029', '杨林', 1, 21, '430224200011198680', 400, '104', '2', '中国', '珞巴族', '党员', 14987500786, 0, 7518325941, 'zbiy4lv@msn.com', NULL);
INSERT INTO `stuent_info` VALUES ('104202101290030', '徐峰', 1, 18, '130321200308200935', 467, '104', '1', '中国', '佤族', '党员', 15253000136, 0, 1946483, '82575j3wn1wd@gmail.com', NULL);
INSERT INTO `stuent_info` VALUES ('104202101290031', '赵强', 0, 19, '211021200009088378', 451, '104', '1', '中国', '鄂温克族', '群众', 17268335052, 0, 309697135, 'gn438z1t@ask.com', NULL);
INSERT INTO `stuent_info` VALUES ('104202101290032', '端木琳蕾', 1, 20, '410482200209287698', 499, '104', '2', '中国', '水族', '群众', 18101540741, 0, 583980926, '83pi0qer33@qq.com', NULL);
INSERT INTO `stuent_info` VALUES ('104202101290033', '上官涛璐', 1, 19, '230111200108035234', 428, '104', '2', '中国', '哈尼族', '团员', 13322524968, 0, 2594307, 'jns5avnjaa@live.com', NULL);
INSERT INTO `stuent_info` VALUES ('104202101290034', '周伟', 0, 19, '220381200301147826', 491, '104', '2', '中国', '基诺族', '群众', 13169066714, 0, 326215, 'k1x60es2p@sina.com', NULL);
INSERT INTO `stuent_info` VALUES ('104202101290035', '杨芳莉', 1, 21, '532331200307049304', 461, '104', '2', '中国', '回族', '党员', 18100408409, 0, 6691973700, '463ld7e88h7@gmail.com', NULL);
INSERT INTO `stuent_info` VALUES ('104202101290036', '徐建', 0, 19, '150721200007222239', 419, '104', '1', '中国', '白族', '团员', 15179525474, 0, 68995112743, 'bh5jii8l0x@sohu.com', NULL);
INSERT INTO `stuent_info` VALUES ('104202101290037', '周伟', 0, 19, '542524200008136044', 426, '104', '2', '中国', '维吾尔族', '团员', 18600586274, 0, 1072280205, 'un6ejl@yahoo.com', NULL);
INSERT INTO `stuent_info` VALUES ('104202101290038', '孙洋', 0, 20, '360102200202131030', 409, '104', '1', '中国', '赫哲族', '团员', 13044521070, 0, 712220, 'zd3m7iet4m@3721.net', NULL);
INSERT INTO `stuent_info` VALUES ('104202101290039', '胡明浩', 0, 20, '130525200201116406', 485, '104', '2', '中国', '壮族', '团员', 19999611957, 0, 4089196, 'a6qd2hn2@aol.com', NULL);
INSERT INTO `stuent_info` VALUES ('104202101290040', '陈平', 0, 20, '62120020030806024X', 431, '104', '1', '中国', '布朗族', '群众', 19879505731, 0, 38051024, 'g5kx2t8ljs@aol.com', NULL);
INSERT INTO `stuent_info` VALUES ('104202101290041', '王婷娜', 1, 19, '610428200006085729', 445, '104', '1', '中国', '柯尔克孜族', '群众', 17658161314, 0, 585691460252, 'y3r6ub5@yeah.net', NULL);
INSERT INTO `stuent_info` VALUES ('104202101290042', '刘华', 1, 20, '511900200203014098', 457, '104', '1', '中国', '鄂温克族', '团员', 14743492774, 0, 51852224355, 'c7vchkba@163.net', NULL);
INSERT INTO `stuent_info` VALUES ('104202101290043', '李青', 1, 20, '370281200205308834', 442, '104', '1', '中国', '哈萨克族', '群众', 18182208222, 0, 683318873674, 'lged7m8wr@googlemail.com', NULL);
INSERT INTO `stuent_info` VALUES ('104202101290044', '周敏静', 0, 21, '371725200308169782', 461, '104', '1', '中国', '朝鲜族', '群众', 14929805765, 0, 893702050223, 'a8kc64sim@msn.com', NULL);
INSERT INTO `stuent_info` VALUES ('104202101290045', '王敏', 1, 18, '37152420020120793X', 460, '104', '2', '中国', '水族', '党员', 13352493246, 0, 503058, '9x8ea4f6sbsf@yeah.net', NULL);
INSERT INTO `stuent_info` VALUES ('104202101290046', '上官平飞', 1, 21, '450330200007131121', 411, '104', '2', '中国', '仫佬族', '党员', 15370674135, 0, 90918389, '1a1v6ljrsc6cb@msn.com', NULL);
INSERT INTO `stuent_info` VALUES ('104202101290047', '陈超云', 0, 21, '150105200205196294', 490, '104', '1', '中国', '门巴族', '党员', 14998415330, 0, 3330787128, 'j2w4e4k@yahoo.com', NULL);
INSERT INTO `stuent_info` VALUES ('104202101290048', '王辉璐', 0, 21, '440607200212132167', 462, '104', '1', '中国', '珞巴族', '党员', 13040644848, 0, 9953843601, 'j3u24axjig9@yahoo.com.cn', NULL);
INSERT INTO `stuent_info` VALUES ('104202101290049', '高飞阳', 0, 18, '131100200106122690', 490, '104', '2', '中国', '布依族', '团员', 15898601121, 0, 881277875, '59fnnpwv@3721.net', NULL);
INSERT INTO `stuent_info` VALUES ('104202101290050', '杨静强', 1, 20, '441421200002017360', 456, '104', '1', '中国', '瑶族', '党员', 17846271346, 0, 736816, 'oa0albfr@163.net', NULL);
INSERT INTO `stuent_info` VALUES ('104202101290051', '周军浩', 1, 21, '430522200102034079', 405, '104', '2', '中国', '乌孜别克族', '群众', 17149651504, 0, 80378559, 'rvv4ju8s771@126.com', NULL);
INSERT INTO `stuent_info` VALUES ('104202101290052', '朱超伟', 1, 20, '450502200209029139', 452, '104', '2', '中国', '土家族', '团员', 17385867645, 0, 2903952384, 'acozm80i54cg@live.com', NULL);
INSERT INTO `stuent_info` VALUES ('104202101290053', '端木强琴', 1, 20, '522224200301046267', 489, '104', '1', '中国', '俄罗斯族', '团员', 18927872392, 0, 45179251130, '41q8gtz@googlemail.com', NULL);
INSERT INTO `stuent_info` VALUES ('104202101300001', '孙宁', 0, 19, '330225200301268280', 401, '104', '2', '中国', '瑶族', '群众', 13133403148, 0, 273253, 'erk47g@msn.com', NULL);
INSERT INTO `stuent_info` VALUES ('104202101300002', '高丹宇', 0, 19, '610100200006159086', 406, '104', '2', '中国', '乌孜别克族', '群众', 14540456353, 0, 510640414448, '8o9d26mkdn7cp@sohu.com', NULL);
INSERT INTO `stuent_info` VALUES ('104202101300003', '王静超', 0, 18, '420822200009141691', 408, '104', '2', '中国', '纳西族', '党员', 17534662062, 0, 16116614730, 'zfyqdlb@sina.com', NULL);
INSERT INTO `stuent_info` VALUES ('104202101300004', '端木艳媛', 0, 21, '652302200301287163', 420, '104', '2', '中国', '仡佬族', '群众', 18043777357, 0, 978219855061, 'a5a58etf@163.net', NULL);
INSERT INTO `stuent_info` VALUES ('104202101300005', '上官蕾静', 1, 19, '53032120031105032X', 479, '104', '1', '中国', '黎族', '团员', 15550929898, 0, 59567972, '1ix9u5n@sohu.com', NULL);
INSERT INTO `stuent_info` VALUES ('104202101300006', '朱旭平', 1, 21, '41030620010817094X', 424, '104', '2', '中国', '怒族', '党员', 13084154438, 0, 446623469835, 'jn9aop5@qq.com', NULL);
INSERT INTO `stuent_info` VALUES ('104202101300007', '胡宁林', 1, 20, '360281200005178439', 446, '104', '2', '中国', '佤族', '党员', 15549631322, 0, 36608114, 'vq709yx@yahoo.com', NULL);
INSERT INTO `stuent_info` VALUES ('104202101300008', '欧阳宁', 1, 19, '530426200004185328', 476, '104', '1', '中国', '白族', '团员', 13884153510, 0, 88311215, 'd4jnxsn3gr@3721.net', NULL);
INSERT INTO `stuent_info` VALUES ('104202101300009', '太史芳', 0, 18, '370112200203126465', 424, '104', '1', '中国', '土家族', '群众', 19980545895, 0, 11642624636, 'y6zhkc@0355.net', NULL);
INSERT INTO `stuent_info` VALUES ('104202101300010', '欧阳彬静', 0, 19, '361027200310070266', 416, '104', '1', '中国', '羌族', '群众', 15308020522, 0, 55269445, '54iokit2ttf8@gmail.com', NULL);
INSERT INTO `stuent_info` VALUES ('104202101300011', '端木平', 1, 18, '340823200210197511', 455, '104', '1', '中国', '保安族', '党员', 13283878227, 0, 655560439195, 'ivohokd8t8pc9@sohu.com', NULL);
INSERT INTO `stuent_info` VALUES ('104202101300012', '胡超杰', 1, 18, '500235200109147344', 462, '104', '1', '中国', '哈萨克族', '群众', 18776879707, 0, 99279029, 'fqgc6o@gmail.com', NULL);
INSERT INTO `stuent_info` VALUES ('104202101300013', '欧阳敏艳', 0, 19, '320585200304280235', 494, '104', '2', '中国', '塔吉克族', '群众', 17720545086, 0, 580667, 'emo0kokd6o@sohu.com', NULL);
INSERT INTO `stuent_info` VALUES ('104202101300014', '张琴峰', 1, 18, '421202200010267454', 446, '104', '2', '中国', '苗族', '党员', 13027857752, 0, 49573922015, '00k72qdrv6je@3721.net', NULL);
INSERT INTO `stuent_info` VALUES ('104202101300015', '欧阳阳辉', 0, 18, '331003200312207397', 448, '104', '1', '中国', '回族', '党员', 15395081633, 0, 17950716, 'izyzzg3hu8g@3721.net', NULL);
INSERT INTO `stuent_info` VALUES ('104202101300016', '吴娟颖', 1, 19, '340200200101304165', 474, '104', '2', '中国', '黎族', '党员', 15686023115, 0, 821121955876, '2mcg3zlddj@ask.com', NULL);
INSERT INTO `stuent_info` VALUES ('104202101300017', '张薇蕾', 1, 18, '120223200203247484', 431, '104', '2', '中国', '回族', '团员', 15387412184, 0, 41918802642, '8ucj0a@aol.com', NULL);
INSERT INTO `stuent_info` VALUES ('104202101300018', '陈芳杰', 1, 21, '231025200002120717', 448, '104', '1', '中国', '京族', '党员', 13130437277, 0, 272663060629, 'e1bkusb@qq.com', NULL);
INSERT INTO `stuent_info` VALUES ('104202101300019', '吴洋斌', 0, 21, '653224200112114312', 421, '104', '1', '中国', '包括蒙古族', '群众', 13818690846, 0, 7599073, 'ezqkgnlxo5n7a@163.com', NULL);
INSERT INTO `stuent_info` VALUES ('104202101300020', '王辉', 0, 18, '420325200302242151', 445, '104', '1', '中国', '鄂温克族', '党员', 13393867883, 0, 9336184, 'faiao3@sohu.com', NULL);
INSERT INTO `stuent_info` VALUES ('104202101300021', '太史伟', 1, 19, '51323320000128236X', 402, '104', '2', '中国', '珞巴族', '团员', 15966131885, 0, 276883232949, 'ctnz0r6yz2@googlemail.com', NULL);
INSERT INTO `stuent_info` VALUES ('104202101300022', '王婷', 1, 18, '211403200308016664', 486, '104', '1', '中国', '包括蒙古族', '党员', 15847138984, 0, 9498780881, 'p8vifh7@yeah.net', NULL);
INSERT INTO `stuent_info` VALUES ('104202101300023', '李芳锋', 1, 21, '41132520021018108X', 461, '104', '2', '中国', '朝鲜族', '团员', 13168921558, 0, 6934506951, 'mjoarqmpldcf4@gmail.com', NULL);
INSERT INTO `stuent_info` VALUES ('104202101300024', '太史峰娜', 0, 19, '441300200008133138', 409, '104', '2', '中国', '独龙族', '团员', 16620032337, 0, 838726, '0g1l2z6rzui@ask.com', NULL);
INSERT INTO `stuent_info` VALUES ('104202101300025', '司马洋莉', 1, 18, '320922200011135233', 436, '104', '2', '中国', '独龙族', '群众', 18658303876, 0, 29811980880, '6vmt6thgy394e@yahoo.com.cn', NULL);
INSERT INTO `stuent_info` VALUES ('104202101300026', '高敏', 0, 18, '469024200001226724', 499, '104', '1', '中国', '羌族', '党员', 15343849164, 0, 543626, '538h69pa@yahoo.com', NULL);
INSERT INTO `stuent_info` VALUES ('104202101300027', '吴平', 1, 18, '44078120020711967X', 408, '104', '2', '中国', '基诺族', '群众', 17115761400, 0, 27425633480, 'hnzc3ri02q7bg@gmail.com', NULL);
INSERT INTO `stuent_info` VALUES ('104202101300028', '欧阳芳娟', 1, 18, '230603200305230319', 479, '104', '2', '中国', '京族', '团员', 15805441353, 0, 77703488, 'mhephtre2mxr@qq.com', NULL);
INSERT INTO `stuent_info` VALUES ('104202101300029', '徐华彬', 1, 18, '13012620010823332X', 408, '104', '1', '中国', '门巴族', '群众', 13661913816, 0, 6947896, 'ixlzxiy@googlemail.com', NULL);
INSERT INTO `stuent_info` VALUES ('104202101300030', '朱亮', 1, 19, '140623200101298470', 488, '104', '1', '中国', '高山族', '团员', 17628078378, 0, 6251894, 'bqq1ebpe4fhmr@yeah.net', NULL);
INSERT INTO `stuent_info` VALUES ('104202101300031', '端木宁', 1, 19, '53282320001119709X', 406, '104', '1', '中国', '朝鲜族', '团员', 17731367315, 0, 7359731711, 'af78fub@163.com', NULL);
INSERT INTO `stuent_info` VALUES ('104202101300032', '太史刚', 0, 20, '130281200107184773', 486, '104', '1', '中国', '毛南族', '群众', 13480715674, 0, 731013775896, 'pifnsvya@hotmail.com', NULL);
INSERT INTO `stuent_info` VALUES ('104202101300033', '上官璐', 1, 20, '210411200102267336', 486, '104', '2', '中国', '赫哲族', '群众', 18739336158, 0, 47265461, 'c6l1qepfn0@0355.net', NULL);
INSERT INTO `stuent_info` VALUES ('104202101300034', '太史龙', 0, 19, '445100200304227561', 441, '104', '1', '中国', '哈萨克族', '党员', 17330994096, 0, 673570350081, 'fiusb1jcsd4hy@aol.com', NULL);
INSERT INTO `stuent_info` VALUES ('104202101300035', '司马丹', 0, 18, '350521200210223831', 472, '104', '1', '中国', '侗族', '团员', 18267732163, 0, 519804, 'jqh6u4b@sohu.com', NULL);
INSERT INTO `stuent_info` VALUES ('104202101300036', '胡斌毅', 1, 21, '36078120000704874X', 498, '104', '2', '中国', '俄罗斯族', '团员', 18116781191, 0, 7019149414, 'jdmiasz@gmail.com', NULL);
INSERT INTO `stuent_info` VALUES ('104202101300037', '杨梅琴', 0, 18, '211200200206139081', 451, '104', '1', '中国', '土族', '党员', 13242475835, 0, 334476141, 'v9d7yionzg5d4@263.net', NULL);
INSERT INTO `stuent_info` VALUES ('104202101300038', '欧阳华', 0, 21, '530321200005292283', 490, '104', '1', '中国', '阿昌族', '团员', 18092434510, 0, 150187252169, 'hvawz2@ask.com', NULL);
INSERT INTO `stuent_info` VALUES ('104202101300039', '陈莉', 0, 21, '140227200107289421', 427, '104', '1', '中国', '仫佬族', '党员', 16600655629, 0, 951002, '0sk5id2ob@gmail.com', NULL);
INSERT INTO `stuent_info` VALUES ('104202101300040', '刘伟', 1, 21, '451221200204146292', 408, '104', '2', '中国', '布朗族', '党员', 18664062468, 0, 494063072, 'qqupb597fiu@yeah.net', NULL);
INSERT INTO `stuent_info` VALUES ('104202101300041', '上官英翔', 0, 21, '310118200108294230', 427, '104', '2', '中国', '回族', '党员', 18166829906, 0, 892333, 'b4cepu5ix2rm@ask.com', NULL);
INSERT INTO `stuent_info` VALUES ('104202101300042', '黄琳', 0, 21, '450922200006308362', 492, '104', '1', '中国', '朝鲜族', '群众', 15398243663, 0, 99128495, 'm64seph@live.com', NULL);
INSERT INTO `stuent_info` VALUES ('104202101300043', '王龙宁', 0, 18, '361122200308176815', 474, '104', '2', '中国', '侗族', '团员', 13737064024, 0, 873647191081, '2kgkw3r@yahoo.com', NULL);
INSERT INTO `stuent_info` VALUES ('105202101290036', '上官雪', 0, 20, '532930200303066066', 461, '105', '4', '中国', '阿昌族', '党员', 13114206095, 0, 9310331, '4v876y@3721.net', NULL);
INSERT INTO `stuent_info` VALUES ('105202101290037', '李英媛', 0, 19, '42100220031215805X', 488, '105', '4', '中国', '柯尔克孜族', '群众', 16643559098, 0, 44573641973, 'jw98ngdkx79@0355.net', NULL);
INSERT INTO `stuent_info` VALUES ('105202101290038', '赵红颖', 1, 21, '411104200205108360', 420, '105', '4', '中国', '维吾尔族', '群众', 15555960965, 0, 75694661406, 'jabm1tl0jt@gmail.com', NULL);
INSERT INTO `stuent_info` VALUES ('105202101290039', '李明', 0, 18, '510823200303025171', 449, '105', '4', '中国', '傈僳族', '党员', 17228814520, 0, 904440, 'ykls09q5peyb@3721.net', NULL);
INSERT INTO `stuent_info` VALUES ('105202101290040', '张琴蓉', 0, 18, '51343520000502373X', 443, '105', '4', '中国', '塔塔尔族', '群众', 17798897766, 0, 5654948, 'hq1a4ymnp1@163.com', NULL);
INSERT INTO `stuent_info` VALUES ('105202101290041', '孙亮', 0, 19, '341122200005198925', 412, '105', '4', '中国', '维吾尔族', '党员', 15097543815, 0, 26483824, 'zut9tymesag@sohu.com', NULL);
INSERT INTO `stuent_info` VALUES ('105202101290042', '李飞', 0, 21, '370523200106190271', 424, '105', '4', '中国', '朝鲜族', '团员', 13898789513, 0, 295203496, '4z8tl2@3721.net', NULL);
INSERT INTO `stuent_info` VALUES ('105202101290043', '黄芳敏', 0, 18, '511524200210247534', 419, '105', '4', '中国', '黎族', '团员', 14522698319, 0, 58316261851, 'awiav0p8obd5@126.com', NULL);
INSERT INTO `stuent_info` VALUES ('105202101290044', '欧阳辉平', 0, 18, '532522200005092977', 420, '105', '4', '中国', '苗族', '群众', 15158036459, 0, 454897, '0pbdqnt9s@live.com', NULL);
INSERT INTO `stuent_info` VALUES ('105202101290045', '太史慧', 1, 21, '231004200309273740', 489, '105', '4', '中国', '包括蒙古族', '党员', 17714278194, 0, 657022201799, 'zrs37xx1qcokl@qq.com', NULL);
INSERT INTO `stuent_info` VALUES ('105202101290046', '吴英伟', 0, 19, '421300200302261313', 465, '105', '4', '中国', '苗族', '团员', 13505043692, 0, 3024232305, '2kqh03uujup0@qq.com', NULL);
INSERT INTO `stuent_info` VALUES ('105202101290047', '孙兵', 0, 18, '410700200209202860', 431, '105', '4', '中国', '藏族', '群众', 17787644151, 0, 261711741, 'nfy0lg9@0355.net', NULL);
INSERT INTO `stuent_info` VALUES ('105202101290048', '杨晶', 0, 19, '63212620000729107X', 479, '105', '4', '中国', '布朗族', '团员', 13326393069, 0, 571465855012, 'zohc0yesh@googlemail.com', NULL);
INSERT INTO `stuent_info` VALUES ('105202101290049', '黄芳莹', 1, 20, '230606200004166228', 449, '105', '4', '中国', '裕固族', '党员', 19866169136, 0, 78538210, 'gtl4db4@msn.com', NULL);
INSERT INTO `stuent_info` VALUES ('105202101290050', '高丽燕', 1, 21, '360521200209289210', 424, '105', '4', '中国', '裕固族', '团员', 13008044709, 0, 564065, 'oriv52voicjbp@263.net', NULL);
INSERT INTO `stuent_info` VALUES ('105202101290051', '张洁华', 0, 21, '152221200112010152', 453, '105', '4', '中国', '哈尼族', '群众', 18941340042, 0, 455369, 'nzd6yiujspm@3721.net', NULL);
INSERT INTO `stuent_info` VALUES ('105202101290052', '徐雷', 0, 19, '341022200101142379', 478, '105', '4', '中国', '侗族', '党员', 13417906542, 0, 563086846, 'k4id2i66qw@263.net', NULL);
INSERT INTO `stuent_info` VALUES ('105202101290053', '李雪健', 1, 19, '220582200104119305', 471, '105', '4', '中国', '仡佬族', '团员', 14569416011, 0, 65264091, 'kwn8j3d@gmail.com', NULL);
INSERT INTO `stuent_info` VALUES ('105202101290054', '端木超静', 0, 21, '610627200206027501', 449, '105', '4', '中国', '布依族', '党员', 16630724975, 0, 60379635, 'dp9n7tufk@ask.com', NULL);
INSERT INTO `stuent_info` VALUES ('105202101290055', '司马婷', 0, 20, '32050620000411183X', 433, '105', '4', '中国', '锡伯族', '团员', 13760375366, 0, 680304010, 'hnauqb2sz@hotmail.com', NULL);
INSERT INTO `stuent_info` VALUES ('105202101290056', '太史彬', 0, 19, '431302200106122986', 405, '105', '4', '中国', '土家族', '群众', 17842202845, 0, 1431940, 'hdjwcu35@googlemail.com', NULL);
INSERT INTO `stuent_info` VALUES ('105202101290057', '黄华', 1, 18, '341100200208143942', 427, '105', '4', '中国', '维吾尔族', '团员', 18578458958, 0, 5269249, '9gc23vc67qi@sohu.com', NULL);
INSERT INTO `stuent_info` VALUES ('105202101290058', '周凯', 1, 18, '410423200205102553', 481, '105', '4', '中国', '撒拉族', '群众', 19852592559, 0, 971659749, '4vh7zliww3owv@sina.com', NULL);
INSERT INTO `stuent_info` VALUES ('105202101290059', '赵莉彬', 0, 19, '520100200010146905', 481, '105', '4', '中国', '傈僳族', '群众', 19937445078, 0, 72298378, '5q695a2@hotmail.com', NULL);
INSERT INTO `stuent_info` VALUES ('105202101290060', '徐兵', 1, 21, '441821200001284856', 467, '105', '4', '中国', '拉祜族', '党员', 13327815362, 0, 2792282, 'ssl9jr1f91a@ask.com', NULL);
INSERT INTO `stuent_info` VALUES ('105202101290061', '孙艳玲', 0, 21, '341824200210234172', 468, '105', '4', '中国', '怒族', '群众', 17841651059, 0, 6360271, 'z2608hbzjfb@ask.com', NULL);
INSERT INTO `stuent_info` VALUES ('105202101290062', '上官华波', 0, 20, '150902200008125731', 438, '105', '4', '中国', '鄂伦春族', '团员', 19953178741, 0, 61629486598, '4jcvteyycsux@googlemail.com', NULL);
INSERT INTO `stuent_info` VALUES ('105202101290063', '王辉', 1, 21, '130629200309102779', 433, '105', '4', '中国', '回族', '团员', 14965908272, 0, 5495203, '7pq92hh5yvs8@yeah.net', NULL);
INSERT INTO `stuent_info` VALUES ('105202101290064', '高慧', 1, 18, '321283200105277940', 415, '105', '4', '中国', '珞巴族', '党员', 18713864609, 0, 28685891317, 'h6vhygruthfx@aol.com', NULL);
INSERT INTO `stuent_info` VALUES ('105202101300001', '端木敏', 1, 21, '62042320021225102X', 472, '105', '4', '中国', '侗族', '党员', 16647238139, 0, 459011256874, '8xd4voq@msn.com', NULL);
INSERT INTO `stuent_info` VALUES ('105202101300002', '高玲刚', 0, 19, '610204200007046180', 462, '105', '4', '中国', '基诺族', '团员', 13046445473, 0, 950713133, '4n1grybrg6w@googlemail.com', NULL);
INSERT INTO `stuent_info` VALUES ('105202101300003', '刘倩彬', 0, 20, '411722200201306146', 445, '105', '4', '中国', '锡伯族', '团员', 18561258719, 0, 808693134095, 'kbdo6u0pbvmk@live.com', NULL);
INSERT INTO `stuent_info` VALUES ('105202101300004', '杨艳', 0, 19, '445300200004236416', 418, '105', '4', '中国', '瑶族', '党员', 13776727868, 0, 7594846, 'cni166uv@sohu.com', NULL);
INSERT INTO `stuent_info` VALUES ('105202101300005', '张燕剑', 1, 18, '510722200004031385', 447, '105', '4', '中国', '裕固族', '党员', 15275585731, 0, 944243226, 'zzfvj9rb2@live.com', NULL);
INSERT INTO `stuent_info` VALUES ('105202101300006', '周欣', 1, 21, '450125200103075252', 486, '105', '4', '中国', '柯尔克孜族', '群众', 15829420425, 0, 97509940072, '0kdzalc3w2enx@ask.com', NULL);
INSERT INTO `stuent_info` VALUES ('105202101300007', '周健英', 1, 20, '542129200106050930', 414, '105', '4', '中国', '独龙族', '群众', 15072491148, 0, 17188869, '1dnwdrhv7@ask.com', NULL);
INSERT INTO `stuent_info` VALUES ('105202101300008', '杨倩', 0, 19, '140110200104041145', 462, '105', '4', '中国', '锡伯族', '团员', 13835731024, 0, 753327870, 'tfbnld@hotmail.com', NULL);
INSERT INTO `stuent_info` VALUES ('105202101300009', '高杰', 0, 21, '522629200003227012', 499, '105', '4', '中国', '侗族', '党员', 13292445156, 0, 4480027765, 'k89eykz51mfb@yeah.net', NULL);
INSERT INTO `stuent_info` VALUES ('105202101300010', '司马静', 0, 18, '640100200308136766', 437, '105', '4', '中国', '布朗族', '团员', 15619513099, 0, 6997755967, 'l376y628@gmail.com', NULL);
INSERT INTO `stuent_info` VALUES ('105202101300011', '太史佳', 1, 18, '610730200211131112', 442, '105', '4', '中国', '侗族', '团员', 13621412706, 0, 976480591, 't1a3dvdhpxr@msn.com', NULL);
INSERT INTO `stuent_info` VALUES ('105202101300012', '张慧健', 1, 18, '540000200302177920', 406, '105', '4', '中国', '包括蒙古族', '团员', 15754714244, 0, 563880547, 'vjh1dp27@hotmail.com', NULL);
INSERT INTO `stuent_info` VALUES ('105202101300013', '赵旭', 0, 18, '130700200308294978', 444, '105', '4', '中国', '哈萨克族', '群众', 17395747231, 0, 64910401, '2k2ahc@126.com', NULL);
INSERT INTO `stuent_info` VALUES ('105202101300014', '朱华', 0, 18, '360826200105161050', 417, '105', '4', '中国', '哈萨克族', '党员', 13270346258, 0, 890694901650, 'iq0tpi2w0mdu@yahoo.com.cn', NULL);
INSERT INTO `stuent_info` VALUES ('105202101300015', '高林', 1, 18, '44010020030622823X', 445, '105', '4', '中国', '基诺族', '党员', 17159671890, 0, 122507, 'a92qsgzf0@sohu.com', NULL);
INSERT INTO `stuent_info` VALUES ('105202101300016', '赵彬晶', 1, 21, '371625200208160275', 472, '105', '4', '中国', '朝鲜族', '团员', 15042587696, 0, 138103983570, 'zm3xqu0io@126.com', NULL);
INSERT INTO `stuent_info` VALUES ('105202101300017', '上官媛毅', 1, 19, '130530200009288065', 440, '105', '4', '中国', '赫哲族', '团员', 18314130740, 0, 359527, 'ussgpr2@googlemail.com', NULL);
INSERT INTO `stuent_info` VALUES ('105202101300018', '太史宁', 0, 19, '511525200109219017', 411, '105', '4', '中国', '纳西族', '群众', 18566643101, 0, 65576150, 'm1ls4iffq9a@sohu.com', NULL);
INSERT INTO `stuent_info` VALUES ('105202101300019', '端木平晶', 0, 20, '621225200303080919', 446, '105', '4', '中国', '羌族', '党员', 13406229944, 0, 64754355, 'cop8nusdr6@aol.com', NULL);
INSERT INTO `stuent_info` VALUES ('105202101300020', '胡鹏辉', 0, 21, '371423200212063263', 496, '105', '4', '中国', '达斡尔族', '团员', 14511080800, 0, 502525848771, 'doprojwer8@sina.com', NULL);
INSERT INTO `stuent_info` VALUES ('105202101300021', '上官凯', 0, 18, '321011200012289763', 472, '105', '4', '中国', '傣族', '党员', 15585439961, 0, 69623262, 'g89unr4z@gmail.com', NULL);
INSERT INTO `stuent_info` VALUES ('105202101300022', '杨宁', 0, 21, '360700200208229872', 441, '105', '4', '中国', '纳西族', '党员', 18115027825, 0, 3960038870, 'fo7u5wxskf@263.net', NULL);
INSERT INTO `stuent_info` VALUES ('105202101300023', '杨华阳', 1, 19, '530121200305011745', 471, '105', '4', '中国', '普米族', '党员', 18352566977, 0, 4428324825, '58j1wte425bt@163.net', NULL);
INSERT INTO `stuent_info` VALUES ('105202101300024', '赵锋', 1, 18, '420602200009076379', 467, '105', '4', '中国', '黎族', '党员', 13616649422, 0, 94831171641, 'yiotdb6@263.net', NULL);
INSERT INTO `stuent_info` VALUES ('105202101300025', '欧阳蕾辉', 1, 20, '610827200312282523', 461, '105', '4', '中国', '畲族', '团员', 18617680732, 0, 71578759, 'fxyjuztq0@gmail.com', NULL);
INSERT INTO `stuent_info` VALUES ('105202101300026', '陈媛', 0, 21, '371329200209010286', 473, '105', '4', '中国', '苗族', '党员', 15159014627, 0, 21923062348, 'wqtbj1@yahoo.com.cn', NULL);
INSERT INTO `stuent_info` VALUES ('105202101300027', '徐明丹', 0, 19, '131102200004290821', 422, '105', '4', '中国', '保安族', '团员', 15317208954, 0, 479951318, 'n448fyf0dqs@126.com', NULL);
INSERT INTO `stuent_info` VALUES ('105202101300028', '杨洁娜', 0, 18, '152529200111208535', 407, '105', '4', '中国', '保安族', '团员', 18123363484, 0, 70430295889, 'kanf7u2f1u2@qq.com', NULL);
INSERT INTO `stuent_info` VALUES ('105202101300029', '欧阳平慧', 0, 20, '511800200107055644', 427, '105', '4', '中国', '朝鲜族', '党员', 18924673752, 0, 3342894, 'yvaqm8@hotmail.com', NULL);
INSERT INTO `stuent_info` VALUES ('105202101300030', '杨丹', 1, 21, '320322200111026453', 496, '105', '4', '中国', '土家族', '团员', 17352484494, 0, 786742, '5in1dufex2@sohu.com', NULL);
INSERT INTO `stuent_info` VALUES ('105202101300031', '陈阳', 0, 19, '620721200102275198', 458, '105', '4', '中国', '柯尔克孜族', '党员', 14963139136, 0, 91034425, 'msoc4dk@163.net', NULL);
INSERT INTO `stuent_info` VALUES ('105202101300032', '端木鑫勇', 1, 18, '430382200205253624', 495, '105', '4', '中国', '独龙族', '党员', 18947386835, 0, 263796506956, 'jhd0bs0@0355.net', NULL);
INSERT INTO `stuent_info` VALUES ('105202101300033', '陈阳', 0, 20, '520111200311263725', 475, '105', '4', '中国', '高山族', '党员', 15224078213, 0, 20696595, 'xe4xtadbd2on4@aol.com', NULL);
INSERT INTO `stuent_info` VALUES ('106202101290029', '周飞', 1, 19, '130621200007177168', 491, '106', '6', '中国', '黎族', '党员', 19970086359, 0, 5294077626, '640lg1ps@3721.net', NULL);
INSERT INTO `stuent_info` VALUES ('106202101290030', '李青', 0, 19, '441500200207037465', 463, '106', '6', '中国', '瑶族', '群众', 18671287836, 0, 1538833, '58el0x8ed@hotmail.com', NULL);
INSERT INTO `stuent_info` VALUES ('106202101290031', '陈雷', 0, 21, '150105200112169596', 417, '106', '6', '中国', '满族', '党员', 13048170736, 0, 544894609412, 'ttkoiqda@163.net', NULL);
INSERT INTO `stuent_info` VALUES ('106202101290032', '孙颖', 1, 21, '230405200008094981', 443, '106', '6', '中国', '普米族', '团员', 13606189047, 0, 19937802, 'cm67y77w@hotmail.com', NULL);
INSERT INTO `stuent_info` VALUES ('106202101290033', '朱云毅', 1, 19, '370503200104103650', 478, '106', '6', '中国', '俄罗斯族', '团员', 17708059938, 0, 49152099, '8j76xw@msn.com', NULL);
INSERT INTO `stuent_info` VALUES ('106202101290034', '张燕', 1, 21, '231024200104306225', 475, '106', '6', '中国', '哈萨克族', '群众', 13681773347, 0, 4033372214, 'moe2zjcjf84@msn.com', NULL);
INSERT INTO `stuent_info` VALUES ('106202101290035', '王强', 0, 18, '360421200101119185', 431, '106', '6', '中国', '毛南族', '群众', 13352439524, 0, 56545, 'etqwr0po02h7p@126.com', NULL);
INSERT INTO `stuent_info` VALUES ('106202101290036', '太史平宁', 1, 19, '130521200202163989', 447, '106', '6', '中国', '独龙族', '群众', 18981136122, 0, 6761856, 'i5t16nd@yeah.net', NULL);
INSERT INTO `stuent_info` VALUES ('106202101290037', '周敏', 1, 20, '654223200306251002', 450, '106', '6', '中国', '赫哲族', '党员', 13373753976, 0, 7189439, 'xvtp9d3ziqf@sohu.com', NULL);
INSERT INTO `stuent_info` VALUES ('106202101290038', '端木涛佳', 0, 21, '231225200208303368', 482, '106', '6', '中国', '高山族', '党员', 17688921633, 0, 3594208235, 'mjllwls@yahoo.com', NULL);
INSERT INTO `stuent_info` VALUES ('106202101290039', '王涛洋', 0, 20, '130984200309199604', 439, '106', '6', '中国', '傣族', '党员', 14938102121, 0, 282681410495, 'kezkgp@yeah.net', NULL);
INSERT INTO `stuent_info` VALUES ('106202101290040', '周敏', 1, 19, '211400200211147466', 431, '106', '6', '中国', '门巴族', '团员', 18971015336, 0, 614037, 'jpdrqksaimlxd@qq.com', NULL);
INSERT INTO `stuent_info` VALUES ('106202101290041', '黄慧', 1, 20, '130726200109076904', 455, '106', '6', '中国', '高山族', '群众', 13982566098, 0, 6927163770, 'bdhboswxy@3721.net', NULL);
INSERT INTO `stuent_info` VALUES ('106202101290042', '李超刚', 1, 20, '441826200005258227', 405, '106', '6', '中国', '水族', '团员', 16692121478, 0, 6670023, '5kzz6bs7yp3l@263.net', NULL);
INSERT INTO `stuent_info` VALUES ('106202101290043', '黄佳燕', 0, 21, '610429200208105317', 468, '106', '6', '中国', '独龙族', '团员', 19943556166, 0, 1608240, '8uuu0i8a@0355.net', NULL);
INSERT INTO `stuent_info` VALUES ('106202101290044', '王婷萍', 1, 20, '340822200209060925', 416, '106', '6', '中国', '满族', '群众', 19940419870, 0, 425308710488, 'frlr2izke@yeah.net', NULL);
INSERT INTO `stuent_info` VALUES ('106202101290045', '欧阳龙', 1, 20, '440785200108197280', 403, '106', '6', '中国', '白族', '群众', 15332840365, 0, 794215946, 'ungm6k@googlemail.com', NULL);
INSERT INTO `stuent_info` VALUES ('106202101290046', '陈颖俊', 1, 21, '220802200002220044', 453, '106', '6', '中国', '布朗族', '群众', 14982322423, 0, 959849459908, 'curfxn8ti7x8@163.com', NULL);
INSERT INTO `stuent_info` VALUES ('106202101290047', '陈兵', 1, 18, '511181200105305929', 497, '106', '6', '中国', '东乡族', '团员', 16675267662, 0, 77907995804, '45g0vtb@yahoo.com', NULL);
INSERT INTO `stuent_info` VALUES ('106202101290048', '胡萍', 1, 21, '350600200106078332', 408, '106', '6', '中国', '乌孜别克族', '群众', 16691724926, 0, 768588200, 'ca4lzwh3kg89f@yahoo.com.cn', NULL);
INSERT INTO `stuent_info` VALUES ('106202101290049', '徐倩', 0, 18, '230302200102060417', 467, '106', '6', '中国', '白族', '群众', 14970505726, 0, 467630, '1dteox2n@ask.com', NULL);
INSERT INTO `stuent_info` VALUES ('106202101290050', '黄晶蕾', 0, 19, '120113200211275858', 428, '106', '6', '中国', '赫哲族', '群众', 15776016802, 0, 737092821, '38588r8j8daj@126.com', NULL);
INSERT INTO `stuent_info` VALUES ('106202101290051', '太史云欣', 1, 18, '150928200301101847', 454, '106', '6', '中国', '达斡尔族', '团员', 18728490885, 0, 59834930, '8flnmrhq@0355.net', NULL);
INSERT INTO `stuent_info` VALUES ('106202101290052', '司马刚', 0, 18, '340503200209146424', 499, '106', '6', '中国', '阿昌族', '团员', 15262637612, 0, 242027, 'oitug3a2vjhd@hotmail.com', NULL);
INSERT INTO `stuent_info` VALUES ('106202101290053', '欧阳云', 1, 18, '350124200007250700', 456, '106', '6', '中国', '包括蒙古族', '群众', 17778491256, 0, 8333092550, 'wzqixllnyrx0@aol.com', NULL);
INSERT INTO `stuent_info` VALUES ('106202101290054', '孙英勇', 1, 20, '420922200008295184', 410, '106', '6', '中国', '畲族', '群众', 18897935818, 0, 2070339, 'nyp9pckljlhe7@163.net', NULL);
INSERT INTO `stuent_info` VALUES ('106202101290055', '李凯伟', 0, 19, '350122200003236482', 491, '106', '6', '中国', '塔吉克族', '党员', 13652766708, 0, 388624572, 'xj079gofgmo@163.net', NULL);
INSERT INTO `stuent_info` VALUES ('106202101290056', '孙彬倩', 0, 20, '440983200109217202', 402, '106', '6', '中国', '维吾尔族', '团员', 17243128698, 0, 89048625, 'rdmxka2hj0t6s@yeah.net', NULL);
INSERT INTO `stuent_info` VALUES ('106202101290057', '陈兵', 0, 21, '652327200012137043', 415, '106', '6', '中国', '仫佬族', '团员', 18251606934, 0, 36293531155, 'npc8yq3m0g478@163.net', NULL);
INSERT INTO `stuent_info` VALUES ('106202101290058', '李华伟', 0, 21, '371082200308302087', 491, '106', '6', '中国', '京族', '党员', 13069642709, 0, 1214641, 'k9b7zv7w@live.com', NULL);
INSERT INTO `stuent_info` VALUES ('106202101290059', '太史鑫', 0, 21, '445202200303140905', 413, '106', '6', '中国', '达斡尔族', '党员', 17834128356, 0, 3551766, 'or972wo1rf@yeah.net', NULL);
INSERT INTO `stuent_info` VALUES ('106202101290060', '太史鹏', 0, 21, '611026200003018738', 424, '106', '6', '中国', '土族', '团员', 17139692355, 0, 695478037, 'saxijt5jmd829@aol.com', NULL);
INSERT INTO `stuent_info` VALUES ('106202101290061', '周艳', 1, 19, '431300200309074950', 479, '106', '6', '中国', '毛南族', '群众', 19979191823, 0, 203750, 'uthto3ndj3tcu@3721.net', NULL);
INSERT INTO `stuent_info` VALUES ('106202101290062', '陈伟', 1, 19, '361030200111258184', 449, '106', '6', '中国', '水族', '群众', 18773115689, 0, 87683812209, 'wmg6unwvm95w2@msn.com', NULL);
INSERT INTO `stuent_info` VALUES ('106202101290063', '端木剑', 1, 20, '320700200304305815', 402, '106', '6', '中国', '赫哲族', '党员', 13590688632, 0, 1154909, 'pzuctov5vrcqn@0355.net', NULL);
INSERT INTO `stuent_info` VALUES ('106202101300001', '太史娜', 0, 19, '522400200311044062', 420, '106', '6', '中国', '瑶族', '团员', 17862148143, 0, 25905459304, 't3xwmysy@msn.com', NULL);
INSERT INTO `stuent_info` VALUES ('106202101300002', '周艳', 1, 20, '610800200007185989', 430, '106', '6', '中国', '回族', '群众', 18513707096, 0, 98303038, 'c4b2jz69n4ft@msn.com', NULL);
INSERT INTO `stuent_info` VALUES ('106202101300003', '太史健', 0, 21, '44132220020303896X', 404, '106', '6', '中国', '布依族', '群众', 17108077891, 0, 845795, 'zlum9e70beiv@ask.com', NULL);
INSERT INTO `stuent_info` VALUES ('106202101300004', '司马丹军', 1, 20, '460000200001030650', 426, '106', '6', '中国', '门巴族', '团员', 16688671994, 0, 8370139, '9twmqh4ouyk0@aol.com', NULL);
INSERT INTO `stuent_info` VALUES ('106202101300005', '黄健萍', 1, 20, '650107200112231848', 483, '106', '6', '中国', '布朗族', '团员', 14998115384, 0, 8665307934, 'drtanwr@hotmail.com', NULL);
INSERT INTO `stuent_info` VALUES ('106202101300006', '周燕蓉', 1, 18, '320103200003268375', 433, '106', '6', '中国', '塔塔尔族', '群众', 16690709211, 0, 670668098451, 'xhcgtju@3721.net', NULL);
INSERT INTO `stuent_info` VALUES ('106202101300007', '太史华雷', 1, 18, '510723200103164403', 447, '106', '6', '中国', '布依族', '群众', 18038322498, 0, 285093325, 'tly2d2g3@163.com', NULL);
INSERT INTO `stuent_info` VALUES ('106202101300008', '张青阳', 1, 21, '610926200111176571', 484, '106', '6', '中国', '苗族', '群众', 19915630310, 0, 581361366, '4679jgxm5@hotmail.com', NULL);
INSERT INTO `stuent_info` VALUES ('106202101300009', '端木晶旭', 1, 18, '542521200302069859', 422, '106', '6', '中国', '土族', '党员', 18265362619, 0, 1050449, 'pmskmm50e@3721.net', NULL);
INSERT INTO `stuent_info` VALUES ('106202101300010', '赵红云', 0, 19, '621126200007235235', 409, '106', '6', '中国', '高山族', '团员', 15661808290, 0, 487133, '5tahff8@aol.com', NULL);
INSERT INTO `stuent_info` VALUES ('106202101300011', '刘欣', 0, 19, '430703200207134975', 465, '106', '6', '中国', '赫哲族', '群众', 13302564725, 0, 64017795, 'sw7838@yahoo.com', NULL);
INSERT INTO `stuent_info` VALUES ('106202101300012', '司马杰媛', 0, 19, '61102120021027322X', 423, '106', '6', '中国', '独龙族', '党员', 13422494061, 0, 658512762, 'iin4h5iprldn9@msn.com', NULL);
INSERT INTO `stuent_info` VALUES ('106202101300013', '杨军', 1, 20, '430304200304048774', 436, '106', '6', '中国', '德昂族', '党员', 13315812195, 0, 6231528316, '56dd277j3qo5@163.net', NULL);
INSERT INTO `stuent_info` VALUES ('106202101300014', '赵琼飞', 0, 20, '500114200206294162', 472, '106', '6', '中国', '高山族', '党员', 13859849579, 0, 72189862, 'uu1vehp1@aol.com', NULL);
INSERT INTO `stuent_info` VALUES ('106202101300015', '朱晶', 1, 18, '530722200305074403', 407, '106', '6', '中国', '苗族', '党员', 16644717644, 0, 448217177, 'gnexedcrj28y@ask.com', NULL);
INSERT INTO `stuent_info` VALUES ('106202101300016', '胡娜', 0, 20, '620725200001188840', 457, '106', '6', '中国', '汉族', '党员', 17773561472, 0, 639788, 'rfjezxqpj@163.com', NULL);
INSERT INTO `stuent_info` VALUES ('106202101300017', '陈璐', 1, 18, '654223200105246979', 445, '106', '6', '中国', '布依族', '团员', 17504342548, 0, 9905106346, 'unu1hi0z@126.com', NULL);
INSERT INTO `stuent_info` VALUES ('106202101300018', '太史明琳', 1, 19, '421181200304130197', 456, '106', '6', '中国', '达斡尔族', '群众', 18263120443, 0, 537321, 'lzotjkw@googlemail.com', NULL);
INSERT INTO `stuent_info` VALUES ('106202101300019', '上官华雪', 0, 21, '130525200010055663', 414, '106', '6', '中国', '赫哲族', '群众', 15894736640, 0, 386627, 'pfv26i0ca3y@0355.net', NULL);
INSERT INTO `stuent_info` VALUES ('106202101300020', '王平', 1, 19, '610725200001146542', 413, '106', '6', '中国', '白族', '群众', 13092925396, 0, 87012024368, '23to63w@yahoo.com.cn', NULL);
INSERT INTO `stuent_info` VALUES ('106202101300021', '刘媛浩', 1, 18, '140425200005159640', 428, '106', '6', '中国', '侗族', '群众', 17158142207, 0, 675497968, 'qazc8ch13@sina.com', NULL);
INSERT INTO `stuent_info` VALUES ('106202101300022', '高锋兵', 1, 21, '410505200009181277', 409, '106', '6', '中国', '柯尔克孜族', '群众', 18735124975, 0, 17678876, '3ve99ehqu72t8@hotmail.com', NULL);
INSERT INTO `stuent_info` VALUES ('106202101300023', '上官青英', 1, 19, '450224200102093968', 499, '106', '6', '中国', '瑶族', '群众', 14575807188, 0, 69881706807, 'abvdcc7yv8m9w@sina.com', NULL);
INSERT INTO `stuent_info` VALUES ('106202101300024', '胡敏', 1, 19, '450800200310151036', 489, '106', '6', '中国', '俄罗斯族', '群众', 18206940721, 0, 93651409676, '0o6uywkatf4nk@yahoo.com.cn', NULL);
INSERT INTO `stuent_info` VALUES ('106202101300025', '赵浩', 1, 20, '360121200206224452', 418, '106', '6', '中国', '俄罗斯族', '党员', 14913020809, 0, 716759895, 'i3mpms@sina.com', NULL);
INSERT INTO `stuent_info` VALUES ('106202101300026', '黄琴', 1, 21, '120110200102272106', 449, '106', '6', '中国', '拉祜族', '群众', 17156039971, 0, 745283081, 'i981hxs9h0dl@yahoo.com.cn', NULL);
INSERT INTO `stuent_info` VALUES ('106202101300027', '孙雪', 1, 19, '360104200010272229', 498, '106', '6', '中国', '彝族', '群众', 13318386786, 0, 74705164, 'axki8p@googlemail.com', NULL);
INSERT INTO `stuent_info` VALUES ('106202101300028', '陈杰', 1, 18, '51140020010225647X', 435, '106', '6', '中国', '彝族', '团员', 18924067544, 0, 12214079, '93o84ck42g0a@googlemail.com', NULL);
INSERT INTO `stuent_info` VALUES ('106202101300029', '朱建宇', 0, 18, '632802200201267329', 457, '106', '6', '中国', '汉族', '党员', 15647672734, 0, 83234974290, 'lo27t87mzleba@163.com', NULL);
INSERT INTO `stuent_info` VALUES ('106202101300030', '吴阳', 0, 18, '210702200006132570', 454, '106', '6', '中国', '锡伯族', '团员', 15084137991, 0, 76550610, '5u06ln98ayk8@0355.net', NULL);
INSERT INTO `stuent_info` VALUES ('106202101300031', '高洋飞', 0, 21, '61011620000811136X', 485, '106', '6', '中国', '德昂族', '群众', 16632900755, 0, 619191327489, '8cn15verqujxa@ask.com', NULL);
INSERT INTO `stuent_info` VALUES ('107202101290026', '朱敏', 1, 20, '513327200310046393', 450, '107', '5', '中国', '保安族', '团员', 17158917615, 0, 427182172116, 'v33sr73k@263.net', NULL);
INSERT INTO `stuent_info` VALUES ('107202101290027', '太史青蓉', 0, 21, '53060020031020298X', 456, '107', '5', '中国', '乌孜别克族', '群众', 15667024338, 0, 5331827210, '5qkhbj2u2xx@263.net', NULL);
INSERT INTO `stuent_info` VALUES ('107202101290028', '刘静平', 1, 20, '220200200211023594', 424, '107', '5', '中国', '达斡尔族', '党员', 19927078188, 0, 26325360, 'lh49vwmjamm@msn.com', NULL);
INSERT INTO `stuent_info` VALUES ('107202101290029', '孙莹', 1, 21, '211400200004308159', 416, '107', '5', '中国', '汉族', '党员', 17386541228, 0, 803961997912, 'kb242sm823@hotmail.com', NULL);
INSERT INTO `stuent_info` VALUES ('107202101290030', '李峰', 1, 21, '350900200104252268', 448, '107', '5', '中国', '独龙族', '党员', 17172088122, 0, 282320503982, 'ixjzhw@163.com', NULL);
INSERT INTO `stuent_info` VALUES ('107202101290031', '徐婷慧', 1, 18, '810000200109071644', 451, '107', '5', '中国', '景颇族', '党员', 14560634784, 0, 584377, '9xqktd3@163.com', NULL);
INSERT INTO `stuent_info` VALUES ('107202101290032', '陈强', 1, 19, '370829200309170435', 480, '107', '5', '中国', '彝族', '群众', 14534971270, 0, 7718453, '2yco9roo57@live.com', NULL);
INSERT INTO `stuent_info` VALUES ('107202101290033', '黄鹏阳', 0, 21, '650121200003191995', 488, '107', '5', '中国', '哈萨克族', '群众', 18169359431, 0, 386089002, '3ubuabgumr@qq.com', NULL);
INSERT INTO `stuent_info` VALUES ('107202101290034', '高宁剑', 0, 21, '230421200304196309', 435, '107', '5', '中国', '壮族', '群众', 15654825934, 0, 9463044, 'zo61lqm4yo8ju@163.net', NULL);
INSERT INTO `stuent_info` VALUES ('107202101290035', '欧阳斌静', 1, 19, '610104200103126126', 478, '107', '5', '中国', '水族', '团员', 19980503266, 0, 7370799, 's93xcw0oxgm@yahoo.com.cn', NULL);
INSERT INTO `stuent_info` VALUES ('107202101290036', '胡静峰', 0, 18, '130530200108086477', 474, '107', '5', '中国', '傣族', '党员', 13359658001, 0, 770738, '5wg6xwc@163.com', NULL);
INSERT INTO `stuent_info` VALUES ('107202101290037', '杨兵阳', 0, 21, '430202200108054984', 415, '107', '5', '中国', '鄂伦春族', '群众', 13179295137, 0, 49213965586, 'll0p0spmxy6@0355.net', NULL);
INSERT INTO `stuent_info` VALUES ('107202101290038', '李婷鹏', 1, 21, '350206200005305635', 482, '107', '5', '中国', '侗族', '党员', 15607640242, 0, 73788780485, 'vj3ai41dxt57v@sohu.com', NULL);
INSERT INTO `stuent_info` VALUES ('107202101290039', '上官刚亮', 0, 21, '652701200010211586', 482, '107', '5', '中国', '塔塔尔族', '党员', 17188335806, 0, 2652026, 'd1co94ab5i@sina.com', NULL);
INSERT INTO `stuent_info` VALUES ('107202101290040', '欧阳英', 0, 20, '140603200105198105', 435, '107', '5', '中国', '塔塔尔族', '团员', 14929559475, 0, 79727325278, 'lt2bgk4@gmail.com', NULL);
INSERT INTO `stuent_info` VALUES ('107202101290041', '黄旭', 0, 19, '522634200004294269', 485, '107', '5', '中国', '门巴族', '党员', 17532936357, 0, 8352036, '0zl9zqkqftv1@googlemail.com', NULL);
INSERT INTO `stuent_info` VALUES ('107202101290042', '太史飞林', 0, 20, '610923200307205048', 475, '107', '5', '中国', '黎族', '党员', 17360584208, 0, 620452, 'bcbb92@hotmail.com', NULL);
INSERT INTO `stuent_info` VALUES ('107202101290043', '太史龙', 0, 20, '421303200306303049', 494, '107', '5', '中国', '景颇族', '党员', 13228521138, 0, 804781954516, 'ugasu9h848j4@163.com', NULL);
INSERT INTO `stuent_info` VALUES ('107202101290044', '端木霞云', 0, 19, '410782200004306476', 494, '107', '5', '中国', '布朗族', '群众', 17199545038, 0, 1920933911, 'sqs9kgr02fh@263.net', NULL);
INSERT INTO `stuent_info` VALUES ('107202101290045', '欧阳平涛', 1, 21, '411600200111164603', 407, '107', '5', '中国', '纳西族', '群众', 15066373046, 0, 2971174, 'iivkw83jzg9dc@0355.net', NULL);
INSERT INTO `stuent_info` VALUES ('107202101290046', '司马佳伟', 1, 20, '22012220030228109X', 432, '107', '5', '中国', '毛南族', '党员', 18278442872, 0, 885664243798, '3hbzkc32@yahoo.com.cn', NULL);
INSERT INTO `stuent_info` VALUES ('107202101290047', '周兵慧', 0, 20, '370832200110243164', 409, '107', '5', '中国', '佤族', '群众', 13401163183, 0, 13073516256, '18aryxzsd@sina.com', NULL);
INSERT INTO `stuent_info` VALUES ('107202101290048', '杨雪', 1, 20, '513329200205311039', 406, '107', '5', '中国', '仡佬族', '党员', 19906493086, 0, 927788, '53lwm3q7lt@yeah.net', NULL);
INSERT INTO `stuent_info` VALUES ('107202101290049', '赵颖青', 0, 21, '130723200204110796', 458, '107', '5', '中国', '塔吉克族', '党员', 17147097422, 0, 435167056, 'o0du7asdk@263.net', NULL);
INSERT INTO `stuent_info` VALUES ('107202101290050', '胡洋', 1, 21, '231003200104272561', 431, '107', '5', '中国', '乌孜别克族', '党员', 14744706771, 0, 67528185, '88xt02c7@aol.com', NULL);
INSERT INTO `stuent_info` VALUES ('107202101290051', '欧阳平', 0, 20, '450305200006170413', 413, '107', '5', '中国', '达斡尔族', '党员', 17721632154, 0, 68960299, '7rf8upi@126.com', NULL);
INSERT INTO `stuent_info` VALUES ('107202101290052', '赵华', 1, 21, '210726200004253978', 428, '107', '5', '中国', '包括蒙古族', '团员', 13245809379, 0, 152895848, 'l99pts3oh@sohu.com', NULL);
INSERT INTO `stuent_info` VALUES ('107202101290053', '太史伟', 0, 20, '14112620011028468X', 438, '107', '5', '中国', '仫佬族', '党员', 15958151625, 0, 772817833, '1t47lxwdj2a@gmail.com', NULL);
INSERT INTO `stuent_info` VALUES ('107202101290054', '司马勇阳', 0, 19, '310113200207018600', 472, '107', '5', '中国', '达斡尔族', '团员', 16699548332, 0, 632979, 'p7ulxc3@sina.com', NULL);
INSERT INTO `stuent_info` VALUES ('107202101290055', '赵斌琳', 0, 19, '410106200106061941', 488, '107', '5', '中国', '苗族', '党员', 13679089613, 0, 2311922352, 'dnq3f4@163.com', NULL);
INSERT INTO `stuent_info` VALUES ('107202101290056', '吴平', 0, 18, '610102200210111138', 444, '107', '5', '中国', '侗族', '团员', 18457390496, 0, 58253703, 'kflaqp44@126.com', NULL);
INSERT INTO `stuent_info` VALUES ('107202101290057', '杨欣超', 0, 20, '350581200002156765', 455, '107', '5', '中国', '撒拉族', '党员', 13609430060, 0, 77724966, 'n5h44q3f@googlemail.com', NULL);
INSERT INTO `stuent_info` VALUES ('107202101290058', '胡雪娟', 0, 20, '130300200204108462', 424, '107', '5', '中国', '哈萨克族', '团员', 14962470223, 0, 624154083, 'pwp5u5mdw@3721.net', NULL);
INSERT INTO `stuent_info` VALUES ('107202101290059', '司马艳', 1, 18, '430100200306270698', 486, '107', '5', '中国', '哈萨克族', '团员', 17816254680, 0, 338954921273, 'hnya45fu@0355.net', NULL);
INSERT INTO `stuent_info` VALUES ('107202101290060', '李亮', 0, 19, '360921200208081030', 408, '107', '5', '中国', '土族', '群众', 13231975833, 0, 225075574951, 'a3n1rrn@126.com', NULL);
INSERT INTO `stuent_info` VALUES ('107202101290061', '欧阳林华', 1, 21, '131181200008272167', 438, '107', '5', '中国', '景颇族', '群众', 18173062825, 0, 532732633, 'uv83jmr0@263.net', NULL);
INSERT INTO `stuent_info` VALUES ('107202101290062', '胡伟琴', 1, 18, '522423200304307180', 418, '107', '5', '中国', '彝族', '团员', 17592333053, 0, 779607, 'mpeh0alv31d2s@aol.com', NULL);
INSERT INTO `stuent_info` VALUES ('107202101290063', '李佳', 0, 18, '370613200210174717', 490, '107', '5', '中国', '独龙族', '党员', 13973998436, 0, 8310314488, '7tjld4@126.com', NULL);
INSERT INTO `stuent_info` VALUES ('107202101290064', '张琳云', 0, 21, '140622200102083264', 470, '107', '5', '中国', '京族', '团员', 17765212465, 0, 932842254664, 'rsyjbsg2d@gmail.com', NULL);
INSERT INTO `stuent_info` VALUES ('107202101290065', '徐婷欣', 0, 20, '230100200012225827', 425, '107', '5', '中国', '土族', '党员', 13238030619, 0, 349101167657, 'xxizhckcgyv@yahoo.com', NULL);
INSERT INTO `stuent_info` VALUES ('107202101290066', '太史燕', 1, 20, '421303200201212239', 469, '107', '5', '中国', '哈萨克族', '群众', 14599570809, 0, 25409989, 'dkjyaxoofi@3721.net', NULL);
INSERT INTO `stuent_info` VALUES ('107202101290067', '太史伟宇', 1, 21, '31011020000301457X', 458, '107', '5', '中国', '彝族', '党员', 17359175572, 0, 833818748048, 'hh97wlb6y4t08@sina.com', NULL);
INSERT INTO `stuent_info` VALUES ('107202101290068', '欧阳芳', 0, 21, '230882200210288207', 486, '107', '5', '中国', '珞巴族', '党员', 13943500843, 0, 125828809, 'l0hkxm9@yeah.net', NULL);
INSERT INTO `stuent_info` VALUES ('107202101290069', '赵莹', 1, 21, '621023200106188994', 426, '107', '5', '中国', '仡佬族', '团员', 15398118391, 0, 824203549, 'r8fevh8@ask.com', NULL);
INSERT INTO `stuent_info` VALUES ('107202101290070', '高峰', 1, 20, '340202200109018414', 423, '107', '5', '中国', '撒拉族', '党员', 15620500546, 0, 786760853794, '60uu8ry30pp@3721.net', NULL);
INSERT INTO `stuent_info` VALUES ('107202101290071', '朱洁琼', 0, 20, '130804200001215930', 473, '107', '5', '中国', '苗族', '党员', 18149135353, 0, 8300761602, '9msy4l9znz8au@163.net', NULL);
INSERT INTO `stuent_info` VALUES ('107202101290072', '李斌毅', 0, 19, '520323200301253888', 473, '107', '5', '中国', '水族', '团员', 17538830815, 0, 20332563, 'zc3w4ilf@googlemail.com', NULL);
INSERT INTO `stuent_info` VALUES ('107202101290073', '赵翔', 1, 20, '522400200311257834', 467, '107', '5', '中国', '畲族', '党员', 15631634055, 0, 386595724, 'kfvs81b@sina.com', NULL);
INSERT INTO `stuent_info` VALUES ('107202101290074', '欧阳婷', 1, 19, '430900200110249946', 464, '107', '5', '中国', '撒拉族', '党员', 17764187610, 0, 193463296, '4ltp85en1@0355.net', NULL);
INSERT INTO `stuent_info` VALUES ('107202101290075', '张婷红', 1, 19, '370213200010218736', 498, '107', '5', '中国', '朝鲜族', '团员', 18174377783, 0, 205184026660, 'shq9tv@yeah.net', NULL);
INSERT INTO `stuent_info` VALUES ('107202101290076', '太史洁', 0, 20, '410603200101281169', 418, '107', '5', '中国', '壮族', '群众', 17815060836, 0, 231014199, '6uycygdia6@163.com', NULL);
INSERT INTO `stuent_info` VALUES ('107202101290077', '李颖', 1, 21, '231003200209243628', 476, '107', '5', '中国', '布依族', '群众', 15580239299, 0, 478410134173, 's6g8miu2o@ask.com', NULL);
INSERT INTO `stuent_info` VALUES ('107202101290078', '陈琳', 1, 19, '440106200307173697', 445, '107', '5', '中国', '白族', '党员', 13736921556, 0, 7376393992, 'yvxc7f@googlemail.com', NULL);
INSERT INTO `stuent_info` VALUES ('107202101290079', '李宇翔', 1, 19, '150121200111090077', 444, '107', '5', '中国', '独龙族', '团员', 16615182345, 0, 4893063, 'ilnkdr0tp@3721.net', NULL);
INSERT INTO `stuent_info` VALUES ('107202101300001', '陈慧', 0, 18, '610112200111153757', 447, '107', '5', '中国', '佤族', '群众', 13713638862, 0, 969423059, 'mrrpcrr0@yahoo.com.cn', NULL);
INSERT INTO `stuent_info` VALUES ('107202101300002', '吴洋芳', 1, 19, '513428200007278601', 461, '107', '5', '中国', '布依族', '团员', 18888063865, 0, 45512964, 'b4imacmw3j2@sina.com', NULL);
INSERT INTO `stuent_info` VALUES ('107202101300003', '张健', 1, 21, '433100200009114114', 456, '107', '5', '中国', '哈萨克族', '党员', 15530864580, 0, 743260, '4uyr5ngc@126.com', NULL);
INSERT INTO `stuent_info` VALUES ('107202101300004', '徐宇平', 1, 21, '511302200112066175', 402, '107', '5', '中国', '土族', '党员', 13376964193, 0, 103523, 'g5rxgki@3721.net', NULL);
INSERT INTO `stuent_info` VALUES ('107202101300005', '吴建慧', 0, 18, '210102200007119543', 475, '107', '5', '中国', '朝鲜族', '群众', 17121837170, 0, 786462164931, '2aj1g721oid@hotmail.com', NULL);
INSERT INTO `stuent_info` VALUES ('107202101300006', '张静', 1, 21, '130600200312164732', 400, '107', '5', '中国', '仫佬族', '团员', 18477019772, 0, 64007050320, 'r4givaf6dcb@live.com', NULL);
INSERT INTO `stuent_info` VALUES ('107202101300007', '欧阳芳', 1, 19, '330723200001188064', 484, '107', '5', '中国', '土家族', '团员', 15742737911, 0, 364424, '9phybw2t0tm@126.com', NULL);
INSERT INTO `stuent_info` VALUES ('107202101300008', '刘明', 1, 19, '410928200003286891', 426, '107', '5', '中国', '水族', '团员', 18416923466, 0, 1576999052, 'ryyhxgeqv42@yahoo.com', NULL);
INSERT INTO `stuent_info` VALUES ('107202101300009', '周斌强', 1, 18, '140424200203119053', 471, '107', '5', '中国', '鄂温克族', '群众', 14920695120, 0, 25632461, 'ylc0xyhf6cqzd@qq.com', NULL);
INSERT INTO `stuent_info` VALUES ('107202101300010', '杨慧', 0, 18, '532801200210284817', 432, '107', '5', '中国', '土家族', '群众', 14962355147, 0, 6936581, 'xsmm3uq@yahoo.com.cn', NULL);
INSERT INTO `stuent_info` VALUES ('107202101300011', '朱雷鑫', 1, 18, '430423200110264764', 452, '107', '5', '中国', '水族', '群众', 17762212137, 0, 388266, 'wbah6gb@0355.net', NULL);
INSERT INTO `stuent_info` VALUES ('107202101300012', '上官毅', 1, 19, '421303200004136978', 442, '107', '5', '中国', '高山族', '党员', 16660721552, 0, 9612096, 'zg9ljzmwhb2x@yeah.net', NULL);
INSERT INTO `stuent_info` VALUES ('107202101300013', '欧阳霞', 1, 20, '360426200208278540', 487, '107', '5', '中国', '景颇族', '党员', 18947178414, 0, 675301008323, 'inbaq16pab6@3721.net', NULL);
INSERT INTO `stuent_info` VALUES ('107202101300014', '刘琼', 1, 18, '621022200208124020', 405, '107', '5', '中国', '黎族', '党员', 18017119218, 0, 7675925, 'nnaohp@163.net', NULL);
INSERT INTO `stuent_info` VALUES ('107202101300015', '周鑫', 1, 18, '611002200309094724', 475, '107', '5', '中国', '黎族', '群众', 18025368534, 0, 398059655940, 'asjqtm@163.com', NULL);
INSERT INTO `stuent_info` VALUES ('107202101300016', '高英', 0, 20, '360824200108132922', 482, '107', '5', '中国', '京族', '团员', 17860722201, 0, 547289, 'ytffduxjdkfv@qq.com', NULL);
INSERT INTO `stuent_info` VALUES ('107202101300017', '张杰青', 1, 19, '430523200302206716', 480, '107', '5', '中国', '塔吉克族', '团员', 17787684630, 0, 19720323383, 'xfvcwhdt6saki@126.com', NULL);
INSERT INTO `stuent_info` VALUES ('107202101300018', '徐娟琼', 1, 20, '361130200106227012', 414, '107', '5', '中国', '拉祜族', '团员', 13001011353, 0, 378998548163, 'hviydxvnxptv@163.net', NULL);
INSERT INTO `stuent_info` VALUES ('107202101300019', '黄凯建', 0, 20, '650104200007177924', 431, '107', '5', '中国', '佤族', '群众', 17535490426, 0, 31978113, 'colkf8icd@0355.net', NULL);
INSERT INTO `stuent_info` VALUES ('107202101300020', '高龙翔', 1, 20, '411625200312101403', 425, '107', '5', '中国', '鄂温克族', '团员', 17391076939, 0, 77514799, 'cerb7w1@yahoo.com.cn', NULL);
INSERT INTO `stuent_info` VALUES ('107202101300021', '王静', 1, 21, '652826200108190157', 427, '107', '5', '中国', '普米族', '群众', 13088915519, 0, 2519716024, 'hlozsry@263.net', NULL);
INSERT INTO `stuent_info` VALUES ('107202101300022', '黄旭', 0, 20, '530427200107165916', 420, '107', '5', '中国', '土族', '党员', 17865081143, 0, 8876994730, 'zaf6nu@sina.com', NULL);
INSERT INTO `stuent_info` VALUES ('107202101300023', '陈颖', 0, 18, '211202200210164055', 461, '107', '5', '中国', '黎族', '团员', 13336619282, 0, 2863115610, 'd2y7fy9gh5@qq.com', NULL);
INSERT INTO `stuent_info` VALUES ('107202101300024', '司马云杰', 1, 21, '511724200111029292', 482, '107', '5', '中国', '东乡族', '团员', 17578661963, 0, 73814916, 'wtd66omn8de@live.com', NULL);
INSERT INTO `stuent_info` VALUES ('107202101300025', '欧阳飞兵', 0, 18, '640205200012193910', 427, '107', '5', '中国', '撒拉族', '群众', 17663244899, 0, 761626, '0hsrinbq@126.com', NULL);
INSERT INTO `stuent_info` VALUES ('107202101300026', '太史雪敏', 1, 19, '230521200112073318', 424, '107', '5', '中国', '苗族', '团员', 15691943508, 0, 578009696855, 'oo6mqrn0@googlemail.com', NULL);
INSERT INTO `stuent_info` VALUES ('107202101300027', '周宁', 0, 18, '450721200003147199', 473, '107', '5', '中国', '鄂温克族', '团员', 18001119043, 0, 769483, 'daiv42i@sina.com', NULL);
INSERT INTO `stuent_info` VALUES ('107202101300028', '欧阳敏', 0, 18, '231225200011259826', 466, '107', '5', '中国', '傣族', '党员', 15625656197, 0, 841346907, 'yi3s08ux3nsh@163.net', NULL);
INSERT INTO `stuent_info` VALUES ('107202101300029', '王娟', 0, 20, '440608200208296368', 441, '107', '5', '中国', '毛南族', '群众', 13791070814, 0, 782860722, 'iu8qjs5n@126.com', NULL);
INSERT INTO `stuent_info` VALUES ('107202101300030', '孙明芳', 0, 19, '211005200001074377', 465, '107', '5', '中国', '白族', '群众', 17756144349, 0, 6450311083, 'b0v8hitin8@126.com', NULL);
INSERT INTO `stuent_info` VALUES ('107202101300031', '高媛', 0, 19, '640324200008185904', 441, '107', '5', '中国', '怒族', '群众', 13838315591, 0, 452261918162, '2i5q9n92yz@126.com', NULL);
INSERT INTO `stuent_info` VALUES ('107202101300032', '孙洁', 1, 19, '620422200212032023', 457, '107', '5', '中国', '普米族', '群众', 15192966822, 0, 974265563, 'm4ijrwq02ci@aol.com', NULL);
INSERT INTO `stuent_info` VALUES ('107202101300033', '陈倩娜', 0, 19, '130527200201036337', 415, '107', '5', '中国', '水族', '团员', 13264512838, 0, 47681141989, '54sc2r0c@263.net', NULL);
INSERT INTO `stuent_info` VALUES ('107202101300034', '上官阳敏', 0, 20, '542430200006206987', 490, '107', '5', '中国', '瑶族', '团员', 14957599888, 0, 577516, 'x5me7ulhu@aol.com', NULL);
INSERT INTO `stuent_info` VALUES ('107202101300035', '王阳', 0, 21, '450521200008129060', 424, '107', '5', '中国', '朝鲜族', '党员', 17610725634, 0, 2298717, 'ar3x0j44xx6@yahoo.com.cn', NULL);
INSERT INTO `stuent_info` VALUES ('107202101300036', '周健慧', 0, 21, '120111200211218666', 492, '107', '5', '中国', '畲族', '党员', 17785798410, 0, 324404174, 'f3kcqc3ybp@126.com', NULL);
INSERT INTO `stuent_info` VALUES ('107202101300037', '赵华', 0, 20, '231182200108239209', 449, '107', '5', '中国', '景颇族', '党员', 13569768828, 0, 40396823, 'v22kr21kb@0355.net', NULL);
INSERT INTO `stuent_info` VALUES ('200202101290036', '陈磊刚', 1, 20, '520222200209212512', 462, '200', '3', '中国', '包括蒙古族', '党员', 15304461627, 0, 57508754, '24xiaq@126.com', NULL);
INSERT INTO `stuent_info` VALUES ('200202101290037', '高媛琼', 1, 21, '632625200008148604', 481, '200', '3', '中国', '朝鲜族', '群众', 13305975568, 0, 928607637780, 'n4oe2bjk@yeah.net', NULL);
INSERT INTO `stuent_info` VALUES ('200202101290038', '赵磊', 0, 20, '210104200302125412', 433, '200', '3', '中国', '高山族', '党员', 18087931763, 0, 893713654, 'epcyjpt845o@263.net', NULL);
INSERT INTO `stuent_info` VALUES ('200202101290039', '徐兵', 0, 21, '620800200308066977', 455, '200', '3', '中国', '塔塔尔族', '群众', 18956912269, 0, 6296953, '6x86o6euu@gmail.com', NULL);
INSERT INTO `stuent_info` VALUES ('200202101290040', '孙华', 0, 20, '513332200108250973', 482, '200', '3', '中国', '柯尔克孜族', '团员', 15180344575, 0, 8116303, 'd2p9d7409g@googlemail.com', NULL);
INSERT INTO `stuent_info` VALUES ('200202101290041', '周峰磊', 1, 20, '360803200101153008', 435, '200', '3', '中国', '独龙族', '团员', 13476410925, 0, 701240683, '5y5rfdslfp@googlemail.com', NULL);
INSERT INTO `stuent_info` VALUES ('200202101290042', '孙娟杰', 1, 20, '230207200203199764', 474, '200', '3', '中国', '黎族', '群众', 19978096289, 0, 561849028920, 'hifk1f0k3oqqf@263.net', NULL);
INSERT INTO `stuent_info` VALUES ('200202101290043', '高平', 0, 18, '43102620011214828X', 490, '200', '3', '中国', '东乡族', '党员', 15691825900, 0, 552877587, 'gkw3st@263.net', NULL);
INSERT INTO `stuent_info` VALUES ('200202101290044', '杨涛洋', 0, 19, '41048120000301054X', 468, '200', '3', '中国', '傣族', '团员', 13359594707, 0, 800726650, 'wu9h520jdyt@aol.com', NULL);
INSERT INTO `stuent_info` VALUES ('200202101290045', '陈平', 0, 19, '141023200203094610', 407, '200', '3', '中国', '汉族', '团员', 14707174314, 0, 2284358, '876lmnptwbnz@sina.com', NULL);
INSERT INTO `stuent_info` VALUES ('200202101290046', '陈洋伟', 0, 19, '44050020030308587X', 476, '200', '3', '中国', '土族', '团员', 18958167485, 0, 63281520713, 'l3nf2jupeqh@qq.com', NULL);
INSERT INTO `stuent_info` VALUES ('200202101290047', '王鹏健', 0, 20, '411221200009266830', 418, '200', '3', '中国', '赫哲族', '群众', 18093993130, 0, 295318402, 'bw2kz6st@126.com', NULL);
INSERT INTO `stuent_info` VALUES ('200202101290048', '李薇欣', 0, 21, '230524200212264700', 477, '200', '3', '中国', '哈萨克族', '党员', 16670477131, 0, 168542884485, '40lhs7viez@yahoo.com', NULL);
INSERT INTO `stuent_info` VALUES ('200202101290049', '孙兵', 0, 20, '610527200105309854', 417, '200', '3', '中国', '怒族', '群众', 17237792527, 0, 124906935, 'je2l9wimu@3721.net', NULL);
INSERT INTO `stuent_info` VALUES ('200202101290050', '王华琴', 1, 21, '510304200212135176', 433, '200', '3', '中国', '土族', '群众', 15609955952, 0, 562455, 'ng0ij9x0yv12@163.com', NULL);
INSERT INTO `stuent_info` VALUES ('200202101290051', '高林倩', 1, 19, '150400200110248906', 404, '200', '3', '中国', '赫哲族', '党员', 17272678674, 0, 69123957, '4gnojthb0b1@yahoo.com', NULL);
INSERT INTO `stuent_info` VALUES ('200202101290052', '陈云琴', 0, 21, '500232200106225694', 478, '200', '3', '中国', '回族', '党员', 16643072003, 0, 9044186, '55b7620m15@yahoo.com', NULL);
INSERT INTO `stuent_info` VALUES ('200202101290053', '李倩华', 1, 18, '420525200204091354', 471, '200', '3', '中国', '布依族', '团员', 13277016096, 0, 40386765014, 'emkh3stied3zw@aol.com', NULL);
INSERT INTO `stuent_info` VALUES ('200202101290054', '杨飞', 1, 20, '450325200103176150', 404, '200', '3', '中国', '土家族', '群众', 17385148214, 0, 340323353, 'eb1ht4as9mo@163.com', NULL);
INSERT INTO `stuent_info` VALUES ('200202101290055', '上官健波', 0, 20, '330624200002066588', 476, '200', '3', '中国', '鄂温克族', '团员', 13173109637, 0, 410740362, 'xdbypyppw78e@live.com', NULL);
INSERT INTO `stuent_info` VALUES ('200202101290056', '高梅敏', 1, 21, '411426200106121740', 483, '200', '3', '中国', '藏族', '群众', 19964825730, 0, 66455011887, '9xson5btjit@3721.net', NULL);
INSERT INTO `stuent_info` VALUES ('200202101290057', '端木青青', 1, 20, '150826200010227281', 440, '200', '3', '中国', '珞巴族', '党员', 18708770031, 0, 4892484, 'jt935l3pa@sohu.com', NULL);
INSERT INTO `stuent_info` VALUES ('200202101290058', '徐宇', 0, 21, '610632200204302064', 459, '200', '3', '中国', '仡佬族', '群众', 15260018906, 0, 852641666, '285cvhyizuhw@0355.net', NULL);
INSERT INTO `stuent_info` VALUES ('200202101290059', '上官翔', 1, 19, '511822200208268233', 404, '200', '3', '中国', '畲族', '党员', 17635054155, 0, 5468814400, 'qocjq7exxaebj@googlemail.com', NULL);
INSERT INTO `stuent_info` VALUES ('200202101290060', '李艳明', 1, 19, '341103200312052644', 432, '200', '3', '中国', '黎族', '群众', 18901149354, 0, 3207303468, 'pk9f2ac7f@0355.net', NULL);
INSERT INTO `stuent_info` VALUES ('200202101290061', '李莉', 1, 18, '542331200005270443', 414, '200', '3', '中国', '门巴族', '群众', 13091537722, 0, 1498229384, 'vpbzh65oiqg4@263.net', NULL);
INSERT INTO `stuent_info` VALUES ('200202101290062', '李欣林', 0, 18, '120111200206076237', 408, '200', '3', '中国', '京族', '党员', 18509437769, 0, 396894090, '1ncbv5xde@126.com', NULL);
INSERT INTO `stuent_info` VALUES ('200202101290063', '上官勇建', 0, 20, '360926200305205498', 450, '200', '3', '中国', '仫佬族', '群众', 18509206702, 0, 927505935, '2paffph15l@googlemail.com', NULL);
INSERT INTO `stuent_info` VALUES ('200202101300001', '张阳', 0, 21, '331000200212179801', 441, '200', '3', '中国', '彝族', '党员', 13321747843, 0, 92224923251, 'ax74gm26j7nmw@gmail.com', NULL);
INSERT INTO `stuent_info` VALUES ('200202101300002', '司马蓉洋', 1, 20, '542221200211089049', 489, '200', '3', '中国', '布依族', '团员', 14507771788, 0, 117978214230, 'jsj7vmrps84uj@0355.net', NULL);
INSERT INTO `stuent_info` VALUES ('200202101300003', '黄兵', 1, 18, '441422200310085169', 472, '200', '3', '中国', '塔吉克族', '党员', 13861665538, 0, 446451, 'c3dxmnl5z9u5@live.com', NULL);
INSERT INTO `stuent_info` VALUES ('200202101300004', '黄霞琴', 1, 19, '350205200007182150', 411, '200', '3', '中国', '达斡尔族', '团员', 15347374251, 0, 889164864, '7grv3ex@googlemail.com', NULL);
INSERT INTO `stuent_info` VALUES ('200202101300005', '李锋静', 0, 21, '45092220020215265X', 400, '200', '3', '中国', '藏族', '团员', 15022525855, 0, 85822511749, 'h0srtup28h@gmail.com', NULL);
INSERT INTO `stuent_info` VALUES ('200202101300006', '孙燕', 0, 21, '451029200209141749', 424, '200', '3', '中国', '独龙族', '团员', 18071927717, 0, 8484694, 'kwu2o0ueok2hs@0355.net', NULL);
INSERT INTO `stuent_info` VALUES ('200202101300007', '杨涛', 1, 18, '141128200311071886', 431, '200', '3', '中国', '景颇族', '团员', 17399969206, 0, 7763344, 'd2zyz6l7c8xyt@live.com', NULL);
INSERT INTO `stuent_info` VALUES ('200202101300008', '张凯丹', 1, 19, '231100200210106950', 409, '200', '3', '中国', '白族', '群众', 14739764599, 0, 668325530217, 'w141a09zx0d2o@ask.com', NULL);
INSERT INTO `stuent_info` VALUES ('200202101300009', '吴强', 1, 21, '152500200207149477', 450, '200', '3', '中国', '东乡族', '群众', 17546605492, 0, 700366424, 'ljx20eqazxqks@263.net', NULL);
INSERT INTO `stuent_info` VALUES ('200202101300010', '上官青涛', 0, 18, '341722200105182990', 464, '200', '3', '中国', '怒族', '群众', 17576860320, 0, 445092768744, 'k33rj3l@sohu.com', NULL);
INSERT INTO `stuent_info` VALUES ('200202101300011', '朱超', 0, 20, '14011020011124889X', 494, '200', '3', '中国', '高山族', '团员', 18226054380, 0, 558161587, 'sts7yyp@yahoo.com', NULL);
INSERT INTO `stuent_info` VALUES ('200202101300012', '欧阳雷', 0, 21, '360902200107245113', 492, '200', '3', '中国', '京族', '党员', 18195832607, 0, 8466806, '1tqjm3@3721.net', NULL);
INSERT INTO `stuent_info` VALUES ('200202101300013', '欧阳琴剑', 0, 18, '430981200203290268', 454, '200', '3', '中国', '仫佬族', '群众', 17724266657, 0, 7641510100, 'xk83lo@qq.com', NULL);
INSERT INTO `stuent_info` VALUES ('200202101300014', '司马旭磊', 1, 18, '140830200209223934', 494, '200', '3', '中国', '满族', '群众', 15302733644, 0, 7055071276, 'g8q9h8cz@gmail.com', NULL);
INSERT INTO `stuent_info` VALUES ('200202101300015', '徐涛娜', 0, 21, '542123200006237249', 436, '200', '3', '中国', '畲族', '党员', 13001687454, 0, 850006131, 'tqm6ffzsl306@aol.com', NULL);
INSERT INTO `stuent_info` VALUES ('200202101300016', '太史雷军', 1, 18, '140921200212136005', 407, '200', '3', '中国', '高山族', '群众', 18621723053, 0, 470731630, 'xnrd22mtplh3@yeah.net', NULL);
INSERT INTO `stuent_info` VALUES ('200202101300017', '端木超', 1, 20, '130323200004077600', 415, '200', '3', '中国', '拉祜族', '团员', 13034492922, 0, 591784775, 'hyfanuj6mh@163.net', NULL);
INSERT INTO `stuent_info` VALUES ('200202101300018', '杨鹏', 0, 20, '230722200210045289', 491, '200', '3', '中国', '土族', '党员', 15340401498, 0, 4279249273, '4qxygt7@sohu.com', NULL);
INSERT INTO `stuent_info` VALUES ('200202101300019', '周毅', 0, 21, '53250120001231509X', 441, '200', '3', '中国', '苗族', '团员', 18377622815, 0, 135321993355, 'eeeoiv3h3@hotmail.com', NULL);
INSERT INTO `stuent_info` VALUES ('200202101300020', '朱丽', 0, 21, '360421200312270344', 465, '200', '3', '中国', '高山族', '群众', 17803886710, 0, 397089893, '8zbt2j816t6@msn.com', NULL);
INSERT INTO `stuent_info` VALUES ('200202101300021', '张彬', 0, 18, '652200200001162299', 453, '200', '3', '中国', '独龙族', '党员', 15639091994, 0, 89021727, 'p9w5g0khabc@yeah.net', NULL);
INSERT INTO `stuent_info` VALUES ('200202101300022', '黄宁', 0, 21, '430424200010065043', 454, '200', '3', '中国', '东乡族', '党员', 18929410622, 0, 576013074720, 'ysdgduas9pza@qq.com', NULL);
INSERT INTO `stuent_info` VALUES ('200202101300023', '司马波', 0, 20, '360827200308263125', 454, '200', '3', '中国', '满族', '团员', 13196369859, 0, 830441139, 'qdxjdh8iw@163.net', NULL);
INSERT INTO `stuent_info` VALUES ('200202101300024', '上官军', 0, 21, '360423200210297063', 404, '200', '3', '中国', '京族', '群众', 17860598130, 0, 4595828, 'c3ym756hc306t@live.com', NULL);
INSERT INTO `stuent_info` VALUES ('200202101300025', '张林', 0, 19, '320202200310191143', 446, '200', '3', '中国', '锡伯族', '党员', 16660223298, 0, 37377670, 'sdst6o1tl8d@sina.com', NULL);
INSERT INTO `stuent_info` VALUES ('200202101300026', '黄婷', 1, 21, '520402200203060517', 450, '200', '3', '中国', '满族', '党员', 15301817297, 0, 2594589275, 'zoy4be@263.net', NULL);
INSERT INTO `stuent_info` VALUES ('200202101300027', '赵宁平', 1, 21, '371402200309083007', 497, '200', '3', '中国', '水族', '党员', 19997442787, 0, 5842334842, 'bgz2ty4p33@126.com', NULL);
INSERT INTO `stuent_info` VALUES ('200202101300028', '张刚玲', 0, 20, '411627200106019815', 409, '200', '3', '中国', '傈僳族', '团员', 17132441503, 0, 9951062873, 'nzszoc092apg@3721.net', NULL);
INSERT INTO `stuent_info` VALUES ('200202101300029', '徐彬翔', 1, 18, '320105200107289130', 411, '200', '3', '中国', '白族', '群众', 18442934945, 0, 798840207, 'hst8mgr1jktk@sina.com', NULL);
INSERT INTO `stuent_info` VALUES ('H2015753', '江令阳', 1, 18, '456453231231231', 444, '200', '3', '中国', '汉族', '群众', 13535353253, 1, 66606741, '6546@qq.com', NULL);

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2021-01-27 14:12:33', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2021-01-27 14:12:33', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2021-01-27 14:12:33', '', NULL, '深色主题theme-dark，浅色主题theme-light');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '郑州科技学院', 0, '张西亚', '15888888888', 'xiya@163.com', '0', '0', 'admin', '2021-01-27 14:12:25', 'admin', '2021-01-28 10:46:35');
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '院系', 1, '张三', '15888888888', '', '0', '2', 'admin', '2021-01-27 14:12:25', 'admin', '2021-01-28 08:13:50');
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2021-01-27 14:12:25', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 100, '0,100', '土木工程', 1, '土木', '15888888888', '', '0', '0', 'admin', '2021-01-27 14:12:25', 'admin', '2021-01-28 10:46:09');
INSERT INTO `sys_dept` VALUES (104, 100, '0,100', '信息工程', 2, '信息', '15888888888', '', '0', '0', 'admin', '2021-01-27 14:12:25', 'admin', '2021-01-28 10:46:16');
INSERT INTO `sys_dept` VALUES (105, 100, '0,100', '机械工程', 3, '机械', '15888888888', '', '0', '0', 'admin', '2021-01-27 14:12:25', 'admin', '2021-01-28 10:46:21');
INSERT INTO `sys_dept` VALUES (106, 100, '0,100', '艺术学院', 4, '', '15888888888', '', '0', '0', 'admin', '2021-01-27 14:12:25', 'admin', '2021-01-28 10:46:25');
INSERT INTO `sys_dept` VALUES (107, 100, '0,100', '电气学院', 5, '', '15888888888', '', '0', '0', 'admin', '2021-01-27 14:12:25', 'admin', '2021-01-28 10:46:30');
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2021-01-27 14:12:25', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '2', 'admin', '2021-01-27 14:12:25', '', NULL);
INSERT INTO `sys_dept` VALUES (200, 100, '0,100', '交通学院', 6, '交通', NULL, NULL, '0', '0', 'admin', '2021-01-27 14:35:07', 'admin', '2021-01-28 10:46:35');

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 102 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2021-01-27 14:12:32', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2021-01-27 14:12:32', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2021-01-27 14:12:32', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2021-01-27 14:12:32', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2021-01-27 14:12:32', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '有效', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2021-01-27 14:12:32', 'admin', '2021-01-28 07:59:54', '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '无效', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2021-01-27 14:12:32', 'admin', '2021-01-28 08:00:05', '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2021-01-27 14:12:32', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2021-01-27 14:12:32', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2021-01-27 14:12:32', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2021-01-27 14:12:32', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2021-01-27 14:12:32', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2021-01-27 14:12:32', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2021-01-27 14:12:32', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2021-01-27 14:12:32', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2021-01-27 14:12:32', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2021-01-27 14:12:32', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-01-27 14:12:32', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (19, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-01-27 14:12:32', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (20, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-01-27 14:12:32', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (21, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2021-01-27 14:12:32', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (22, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-01-27 14:12:32', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (23, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-01-27 14:12:32', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (24, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-01-27 14:12:32', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (25, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-01-27 14:12:32', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (26, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-01-27 14:12:32', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (27, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2021-01-27 14:12:32', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (28, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2021-01-27 14:12:32', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (100, 0, '已报到', '0', 'stu_status', NULL, NULL, 'N', '0', 'admin', '2021-01-28 08:01:29', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (101, 1, '未报到', '1', 'stu_status', NULL, NULL, 'N', '0', 'admin', '2021-01-28 08:01:37', 'admin', '2021-01-28 08:01:42', NULL);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2021-01-27 14:12:32', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2021-01-27 14:12:32', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2021-01-27 14:12:32', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2021-01-27 14:12:32', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2021-01-27 14:12:32', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2021-01-27 14:12:32', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2021-01-27 14:12:32', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2021-01-27 14:12:32', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2021-01-27 14:12:32', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2021-01-27 14:12:32', '', NULL, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (100, '学生状态', 'stu_status', '0', 'admin', '2021-01-28 08:01:03', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2021-01-27 14:12:34', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2021-01-27 14:12:34', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2021-01-27 14:12:34', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime(0) NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 143 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-27 14:26:11');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-27 14:26:49');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-27 14:28:19');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '10.76.212.108', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码已失效', '2021-01-27 17:40:49');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '10.76.212.108', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-27 17:40:56');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-27 18:02:19');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-01-27 18:14:33');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-27 18:15:36');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-01-27 18:21:05');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-27 18:25:02');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-28 07:57:35');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-28 10:45:55');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2021-01-28 13:56:01');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-28 13:56:04');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-28 14:34:13');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-28 15:31:38');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-28 18:11:29');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-29 09:43:33');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-29 10:45:38');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-29 13:41:55');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-01-29 13:47:28');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-29 13:47:37');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-01-29 13:50:35');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-29 13:50:40');
INSERT INTO `sys_logininfor` VALUES (124, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-01-29 14:23:35');
INSERT INTO `sys_logininfor` VALUES (125, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-29 14:23:40');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-29 15:24:40');
INSERT INTO `sys_logininfor` VALUES (127, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-30 08:21:53');
INSERT INTO `sys_logininfor` VALUES (128, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2021-01-30 10:28:48');
INSERT INTO `sys_logininfor` VALUES (129, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-30 10:28:51');
INSERT INTO `sys_logininfor` VALUES (130, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-01-30 14:44:01');
INSERT INTO `sys_logininfor` VALUES (131, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-02-02 08:25:22');
INSERT INTO `sys_logininfor` VALUES (132, 'H2015753', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-02-02 08:40:11');
INSERT INTO `sys_logininfor` VALUES (133, 'H2015753', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-02-02 08:49:36');
INSERT INTO `sys_logininfor` VALUES (134, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-02-02 08:49:43');
INSERT INTO `sys_logininfor` VALUES (135, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-02-02 08:50:51');
INSERT INTO `sys_logininfor` VALUES (136, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-02-02 08:50:56');
INSERT INTO `sys_logininfor` VALUES (137, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-02-02 08:51:22');
INSERT INTO `sys_logininfor` VALUES (138, 'H2015753', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-02-02 08:51:33');
INSERT INTO `sys_logininfor` VALUES (139, 'H2015753', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-02-02 09:24:49');
INSERT INTO `sys_logininfor` VALUES (140, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-02-03 08:03:22');
INSERT INTO `sys_logininfor` VALUES (141, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-02-03 08:14:19');
INSERT INTO `sys_logininfor` VALUES (142, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-02-03 08:14:34');
INSERT INTO `sys_logininfor` VALUES (143, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-02-03 11:11:19');
INSERT INTO `sys_logininfor` VALUES (144, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2021-04-19 16:12:09');
INSERT INTO `sys_logininfor` VALUES (145, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-19 16:12:18');
INSERT INTO `sys_logininfor` VALUES (146, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-20 09:50:24');
INSERT INTO `sys_logininfor` VALUES (147, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2021-04-20 11:38:05');
INSERT INTO `sys_logininfor` VALUES (148, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-20 11:38:13');
INSERT INTO `sys_logininfor` VALUES (149, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '用户不存在/密码错误', '2021-04-20 13:31:15');
INSERT INTO `sys_logininfor` VALUES (150, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2021-04-20 13:31:26');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件路径',
  `is_frame` int(1) NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int(1) NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2006 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, 'system', NULL, 1, 0, 'M', '0', '0', '', 'system', 'admin', '2021-01-27 14:12:27', 'admin', '2021-02-03 08:04:19', '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, 'monitor', NULL, 1, 0, 'M', '1', '0', '', 'monitor', 'admin', '2021-01-27 14:12:27', 'admin', '2021-02-03 08:05:44', '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, 'tool', NULL, 1, 0, 'M', '1', '0', '', 'tool', 'admin', '2021-01-27 14:12:27', 'admin', '2021-04-20 15:04:28', '系统工具目录');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2021-01-27 14:12:27', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2021-01-27 14:12:27', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', 1, 0, 'C', '1', '0', 'system:menu:list', 'tree-table', 'admin', '2021-01-27 14:12:27', 'admin', '2021-04-20 15:04:39', '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '院系管理', 1, 4, 'dept', 'system/dept/index', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2021-01-27 14:12:27', 'admin', '2021-01-27 18:31:50', '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '专业管理', 1, 5, 'post', 'system/post/index', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2021-01-27 14:12:27', 'admin', '2021-01-28 10:50:50', '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', 1, 0, 'C', '1', '0', 'system:dict:list', 'dict', 'admin', '2021-01-27 14:12:27', 'admin', '2021-02-03 08:05:13', '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', 1, 0, 'C', '1', '0', 'system:config:list', 'edit', 'admin', '2021-01-27 14:12:27', 'admin', '2021-02-03 08:05:07', '参数设置菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', 1, 0, 'M', '1', '0', '', 'log', 'admin', '2021-01-27 14:12:27', 'admin', '2021-02-03 08:04:41', '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2021-01-27 14:12:27', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2021-01-27 14:12:27', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2021-01-27 14:12:27', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2021-01-27 14:12:27', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2021-01-27 14:12:27', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '表单构建', 3, 1, 'build', 'tool/build/index', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2021-01-27 14:12:27', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (115, '代码生成', 3, 2, 'gen', 'tool/gen/index', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2021-01-27 14:12:27', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (116, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2021-01-27 14:12:27', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2021-01-27 14:12:27', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2021-01-27 14:12:27', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1001, '用户查询', 100, 1, '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2021-01-27 14:12:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户新增', 100, 2, '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2021-01-27 14:12:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户修改', 100, 3, '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2021-01-27 14:12:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户删除', 100, 4, '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2021-01-27 14:12:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导出', 100, 5, '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2021-01-27 14:12:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '用户导入', 100, 6, '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2021-01-27 14:12:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '重置密码', 100, 7, '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2021-01-27 14:12:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色查询', 101, 1, '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2021-01-27 14:12:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色新增', 101, 2, '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2021-01-27 14:12:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色修改', 101, 3, '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2021-01-27 14:12:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色删除', 101, 4, '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2021-01-27 14:12:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '角色导出', 101, 5, '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2021-01-27 14:12:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单查询', 102, 1, '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2021-01-27 14:12:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单新增', 102, 2, '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2021-01-27 14:12:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单修改', 102, 3, '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2021-01-27 14:12:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '菜单删除', 102, 4, '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2021-01-27 14:12:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门查询', 103, 1, '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2021-01-27 14:12:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门新增', 103, 2, '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2021-01-27 14:12:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门修改', 103, 3, '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2021-01-27 14:12:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '部门删除', 103, 4, '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2021-01-27 14:12:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位查询', 104, 1, '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2021-01-27 14:12:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位新增', 104, 2, '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2021-01-27 14:12:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位修改', 104, 3, '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2021-01-27 14:12:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位删除', 104, 4, '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2021-01-27 14:12:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '岗位导出', 104, 5, '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2021-01-27 14:12:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典查询', 105, 1, '#', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2021-01-27 14:12:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典新增', 105, 2, '#', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2021-01-27 14:12:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典修改', 105, 3, '#', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2021-01-27 14:12:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典删除', 105, 4, '#', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2021-01-27 14:12:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '字典导出', 105, 5, '#', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2021-01-27 14:12:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数查询', 106, 1, '#', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2021-01-27 14:12:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数新增', 106, 2, '#', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2021-01-27 14:12:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数修改', 106, 3, '#', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2021-01-27 14:12:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数删除', 106, 4, '#', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2021-01-27 14:12:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '参数导出', 106, 5, '#', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2021-01-27 14:12:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作查询', 500, 1, '#', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2021-01-27 14:12:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '操作删除', 500, 2, '#', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2021-01-27 14:12:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '日志导出', 500, 4, '#', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2021-01-27 14:12:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录查询', 501, 1, '#', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2021-01-27 14:12:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '登录删除', 501, 2, '#', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2021-01-27 14:12:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '日志导出', 501, 3, '#', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2021-01-27 14:12:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2021-01-27 14:12:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2021-01-27 14:12:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2021-01-27 14:12:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2021-01-27 14:12:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2021-01-27 14:12:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2021-01-27 14:12:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2021-01-27 14:12:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2021-01-27 14:12:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 7, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2021-01-27 14:12:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 115, 1, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2021-01-27 14:12:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 115, 2, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2021-01-27 14:12:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 115, 3, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2021-01-27 14:12:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 115, 2, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2021-01-27 14:12:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 115, 4, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2021-01-27 14:12:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 115, 5, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2021-01-27 14:12:28', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2000, '学生信息', 0, 2, 'info', NULL, 1, 0, 'M', '0', '0', '', 'peoples', 'admin', '2021-01-28 08:16:52', 'admin', '2021-01-28 14:52:59', '');
INSERT INTO `sys_menu` VALUES (2001, '录取学生信息', 2000, 0, 'student', 'info/student/index', 1, 0, 'C', '0', '0', 'student:info:list', 'people', 'admin', '2021-01-28 08:18:57', 'admin', '2021-02-02 08:45:41', '');
INSERT INTO `sys_menu` VALUES (2002, '班级信息', 2000, 1, 'classInfo', 'classInfo/index', 1, 0, 'C', '0', '0', 'classInfo:classInfo:list', 'user', 'admin', '2021-01-28 08:19:41', 'admin', '2021-04-20 15:00:16', '');
INSERT INTO `sys_menu` VALUES (2004, '学生信息查询', 2001, 1, '', NULL, 1, 0, 'F', '0', '0', 'student:info:query', '#', 'admin', '2021-02-02 08:48:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2005, '学生信息新增', 2001, 2, '', NULL, 1, 0, 'F', '0', '0', 'student:info:add', '#', 'admin', '2021-02-02 08:48:27', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2006, '学生信息删除', 2001, 3, '', NULL, 1, 0, 'F', '0', '0', 'student:info:remove', '#', 'admin', '2021-02-02 08:48:46', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2007, '宿舍管理', 0, 3, 'build', NULL, 1, 0, 'M', '0', '0', NULL, 'build', 'admin', '2021-04-20 10:21:06', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2008, '楼栋信息', 2007, 1, 'building', 'building/index', 1, 0, 'C', '0', '0', 'building:building:list', 'peoples', 'admin', '2021-04-20 10:22:32', 'admin', '2021-04-20 14:41:14', '');
INSERT INTO `sys_menu` VALUES (2009, '宿舍信息', 2007, 2, 'room', 'room/index', 1, 0, 'C', '0', '0', 'room:room:list', 'people', 'admin', '2021-04-20 10:34:22', 'admin', '2021-04-20 14:38:32', '');
INSERT INTO `sys_menu` VALUES (2010, '宿舍分配', 2007, 3, 'stuRoomInfo', 'stuRoomInfo/index', 1, 0, 'C', '0', '0', 'stuRoomInfo:info:list', 'peoples', 'admin', '2021-04-20 13:45:42', 'admin', '2021-04-20 14:42:11', '');
INSERT INTO `sys_menu` VALUES (2011, '查询', 2008, 1, '', NULL, 1, 0, 'F', '0', '0', 'building:building:query', '#', 'admin', '2021-04-20 14:36:53', 'admin', '2021-04-20 14:41:28', '');
INSERT INTO `sys_menu` VALUES (2012, '新增', 2008, 2, '', NULL, 1, 0, 'F', '0', '0', 'building:building:add', '#', 'admin', '2021-04-20 14:37:34', 'admin', '2021-04-20 14:41:36', '');
INSERT INTO `sys_menu` VALUES (2013, '编辑', 2008, 3, '', NULL, 1, 0, 'F', '0', '0', 'building:building:edit', '#', 'admin', '2021-04-20 14:37:49', 'admin', '2021-04-20 14:41:44', '');
INSERT INTO `sys_menu` VALUES (2014, '删除', 2008, 4, '', NULL, 1, 0, 'F', '0', '0', 'building:building:remove', '#', 'admin', '2021-04-20 14:38:03', 'admin', '2021-04-20 14:41:53', '');
INSERT INTO `sys_menu` VALUES (2015, '查询', 2009, 1, '', NULL, 1, 0, 'F', '0', '0', 'room:room:query', '#', 'admin', '2021-04-20 14:39:03', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2016, '新增', 2009, 2, '', NULL, 1, 0, 'F', '0', '0', 'room:room:add', '#', 'admin', '2021-04-20 14:39:17', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2017, '编辑', 2009, 3, '', NULL, 1, 0, 'F', '0', '0', 'room:room:edit', '#', 'admin', '2021-04-20 14:39:37', 'admin', '2021-04-20 14:40:03', '');
INSERT INTO `sys_menu` VALUES (2018, '删除', 2009, 4, '', NULL, 1, 0, 'F', '0', '0', 'room:room:remove', '#', 'admin', '2021-04-20 14:40:18', 'admin', '2021-04-20 14:40:27', '');
INSERT INTO `sys_menu` VALUES (2019, '查询', 2010, 1, '', NULL, 1, 0, 'F', '0', '0', 'stuRoomInfo:info:query', '#', 'admin', '2021-04-20 14:42:30', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2020, '新增', 2010, 2, '', NULL, 1, 0, 'F', '0', '0', 'stuRoomInfo:info:add', '#', 'admin', '2021-04-20 14:42:45', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2021, '编辑', 2010, 3, '', NULL, 1, 0, 'F', '0', '0', 'stuRoomInfo:info:edit', '#', 'admin', '2021-04-20 14:43:00', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2022, '删除', 2010, 4, '', NULL, 1, 0, 'F', '0', '0', 'stuRoomInfo:info:remove', '#', 'admin', '2021-04-20 14:43:21', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2023, '查询', 2002, 1, '', NULL, 1, 0, 'F', '0', '0', 'classInfo:classInfo:query', '#', 'admin', '2021-04-20 14:54:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2024, '新增', 2002, 2, '', NULL, 1, 0, 'F', '0', '0', 'classInfo:classInfo:add', '#', 'admin', '2021-04-20 14:55:13', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2027, '编辑', 2002, 3, '', NULL, 1, 0, 'F', '0', '0', 'classInfo:classInfo:edit', '#', 'admin', '2021-04-20 14:56:22', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2028, '删除', 2002, 4, '', NULL, 1, 0, 'F', '0', '0', 'classInfo:classInfo:remove', '#', 'admin', '2021-04-20 14:56:35', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2021-01-27 14:12:35', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2021-01-27 14:12:35', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int(1) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 229 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1611727946000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"common\",\"roleName\":\"学生\",\"menuIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-27 14:30:25');
INSERT INTO `sys_oper_log` VALUES (101, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":100,\"admin\":false,\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":true,\"createBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"teach\",\"roleName\":\"老师\",\"deptIds\":[],\"menuIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-27 14:30:50');
INSERT INTO `sys_oper_log` VALUES (102, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"郑州科技学院\",\"leader\":\"张西亚\",\"deptId\":100,\"orderNum\":\"0\",\"delFlag\":\"0\",\"params\":{},\"parentId\":0,\"createBy\":\"admin\",\"children\":[],\"createTime\":1611727945000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0\",\"email\":\"xiya@163.com\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-27 14:31:41');
INSERT INTO `sys_oper_log` VALUES (103, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"院系\",\"leader\":\"张三\",\"deptId\":101,\"orderNum\":\"1\",\"delFlag\":\"0\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"createTime\":1611727945000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0,100\",\"email\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-27 14:32:20');
INSERT INTO `sys_oper_log` VALUES (104, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/102', '127.0.0.1', '内网IP', '{deptId=102}', '{\"msg\":\"存在下级部门,不允许删除\",\"code\":500}', 0, NULL, '2021-01-27 14:32:25');
INSERT INTO `sys_oper_log` VALUES (105, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/109', '127.0.0.1', '内网IP', '{deptId=109}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-27 14:32:29');
INSERT INTO `sys_oper_log` VALUES (106, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/108', '127.0.0.1', '内网IP', '{deptId=108}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-27 14:32:31');
INSERT INTO `sys_oper_log` VALUES (107, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/102', '127.0.0.1', '内网IP', '{deptId=102}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-27 14:32:34');
INSERT INTO `sys_oper_log` VALUES (108, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"土木工程\",\"leader\":\"土木\",\"deptId\":103,\"orderNum\":\"1\",\"delFlag\":\"0\",\"params\":{},\"parentId\":101,\"createBy\":\"admin\",\"children\":[],\"createTime\":1611727945000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0,100,101\",\"email\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-27 14:33:03');
INSERT INTO `sys_oper_log` VALUES (109, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"信息工程\",\"leader\":\"信息\",\"deptId\":104,\"orderNum\":\"2\",\"delFlag\":\"0\",\"params\":{},\"parentId\":101,\"createBy\":\"admin\",\"children\":[],\"createTime\":1611727945000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0,100,101\",\"email\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-27 14:33:27');
INSERT INTO `sys_oper_log` VALUES (110, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"机械工程\",\"leader\":\"机械\",\"deptId\":105,\"orderNum\":\"3\",\"delFlag\":\"0\",\"params\":{},\"parentId\":101,\"createBy\":\"admin\",\"children\":[],\"createTime\":1611727945000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0,100,101\",\"email\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-27 14:34:01');
INSERT INTO `sys_oper_log` VALUES (111, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"艺术学院\",\"leader\":\"\",\"deptId\":106,\"orderNum\":\"4\",\"delFlag\":\"0\",\"params\":{},\"parentId\":101,\"createBy\":\"admin\",\"children\":[],\"createTime\":1611727945000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0,100,101\",\"email\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-27 14:34:20');
INSERT INTO `sys_oper_log` VALUES (112, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"电气学院\",\"leader\":\"\",\"deptId\":107,\"orderNum\":\"5\",\"delFlag\":\"0\",\"params\":{},\"parentId\":101,\"createBy\":\"admin\",\"children\":[],\"createTime\":1611727945000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0,100,101\",\"email\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-27 14:34:35');
INSERT INTO `sys_oper_log` VALUES (113, '部门管理', 1, 'com.ruoyi.web.controller.system.SysDeptController.add()', 'POST', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"交通学院\",\"leader\":\"交通\",\"orderNum\":\"6\",\"params\":{},\"parentId\":101,\"createBy\":\"admin\",\"children\":[],\"ancestors\":\"0,100,101\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-27 14:35:08');
INSERT INTO `sys_oper_log` VALUES (114, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/4', '127.0.0.1', '内网IP', '{menuId=4}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-27 14:37:53');
INSERT INTO `sys_oper_log` VALUES (115, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"post\",\"orderNum\":\"5\",\"menuName\":\"班级管理\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"post\",\"component\":\"system/post/index\",\"children\":[],\"createTime\":1611727947000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":104,\"menuType\":\"C\",\"perms\":\"system:post:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-27 18:16:28');
INSERT INTO `sys_oper_log` VALUES (116, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"tree\",\"orderNum\":\"4\",\"menuName\":\"院系管理\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"dept\",\"component\":\"system/dept/index\",\"children\":[],\"createTime\":1611727947000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":103,\"menuType\":\"C\",\"perms\":\"system:dept:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-27 18:31:50');
INSERT INTO `sys_oper_log` VALUES (117, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/107', '127.0.0.1', '内网IP', '{menuId=107}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":500}', 0, NULL, '2021-01-27 18:32:27');
INSERT INTO `sys_oper_log` VALUES (118, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/1036', '127.0.0.1', '内网IP', '{menuId=1036}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-27 18:32:59');
INSERT INTO `sys_oper_log` VALUES (119, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/1037', '127.0.0.1', '内网IP', '{menuId=1037}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-27 18:33:01');
INSERT INTO `sys_oper_log` VALUES (120, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/1038', '127.0.0.1', '内网IP', '{menuId=1038}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-27 18:33:03');
INSERT INTO `sys_oper_log` VALUES (121, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/1039', '127.0.0.1', '内网IP', '{menuId=1039}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-27 18:33:06');
INSERT INTO `sys_oper_log` VALUES (122, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/107', '127.0.0.1', '内网IP', '{menuId=107}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-27 18:33:09');
INSERT INTO `sys_oper_log` VALUES (123, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"0\",\"listClass\":\"primary\",\"dictSort\":1,\"remark\":\"正常状态\",\"params\":{},\"dictType\":\"sys_normal_disable\",\"dictLabel\":\"已报到\",\"createBy\":\"admin\",\"default\":true,\"isDefault\":\"Y\",\"cssClass\":\"\",\"createTime\":1611727952000,\"dictCode\":6,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-27 18:41:05');
INSERT INTO `sys_oper_log` VALUES (124, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"1\",\"listClass\":\"danger\",\"dictSort\":2,\"remark\":\"停用状态\",\"params\":{},\"dictType\":\"sys_normal_disable\",\"dictLabel\":\"未报到\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"cssClass\":\"\",\"createTime\":1611727952000,\"dictCode\":7,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-27 18:41:12');
INSERT INTO `sys_oper_log` VALUES (125, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"0\",\"listClass\":\"primary\",\"dictSort\":1,\"remark\":\"正常状态\",\"params\":{},\"dictType\":\"sys_normal_disable\",\"dictLabel\":\"有效\",\"createBy\":\"admin\",\"default\":true,\"isDefault\":\"Y\",\"cssClass\":\"\",\"createTime\":1611727952000,\"dictCode\":6,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 07:59:54');
INSERT INTO `sys_oper_log` VALUES (126, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"1\",\"listClass\":\"danger\",\"dictSort\":2,\"remark\":\"停用状态\",\"params\":{},\"dictType\":\"sys_normal_disable\",\"dictLabel\":\"无效\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"cssClass\":\"\",\"createTime\":1611727952000,\"dictCode\":7,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 08:00:05');
INSERT INTO `sys_oper_log` VALUES (127, '字典类型', 1, 'com.ruoyi.web.controller.system.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"学生状态\",\"params\":{},\"dictType\":\"stu_status\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 08:01:03');
INSERT INTO `sys_oper_log` VALUES (128, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"0\",\"dictSort\":0,\"params\":{},\"dictType\":\"stu_status\",\"dictLabel\":\"已报到\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 08:01:29');
INSERT INTO `sys_oper_log` VALUES (129, '字典数据', 1, 'com.ruoyi.web.controller.system.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"1\",\"dictSort\":0,\"params\":{},\"dictType\":\"stu_status\",\"dictLabel\":\"未报到\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 08:01:37');
INSERT INTO `sys_oper_log` VALUES (130, '字典数据', 2, 'com.ruoyi.web.controller.system.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"1\",\"dictSort\":1,\"params\":{},\"dictType\":\"stu_status\",\"dictLabel\":\"未报到\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1611792097000,\"dictCode\":101,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 08:01:42');
INSERT INTO `sys_oper_log` VALUES (131, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":100,\"admin\":false,\"dataScope\":\"4\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":true,\"createTime\":1611729049000,\"menuCheckStrictly\":true,\"roleKey\":\"teach\",\"roleName\":\"老师\",\"deptIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 08:05:20');
INSERT INTO `sys_oper_log` VALUES (132, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"3\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1611727946000,\"menuCheckStrictly\":true,\"roleKey\":\"common\",\"roleName\":\"学生\",\"deptIds\":[100,101,105],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 08:05:41');
INSERT INTO `sys_oper_log` VALUES (133, '岗位管理', 2, 'com.ruoyi.web.controller.system.SysPostController.edit()', 'PUT', 1, 'admin', NULL, '/system/post', '127.0.0.1', '内网IP', '{\"postSort\":\"1\",\"flag\":false,\"remark\":\"\",\"postId\":1,\"params\":{},\"createBy\":\"admin\",\"createTime\":1611727946000,\"updateBy\":\"admin\",\"postName\":\"计科01\",\"postCode\":\"JK01\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 08:07:28');
INSERT INTO `sys_oper_log` VALUES (134, '岗位管理', 2, 'com.ruoyi.web.controller.system.SysPostController.edit()', 'PUT', 1, 'admin', NULL, '/system/post', '127.0.0.1', '内网IP', '{\"postSort\":\"2\",\"flag\":false,\"remark\":\"\",\"postId\":2,\"params\":{},\"createBy\":\"admin\",\"createTime\":1611727946000,\"updateBy\":\"admin\",\"postName\":\"计科2班\",\"postCode\":\"JK02\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 08:07:49');
INSERT INTO `sys_oper_log` VALUES (135, '岗位管理', 2, 'com.ruoyi.web.controller.system.SysPostController.edit()', 'PUT', 1, 'admin', NULL, '/system/post', '127.0.0.1', '内网IP', '{\"postSort\":\"2\",\"flag\":false,\"remark\":\"\",\"postId\":2,\"params\":{},\"createBy\":\"admin\",\"createTime\":1611727946000,\"updateBy\":\"admin\",\"postName\":\"计科2班\",\"postCode\":\"JK02\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 08:07:49');
INSERT INTO `sys_oper_log` VALUES (136, '岗位管理', 2, 'com.ruoyi.web.controller.system.SysPostController.edit()', 'PUT', 1, 'admin', NULL, '/system/post', '127.0.0.1', '内网IP', '{\"postSort\":\"1\",\"flag\":false,\"remark\":\"\",\"postId\":1,\"params\":{},\"createBy\":\"admin\",\"createTime\":1611727946000,\"updateBy\":\"admin\",\"postName\":\"计科1班\",\"postCode\":\"JK01\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 08:07:58');
INSERT INTO `sys_oper_log` VALUES (137, '岗位管理', 2, 'com.ruoyi.web.controller.system.SysPostController.edit()', 'PUT', 1, 'admin', NULL, '/system/post', '127.0.0.1', '内网IP', '{\"postSort\":\"3\",\"flag\":false,\"remark\":\"\",\"postId\":3,\"params\":{},\"createBy\":\"admin\",\"createTime\":1611727946000,\"updateBy\":\"admin\",\"postName\":\"计嵌1班\",\"postCode\":\"JQ01\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 08:08:28');
INSERT INTO `sys_oper_log` VALUES (138, '岗位管理', 2, 'com.ruoyi.web.controller.system.SysPostController.edit()', 'PUT', 1, 'admin', NULL, '/system/post', '127.0.0.1', '内网IP', '{\"postSort\":\"4\",\"flag\":false,\"remark\":\"\",\"postId\":4,\"params\":{},\"createBy\":\"admin\",\"createTime\":1611727946000,\"updateBy\":\"admin\",\"postName\":\"计嵌2班\",\"postCode\":\"JQ02\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 08:09:10');
INSERT INTO `sys_oper_log` VALUES (139, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"土木工程\",\"leader\":\"土木\",\"deptId\":103,\"orderNum\":\"1\",\"delFlag\":\"0\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"createTime\":1611727945000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0,100\",\"email\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 08:13:40');
INSERT INTO `sys_oper_log` VALUES (140, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"土木工程\",\"leader\":\"土木\",\"deptId\":103,\"orderNum\":\"1\",\"delFlag\":\"0\",\"params\":{},\"parentId\":101,\"createBy\":\"admin\",\"children\":[],\"createTime\":1611727945000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0,100,101\",\"email\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 08:13:50');
INSERT INTO `sys_oper_log` VALUES (141, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"3\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1611727946000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"student\",\"roleName\":\"学生\",\"menuIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 08:14:35');
INSERT INTO `sys_oper_log` VALUES (142, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"peoples\",\"orderNum\":\"2\",\"menuName\":\"学生信息\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"/student\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 08:16:52');
INSERT INTO `sys_oper_log` VALUES (143, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"people\",\"orderNum\":\"0\",\"menuName\":\"录取学生信息\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"/student/admission\",\"component\":\"/student/admission/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 08:18:57');
INSERT INTO `sys_oper_log` VALUES (144, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"user\",\"orderNum\":\"1\",\"menuName\":\"班级信息\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"student/class\",\"component\":\"student/class/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 08:19:41');
INSERT INTO `sys_oper_log` VALUES (145, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"peoples\",\"orderNum\":\"2\",\"menuName\":\"院系信息\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"student/ faculty\",\"component\":\"student/ faculty/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 08:21:05');
INSERT INTO `sys_oper_log` VALUES (146, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"user\",\"orderNum\":\"1\",\"menuName\":\"班级信息\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"/student/class\",\"component\":\"/student/class/index\",\"children\":[],\"createTime\":1611793181000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2002,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 08:21:13');
INSERT INTO `sys_oper_log` VALUES (147, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"peoples\",\"orderNum\":\"2\",\"menuName\":\"院系信息\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"/student/ faculty\",\"component\":\"/student/ faculty/index\",\"children\":[],\"createTime\":1611793265000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2003,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 08:21:20');
INSERT INTO `sys_oper_log` VALUES (148, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"3\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1611727946000,\"menuCheckStrictly\":true,\"roleKey\":\"student\",\"roleName\":\"学生\",\"deptIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 08:22:12');
INSERT INTO `sys_oper_log` VALUES (149, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":100,\"admin\":false,\"dataScope\":\"4\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":true,\"createTime\":1611729049000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"teach\",\"roleName\":\"老师\",\"menuIds\":[2000,2002,2003],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 08:22:33');
INSERT INTO `sys_oper_log` VALUES (150, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"3\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1611727946000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"student\",\"roleName\":\"学生\",\"menuIds\":[2000,2002],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 08:22:41');
INSERT INTO `sys_oper_log` VALUES (151, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"13666666666\",\"admin\":false,\"password\":\"$2a$10$qYgJMK/6ucDkhORnkV4/YOnR7gYXnCDUy0Jg.iIi0iOsbA9gnrng6\",\"postIds\":[],\"email\":\"\",\"nickName\":\"许三多\",\"sex\":\"0\",\"deptId\":104,\"params\":{},\"userName\":\"xusanduo\",\"userId\":100,\"createBy\":\"admin\",\"roleIds\":[100],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 08:31:22');
INSERT INTO `sys_oper_log` VALUES (152, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":100,\"admin\":false,\"dataScope\":\"4\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"teach\",\"roleName\":\"老师\",\"status\":\"0\"}],\"phonenumber\":\"13666666666\",\"admin\":false,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[1,3],\"loginIp\":\"\",\"email\":\"\",\"nickName\":\"许三多\",\"sex\":\"0\",\"deptId\":104,\"avatar\":\"\",\"dept\":{\"deptName\":\"信息工程\",\"leader\":\"信息\",\"deptId\":104,\"orderNum\":\"2\",\"params\":{},\"parentId\":101,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"xusanduo\",\"userId\":100,\"createBy\":\"admin\",\"roleIds\":[100],\"createTime\":1611793882000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 08:32:17');
INSERT INTO `sys_oper_log` VALUES (153, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"土木工程\",\"leader\":\"土木\",\"deptId\":103,\"orderNum\":\"1\",\"delFlag\":\"0\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"createTime\":1611727945000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0,100\",\"email\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 10:46:09');
INSERT INTO `sys_oper_log` VALUES (154, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"信息工程\",\"leader\":\"信息\",\"deptId\":104,\"orderNum\":\"2\",\"delFlag\":\"0\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"createTime\":1611727945000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0,100\",\"email\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 10:46:16');
INSERT INTO `sys_oper_log` VALUES (155, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"机械工程\",\"leader\":\"机械\",\"deptId\":105,\"orderNum\":\"3\",\"delFlag\":\"0\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"createTime\":1611727945000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0,100\",\"email\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 10:46:21');
INSERT INTO `sys_oper_log` VALUES (156, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"艺术学院\",\"leader\":\"\",\"deptId\":106,\"orderNum\":\"4\",\"delFlag\":\"0\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"createTime\":1611727945000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0,100\",\"email\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 10:46:26');
INSERT INTO `sys_oper_log` VALUES (157, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"电气学院\",\"leader\":\"\",\"deptId\":107,\"orderNum\":\"5\",\"delFlag\":\"0\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"createTime\":1611727945000,\"phone\":\"15888888888\",\"updateBy\":\"admin\",\"ancestors\":\"0,100\",\"email\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 10:46:31');
INSERT INTO `sys_oper_log` VALUES (158, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.edit()', 'PUT', 1, 'admin', NULL, '/system/dept', '127.0.0.1', '内网IP', '{\"deptName\":\"交通学院\",\"leader\":\"交通\",\"deptId\":200,\"orderNum\":\"6\",\"delFlag\":\"0\",\"params\":{},\"parentId\":100,\"createBy\":\"admin\",\"children\":[],\"createTime\":1611729307000,\"updateBy\":\"admin\",\"ancestors\":\"0,100\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 10:46:35');
INSERT INTO `sys_oper_log` VALUES (159, '部门管理', 3, 'com.ruoyi.web.controller.system.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/101', '127.0.0.1', '内网IP', '{deptId=101}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 10:46:38');
INSERT INTO `sys_oper_log` VALUES (160, '岗位管理', 2, 'com.ruoyi.web.controller.system.SysPostController.edit()', 'PUT', 1, 'admin', NULL, '/system/post', '127.0.0.1', '内网IP', '{\"postSort\":\"1\",\"flag\":false,\"remark\":\"\",\"postId\":1,\"params\":{},\"createBy\":\"admin\",\"createTime\":1611727946000,\"updateBy\":\"admin\",\"postName\":\"计算机科学与技术\",\"postCode\":\"JSKX\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 10:49:01');
INSERT INTO `sys_oper_log` VALUES (161, '岗位管理', 2, 'com.ruoyi.web.controller.system.SysPostController.edit()', 'PUT', 1, 'admin', NULL, '/system/post', '127.0.0.1', '内网IP', '{\"postSort\":\"2\",\"flag\":false,\"remark\":\"\",\"postId\":2,\"params\":{},\"createBy\":\"admin\",\"createTime\":1611727946000,\"updateBy\":\"admin\",\"postName\":\"JAVA开发\",\"postCode\":\"JAVAKF\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 10:49:21');
INSERT INTO `sys_oper_log` VALUES (162, '岗位管理', 2, 'com.ruoyi.web.controller.system.SysPostController.edit()', 'PUT', 1, 'admin', NULL, '/system/post', '127.0.0.1', '内网IP', '{\"postSort\":\"3\",\"flag\":false,\"remark\":\"\",\"postId\":3,\"params\":{},\"createBy\":\"admin\",\"createTime\":1611727946000,\"updateBy\":\"admin\",\"postName\":\"交通工程\",\"postCode\":\"JTGC\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 10:49:56');
INSERT INTO `sys_oper_log` VALUES (163, '岗位管理', 2, 'com.ruoyi.web.controller.system.SysPostController.edit()', 'PUT', 1, 'admin', NULL, '/system/post', '127.0.0.1', '内网IP', '{\"postSort\":\"4\",\"flag\":false,\"remark\":\"\",\"postId\":4,\"params\":{},\"createBy\":\"admin\",\"createTime\":1611727946000,\"updateBy\":\"admin\",\"postName\":\"机械电子工程\",\"postCode\":\"JXDZ\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 10:50:26');
INSERT INTO `sys_oper_log` VALUES (164, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"post\",\"orderNum\":\"5\",\"menuName\":\"专业管理\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"post\",\"component\":\"system/post/index\",\"children\":[],\"createTime\":1611727947000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":104,\"menuType\":\"C\",\"perms\":\"system:post:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 10:50:50');
INSERT INTO `sys_oper_log` VALUES (165, '岗位管理', 1, 'com.ruoyi.web.controller.system.SysPostController.add()', 'POST', 1, 'admin', NULL, '/system/post', '127.0.0.1', '内网IP', '{\"postSort\":\"5\",\"flag\":false,\"postId\":5,\"params\":{},\"createBy\":\"admin\",\"postName\":\"电气工程\",\"postCode\":\"DQGC\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 10:56:36');
INSERT INTO `sys_oper_log` VALUES (166, '岗位管理', 1, 'com.ruoyi.web.controller.system.SysPostController.add()', 'POST', 1, 'admin', NULL, '/system/post', '127.0.0.1', '内网IP', '{\"postSort\":\"6\",\"flag\":false,\"postId\":6,\"params\":{},\"createBy\":\"admin\",\"postName\":\"艺术设计\",\"postCode\":\"YSSJ\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 10:57:03');
INSERT INTO `sys_oper_log` VALUES (167, '岗位管理', 1, 'com.ruoyi.web.controller.system.SysPostController.add()', 'POST', 1, 'admin', NULL, '/system/post', '127.0.0.1', '内网IP', '{\"postSort\":\"7\",\"flag\":false,\"params\":{},\"postName\":\"道路桥梁工程\",\"postCode\":\"DQGC\",\"status\":\"0\"}', '{\"msg\":\"新增岗位\'道路桥梁工程\'失败，岗位编码已存在\",\"code\":500}', 0, NULL, '2021-01-28 10:57:48');
INSERT INTO `sys_oper_log` VALUES (168, '岗位管理', 1, 'com.ruoyi.web.controller.system.SysPostController.add()', 'POST', 1, 'admin', NULL, '/system/post', '127.0.0.1', '内网IP', '{\"postSort\":\"7\",\"flag\":false,\"postId\":7,\"params\":{},\"createBy\":\"admin\",\"postName\":\"道路桥梁工程\",\"postCode\":\"DLQLGC\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 10:58:01');
INSERT INTO `sys_oper_log` VALUES (169, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'stuent_info', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 11:16:05');
INSERT INTO `sys_oper_log` VALUES (170, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', NULL, '/tool/gen/synchDb/stuent_info', '127.0.0.1', '内网IP', '{tableName=stuent_info}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 11:38:51');
INSERT INTO `sys_oper_log` VALUES (171, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"西亚\",\"columns\":[{\"capJavaField\":\"StuId\",\"usableColumn\":false,\"columnId\":1,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"stuId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"学号\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1611803765000,\"tableId\":1,\"pk\":true,\"columnName\":\"stu_id\"},{\"capJavaField\":\"StuName\",\"usableColumn\":false,\"columnId\":2,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"stuName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"学生姓名\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1611803765000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"stu_name\"},{\"capJavaField\":\"StuSex\",\"usableColumn\":false,\"columnId\":3,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"stuSex\",\"htmlType\":\"select\",\"edit\":true,\"query\":true,\"columnComment\":\"1男性0女性\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"int(1)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1611803765000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"stu_sex\"},{\"capJavaField\":\"StuAge\",\"usableColumn\":false,\"columnId\":4,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"stuAge\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"年龄\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"int(', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 11:41:09');
INSERT INTO `sys_oper_log` VALUES (172, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2021-01-28 11:41:12');
INSERT INTO `sys_oper_log` VALUES (173, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', NULL, '/tool/gen/synchDb/stuent_info', '127.0.0.1', '内网IP', '{tableName=stuent_info}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 14:34:22');
INSERT INTO `sys_oper_log` VALUES (174, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"西亚\",\"columns\":[{\"capJavaField\":\"StuId\",\"usableColumn\":false,\"columnId\":1,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"stuId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"学号\",\"updateTime\":1611805268000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1611803765000,\"tableId\":1,\"pk\":true,\"columnName\":\"stu_id\"},{\"capJavaField\":\"StuName\",\"usableColumn\":false,\"columnId\":2,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"stuName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"学生姓名\",\"isQuery\":\"1\",\"updateTime\":1611805268000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(32)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1611803765000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"stu_name\"},{\"capJavaField\":\"StuSex\",\"usableColumn\":false,\"columnId\":3,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"stuSex\",\"htmlType\":\"select\",\"edit\":true,\"query\":true,\"columnComment\":\"1男性0女性\",\"isQuery\":\"1\",\"updateTime\":1611805268000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"int(1)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1611803765000,\"isEdit\":\"1\",\"tableId\":1,\"pk\":false,\"columnName\":\"stu_sex\"},{\"capJavaField\":\"StuAge\",\"usableColumn\":false,\"columnId\":4,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"stuAge\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"年龄\",\"isQuery\":\"1\",\"updateT', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 14:34:51');
INSERT INTO `sys_oper_log` VALUES (175, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2021-01-28 14:34:54');
INSERT INTO `sys_oper_log` VALUES (176, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"people\",\"orderNum\":\"0\",\"menuName\":\"录取学生信息\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"/student/admission\",\"component\":\"/student/index\",\"children\":[],\"createTime\":1611793137000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2001,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 14:45:43');
INSERT INTO `sys_oper_log` VALUES (177, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2002', '127.0.0.1', '内网IP', '{menuId=2002}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":500}', 0, NULL, '2021-01-28 14:46:05');
INSERT INTO `sys_oper_log` VALUES (178, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2002', '127.0.0.1', '内网IP', '{menuId=2002}', '{\"msg\":\"菜单已分配,不允许删除\",\"code\":500}', 0, NULL, '2021-01-28 14:46:14');
INSERT INTO `sys_oper_log` VALUES (179, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"3\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1611727946000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"student\",\"roleName\":\"学生\",\"menuIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 14:46:36');
INSERT INTO `sys_oper_log` VALUES (180, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":100,\"admin\":false,\"dataScope\":\"4\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":true,\"createTime\":1611729049000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"teach\",\"roleName\":\"老师\",\"menuIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 14:46:42');
INSERT INTO `sys_oper_log` VALUES (181, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"peoples\",\"orderNum\":\"2\",\"menuName\":\"学生信息\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"student\",\"children\":[],\"createTime\":1611793012000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2000,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 14:50:13');
INSERT INTO `sys_oper_log` VALUES (182, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"people\",\"orderNum\":\"0\",\"menuName\":\"录取学生信息\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"/student/index\",\"component\":\"/student/index\",\"children\":[],\"createTime\":1611793137000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2001,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 14:50:41');
INSERT INTO `sys_oper_log` VALUES (183, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"people\",\"orderNum\":\"0\",\"menuName\":\"录取学生信息\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"/student/index\",\"component\":\"student/index\",\"children\":[],\"createTime\":1611793137000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2001,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 14:51:08');
INSERT INTO `sys_oper_log` VALUES (184, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"people\",\"orderNum\":\"0\",\"menuName\":\"录取学生信息\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"student\",\"component\":\"/student/index\",\"children\":[],\"createTime\":1611793137000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2001,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 14:52:04');
INSERT INTO `sys_oper_log` VALUES (185, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"peoples\",\"orderNum\":\"2\",\"menuName\":\"学生信息\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"info\",\"children\":[],\"createTime\":1611793012000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2000,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 14:52:59');
INSERT INTO `sys_oper_log` VALUES (186, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"people\",\"orderNum\":\"0\",\"menuName\":\"录取学生信息\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"student\",\"component\":\"student/index\",\"children\":[],\"createTime\":1611793137000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2001,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 14:53:28');
INSERT INTO `sys_oper_log` VALUES (187, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"people\",\"orderNum\":\"0\",\"menuName\":\"录取学生信息\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"student\",\"component\":\"info/student/index\",\"children\":[],\"createTime\":1611793137000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2001,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 14:56:05');
INSERT INTO `sys_oper_log` VALUES (188, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"people\",\"orderNum\":\"0\",\"menuName\":\"录取学生信息\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"student\",\"component\":\"/info/student/index\",\"children\":[],\"createTime\":1611793137000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2001,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 15:02:30');
INSERT INTO `sys_oper_log` VALUES (189, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"people\",\"orderNum\":\"0\",\"menuName\":\"录取学生信息\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"student\",\"component\":\"info/student/index\",\"children\":[],\"createTime\":1611793137000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2001,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 15:02:54');
INSERT INTO `sys_oper_log` VALUES (190, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"people\",\"orderNum\":\"0\",\"menuName\":\"录取学生信息\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"student\",\"component\":\"info/student/index\",\"children\":[],\"createTime\":1611793137000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2001,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 15:04:32');
INSERT INTO `sys_oper_log` VALUES (191, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"people\",\"orderNum\":\"0\",\"menuName\":\"录取学生信息\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"student\",\"component\":\"info/student/index\",\"children\":[],\"createTime\":1611793137000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2001,\"menuType\":\"C\",\"perms\":\"student:info:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 15:53:21');
INSERT INTO `sys_oper_log` VALUES (192, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"people\",\"orderNum\":\"0\",\"menuName\":\"录取学生信息\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"student\",\"component\":\"info/student/index\",\"children\":[],\"createTime\":1611793137000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2001,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 15:53:55');
INSERT INTO `sys_oper_log` VALUES (193, 'studentInfo', 1, 'com.ruoyi.student.controller.StuentInfoController.add()', 'POST', 1, 'admin', NULL, '/student/info', '127.0.0.1', '内网IP', '{\"params\":{},\"stuStatus\":0,\"stuPoliticalStatus\":\"0\"}', 'null', 1, 'For input string: \"522627200111230638-20020\"', '2021-01-28 18:18:12');
INSERT INTO `sys_oper_log` VALUES (194, 'studentInfo', 1, 'com.ruoyi.student.controller.StuentInfoController.add()', 'POST', 1, 'admin', NULL, '/student/info', '127.0.0.1', '内网IP', '{\"params\":{},\"stuStatus\":0,\"stuPoliticalStatus\":\"0\"}', 'null', 1, 'For input string: \"410182200003310219-20000\"', '2021-01-28 18:19:35');
INSERT INTO `sys_oper_log` VALUES (195, 'studentInfo', 1, 'com.ruoyi.student.controller.StuentInfoController.add()', 'POST', 1, 'admin', NULL, '/student/info', '127.0.0.1', '内网IP', '{\"params\":{},\"stuStatus\":0,\"stuPoliticalStatus\":\"0\"}', 'null', 1, 'For input string: \"130182200210299326-20030\"', '2021-01-28 18:20:12');
INSERT INTO `sys_oper_log` VALUES (196, 'studentInfo', 1, 'com.ruoyi.student.controller.StuentInfoController.add()', 'POST', 1, 'admin', NULL, '/student/info', '127.0.0.1', '内网IP', '{\"params\":{},\"stuStatus\":0,\"stuPoliticalStatus\":\"0\"}', 'null', 1, 'For input string: \"33052320000413575X\"', '2021-01-28 18:21:17');
INSERT INTO `sys_oper_log` VALUES (197, 'studentInfo', 1, 'com.ruoyi.student.controller.StuentInfoController.add()', 'POST', 1, 'admin', NULL, '/student/info', '127.0.0.1', '内网IP', '{\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 18:34:36');
INSERT INTO `sys_oper_log` VALUES (198, 'studentInfo', 1, 'com.ruoyi.student.controller.StuentInfoController.add()', 'POST', 1, 'admin', NULL, '/student/info', '127.0.0.1', '内网IP', '{\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 18:49:13');
INSERT INTO `sys_oper_log` VALUES (199, 'studentInfo', 1, 'com.ruoyi.student.controller.StuentInfoController.add()', 'POST', 1, 'admin', NULL, '/student/info', '127.0.0.1', '内网IP', '{\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-28 18:56:26');
INSERT INTO `sys_oper_log` VALUES (200, 'studentInfo', 1, 'com.ruoyi.student.controller.StuentInfoController.add()', 'POST', 1, 'admin', NULL, '/student/info', '127.0.0.1', '内网IP', '{\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-29 16:03:28');
INSERT INTO `sys_oper_log` VALUES (201, 'studentInfo', 1, 'com.ruoyi.student.controller.StuentInfoController.add()', 'POST', 1, 'admin', NULL, '/student/info', '127.0.0.1', '内网IP', '{\"params\":{}}', 'null', 1, 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'stu_email\' in \'class com.ruoyi.student.domain.StuentInfo\'', '2021-01-29 16:17:18');
INSERT INTO `sys_oper_log` VALUES (202, 'studentInfo', 1, 'com.ruoyi.student.controller.StuentInfoController.add()', 'POST', 1, 'admin', NULL, '/student/info', '127.0.0.1', '内网IP', '{\"params\":{}}', 'null', 1, 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'stu_email\' in \'class com.ruoyi.student.domain.StuentInfo\'', '2021-01-29 16:22:54');
INSERT INTO `sys_oper_log` VALUES (203, 'studentInfo', 1, 'com.ruoyi.student.controller.StuentInfoController.add()', 'POST', 1, 'admin', NULL, '/student/info', '127.0.0.1', '内网IP', '{\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-29 16:26:31');
INSERT INTO `sys_oper_log` VALUES (204, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/system/user/2', '127.0.0.1', '内网IP', '{userIds=2}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-29 16:39:03');
INSERT INTO `sys_oper_log` VALUES (205, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"18861257779\",\"admin\":false,\"password\":\"$2a$10$odThOkl2cBmbELv/dXClDe90sVRTsDJ9.yOhR6EYlS7H9007Bduai\",\"nickName\":\"端木雷波\",\"sex\":\"1\",\"deptId\":103,\"params\":{},\"userName\":\"103202101290057\",\"userId\":101,\"createBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-29 17:11:17');
INSERT INTO `sys_oper_log` VALUES (206, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"18861257779\",\"admin\":false,\"password\":\"123456\",\"postIds\":[7],\"email\":\"ic0dpenlap@googlemail.com\",\"nickName\":\"端木雷波\",\"sex\":\"1\",\"deptId\":103,\"params\":{},\"userName\":\"103202101290057\",\"roleIds\":[2],\"status\":\"0\"}', '{\"msg\":\"新增用户\'103202101290057\'失败，登录账号已存在\",\"code\":500}', 0, NULL, '2021-01-29 17:23:39');
INSERT INTO `sys_oper_log` VALUES (207, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"13903329936\",\"admin\":false,\"password\":\"$2a$10$dn/cyQyHoJ522Tm00781VObvWsIsfUTLwRintcwWUDO5Fq5KZuNBq\",\"postIds\":[7],\"email\":\"gpdliknpyskpy@live.com\",\"nickName\":\"赵敏英\",\"sex\":\"0\",\"deptId\":103,\"params\":{},\"userName\":\"103202101290055\",\"userId\":102,\"createBy\":\"admin\",\"roleIds\":[2],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-29 17:23:50');
INSERT INTO `sys_oper_log` VALUES (208, '用户管理', 3, 'com.ruoyi.web.controller.system.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/system/user/102', '127.0.0.1', '内网IP', '{userIds=102}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-29 17:24:53');
INSERT INTO `sys_oper_log` VALUES (209, 'studentInfo', 1, 'com.ruoyi.student.controller.StuentInfoController.add()', 'POST', 1, 'admin', NULL, '/student/info', '127.0.0.1', '内网IP', '{\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-01-30 14:44:51');
INSERT INTO `sys_oper_log` VALUES (210, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"13535353253\",\"admin\":false,\"password\":\"$2a$10$YAbDQRfkLXcFUL00pUxumuLb1GU/etob9dn5qyamOoZnEVLvSiWUO\",\"postIds\":[3],\"email\":\"6546@qq.com\",\"nickName\":\"江令阳\",\"sex\":\"1\",\"deptId\":200,\"params\":{},\"userName\":\"H2015753\",\"userId\":103,\"createBy\":\"admin\",\"roleIds\":[2],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-02 08:27:43');
INSERT INTO `sys_oper_log` VALUES (211, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[],\"phonenumber\":\"15666666666\",\"admin\":false,\"loginDate\":1611727945000,\"remark\":\"测试员\",\"delFlag\":\"0\",\"password\":\"123456\",\"updateBy\":\"admin\",\"postIds\":[1],\"loginIp\":\"127.0.0.1\",\"email\":\"ry@qq.com\",\"nickName\":\"李四\",\"sex\":\"1\",\"deptId\":105,\"avatar\":\"\",\"dept\":{\"deptName\":\"机械工程\",\"leader\":\"机械\",\"deptId\":105,\"orderNum\":\"3\",\"params\":{},\"parentId\":100,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"ry\",\"userId\":2,\"createBy\":\"admin\",\"roleIds\":[2],\"createTime\":1611727945000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-02 08:37:08');
INSERT INTO `sys_oper_log` VALUES (212, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"3\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1611727946000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"student\",\"roleName\":\"学生\",\"menuIds\":[2000,2001],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-02 08:39:35');
INSERT INTO `sys_oper_log` VALUES (213, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1611727946000,\"menuCheckStrictly\":true,\"roleKey\":\"student\",\"roleName\":\"学生\",\"deptIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-02 08:40:26');
INSERT INTO `sys_oper_log` VALUES (214, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"people\",\"orderNum\":\"0\",\"menuName\":\"录取学生信息\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"student\",\"component\":\"info/student/index\",\"children\":[],\"createTime\":1611793137000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2001,\"menuType\":\"C\",\"perms\":\"student\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-02 08:44:35');
INSERT INTO `sys_oper_log` VALUES (215, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"people\",\"orderNum\":\"0\",\"menuName\":\"录取学生信息\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"student\",\"component\":\"info/student/index\",\"children\":[],\"createTime\":1611793137000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2001,\"menuType\":\"C\",\"perms\":\"student:info:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-02 08:45:41');
INSERT INTO `sys_oper_log` VALUES (216, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":\"1\",\"menuName\":\"学生信息查询\",\"params\":{},\"parentId\":2001,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"student:info:query\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-02 08:48:01');
INSERT INTO `sys_oper_log` VALUES (217, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":\"2\",\"menuName\":\"学生信息新增\",\"params\":{},\"parentId\":2001,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"student:info:add\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-02 08:48:27');
INSERT INTO `sys_oper_log` VALUES (218, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":\"3\",\"menuName\":\"学生信息删除\",\"params\":{},\"parentId\":2001,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"student:info:remove\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-02 08:48:46');
INSERT INTO `sys_oper_log` VALUES (219, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1611727946000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"student\",\"roleName\":\"学生\",\"menuIds\":[2000,2001,2004,2005,2006],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-02 08:48:59');
INSERT INTO `sys_oper_log` VALUES (220, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/system/role/dataScope', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1611727946000,\"menuCheckStrictly\":true,\"roleKey\":\"student\",\"roleName\":\"学生\",\"deptIds\":[],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-02 08:49:03');
INSERT INTO `sys_oper_log` VALUES (221, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"system\",\"orderNum\":\"1\",\"menuName\":\"系统管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"system\",\"children\":[],\"createTime\":1611727947000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-03 08:03:58');
INSERT INTO `sys_oper_log` VALUES (222, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"system\",\"orderNum\":\"1\",\"menuName\":\"系统管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"system\",\"children\":[],\"createTime\":1611727947000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-03 08:03:59');
INSERT INTO `sys_oper_log` VALUES (223, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"system\",\"orderNum\":\"1\",\"menuName\":\"系统管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"system\",\"children\":[],\"createTime\":1611727947000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":1,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-03 08:04:19');
INSERT INTO `sys_oper_log` VALUES (224, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"tree-table\",\"orderNum\":\"3\",\"menuName\":\"菜单管理\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"menu\",\"component\":\"system/menu/index\",\"children\":[],\"createTime\":1611727947000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":102,\"menuType\":\"C\",\"perms\":\"system:menu:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-03 08:04:25');
INSERT INTO `sys_oper_log` VALUES (225, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"log\",\"orderNum\":\"9\",\"menuName\":\"日志管理\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"log\",\"component\":\"\",\"children\":[],\"createTime\":1611727947000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":108,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-03 08:04:41');
INSERT INTO `sys_oper_log` VALUES (226, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"edit\",\"orderNum\":\"7\",\"menuName\":\"参数设置\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"config\",\"component\":\"system/config/index\",\"children\":[],\"createTime\":1611727947000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":106,\"menuType\":\"C\",\"perms\":\"system:config:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-03 08:05:07');
INSERT INTO `sys_oper_log` VALUES (227, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"dict\",\"orderNum\":\"6\",\"menuName\":\"字典管理\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"dict\",\"component\":\"system/dict/index\",\"children\":[],\"createTime\":1611727947000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":105,\"menuType\":\"C\",\"perms\":\"system:dict:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-03 08:05:13');
INSERT INTO `sys_oper_log` VALUES (228, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"tool\",\"orderNum\":\"3\",\"menuName\":\"系统工具\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"tool\",\"children\":[],\"createTime\":1611727947000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":3,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-03 08:05:29');
INSERT INTO `sys_oper_log` VALUES (229, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"monitor\",\"orderNum\":\"2\",\"menuName\":\"系统监控\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"monitor\",\"children\":[],\"createTime\":1611727947000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-02-03 08:05:44');
INSERT INTO `sys_oper_log` VALUES (230, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"tool\",\"orderNum\":\"3\",\"menuName\":\"系统工具\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"tool\",\"children\":[],\"createTime\":1611727947000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":3,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 10:07:20');
INSERT INTO `sys_oper_log` VALUES (231, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'stu_build,stu_room', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 10:07:45');
INSERT INTO `sys_oper_log` VALUES (232, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', NULL, '/tool/gen/synchDb/stu_room', '127.0.0.1', '内网IP', '{tableName=stu_room}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 10:09:03');
INSERT INTO `sys_oper_log` VALUES (233, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2021-04-20 10:09:20');
INSERT INTO `sys_oper_log` VALUES (234, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":true,\"subTableName\":\"stu_room\",\"functionAuthor\":\"zhangxiya\",\"columns\":[{\"capJavaField\":\"BuildId\",\"usableColumn\":false,\"columnId\":15,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"buildId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"楼栋主键\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1618884465000,\"tableId\":2,\"pk\":true,\"columnName\":\"build_id\"},{\"capJavaField\":\"Location\",\"usableColumn\":false,\"columnId\":16,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"location\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"区域\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1618884465000,\"isEdit\":\"1\",\"tableId\":2,\"pk\":false,\"columnName\":\"location\"},{\"capJavaField\":\"BuildName\",\"usableColumn\":false,\"columnId\":17,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"buildName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"楼栋名称\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1618884465000,\"isEdit\":\"1\",\"tableId\":2,\"pk\":false,\"columnName\":\"build_name\"}],\"businessName\":\"build\",\"moduleName\":\"building\",\"className\":\"StuBuild\",\"tableName\":\"stu_build\",\"crud\":false,\"options\":\"{}\",\"subTableFkName\":\"build_id\",\"genType\":\"0\",\"packageName\":\"com.ruoyi.student\",\"functionName\":\"宿舍楼\",\"tree\":false,\"tableComment\":\"宿舍楼栋信息\",\"params\":{},\"tplCategory\":\"sub\",\"tableId\":2,\"genPath\":\"/\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 10:11:25');
INSERT INTO `sys_oper_log` VALUES (235, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2021-04-20 10:11:30');
INSERT INTO `sys_oper_log` VALUES (236, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"build\",\"orderNum\":\"3\",\"menuName\":\"宿舍管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"build\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 10:21:07');
INSERT INTO `sys_oper_log` VALUES (237, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"peoples\",\"orderNum\":\"1\",\"menuName\":\"宿舍信息\",\"params\":{},\"parentId\":2007,\"isCache\":\"0\",\"path\":\"building\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 10:22:33');
INSERT INTO `sys_oper_log` VALUES (238, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"peoples\",\"orderNum\":\"1\",\"menuName\":\"宿舍信息\",\"params\":{},\"parentId\":2007,\"isCache\":\"0\",\"path\":\"building\",\"component\":\"buliding/build/index\",\"children\":[],\"createTime\":1618885352000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2008,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 10:23:13');
INSERT INTO `sys_oper_log` VALUES (239, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"peoples\",\"orderNum\":\"1\",\"menuName\":\"宿舍信息\",\"params\":{},\"parentId\":2007,\"isCache\":\"0\",\"path\":\"building\",\"component\":\"building/build/index\",\"children\":[],\"createTime\":1618885352000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2008,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 10:24:05');
INSERT INTO `sys_oper_log` VALUES (240, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', NULL, '/tool/gen/synchDb/stu_build', '127.0.0.1', '内网IP', '{tableName=stu_build}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 10:25:26');
INSERT INTO `sys_oper_log` VALUES (241, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"ruoyi\",\"columns\":[{\"capJavaField\":\"RoomId\",\"usableColumn\":false,\"columnId\":18,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"主键\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1618884465000,\"tableId\":3,\"pk\":true,\"columnName\":\"room_id\"},{\"capJavaField\":\"RoomName\",\"usableColumn\":false,\"columnId\":19,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"房间编号\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1618884465000,\"isEdit\":\"1\",\"tableId\":3,\"pk\":false,\"columnName\":\"room_name\"},{\"capJavaField\":\"RoomNum\",\"usableColumn\":false,\"columnId\":20,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomNum\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"人数\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"Integer\",\"queryType\":\"EQ\",\"columnType\":\"int(2)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1618884465000,\"isEdit\":\"1\",\"tableId\":3,\"pk\":false,\"columnName\":\"room_num\"},{\"capJavaField\":\"RoomStu\",\"usableColumn\":false,\"columnId\":21,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"roomStu\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"入住学生\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 10:26:30');
INSERT INTO `sys_oper_log` VALUES (242, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":true,\"subTableName\":\"stu_room\",\"functionAuthor\":\"zhangxiya\",\"columns\":[{\"capJavaField\":\"BuildId\",\"usableColumn\":false,\"columnId\":15,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"buildId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"楼栋主键\",\"updateTime\":1618884685000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1618884465000,\"tableId\":2,\"pk\":true,\"columnName\":\"build_id\"},{\"capJavaField\":\"Location\",\"usableColumn\":false,\"columnId\":16,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"location\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"区域\",\"isQuery\":\"1\",\"updateTime\":1618884685000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1618884465000,\"isEdit\":\"1\",\"tableId\":2,\"pk\":false,\"columnName\":\"location\"},{\"capJavaField\":\"BuildName\",\"usableColumn\":false,\"columnId\":17,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"buildName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"楼栋名称\",\"isQuery\":\"1\",\"updateTime\":1618884685000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1618884465000,\"isEdit\":\"1\",\"tableId\":2,\"pk\":false,\"columnName\":\"build_name\"}],\"businessName\":\"building\",\"moduleName\":\"building\",\"className\":\"StuBuild\",\"tableName\":\"stu_build\",\"crud\":false,\"options\":\"{}\",\"subTableFkName\":\"build_id\",\"genType\":\"0\",\"packageName\":\"com.ruoyi.building\",\"functionName\":\"宿舍楼\",\"tree\":false,\"tableComment\":\"宿舍楼栋信息\",\"params\":{},\"tplCategory\":\"sub\",\"tableId\":2,', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 10:26:51');
INSERT INTO `sys_oper_log` VALUES (243, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2021-04-20 10:27:09');
INSERT INTO `sys_oper_log` VALUES (244, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"subTableName\":\"\",\"functionAuthor\":\"zhangxiya\",\"columns\":[{\"capJavaField\":\"BuildId\",\"usableColumn\":false,\"columnId\":15,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"buildId\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"楼栋主键\",\"updateTime\":1618885611000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1618884465000,\"tableId\":2,\"pk\":true,\"columnName\":\"build_id\"},{\"capJavaField\":\"Location\",\"usableColumn\":false,\"columnId\":16,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"location\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"区域\",\"isQuery\":\"1\",\"updateTime\":1618885611000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1618884465000,\"isEdit\":\"1\",\"tableId\":2,\"pk\":false,\"columnName\":\"location\"},{\"capJavaField\":\"BuildName\",\"usableColumn\":false,\"columnId\":17,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"buildName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"楼栋名称\",\"isQuery\":\"1\",\"updateTime\":1618885611000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1618884465000,\"isEdit\":\"1\",\"tableId\":2,\"pk\":false,\"columnName\":\"build_name\"}],\"businessName\":\"building\",\"moduleName\":\"building\",\"className\":\"StuBuild\",\"tableName\":\"stu_build\",\"crud\":true,\"options\":\"{}\",\"subTableFkName\":\"\",\"genType\":\"0\",\"packageName\":\"com.ruoyi.building\",\"functionName\":\"宿舍楼\",\"tree\":false,\"tableComment\":\"宿舍楼栋信息\",\"params\":{},\"tplCategory\":\"crud\",\"tableId\":2,\"genPath\":\"/\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 10:29:06');
INSERT INTO `sys_oper_log` VALUES (245, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2021-04-20 10:29:36');
INSERT INTO `sys_oper_log` VALUES (246, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"peoples\",\"orderNum\":\"1\",\"menuName\":\"楼栋信息\",\"params\":{},\"parentId\":2007,\"isCache\":\"0\",\"path\":\"building\",\"component\":\"building/index\",\"children\":[],\"createTime\":1618885352000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2008,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 10:33:38');
INSERT INTO `sys_oper_log` VALUES (247, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"people\",\"orderNum\":\"2\",\"menuName\":\"宿舍信息\",\"params\":{},\"parentId\":2007,\"isCache\":\"0\",\"path\":\"room\",\"component\":\"room/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 10:34:22');
INSERT INTO `sys_oper_log` VALUES (248, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', NULL, '/tool/gen/synchDb/stu_room', '127.0.0.1', '内网IP', '{tableName=stu_room}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 10:37:27');
INSERT INTO `sys_oper_log` VALUES (249, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2021-04-20 10:37:40');
INSERT INTO `sys_oper_log` VALUES (250, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":1,\"admin\":true,\"remark\":\"超级管理员\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":true,\"createTime\":1611727946000,\"menuCheckStrictly\":true,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"menuIds\":[2007,2008,2009],\"status\":\"0\"}', 'null', 1, '不允许操作超级管理员角色', '2021-04-20 10:40:47');
INSERT INTO `sys_oper_log` VALUES (251, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":1,\"admin\":true,\"remark\":\"超级管理员\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":true,\"createTime\":1611727946000,\"menuCheckStrictly\":true,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"menuIds\":[1,100,1001,1002,1003,1004,1005,1006,1007,101,1008,1009,1010,1011,1012,102,1013,1014,1015,1016,103,1017,1018,1019,1020,104,1021,1022,1023,1024,1025,105,1026,1027,1028,1029,1030,106,1031,1032,1033,1034,1035,108,500,1040,1041,1042,501,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,2000,2001,2004,2005,2006,2002,2003,3,114,115,1055,1056,1058,1057,1059,1060,116,2007,2008,2009],\"status\":\"0\"}', 'null', 1, '不允许操作超级管理员角色', '2021-04-20 10:41:06');
INSERT INTO `sys_oper_log` VALUES (252, '宿舍楼', 1, 'com.ruoyi.building.controller.StuBuildController.add()', 'POST', 1, 'admin', NULL, '/building/building', '127.0.0.1', '内网IP', '{\"buildName\":\"1号楼\",\"location\":\"南苑\",\"params\":{}}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'build_id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\jiang\\JS面向对象\\gitJS\\new-student-report\\new-student\\target\\classes\\mapper\\building\\StuBuildMapper.xml]\r\n### The error may involve com.ruoyi.building.mapper.StuBuildMapper.insertStuBuild-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into stu_build          ( location,             build_name )           values ( ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'build_id\' doesn\'t have a default value\n; Field \'build_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'build_id\' doesn\'t have a default value', '2021-04-20 10:48:09');
INSERT INTO `sys_oper_log` VALUES (253, '宿舍楼', 1, 'com.ruoyi.building.controller.StuBuildController.add()', 'POST', 1, 'admin', NULL, '/building/building', '127.0.0.1', '内网IP', '{\"buildName\":\"1号楼\",\"location\":\"南苑\",\"params\":{}}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'build_id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\jiang\\JS面向对象\\gitJS\\new-student-report\\new-student\\target\\classes\\mapper\\building\\StuBuildMapper.xml]\r\n### The error may involve com.ruoyi.building.mapper.StuBuildMapper.insertStuBuild-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into stu_build          ( location,             build_name )           values ( ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'build_id\' doesn\'t have a default value\n; Field \'build_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'build_id\' doesn\'t have a default value', '2021-04-20 10:51:05');
INSERT INTO `sys_oper_log` VALUES (254, '宿舍楼', 1, 'com.ruoyi.building.controller.StuBuildController.add()', 'POST', 1, 'admin', NULL, '/building/building', '127.0.0.1', '内网IP', '{\"buildName\":\"一号楼\",\"buildId\":\"7dcf33cf-8824-4cbe-adc9-a5a2036ae62f\",\"location\":\"南苑\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 10:52:47');
INSERT INTO `sys_oper_log` VALUES (255, '宿舍楼', 3, 'com.ruoyi.building.controller.StuBuildController.remove()', 'DELETE', 1, 'admin', NULL, '/building/building/7dcf33cf-8824-4cbe-adc9-a5a2036ae62f', '127.0.0.1', '内网IP', '{buildIds=7dcf33cf-8824-4cbe-adc9-a5a2036ae62f}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 10:54:13');
INSERT INTO `sys_oper_log` VALUES (256, '宿舍楼', 1, 'com.ruoyi.building.controller.StuBuildController.add()', 'POST', 1, 'admin', NULL, '/building/building', '127.0.0.1', '内网IP', '{\"buildName\":\"一号楼\",\"buildId\":\"a7a3be02-dd01-44d5-9d35-a7f89318e755\",\"location\":\"南苑\",\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 10:55:27');
INSERT INTO `sys_oper_log` VALUES (257, '宿舍', 1, 'com.ruoyi.room.controller.StuRoomController.add()', 'POST', 1, 'admin', NULL, '/room/room', '127.0.0.1', '内网IP', '{\"buildId\":\"a7a3be02-dd01-44d5-9d35-a7f89318e755\",\"params\":{},\"roomName\":\"1-101\",\"roomNum\":\"4\"}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'room_id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\jiang\\JS面向对象\\gitJS\\new-student-report\\new-student\\target\\classes\\mapper\\room\\StuRoomMapper.xml]\r\n### The error may involve com.ruoyi.room.mapper.StuRoomMapper.insertStuRoom-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into stu_room          ( room_name,             room_num,                          build_id )           values ( ?,             ?,                          ? )\r\n### Cause: java.sql.SQLException: Field \'room_id\' doesn\'t have a default value\n; Field \'room_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'room_id\' doesn\'t have a default value', '2021-04-20 11:26:55');
INSERT INTO `sys_oper_log` VALUES (258, '宿舍', 1, 'com.ruoyi.room.controller.StuRoomController.add()', 'POST', 1, 'admin', NULL, '/room/room', '127.0.0.1', '内网IP', '{\"buildId\":\"a7a3be02-dd01-44d5-9d35-a7f89318e755\",\"params\":{},\"roomId\":\"1e279653-f087-455f-b13c-0aeca3945c3e\",\"roomName\":\"1-102\",\"roomNum\":\"4\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 11:37:56');
INSERT INTO `sys_oper_log` VALUES (259, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'stu_room_info', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 13:41:15');
INSERT INTO `sys_oper_log` VALUES (260, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"张西亚\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":24,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"主键\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1618897275000,\"tableId\":4,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"RoomId\",\"usableColumn\":false,\"columnId\":25,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"roomId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"房间id\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1618897275000,\"isEdit\":\"1\",\"tableId\":4,\"pk\":false,\"columnName\":\"room_id\"},{\"capJavaField\":\"RoomName\",\"usableColumn\":false,\"columnId\":26,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"roomName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"房间编号\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1618897275000,\"isEdit\":\"1\",\"tableId\":4,\"pk\":false,\"columnName\":\"room_name\"},{\"capJavaField\":\"StuId\",\"usableColumn\":false,\"columnId\":27,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"stuId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"学生学号\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varcha', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 13:42:22');
INSERT INTO `sys_oper_log` VALUES (261, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2021-04-20 13:42:27');
INSERT INTO `sys_oper_log` VALUES (262, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"peoples\",\"orderNum\":\"3\",\"menuName\":\"宿舍分配\",\"params\":{},\"parentId\":2007,\"isCache\":\"0\",\"path\":\"stuRoomInfo\",\"component\":\"stuRoomInfo/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 13:45:42');
INSERT INTO `sys_oper_log` VALUES (263, '学生入住信息', 1, 'com.ruoyi.stuRoomInfo.controller.StuRoomInfoController.add()', 'POST', 1, 'admin', NULL, '/stuRoomInfo/info', '127.0.0.1', '内网IP', '{\"stuId\":\"103202101290054\",\"stuName\":\"周凯\",\"params\":{},\"roomId\":\"3a95d8c5-c8e1-47c0-99ac-78ce6de02c33\",\"roomName\":\"1e279653-f087-455f-b13c-0aeca3945c3e\"}', 'null', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'room_id\' at row 1\r\n### The error may exist in file [D:\\jiang\\JS面向对象\\gitJS\\new-student-report\\new-student\\target\\classes\\mapper\\student\\StuentInfoMapper.xml]\r\n### The error may involve com.ruoyi.student.mapper.StuentInfoMapper.updateStuentInfo-Inline\r\n### The error occurred while setting parameters\r\n### SQL: update stuent_info          SET stu_name = ?,             stu_sex = ?,             stu_age = ?,             stu_code = ?,             stu_score = ?,             stu_dept = ?,             stu_major = ?,             stu_native = ?,             stu_folk = ?,             stu_political_status = ?,             stu_phone = ?,             stu_status = ?,             stu_qq = ?,             stu_email = ?,             room_id = ?          where stu_id = ?\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'room_id\' at row 1\n; Data truncation: Data too long for column \'room_id\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Data too long for column \'room_id\' at row 1', '2021-04-20 14:30:01');
INSERT INTO `sys_oper_log` VALUES (264, '学生入住信息', 1, 'com.ruoyi.stuRoomInfo.controller.StuRoomInfoController.add()', 'POST', 1, 'admin', NULL, '/stuRoomInfo/info', '127.0.0.1', '内网IP', '{\"stuId\":\"103202101290054\",\"stuName\":\"周凯\",\"params\":{},\"roomId\":\"85faa1ba-9f64-4620-90bf-6f679599d2b4\",\"roomName\":\"1e279653-f087-455f-b13c-0aeca3945c3e\"}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\jiang\\JS面向对象\\gitJS\\new-student-report\\new-student\\target\\classes\\mapper\\stuRoomInfo\\StuRoomInfoMapper.xml]\r\n### The error may involve com.ruoyi.stuRoomInfo.mapper.StuRoomInfoMapper.insertStuRoomInfo-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into stu_room_info          ( room_id,             room_name,             stu_id,             stu_name )           values ( ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2021-04-20 14:31:33');
INSERT INTO `sys_oper_log` VALUES (265, '学生入住信息', 1, 'com.ruoyi.stuRoomInfo.controller.StuRoomInfoController.add()', 'POST', 1, 'admin', NULL, '/stuRoomInfo/info', '127.0.0.1', '内网IP', '{\"stuId\":\"103202101290054\",\"stuName\":\"周凯\",\"params\":{},\"roomId\":\"bdeb0dea-eae4-4300-be75-b7f01d04a617\",\"roomName\":\"1e279653-f087-455f-b13c-0aeca3945c3e\"}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\jiang\\JS面向对象\\gitJS\\new-student-report\\new-student\\target\\classes\\mapper\\stuRoomInfo\\StuRoomInfoMapper.xml]\r\n### The error may involve com.ruoyi.stuRoomInfo.mapper.StuRoomInfoMapper.insertStuRoomInfo-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into stu_room_info          ( room_id,             room_name,             stu_id,             stu_name )           values ( ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2021-04-20 14:31:47');
INSERT INTO `sys_oper_log` VALUES (266, '学生入住信息', 1, 'com.ruoyi.stuRoomInfo.controller.StuRoomInfoController.add()', 'POST', 1, 'admin', NULL, '/stuRoomInfo/info', '127.0.0.1', '内网IP', '{\"stuId\":\"103202101290054\",\"id\":\"6409586b-2ece-429b-b16a-ea7efd17b3c0\",\"stuName\":\"周凯\",\"params\":{},\"roomId\":\"1e279653-f087-455f-b13c-0aeca3945c3e\",\"roomName\":\"1e279653-f087-455f-b13c-0aeca3945c3e\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 14:32:53');
INSERT INTO `sys_oper_log` VALUES (267, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2003', '127.0.0.1', '内网IP', '{menuId=2003}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 14:35:45');
INSERT INTO `sys_oper_log` VALUES (268, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"peoples\",\"orderNum\":\"1\",\"menuName\":\"楼栋信息\",\"params\":{},\"parentId\":2007,\"isCache\":\"0\",\"path\":\"building\",\"component\":\"building/index\",\"children\":[],\"createTime\":1618885352000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2008,\"menuType\":\"C\",\"perms\":\"stuRoomInfo:info:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 14:36:25');
INSERT INTO `sys_oper_log` VALUES (269, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":\"1\",\"menuName\":\"查询\",\"params\":{},\"parentId\":2008,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"stuRoomInfo:info:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 14:36:53');
INSERT INTO `sys_oper_log` VALUES (270, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"1\",\"menuName\":\"查询\",\"params\":{},\"parentId\":2008,\"isCache\":\"0\",\"path\":\"\",\"children\":[],\"createTime\":1618900613000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2011,\"menuType\":\"F\",\"perms\":\"stuRoomInfo:info:query\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 14:37:15');
INSERT INTO `sys_oper_log` VALUES (271, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":\"2\",\"menuName\":\"新增\",\"params\":{},\"parentId\":2008,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"stuRoomInfo:info:add\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 14:37:34');
INSERT INTO `sys_oper_log` VALUES (272, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":\"3\",\"menuName\":\"编辑\",\"params\":{},\"parentId\":2008,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"stuRoomInfo:info:edit\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 14:37:49');
INSERT INTO `sys_oper_log` VALUES (273, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":\"4\",\"menuName\":\"删除\",\"params\":{},\"parentId\":2008,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"stuRoomInfo:info:remove\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 14:38:03');
INSERT INTO `sys_oper_log` VALUES (274, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"people\",\"orderNum\":\"2\",\"menuName\":\"宿舍信息\",\"params\":{},\"parentId\":2007,\"isCache\":\"0\",\"path\":\"room\",\"component\":\"room/index\",\"children\":[],\"createTime\":1618886062000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2009,\"menuType\":\"C\",\"perms\":\"room:room:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 14:38:32');
INSERT INTO `sys_oper_log` VALUES (275, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":\"1\",\"menuName\":\"查询\",\"params\":{},\"parentId\":2009,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"room:room:query\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 14:39:03');
INSERT INTO `sys_oper_log` VALUES (276, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":\"2\",\"menuName\":\"新增\",\"params\":{},\"parentId\":2009,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"room:room:add\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 14:39:17');
INSERT INTO `sys_oper_log` VALUES (277, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":\"3\",\"menuName\":\"room:room:edit\",\"params\":{},\"parentId\":2009,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"编辑\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 14:39:37');
INSERT INTO `sys_oper_log` VALUES (278, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"3\",\"menuName\":\"编辑\",\"params\":{},\"parentId\":2009,\"isCache\":\"0\",\"path\":\"\",\"children\":[],\"createTime\":1618900777000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2017,\"menuType\":\"F\",\"perms\":\"room:room:edit\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 14:40:04');
INSERT INTO `sys_oper_log` VALUES (279, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":\"4\",\"menuName\":\"room:room:remove\",\"params\":{},\"parentId\":2009,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"删除\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 14:40:18');
INSERT INTO `sys_oper_log` VALUES (280, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"4\",\"menuName\":\"删除\",\"params\":{},\"parentId\":2009,\"isCache\":\"0\",\"path\":\"\",\"children\":[],\"createTime\":1618900818000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2018,\"menuType\":\"F\",\"perms\":\"room:room:remove\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 14:40:27');
INSERT INTO `sys_oper_log` VALUES (281, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"peoples\",\"orderNum\":\"1\",\"menuName\":\"楼栋信息\",\"params\":{},\"parentId\":2007,\"isCache\":\"0\",\"path\":\"building\",\"component\":\"building/index\",\"children\":[],\"createTime\":1618885352000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2008,\"menuType\":\"C\",\"perms\":\"building:building:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 14:41:14');
INSERT INTO `sys_oper_log` VALUES (282, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"1\",\"menuName\":\"查询\",\"params\":{},\"parentId\":2008,\"isCache\":\"0\",\"path\":\"\",\"children\":[],\"createTime\":1618900613000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2011,\"menuType\":\"F\",\"perms\":\"building:building:query\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 14:41:28');
INSERT INTO `sys_oper_log` VALUES (283, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"2\",\"menuName\":\"新增\",\"params\":{},\"parentId\":2008,\"isCache\":\"0\",\"path\":\"\",\"children\":[],\"createTime\":1618900654000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2012,\"menuType\":\"F\",\"perms\":\"building:building:add\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 14:41:36');
INSERT INTO `sys_oper_log` VALUES (284, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"3\",\"menuName\":\"编辑\",\"params\":{},\"parentId\":2008,\"isCache\":\"0\",\"path\":\"\",\"children\":[],\"createTime\":1618900669000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2013,\"menuType\":\"F\",\"perms\":\"building:building:edit\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 14:41:45');
INSERT INTO `sys_oper_log` VALUES (285, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"#\",\"orderNum\":\"4\",\"menuName\":\"删除\",\"params\":{},\"parentId\":2008,\"isCache\":\"0\",\"path\":\"\",\"children\":[],\"createTime\":1618900683000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2014,\"menuType\":\"F\",\"perms\":\"building:building:remove\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 14:41:53');
INSERT INTO `sys_oper_log` VALUES (286, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"peoples\",\"orderNum\":\"3\",\"menuName\":\"宿舍分配\",\"params\":{},\"parentId\":2007,\"isCache\":\"0\",\"path\":\"stuRoomInfo\",\"component\":\"stuRoomInfo/index\",\"children\":[],\"createTime\":1618897542000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2010,\"menuType\":\"C\",\"perms\":\"stuRoomInfo:info:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 14:42:11');
INSERT INTO `sys_oper_log` VALUES (287, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":\"1\",\"menuName\":\"查询\",\"params\":{},\"parentId\":2010,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"stuRoomInfo:info:query\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 14:42:30');
INSERT INTO `sys_oper_log` VALUES (288, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":\"2\",\"menuName\":\"新增\",\"params\":{},\"parentId\":2010,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"stuRoomInfo:info:add\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 14:42:45');
INSERT INTO `sys_oper_log` VALUES (289, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":\"3\",\"menuName\":\"编辑\",\"params\":{},\"parentId\":2010,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"stuRoomInfo:info:edit\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 14:43:00');
INSERT INTO `sys_oper_log` VALUES (290, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":\"4\",\"menuName\":\"删除\",\"params\":{},\"parentId\":2010,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"stuRoomInfo:info:remove\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 14:43:21');
INSERT INTO `sys_oper_log` VALUES (291, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":1,\"admin\":true,\"remark\":\"超级管理员\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"1\",\"deptCheckStrictly\":true,\"createTime\":1611727946000,\"menuCheckStrictly\":true,\"roleKey\":\"admin\",\"roleName\":\"超级管理员\",\"menuIds\":[2007,2008,2011,2012,2013,2014,2009,2015,2016,2017,2018,2010,2019,2020,2021,2022],\"status\":\"0\"}', 'null', 1, '不允许操作超级管理员角色', '2021-04-20 14:43:40');
INSERT INTO `sys_oper_log` VALUES (292, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":2,\"admin\":false,\"remark\":\"普通角色\",\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"2\",\"deptCheckStrictly\":true,\"createTime\":1611727946000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"student\",\"roleName\":\"学生\",\"menuIds\":[2000,2007,2001,2004,2005,2006,2010,2019,2020,2021,2022],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 14:43:56');
INSERT INTO `sys_oper_log` VALUES (293, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'stu_class', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 14:45:31');
INSERT INTO `sys_oper_log` VALUES (294, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"张西亚\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":29,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"主键ID\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1618901130000,\"tableId\":5,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"ClassName\",\"usableColumn\":false,\"columnId\":30,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"className\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"班级名称\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1618901130000,\"isEdit\":\"1\",\"tableId\":5,\"pk\":false,\"columnName\":\"class_name\"},{\"capJavaField\":\"TeacherId\",\"usableColumn\":false,\"columnId\":31,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"teacherId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"导师工号\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1618901130000,\"isEdit\":\"1\",\"tableId\":5,\"pk\":false,\"columnName\":\"teacher_id\"},{\"capJavaField\":\"TeacherName\",\"usableColumn\":false,\"columnId\":32,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"teacherName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"导师姓名\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\"', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 14:46:06');
INSERT INTO `sys_oper_log` VALUES (295, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2021-04-20 14:46:11');
INSERT INTO `sys_oper_log` VALUES (296, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"张西亚\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":29,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"主键ID\",\"updateTime\":1618901166000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1618901130000,\"tableId\":5,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"ClassName\",\"usableColumn\":false,\"columnId\":30,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"className\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"班级名称\",\"isQuery\":\"1\",\"updateTime\":1618901166000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1618901130000,\"isEdit\":\"1\",\"tableId\":5,\"pk\":false,\"columnName\":\"class_name\"},{\"capJavaField\":\"TeacherId\",\"usableColumn\":false,\"columnId\":31,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"teacherId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"导师工号\",\"isQuery\":\"1\",\"updateTime\":1618901166000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1618901130000,\"isEdit\":\"1\",\"tableId\":5,\"pk\":false,\"columnName\":\"teacher_id\"},{\"capJavaField\":\"TeacherName\",\"usableColumn\":false,\"columnId\":32,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"teacherName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"导师姓', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 14:47:42');
INSERT INTO `sys_oper_log` VALUES (297, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2021-04-20 14:47:46');
INSERT INTO `sys_oper_log` VALUES (298, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"张西亚\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":29,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"主键ID\",\"updateTime\":1618901262000,\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1618901130000,\"tableId\":5,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"ClassName\",\"usableColumn\":false,\"columnId\":30,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"className\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"班级名称\",\"isQuery\":\"1\",\"updateTime\":1618901262000,\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1618901130000,\"isEdit\":\"1\",\"tableId\":5,\"pk\":false,\"columnName\":\"class_name\"},{\"capJavaField\":\"TeacherId\",\"usableColumn\":false,\"columnId\":31,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"teacherId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"导师工号\",\"isQuery\":\"1\",\"updateTime\":1618901262000,\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1618901130000,\"isEdit\":\"1\",\"tableId\":5,\"pk\":false,\"columnName\":\"teacher_id\"},{\"capJavaField\":\"TeacherName\",\"usableColumn\":false,\"columnId\":32,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":true,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"isRequired\":\"1\",\"javaField\":\"teacherName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"导师姓', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 14:48:50');
INSERT INTO `sys_oper_log` VALUES (299, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2021-04-20 14:48:55');
INSERT INTO `sys_oper_log` VALUES (300, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.synchDb()', 'GET', 1, 'admin', NULL, '/tool/gen/synchDb/stu_class', '127.0.0.1', '内网IP', '{tableName=stu_class}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 14:49:27');
INSERT INTO `sys_oper_log` VALUES (301, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/5', '127.0.0.1', '内网IP', '{tableIds=5}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 14:49:45');
INSERT INTO `sys_oper_log` VALUES (302, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'stu_class', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 14:49:49');
INSERT INTO `sys_oper_log` VALUES (303, '代码生成', 2, 'com.ruoyi.generator.controller.GenController.editSave()', 'PUT', 1, 'admin', NULL, '/tool/gen', '127.0.0.1', '内网IP', '{\"sub\":false,\"functionAuthor\":\"zhangxiya\",\"columns\":[{\"capJavaField\":\"Id\",\"usableColumn\":false,\"columnId\":33,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"id\",\"htmlType\":\"input\",\"edit\":false,\"query\":false,\"columnComment\":\"主键ID\",\"sort\":1,\"list\":false,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"1\",\"createTime\":1618901389000,\"tableId\":6,\"pk\":true,\"columnName\":\"id\"},{\"capJavaField\":\"ClassName\",\"usableColumn\":false,\"columnId\":34,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"className\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"班级名称\",\"isQuery\":\"1\",\"sort\":2,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1618901389000,\"isEdit\":\"1\",\"tableId\":6,\"pk\":false,\"columnName\":\"class_name\"},{\"capJavaField\":\"TeacherId\",\"usableColumn\":false,\"columnId\":35,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"teacherId\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"导师工号\",\"isQuery\":\"1\",\"sort\":3,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"EQ\",\"columnType\":\"varchar(64)\",\"createBy\":\"admin\",\"isPk\":\"0\",\"createTime\":1618901389000,\"isEdit\":\"1\",\"tableId\":6,\"pk\":false,\"columnName\":\"teacher_id\"},{\"capJavaField\":\"TeacherName\",\"usableColumn\":false,\"columnId\":36,\"isIncrement\":\"0\",\"increment\":false,\"insert\":true,\"isList\":\"1\",\"dictType\":\"\",\"required\":false,\"superColumn\":false,\"updateBy\":\"\",\"isInsert\":\"1\",\"javaField\":\"teacherName\",\"htmlType\":\"input\",\"edit\":true,\"query\":true,\"columnComment\":\"导师姓名\",\"isQuery\":\"1\",\"sort\":4,\"list\":true,\"params\":{},\"javaType\":\"String\",\"queryType\":\"LIKE\",\"columnType\":\"varchar(64)\",\"create', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 14:50:24');
INSERT INTO `sys_oper_log` VALUES (304, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2021-04-20 14:50:37');
INSERT INTO `sys_oper_log` VALUES (305, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"user\",\"orderNum\":\"1\",\"menuName\":\"班级信息\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"classInfo\",\"component\":\"classInfo/index\",\"children\":[],\"createTime\":1611793181000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2002,\"menuType\":\"C\",\"perms\":\"classInfo:classInfo:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 14:54:41');
INSERT INTO `sys_oper_log` VALUES (306, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":\"1\",\"menuName\":\"查询\",\"params\":{},\"parentId\":2002,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"classInfo:classInfo:query\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 14:54:59');
INSERT INTO `sys_oper_log` VALUES (307, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":\"2\",\"menuName\":\"新增\",\"params\":{},\"parentId\":2002,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"classInfo:classInfo:add\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 14:55:13');
INSERT INTO `sys_oper_log` VALUES (308, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":\"3\",\"menuName\":\"classInfo:classInfo:edit\",\"params\":{},\"parentId\":3,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"编辑\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 14:55:28');
INSERT INTO `sys_oper_log` VALUES (309, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":\"4\",\"menuName\":\"删除\",\"params\":{},\"parentId\":3,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"classInfo:classInfo:remove\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 14:55:44');
INSERT INTO `sys_oper_log` VALUES (310, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2026', '127.0.0.1', '内网IP', '{menuId=2026}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 14:55:58');
INSERT INTO `sys_oper_log` VALUES (311, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2025', '127.0.0.1', '内网IP', '{menuId=2025}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 14:56:01');
INSERT INTO `sys_oper_log` VALUES (312, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":\"3\",\"menuName\":\"编辑\",\"params\":{},\"parentId\":2002,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"classInfo:classInfo:edit\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 14:56:22');
INSERT INTO `sys_oper_log` VALUES (313, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":\"4\",\"menuName\":\"删除\",\"params\":{},\"parentId\":2002,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"classInfo:classInfo:remove\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 14:56:36');
INSERT INTO `sys_oper_log` VALUES (314, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"user\",\"orderNum\":\"1\",\"menuName\":\"班级信息\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"classInfo\",\"component\":\"info/classInfo/index\",\"children\":[],\"createTime\":1611793181000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2002,\"menuType\":\"C\",\"perms\":\"classInfo:classInfo:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 14:59:54');
INSERT INTO `sys_oper_log` VALUES (315, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"user\",\"orderNum\":\"1\",\"menuName\":\"班级信息\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"classInfo\",\"component\":\"classInfo/index\",\"children\":[],\"createTime\":1611793181000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2002,\"menuType\":\"C\",\"perms\":\"classInfo:classInfo:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 15:00:16');
INSERT INTO `sys_oper_log` VALUES (316, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"tool\",\"orderNum\":\"3\",\"menuName\":\"系统工具\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"tool\",\"children\":[],\"createTime\":1611727947000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":3,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 15:04:29');
INSERT INTO `sys_oper_log` VALUES (317, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"tree-table\",\"orderNum\":\"3\",\"menuName\":\"菜单管理\",\"params\":{},\"parentId\":1,\"isCache\":\"0\",\"path\":\"menu\",\"component\":\"system/menu/index\",\"children\":[],\"createTime\":1611727947000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":102,\"menuType\":\"C\",\"perms\":\"system:menu:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-04-20 15:04:39');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'JSKX', '计算机科学与技术', 1, '0', 'admin', '2021-01-27 14:12:26', 'admin', '2021-01-28 10:49:01', '');
INSERT INTO `sys_post` VALUES (2, 'JAVAKF', 'JAVA开发', 2, '0', 'admin', '2021-01-27 14:12:26', 'admin', '2021-01-28 10:49:21', '');
INSERT INTO `sys_post` VALUES (3, 'JTGC', '交通工程', 3, '0', 'admin', '2021-01-27 14:12:26', 'admin', '2021-01-28 10:49:56', '');
INSERT INTO `sys_post` VALUES (4, 'JXDZ', '机械电子工程', 4, '0', 'admin', '2021-01-27 14:12:26', 'admin', '2021-01-28 10:50:26', '');
INSERT INTO `sys_post` VALUES (5, 'DQGC', '电气工程', 5, '0', 'admin', '2021-01-28 10:56:36', '', NULL, NULL);
INSERT INTO `sys_post` VALUES (6, 'YSSJ', '艺术设计', 6, '0', 'admin', '2021-01-28 10:57:03', '', NULL, NULL);
INSERT INTO `sys_post` VALUES (7, 'DLQLGC', '道路桥梁工程', 7, '0', 'admin', '2021-01-28 10:58:01', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2021-01-27 14:12:26', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '学生', 'student', 2, '1', 1, 1, '0', '0', 'admin', '2021-01-27 14:12:26', 'admin', '2021-04-20 14:43:56', '普通角色');
INSERT INTO `sys_role` VALUES (100, '老师', 'teach', 3, '4', 1, 1, '0', '0', 'admin', '2021-01-27 14:30:49', 'admin', '2021-01-28 14:46:42', NULL);

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 2000);
INSERT INTO `sys_role_menu` VALUES (2, 2001);
INSERT INTO `sys_role_menu` VALUES (2, 2004);
INSERT INTO `sys_role_menu` VALUES (2, 2005);
INSERT INTO `sys_role_menu` VALUES (2, 2006);
INSERT INTO `sys_role_menu` VALUES (2, 2007);
INSERT INTO `sys_role_menu` VALUES (2, 2010);
INSERT INTO `sys_role_menu` VALUES (2, 2019);
INSERT INTO `sys_role_menu` VALUES (2, 2020);
INSERT INTO `sys_role_menu` VALUES (2, 2021);
INSERT INTO `sys_role_menu` VALUES (2, 2022);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime(0) NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 103 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '管理员', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2021-01-27 14:12:25', 'admin', '2021-01-27 14:12:25', '', NULL, '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'ry', '李四', '00', 'ry@qq.com', '15666666666', '1', '', '123456', '0', '0', '127.0.0.1', '2021-01-27 14:12:25', 'admin', '2021-01-27 14:12:25', 'admin', '2021-02-02 08:37:08', '测试员');
INSERT INTO `sys_user` VALUES (100, 104, 'xusanduo', '许三多', '00', '', '13666666666', '0', '', '$2a$10$qYgJMK/6ucDkhORnkV4/YOnR7gYXnCDUy0Jg.iIi0iOsbA9gnrng6', '0', '0', '', NULL, 'admin', '2021-01-28 08:31:22', 'admin', '2021-01-28 08:32:16', NULL);
INSERT INTO `sys_user` VALUES (103, 200, 'H2015753', '江令阳', '00', '6546@qq.com', '13535353253', '1', '', '$2a$10$YAbDQRfkLXcFUL00pUxumuLb1GU/etob9dn5qyamOoZnEVLvSiWUO', '0', '0', '', NULL, 'admin', '2021-02-02 08:27:43', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 1);
INSERT INTO `sys_user_post` VALUES (100, 1);
INSERT INTO `sys_user_post` VALUES (100, 3);
INSERT INTO `sys_user_post` VALUES (103, 3);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);
INSERT INTO `sys_user_role` VALUES (100, 100);
INSERT INTO `sys_user_role` VALUES (103, 2);

-- ----------------------------
-- Table structure for tb_authority
-- ----------------------------
DROP TABLE IF EXISTS `tb_authority`;
CREATE TABLE `tb_authority`  (
  `ID` int(2) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `Authority` int(1) NULL DEFAULT NULL COMMENT '用户权限',
  `AuthorityJson` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '权限内容',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_authority
-- ----------------------------
INSERT INTO `tb_authority` VALUES (1, 1, '[\r\n	{\r\n		\"name\": \"信息管理\",\r\n		\"submenu\": [{\r\n				\"name\": \"基本信息\",\r\n				\"url\": \"/api/user/showuserinfo\"\r\n			},{\r\n				\"name\": \"详细信息\",\r\n				\"url\": \"/api/teacher/moreinfo?type=show\"\r\n			},{\r\n				\"name\": \"信息修改\",\r\n				\"url\": \"/api/teacher/moreinfo?type=change\"\r\n			},{\r\n				\"name\": \"密码修改\",\r\n				\"url\": \"/web/model?au=1&model=1&item=4\"\r\n			}\r\n		]\r\n	}, {\r\n		\"name\": \"新生管理\",\r\n		\"submenu\": [{\r\n				\"name\": \"查询\",\r\n				\"url\": \"/api/teacher/stulist\"\r\n			},{\r\n				\"name\": \"添加\",\r\n				\"url\": \"/web/model?au=1&model=2&item=2\"\r\n			},{\r\n				\"name\": \"修改\",\r\n				\"url\": \"/web/model?au=1&model=2&item=3\"\r\n			},{\r\n				\"name\": \"删除\",\r\n				\"url\": \"/web/model?au=1&model=2&item=4\"\r\n			},{\r\n				\"name\": \"导入/导出\",\r\n				\"url\": \"/web/model?au=1&model=2&item=5\"\r\n			}\r\n		]\r\n	}\r\n]');
INSERT INTO `tb_authority` VALUES (2, 2, '[\r\n	{\r\n		\"name\": \"信息管理\",\r\n		\"submenu\": [{\r\n				\"name\": \"基本信息\",\r\n				\"url\": \"/api/user/showuserinfo\"\r\n			},{\r\n				\"name\": \"详细信息\",\r\n				\"url\": \"/api/stu/moreinfo?type=show\"\r\n			},{\r\n				\"name\": \"信息修改\",\r\n				\"url\": \"/api/stu/moreinfo?type=change\"\r\n			},{\r\n				\"name\": \"密码修改\",\r\n				\"url\": \"/web/model?au=2&model=1&item=4\"\r\n			}\r\n		]\r\n	}, {\r\n		\"name\": \"在线报到\",\r\n		\"submenu\": [{\r\n				\"name\": \"在线报到\",\r\n				\"url\": \"/web/model?au=2&model=2&item=1\"\r\n			}\r\n		]\r\n	}\r\n]');
INSERT INTO `tb_authority` VALUES (3, 0, '[\r\n	{\r\n		\"name\": \"信息管理\",\r\n		\"submenu\": [{\r\n				\"name\": \"基本信息\",\r\n				\"url\": \"/api/user/showuserinfo\"\r\n			},{\r\n				\"name\": \"详细信息\",\r\n				\"url\": \"/api/user/moreinfo\"\r\n			},{\r\n				\"name\": \"信息修改\",\r\n				\"url\": \"/web/model?au=0&model=1&item=3\"\r\n			},{\r\n				\"name\": \"密码修改\",\r\n				\"url\": \"/web/model?au=0&model=1&item=4\"\r\n			}\r\n		]\r\n	}, {\r\n		\"name\": \"账户管理\",\r\n		\"submenu\": [{\r\n				\"name\": \"查询账户\",\r\n				\"url\": \"/api/user/showlist\"\r\n			},{\r\n				\"name\": \"添加账户\",\r\n				\"url\": \"/web/model?au=0&model=2&item=2\"\r\n			},{\r\n				\"name\": \"修改账户\",\r\n				\"url\": \"/web/model?au=0&model=2&item=3\"\r\n			},{\r\n				\"name\": \"删除账户\",\r\n				\"url\": \"/web/model?au=0&model=2&item=4\"\r\n			},{\r\n				\"name\": \"导入/导出\",\r\n				\"url\": \"/web/model?au=0&model=2&item=5\"\r\n			}\r\n		]\r\n	}, {\r\n		\"name\": \"公告管理\",\r\n		\"submenu\": [{\r\n				\"name\": \"查看公告\",\r\n				\"url\": \"/notice/showlist\"\r\n			}, {\r\n				\"name\": \"发布公告\",\r\n				\"url\": \"/web/model?au=0&model=3&item=2\"\r\n			}, {\r\n				\"name\": \"修改公告\",\r\n				\"url\": \"/web/model?au=0&model=3&item=3\"\r\n			}, {\r\n				\"name\": \"删除公告\",\r\n				\"url\": \"/web/model?au=0&model=3&item=4\"\r\n			}\r\n		]\r\n	}\r\n]');

-- ----------------------------
-- Table structure for tb_department
-- ----------------------------
DROP TABLE IF EXISTS `tb_department`;
CREATE TABLE `tb_department`  (
  `ID` int(3) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `DepartmentID` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '院系编号',
  `DepartmentName` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '院系名称',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '院系表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_department
-- ----------------------------
INSERT INTO `tb_department` VALUES (1, '002', '财会学院');
INSERT INTO `tb_department` VALUES (2, '003', '机器人工程学院');
INSERT INTO `tb_department` VALUES (3, '004', '交通工程学院');
INSERT INTO `tb_department` VALUES (4, '005', '机械工程学院');
INSERT INTO `tb_department` VALUES (5, '006', '电子电气工程学院');
INSERT INTO `tb_department` VALUES (6, '007', '经济管理学院');
INSERT INTO `tb_department` VALUES (7, '008', '动漫与数字艺术学院');
INSERT INTO `tb_department` VALUES (8, '009', '外语学院');
INSERT INTO `tb_department` VALUES (9, '010', '护理学院');
INSERT INTO `tb_department` VALUES (10, '001', '计算机工程学院');

-- ----------------------------
-- Table structure for tb_major
-- ----------------------------
DROP TABLE IF EXISTS `tb_major`;
CREATE TABLE `tb_major`  (
  `ID` int(3) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `MajorID` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '专业编号',
  `MajorName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专业名称',
  `DepartmentID` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '院系编号',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '专业表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_major
-- ----------------------------
INSERT INTO `tb_major` VALUES (1, '0001', '计算机科学与技术', '001');
INSERT INTO `tb_major` VALUES (2, '0002', '会计学', '002');
INSERT INTO `tb_major` VALUES (3, '0003', '机器人工程', '003');
INSERT INTO `tb_major` VALUES (4, '0004', '交通工程', '004');
INSERT INTO `tb_major` VALUES (5, '0005', '机械电子工程专业', '005');
INSERT INTO `tb_major` VALUES (6, '0006', '电气工程及其自动化', '006');
INSERT INTO `tb_major` VALUES (7, '0007', '市场营销', '007');
INSERT INTO `tb_major` VALUES (8, '0008', '数字媒体艺术', '008');
INSERT INTO `tb_major` VALUES (9, '0009', '商务英语', '009');
INSERT INTO `tb_major` VALUES (10, '0010', '护理学', '010');
INSERT INTO `tb_major` VALUES (11, '0011', '软件工程', '001');
INSERT INTO `tb_major` VALUES (12, '0012', '财务管理', '002');
INSERT INTO `tb_major` VALUES (13, '0013', '智能科学与技术', '003');
INSERT INTO `tb_major` VALUES (14, '0014', '安全工程', '004');
INSERT INTO `tb_major` VALUES (15, '0015', '机械设计制造及其自动化', '005');

-- ----------------------------
-- Table structure for tb_notice
-- ----------------------------
DROP TABLE IF EXISTS `tb_notice`;
CREATE TABLE `tb_notice`  (
  `NoticeID` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告编号',
  `NoticeTitle` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公告标题',
  `NoticeText` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '公告内容',
  `UserID` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发布人ID',
  `CreateData` datetime(0) NULL DEFAULT NULL COMMENT '发布时间',
  `ChangeDate` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`NoticeID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '公告信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_notice
-- ----------------------------
INSERT INTO `tb_notice` VALUES (1, '新生报到步骤', '1.进入高校新生报到系统网站首页\r\n2.点击登录，输入登录账号和密码，选择正确的用户类型，登录系统\r\n3.完善个人信息\r\n4.点击“在线报到”按钮就可以报到了\r\n', '001', '2014-10-13 11:06:47', '2019-04-21 22:29:21');
INSERT INTO `tb_notice` VALUES (2, '登录系统后请先修改默认密码', '为了账号安全，登录高校新生报到系统后，请务必修改默认密码\r\n修改步骤：点击“信息管理”->“密码修改”->输入当前密码和号修改的密码点击“修改”按钮\r\n注意：修改密码后要求重新登录账号！', '001', '2013-05-13 11:05:46', '2019-04-21 22:34:19');
INSERT INTO `tb_notice` VALUES (3, '查看公告不需要登录系统', '1、  打开高校新生报到管理系统\r\n2、  直接点击公告名称，或者点击更多公告就可以打开公告页面\r\n3、  在公告页面点击左侧的公告，右边就会出现对应的公告内容', '001', '2013-01-31 10:24:01', '2019-04-21 22:41:56');
INSERT INTO `tb_notice` VALUES (12, '测试长内容公告', '测试内容 测试内容 测试内容 测试内容 测试内容 测试内容 测试内容 测试内容 测试内容 测试内容\r\n测试内容 测试内容 测试内容 测试内容 测试内容 测试内容 测试内容 测试内容 测试内容 测试内容\r\n测试内容 测试内容 测试内容 测试内容 测试内容 测试内容 测试内容 测试内容 测试内容 测试内容\r\n测试内容 测试内容 测试内容 测试内容 测试内容 测试内容 测试内容 测试内容 测试内容 测试内容\r\n测试内容 测试内容 测试内容 测试内容 测试内容 测试内容 测试内容 测试内容 测试内容 测试内容', '001', '2019-04-09 20:06:42', '2019-04-21 22:42:52');
INSERT INTO `tb_notice` VALUES (14, '测试带格式公告', 'test test <b>test</b>', '001', '2019-04-09 21:43:10', '2019-04-21 22:44:31');
INSERT INTO `tb_notice` VALUES (15, '测试内容', '测试内容 测试内容 测试内容 测试内容', '001', '2019-04-09 22:24:27', '2019-04-09 22:24:27');
INSERT INTO `tb_notice` VALUES (16, 'wzxwzxwzx', 'wzx wzx wzx', 'wzx', '2019-04-13 13:33:08', '2019-04-13 13:33:08');

-- ----------------------------
-- Table structure for tb_studentinfo
-- ----------------------------
DROP TABLE IF EXISTS `tb_studentinfo`;
CREATE TABLE `tb_studentinfo`  (
  `ID` int(4) NOT NULL AUTO_INCREMENT COMMENT '学生编号',
  `StuId` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '学号',
  `Name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `Sex` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `DateOfBirth` date NULL DEFAULT NULL COMMENT '出生年月',
  `IDCard` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证号',
  `Nation` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '民族',
  `EnrollmentNumber` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '录取通知书编号',
  `NativePlace` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '籍贯',
  `Address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '家庭住址',
  `FormerSchool` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '原就读学校',
  `Tel` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `QQ` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'QQ账号',
  `Email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电子邮箱',
  `ParentName` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '家长姓名',
  `ParentTel` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '家长电话',
  `MajorID` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专业编号',
  `ClassID` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '班级编号',
  `DormitoryID` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '宿舍编号',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '学生信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_studentinfo
-- ----------------------------
INSERT INTO `tb_studentinfo` VALUES (3, '12', '王五', '女', '2019-03-06', '34290119562418', '汉族', 'qweqweqwe', '123123123', 'qweqweqweasda', 'qweasd', '134345456', '12312312', '123544@123.com', 'www', '1233434123', '0001', NULL, NULL);
INSERT INTO `tb_studentinfo` VALUES (5, '1801010048', '小华', '男', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_studentinfo` VALUES (7, '222', '222', '女', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `tb_studentinfo` VALUES (10, '1801010045', '小红', '女', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0001', NULL, NULL);
INSERT INTO `tb_studentinfo` VALUES (11, '1801010046', '小明', '男', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tb_teacherinfo
-- ----------------------------
DROP TABLE IF EXISTS `tb_teacherinfo`;
CREATE TABLE `tb_teacherinfo`  (
  `ID` int(4) NOT NULL AUTO_INCREMENT COMMENT '教师编号',
  `TeacherID` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '教师工号',
  `Name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `Sex` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `Title` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职称',
  `MajorID` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专业编号',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '教师信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_teacherinfo
-- ----------------------------
INSERT INTO `tb_teacherinfo` VALUES (2, '12', '李四', '男', '教授', '0001');

-- ----------------------------
-- Table structure for tb_userinfo
-- ----------------------------
DROP TABLE IF EXISTS `tb_userinfo`;
CREATE TABLE `tb_userinfo`  (
  `ID` int(4) NOT NULL AUTO_INCREMENT COMMENT '用户编号',
  `UserName` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名（学号/工号）',
  `StuId` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学号',
  `TeacherID` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教师工号',
  `UserPwd` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户密码',
  `Authority` int(1) NULL DEFAULT NULL COMMENT '用户权限',
  `UserStyle` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户类型（学生/教师/管理员）',
  `Name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '姓名',
  `Sex` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `RegisterStatic` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '报到状态（已报到/未报到）',
  PRIMARY KEY (`ID`, `UserName`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tb_userinfo
-- ----------------------------
INSERT INTO `tb_userinfo` VALUES (1, '001', '', '', '123', 0, '管理员', '张三', '女', '');
INSERT INTO `tb_userinfo` VALUES (2, '002', '', '12', '123', 1, '教师', '李四', '男', NULL);
INSERT INTO `tb_userinfo` VALUES (3, '003', '12', NULL, '123', 2, '学生', '王五', '女', '已报到');
INSERT INTO `tb_userinfo` VALUES (4, 'admin', NULL, NULL, 'admin', 0, '管理员', '小三', '男', NULL);
INSERT INTO `tb_userinfo` VALUES (5, '1801010045', '1801010045', '', '123', 2, '学生', '小红', '女', '未报到');
INSERT INTO `tb_userinfo` VALUES (6, '1801010046', '1801010046', '', '123', 2, '学生', '小明', '男', '已报到');
INSERT INTO `tb_userinfo` VALUES (7, 'wzx', '', '', 'wzx', 0, '管理员', '小飞雪', '女', NULL);
INSERT INTO `tb_userinfo` VALUES (8, 'wzs', '', '', 'wzs', 0, '管理员', 'wzs', '男', NULL);
INSERT INTO `tb_userinfo` VALUES (10, '222', '222', NULL, '222', 2, '学生', '222', '女', '未报到');
INSERT INTO `tb_userinfo` VALUES (12, '1801010048', '1801010048', NULL, '123', 2, '学生', '小华', '男', '未报到');

SET FOREIGN_KEY_CHECKS = 1;
