/*
Navicat PGSQL Data Transfer

Source Server         : uat
Source Server Version : 90405
Source Host           : 192.168.220.52:5432
Source Database       : wholesale
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 90405
File Encoding         : 65001

Date: 2016-06-28 18:16:32
*/


-- ----------------------------
-- Sequence structure for t_wholesale_base_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_wholesale_base_iid_seq";
CREATE SEQUENCE "public"."t_wholesale_base_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 22
 CACHE 1;
SELECT setval('"public"."t_wholesale_base_iid_seq"', 22, true);

-- ----------------------------
-- Sequence structure for t_wholesale_category_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_wholesale_category_iid_seq";
CREATE SEQUENCE "public"."t_wholesale_category_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 108
 CACHE 1;
SELECT setval('"public"."t_wholesale_category_iid_seq"', 108, true);

-- ----------------------------
-- Sequence structure for t_wholesale_discount_level_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_wholesale_discount_level_iid_seq";
CREATE SEQUENCE "public"."t_wholesale_discount_level_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 6
 CACHE 1;
SELECT setval('"public"."t_wholesale_discount_level_iid_seq"', 6, true);

-- ----------------------------
-- Sequence structure for t_wholesale_order_product_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_wholesale_order_product_iid_seq";
CREATE SEQUENCE "public"."t_wholesale_order_product_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 359
 CACHE 1;
SELECT setval('"public"."t_wholesale_order_product_iid_seq"', 359, true);

-- ----------------------------
-- Sequence structure for t_wholesale_product_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_wholesale_product_iid_seq";
CREATE SEQUENCE "public"."t_wholesale_product_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 390
 CACHE 1;
SELECT setval('"public"."t_wholesale_product_iid_seq"', 390, true);

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
-- Table structure for t_wholesale_base
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_wholesale_base";
CREATE TABLE "public"."t_wholesale_base" (
"iid" int4 DEFAULT nextval('t_wholesale_base_iid_seq'::regclass) NOT NULL,
"cfullname" varchar(100) COLLATE "default",
"cemail" varchar(100) COLLATE "default",
"iwebsiteid" int4,
"ctelephone" varchar(40) COLLATE "default",
"ccountrysn" varchar(30) COLLATE "default",
"cshipurl" varchar(100) COLLATE "default",
"cskype" varchar(100) COLLATE "default",
"ccomment" varchar(5000) COLLATE "default",
"cshippingaddress" varchar(100) COLLATE "default",
"fpurchaseamount" float8,
"istatus" int4,
"dcreatedate" timestamp(6) DEFAULT now(),
"ilanguageid" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_wholesale_base" IS 'wholesale基础表';
COMMENT ON COLUMN "public"."t_wholesale_base"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_wholesale_base"."cfullname" IS '全名';
COMMENT ON COLUMN "public"."t_wholesale_base"."cemail" IS '邮箱';
COMMENT ON COLUMN "public"."t_wholesale_base"."iwebsiteid" IS '站点 ID';
COMMENT ON COLUMN "public"."t_wholesale_base"."ctelephone" IS '联系电话';
COMMENT ON COLUMN "public"."t_wholesale_base"."ccountrysn" IS '国家简写';
COMMENT ON COLUMN "public"."t_wholesale_base"."cshipurl" IS '商铺链接';
COMMENT ON COLUMN "public"."t_wholesale_base"."cskype" IS 'skype帐号';
COMMENT ON COLUMN "public"."t_wholesale_base"."ccomment" IS 'comments';
COMMENT ON COLUMN "public"."t_wholesale_base"."cshippingaddress" IS 'shipping地址';
COMMENT ON COLUMN "public"."t_wholesale_base"."fpurchaseamount" IS 'Expected Purchase Amount(US$)';
COMMENT ON COLUMN "public"."t_wholesale_base"."istatus" IS '审核状态';
COMMENT ON COLUMN "public"."t_wholesale_base"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_wholesale_base"."ilanguageid" IS '语言ID';

-- ----------------------------
-- Table structure for t_wholesale_category
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_wholesale_category";
CREATE TABLE "public"."t_wholesale_category" (
"iid" int4 DEFAULT nextval('t_wholesale_category_iid_seq'::regclass) NOT NULL,
"iwholesaleid" int4,
"icategoryid" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_wholesale_category" IS 'wholesale期望批发品类表';
COMMENT ON COLUMN "public"."t_wholesale_category"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_wholesale_category"."iwholesaleid" IS 'whosaleid';
COMMENT ON COLUMN "public"."t_wholesale_category"."icategoryid" IS '品类 ID';

-- ----------------------------
-- Table structure for t_wholesale_discount_level
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_wholesale_discount_level";
CREATE TABLE "public"."t_wholesale_discount_level" (
"iid" int4 DEFAULT nextval('t_wholesale_discount_level_iid_seq'::regclass) NOT NULL,
"iwebsiteid" int4,
"fstartprice" float8,
"fendprice" float8,
"fmindiscount" float8,
"fmaxdiscount" float8
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_wholesale_discount_level" IS 'wholesale折扣等级表';
COMMENT ON COLUMN "public"."t_wholesale_discount_level"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_wholesale_discount_level"."iwebsiteid" IS '站点ID';
COMMENT ON COLUMN "public"."t_wholesale_discount_level"."fstartprice" IS '开始价格';
COMMENT ON COLUMN "public"."t_wholesale_discount_level"."fendprice" IS '结束价格';
COMMENT ON COLUMN "public"."t_wholesale_discount_level"."fmindiscount" IS '最小折扣(%)';
COMMENT ON COLUMN "public"."t_wholesale_discount_level"."fmaxdiscount" IS '最大折扣(%)';

-- ----------------------------
-- Table structure for t_wholesale_order_product
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_wholesale_order_product";
CREATE TABLE "public"."t_wholesale_order_product" (
"iid" int4 DEFAULT nextval('t_wholesale_order_product_iid_seq'::regclass) NOT NULL,
"iorderid" int4,
"iwebsiteid" int4,
"cemail" varchar(100) COLLATE "default",
"csku" varchar(40) COLLATE "default",
"iqty" int4,
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_wholesale_order_product" IS 'wholesale订单商品表';
COMMENT ON COLUMN "public"."t_wholesale_order_product"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_wholesale_order_product"."iorderid" IS '订单ID';
COMMENT ON COLUMN "public"."t_wholesale_order_product"."iwebsiteid" IS '站点ID';
COMMENT ON COLUMN "public"."t_wholesale_order_product"."cemail" IS '邮箱';
COMMENT ON COLUMN "public"."t_wholesale_order_product"."csku" IS 'SKU';
COMMENT ON COLUMN "public"."t_wholesale_order_product"."iqty" IS 'qty';
COMMENT ON COLUMN "public"."t_wholesale_order_product"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_wholesale_product
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_wholesale_product";
CREATE TABLE "public"."t_wholesale_product" (
"iid" int4 DEFAULT nextval('t_wholesale_product_iid_seq'::regclass) NOT NULL,
"iwebsiteid" int4,
"cemail" varchar(100) COLLATE "default",
"csku" varchar(40) COLLATE "default",
"iqty" int4,
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_wholesale_product" IS 'wholesale商品表';
COMMENT ON COLUMN "public"."t_wholesale_product"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_wholesale_product"."iwebsiteid" IS '站点ID';
COMMENT ON COLUMN "public"."t_wholesale_product"."cemail" IS '邮箱';
COMMENT ON COLUMN "public"."t_wholesale_product"."csku" IS 'SKU';
COMMENT ON COLUMN "public"."t_wholesale_product"."iqty" IS 'qty';
COMMENT ON COLUMN "public"."t_wholesale_product"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------
ALTER SEQUENCE "public"."t_wholesale_base_iid_seq" OWNED BY "t_wholesale_base"."iid";
ALTER SEQUENCE "public"."t_wholesale_category_iid_seq" OWNED BY "t_wholesale_category"."iid";
ALTER SEQUENCE "public"."t_wholesale_discount_level_iid_seq" OWNED BY "t_wholesale_discount_level"."iid";
ALTER SEQUENCE "public"."t_wholesale_order_product_iid_seq" OWNED BY "t_wholesale_order_product"."iid";
ALTER SEQUENCE "public"."t_wholesale_product_iid_seq" OWNED BY "t_wholesale_product"."iid";

-- ----------------------------
-- Primary Key structure for table databasechangeloglock
-- ----------------------------
ALTER TABLE "public"."databasechangeloglock" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_wholesale_base
-- ----------------------------
ALTER TABLE "public"."t_wholesale_base" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_wholesale_category
-- ----------------------------
ALTER TABLE "public"."t_wholesale_category" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_wholesale_discount_level
-- ----------------------------
ALTER TABLE "public"."t_wholesale_discount_level" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_wholesale_order_product
-- ----------------------------
ALTER TABLE "public"."t_wholesale_order_product" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_wholesale_product
-- ----------------------------
ALTER TABLE "public"."t_wholesale_product" ADD PRIMARY KEY ("iid");
