/*
Navicat PGSQL Data Transfer

Source Server         : uat
Source Server Version : 90405
Source Host           : 192.168.220.52:5432
Source Database       : messaging
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 90405
File Encoding         : 65001

Date: 2016-06-28 18:14:12
*/


-- ----------------------------
-- Sequence structure for t_message_broadcast_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_message_broadcast_iid_seq";
CREATE SEQUENCE "public"."t_message_broadcast_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 12
 CACHE 1;
SELECT setval('"public"."t_message_broadcast_iid_seq"', 12, true);

-- ----------------------------
-- Sequence structure for t_message_info_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_message_info_iid_seq";
CREATE SEQUENCE "public"."t_message_info_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 292
 CACHE 1;
SELECT setval('"public"."t_message_info_iid_seq"', 292, true);

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
-- Table structure for t_message_broadcast
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_message_broadcast";
CREATE TABLE "public"."t_message_broadcast" (
"iid" int4 DEFAULT nextval('t_message_broadcast_iid_seq'::regclass) NOT NULL,
"iwebsiteid" int4,
"isendid" int4,
"cfrom" varchar(200) COLLATE "default",
"csubject" varchar(500) COLLATE "default",
"ccontent" varchar(8000) COLLATE "default",
"itype" int4,
"isendmethod" int4,
"dcreatedate" timestamp(6) DEFAULT now(),
"istatus" int4,
"imodifierid" int4,
"dmodifydate" timestamp(6)
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_message_broadcast" IS '广播表';
COMMENT ON COLUMN "public"."t_message_broadcast"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_message_broadcast"."iwebsiteid" IS 'Website ID';
COMMENT ON COLUMN "public"."t_message_broadcast"."isendid" IS '发送人ID';
COMMENT ON COLUMN "public"."t_message_broadcast"."cfrom" IS '消息来源';
COMMENT ON COLUMN "public"."t_message_broadcast"."csubject" IS '标题';
COMMENT ON COLUMN "public"."t_message_broadcast"."ccontent" IS '内容';
COMMENT ON COLUMN "public"."t_message_broadcast"."itype" IS '类型（订单状态变更 ，积分获取等等）';
COMMENT ON COLUMN "public"."t_message_broadcast"."isendmethod" IS '发送方式（系统发送，人工发送）';
COMMENT ON COLUMN "public"."t_message_broadcast"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_message_broadcast"."istatus" IS '3(推送)';
COMMENT ON COLUMN "public"."t_message_broadcast"."imodifierid" IS '修改人';
COMMENT ON COLUMN "public"."t_message_broadcast"."dmodifydate" IS '修改时间';

-- ----------------------------
-- Table structure for t_message_info
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_message_info";
CREATE TABLE "public"."t_message_info" (
"iid" int4 DEFAULT nextval('t_message_info_iid_seq'::regclass) NOT NULL,
"iwebsiteid" int4,
"isendid" int4,
"cfrom" varchar(200) COLLATE "default",
"csubject" varchar(500) COLLATE "default",
"ccontent" varchar(8000) COLLATE "default",
"itype" int4,
"istatus" int4,
"isendmethod" int4,
"dcreatedate" timestamp(6) DEFAULT now(),
"cemail" varchar(100) COLLATE "default",
"ibroadcastid" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_message_info" IS '消息表';
COMMENT ON COLUMN "public"."t_message_info"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_message_info"."iwebsiteid" IS 'Website ID';
COMMENT ON COLUMN "public"."t_message_info"."isendid" IS '发送人ID';
COMMENT ON COLUMN "public"."t_message_info"."cfrom" IS '消息来源';
COMMENT ON COLUMN "public"."t_message_info"."csubject" IS '标题';
COMMENT ON COLUMN "public"."t_message_info"."ccontent" IS '内容';
COMMENT ON COLUMN "public"."t_message_info"."itype" IS '类型（订单状态变更 ，积分获取等等）';
COMMENT ON COLUMN "public"."t_message_info"."istatus" IS '消息状态（1已读， 0未读）';
COMMENT ON COLUMN "public"."t_message_info"."isendmethod" IS '发送方式（系统发送，人工发送）';
COMMENT ON COLUMN "public"."t_message_info"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_message_info"."cemail" IS '用户邮箱';
COMMENT ON COLUMN "public"."t_message_info"."ibroadcastid" IS '外键t_message_broadcast表iid';

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------
ALTER SEQUENCE "public"."t_message_broadcast_iid_seq" OWNED BY "t_message_broadcast"."iid";
ALTER SEQUENCE "public"."t_message_info_iid_seq" OWNED BY "t_message_info"."iid";

-- ----------------------------
-- Primary Key structure for table databasechangeloglock
-- ----------------------------
ALTER TABLE "public"."databasechangeloglock" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_message_broadcast
-- ----------------------------
ALTER TABLE "public"."t_message_broadcast" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_message_info
-- ----------------------------
ALTER TABLE "public"."t_message_info" ADD PRIMARY KEY ("iid");
