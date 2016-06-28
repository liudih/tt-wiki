/*
Navicat PGSQL Data Transfer

Source Server         : uat
Source Server Version : 90405
Source Host           : 192.168.220.52:5432
Source Database       : search
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 90405
File Encoding         : 65001

Date: 2016-06-28 18:15:51
*/


-- ----------------------------
-- Sequence structure for t_keyword_search_log_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_keyword_search_log_iid_seq";
CREATE SEQUENCE "public"."t_keyword_search_log_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 27011
 CACHE 1;
SELECT setval('"public"."t_keyword_search_log_iid_seq"', 27011, true);

-- ----------------------------
-- Sequence structure for t_keyword_suggest_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_keyword_suggest_iid_seq";
CREATE SEQUENCE "public"."t_keyword_suggest_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1198
 CACHE 1;
SELECT setval('"public"."t_keyword_suggest_iid_seq"', 1198, true);

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
-- Table structure for t_keyword_search_log
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_keyword_search_log";
CREATE TABLE "public"."t_keyword_search_log" (
"iid" int4 DEFAULT nextval('t_keyword_search_log_iid_seq'::regclass) NOT NULL,
"iwebsiteid" int4,
"ilanguageid" int4,
"ckeyword" varchar(500) COLLATE "default",
"iresults" int4,
"cltc" varchar(40) COLLATE "default",
"cstc" varchar(40) COLLATE "default",
"cip" varchar(40) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_keyword_search_log" IS '关键字查询记录';
COMMENT ON COLUMN "public"."t_keyword_search_log"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_keyword_search_log"."iwebsiteid" IS '站点编号';
COMMENT ON COLUMN "public"."t_keyword_search_log"."ilanguageid" IS '语言ID';
COMMENT ON COLUMN "public"."t_keyword_search_log"."ckeyword" IS '关键字';
COMMENT ON COLUMN "public"."t_keyword_search_log"."iresults" IS '结果数量';
COMMENT ON COLUMN "public"."t_keyword_search_log"."cltc" IS '长期跟踪Cookie: TT_LTC';
COMMENT ON COLUMN "public"."t_keyword_search_log"."cstc" IS '短期跟踪Cookie: TT_STC';
COMMENT ON COLUMN "public"."t_keyword_search_log"."cip" IS 'IP地址';
COMMENT ON COLUMN "public"."t_keyword_search_log"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_keyword_suggest
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_keyword_suggest";
CREATE TABLE "public"."t_keyword_suggest" (
"iid" int4 DEFAULT nextval('t_keyword_suggest_iid_seq'::regclass) NOT NULL,
"ckeyword" varchar(500) COLLATE "default",
"irank" int4,
"icategoryid" int4,
"ilanguageid" int4,
"iwebsiteid" int4,
"cinfo" varchar(100) COLLATE "default",
"iresults" int4,
"bmachine" bool,
"ccreateuser" varchar(20) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_keyword_suggest" IS '关键字推荐';
COMMENT ON COLUMN "public"."t_keyword_suggest"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_keyword_suggest"."ckeyword" IS '关键字';
COMMENT ON COLUMN "public"."t_keyword_suggest"."irank" IS '排行';
COMMENT ON COLUMN "public"."t_keyword_suggest"."icategoryid" IS '品类（如有）';
COMMENT ON COLUMN "public"."t_keyword_suggest"."ilanguageid" IS '语言ID';
COMMENT ON COLUMN "public"."t_keyword_suggest"."iwebsiteid" IS '站点ID';
COMMENT ON COLUMN "public"."t_keyword_suggest"."cinfo" IS '额外显示信息';
COMMENT ON COLUMN "public"."t_keyword_suggest"."iresults" IS '预期结果数量';
COMMENT ON COLUMN "public"."t_keyword_suggest"."bmachine" IS '是否机器产生';
COMMENT ON COLUMN "public"."t_keyword_suggest"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_keyword_suggest"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------
ALTER SEQUENCE "public"."t_keyword_search_log_iid_seq" OWNED BY "t_keyword_search_log"."iid";
ALTER SEQUENCE "public"."t_keyword_suggest_iid_seq" OWNED BY "t_keyword_suggest"."iid";

-- ----------------------------
-- Primary Key structure for table databasechangeloglock
-- ----------------------------
ALTER TABLE "public"."databasechangeloglock" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_keyword_search_log
-- ----------------------------
ALTER TABLE "public"."t_keyword_search_log" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Indexes structure for table t_keyword_suggest
-- ----------------------------
CREATE INDEX "idx_t_keyword_suggest_ckeyword" ON "public"."t_keyword_suggest" USING btree (ckeyword, ilanguageid, iwebsiteid);

-- ----------------------------
-- Primary Key structure for table t_keyword_suggest
-- ----------------------------
ALTER TABLE "public"."t_keyword_suggest" ADD PRIMARY KEY ("iid");
