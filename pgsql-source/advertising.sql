/*
Navicat PGSQL Data Transfer

Source Server         : uat
Source Server Version : 90405
Source Host           : 192.168.220.52:5432
Source Database       : advertising
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 90405
File Encoding         : 65001

Date: 2016-06-28 18:12:13
*/


-- ----------------------------
-- Sequence structure for t_advertising_base_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_advertising_base_iid_seq";
CREATE SEQUENCE "public"."t_advertising_base_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 43
 CACHE 1;
SELECT setval('"public"."t_advertising_base_iid_seq"', 43, true);

-- ----------------------------
-- Sequence structure for t_advertising_content_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_advertising_content_iid_seq";
CREATE SEQUENCE "public"."t_advertising_content_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 45
 CACHE 1;
SELECT setval('"public"."t_advertising_content_iid_seq"', 45, true);

-- ----------------------------
-- Sequence structure for t_advertising_distribution_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_advertising_distribution_iid_seq";
CREATE SEQUENCE "public"."t_advertising_distribution_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 55
 CACHE 1;
SELECT setval('"public"."t_advertising_distribution_iid_seq"', 55, true);

-- ----------------------------
-- Sequence structure for t_advertising_positon_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_advertising_positon_iid_seq";
CREATE SEQUENCE "public"."t_advertising_positon_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 6
 CACHE 1;
SELECT setval('"public"."t_advertising_positon_iid_seq"', 6, true);

-- ----------------------------
-- Sequence structure for t_advertising_type_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_advertising_type_iid_seq";
CREATE SEQUENCE "public"."t_advertising_type_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 9
 CACHE 1;
SELECT setval('"public"."t_advertising_type_iid_seq"', 9, true);

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
-- Table structure for t_advertising_base
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_advertising_base";
CREATE TABLE "public"."t_advertising_base" (
"iid" int8 DEFAULT nextval('t_advertising_base_iid_seq'::regclass) NOT NULL,
"cimageurl" varchar(500) COLLATE "default",
"iposition" int4,
"ccreateuser" varchar(20) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now(),
"clastupdateduser" varchar(20) COLLATE "default",
"dlastupdateddate" timestamp(6)
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_advertising_base" IS '广告信息';
COMMENT ON COLUMN "public"."t_advertising_base"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_advertising_base"."cimageurl" IS '图片路径';
COMMENT ON COLUMN "public"."t_advertising_base"."iposition" IS '方位，如：1代表right 2代表left';
COMMENT ON COLUMN "public"."t_advertising_base"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_advertising_base"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_advertising_base"."clastupdateduser" IS '修改人';
COMMENT ON COLUMN "public"."t_advertising_base"."dlastupdateddate" IS '修改时间';

-- ----------------------------
-- Table structure for t_advertising_base_test
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_advertising_base_test";
CREATE TABLE "public"."t_advertising_base_test" (
"iid" int8 NOT NULL,
"cimageurl" varchar(500) COLLATE "default",
"iposition" int4 NOT NULL,
"ccreateuser" varchar(20) COLLATE "default",
"dcreatedate" timestamp(6),
"clastupdateduser" varchar(20) COLLATE "default",
"dlastupdateddate" timestamp(6)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for t_advertising_content
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_advertising_content";
CREATE TABLE "public"."t_advertising_content" (
"iid" int8 DEFAULT nextval('t_advertising_content_iid_seq'::regclass) NOT NULL,
"iadvertisingid" int8,
"ctitle" varchar(300) COLLATE "default",
"chrefurl" varchar(500) COLLATE "default",
"ilanguageid" int4,
"bbgimgtile" bool DEFAULT false,
"iindex" int4,
"cbgimageurl" varchar(500) COLLATE "default",
"cbgcolor" varchar(7) COLLATE "default",
"bstatus" bool DEFAULT true,
"bhasbgimage" bool DEFAULT false
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_advertising_content" IS '广告内容';
COMMENT ON COLUMN "public"."t_advertising_content"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_advertising_content"."iadvertisingid" IS '广告id';
COMMENT ON COLUMN "public"."t_advertising_content"."ctitle" IS '标题';
COMMENT ON COLUMN "public"."t_advertising_content"."chrefurl" IS '广告链接地址';
COMMENT ON COLUMN "public"."t_advertising_content"."ilanguageid" IS '语言ID';
COMMENT ON COLUMN "public"."t_advertising_content"."bbgimgtile" IS '背景图片是否x轴平铺';
COMMENT ON COLUMN "public"."t_advertising_content"."iindex" IS '排序编号';
COMMENT ON COLUMN "public"."t_advertising_content"."cbgimageurl" IS '背景图片url';
COMMENT ON COLUMN "public"."t_advertising_content"."cbgcolor" IS '背景颜色';
COMMENT ON COLUMN "public"."t_advertising_content"."bstatus" IS '是否启用';
COMMENT ON COLUMN "public"."t_advertising_content"."bhasbgimage" IS '是否有背景图片(默认false)';

-- ----------------------------
-- Table structure for t_advertising_distribution
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_advertising_distribution";
CREATE TABLE "public"."t_advertising_distribution" (
"iid" int8 DEFAULT nextval('t_advertising_distribution_iid_seq'::regclass) NOT NULL,
"iadvertisingid" int8,
"itype" int4,
"cbusinessid" varchar(300) COLLATE "default",
"iwebsiteid" int4,
"ccreateuser" varchar(20) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now(),
"clastupdateduser" varchar(20) COLLATE "default",
"dlastupdateddate" timestamp(6),
"cdevice" varchar(50) COLLATE "default" DEFAULT 'web'::character varying
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_advertising_distribution" IS '广告信息分配';
COMMENT ON COLUMN "public"."t_advertising_distribution"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_advertising_distribution"."iadvertisingid" IS '广告id';
COMMENT ON COLUMN "public"."t_advertising_distribution"."itype" IS '广告属于哪个类型，如果:product，专场';
COMMENT ON COLUMN "public"."t_advertising_distribution"."cbusinessid" IS '产品id或SKU，能唯一指示对应数据';
COMMENT ON COLUMN "public"."t_advertising_distribution"."iwebsiteid" IS '站点id';
COMMENT ON COLUMN "public"."t_advertising_distribution"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_advertising_distribution"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_advertising_distribution"."clastupdateduser" IS '修改人';
COMMENT ON COLUMN "public"."t_advertising_distribution"."dlastupdateddate" IS '修改时间';
COMMENT ON COLUMN "public"."t_advertising_distribution"."cdevice" IS '设备：如web/mobile/app';

-- ----------------------------
-- Table structure for t_advertising_positon
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_advertising_positon";
CREATE TABLE "public"."t_advertising_positon" (
"iid" int8 DEFAULT nextval('t_advertising_positon_iid_seq'::regclass) NOT NULL,
"ipositonid" int8,
"cpositonname" varchar(100) COLLATE "default",
"ccreateuser" varchar(20) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now(),
"clastupdateduser" varchar(20) COLLATE "default",
"dlastupdateddate" timestamp(6)
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_advertising_positon" IS '广告图片方位表';
COMMENT ON COLUMN "public"."t_advertising_positon"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_advertising_positon"."ipositonid" IS '方位id';
COMMENT ON COLUMN "public"."t_advertising_positon"."cpositonname" IS '广告类型名称';
COMMENT ON COLUMN "public"."t_advertising_positon"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_advertising_positon"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_advertising_positon"."clastupdateduser" IS '修改人';
COMMENT ON COLUMN "public"."t_advertising_positon"."dlastupdateddate" IS '修改时间';

-- ----------------------------
-- Table structure for t_advertising_type
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_advertising_type";
CREATE TABLE "public"."t_advertising_type" (
"iid" int8 DEFAULT nextval('t_advertising_type_iid_seq'::regclass) NOT NULL,
"iadvertisingid" int8,
"cadvertisingname" varchar(100) COLLATE "default",
"ccreateuser" varchar(20) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now(),
"clastupdateduser" varchar(20) COLLATE "default",
"dlastupdateddate" timestamp(6)
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_advertising_type" IS '广告类型表';
COMMENT ON COLUMN "public"."t_advertising_type"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_advertising_type"."iadvertisingid" IS '类型id';
COMMENT ON COLUMN "public"."t_advertising_type"."cadvertisingname" IS '广告类型名称';
COMMENT ON COLUMN "public"."t_advertising_type"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_advertising_type"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_advertising_type"."clastupdateduser" IS '修改人';
COMMENT ON COLUMN "public"."t_advertising_type"."dlastupdateddate" IS '修改时间';

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------
ALTER SEQUENCE "public"."t_advertising_base_iid_seq" OWNED BY "t_advertising_base"."iid";
ALTER SEQUENCE "public"."t_advertising_content_iid_seq" OWNED BY "t_advertising_content"."iid";
ALTER SEQUENCE "public"."t_advertising_distribution_iid_seq" OWNED BY "t_advertising_distribution"."iid";
ALTER SEQUENCE "public"."t_advertising_positon_iid_seq" OWNED BY "t_advertising_positon"."iid";
ALTER SEQUENCE "public"."t_advertising_type_iid_seq" OWNED BY "t_advertising_type"."iid";

-- ----------------------------
-- Primary Key structure for table databasechangelog
-- ----------------------------
ALTER TABLE "public"."databasechangelog" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table databasechangeloglock
-- ----------------------------
ALTER TABLE "public"."databasechangeloglock" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_advertising_base
-- ----------------------------
ALTER TABLE "public"."t_advertising_base" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Indexes structure for table t_advertising_base_test
-- ----------------------------
CREATE INDEX "iposition_index" ON "public"."t_advertising_base_test" USING btree (iposition);

-- ----------------------------
-- Primary Key structure for table t_advertising_base_test
-- ----------------------------
ALTER TABLE "public"."t_advertising_base_test" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_advertising_content
-- ----------------------------
ALTER TABLE "public"."t_advertising_content" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_advertising_distribution
-- ----------------------------
ALTER TABLE "public"."t_advertising_distribution" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_advertising_positon
-- ----------------------------
ALTER TABLE "public"."t_advertising_positon" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_advertising_type
-- ----------------------------
ALTER TABLE "public"."t_advertising_type" ADD PRIMARY KEY ("iid");
