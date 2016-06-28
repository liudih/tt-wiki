/*
Navicat PGSQL Data Transfer

Source Server         : uat
Source Server Version : 90405
Source Host           : 192.168.220.52:5432
Source Database       : cart
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 90405
File Encoding         : 65001

Date: 2016-06-28 18:12:40
*/


-- ----------------------------
-- Sequence structure for t_cart_history_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_cart_history_iid_seq";
CREATE SEQUENCE "public"."t_cart_history_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 10018
 CACHE 1;
SELECT setval('"public"."t_cart_history_iid_seq"', 10018, true);

-- ----------------------------
-- Sequence structure for t_cart_item_history_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_cart_item_history_iid_seq";
CREATE SEQUENCE "public"."t_cart_item_history_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1288
 CACHE 1;
SELECT setval('"public"."t_cart_item_history_iid_seq"', 1288, true);

-- ----------------------------
-- Sequence structure for t_cart_item_list_addition_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_cart_item_list_addition_iid_seq";
CREATE SEQUENCE "public"."t_cart_item_list_addition_iid_seq"
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
-- Table structure for t_cart_base
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_cart_base";
CREATE TABLE "public"."t_cart_base" (
"cid" varchar(50) COLLATE "default" NOT NULL,
"cuuid" varchar(50) COLLATE "default",
"cmemberemail" varchar(100) COLLATE "default",
"bgenerateorders" bool DEFAULT false,
"ccreateuser" varchar(50) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now(),
"iwebsiteid" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_cart_base" IS '购物车';
COMMENT ON COLUMN "public"."t_cart_base"."cid" IS '主键';
COMMENT ON COLUMN "public"."t_cart_base"."cuuid" IS '客户端id';
COMMENT ON COLUMN "public"."t_cart_base"."cmemberemail" IS '邮箱';
COMMENT ON COLUMN "public"."t_cart_base"."bgenerateorders" IS '是否生成订单';
COMMENT ON COLUMN "public"."t_cart_base"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_cart_base"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_cart_base"."iwebsiteid" IS '站点id';

-- ----------------------------
-- Table structure for t_cart_extra
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_cart_extra";
CREATE TABLE "public"."t_cart_extra" (
"cid" varchar(50) COLLATE "default" NOT NULL,
"ccartbaseid" varchar(50) COLLATE "default",
"cpluginid" varchar(50) COLLATE "default",
"cpayload" text COLLATE "default",
"ccreateuser" varchar(50) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_cart_extra" IS '购物车额外的支付';
COMMENT ON COLUMN "public"."t_cart_extra"."cid" IS '主键';
COMMENT ON COLUMN "public"."t_cart_extra"."ccartbaseid" IS '购物车编号';
COMMENT ON COLUMN "public"."t_cart_extra"."cpluginid" IS '扩展IOrderExtrasProvider的ID';
COMMENT ON COLUMN "public"."t_cart_extra"."cpayload" IS '插件相关的内容信息';
COMMENT ON COLUMN "public"."t_cart_extra"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_cart_extra"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_cart_history
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_cart_history";
CREATE TABLE "public"."t_cart_history" (
"iid" int4 DEFAULT nextval('t_cart_history_iid_seq'::regclass) NOT NULL,
"cip" varchar(100) COLLATE "default",
"cmemberemail" varchar(100) COLLATE "default",
"clistingid" varchar(50) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now(),
"itype" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_cart_history" IS '购物车操作历史记录';
COMMENT ON COLUMN "public"."t_cart_history"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_cart_history"."cip" IS 'ip地址';
COMMENT ON COLUMN "public"."t_cart_history"."cmemberemail" IS '邮箱';
COMMENT ON COLUMN "public"."t_cart_history"."clistingid" IS '产品listingid';
COMMENT ON COLUMN "public"."t_cart_history"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_cart_history"."itype" IS '1:增加;2:更新;3:删除';

-- ----------------------------
-- Table structure for t_cart_item
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_cart_item";
CREATE TABLE "public"."t_cart_item" (
"cid" varchar(50) COLLATE "default" NOT NULL,
"ccartbaseid" varchar(50) COLLATE "default",
"iitemtype" int4,
"iqty" int4,
"ccreateuser" varchar(50) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now(),
"clastupdateduser" varchar(50) COLLATE "default",
"dlastupdateddate" timestamp(6),
"cdevice" varchar(50) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_cart_item" IS '购物车item类型';
COMMENT ON COLUMN "public"."t_cart_item"."cid" IS '主键';
COMMENT ON COLUMN "public"."t_cart_item"."ccartbaseid" IS '购物车id';
COMMENT ON COLUMN "public"."t_cart_item"."iitemtype" IS '类型';
COMMENT ON COLUMN "public"."t_cart_item"."iqty" IS '数量';
COMMENT ON COLUMN "public"."t_cart_item"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_cart_item"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_cart_item"."clastupdateduser" IS '修改人';
COMMENT ON COLUMN "public"."t_cart_item"."dlastupdateddate" IS '修改时间';
COMMENT ON COLUMN "public"."t_cart_item"."cdevice" IS '设备名称';

-- ----------------------------
-- Table structure for t_cart_item_history
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_cart_item_history";
CREATE TABLE "public"."t_cart_item_history" (
"iid" int4 DEFAULT nextval('t_cart_item_history_iid_seq'::regclass) NOT NULL,
"cuuid" varchar(50) COLLATE "default",
"cmemberemail" varchar(100) COLLATE "default",
"clistingid" varchar(50) COLLATE "default",
"ccreateuser" varchar(50) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now(),
"dadddate" timestamp(6),
"dupdatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_cart_item_history" IS '购物车删除历史记录';
COMMENT ON COLUMN "public"."t_cart_item_history"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_cart_item_history"."cuuid" IS '客户端id';
COMMENT ON COLUMN "public"."t_cart_item_history"."cmemberemail" IS '邮箱';
COMMENT ON COLUMN "public"."t_cart_item_history"."clistingid" IS '产品listingid';
COMMENT ON COLUMN "public"."t_cart_item_history"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_cart_item_history"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_cart_item_history"."dadddate" IS '添加购物车时间';
COMMENT ON COLUMN "public"."t_cart_item_history"."dupdatedate" IS '更新时间';

-- ----------------------------
-- Table structure for t_cart_item_list
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_cart_item_list";
CREATE TABLE "public"."t_cart_item_list" (
"ccartitemid" varchar(50) COLLATE "default",
"bismain" bool,
"clistingid" varchar(50) COLLATE "default",
"iqty" int4,
"istorageid" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_cart_item_list" IS '购物车详细';
COMMENT ON COLUMN "public"."t_cart_item_list"."ccartitemid" IS '组id';
COMMENT ON COLUMN "public"."t_cart_item_list"."bismain" IS '是否主产品';
COMMENT ON COLUMN "public"."t_cart_item_list"."clistingid" IS '产品listingid';
COMMENT ON COLUMN "public"."t_cart_item_list"."iqty" IS '数量';
COMMENT ON COLUMN "public"."t_cart_item_list"."istorageid" IS '仓库ID';

-- ----------------------------
-- Table structure for t_cart_item_list_addition
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_cart_item_list_addition";
CREATE TABLE "public"."t_cart_item_list_addition" (
"iid" int4 DEFAULT nextval('t_cart_item_list_addition_iid_seq'::regclass) NOT NULL,
"ccartitemid" varchar(50) COLLATE "default",
"clistingid" varchar(50) COLLATE "default",
"money" float8,
"description" varchar(200) COLLATE "default",
"status" int4,
"ccreateuser" varchar(50) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_cart_item_list_addition" IS '购物车优惠信息';
COMMENT ON COLUMN "public"."t_cart_item_list_addition"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_cart_item_list_addition"."ccartitemid" IS '组id';
COMMENT ON COLUMN "public"."t_cart_item_list_addition"."clistingid" IS '产品listingid';
COMMENT ON COLUMN "public"."t_cart_item_list_addition"."money" IS '优惠金额';
COMMENT ON COLUMN "public"."t_cart_item_list_addition"."description" IS '描述';
COMMENT ON COLUMN "public"."t_cart_item_list_addition"."status" IS '状态,0:无优惠,1:有优惠';
COMMENT ON COLUMN "public"."t_cart_item_list_addition"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_cart_item_list_addition"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------
ALTER SEQUENCE "public"."t_cart_history_iid_seq" OWNED BY "t_cart_history"."iid";
ALTER SEQUENCE "public"."t_cart_item_history_iid_seq" OWNED BY "t_cart_item_history"."iid";
ALTER SEQUENCE "public"."t_cart_item_list_addition_iid_seq" OWNED BY "t_cart_item_list_addition"."iid";

-- ----------------------------
-- Indexes structure for table databasechangelog
-- ----------------------------
CREATE INDEX "index_orderexecuted" ON "public"."databasechangelog" USING btree (orderexecuted);

-- ----------------------------
-- Primary Key structure for table databasechangeloglock
-- ----------------------------
ALTER TABLE "public"."databasechangeloglock" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_cart_base
-- ----------------------------
ALTER TABLE "public"."t_cart_base" ADD PRIMARY KEY ("cid");

-- ----------------------------
-- Uniques structure for table t_cart_extra
-- ----------------------------
ALTER TABLE "public"."t_cart_extra" ADD UNIQUE ("ccartbaseid", "cpluginid");

-- ----------------------------
-- Primary Key structure for table t_cart_extra
-- ----------------------------
ALTER TABLE "public"."t_cart_extra" ADD PRIMARY KEY ("cid");

-- ----------------------------
-- Primary Key structure for table t_cart_history
-- ----------------------------
ALTER TABLE "public"."t_cart_history" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_cart_item
-- ----------------------------
ALTER TABLE "public"."t_cart_item" ADD PRIMARY KEY ("cid");

-- ----------------------------
-- Primary Key structure for table t_cart_item_history
-- ----------------------------
ALTER TABLE "public"."t_cart_item_history" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_cart_item_list_addition
-- ----------------------------
ALTER TABLE "public"."t_cart_item_list_addition" ADD PRIMARY KEY ("iid");
