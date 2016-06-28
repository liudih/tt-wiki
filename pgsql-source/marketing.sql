/*
Navicat PGSQL Data Transfer

Source Server         : uat
Source Server Version : 90405
Source Host           : 192.168.220.52:5432
Source Database       : marketing
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 90405
File Encoding         : 65001

Date: 2016-06-28 18:13:49
*/


-- ----------------------------
-- Sequence structure for t_page_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_page_iid_seq";
CREATE SEQUENCE "public"."t_page_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 26
 CACHE 1;
SELECT setval('"public"."t_page_iid_seq"', 26, true);

-- ----------------------------
-- Sequence structure for t_page_item_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_page_item_iid_seq";
CREATE SEQUENCE "public"."t_page_item_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 55
 CACHE 1;
SELECT setval('"public"."t_page_item_iid_seq"', 55, true);

-- ----------------------------
-- Sequence structure for t_page_item_name_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_page_item_name_iid_seq";
CREATE SEQUENCE "public"."t_page_item_name_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 27
 CACHE 1;
SELECT setval('"public"."t_page_item_name_iid_seq"', 27, true);

-- ----------------------------
-- Sequence structure for t_page_join_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_page_join_iid_seq";
CREATE SEQUENCE "public"."t_page_join_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 750
 CACHE 1;
SELECT setval('"public"."t_page_join_iid_seq"', 750, true);

-- ----------------------------
-- Sequence structure for t_page_prize_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_page_prize_iid_seq";
CREATE SEQUENCE "public"."t_page_prize_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 17
 CACHE 1;
SELECT setval('"public"."t_page_prize_iid_seq"', 17, true);

-- ----------------------------
-- Sequence structure for t_page_prize_result_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_page_prize_result_iid_seq";
CREATE SEQUENCE "public"."t_page_prize_result_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 587
 CACHE 1;
SELECT setval('"public"."t_page_prize_result_iid_seq"', 587, true);

-- ----------------------------
-- Sequence structure for t_page_qualification_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_page_qualification_iid_seq";
CREATE SEQUENCE "public"."t_page_qualification_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 27
 CACHE 1;
SELECT setval('"public"."t_page_qualification_iid_seq"', 27, true);

-- ----------------------------
-- Sequence structure for t_page_rule_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_page_rule_iid_seq";
CREATE SEQUENCE "public"."t_page_rule_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 9
 CACHE 1;
SELECT setval('"public"."t_page_rule_iid_seq"', 9, true);

-- ----------------------------
-- Sequence structure for t_page_title_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_page_title_iid_seq";
CREATE SEQUENCE "public"."t_page_title_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 192
 CACHE 1;
SELECT setval('"public"."t_page_title_iid_seq"', 192, true);

-- ----------------------------
-- Sequence structure for t_vote_record_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_vote_record_iid_seq";
CREATE SEQUENCE "public"."t_vote_record_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 9
 CACHE 1;
SELECT setval('"public"."t_vote_record_iid_seq"', 9, true);

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
-- Table structure for t_page
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_page";
CREATE TABLE "public"."t_page" (
"iid" int4 DEFAULT nextval('t_page_iid_seq'::regclass) NOT NULL,
"curl" varchar(255) COLLATE "default" NOT NULL,
"itype" int4 DEFAULT 0,
"cbannerurl" varchar(255) COLLATE "default",
"iwebsiteid" int4,
"crecommendvalues" varchar(200) COLLATE "default",
"ccreateuser" varchar(30) COLLATE "default" DEFAULT '-'::character varying,
"dcreatedate" timestamp(6) DEFAULT now(),
"cupdateuser" varchar(30) COLLATE "default" DEFAULT '-'::character varying,
"dupdatedate" timestamp(6) DEFAULT now(),
"ienable" int4 DEFAULT 0,
"denablestartdate" timestamp(6) DEFAULT now(),
"denableenddate" timestamp(6) DEFAULT now(),
"itemplateid" int4 DEFAULT 0
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_page" IS '页面表';
COMMENT ON COLUMN "public"."t_page"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_page"."curl" IS '页面地址url';
COMMENT ON COLUMN "public"."t_page"."itype" IS '页面类型,0产品投票，1类目投票，2活动投票，3喜好投票';
COMMENT ON COLUMN "public"."t_page"."cbannerurl" IS '广告url';
COMMENT ON COLUMN "public"."t_page"."iwebsiteid" IS '站点id';
COMMENT ON COLUMN "public"."t_page"."crecommendvalues" IS '推荐的值，以，区分多个';
COMMENT ON COLUMN "public"."t_page"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_page"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_page"."cupdateuser" IS '修改人';
COMMENT ON COLUMN "public"."t_page"."dupdatedate" IS '修改时间';
COMMENT ON COLUMN "public"."t_page"."ienable" IS '是否启用,0为不启动，1为启动';
COMMENT ON COLUMN "public"."t_page"."denablestartdate" IS '启用起始时间';
COMMENT ON COLUMN "public"."t_page"."denableenddate" IS '启用结束时间';
COMMENT ON COLUMN "public"."t_page"."itemplateid" IS '活动模板编号';

-- ----------------------------
-- Table structure for t_page_item
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_page_item";
CREATE TABLE "public"."t_page_item" (
"iid" int4 DEFAULT nextval('t_page_item_iid_seq'::regclass) NOT NULL,
"ipageid" int4 NOT NULL,
"cvalue" varchar(30) COLLATE "default",
"cimgurl" varchar(255) COLLATE "default",
"cimgtargeturl" varchar(255) COLLATE "default",
"ipriority" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_page_item" IS '页面子项表';
COMMENT ON COLUMN "public"."t_page_item"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_page_item"."ipageid" IS '页面id';
COMMENT ON COLUMN "public"."t_page_item"."cvalue" IS '页面子项的值';
COMMENT ON COLUMN "public"."t_page_item"."cimgurl" IS '页面子项图片的url';
COMMENT ON COLUMN "public"."t_page_item"."cimgtargeturl" IS '页面子项图片跳转目标url';
COMMENT ON COLUMN "public"."t_page_item"."ipriority" IS '优先级';

-- ----------------------------
-- Table structure for t_page_item_name
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_page_item_name";
CREATE TABLE "public"."t_page_item_name" (
"iid" int4 DEFAULT nextval('t_page_item_name_iid_seq'::regclass) NOT NULL,
"ipageitemid" int4 NOT NULL,
"cname" varchar(200) COLLATE "default" DEFAULT ' '::character varying,
"ilanguageid" int4 DEFAULT 1
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_page_item_name" IS '页面子项名称(支持国际化)';
COMMENT ON COLUMN "public"."t_page_item_name"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_page_item_name"."ipageitemid" IS '页面子项的id';
COMMENT ON COLUMN "public"."t_page_item_name"."cname" IS '名称';
COMMENT ON COLUMN "public"."t_page_item_name"."ilanguageid" IS '语言id';

-- ----------------------------
-- Table structure for t_page_join
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_page_join";
CREATE TABLE "public"."t_page_join" (
"iid" int4 DEFAULT nextval('t_page_join_iid_seq'::regclass) NOT NULL,
"ipageid" int4,
"cjoiner" varchar(100) COLLATE "default",
"cjoinparam" varchar(250) COLLATE "default",
"iwebsiteid" varchar(250) COLLATE "default",
"cvhost" varchar(50) COLLATE "default",
"ccountry" varchar(50) COLLATE "default",
"cresult" varchar(250) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_page_join" IS '活动参与记录表';
COMMENT ON COLUMN "public"."t_page_join"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_page_join"."ipageid" IS '页面(t_page)的id';
COMMENT ON COLUMN "public"."t_page_join"."cjoiner" IS '参与者';
COMMENT ON COLUMN "public"."t_page_join"."cjoinparam" IS '參與信息可以(json)';
COMMENT ON COLUMN "public"."t_page_join"."iwebsiteid" IS '站点';
COMMENT ON COLUMN "public"."t_page_join"."cvhost" IS '子站点';
COMMENT ON COLUMN "public"."t_page_join"."ccountry" IS '国家';
COMMENT ON COLUMN "public"."t_page_join"."cresult" IS '活动结果';
COMMENT ON COLUMN "public"."t_page_join"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_page_prize
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_page_prize";
CREATE TABLE "public"."t_page_prize" (
"iid" int4 DEFAULT nextval('t_page_prize_iid_seq'::regclass) NOT NULL,
"ipageid" int4,
"cname" varchar(50) COLLATE "default",
"ctype" varchar(250) COLLATE "default",
"ctypeparam" varchar(250) COLLATE "default",
"ccreateuser" varchar(30) COLLATE "default" DEFAULT '-'::character varying,
"dcreatedate" timestamp(6) DEFAULT now(),
"ienable" int4 DEFAULT 0,
"isort" int4 DEFAULT 1,
"cextraparam" varchar(250) COLLATE "default",
"iruleid" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_page_prize" IS '页面抽奖奖品表';
COMMENT ON COLUMN "public"."t_page_prize"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_page_prize"."ipageid" IS '页面(t_page)的id';
COMMENT ON COLUMN "public"."t_page_prize"."cname" IS '奖品名称';
COMMENT ON COLUMN "public"."t_page_prize"."ctype" IS '奖品类型';
COMMENT ON COLUMN "public"."t_page_prize"."ctypeparam" IS '奖品类型参数';
COMMENT ON COLUMN "public"."t_page_prize"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_page_prize"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_page_prize"."ienable" IS '是否启用,0为不启动，1为启动';
COMMENT ON COLUMN "public"."t_page_prize"."isort" IS '排序';
COMMENT ON COLUMN "public"."t_page_prize"."cextraparam" IS '额外参数';

-- ----------------------------
-- Table structure for t_page_prize_result
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_page_prize_result";
CREATE TABLE "public"."t_page_prize_result" (
"iid" int4 DEFAULT nextval('t_page_prize_result_iid_seq'::regclass) NOT NULL,
"ipageid" int4,
"cemail" varchar(100) COLLATE "default",
"iprizeid" int4,
"cprizevalue" varchar(255) COLLATE "default",
"ccountry" varchar(250) COLLATE "default",
"iwebsiteid" int4,
"cvhost" varchar(255) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_page_prize_result" IS '页面奖品统计报表';
COMMENT ON COLUMN "public"."t_page_prize_result"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_page_prize_result"."ipageid" IS '页面(t_page)的id';
COMMENT ON COLUMN "public"."t_page_prize_result"."cemail" IS '用户email';
COMMENT ON COLUMN "public"."t_page_prize_result"."iprizeid" IS '奖品编号Id';
COMMENT ON COLUMN "public"."t_page_prize_result"."cprizevalue" IS '奖品的值';
COMMENT ON COLUMN "public"."t_page_prize_result"."ccountry" IS '国家地区';
COMMENT ON COLUMN "public"."t_page_prize_result"."iwebsiteid" IS '站点id';
COMMENT ON COLUMN "public"."t_page_prize_result"."cvhost" IS '子站点';
COMMENT ON COLUMN "public"."t_page_prize_result"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_page_qualification
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_page_qualification";
CREATE TABLE "public"."t_page_qualification" (
"iid" int4 DEFAULT nextval('t_page_qualification_iid_seq'::regclass) NOT NULL,
"ipageid" int4,
"crule" varchar(250) COLLATE "default",
"cruleparam" varchar(250) COLLATE "default",
"ccreateuser" varchar(30) COLLATE "default" DEFAULT '-'::character varying,
"dcreatedate" timestamp(6) DEFAULT now(),
"ienable" int4 DEFAULT 0,
"isort" int4 DEFAULT 1
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_page_qualification" IS '页面访问规则表';
COMMENT ON COLUMN "public"."t_page_qualification"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_page_qualification"."ipageid" IS '页面(t_page)的id';
COMMENT ON COLUMN "public"."t_page_qualification"."crule" IS '访问规则';
COMMENT ON COLUMN "public"."t_page_qualification"."cruleparam" IS '访问规则的参数';
COMMENT ON COLUMN "public"."t_page_qualification"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_page_qualification"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_page_qualification"."ienable" IS '是否启用,0为不启动，1为启动';
COMMENT ON COLUMN "public"."t_page_qualification"."isort" IS '排序';

-- ----------------------------
-- Table structure for t_page_rule
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_page_rule";
CREATE TABLE "public"."t_page_rule" (
"iid" int4 DEFAULT nextval('t_page_rule_iid_seq'::regclass) NOT NULL,
"ipageid" int4,
"crule" varchar(250) COLLATE "default",
"cruleparam" varchar(250) COLLATE "default",
"ccreateuser" varchar(30) COLLATE "default" DEFAULT '-'::character varying,
"dcreatedate" timestamp(6) DEFAULT now(),
"ienable" int4 DEFAULT 0
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_page_rule" IS '页面抽奖规则表';
COMMENT ON COLUMN "public"."t_page_rule"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_page_rule"."ipageid" IS '页面(t_page)的id';
COMMENT ON COLUMN "public"."t_page_rule"."crule" IS '奖品规则';
COMMENT ON COLUMN "public"."t_page_rule"."cruleparam" IS '奖品规则的参数';
COMMENT ON COLUMN "public"."t_page_rule"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_page_rule"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_page_rule"."ienable" IS '是否启用,0为不启动，1为启动';

-- ----------------------------
-- Table structure for t_page_title
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_page_title";
CREATE TABLE "public"."t_page_title" (
"iid" int4 DEFAULT nextval('t_page_title_iid_seq'::regclass) NOT NULL,
"ipageid" int4 NOT NULL,
"ctitle" varchar(200) COLLATE "default" DEFAULT ' '::character varying,
"ilanguageid" int4 DEFAULT 1
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_page_title" IS '页面标题(支持国际化)';
COMMENT ON COLUMN "public"."t_page_title"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_page_title"."ipageid" IS '页面的id';
COMMENT ON COLUMN "public"."t_page_title"."ctitle" IS '标题值';
COMMENT ON COLUMN "public"."t_page_title"."ilanguageid" IS '语言id';

-- ----------------------------
-- Table structure for t_vote_record
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_vote_record";
CREATE TABLE "public"."t_vote_record" (
"iid" int4 DEFAULT nextval('t_vote_record_iid_seq'::regclass) NOT NULL,
"cmemberemail" varchar(100) COLLATE "default",
"ipageitemid" int4,
"iwebsiteid" int4,
"cvhost" varchar(255) COLLATE "default",
"dvotedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_vote_record" IS '投票记录';
COMMENT ON COLUMN "public"."t_vote_record"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_vote_record"."cmemberemail" IS '会员email';
COMMENT ON COLUMN "public"."t_vote_record"."ipageitemid" IS '页面子项的id';
COMMENT ON COLUMN "public"."t_vote_record"."iwebsiteid" IS '站点id';
COMMENT ON COLUMN "public"."t_vote_record"."cvhost" IS '子站点';
COMMENT ON COLUMN "public"."t_vote_record"."dvotedate" IS '投票时间';

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------
ALTER SEQUENCE "public"."t_page_iid_seq" OWNED BY "t_page"."iid";
ALTER SEQUENCE "public"."t_page_item_iid_seq" OWNED BY "t_page_item"."iid";
ALTER SEQUENCE "public"."t_page_item_name_iid_seq" OWNED BY "t_page_item_name"."iid";
ALTER SEQUENCE "public"."t_page_join_iid_seq" OWNED BY "t_page_join"."iid";
ALTER SEQUENCE "public"."t_page_prize_iid_seq" OWNED BY "t_page_prize"."iid";
ALTER SEQUENCE "public"."t_page_prize_result_iid_seq" OWNED BY "t_page_prize_result"."iid";
ALTER SEQUENCE "public"."t_page_qualification_iid_seq" OWNED BY "t_page_qualification"."iid";
ALTER SEQUENCE "public"."t_page_rule_iid_seq" OWNED BY "t_page_rule"."iid";
ALTER SEQUENCE "public"."t_page_title_iid_seq" OWNED BY "t_page_title"."iid";
ALTER SEQUENCE "public"."t_vote_record_iid_seq" OWNED BY "t_vote_record"."iid";

-- ----------------------------
-- Primary Key structure for table databasechangeloglock
-- ----------------------------
ALTER TABLE "public"."databasechangeloglock" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table t_page
-- ----------------------------
ALTER TABLE "public"."t_page" ADD UNIQUE ("curl");

-- ----------------------------
-- Primary Key structure for table t_page
-- ----------------------------
ALTER TABLE "public"."t_page" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_page_item
-- ----------------------------
ALTER TABLE "public"."t_page_item" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Uniques structure for table t_page_item_name
-- ----------------------------
ALTER TABLE "public"."t_page_item_name" ADD UNIQUE ("ipageitemid", "ilanguageid");

-- ----------------------------
-- Primary Key structure for table t_page_item_name
-- ----------------------------
ALTER TABLE "public"."t_page_item_name" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_page_join
-- ----------------------------
ALTER TABLE "public"."t_page_join" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_page_prize
-- ----------------------------
ALTER TABLE "public"."t_page_prize" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_page_prize_result
-- ----------------------------
ALTER TABLE "public"."t_page_prize_result" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_page_qualification
-- ----------------------------
ALTER TABLE "public"."t_page_qualification" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_page_rule
-- ----------------------------
ALTER TABLE "public"."t_page_rule" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_page_title
-- ----------------------------
ALTER TABLE "public"."t_page_title" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_vote_record
-- ----------------------------
ALTER TABLE "public"."t_vote_record" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Foreign Key structure for table "public"."t_page_item"
-- ----------------------------
ALTER TABLE "public"."t_page_item" ADD FOREIGN KEY ("ipageid") REFERENCES "public"."t_page" ("iid") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Key structure for table "public"."t_page_item_name"
-- ----------------------------
ALTER TABLE "public"."t_page_item_name" ADD FOREIGN KEY ("ipageitemid") REFERENCES "public"."t_page_item" ("iid") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Key structure for table "public"."t_page_prize"
-- ----------------------------
ALTER TABLE "public"."t_page_prize" ADD FOREIGN KEY ("iruleid") REFERENCES "public"."t_page_rule" ("iid") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."t_page_prize" ADD FOREIGN KEY ("ipageid") REFERENCES "public"."t_page" ("iid") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Key structure for table "public"."t_page_prize_result"
-- ----------------------------
ALTER TABLE "public"."t_page_prize_result" ADD FOREIGN KEY ("ipageid") REFERENCES "public"."t_page" ("iid") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Key structure for table "public"."t_page_qualification"
-- ----------------------------
ALTER TABLE "public"."t_page_qualification" ADD FOREIGN KEY ("ipageid") REFERENCES "public"."t_page" ("iid") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Key structure for table "public"."t_page_rule"
-- ----------------------------
ALTER TABLE "public"."t_page_rule" ADD FOREIGN KEY ("ipageid") REFERENCES "public"."t_page" ("iid") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Key structure for table "public"."t_page_title"
-- ----------------------------
ALTER TABLE "public"."t_page_title" ADD FOREIGN KEY ("ipageid") REFERENCES "public"."t_page" ("iid") ON DELETE CASCADE ON UPDATE NO ACTION;
