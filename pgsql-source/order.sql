/*
Navicat PGSQL Data Transfer

Source Server         : uat
Source Server Version : 90405
Source Host           : 192.168.220.52:5432
Source Database       : order
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 90405
File Encoding         : 65001

Date: 2016-06-28 18:14:32
*/


-- ----------------------------
-- Sequence structure for t_credit3D_limit_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_credit3D_limit_iid_seq";
CREATE SEQUENCE "public"."t_credit3D_limit_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for t_dropshipping_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_dropshipping_iid_seq";
CREATE SEQUENCE "public"."t_dropshipping_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 499
 CACHE 1;
SELECT setval('"public"."t_dropshipping_iid_seq"', 499, true);

-- ----------------------------
-- Sequence structure for t_dropshipping_map_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_dropshipping_map_iid_seq";
CREATE SEQUENCE "public"."t_dropshipping_map_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 628
 CACHE 1;
SELECT setval('"public"."t_dropshipping_map_iid_seq"', 628, true);

-- ----------------------------
-- Sequence structure for t_dropshipping_order_detail_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_dropshipping_order_detail_iid_seq";
CREATE SEQUENCE "public"."t_dropshipping_order_detail_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1254
 CACHE 1;
SELECT setval('"public"."t_dropshipping_order_detail_iid_seq"', 1254, true);

-- ----------------------------
-- Sequence structure for t_dropshipping_order_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_dropshipping_order_iid_seq";
CREATE SEQUENCE "public"."t_dropshipping_order_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 628
 CACHE 1;
SELECT setval('"public"."t_dropshipping_order_iid_seq"', 628, true);

-- ----------------------------
-- Sequence structure for t_order_alter_history_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_order_alter_history_iid_seq";
CREATE SEQUENCE "public"."t_order_alter_history_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 484
 CACHE 1;
SELECT setval('"public"."t_order_alter_history_iid_seq"', 484, true);

-- ----------------------------
-- Sequence structure for t_order_bill_detail_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_order_bill_detail_iid_seq";
CREATE SEQUENCE "public"."t_order_bill_detail_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 19516
 CACHE 1;
SELECT setval('"public"."t_order_bill_detail_iid_seq"', 19516, true);

-- ----------------------------
-- Sequence structure for t_order_currency_rate_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_order_currency_rate_iid_seq";
CREATE SEQUENCE "public"."t_order_currency_rate_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 6998
 CACHE 1;
SELECT setval('"public"."t_order_currency_rate_iid_seq"', 6998, true);

-- ----------------------------
-- Sequence structure for t_order_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_order_iid_seq";
CREATE SEQUENCE "public"."t_order_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 8171
 CACHE 1;
SELECT setval('"public"."t_order_iid_seq"', 8171, true);

-- ----------------------------
-- Sequence structure for t_order_label_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_order_label_iid_seq";
CREATE SEQUENCE "public"."t_order_label_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for t_order_label_type_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_order_label_type_iid_seq";
CREATE SEQUENCE "public"."t_order_label_type_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for t_order_opreation_log_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_order_opreation_log_iid_seq";
CREATE SEQUENCE "public"."t_order_opreation_log_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 3296
 CACHE 1;
SELECT setval('"public"."t_order_opreation_log_iid_seq"', 3296, true);

-- ----------------------------
-- Sequence structure for t_order_pack_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_order_pack_iid_seq";
CREATE SEQUENCE "public"."t_order_pack_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 5
 CACHE 1;
SELECT setval('"public"."t_order_pack_iid_seq"', 5, true);

-- ----------------------------
-- Sequence structure for t_order_payment_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_order_payment_iid_seq";
CREATE SEQUENCE "public"."t_order_payment_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1160
 CACHE 1;
SELECT setval('"public"."t_order_payment_iid_seq"', 1160, true);

-- ----------------------------
-- Sequence structure for t_order_status_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_order_status_iid_seq";
CREATE SEQUENCE "public"."t_order_status_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 9
 CACHE 1;
SELECT setval('"public"."t_order_status_iid_seq"', 9, true);

-- ----------------------------
-- Sequence structure for t_order_status_notify_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_order_status_notify_iid_seq";
CREATE SEQUENCE "public"."t_order_status_notify_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 101
 CACHE 1;
SELECT setval('"public"."t_order_status_notify_iid_seq"', 101, true);

-- ----------------------------
-- Sequence structure for t_order_status_notify_iid_seq1
-- ----------------------------
DROP SEQUENCE "public"."t_order_status_notify_iid_seq1";
CREATE SEQUENCE "public"."t_order_status_notify_iid_seq1"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 460
 CACHE 1;
SELECT setval('"public"."t_order_status_notify_iid_seq1"', 460, true);

-- ----------------------------
-- Sequence structure for t_payment_callback_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_payment_callback_iid_seq";
CREATE SEQUENCE "public"."t_payment_callback_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 863
 CACHE 1;
SELECT setval('"public"."t_payment_callback_iid_seq"', 863, true);

-- ----------------------------
-- Sequence structure for t_post_email_order_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_post_email_order_iid_seq";
CREATE SEQUENCE "public"."t_post_email_order_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1578
 CACHE 1;
SELECT setval('"public"."t_post_email_order_iid_seq"', 1578, true);

-- ----------------------------
-- Sequence structure for t_preparatory_detail_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_preparatory_detail_iid_seq";
CREATE SEQUENCE "public"."t_preparatory_detail_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1425
 CACHE 1;
SELECT setval('"public"."t_preparatory_detail_iid_seq"', 1425, true);

-- ----------------------------
-- Sequence structure for t_preparatory_order_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_preparatory_order_iid_seq";
CREATE SEQUENCE "public"."t_preparatory_order_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1160
 CACHE 1;
SELECT setval('"public"."t_preparatory_order_iid_seq"', 1160, true);

-- ----------------------------
-- Sequence structure for t_rabbit_monitor_id_seq
-- ----------------------------
DROP SEQUENCE "public"."t_rabbit_monitor_id_seq";
CREATE SEQUENCE "public"."t_rabbit_monitor_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 10
 CACHE 1;
SELECT setval('"public"."t_rabbit_monitor_id_seq"', 10, true);

-- ----------------------------
-- Sequence structure for t_received_data_history_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_received_data_history_iid_seq";
CREATE SEQUENCE "public"."t_received_data_history_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 6
 CACHE 1;
SELECT setval('"public"."t_received_data_history_iid_seq"', 6, true);

-- ----------------------------
-- Sequence structure for t_shipping_method_detail_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_shipping_method_detail_iid_seq";
CREATE SEQUENCE "public"."t_shipping_method_detail_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for t_shipping_method_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_shipping_method_iid_seq";
CREATE SEQUENCE "public"."t_shipping_method_iid_seq"
 INCREMENT 36672
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 10274417
 CACHE 1;
SELECT setval('"public"."t_shipping_method_iid_seq"', 10274417, true);

-- ----------------------------
-- Sequence structure for t_total_order_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_total_order_iid_seq";
CREATE SEQUENCE "public"."t_total_order_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 5
 CACHE 1;
SELECT setval('"public"."t_total_order_iid_seq"', 5, true);

-- ----------------------------
-- Sequence structure for t_total_order_map_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_total_order_map_iid_seq";
CREATE SEQUENCE "public"."t_total_order_map_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 10
 CACHE 1;
SELECT setval('"public"."t_total_order_map_iid_seq"', 10, true);

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
-- Table structure for t_credit3D_limit
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_credit3D_limit";
CREATE TABLE "public"."t_credit3D_limit" (
"iid" int4 DEFAULT nextval('"t_credit3D_limit_iid_seq"'::regclass) NOT NULL,
"ccode" varchar(50) COLLATE "default",
"fprice" float8
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_credit3D_limit" IS '信用卡3d验证金额限制';
COMMENT ON COLUMN "public"."t_credit3D_limit"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_credit3D_limit"."ccode" IS '货币符号';
COMMENT ON COLUMN "public"."t_credit3D_limit"."fprice" IS '限制金额';

-- ----------------------------
-- Table structure for t_dropshipping
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_dropshipping";
CREATE TABLE "public"."t_dropshipping" (
"iid" int4 DEFAULT nextval('t_dropshipping_iid_seq'::regclass) NOT NULL,
"cdropshippingid" varchar(50) COLLATE "default",
"cuseremail" varchar(80) COLLATE "default",
"ftotalprice" float8,
"bpaid" bool DEFAULT false,
"ccurrency" varchar(12) COLLATE "default",
"iwebsiteid" int4,
"dcreatedate" timestamp(6) DEFAULT now(),
"bused" bool DEFAULT false
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_dropshipping" IS 'DropShipping主表';
COMMENT ON COLUMN "public"."t_dropshipping"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_dropshipping"."cdropshippingid" IS 'DropShipping ID';
COMMENT ON COLUMN "public"."t_dropshipping"."cuseremail" IS '用户邮箱';
COMMENT ON COLUMN "public"."t_dropshipping"."ftotalprice" IS '总价';
COMMENT ON COLUMN "public"."t_dropshipping"."bpaid" IS '是否付款';
COMMENT ON COLUMN "public"."t_dropshipping"."ccurrency" IS '货币类型';
COMMENT ON COLUMN "public"."t_dropshipping"."iwebsiteid" IS '站点ID';
COMMENT ON COLUMN "public"."t_dropshipping"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_dropshipping"."bused" IS '是否已使用';

-- ----------------------------
-- Table structure for t_dropshipping_map
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_dropshipping_map";
CREATE TABLE "public"."t_dropshipping_map" (
"iid" int4 DEFAULT nextval('t_dropshipping_map_iid_seq'::regclass) NOT NULL,
"cdropshippingid" varchar(50) COLLATE "default",
"iorderid" int4,
"cordernumber" varchar(30) COLLATE "default",
"cuseremail" varchar(80) COLLATE "default",
"cdescription" varchar(1500) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_dropshipping_map" IS 'DropShipping';
COMMENT ON COLUMN "public"."t_dropshipping_map"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_dropshipping_map"."cdropshippingid" IS 'DropShipping ID';
COMMENT ON COLUMN "public"."t_dropshipping_map"."iorderid" IS 'DropShipping Order订单ID';
COMMENT ON COLUMN "public"."t_dropshipping_map"."cordernumber" IS '订单ID';
COMMENT ON COLUMN "public"."t_dropshipping_map"."cuseremail" IS '用户邮箱';
COMMENT ON COLUMN "public"."t_dropshipping_map"."cdescription" IS '描述';
COMMENT ON COLUMN "public"."t_dropshipping_map"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_dropshipping_order
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_dropshipping_order";
CREATE TABLE "public"."t_dropshipping_order" (
"iid" int4 DEFAULT nextval('t_dropshipping_order_iid_seq'::regclass) NOT NULL,
"cdropshippingid" varchar(50) COLLATE "default",
"cuseremail" varchar(80) COLLATE "default",
"cuserorderid" varchar(30) COLLATE "default",
"iwebsiteid" int4,
"ccountrysn" varchar(30) COLLATE "default",
"ccountry" varchar(100) COLLATE "default",
"cstreetaddress" varchar(180) COLLATE "default",
"ccity" varchar(80) COLLATE "default",
"cprovince" varchar(100) COLLATE "default",
"cpostalcode" varchar(80) COLLATE "default",
"ctelephone" varchar(40) COLLATE "default",
"cfirstname" varchar(40) COLLATE "default",
"ccnote" varchar(1000) COLLATE "default",
"cerrorlog" varchar(1000) COLLATE "default",
"ftotal" float8,
"dcreatedate" timestamp(6) DEFAULT now(),
"duserdate" timestamp(6),
"ccurrency" varchar(30) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_dropshipping_order" IS 'DropShipping订单';
COMMENT ON COLUMN "public"."t_dropshipping_order"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_dropshipping_order"."cdropshippingid" IS 'DropShipping ID';
COMMENT ON COLUMN "public"."t_dropshipping_order"."cuseremail" IS '用户邮箱';
COMMENT ON COLUMN "public"."t_dropshipping_order"."cuserorderid" IS '用户订单ID';
COMMENT ON COLUMN "public"."t_dropshipping_order"."iwebsiteid" IS '站点id';
COMMENT ON COLUMN "public"."t_dropshipping_order"."ccountrysn" IS '国家简写';
COMMENT ON COLUMN "public"."t_dropshipping_order"."ccountry" IS '国家';
COMMENT ON COLUMN "public"."t_dropshipping_order"."cstreetaddress" IS '街道地址';
COMMENT ON COLUMN "public"."t_dropshipping_order"."ccity" IS '城市';
COMMENT ON COLUMN "public"."t_dropshipping_order"."cprovince" IS '洲(省)';
COMMENT ON COLUMN "public"."t_dropshipping_order"."cpostalcode" IS '邮政编码';
COMMENT ON COLUMN "public"."t_dropshipping_order"."ctelephone" IS '联系电话';
COMMENT ON COLUMN "public"."t_dropshipping_order"."cfirstname" IS '收件人First Name';
COMMENT ON COLUMN "public"."t_dropshipping_order"."ccnote" IS '备注';
COMMENT ON COLUMN "public"."t_dropshipping_order"."cerrorlog" IS '错误信息';
COMMENT ON COLUMN "public"."t_dropshipping_order"."ftotal" IS '基本费用';
COMMENT ON COLUMN "public"."t_dropshipping_order"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_dropshipping_order"."duserdate" IS '用户创建时间';
COMMENT ON COLUMN "public"."t_dropshipping_order"."ccurrency" IS '结算货币';

-- ----------------------------
-- Table structure for t_dropshipping_order_detail
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_dropshipping_order_detail";
CREATE TABLE "public"."t_dropshipping_order_detail" (
"iid" int4 DEFAULT nextval('t_dropshipping_order_detail_iid_seq'::regclass) NOT NULL,
"iorderid" int4,
"csku" varchar(30) COLLATE "default",
"clistingid" varchar(40) COLLATE "default",
"ctitle" varchar(200) COLLATE "default",
"iqty" int4,
"fprice" float8,
"ftotalprice" float8,
"dcreatedate" timestamp(6) DEFAULT now(),
"foriginalprice" float8
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_dropshipping_order_detail" IS 'DropShipping订单明细表';
COMMENT ON COLUMN "public"."t_dropshipping_order_detail"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_dropshipping_order_detail"."iorderid" IS 'DropShipping订单号';
COMMENT ON COLUMN "public"."t_dropshipping_order_detail"."csku" IS 'SKU';
COMMENT ON COLUMN "public"."t_dropshipping_order_detail"."clistingid" IS 'Listingid';
COMMENT ON COLUMN "public"."t_dropshipping_order_detail"."ctitle" IS '商品标题';
COMMENT ON COLUMN "public"."t_dropshipping_order_detail"."iqty" IS '数量';
COMMENT ON COLUMN "public"."t_dropshipping_order_detail"."fprice" IS '单价';
COMMENT ON COLUMN "public"."t_dropshipping_order_detail"."ftotalprice" IS '总价';
COMMENT ON COLUMN "public"."t_dropshipping_order_detail"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_dropshipping_order_detail"."foriginalprice" IS '原价';

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_order";
CREATE TABLE "public"."t_order" (
"iid" int4 DEFAULT nextval('t_order_iid_seq'::regclass) NOT NULL,
"cemail" varchar(300) COLLATE "default",
"iwebsiteid" int4,
"ccountrysn" varchar(30) COLLATE "default",
"ccountry" varchar(100) COLLATE "default",
"cstreetaddress" varchar(180) COLLATE "default",
"ccity" varchar(80) COLLATE "default",
"cprovince" varchar(100) COLLATE "default",
"cpostalcode" varchar(80) COLLATE "default",
"ctelephone" varchar(40) COLLATE "default",
"cfirstname" varchar(40) COLLATE "default",
"cmiddlename" varchar(40) COLLATE "default",
"clastname" varchar(40) COLLATE "default",
"istorageid" int4,
"ishippingmethodid" int4,
"fshippingprice" float8,
"fordersubtotal" float8,
"fextra" float8,
"fgrandtotal" float8,
"ccartid" varchar(80) COLLATE "default",
"istatus" int4 DEFAULT 1,
"cpaymentid" varchar(80) COLLATE "default",
"ccurrency" varchar(30) COLLATE "default",
"corigin" varchar(30) COLLATE "default",
"cmemberemail" varchar(100) COLLATE "default",
"cip" varchar(30) COLLATE "default",
"cmessage" varchar(1500) COLLATE "default",
"ctransactionid" varchar(80) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now(),
"dpaymentdate" timestamp(6),
"ishow" int4 DEFAULT 1,
"cordernumber" varchar(50) COLLATE "default",
"cremark" varchar(500) COLLATE "default",
"creceiveraccount" varchar(80) COLLATE "default",
"cshippingcode" varchar(25) COLLATE "default",
"cvhost" varchar(80) COLLATE "default",
"ipaymentstatus" int4,
"cpaymenttype" varchar(50) COLLATE "default",
"cordertype" char(2) COLLATE "default" DEFAULT 10 NOT NULL
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_order" IS '订单表';
COMMENT ON COLUMN "public"."t_order"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_order"."cemail" IS '邮箱';
COMMENT ON COLUMN "public"."t_order"."iwebsiteid" IS '站点id';
COMMENT ON COLUMN "public"."t_order"."ccountrysn" IS '国家简写';
COMMENT ON COLUMN "public"."t_order"."ccountry" IS '国家';
COMMENT ON COLUMN "public"."t_order"."cstreetaddress" IS '街道地址';
COMMENT ON COLUMN "public"."t_order"."ccity" IS '城市';
COMMENT ON COLUMN "public"."t_order"."cprovince" IS '洲(省)';
COMMENT ON COLUMN "public"."t_order"."cpostalcode" IS '邮政编码';
COMMENT ON COLUMN "public"."t_order"."ctelephone" IS '联系电话';
COMMENT ON COLUMN "public"."t_order"."cfirstname" IS '收件人First Name';
COMMENT ON COLUMN "public"."t_order"."cmiddlename" IS '收件人Middle Name';
COMMENT ON COLUMN "public"."t_order"."clastname" IS '收件人Last Name';
COMMENT ON COLUMN "public"."t_order"."istorageid" IS '发货仓库 (结算物流)';
COMMENT ON COLUMN "public"."t_order"."ishippingmethodid" IS '发货方式 (结算物流)';
COMMENT ON COLUMN "public"."t_order"."fshippingprice" IS '物流费用';
COMMENT ON COLUMN "public"."t_order"."fordersubtotal" IS '基本费用';
COMMENT ON COLUMN "public"."t_order"."fextra" IS '额外支付费用';
COMMENT ON COLUMN "public"."t_order"."fgrandtotal" IS '结算费用';
COMMENT ON COLUMN "public"."t_order"."ccartid" IS '购物车编号';
COMMENT ON COLUMN "public"."t_order"."istatus" IS '订单状态';
COMMENT ON COLUMN "public"."t_order"."cpaymentid" IS '付款方式';
COMMENT ON COLUMN "public"."t_order"."ccurrency" IS '结算货币';
COMMENT ON COLUMN "public"."t_order"."corigin" IS '来源标识';
COMMENT ON COLUMN "public"."t_order"."cmemberemail" IS '会员Email';
COMMENT ON COLUMN "public"."t_order"."cip" IS '下单人ip';
COMMENT ON COLUMN "public"."t_order"."cmessage" IS '用户留言';
COMMENT ON COLUMN "public"."t_order"."ctransactionid" IS '交易号';
COMMENT ON COLUMN "public"."t_order"."dcreatedate" IS '下单时间';
COMMENT ON COLUMN "public"."t_order"."dpaymentdate" IS '付款时间';
COMMENT ON COLUMN "public"."t_order"."ishow" IS '可见性:1.可见(默认),2.回收站可见,3.不可见';
COMMENT ON COLUMN "public"."t_order"."cordernumber" IS '订单编号';
COMMENT ON COLUMN "public"."t_order"."cremark" IS '订单备注';
COMMENT ON COLUMN "public"."t_order"."creceiveraccount" IS '收款账号';
COMMENT ON COLUMN "public"."t_order"."cshippingcode" IS '物流代码';
COMMENT ON COLUMN "public"."t_order"."cvhost" IS 'vhost';
COMMENT ON COLUMN "public"."t_order"."ipaymentstatus" IS '0:未支付  1:已经支付  2:pending 3支付失败 4退款';
COMMENT ON COLUMN "public"."t_order"."cpaymenttype" IS 'ec支付:paypal-ec,普通paypal:paypal';
COMMENT ON COLUMN "public"."t_order"."cordertype" IS '订单类型：10普通订单、20预售订单';

-- ----------------------------
-- Table structure for t_order_20160421_tmp
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_order_20160421_tmp";
CREATE TABLE "public"."t_order_20160421_tmp" (
"iid" int4,
"cemail" varchar(300) COLLATE "default",
"iwebsiteid" int4,
"ccountrysn" varchar(50) COLLATE "default",
"ccountry" varchar(100) COLLATE "default",
"cstreetaddress" varchar(500) COLLATE "default",
"ccity" varchar(80) COLLATE "default",
"cprovince" varchar(100) COLLATE "default",
"cpostalcode" varchar(80) COLLATE "default",
"ctelephone" varchar(80) COLLATE "default",
"cfirstname" varchar(120) COLLATE "default",
"cmiddlename" varchar(120) COLLATE "default",
"clastname" varchar(120) COLLATE "default",
"istorageid" int4,
"ishippingmethodid" int4,
"fshippingprice" float8,
"fordersubtotal" float8,
"fextra" float8,
"fgrandtotal" float8,
"ccartid" varchar(80) COLLATE "default",
"istatus" int4,
"cpaymentid" varchar(80) COLLATE "default",
"ccurrency" varchar(50) COLLATE "default",
"corigin" varchar(50) COLLATE "default",
"cmemberemail" varchar(100) COLLATE "default",
"cip" varchar(50) COLLATE "default",
"cmessage" varchar(1500) COLLATE "default",
"dcreatedate" timestamp(6),
"dpaymentdate" timestamp(6),
"ishow" int4,
"ctransactionid" varchar(80) COLLATE "default",
"cremark" varchar(500) COLLATE "default",
"creceiveraccount" varchar(80) COLLATE "default",
"cshippingcode" varchar(25) COLLATE "default",
"cordernumber" varchar(50) COLLATE "default",
"cvhost" varchar(80) COLLATE "default",
"ipaymentstatus" int4,
"cpaymenttype" varchar(50) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for t_order_alter_history
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_order_alter_history";
CREATE TABLE "public"."t_order_alter_history" (
"iid" int4 DEFAULT nextval('t_order_alter_history_iid_seq'::regclass) NOT NULL,
"corderid" varchar(100) COLLATE "default",
"coldvalue" varchar(2000) COLLATE "default",
"cnewvalue" varchar(2000) COLLATE "default",
"ccreateuser" varchar(20) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_order_alter_history" IS '订单修改历史表';
COMMENT ON COLUMN "public"."t_order_alter_history"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_order_alter_history"."corderid" IS '订单号';
COMMENT ON COLUMN "public"."t_order_alter_history"."coldvalue" IS '修改前值';
COMMENT ON COLUMN "public"."t_order_alter_history"."cnewvalue" IS '修改后值';
COMMENT ON COLUMN "public"."t_order_alter_history"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_order_alter_history"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_order_bill_detail
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_order_bill_detail";
CREATE TABLE "public"."t_order_bill_detail" (
"iid" int4 DEFAULT nextval('t_order_bill_detail_iid_seq'::regclass) NOT NULL,
"iorderid" int4,
"ctype" varchar(30) COLLATE "default",
"iqty" int4,
"cmsg" varchar(1200) COLLATE "default",
"foriginalprice" float8,
"fpresentprice" float8,
"ftotalprice" float8,
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_order_bill_detail" IS '订单账单明细';
COMMENT ON COLUMN "public"."t_order_bill_detail"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_order_bill_detail"."iorderid" IS '订单ID';
COMMENT ON COLUMN "public"."t_order_bill_detail"."ctype" IS '明细类型';
COMMENT ON COLUMN "public"."t_order_bill_detail"."iqty" IS '数量';
COMMENT ON COLUMN "public"."t_order_bill_detail"."cmsg" IS '信息';
COMMENT ON COLUMN "public"."t_order_bill_detail"."foriginalprice" IS '原价';
COMMENT ON COLUMN "public"."t_order_bill_detail"."fpresentprice" IS '现价';
COMMENT ON COLUMN "public"."t_order_bill_detail"."ftotalprice" IS '总价（现价*数量）';
COMMENT ON COLUMN "public"."t_order_bill_detail"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_order_currency_rate
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_order_currency_rate";
CREATE TABLE "public"."t_order_currency_rate" (
"iid" int4 DEFAULT nextval('t_order_currency_rate_iid_seq'::regclass) NOT NULL,
"cordernumber" varchar(30) COLLATE "default",
"ccurrency" varchar(12) COLLATE "default",
"frate" float8,
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_order_currency_rate" IS '订单货币汇率';
COMMENT ON COLUMN "public"."t_order_currency_rate"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_order_currency_rate"."cordernumber" IS '订单ID';
COMMENT ON COLUMN "public"."t_order_currency_rate"."ccurrency" IS '货币类型';
COMMENT ON COLUMN "public"."t_order_currency_rate"."frate" IS '美元兑货币的汇率';
COMMENT ON COLUMN "public"."t_order_currency_rate"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_order_detail
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_order_detail";
CREATE TABLE "public"."t_order_detail" (
"cid" varchar(64) COLLATE "default" NOT NULL,
"iorderid" int4,
"ctitle" varchar(240) COLLATE "default",
"csku" varchar(30) COLLATE "default",
"clistingid" varchar(40) COLLATE "default",
"iqty" int4,
"fprice" float8,
"ftotalprices" float8,
"dcreatedate" timestamp(6) DEFAULT now(),
"fweight" float8,
"cparentid" varchar(64) COLLATE "default",
"commentid" int4,
"foriginalprice" float8
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_order_detail" IS '订单明细表';
COMMENT ON COLUMN "public"."t_order_detail"."cid" IS '主键';
COMMENT ON COLUMN "public"."t_order_detail"."iorderid" IS '订单号';
COMMENT ON COLUMN "public"."t_order_detail"."ctitle" IS '标题';
COMMENT ON COLUMN "public"."t_order_detail"."csku" IS 'SKU';
COMMENT ON COLUMN "public"."t_order_detail"."clistingid" IS 'Listingid';
COMMENT ON COLUMN "public"."t_order_detail"."iqty" IS '数量';
COMMENT ON COLUMN "public"."t_order_detail"."fprice" IS '单价';
COMMENT ON COLUMN "public"."t_order_detail"."ftotalprices" IS '总价';
COMMENT ON COLUMN "public"."t_order_detail"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_order_detail"."fweight" IS '单个sku的重量';
COMMENT ON COLUMN "public"."t_order_detail"."cparentid" IS '父条目id';
COMMENT ON COLUMN "public"."t_order_detail"."commentid" IS '评论id';
COMMENT ON COLUMN "public"."t_order_detail"."foriginalprice" IS '原价';

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
-- Table structure for t_order_label
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_order_label";
CREATE TABLE "public"."t_order_label" (
"iid" int4 DEFAULT nextval('t_order_label_iid_seq'::regclass) NOT NULL,
"iorderid" int4,
"ctype" varchar(100) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_order_label" IS '订单标签';
COMMENT ON COLUMN "public"."t_order_label"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_order_label"."iorderid" IS '订单编号';
COMMENT ON COLUMN "public"."t_order_label"."ctype" IS '订单标签名称';

-- ----------------------------
-- Table structure for t_order_label_type
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_order_label_type";
CREATE TABLE "public"."t_order_label_type" (
"iid" int4 DEFAULT nextval('t_order_label_type_iid_seq'::regclass) NOT NULL,
"ctype" varchar(100) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_order_label_type" IS '订单标签类型';
COMMENT ON COLUMN "public"."t_order_label_type"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_order_label_type"."ctype" IS '订单标签名称';

-- ----------------------------
-- Table structure for t_order_opreation_log
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_order_opreation_log";
CREATE TABLE "public"."t_order_opreation_log" (
"iid" int4 DEFAULT nextval('t_order_opreation_log_iid_seq'::regclass) NOT NULL,
"iwebsiteid" int4 DEFAULT 1,
"cemail" varchar(50) COLLATE "default",
"copreation" varchar(20) COLLATE "default" NOT NULL,
"ccreatetime" timestamp(6) DEFAULT now() NOT NULL,
"ccontent" text COLLATE "default",
"cresult" char(1) COLLATE "default" NOT NULL,
"cordernumber" varchar(50) COLLATE "default",
"cmemberemail" varchar(32) COLLATE "default",
"vhost" varchar(80) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "public"."t_order_opreation_log"."iwebsiteid" IS '站点号';
COMMENT ON COLUMN "public"."t_order_opreation_log"."cemail" IS '操作人';
COMMENT ON COLUMN "public"."t_order_opreation_log"."copreation" IS '操作类型';
COMMENT ON COLUMN "public"."t_order_opreation_log"."ccreatetime" IS ' 操作时间';
COMMENT ON COLUMN "public"."t_order_opreation_log"."ccontent" IS '明细';
COMMENT ON COLUMN "public"."t_order_opreation_log"."cresult" IS '结果';
COMMENT ON COLUMN "public"."t_order_opreation_log"."cordernumber" IS '订单号';
COMMENT ON COLUMN "public"."t_order_opreation_log"."vhost" IS '域名';

-- ----------------------------
-- Table structure for t_order_pack
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_order_pack";
CREATE TABLE "public"."t_order_pack" (
"iid" int4 DEFAULT nextval('t_order_pack_iid_seq'::regclass) NOT NULL,
"iorderid" int4,
"csku" varchar(30) COLLATE "default",
"iqty" int4,
"cshippingtype" varchar(300) COLLATE "default",
"fshippingprice" float8,
"ctrackingnumber" varchar(80) COLLATE "default",
"dshippingdate" timestamp(6) DEFAULT now(),
"dcreatedate" timestamp(6) DEFAULT now(),
"iisregister" int4,
"clocaltracknumber" varchar(50) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_order_pack" IS '订单包裹明细';
COMMENT ON COLUMN "public"."t_order_pack"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_order_pack"."iorderid" IS '订单ID';
COMMENT ON COLUMN "public"."t_order_pack"."csku" IS 'SKU';
COMMENT ON COLUMN "public"."t_order_pack"."iqty" IS '数量';
COMMENT ON COLUMN "public"."t_order_pack"."cshippingtype" IS '物流方式';
COMMENT ON COLUMN "public"."t_order_pack"."fshippingprice" IS '物流费用';
COMMENT ON COLUMN "public"."t_order_pack"."ctrackingnumber" IS '跟踪号';
COMMENT ON COLUMN "public"."t_order_pack"."dshippingdate" IS '发货时间';
COMMENT ON COLUMN "public"."t_order_pack"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_order_pack"."iisregister" IS '是否挂号';
COMMENT ON COLUMN "public"."t_order_pack"."clocaltracknumber" IS '平邮号';

-- ----------------------------
-- Table structure for t_order_payment
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_order_payment";
CREATE TABLE "public"."t_order_payment" (
"iid" int4 DEFAULT nextval('t_order_payment_iid_seq'::regclass) NOT NULL,
"corderid" varchar(64) COLLATE "default",
"cpaymentid" varchar(80) COLLATE "default",
"cjson" varchar(6000) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_order_payment" IS '订单支付信息';
COMMENT ON COLUMN "public"."t_order_payment"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_order_payment"."corderid" IS '订单ID';
COMMENT ON COLUMN "public"."t_order_payment"."cpaymentid" IS '付款方式';
COMMENT ON COLUMN "public"."t_order_payment"."cjson" IS '付款信息（JOSN）';
COMMENT ON COLUMN "public"."t_order_payment"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_order_status
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_order_status";
CREATE TABLE "public"."t_order_status" (
"iid" int4 DEFAULT nextval('t_order_status_iid_seq'::regclass) NOT NULL,
"cname" varchar(30) COLLATE "default",
"cremark" varchar(300) COLLATE "default",
"iorder" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_order_status" IS '订单状态表';
COMMENT ON COLUMN "public"."t_order_status"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_order_status"."cname" IS '状态名称';
COMMENT ON COLUMN "public"."t_order_status"."cremark" IS '备注';
COMMENT ON COLUMN "public"."t_order_status"."iorder" IS '订单状态排序';

-- ----------------------------
-- Table structure for t_order_status_history
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_order_status_history";
CREATE TABLE "public"."t_order_status_history" (
"iorderid" int4,
"istatus" int4,
"dcreatedate" timestamp(6) DEFAULT now(),
"coperator" varchar(100) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_order_status_history" IS '订单状态记录';
COMMENT ON COLUMN "public"."t_order_status_history"."iorderid" IS '订单ID';
COMMENT ON COLUMN "public"."t_order_status_history"."istatus" IS '订单状态';
COMMENT ON COLUMN "public"."t_order_status_history"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_order_status_history"."coperator" IS '操作者';

-- ----------------------------
-- Table structure for t_order_status_notify
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_order_status_notify";
CREATE TABLE "public"."t_order_status_notify" (
"iid" int4 DEFAULT nextval('t_order_status_notify_iid_seq1'::regclass) NOT NULL,
"iorderid" int4,
"cordernumber" varchar(50) COLLATE "default",
"cfirstname" varchar(40) COLLATE "default",
"cemail" varchar(300) COLLATE "default",
"ilanguageid" int4,
"iwebsiteid" int4,
"istatus" int4,
"dorderstatusdate" timestamp(6),
"bnotify" bool DEFAULT false,
"inotify" int2 DEFAULT 0,
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "public"."t_order_status_notify"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_order_status_notify"."iorderid" IS '订单ID';
COMMENT ON COLUMN "public"."t_order_status_notify"."cordernumber" IS '订单编号';
COMMENT ON COLUMN "public"."t_order_status_notify"."cfirstname" IS '收件人First Name';
COMMENT ON COLUMN "public"."t_order_status_notify"."cemail" IS '邮箱';
COMMENT ON COLUMN "public"."t_order_status_notify"."ilanguageid" IS '语言编号';
COMMENT ON COLUMN "public"."t_order_status_notify"."iwebsiteid" IS '站点id';
COMMENT ON COLUMN "public"."t_order_status_notify"."istatus" IS '订单状态';
COMMENT ON COLUMN "public"."t_order_status_notify"."dorderstatusdate" IS '订单状态创建时间';
COMMENT ON COLUMN "public"."t_order_status_notify"."bnotify" IS '通知状态';
COMMENT ON COLUMN "public"."t_order_status_notify"."inotify" IS '通知次数';
COMMENT ON COLUMN "public"."t_order_status_notify"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_order_tag
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_order_tag";
CREATE TABLE "public"."t_order_tag" (
"iorderid" int4 NOT NULL,
"ctag" varchar(200) COLLATE "default" NOT NULL
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_order_tag" IS '订单标签';
COMMENT ON COLUMN "public"."t_order_tag"."iorderid" IS '主键';
COMMENT ON COLUMN "public"."t_order_tag"."ctag" IS '订单标签';

-- ----------------------------
-- Table structure for t_payment_account
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_payment_account";
CREATE TABLE "public"."t_payment_account" (
"cpaymentid" varchar(30) COLLATE "default",
"iwebsiteid" int4,
"fbeginprice" float8,
"fendprice" float8,
"cbusiness" varchar(500) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_payment_account" IS '付款账号表';
COMMENT ON COLUMN "public"."t_payment_account"."cpaymentid" IS '支付方式';
COMMENT ON COLUMN "public"."t_payment_account"."iwebsiteid" IS '站点号';
COMMENT ON COLUMN "public"."t_payment_account"."fbeginprice" IS '开始价格';
COMMENT ON COLUMN "public"."t_payment_account"."fendprice" IS '结束价格';
COMMENT ON COLUMN "public"."t_payment_account"."cbusiness" IS '账号信息';
COMMENT ON COLUMN "public"."t_payment_account"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_payment_callback
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_payment_callback";
CREATE TABLE "public"."t_payment_callback" (
"iid" int4 DEFAULT nextval('t_payment_callback_iid_seq'::regclass) NOT NULL,
"cordernumber" varchar(40) COLLATE "default",
"ccontent" varchar(5000) COLLATE "default",
"cpaymentid" varchar(30) COLLATE "default",
"cresponse" varchar(1500) COLLATE "default",
"iwebsiteid" int4,
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_payment_callback" IS 'DropShipping主表';
COMMENT ON COLUMN "public"."t_payment_callback"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_payment_callback"."cordernumber" IS '订单编号';
COMMENT ON COLUMN "public"."t_payment_callback"."ccontent" IS '回调的内容';
COMMENT ON COLUMN "public"."t_payment_callback"."cpaymentid" IS '支付方式';
COMMENT ON COLUMN "public"."t_payment_callback"."cresponse" IS '返回内容';
COMMENT ON COLUMN "public"."t_payment_callback"."iwebsiteid" IS '站点ID';
COMMENT ON COLUMN "public"."t_payment_callback"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_post_email_order
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_post_email_order";
CREATE TABLE "public"."t_post_email_order" (
"iid" int4 DEFAULT nextval('t_post_email_order_iid_seq'::regclass) NOT NULL,
"iorderid" int4,
"istatus" int4,
"cemail" varchar(150) COLLATE "default",
"iwebsiteid" int4,
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_post_email_order" IS '发送未付款邮件';
COMMENT ON COLUMN "public"."t_post_email_order"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_post_email_order"."iorderid" IS '订单ID';
COMMENT ON COLUMN "public"."t_post_email_order"."istatus" IS '站点ID';
COMMENT ON COLUMN "public"."t_post_email_order"."cemail" IS '邮箱地址';
COMMENT ON COLUMN "public"."t_post_email_order"."iwebsiteid" IS '站点ID';
COMMENT ON COLUMN "public"."t_post_email_order"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_preparatory_detail
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_preparatory_detail";
CREATE TABLE "public"."t_preparatory_detail" (
"iid" int4 DEFAULT nextval('t_preparatory_detail_iid_seq'::regclass) NOT NULL,
"cid" varchar(80) COLLATE "default",
"cparentid" varchar(80) COLLATE "default",
"iorderid" int4,
"ctitle" varchar(240) COLLATE "default",
"csku" varchar(30) COLLATE "default",
"clistingid" varchar(40) COLLATE "default",
"iqty" int4,
"fprice" float8,
"ftotalprices" float8,
"dcreatedate" timestamp(6) DEFAULT now(),
"fweight" float8,
"foriginalprice" float8,
"bismain" bool
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_preparatory_detail" IS '预备订单明细表';
COMMENT ON COLUMN "public"."t_preparatory_detail"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_preparatory_detail"."cid" IS 'CartItemID';
COMMENT ON COLUMN "public"."t_preparatory_detail"."cparentid" IS 'Parent CartItemID';
COMMENT ON COLUMN "public"."t_preparatory_detail"."iorderid" IS '订单号';
COMMENT ON COLUMN "public"."t_preparatory_detail"."ctitle" IS '标题';
COMMENT ON COLUMN "public"."t_preparatory_detail"."csku" IS 'SKU';
COMMENT ON COLUMN "public"."t_preparatory_detail"."clistingid" IS 'Listingid';
COMMENT ON COLUMN "public"."t_preparatory_detail"."iqty" IS '数量';
COMMENT ON COLUMN "public"."t_preparatory_detail"."fprice" IS '单价';
COMMENT ON COLUMN "public"."t_preparatory_detail"."ftotalprices" IS '总价';
COMMENT ON COLUMN "public"."t_preparatory_detail"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_preparatory_detail"."fweight" IS '单个sku的重量';
COMMENT ON COLUMN "public"."t_preparatory_detail"."foriginalprice" IS '原价';
COMMENT ON COLUMN "public"."t_preparatory_detail"."bismain" IS '是否主产品';

-- ----------------------------
-- Table structure for t_preparatory_order
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_preparatory_order";
CREATE TABLE "public"."t_preparatory_order" (
"iid" int4 DEFAULT nextval('t_preparatory_order_iid_seq'::regclass) NOT NULL,
"ino" int4,
"iwebsiteid" int4,
"istorageid" int4,
"ccartid" varchar(80) COLLATE "default",
"cmemberemail" varchar(100) COLLATE "default",
"ccurrency" varchar(15) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_preparatory_order" IS '预备订单表';
COMMENT ON COLUMN "public"."t_preparatory_order"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_preparatory_order"."ino" IS '排序号';
COMMENT ON COLUMN "public"."t_preparatory_order"."iwebsiteid" IS '站点id';
COMMENT ON COLUMN "public"."t_preparatory_order"."istorageid" IS '发货仓库 (结算物流)';
COMMENT ON COLUMN "public"."t_preparatory_order"."ccartid" IS '购物车编号';
COMMENT ON COLUMN "public"."t_preparatory_order"."cmemberemail" IS '会员Email';
COMMENT ON COLUMN "public"."t_preparatory_order"."ccurrency" IS '货币';
COMMENT ON COLUMN "public"."t_preparatory_order"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_rabbit_monitor
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_rabbit_monitor";
CREATE TABLE "public"."t_rabbit_monitor" (
"moniter_id" int4 DEFAULT nextval('t_rabbit_monitor_id_seq'::regclass) NOT NULL,
"record_key" varchar(120) COLLATE "default" DEFAULT '_'::character varying,
"opt_type" varchar(200) COLLATE "default" DEFAULT '_'::character varying,
"record_state" varchar(20) COLLATE "default" DEFAULT '0'::character varying,
"fail_reason" varchar(5000) COLLATE "default",
"node_data" varchar(5000) COLLATE "default",
"created_on" timestamp(6),
"created_by" varchar(20) COLLATE "default",
"last_updated_on" timestamp(6),
"last_updated_by" varchar(20) COLLATE "default",
"is_deleted" varchar(5) COLLATE "default" DEFAULT '0'::character varying
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for t_received_data_history
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_received_data_history";
CREATE TABLE "public"."t_received_data_history" (
"iid" int4 DEFAULT nextval('t_received_data_history_iid_seq'::regclass) NOT NULL,
"ctype" varchar(100) COLLATE "default",
"ccontent" text COLLATE "default",
"ccreateuser" varchar(100) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_received_data_history" IS '接收数据记录表';
COMMENT ON COLUMN "public"."t_received_data_history"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_received_data_history"."ctype" IS '操作类型';
COMMENT ON COLUMN "public"."t_received_data_history"."ccontent" IS '推送数据内容';
COMMENT ON COLUMN "public"."t_received_data_history"."ccreateuser" IS '操作人';
COMMENT ON COLUMN "public"."t_received_data_history"."dcreatedate" IS '接收时间';

-- ----------------------------
-- Table structure for t_shipping_method
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_shipping_method";
CREATE TABLE "public"."t_shipping_method" (
"iid" int4 DEFAULT nextval('t_shipping_method_iid_seq'::regclass) NOT NULL,
"istorageid" int4,
"benabled" bool,
"bexistfree" bool,
"ffreebeginprice" float8,
"ffreeendprice" float8,
"ccountrys" varchar(3000) COLLATE "default",
"crule" varchar(60000) COLLATE "default",
"csuperrule" varchar(500) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now(),
"fbeginprice" float8,
"fendprice" float8,
"bistracking" bool,
"bisspecial" bool DEFAULT false,
"ccode" varchar(25) COLLATE "default",
"istartweight" int4,
"iendweight" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_shipping_method" IS '物流方式主表';
COMMENT ON COLUMN "public"."t_shipping_method"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_shipping_method"."istorageid" IS '仓库id';
COMMENT ON COLUMN "public"."t_shipping_method"."benabled" IS '是否启用';
COMMENT ON COLUMN "public"."t_shipping_method"."bexistfree" IS '是否存在免费';
COMMENT ON COLUMN "public"."t_shipping_method"."ffreebeginprice" IS '从何价格开始免费';
COMMENT ON COLUMN "public"."t_shipping_method"."ffreeendprice" IS '从何价格结束免费';
COMMENT ON COLUMN "public"."t_shipping_method"."ccountrys" IS '国家(可为复数,逗号隔开)';
COMMENT ON COLUMN "public"."t_shipping_method"."crule" IS '公式';
COMMENT ON COLUMN "public"."t_shipping_method"."csuperrule" IS '全局公式';
COMMENT ON COLUMN "public"."t_shipping_method"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_shipping_method"."bistracking" IS '有无追踪号';
COMMENT ON COLUMN "public"."t_shipping_method"."bisspecial" IS '是否容许运送特殊商品';
COMMENT ON COLUMN "public"."t_shipping_method"."ccode" IS '发货代码';
COMMENT ON COLUMN "public"."t_shipping_method"."istartweight" IS '开始重量段';
COMMENT ON COLUMN "public"."t_shipping_method"."iendweight" IS '结束重量段';

-- ----------------------------
-- Table structure for t_shipping_method_detail
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_shipping_method_detail";
CREATE TABLE "public"."t_shipping_method_detail" (
"iid" int4 DEFAULT nextval('t_shipping_method_detail_iid_seq'::regclass) NOT NULL,
"ilanguageid" int4,
"cname" varchar(50) COLLATE "default",
"ctitle" varchar(500) COLLATE "default",
"ccontent" varchar(5000) COLLATE "default",
"cfreecontent" varchar(5000) COLLATE "default",
"ccode" varchar(25) COLLATE "default",
"cimageurl" varchar(150) COLLATE "default",
"igroupid" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_shipping_method_detail" IS '物流方式明细表';
COMMENT ON COLUMN "public"."t_shipping_method_detail"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_shipping_method_detail"."ilanguageid" IS '语言ID';
COMMENT ON COLUMN "public"."t_shipping_method_detail"."cname" IS '物流方式名称';
COMMENT ON COLUMN "public"."t_shipping_method_detail"."ctitle" IS '标题';
COMMENT ON COLUMN "public"."t_shipping_method_detail"."ccontent" IS '内容';
COMMENT ON COLUMN "public"."t_shipping_method_detail"."cfreecontent" IS '免费时显示内容';
COMMENT ON COLUMN "public"."t_shipping_method_detail"."ccode" IS '物流代码';
COMMENT ON COLUMN "public"."t_shipping_method_detail"."cimageurl" IS '图片路径';
COMMENT ON COLUMN "public"."t_shipping_method_detail"."igroupid" IS '分组编号';

-- ----------------------------
-- Table structure for t_shipping_method_tmp_20160416_bak
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_shipping_method_tmp_20160416_bak";
CREATE TABLE "public"."t_shipping_method_tmp_20160416_bak" (
"iid" int4,
"istorageid" int4,
"benabled" bool,
"bexistfree" bool,
"ffreebeginprice" float8,
"ffreeendprice" float8,
"ccountrys" varchar(3000) COLLATE "default",
"crule" varchar(60000) COLLATE "default",
"csuperrule" varchar(500) COLLATE "default",
"dcreatedate" timestamp(6),
"fbeginprice" float8,
"fendprice" float8,
"bistracking" bool,
"bisspecial" bool,
"ccode" varchar(25) COLLATE "default",
"istartweight" int4,
"iendweight" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for t_shipping_parameter
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_shipping_parameter";
CREATE TABLE "public"."t_shipping_parameter" (
"ckey" varchar(40) COLLATE "default" NOT NULL,
"cjsonvalue" varchar(5000) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_shipping_parameter" IS '物流方式参数表';
COMMENT ON COLUMN "public"."t_shipping_parameter"."ckey" IS '唯一键';
COMMENT ON COLUMN "public"."t_shipping_parameter"."cjsonvalue" IS 'JSON格式的值';

-- ----------------------------
-- Table structure for t_test
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_test";
CREATE TABLE "public"."t_test" (
"id" int4 NOT NULL,
"nper" varchar(15) COLLATE "default",
"o_date" varchar(15) COLLATE "default",
"h1" int2,
"h2" int2,
"h3" int2,
"h4" int2,
"h5" int2,
"h6" int2,
"l7" int2
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "public"."t_test"."o_date" IS 'Test';

-- ----------------------------
-- Table structure for t_total_order
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_total_order";
CREATE TABLE "public"."t_total_order" (
"iid" int4 DEFAULT nextval('t_total_order_iid_seq'::regclass) NOT NULL,
"cid" varchar(80) COLLATE "default" NOT NULL
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_total_order" IS '总订单表';
COMMENT ON COLUMN "public"."t_total_order"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_total_order"."cid" IS '主键';

-- ----------------------------
-- Table structure for t_total_order_map
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_total_order_map";
CREATE TABLE "public"."t_total_order_map" (
"iid" int4 DEFAULT nextval('t_total_order_map_iid_seq'::regclass) NOT NULL,
"iorderid" int4,
"itotalid" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_total_order_map" IS '总订单关联表';
COMMENT ON COLUMN "public"."t_total_order_map"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_total_order_map"."iorderid" IS 'Order ID';
COMMENT ON COLUMN "public"."t_total_order_map"."itotalid" IS 'Total Order ID';

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------
ALTER SEQUENCE "public"."t_credit3D_limit_iid_seq" OWNED BY "t_credit3D_limit"."iid";
ALTER SEQUENCE "public"."t_dropshipping_iid_seq" OWNED BY "t_dropshipping"."iid";
ALTER SEQUENCE "public"."t_dropshipping_map_iid_seq" OWNED BY "t_dropshipping_map"."iid";
ALTER SEQUENCE "public"."t_dropshipping_order_detail_iid_seq" OWNED BY "t_dropshipping_order_detail"."iid";
ALTER SEQUENCE "public"."t_dropshipping_order_iid_seq" OWNED BY "t_dropshipping_order"."iid";
ALTER SEQUENCE "public"."t_order_alter_history_iid_seq" OWNED BY "t_order_alter_history"."iid";
ALTER SEQUENCE "public"."t_order_bill_detail_iid_seq" OWNED BY "t_order_bill_detail"."iid";
ALTER SEQUENCE "public"."t_order_currency_rate_iid_seq" OWNED BY "t_order_currency_rate"."iid";
ALTER SEQUENCE "public"."t_order_iid_seq" OWNED BY "t_order"."iid";
ALTER SEQUENCE "public"."t_order_label_iid_seq" OWNED BY "t_order_label"."iid";
ALTER SEQUENCE "public"."t_order_label_type_iid_seq" OWNED BY "t_order_label_type"."iid";
ALTER SEQUENCE "public"."t_order_pack_iid_seq" OWNED BY "t_order_pack"."iid";
ALTER SEQUENCE "public"."t_order_payment_iid_seq" OWNED BY "t_order_payment"."iid";
ALTER SEQUENCE "public"."t_order_status_iid_seq" OWNED BY "t_order_status"."iid";
ALTER SEQUENCE "public"."t_order_status_notify_iid_seq1" OWNED BY "t_order_status_notify"."iid";
ALTER SEQUENCE "public"."t_payment_callback_iid_seq" OWNED BY "t_payment_callback"."iid";
ALTER SEQUENCE "public"."t_post_email_order_iid_seq" OWNED BY "t_post_email_order"."iid";
ALTER SEQUENCE "public"."t_preparatory_detail_iid_seq" OWNED BY "t_preparatory_detail"."iid";
ALTER SEQUENCE "public"."t_preparatory_order_iid_seq" OWNED BY "t_preparatory_order"."iid";
ALTER SEQUENCE "public"."t_shipping_method_detail_iid_seq" OWNED BY "t_shipping_method_detail"."iid";
ALTER SEQUENCE "public"."t_shipping_method_iid_seq" OWNED BY "t_shipping_method"."iid";
ALTER SEQUENCE "public"."t_total_order_iid_seq" OWNED BY "t_total_order"."iid";
ALTER SEQUENCE "public"."t_total_order_map_iid_seq" OWNED BY "t_total_order_map"."iid";

-- ----------------------------
-- Primary Key structure for table databasechangeloglock
-- ----------------------------
ALTER TABLE "public"."databasechangeloglock" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_credit3D_limit
-- ----------------------------
ALTER TABLE "public"."t_credit3D_limit" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_dropshipping
-- ----------------------------
ALTER TABLE "public"."t_dropshipping" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Indexes structure for table t_dropshipping_map
-- ----------------------------
CREATE INDEX "idx_dropshippingmap_cdropshippingid" ON "public"."t_dropshipping_map" USING btree (cdropshippingid);
CREATE INDEX "idx_dropshippingmap_cordernumber" ON "public"."t_dropshipping_map" USING btree (cordernumber);
CREATE INDEX "idx_dropshippingmap_iorderid" ON "public"."t_dropshipping_map" USING btree (iorderid);

-- ----------------------------
-- Primary Key structure for table t_dropshipping_map
-- ----------------------------
ALTER TABLE "public"."t_dropshipping_map" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_dropshipping_order
-- ----------------------------
ALTER TABLE "public"."t_dropshipping_order" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_dropshipping_order_detail
-- ----------------------------
ALTER TABLE "public"."t_dropshipping_order_detail" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Indexes structure for table t_order
-- ----------------------------
CREATE INDEX "idx_order_cmemberemail" ON "public"."t_order" USING btree (cmemberemail);
CREATE UNIQUE INDEX "idx_order_cordernumber" ON "public"."t_order" USING btree (cordernumber);
CREATE INDEX "idx_order_cordertype" ON "public"."t_order" USING btree (cordertype);
CREATE INDEX "idx_order_dcreatedate" ON "public"."t_order" USING btree (dcreatedate);
CREATE INDEX "idx_order_ipaymentstatus" ON "public"."t_order" USING btree (ipaymentstatus);
CREATE INDEX "idx_order_istatus" ON "public"."t_order" USING btree (istatus);
CREATE INDEX "idx_order_iwebsiteid" ON "public"."t_order" USING btree (iwebsiteid);

-- ----------------------------
-- Primary Key structure for table t_order
-- ----------------------------
ALTER TABLE "public"."t_order" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_order_alter_history
-- ----------------------------
ALTER TABLE "public"."t_order_alter_history" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Indexes structure for table t_order_bill_detail
-- ----------------------------
CREATE INDEX "idx_billdetail_iorderid_ctype" ON "public"."t_order_bill_detail" USING btree (iorderid, ctype);

-- ----------------------------
-- Primary Key structure for table t_order_bill_detail
-- ----------------------------
ALTER TABLE "public"."t_order_bill_detail" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Indexes structure for table t_order_currency_rate
-- ----------------------------
CREATE INDEX "idx_order_currency_rate_cordernumber" ON "public"."t_order_currency_rate" USING btree (cordernumber);

-- ----------------------------
-- Primary Key structure for table t_order_currency_rate
-- ----------------------------
ALTER TABLE "public"."t_order_currency_rate" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Indexes structure for table t_order_detail
-- ----------------------------
CREATE INDEX "idx_order_detail_iorderid_clistingid_commentid" ON "public"."t_order_detail" USING btree (iorderid, clistingid, commentid);
CREATE INDEX "index_t_order_detail_1" ON "public"."t_order_detail" USING btree (clistingid);

-- ----------------------------
-- Primary Key structure for table t_order_detail
-- ----------------------------
ALTER TABLE "public"."t_order_detail" ADD PRIMARY KEY ("cid");

-- ----------------------------
-- Indexes structure for table t_order_discount
-- ----------------------------
CREATE INDEX "idx_order_discount_ordernumber" ON "public"."t_order_discount" USING btree (order_number);
CREATE INDEX "idx_order_discount_website" ON "public"."t_order_discount" USING btree (website);

-- ----------------------------
-- Primary Key structure for table t_order_label
-- ----------------------------
ALTER TABLE "public"."t_order_label" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_order_label_type
-- ----------------------------
ALTER TABLE "public"."t_order_label_type" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Indexes structure for table t_order_opreation_log
-- ----------------------------
CREATE INDEX "idx_opreationlog_copreation" ON "public"."t_order_opreation_log" USING btree (copreation, cordernumber, cresult);

-- ----------------------------
-- Primary Key structure for table t_order_opreation_log
-- ----------------------------
ALTER TABLE "public"."t_order_opreation_log" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_order_pack
-- ----------------------------
ALTER TABLE "public"."t_order_pack" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Indexes structure for table t_order_payment
-- ----------------------------
CREATE INDEX "idx_order_payment_corderid_cpaymentid" ON "public"."t_order_payment" USING btree (corderid, cpaymentid);

-- ----------------------------
-- Primary Key structure for table t_order_payment
-- ----------------------------
ALTER TABLE "public"."t_order_payment" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Indexes structure for table t_order_status
-- ----------------------------
CREATE INDEX "idx_order_status_cname" ON "public"."t_order_status" USING btree (cname);

-- ----------------------------
-- Uniques structure for table t_order_status
-- ----------------------------
ALTER TABLE "public"."t_order_status" ADD UNIQUE ("cname");

-- ----------------------------
-- Primary Key structure for table t_order_status
-- ----------------------------
ALTER TABLE "public"."t_order_status" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Indexes structure for table t_order_tag
-- ----------------------------
CREATE INDEX "idx_order_tag_ctag" ON "public"."t_order_tag" USING btree (ctag);
CREATE INDEX "idx_order_tag_iorderid" ON "public"."t_order_tag" USING btree (iorderid);

-- ----------------------------
-- Uniques structure for table t_order_tag
-- ----------------------------
ALTER TABLE "public"."t_order_tag" ADD UNIQUE ("iorderid", "ctag");

-- ----------------------------
-- Indexes structure for table t_payment_account
-- ----------------------------
CREATE INDEX "idx_paymentaccount_cpaymentid" ON "public"."t_payment_account" USING btree (cpaymentid);
CREATE INDEX "idx_paymentaccount_iwebsiteid" ON "public"."t_payment_account" USING btree (iwebsiteid);

-- ----------------------------
-- Primary Key structure for table t_payment_callback
-- ----------------------------
ALTER TABLE "public"."t_payment_callback" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_post_email_order
-- ----------------------------
ALTER TABLE "public"."t_post_email_order" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_preparatory_detail
-- ----------------------------
ALTER TABLE "public"."t_preparatory_detail" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Indexes structure for table t_preparatory_order
-- ----------------------------
CREATE INDEX "idx_preparatory_order_ccartid" ON "public"."t_preparatory_order" USING btree (ccartid);

-- ----------------------------
-- Primary Key structure for table t_preparatory_order
-- ----------------------------
ALTER TABLE "public"."t_preparatory_order" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_rabbit_monitor
-- ----------------------------
ALTER TABLE "public"."t_rabbit_monitor" ADD PRIMARY KEY ("moniter_id");

-- ----------------------------
-- Primary Key structure for table t_received_data_history
-- ----------------------------
ALTER TABLE "public"."t_received_data_history" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_shipping_method
-- ----------------------------
ALTER TABLE "public"."t_shipping_method" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_shipping_method_detail
-- ----------------------------
ALTER TABLE "public"."t_shipping_method_detail" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_shipping_parameter
-- ----------------------------
ALTER TABLE "public"."t_shipping_parameter" ADD PRIMARY KEY ("ckey");

-- ----------------------------
-- Uniques structure for table t_test
-- ----------------------------
ALTER TABLE "public"."t_test" ADD UNIQUE ("id");

-- ----------------------------
-- Primary Key structure for table t_test
-- ----------------------------
ALTER TABLE "public"."t_test" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table t_total_order
-- ----------------------------
CREATE INDEX "idx_totalorder_cid" ON "public"."t_total_order" USING btree (cid);

-- ----------------------------
-- Primary Key structure for table t_total_order
-- ----------------------------
ALTER TABLE "public"."t_total_order" ADD PRIMARY KEY ("iid", "cid");

-- ----------------------------
-- Primary Key structure for table t_total_order_map
-- ----------------------------
ALTER TABLE "public"."t_total_order_map" ADD PRIMARY KEY ("iid");
