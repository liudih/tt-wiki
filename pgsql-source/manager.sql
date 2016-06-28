/*
Navicat PGSQL Data Transfer

Source Server         : uat
Source Server Version : 90405
Source Host           : 192.168.220.52:5432
Source Database       : manager
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 90405
File Encoding         : 65001

Date: 2016-06-28 18:13:36
*/


-- ----------------------------
-- Sequence structure for t_admin_menu_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_admin_menu_iid_seq";
CREATE SEQUENCE "public"."t_admin_menu_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 36
 CACHE 1;
SELECT setval('"public"."t_admin_menu_iid_seq"', 36, true);

-- ----------------------------
-- Sequence structure for t_admin_menu_role_map_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_admin_menu_role_map_iid_seq";
CREATE SEQUENCE "public"."t_admin_menu_role_map_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1972
 CACHE 1;
SELECT setval('"public"."t_admin_menu_role_map_iid_seq"', 1972, true);

-- ----------------------------
-- Sequence structure for t_admin_role_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_admin_role_iid_seq";
CREATE SEQUENCE "public"."t_admin_role_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 9
 CACHE 1;
SELECT setval('"public"."t_admin_role_iid_seq"', 9, true);

-- ----------------------------
-- Sequence structure for t_admin_user_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_admin_user_iid_seq";
CREATE SEQUENCE "public"."t_admin_user_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 35
 CACHE 1;
SELECT setval('"public"."t_admin_user_iid_seq"', 35, true);

-- ----------------------------
-- Sequence structure for t_admin_user_role_map_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_admin_user_role_map_iid_seq";
CREATE SEQUENCE "public"."t_admin_user_role_map_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 162
 CACHE 1;
SELECT setval('"public"."t_admin_user_role_map_iid_seq"', 162, true);

-- ----------------------------
-- Sequence structure for t_admin_user_website_map_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_admin_user_website_map_iid_seq";
CREATE SEQUENCE "public"."t_admin_user_website_map_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 191
 CACHE 1;
SELECT setval('"public"."t_admin_user_website_map_iid_seq"', 191, true);

-- ----------------------------
-- Sequence structure for t_customer_service_schedule_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_customer_service_schedule_iid_seq";
CREATE SEQUENCE "public"."t_customer_service_schedule_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 18
 CACHE 1;
SELECT setval('"public"."t_customer_service_schedule_iid_seq"', 18, true);

-- ----------------------------
-- Sequence structure for t_customer_service_score_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_customer_service_score_iid_seq";
CREATE SEQUENCE "public"."t_customer_service_score_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for t_customer_service_score_type_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_customer_service_score_type_iid_seq";
CREATE SEQUENCE "public"."t_customer_service_score_type_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;
SELECT setval('"public"."t_customer_service_score_type_iid_seq"', 1, true);

-- ----------------------------
-- Sequence structure for t_livechat_leave_msg_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_livechat_leave_msg_iid_seq";
CREATE SEQUENCE "public"."t_livechat_leave_msg_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 4
 CACHE 1;
SELECT setval('"public"."t_livechat_leave_msg_iid_seq"', 4, true);

-- ----------------------------
-- Sequence structure for t_livechat_msg_info_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_livechat_msg_info_iid_seq";
CREATE SEQUENCE "public"."t_livechat_msg_info_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 61
 CACHE 1;
SELECT setval('"public"."t_livechat_msg_info_iid_seq"', 61, true);

-- ----------------------------
-- Sequence structure for t_livechat_welcome_sentence_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_livechat_welcome_sentence_iid_seq";
CREATE SEQUENCE "public"."t_livechat_welcome_sentence_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 3
 CACHE 1;
SELECT setval('"public"."t_livechat_welcome_sentence_iid_seq"', 3, true);

-- ----------------------------
-- Sequence structure for t_profession_skill_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_profession_skill_iid_seq";
CREATE SEQUENCE "public"."t_profession_skill_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 2
 CACHE 1;
SELECT setval('"public"."t_profession_skill_iid_seq"', 2, true);

-- ----------------------------
-- Sequence structure for t_profession_skill_topic_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_profession_skill_topic_iid_seq";
CREATE SEQUENCE "public"."t_profession_skill_topic_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 2
 CACHE 1;
SELECT setval('"public"."t_profession_skill_topic_iid_seq"', 2, true);

-- ----------------------------
-- Sequence structure for t_user_skill_map_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_user_skill_map_iid_seq";
CREATE SEQUENCE "public"."t_user_skill_map_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 26
 CACHE 1;
SELECT setval('"public"."t_user_skill_map_iid_seq"', 26, true);

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
-- Table structure for t_admin_menu
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_admin_menu";
CREATE TABLE "public"."t_admin_menu" (
"iid" int4 DEFAULT nextval('t_admin_menu_iid_seq'::regclass) NOT NULL,
"cname" varchar(30) COLLATE "default",
"iparentid" int4,
"ilevel" int4,
"cclass" varchar(18) COLLATE "default",
"curl" varchar(50) COLLATE "default",
"ccreateuser" varchar(20) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now(),
"cenname" varchar(40) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_admin_menu" IS '后台菜单表';
COMMENT ON COLUMN "public"."t_admin_menu"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_admin_menu"."cname" IS '菜单名称';
COMMENT ON COLUMN "public"."t_admin_menu"."iparentid" IS '父菜单编号';
COMMENT ON COLUMN "public"."t_admin_menu"."ilevel" IS '级别';
COMMENT ON COLUMN "public"."t_admin_menu"."cclass" IS '样式名称';
COMMENT ON COLUMN "public"."t_admin_menu"."curl" IS 'action路径';
COMMENT ON COLUMN "public"."t_admin_menu"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_admin_menu"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_admin_menu"."cenname" IS '菜单英文名称';

-- ----------------------------
-- Table structure for t_admin_menu_role_map
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_admin_menu_role_map";
CREATE TABLE "public"."t_admin_menu_role_map" (
"iid" int4 DEFAULT nextval('t_admin_menu_role_map_iid_seq'::regclass) NOT NULL,
"iroleid" int4,
"imenuid" int4,
"ccreateuser" varchar(20) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_admin_menu_role_map" IS '角色菜单对应表';
COMMENT ON COLUMN "public"."t_admin_menu_role_map"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_admin_menu_role_map"."iroleid" IS '角色编号';
COMMENT ON COLUMN "public"."t_admin_menu_role_map"."imenuid" IS '菜单编号';
COMMENT ON COLUMN "public"."t_admin_menu_role_map"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_admin_menu_role_map"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_admin_role
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_admin_role";
CREATE TABLE "public"."t_admin_role" (
"iid" int4 DEFAULT nextval('t_admin_role_iid_seq'::regclass) NOT NULL,
"crolename" varchar(20) COLLATE "default",
"ccreateuser" varchar(20) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_admin_role" IS '后台角色表';
COMMENT ON COLUMN "public"."t_admin_role"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_admin_role"."crolename" IS '角色名称';
COMMENT ON COLUMN "public"."t_admin_role"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_admin_role"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_admin_user
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_admin_user";
CREATE TABLE "public"."t_admin_user" (
"iid" int4 DEFAULT nextval('t_admin_user_iid_seq'::regclass) NOT NULL,
"cusername" varchar(20) COLLATE "default",
"cjobnumber" varchar(12) COLLATE "default",
"cpasswd" varchar(50) COLLATE "default",
"cemail" varchar(50) COLLATE "default",
"cphone" varchar(50) COLLATE "default",
"bwebsiteadmin" bool DEFAULT false,
"badmin" bool DEFAULT false,
"ccreateuser" varchar(20) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_admin_user" IS '后台用户表';
COMMENT ON COLUMN "public"."t_admin_user"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_admin_user"."cusername" IS '姓名';
COMMENT ON COLUMN "public"."t_admin_user"."cjobnumber" IS '工号';
COMMENT ON COLUMN "public"."t_admin_user"."cpasswd" IS '密码';
COMMENT ON COLUMN "public"."t_admin_user"."cemail" IS '邮箱';
COMMENT ON COLUMN "public"."t_admin_user"."cphone" IS '联系电话';
COMMENT ON COLUMN "public"."t_admin_user"."bwebsiteadmin" IS '是否平台管理员';
COMMENT ON COLUMN "public"."t_admin_user"."badmin" IS '是否超级管理员';
COMMENT ON COLUMN "public"."t_admin_user"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_admin_user"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_admin_user_role_map
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_admin_user_role_map";
CREATE TABLE "public"."t_admin_user_role_map" (
"iid" int4 DEFAULT nextval('t_admin_user_role_map_iid_seq'::regclass) NOT NULL,
"iuserid" int4,
"iroleid" int4,
"ccreateuser" varchar(20) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_admin_user_role_map" IS '后台用户角色对应表';
COMMENT ON COLUMN "public"."t_admin_user_role_map"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_admin_user_role_map"."iuserid" IS '用户编号';
COMMENT ON COLUMN "public"."t_admin_user_role_map"."iroleid" IS '角色编号';
COMMENT ON COLUMN "public"."t_admin_user_role_map"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_admin_user_role_map"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_admin_user_website_map
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_admin_user_website_map";
CREATE TABLE "public"."t_admin_user_website_map" (
"iid" int4 DEFAULT nextval('t_admin_user_website_map_iid_seq'::regclass) NOT NULL,
"iuserid" int4,
"iwebsiteid" int4,
"ccreateuser" varchar(20) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_admin_user_website_map" IS '后台用户站点对应表';
COMMENT ON COLUMN "public"."t_admin_user_website_map"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_admin_user_website_map"."iuserid" IS '用户编号';
COMMENT ON COLUMN "public"."t_admin_user_website_map"."iwebsiteid" IS '角色编号';
COMMENT ON COLUMN "public"."t_admin_user_website_map"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_admin_user_website_map"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_customer_service_schedule
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_customer_service_schedule";
CREATE TABLE "public"."t_customer_service_schedule" (
"iid" int4 DEFAULT nextval('t_customer_service_schedule_iid_seq'::regclass) NOT NULL,
"iuserid" int4,
"cdayofweek" varchar(12) COLLATE "default",
"dstartdate" timestamp(6),
"denddate" timestamp(6),
"iweekofyear" int4,
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_customer_service_schedule" IS '客服排班表';
COMMENT ON COLUMN "public"."t_customer_service_schedule"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_customer_service_schedule"."iuserid" IS '客服ID';
COMMENT ON COLUMN "public"."t_customer_service_schedule"."cdayofweek" IS '星期几';
COMMENT ON COLUMN "public"."t_customer_service_schedule"."dstartdate" IS '开始时间';
COMMENT ON COLUMN "public"."t_customer_service_schedule"."denddate" IS '结束时间';
COMMENT ON COLUMN "public"."t_customer_service_schedule"."iweekofyear" IS '一年的第几周';
COMMENT ON COLUMN "public"."t_customer_service_schedule"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_customer_service_score
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_customer_service_score";
CREATE TABLE "public"."t_customer_service_score" (
"iid" int4 DEFAULT nextval('t_customer_service_score_iid_seq'::regclass) NOT NULL,
"csessionid" varchar(100) COLLATE "default",
"ccustomerserviceltc" varchar(100) COLLATE "default",
"ccustomerltc" varchar(100) COLLATE "default",
"ccustomerservicealias" varchar(50) COLLATE "default",
"ccustomeralias" varchar(50) COLLATE "default",
"ccontent" varchar(1000) COLLATE "default",
"ctopic" varchar(100) COLLATE "default",
"itype" int4,
"iscore" int4,
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_customer_service_score" IS '客服评分类型表';
COMMENT ON COLUMN "public"."t_customer_service_score"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_customer_service_score"."csessionid" IS '客户客服唯一id';
COMMENT ON COLUMN "public"."t_customer_service_score"."ccustomerserviceltc" IS '客服LTC';
COMMENT ON COLUMN "public"."t_customer_service_score"."ccustomerltc" IS '客户LTC';
COMMENT ON COLUMN "public"."t_customer_service_score"."ccustomerservicealias" IS '客服名称';
COMMENT ON COLUMN "public"."t_customer_service_score"."ccustomeralias" IS '客户名称';
COMMENT ON COLUMN "public"."t_customer_service_score"."ccontent" IS '内容';
COMMENT ON COLUMN "public"."t_customer_service_score"."ctopic" IS '主题';
COMMENT ON COLUMN "public"."t_customer_service_score"."itype" IS '类型';
COMMENT ON COLUMN "public"."t_customer_service_score"."iscore" IS '分数';
COMMENT ON COLUMN "public"."t_customer_service_score"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_customer_service_score_type
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_customer_service_score_type";
CREATE TABLE "public"."t_customer_service_score_type" (
"iid" int4 DEFAULT nextval('t_customer_service_score_type_iid_seq'::regclass) NOT NULL,
"cname" varchar(40) COLLATE "default",
"cdescription" varchar(240) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now(),
"ilanguageid" int4,
"ipriority" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_customer_service_score_type" IS '客服评分类型表';
COMMENT ON COLUMN "public"."t_customer_service_score_type"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_customer_service_score_type"."cname" IS '名字';
COMMENT ON COLUMN "public"."t_customer_service_score_type"."cdescription" IS '描述';
COMMENT ON COLUMN "public"."t_customer_service_score_type"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_customer_service_score_type"."ilanguageid" IS '语言';
COMMENT ON COLUMN "public"."t_customer_service_score_type"."ipriority" IS '优先级';

-- ----------------------------
-- Table structure for t_livechat_leave_msg
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_livechat_leave_msg";
CREATE TABLE "public"."t_livechat_leave_msg" (
"iid" int4 DEFAULT nextval('t_livechat_leave_msg_iid_seq'::regclass) NOT NULL,
"cltc" varchar(100) COLLATE "default",
"ctopic" varchar(50) COLLATE "default",
"cip" varchar(100) COLLATE "default",
"cemail" varchar(50) COLLATE "default",
"ccontent" varchar(1000) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now(),
"ilanguageid" int4,
"chandler" varchar(40) COLLATE "default",
"bishandle" bool DEFAULT false,
"dhandledate" timestamp(6) DEFAULT now(),
"ipretreatmentid" int4,
"ireplyuserid" int4,
"creplycontent" varchar(2000) COLLATE "default",
"dreplydate" timestamp(6),
"calias" varchar(100) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_livechat_leave_msg" IS '客户livechat留言表';
COMMENT ON COLUMN "public"."t_livechat_leave_msg"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_livechat_leave_msg"."cltc" IS '客户LTC';
COMMENT ON COLUMN "public"."t_livechat_leave_msg"."ctopic" IS 'topic';
COMMENT ON COLUMN "public"."t_livechat_leave_msg"."cip" IS '客户IP';
COMMENT ON COLUMN "public"."t_livechat_leave_msg"."cemail" IS '客户邮箱';
COMMENT ON COLUMN "public"."t_livechat_leave_msg"."ccontent" IS '内容';
COMMENT ON COLUMN "public"."t_livechat_leave_msg"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_livechat_leave_msg"."ilanguageid" IS '语言';
COMMENT ON COLUMN "public"."t_livechat_leave_msg"."chandler" IS '处理人';
COMMENT ON COLUMN "public"."t_livechat_leave_msg"."bishandle" IS '是否处理';
COMMENT ON COLUMN "public"."t_livechat_leave_msg"."dhandledate" IS '处理时间';
COMMENT ON COLUMN "public"."t_livechat_leave_msg"."ipretreatmentid" IS '预处理人';
COMMENT ON COLUMN "public"."t_livechat_leave_msg"."ireplyuserid" IS '回复人';
COMMENT ON COLUMN "public"."t_livechat_leave_msg"."creplycontent" IS '回复内容';
COMMENT ON COLUMN "public"."t_livechat_leave_msg"."dreplydate" IS '回复时间';
COMMENT ON COLUMN "public"."t_livechat_leave_msg"."calias" IS '用户别名';

-- ----------------------------
-- Table structure for t_livechat_msg_info
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_livechat_msg_info";
CREATE TABLE "public"."t_livechat_msg_info" (
"iid" int4 DEFAULT nextval('t_livechat_msg_info_iid_seq'::regclass) NOT NULL,
"csessionid" varchar(100) COLLATE "default",
"cfromltc" varchar(100) COLLATE "default",
"ctoltc" varchar(100) COLLATE "default",
"cfromalias" varchar(50) COLLATE "default",
"ctoalias" varchar(50) COLLATE "default",
"ccontent" varchar(1000) COLLATE "default",
"ctopic" varchar(100) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_livechat_msg_info" IS 'livechat信息记录表，包括客户与客服信息';
COMMENT ON COLUMN "public"."t_livechat_msg_info"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_livechat_msg_info"."csessionid" IS '客户客服唯一id';
COMMENT ON COLUMN "public"."t_livechat_msg_info"."cfromltc" IS '来自于LTC';
COMMENT ON COLUMN "public"."t_livechat_msg_info"."ctoltc" IS '发送到LTC';
COMMENT ON COLUMN "public"."t_livechat_msg_info"."cfromalias" IS '名称';
COMMENT ON COLUMN "public"."t_livechat_msg_info"."ctoalias" IS '名称';
COMMENT ON COLUMN "public"."t_livechat_msg_info"."ccontent" IS '内容';
COMMENT ON COLUMN "public"."t_livechat_msg_info"."ctopic" IS '类型';
COMMENT ON COLUMN "public"."t_livechat_msg_info"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_livechat_welcome_sentence
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_livechat_welcome_sentence";
CREATE TABLE "public"."t_livechat_welcome_sentence" (
"iid" int4 DEFAULT nextval('t_livechat_welcome_sentence_iid_seq'::regclass) NOT NULL,
"ilanguageid" int4,
"cwelcomesentence" varchar(200) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_livechat_welcome_sentence" IS 'livechat欢迎语表';
COMMENT ON COLUMN "public"."t_livechat_welcome_sentence"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_livechat_welcome_sentence"."ilanguageid" IS '语言';
COMMENT ON COLUMN "public"."t_livechat_welcome_sentence"."cwelcomesentence" IS '欢迎语';

-- ----------------------------
-- Table structure for t_profession_skill
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_profession_skill";
CREATE TABLE "public"."t_profession_skill" (
"iid" int4 DEFAULT nextval('t_profession_skill_iid_seq'::regclass) NOT NULL,
"cskillname" varchar(50) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_profession_skill" IS '专业技能表';
COMMENT ON COLUMN "public"."t_profession_skill"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_profession_skill"."cskillname" IS '技能名称';
COMMENT ON COLUMN "public"."t_profession_skill"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_profession_skill_topic
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_profession_skill_topic";
CREATE TABLE "public"."t_profession_skill_topic" (
"iid" int4 DEFAULT nextval('t_profession_skill_topic_iid_seq'::regclass) NOT NULL,
"iskillid" int4,
"ilanguageid" int4,
"ctitle" varchar(150) COLLATE "default",
"cdescription" varchar(1500) COLLATE "default",
"benable" bool DEFAULT true,
"icreateuser" int4,
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_profession_skill_topic" IS '技能主题表';
COMMENT ON COLUMN "public"."t_profession_skill_topic"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_profession_skill_topic"."iskillid" IS '技能ID';
COMMENT ON COLUMN "public"."t_profession_skill_topic"."ilanguageid" IS '语言ID';
COMMENT ON COLUMN "public"."t_profession_skill_topic"."ctitle" IS '标题';
COMMENT ON COLUMN "public"."t_profession_skill_topic"."cdescription" IS '描述';
COMMENT ON COLUMN "public"."t_profession_skill_topic"."benable" IS '是否启用';
COMMENT ON COLUMN "public"."t_profession_skill_topic"."icreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_profession_skill_topic"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_user_skill_map
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_user_skill_map";
CREATE TABLE "public"."t_user_skill_map" (
"iid" int4 DEFAULT nextval('t_user_skill_map_iid_seq'::regclass) NOT NULL,
"iuserid" int4,
"cskilltype" varchar(20) COLLATE "default",
"iskillid" int4,
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_user_skill_map" IS '用户技能关系表';
COMMENT ON COLUMN "public"."t_user_skill_map"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_user_skill_map"."iuserid" IS '角色编号';
COMMENT ON COLUMN "public"."t_user_skill_map"."cskilltype" IS '技能类型';
COMMENT ON COLUMN "public"."t_user_skill_map"."iskillid" IS '技能ID';
COMMENT ON COLUMN "public"."t_user_skill_map"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------
ALTER SEQUENCE "public"."t_admin_menu_iid_seq" OWNED BY "t_admin_menu"."iid";
ALTER SEQUENCE "public"."t_admin_menu_role_map_iid_seq" OWNED BY "t_admin_menu_role_map"."iid";
ALTER SEQUENCE "public"."t_admin_role_iid_seq" OWNED BY "t_admin_role"."iid";
ALTER SEQUENCE "public"."t_admin_user_iid_seq" OWNED BY "t_admin_user"."iid";
ALTER SEQUENCE "public"."t_admin_user_role_map_iid_seq" OWNED BY "t_admin_user_role_map"."iid";
ALTER SEQUENCE "public"."t_admin_user_website_map_iid_seq" OWNED BY "t_admin_user_website_map"."iid";
ALTER SEQUENCE "public"."t_customer_service_schedule_iid_seq" OWNED BY "t_customer_service_schedule"."iid";
ALTER SEQUENCE "public"."t_customer_service_score_iid_seq" OWNED BY "t_customer_service_score"."iid";
ALTER SEQUENCE "public"."t_customer_service_score_type_iid_seq" OWNED BY "t_customer_service_score_type"."iid";
ALTER SEQUENCE "public"."t_livechat_leave_msg_iid_seq" OWNED BY "t_livechat_leave_msg"."iid";
ALTER SEQUENCE "public"."t_livechat_msg_info_iid_seq" OWNED BY "t_livechat_msg_info"."iid";
ALTER SEQUENCE "public"."t_livechat_welcome_sentence_iid_seq" OWNED BY "t_livechat_welcome_sentence"."iid";
ALTER SEQUENCE "public"."t_profession_skill_iid_seq" OWNED BY "t_profession_skill"."iid";
ALTER SEQUENCE "public"."t_profession_skill_topic_iid_seq" OWNED BY "t_profession_skill_topic"."iid";
ALTER SEQUENCE "public"."t_user_skill_map_iid_seq" OWNED BY "t_user_skill_map"."iid";

-- ----------------------------
-- Primary Key structure for table databasechangeloglock
-- ----------------------------
ALTER TABLE "public"."databasechangeloglock" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table t_admin_menu
-- ----------------------------
ALTER TABLE "public"."t_admin_menu" ADD UNIQUE ("cenname");

-- ----------------------------
-- Primary Key structure for table t_admin_menu
-- ----------------------------
ALTER TABLE "public"."t_admin_menu" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_admin_menu_role_map
-- ----------------------------
ALTER TABLE "public"."t_admin_menu_role_map" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_admin_role
-- ----------------------------
ALTER TABLE "public"."t_admin_role" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Uniques structure for table t_admin_user
-- ----------------------------
ALTER TABLE "public"."t_admin_user" ADD UNIQUE ("cjobnumber");
ALTER TABLE "public"."t_admin_user" ADD UNIQUE ("cusername");

-- ----------------------------
-- Primary Key structure for table t_admin_user
-- ----------------------------
ALTER TABLE "public"."t_admin_user" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_admin_user_role_map
-- ----------------------------
ALTER TABLE "public"."t_admin_user_role_map" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_admin_user_website_map
-- ----------------------------
ALTER TABLE "public"."t_admin_user_website_map" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_customer_service_schedule
-- ----------------------------
ALTER TABLE "public"."t_customer_service_schedule" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_customer_service_score
-- ----------------------------
ALTER TABLE "public"."t_customer_service_score" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_customer_service_score_type
-- ----------------------------
ALTER TABLE "public"."t_customer_service_score_type" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_livechat_leave_msg
-- ----------------------------
ALTER TABLE "public"."t_livechat_leave_msg" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_livechat_msg_info
-- ----------------------------
ALTER TABLE "public"."t_livechat_msg_info" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_livechat_welcome_sentence
-- ----------------------------
ALTER TABLE "public"."t_livechat_welcome_sentence" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_profession_skill
-- ----------------------------
ALTER TABLE "public"."t_profession_skill" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_profession_skill_topic
-- ----------------------------
ALTER TABLE "public"."t_profession_skill_topic" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_user_skill_map
-- ----------------------------
ALTER TABLE "public"."t_user_skill_map" ADD PRIMARY KEY ("iid");
