/*
Navicat PGSQL Data Transfer

Source Server         : uat
Source Server Version : 90405
Source Host           : 192.168.220.52:5432
Source Database       : paypal
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 90405
File Encoding         : 65001

Date: 2016-06-28 18:14:43
*/


-- ----------------------------
-- Sequence structure for t_payment_paypal_account_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_payment_paypal_account_iid_seq";
CREATE SEQUENCE "public"."t_payment_paypal_account_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 2
 CACHE 1;
SELECT setval('"public"."t_payment_paypal_account_iid_seq"', 2, true);

-- ----------------------------
-- Sequence structure for t_payment_paypal_return_log_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_payment_paypal_return_log_iid_seq";
CREATE SEQUENCE "public"."t_payment_paypal_return_log_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 10884
 CACHE 1;
SELECT setval('"public"."t_payment_paypal_return_log_iid_seq"', 10884, true);

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
"liquibase" varchar(20) COLLATE "default",
"contexts" varchar(255) COLLATE "default",
"labels" varchar(255) COLLATE "default"
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
-- Table structure for t_order_discount
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_order_discount";
CREATE TABLE "public"."t_order_discount" (
"order_number" varchar(100) COLLATE "default",
"website" int4,
"code" varchar(100) COLLATE "default",
"discount" float8,
"currency" varchar(10) COLLATE "default",
"type" varchar(10) COLLATE "default"
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
"dcreatedate" timestamp(6) DEFAULT now(),
"cfromkey" varchar(200) COLLATE "default",
"cuser" varchar(200) COLLATE "default",
"cpwd" varchar(200) COLLATE "default",
"csignature" varchar(500) COLLATE "default"
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
COMMENT ON COLUMN "public"."t_payment_paypal_account"."cfromkey" IS 'from_key';

-- ----------------------------
-- Table structure for t_payment_paypal_return_log
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_payment_paypal_return_log";
CREATE TABLE "public"."t_payment_paypal_return_log" (
"iid" int4 DEFAULT nextval('t_payment_paypal_return_log_iid_seq'::regclass) NOT NULL,
"iwebsiteid" int4,
"corderid" varchar(80) COLLATE "default",
"ccontent" varchar(5000) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now(),
"ctransactionid" varchar(200) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_payment_paypal_return_log" IS 'paypal付款返回日志';
COMMENT ON COLUMN "public"."t_payment_paypal_return_log"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_payment_paypal_return_log"."iwebsiteid" IS '站点号';
COMMENT ON COLUMN "public"."t_payment_paypal_return_log"."corderid" IS '订单编号';
COMMENT ON COLUMN "public"."t_payment_paypal_return_log"."ccontent" IS '明细';
COMMENT ON COLUMN "public"."t_payment_paypal_return_log"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_payment_paypal_return_log"."ctransactionid" IS '交易成功后要回填交易号';

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------
ALTER SEQUENCE "public"."t_payment_paypal_account_iid_seq" OWNED BY "t_payment_paypal_account"."iid";
ALTER SEQUENCE "public"."t_payment_paypal_return_log_iid_seq" OWNED BY "t_payment_paypal_return_log"."iid";

-- ----------------------------
-- Primary Key structure for table databasechangeloglock
-- ----------------------------
ALTER TABLE "public"."databasechangeloglock" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table t_payment_paypal_account
-- ----------------------------
CREATE INDEX "idx_paypalacount_iwebsite" ON "public"."t_payment_paypal_account" USING btree (iwebsiteid, fbeginprice, fendprice);

-- ----------------------------
-- Primary Key structure for table t_payment_paypal_account
-- ----------------------------
ALTER TABLE "public"."t_payment_paypal_account" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Indexes structure for table t_payment_paypal_return_log
-- ----------------------------
CREATE INDEX "idx_paypal_returnlog_corderid" ON "public"."t_payment_paypal_return_log" USING btree (corderid);

-- ----------------------------
-- Primary Key structure for table t_payment_paypal_return_log
-- ----------------------------
ALTER TABLE "public"."t_payment_paypal_return_log" ADD PRIMARY KEY ("iid");
