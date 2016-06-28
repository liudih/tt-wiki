/*
Navicat PGSQL Data Transfer

Source Server         : uat
Source Server Version : 90405
Source Host           : 192.168.220.52:5432
Source Database       : tracking
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 90405
File Encoding         : 65001

Date: 2016-06-28 18:16:15
*/


-- ----------------------------
-- Sequence structure for t_affiliate_banner_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_affiliate_banner_iid_seq";
CREATE SEQUENCE "public"."t_affiliate_banner_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;
SELECT setval('"public"."t_affiliate_banner_iid_seq"', 1, true);

-- ----------------------------
-- Sequence structure for t_affiliate_info_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_affiliate_info_iid_seq";
CREATE SEQUENCE "public"."t_affiliate_info_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 23
 CACHE 1;
SELECT setval('"public"."t_affiliate_info_iid_seq"', 23, true);

-- ----------------------------
-- Sequence structure for t_commission_history_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_commission_history_iid_seq";
CREATE SEQUENCE "public"."t_commission_history_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for t_commission_order_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_commission_order_iid_seq";
CREATE SEQUENCE "public"."t_commission_order_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for t_commission_status_log_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_commission_status_log_iid_seq";
CREATE SEQUENCE "public"."t_commission_status_log_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

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
-- Table structure for t_affiliate_banner
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_affiliate_banner";
CREATE TABLE "public"."t_affiliate_banner" (
"iid" int4 DEFAULT nextval('t_affiliate_banner_iid_seq'::regclass) NOT NULL,
"iwebsiteid" int4,
"ctitle" varchar(200) COLLATE "default",
"clink" varchar(500) COLLATE "default",
"cbannertype" varchar(200) COLLATE "default",
"bbannerfile" bytea,
"iwidth" int4,
"iheight" int4,
"ctarget" varchar(50) COLLATE "default",
"bstatus" bool,
"brelnofollow" bool,
"dcreatedate" timestamp(6) DEFAULT now(),
"icategoryid" int4,
"cdescription" varchar(1500) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_affiliate_banner" IS '联盟营销banner';
COMMENT ON COLUMN "public"."t_affiliate_banner"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_affiliate_banner"."iwebsiteid" IS 'Website ID';
COMMENT ON COLUMN "public"."t_affiliate_banner"."ctitle" IS '标题';
COMMENT ON COLUMN "public"."t_affiliate_banner"."clink" IS '链接';
COMMENT ON COLUMN "public"."t_affiliate_banner"."cbannertype" IS 'banner类型';
COMMENT ON COLUMN "public"."t_affiliate_banner"."bbannerfile" IS '二进制文件数据';
COMMENT ON COLUMN "public"."t_affiliate_banner"."iwidth" IS '图片宽';
COMMENT ON COLUMN "public"."t_affiliate_banner"."iheight" IS '图片高';
COMMENT ON COLUMN "public"."t_affiliate_banner"."ctarget" IS '位置';
COMMENT ON COLUMN "public"."t_affiliate_banner"."bstatus" IS '是否禁用（0禁用，1启用默认）';
COMMENT ON COLUMN "public"."t_affiliate_banner"."brelnofollow" IS '是否跟踪（0否默认，1是）';
COMMENT ON COLUMN "public"."t_affiliate_banner"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_affiliate_banner"."icategoryid" IS '品类ID';
COMMENT ON COLUMN "public"."t_affiliate_banner"."cdescription" IS '描述';

-- ----------------------------
-- Table structure for t_affiliate_base
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_affiliate_base";
CREATE TABLE "public"."t_affiliate_base" (
"caid" varchar(200) COLLATE "default" NOT NULL,
"iwebsiteid" int4 NOT NULL,
"itype" int4,
"ccreateuser" varchar(20) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_affiliate_base" IS '联盟基础信息';
COMMENT ON COLUMN "public"."t_affiliate_base"."caid" IS '主键AID';
COMMENT ON COLUMN "public"."t_affiliate_base"."iwebsiteid" IS 'Website ID';
COMMENT ON COLUMN "public"."t_affiliate_base"."itype" IS '类型';
COMMENT ON COLUMN "public"."t_affiliate_base"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_affiliate_base"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_affiliate_info
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_affiliate_info";
CREATE TABLE "public"."t_affiliate_info" (
"iid" int4 DEFAULT nextval('t_affiliate_info_iid_seq'::regclass) NOT NULL,
"iwebsiteid" int4,
"cemail" varchar(100) COLLATE "default",
"caid" varchar(200) COLLATE "default",
"isalerid" int4,
"cpaypalemail" varchar(100) COLLATE "default",
"breceivenotification" bool,
"bstatus" bool,
"bexternal" bool,
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_affiliate_info" IS '联盟用户信息表';
COMMENT ON COLUMN "public"."t_affiliate_info"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_affiliate_info"."iwebsiteid" IS 'Website ID';
COMMENT ON COLUMN "public"."t_affiliate_info"."cemail" IS '会员邮箱';
COMMENT ON COLUMN "public"."t_affiliate_info"."caid" IS 'AID';
COMMENT ON COLUMN "public"."t_affiliate_info"."isalerid" IS '业务员登录后台的id';
COMMENT ON COLUMN "public"."t_affiliate_info"."cpaypalemail" IS 'paypal邮箱';
COMMENT ON COLUMN "public"."t_affiliate_info"."breceivenotification" IS '是否接收通知（0不接受，1接收默认）';
COMMENT ON COLUMN "public"."t_affiliate_info"."bstatus" IS '是否激活（0未激活，1激活默认）';
COMMENT ON COLUMN "public"."t_affiliate_info"."bexternal" IS '是否外部人员（0否，1是默认）';
COMMENT ON COLUMN "public"."t_affiliate_info"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_affiliate_referrer
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_affiliate_referrer";
CREATE TABLE "public"."t_affiliate_referrer" (
"creferrer" varchar(200) COLLATE "default" NOT NULL,
"caid" varchar(200) COLLATE "default" NOT NULL,
"iwebsiteid" int4 NOT NULL
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_affiliate_referrer" IS '联盟Referrer信息';
COMMENT ON COLUMN "public"."t_affiliate_referrer"."creferrer" IS '主键Referrer前缀';
COMMENT ON COLUMN "public"."t_affiliate_referrer"."caid" IS '外键AID';
COMMENT ON COLUMN "public"."t_affiliate_referrer"."iwebsiteid" IS 'Website ID';

-- ----------------------------
-- Table structure for t_commission_history
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_commission_history";
CREATE TABLE "public"."t_commission_history" (
"iid" int4 DEFAULT nextval('t_commission_history_iid_seq'::regclass) NOT NULL,
"caid" varchar(200) COLLATE "default",
"famount" float8,
"ctransactionid" varchar(200) COLLATE "default",
"icommissionstatus" int4,
"cremark" varchar(500) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now(),
"cwithdrawlid" varchar(50) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_commission_history" IS '佣金历史记录表';
COMMENT ON COLUMN "public"."t_commission_history"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_commission_history"."caid" IS 'AID';
COMMENT ON COLUMN "public"."t_commission_history"."famount" IS '佣金金额';
COMMENT ON COLUMN "public"."t_commission_history"."ctransactionid" IS 'papay交易ID';
COMMENT ON COLUMN "public"."t_commission_history"."icommissionstatus" IS '佣金处理状态';
COMMENT ON COLUMN "public"."t_commission_history"."cremark" IS '操作日志';
COMMENT ON COLUMN "public"."t_commission_history"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_commission_history"."cwithdrawlid" IS '每笔佣金生成的ID';

-- ----------------------------
-- Table structure for t_commission_order
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_commission_order";
CREATE TABLE "public"."t_commission_order" (
"iid" int4 DEFAULT nextval('t_commission_order_iid_seq'::regclass) NOT NULL,
"icommissionid" int4,
"iorderid" int4,
"dcreatedate" timestamp(6) DEFAULT now(),
"istatus" int4,
"famount" float8,
"dpaymentdate" timestamp(6),
"fcommission" float8,
"cremark" varchar(2000) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_commission_order" IS '佣金订单表';
COMMENT ON COLUMN "public"."t_commission_order"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_commission_order"."icommissionid" IS '佣金表commission_history的主键';
COMMENT ON COLUMN "public"."t_commission_order"."iorderid" IS '订单id';
COMMENT ON COLUMN "public"."t_commission_order"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_commission_order"."istatus" IS '订单佣金状态';
COMMENT ON COLUMN "public"."t_commission_order"."famount" IS '每笔佣金金额';
COMMENT ON COLUMN "public"."t_commission_order"."dpaymentdate" IS '订单付款时间';
COMMENT ON COLUMN "public"."t_commission_order"."fcommission" IS '订单佣金金额';
COMMENT ON COLUMN "public"."t_commission_order"."cremark" IS '备注';

-- ----------------------------
-- Table structure for t_commission_status_log
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_commission_status_log";
CREATE TABLE "public"."t_commission_status_log" (
"iid" int4 DEFAULT nextval('t_commission_status_log_iid_seq'::regclass) NOT NULL,
"ibeforestatus" int4,
"iafterstatus" int4,
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_commission_status_log" IS '佣金订单表';
COMMENT ON COLUMN "public"."t_commission_status_log"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_commission_status_log"."ibeforestatus" IS '佣金改变前状态';
COMMENT ON COLUMN "public"."t_commission_status_log"."iafterstatus" IS '佣金改变后状态';
COMMENT ON COLUMN "public"."t_commission_status_log"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_visit_log
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_visit_log";
CREATE TABLE "public"."t_visit_log" (
"caid" varchar(200) COLLATE "default",
"iwebsiteid" int4,
"cip" varchar(100) COLLATE "default",
"cpath" varchar(2000) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now(),
"csource" varchar(200) COLLATE "default",
"ceid" varchar(200) COLLATE "default",
"itasktype" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_visit_log" IS '联盟访问记录';
COMMENT ON COLUMN "public"."t_visit_log"."caid" IS '主键AID';
COMMENT ON COLUMN "public"."t_visit_log"."iwebsiteid" IS 'Website ID';
COMMENT ON COLUMN "public"."t_visit_log"."cip" IS '客户访问IP';
COMMENT ON COLUMN "public"."t_visit_log"."cpath" IS '路径';
COMMENT ON COLUMN "public"."t_visit_log"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_visit_log"."itasktype" IS '任务类型';

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------
ALTER SEQUENCE "public"."t_affiliate_banner_iid_seq" OWNED BY "t_affiliate_banner"."iid";
ALTER SEQUENCE "public"."t_affiliate_info_iid_seq" OWNED BY "t_affiliate_info"."iid";
ALTER SEQUENCE "public"."t_commission_history_iid_seq" OWNED BY "t_commission_history"."iid";
ALTER SEQUENCE "public"."t_commission_order_iid_seq" OWNED BY "t_commission_order"."iid";
ALTER SEQUENCE "public"."t_commission_status_log_iid_seq" OWNED BY "t_commission_status_log"."iid";

-- ----------------------------
-- Primary Key structure for table databasechangeloglock
-- ----------------------------
ALTER TABLE "public"."databasechangeloglock" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_affiliate_banner
-- ----------------------------
ALTER TABLE "public"."t_affiliate_banner" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Indexes structure for table t_affiliate_base
-- ----------------------------
CREATE INDEX "idx_t_affiliate_base_iwebsiteid_caid" ON "public"."t_affiliate_base" USING btree (iwebsiteid, caid);

-- ----------------------------
-- Uniques structure for table t_affiliate_base
-- ----------------------------
ALTER TABLE "public"."t_affiliate_base" ADD UNIQUE ("iwebsiteid", "caid");

-- ----------------------------
-- Uniques structure for table t_affiliate_info
-- ----------------------------
ALTER TABLE "public"."t_affiliate_info" ADD UNIQUE ("caid");

-- ----------------------------
-- Primary Key structure for table t_affiliate_info
-- ----------------------------
ALTER TABLE "public"."t_affiliate_info" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_affiliate_referrer
-- ----------------------------
ALTER TABLE "public"."t_affiliate_referrer" ADD PRIMARY KEY ("creferrer");

-- ----------------------------
-- Primary Key structure for table t_commission_history
-- ----------------------------
ALTER TABLE "public"."t_commission_history" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_commission_order
-- ----------------------------
ALTER TABLE "public"."t_commission_order" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_commission_status_log
-- ----------------------------
ALTER TABLE "public"."t_commission_status_log" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Indexes structure for table t_visit_log
-- ----------------------------
CREATE INDEX "idx_visit_log_caid_dcreatedate" ON "public"."t_visit_log" USING btree (caid, dcreatedate);

-- ----------------------------
-- Foreign Key structure for table "public"."t_affiliate_referrer"
-- ----------------------------
ALTER TABLE "public"."t_affiliate_referrer" ADD FOREIGN KEY ("iwebsiteid", "caid") REFERENCES "public"."t_affiliate_base" ("caid", "iwebsiteid") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Key structure for table "public"."t_commission_order"
-- ----------------------------
ALTER TABLE "public"."t_commission_order" ADD FOREIGN KEY ("icommissionid") REFERENCES "public"."t_commission_history" ("iid") ON DELETE NO ACTION ON UPDATE NO ACTION;
