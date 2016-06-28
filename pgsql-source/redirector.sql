/*
Navicat PGSQL Data Transfer

Source Server         : uat
Source Server Version : 90405
Source Host           : 192.168.220.52:5432
Source Database       : redirector
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 90405
File Encoding         : 65001

Date: 2016-06-28 18:15:35
*/


-- ----------------------------
-- Sequence structure for t_shorturl_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_shorturl_iid_seq";
CREATE SEQUENCE "public"."t_shorturl_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 176
 CACHE 1;
SELECT setval('"public"."t_shorturl_iid_seq"', 176, true);

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
-- Table structure for t_shorturl
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_shorturl";
CREATE TABLE "public"."t_shorturl" (
"iid" int4 DEFAULT nextval('t_shorturl_iid_seq'::regclass) NOT NULL,
"curl" varchar(500) COLLATE "default",
"cshorturl" varchar(100) COLLATE "default",
"cshorturlcode" varchar(10) COLLATE "default",
"caid" varchar(100) COLLATE "default",
"ceid" varchar(100) COLLATE "default",
"itasktype" int4,
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_shorturl" IS '短连接表';
COMMENT ON COLUMN "public"."t_shorturl"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_shorturl"."curl" IS '原链接';
COMMENT ON COLUMN "public"."t_shorturl"."cshorturl" IS '短链接';
COMMENT ON COLUMN "public"."t_shorturl"."cshorturlcode" IS '短链接随机数';
COMMENT ON COLUMN "public"."t_shorturl"."caid" IS 'aid';
COMMENT ON COLUMN "public"."t_shorturl"."ceid" IS '任务id';
COMMENT ON COLUMN "public"."t_shorturl"."itasktype" IS '任务类型';
COMMENT ON COLUMN "public"."t_shorturl"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_visit_log
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_visit_log";
CREATE TABLE "public"."t_visit_log" (
"curl" varchar(500) COLLATE "default",
"cshorturlcode" varchar(10) COLLATE "default",
"caid" varchar(100) COLLATE "default",
"ctaskid" varchar(100) COLLATE "default",
"itasktype" int4,
"csource" varchar(500) COLLATE "default",
"cip" varchar(50) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_visit_log" IS '访问记录';
COMMENT ON COLUMN "public"."t_visit_log"."curl" IS 'url';
COMMENT ON COLUMN "public"."t_visit_log"."cshorturlcode" IS '短链接编码';
COMMENT ON COLUMN "public"."t_visit_log"."caid" IS 'AID';
COMMENT ON COLUMN "public"."t_visit_log"."ctaskid" IS '任务ID';
COMMENT ON COLUMN "public"."t_visit_log"."itasktype" IS '任务类型';
COMMENT ON COLUMN "public"."t_visit_log"."csource" IS '跳转来源';
COMMENT ON COLUMN "public"."t_visit_log"."cip" IS '客户访问IP';
COMMENT ON COLUMN "public"."t_visit_log"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------
ALTER SEQUENCE "public"."t_shorturl_iid_seq" OWNED BY "t_shorturl"."iid";

-- ----------------------------
-- Primary Key structure for table databasechangeloglock
-- ----------------------------
ALTER TABLE "public"."databasechangeloglock" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table t_shorturl
-- ----------------------------
CREATE INDEX "idx_cshorturl" ON "public"."t_shorturl" USING btree (cshorturlcode);

-- ----------------------------
-- Primary Key structure for table t_shorturl
-- ----------------------------
ALTER TABLE "public"."t_shorturl" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Indexes structure for table t_visit_log
-- ----------------------------
CREATE INDEX "idx_visit_log_caid_dcreatedate_code" ON "public"."t_visit_log" USING btree (caid, dcreatedate, cshorturlcode);
