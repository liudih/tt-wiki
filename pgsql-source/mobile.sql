/*
Navicat PGSQL Data Transfer

Source Server         : uat
Source Server Version : 90405
Source Host           : 192.168.220.52:5432
Source Database       : mobile
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 90405
File Encoding         : 65001

Date: 2016-06-28 18:14:21
*/


-- ----------------------------
-- Sequence structure for t_app_version_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_app_version_iid_seq";
CREATE SEQUENCE "public"."t_app_version_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for t_contact_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_contact_iid_seq";
CREATE SEQUENCE "public"."t_contact_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 35
 CACHE 1;
SELECT setval('"public"."t_contact_iid_seq"', 35, true);

-- ----------------------------
-- Sequence structure for t_interest_tag_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_interest_tag_iid_seq";
CREATE SEQUENCE "public"."t_interest_tag_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 400
 CACHE 1;
SELECT setval('"public"."t_interest_tag_iid_seq"', 400, true);

-- ----------------------------
-- Sequence structure for t_mobile_client_error_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_mobile_client_error_iid_seq";
CREATE SEQUENCE "public"."t_mobile_client_error_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for t_mobile_visit_log_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_mobile_visit_log_iid_seq";
CREATE SEQUENCE "public"."t_mobile_visit_log_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 233070
 CACHE 1;
SELECT setval('"public"."t_mobile_visit_log_iid_seq"', 233070, true);

-- ----------------------------
-- Sequence structure for t_setting_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_setting_iid_seq";
CREATE SEQUENCE "public"."t_setting_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 143
 CACHE 1;
SELECT setval('"public"."t_setting_iid_seq"', 143, true);

-- ----------------------------
-- Sequence structure for t_tag_type_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_tag_type_iid_seq";
CREATE SEQUENCE "public"."t_tag_type_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 7
 CACHE 1;
SELECT setval('"public"."t_tag_type_iid_seq"', 7, true);

-- ----------------------------
-- Table structure for databasechangelog
-- ----------------------------
DROP TABLE IF EXISTS "public"."databasechangelog";
CREATE TABLE "public"."databasechangelog" (
"id" varchar(255) COLLATE "default" NOT NULL,
"author" varchar(255) COLLATE "default" NOT NULL,
"filename" varchar(255) COLLATE "default" NOT NULL,
"dateexecuted" timestamp(6) NOT NULL,
"orderexecuted" int4 NOT NULL,
"exectype" varchar(10) COLLATE "default" NOT NULL,
"md5sum" varchar(35) COLLATE "default",
"description" varchar(255) COLLATE "default",
"comments" varchar(255) COLLATE "default",
"tag" varchar(255) COLLATE "default",
"liquibase" varchar(20) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for databasechangeloglock
-- ----------------------------
DROP TABLE IF EXISTS "public"."databasechangeloglock";
CREATE TABLE "public"."databasechangeloglock" (
"id" int4 NOT NULL,
"locked" bool NOT NULL,
"lockgranted" timestamp(6),
"lockedby" varchar(255) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for t_app_version
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_app_version";
CREATE TABLE "public"."t_app_version" (
"iid" int4 DEFAULT nextval('t_app_version_iid_seq'::regclass) NOT NULL,
"vs" varchar(30) COLLATE "default",
"vid" int4,
"descr" varchar(100) COLLATE "default",
"durl" varchar(100) COLLATE "default",
"createdate" timestamp(6) DEFAULT now(),
"createuser" varchar(20) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_app_version" IS 'APP版本表';
COMMENT ON COLUMN "public"."t_app_version"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_app_version"."vs" IS '版本编号';
COMMENT ON COLUMN "public"."t_app_version"."vid" IS '版本ID,版本越高，id越大';
COMMENT ON COLUMN "public"."t_app_version"."descr" IS '最新版本描述';
COMMENT ON COLUMN "public"."t_app_version"."durl" IS '下载地址';
COMMENT ON COLUMN "public"."t_app_version"."createdate" IS '创建时间';
COMMENT ON COLUMN "public"."t_app_version"."createuser" IS '创建人';

-- ----------------------------
-- Table structure for t_contact
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_contact";
CREATE TABLE "public"."t_contact" (
"iid" int4 DEFAULT nextval('t_contact_iid_seq'::regclass) NOT NULL,
"memberemail" varchar(30) COLLATE "default",
"uuid" varchar(100) COLLATE "default",
"title" varchar(50) COLLATE "default",
"content" varchar(1000) COLLATE "default",
"createdate" timestamp(6) DEFAULT now(),
"device" varchar(20) COLLATE "default",
"sysversion" varchar(32) COLLATE "default",
"imei" varchar(60) COLLATE "default",
"phonename" varchar(128) COLLATE "default",
"languageid" varchar(32) COLLATE "default",
"currentversion" varchar(32) COLLATE "default",
"status" int4,
"operationuser" varchar(20) COLLATE "default",
"operationdate" timestamp(6) DEFAULT now(),
"remark" varchar(20) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_contact" IS '联系我表';
COMMENT ON COLUMN "public"."t_contact"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_contact"."memberemail" IS '客户邮箱';
COMMENT ON COLUMN "public"."t_contact"."uuid" IS 'UUID';
COMMENT ON COLUMN "public"."t_contact"."title" IS '标题';
COMMENT ON COLUMN "public"."t_contact"."content" IS '内容';
COMMENT ON COLUMN "public"."t_contact"."createdate" IS '创建时间';
COMMENT ON COLUMN "public"."t_contact"."device" IS '平台1:android 2:ios 3:wp';
COMMENT ON COLUMN "public"."t_contact"."sysversion" IS '系统版本';
COMMENT ON COLUMN "public"."t_contact"."imei" IS '手机串码';
COMMENT ON COLUMN "public"."t_contact"."phonename" IS '手机型号';
COMMENT ON COLUMN "public"."t_contact"."languageid" IS '语言标识';
COMMENT ON COLUMN "public"."t_contact"."currentversion" IS '手机版本';
COMMENT ON COLUMN "public"."t_contact"."status" IS '状态：如 1:未处理、2:已处理';
COMMENT ON COLUMN "public"."t_contact"."operationuser" IS '处理人';
COMMENT ON COLUMN "public"."t_contact"."operationdate" IS '处理时间';
COMMENT ON COLUMN "public"."t_contact"."remark" IS '备注';

-- ----------------------------
-- Table structure for t_interest_tag
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_interest_tag";
CREATE TABLE "public"."t_interest_tag" (
"iid" int4 DEFAULT nextval('t_interest_tag_iid_seq'::regclass) NOT NULL,
"tagid" int4,
"sysversion" varchar(32) COLLATE "default",
"imei" varchar(60) COLLATE "default",
"phonename" varchar(128) COLLATE "default",
"appid" int4,
"cremoteaddress" varchar(17) COLLATE "default",
"createdate" timestamp(6) DEFAULT now(),
"status" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_interest_tag" IS '用户设置的感兴趣的商品类别';
COMMENT ON COLUMN "public"."t_interest_tag"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_interest_tag"."tagid" IS '标签ID';
COMMENT ON COLUMN "public"."t_interest_tag"."sysversion" IS '系统版本';
COMMENT ON COLUMN "public"."t_interest_tag"."imei" IS '手机串码';
COMMENT ON COLUMN "public"."t_interest_tag"."phonename" IS '手机型号';
COMMENT ON COLUMN "public"."t_interest_tag"."appid" IS 'AppId';
COMMENT ON COLUMN "public"."t_interest_tag"."cremoteaddress" IS '客户端ip';
COMMENT ON COLUMN "public"."t_interest_tag"."createdate" IS '处理时间';
COMMENT ON COLUMN "public"."t_interest_tag"."status" IS '状态   1.启用状态 , 0。删除状态';

-- ----------------------------
-- Table structure for t_mobile_client_error_log
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_mobile_client_error_log";
CREATE TABLE "public"."t_mobile_client_error_log" (
"iid" int4 DEFAULT nextval('t_mobile_client_error_iid_seq'::regclass) NOT NULL,
"icode" int4,
"cerrormsg" varchar(300) COLLATE "default",
"cremoteaddress" varchar(17) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now(),
"csysversion" varchar(32) COLLATE "default",
"cphonename" varchar(128) COLLATE "default",
"iappid" int4,
"icurrentversion" int4,
"cnetwork" varchar(32) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_mobile_client_error_log" IS '移动客户端出错异常日志表';
COMMENT ON COLUMN "public"."t_mobile_client_error_log"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_mobile_client_error_log"."icode" IS '错误代码';
COMMENT ON COLUMN "public"."t_mobile_client_error_log"."cerrormsg" IS '错误消息';
COMMENT ON COLUMN "public"."t_mobile_client_error_log"."cremoteaddress" IS '客户端ip地址';
COMMENT ON COLUMN "public"."t_mobile_client_error_log"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_mobile_client_error_log"."csysversion" IS '系统版本';
COMMENT ON COLUMN "public"."t_mobile_client_error_log"."cphonename" IS '手机型号';
COMMENT ON COLUMN "public"."t_mobile_client_error_log"."iappid" IS 'AppId';
COMMENT ON COLUMN "public"."t_mobile_client_error_log"."icurrentversion" IS '当前版本';
COMMENT ON COLUMN "public"."t_mobile_client_error_log"."cnetwork" IS '网络状态';

-- ----------------------------
-- Table structure for t_mobile_visit_log
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_mobile_visit_log";
CREATE TABLE "public"."t_mobile_visit_log" (
"iid" int4 DEFAULT nextval('t_mobile_visit_log_iid_seq'::regclass) NOT NULL,
"iplatform" int4,
"csysversion" varchar(32) COLLATE "default",
"cimei" varchar(64) COLLATE "default",
"cphonename" varchar(128) COLLATE "default",
"iappid" int4,
"ccid" varchar(64) COLLATE "default",
"ilanguageid" int4,
"cnetwork" varchar(32) COLLATE "default",
"icurrentversion" int4,
"cclientid" varchar(32) COLLATE "default",
"iconsumetime" int4,
"crequesturi" varchar(500) COLLATE "default",
"cremoteaddress" varchar(17) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_mobile_visit_log" IS '移动客户端访问日志表';
COMMENT ON COLUMN "public"."t_mobile_visit_log"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_mobile_visit_log"."iplatform" IS '平台1:android 2:ios 3:wp';
COMMENT ON COLUMN "public"."t_mobile_visit_log"."csysversion" IS '系统版本';
COMMENT ON COLUMN "public"."t_mobile_visit_log"."cimei" IS '手机串码';
COMMENT ON COLUMN "public"."t_mobile_visit_log"."cphonename" IS '手机型号';
COMMENT ON COLUMN "public"."t_mobile_visit_log"."iappid" IS 'AppId';
COMMENT ON COLUMN "public"."t_mobile_visit_log"."ccid" IS '渠道号';
COMMENT ON COLUMN "public"."t_mobile_visit_log"."ilanguageid" IS '语言标识';
COMMENT ON COLUMN "public"."t_mobile_visit_log"."cnetwork" IS '网络状态';
COMMENT ON COLUMN "public"."t_mobile_visit_log"."icurrentversion" IS '当前版本';
COMMENT ON COLUMN "public"."t_mobile_visit_log"."cclientid" IS '客户端id';
COMMENT ON COLUMN "public"."t_mobile_visit_log"."iconsumetime" IS '访问消耗时间(毫秒)';
COMMENT ON COLUMN "public"."t_mobile_visit_log"."crequesturi" IS '请求资源';
COMMENT ON COLUMN "public"."t_mobile_visit_log"."cremoteaddress" IS '客户端ip';
COMMENT ON COLUMN "public"."t_mobile_visit_log"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_setting
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_setting";
CREATE TABLE "public"."t_setting" (
"iid" int4 DEFAULT nextval('t_setting_iid_seq'::regclass) NOT NULL,
"memberemail" varchar(100) COLLATE "default",
"uuid" varchar(100) COLLATE "default",
"modifydate" timestamp(6) DEFAULT now(),
"device" varchar(20) COLLATE "default",
"currentversion" varchar(32) COLLATE "default",
"imei" varchar(32) COLLATE "default",
"country" varchar(32) COLLATE "default",
"countryid" varchar(32) COLLATE "default",
"currency" varchar(32) COLLATE "default",
"currencyid" varchar(32) COLLATE "default",
"language" varchar(32) COLLATE "default",
"languageid" varchar(32) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_setting" IS '设置表';
COMMENT ON COLUMN "public"."t_setting"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_setting"."memberemail" IS '客户邮箱';
COMMENT ON COLUMN "public"."t_setting"."uuid" IS 'UUID';
COMMENT ON COLUMN "public"."t_setting"."modifydate" IS '修改时间';
COMMENT ON COLUMN "public"."t_setting"."device" IS '平台1:android 2:ios 3:wp';
COMMENT ON COLUMN "public"."t_setting"."currentversion" IS '手机版本';
COMMENT ON COLUMN "public"."t_setting"."imei" IS '手机串码';
COMMENT ON COLUMN "public"."t_setting"."country" IS '国家名称';
COMMENT ON COLUMN "public"."t_setting"."countryid" IS '国家id';
COMMENT ON COLUMN "public"."t_setting"."currency" IS '货币名称';
COMMENT ON COLUMN "public"."t_setting"."currencyid" IS '货币id';
COMMENT ON COLUMN "public"."t_setting"."language" IS '语言名称';
COMMENT ON COLUMN "public"."t_setting"."languageid" IS '语言id';

-- ----------------------------
-- Table structure for t_tag_type
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_tag_type";
CREATE TABLE "public"."t_tag_type" (
"iid" int4 DEFAULT nextval('t_tag_type_iid_seq'::regclass) NOT NULL,
"tagname" varchar(100) COLLATE "default",
"tagvalue" varchar(32) COLLATE "default",
"tagtype" int4,
"lang" int4,
"operator" varchar(32) COLLATE "default",
"createdate" timestamp(6) DEFAULT now(),
"status" int4,
"imgurl" varchar(100) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_tag_type" IS '用户设置的感兴趣的商品类别';
COMMENT ON COLUMN "public"."t_tag_type"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_tag_type"."tagname" IS '标签名称';
COMMENT ON COLUMN "public"."t_tag_type"."tagvalue" IS '标签值';
COMMENT ON COLUMN "public"."t_tag_type"."tagtype" IS '标签类别';
COMMENT ON COLUMN "public"."t_tag_type"."lang" IS '语言';
COMMENT ON COLUMN "public"."t_tag_type"."operator" IS '处理时间';
COMMENT ON COLUMN "public"."t_tag_type"."createdate" IS '处理时间';
COMMENT ON COLUMN "public"."t_tag_type"."status" IS '状态   1.启用状态 , 0。休眠状态';
COMMENT ON COLUMN "public"."t_tag_type"."imgurl" IS '图标地址';

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------
ALTER SEQUENCE "public"."t_app_version_iid_seq" OWNED BY "t_app_version"."iid";
ALTER SEQUENCE "public"."t_contact_iid_seq" OWNED BY "t_contact"."iid";
ALTER SEQUENCE "public"."t_interest_tag_iid_seq" OWNED BY "t_interest_tag"."iid";
ALTER SEQUENCE "public"."t_mobile_client_error_iid_seq" OWNED BY "t_mobile_client_error_log"."iid";
ALTER SEQUENCE "public"."t_mobile_visit_log_iid_seq" OWNED BY "t_mobile_visit_log"."iid";
ALTER SEQUENCE "public"."t_setting_iid_seq" OWNED BY "t_setting"."iid";
ALTER SEQUENCE "public"."t_tag_type_iid_seq" OWNED BY "t_tag_type"."iid";

-- ----------------------------
-- Primary Key structure for table databasechangeloglock
-- ----------------------------
ALTER TABLE "public"."databasechangeloglock" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_app_version
-- ----------------------------
ALTER TABLE "public"."t_app_version" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_contact
-- ----------------------------
ALTER TABLE "public"."t_contact" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_interest_tag
-- ----------------------------
ALTER TABLE "public"."t_interest_tag" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_mobile_client_error_log
-- ----------------------------
ALTER TABLE "public"."t_mobile_client_error_log" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_mobile_visit_log
-- ----------------------------
ALTER TABLE "public"."t_mobile_visit_log" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_setting
-- ----------------------------
ALTER TABLE "public"."t_setting" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_tag_type
-- ----------------------------
ALTER TABLE "public"."t_tag_type" ADD PRIMARY KEY ("iid");
