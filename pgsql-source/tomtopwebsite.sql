/*
Navicat PGSQL Data Transfer

Source Server         : uat
Source Server Version : 90405
Source Host           : 192.168.220.52:5432
Source Database       : tomtopwebsite
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 90405
File Encoding         : 65001

Date: 2016-06-28 18:16:05
*/


-- ----------------------------
-- Sequence structure for t_payment_paypal_account_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_payment_paypal_account_iid_seq";
CREATE SEQUENCE "public"."t_payment_paypal_account_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;
SELECT setval('"public"."t_payment_paypal_account_iid_seq"', 1, true);

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
-- Table structure for t_payment_paypal_account
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_payment_paypal_account";
CREATE TABLE "public"."t_payment_paypal_account" (
"iid" int4 DEFAULT nextval('t_payment_paypal_account_iid_seq'::regclass) NOT NULL,
"iwebsiteid" int4,
"fbeginprice" float8,
"fendprice" float8,
"cbusiness" varchar(100) COLLATE "default",
"citemname" varchar(200) COLLATE "default",
"creturnurl" varchar(200) COLLATE "default",
"cnotifyurl" varchar(200) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_payment_paypal_account" IS 'paypal付款账号表';
COMMENT ON COLUMN "public"."t_payment_paypal_account"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_payment_paypal_account"."iwebsiteid" IS '站点号';
COMMENT ON COLUMN "public"."t_payment_paypal_account"."fbeginprice" IS '开始价格';
COMMENT ON COLUMN "public"."t_payment_paypal_account"."fendprice" IS '结束价格';
COMMENT ON COLUMN "public"."t_payment_paypal_account"."cbusiness" IS '账号';
COMMENT ON COLUMN "public"."t_payment_paypal_account"."citemname" IS 'title信息';
COMMENT ON COLUMN "public"."t_payment_paypal_account"."creturnurl" IS '成功返回路径';
COMMENT ON COLUMN "public"."t_payment_paypal_account"."cnotifyurl" IS '返回地址';
COMMENT ON COLUMN "public"."t_payment_paypal_account"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------
ALTER SEQUENCE "public"."t_payment_paypal_account_iid_seq" OWNED BY "t_payment_paypal_account"."iid";

-- ----------------------------
-- Primary Key structure for table databasechangeloglock
-- ----------------------------
ALTER TABLE "public"."databasechangeloglock" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_payment_paypal_account
-- ----------------------------
ALTER TABLE "public"."t_payment_paypal_account" ADD PRIMARY KEY ("iid");
