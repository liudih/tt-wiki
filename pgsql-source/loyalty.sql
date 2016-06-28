/*
Navicat PGSQL Data Transfer

Source Server         : uat
Source Server Version : 90405
Source Host           : 192.168.220.52:5432
Source Database       : loyalty
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 90405
File Encoding         : 65001

Date: 2016-06-28 18:13:23
*/


-- ----------------------------
-- Sequence structure for t_activity_award_type_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_activity_award_type_iid_seq";
CREATE SEQUENCE "public"."t_activity_award_type_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 2
 CACHE 1;
SELECT setval('"public"."t_activity_award_type_iid_seq"', 2, true);

-- ----------------------------
-- Sequence structure for t_activity_do_type_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_activity_do_type_iid_seq";
CREATE SEQUENCE "public"."t_activity_do_type_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 22
 CACHE 1;
SELECT setval('"public"."t_activity_do_type_iid_seq"', 22, true);

-- ----------------------------
-- Sequence structure for t_activity_dotype_rule_element_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_activity_dotype_rule_element_iid_seq";
CREATE SEQUENCE "public"."t_activity_dotype_rule_element_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;
SELECT setval('"public"."t_activity_dotype_rule_element_iid_seq"', 1, true);

-- ----------------------------
-- Sequence structure for t_activity_plan_base_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_activity_plan_base_iid_seq";
CREATE SEQUENCE "public"."t_activity_plan_base_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;
SELECT setval('"public"."t_activity_plan_base_iid_seq"', 1, true);

-- ----------------------------
-- Sequence structure for t_bulk_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_bulk_iid_seq";
CREATE SEQUENCE "public"."t_bulk_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 5
 CACHE 1;
SELECT setval('"public"."t_bulk_iid_seq"', 5, true);

-- ----------------------------
-- Sequence structure for t_bulk_rate_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_bulk_rate_iid_seq";
CREATE SEQUENCE "public"."t_bulk_rate_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 6
 CACHE 1;
SELECT setval('"public"."t_bulk_rate_iid_seq"', 6, true);

-- ----------------------------
-- Sequence structure for t_campaign_base_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_campaign_base_iid_seq";
CREATE SEQUENCE "public"."t_campaign_base_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for t_campaign_condition_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_campaign_condition_iid_seq";
CREATE SEQUENCE "public"."t_campaign_condition_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for t_campaign_product_map_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_campaign_product_map_iid_seq";
CREATE SEQUENCE "public"."t_campaign_product_map_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for t_campaign_type_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_campaign_type_iid_seq";
CREATE SEQUENCE "public"."t_campaign_type_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for t_cart_coupon_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_cart_coupon_iid_seq";
CREATE SEQUENCE "public"."t_cart_coupon_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 478
 CACHE 1;
SELECT setval('"public"."t_cart_coupon_iid_seq"', 478, true);

-- ----------------------------
-- Sequence structure for t_collect_customer_share_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_collect_customer_share_iid_seq";
CREATE SEQUENCE "public"."t_collect_customer_share_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 17
 CACHE 1;
SELECT setval('"public"."t_collect_customer_share_iid_seq"', 17, true);

-- ----------------------------
-- Sequence structure for t_coupon_base_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_coupon_base_iid_seq";
CREATE SEQUENCE "public"."t_coupon_base_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 211
 CACHE 1;
SELECT setval('"public"."t_coupon_base_iid_seq"', 211, true);

-- ----------------------------
-- Sequence structure for t_coupon_code_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_coupon_code_iid_seq";
CREATE SEQUENCE "public"."t_coupon_code_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1108385
 CACHE 1;
SELECT setval('"public"."t_coupon_code_iid_seq"', 1108385, true);

-- ----------------------------
-- Sequence structure for t_coupon_rule_categoryfilter_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_coupon_rule_categoryfilter_iid_seq";
CREATE SEQUENCE "public"."t_coupon_rule_categoryfilter_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 30461
 CACHE 1;
SELECT setval('"public"."t_coupon_rule_categoryfilter_iid_seq"', 30461, true);

-- ----------------------------
-- Sequence structure for t_coupon_rule_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_coupon_rule_iid_seq";
CREATE SEQUENCE "public"."t_coupon_rule_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 168
 CACHE 1;
SELECT setval('"public"."t_coupon_rule_iid_seq"', 168, true);

-- ----------------------------
-- Sequence structure for t_coupon_sku_relation_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_coupon_sku_relation_iid_seq";
CREATE SEQUENCE "public"."t_coupon_sku_relation_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 6
 CACHE 1;
SELECT setval('"public"."t_coupon_sku_relation_iid_seq"', 6, true);

-- ----------------------------
-- Sequence structure for t_coupon_type_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_coupon_type_iid_seq";
CREATE SEQUENCE "public"."t_coupon_type_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for t_integral_behavior_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_integral_behavior_iid_seq";
CREATE SEQUENCE "public"."t_integral_behavior_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 3
 CACHE 1;
SELECT setval('"public"."t_integral_behavior_iid_seq"', 3, true);

-- ----------------------------
-- Sequence structure for t_integral_type_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_integral_type_iid_seq";
CREATE SEQUENCE "public"."t_integral_type_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for t_integral_use_rule_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_integral_use_rule_iid_seq";
CREATE SEQUENCE "public"."t_integral_use_rule_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;
SELECT setval('"public"."t_integral_use_rule_iid_seq"', 1, true);

-- ----------------------------
-- Sequence structure for t_member_consume_code_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_member_consume_code_iid_seq";
CREATE SEQUENCE "public"."t_member_consume_code_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for t_member_coupon_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_member_coupon_iid_seq";
CREATE SEQUENCE "public"."t_member_coupon_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 31117
 CACHE 1;
SELECT setval('"public"."t_member_coupon_iid_seq"', 31117, true);

-- ----------------------------
-- Sequence structure for t_member_edm_count_id_seq
-- ----------------------------
DROP SEQUENCE "public"."t_member_edm_count_id_seq";
CREATE SEQUENCE "public"."t_member_edm_count_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 25
 CACHE 1;
SELECT setval('"public"."t_member_edm_count_id_seq"', 25, true);

-- ----------------------------
-- Sequence structure for t_member_edm_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_member_edm_iid_seq";
CREATE SEQUENCE "public"."t_member_edm_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 181
 CACHE 1;
SELECT setval('"public"."t_member_edm_iid_seq"', 181, true);

-- ----------------------------
-- Sequence structure for t_member_integral_history_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_member_integral_history_iid_seq";
CREATE SEQUENCE "public"."t_member_integral_history_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 4683
 CACHE 1;
SELECT setval('"public"."t_member_integral_history_iid_seq"', 4683, true);

-- ----------------------------
-- Sequence structure for t_member_sign_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_member_sign_iid_seq";
CREATE SEQUENCE "public"."t_member_sign_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 32
 CACHE 1;
SELECT setval('"public"."t_member_sign_iid_seq"', 32, true);

-- ----------------------------
-- Sequence structure for t_member_sign_rule_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_member_sign_rule_iid_seq";
CREATE SEQUENCE "public"."t_member_sign_rule_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for t_order_coupon_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_order_coupon_iid_seq";
CREATE SEQUENCE "public"."t_order_coupon_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 209
 CACHE 1;
SELECT setval('"public"."t_order_coupon_iid_seq"', 209, true);

-- ----------------------------
-- Sequence structure for t_order_points_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_order_points_iid_seq";
CREATE SEQUENCE "public"."t_order_points_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 850
 CACHE 1;
SELECT setval('"public"."t_order_points_iid_seq"', 850, true);

-- ----------------------------
-- Sequence structure for t_theme_css_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_theme_css_iid_seq";
CREATE SEQUENCE "public"."t_theme_css_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 44
 CACHE 1;
SELECT setval('"public"."t_theme_css_iid_seq"', 44, true);

-- ----------------------------
-- Sequence structure for t_theme_group_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_theme_group_iid_seq";
CREATE SEQUENCE "public"."t_theme_group_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 74
 CACHE 1;
SELECT setval('"public"."t_theme_group_iid_seq"', 74, true);

-- ----------------------------
-- Sequence structure for t_theme_group_name_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_theme_group_name_iid_seq";
CREATE SEQUENCE "public"."t_theme_group_name_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 484
 CACHE 1;
SELECT setval('"public"."t_theme_group_name_iid_seq"', 484, true);

-- ----------------------------
-- Sequence structure for t_theme_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_theme_iid_seq";
CREATE SEQUENCE "public"."t_theme_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 65
 CACHE 1;
SELECT setval('"public"."t_theme_iid_seq"', 65, true);

-- ----------------------------
-- Sequence structure for t_theme_sku_relation_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_theme_sku_relation_iid_seq";
CREATE SEQUENCE "public"."t_theme_sku_relation_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 119
 CACHE 1;
SELECT setval('"public"."t_theme_sku_relation_iid_seq"', 119, true);

-- ----------------------------
-- Sequence structure for t_theme_title_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_theme_title_iid_seq";
CREATE SEQUENCE "public"."t_theme_title_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 408
 CACHE 1;
SELECT setval('"public"."t_theme_title_iid_seq"', 408, true);

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
-- Table structure for t_activity_award_type
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_activity_award_type";
CREATE TABLE "public"."t_activity_award_type" (
"iid" int4 DEFAULT nextval('t_activity_award_type_iid_seq'::regclass) NOT NULL,
"cname" varchar(30) COLLATE "default",
"ccreateuser" varchar(20) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_activity_award_type" IS '奖励类型表';
COMMENT ON COLUMN "public"."t_activity_award_type"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_activity_award_type"."cname" IS '类型名称';
COMMENT ON COLUMN "public"."t_activity_award_type"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_activity_award_type"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_activity_do_type
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_activity_do_type";
CREATE TABLE "public"."t_activity_do_type" (
"iid" int4 DEFAULT nextval('t_activity_do_type_iid_seq'::regclass) NOT NULL,
"cname" varchar(150) COLLATE "default",
"ccreateuser" varchar(20) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_activity_do_type" IS '活动类型表';
COMMENT ON COLUMN "public"."t_activity_do_type"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_activity_do_type"."cname" IS '类型名称';
COMMENT ON COLUMN "public"."t_activity_do_type"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_activity_do_type"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_activity_dotype_rule_element
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_activity_dotype_rule_element";
CREATE TABLE "public"."t_activity_dotype_rule_element" (
"iid" int4 DEFAULT nextval('t_activity_dotype_rule_element_iid_seq'::regclass) NOT NULL,
"cdotype" varchar(30) COLLATE "default",
"iwebsiteid" int4,
"cshowname" varchar(30) COLLATE "default",
"creplacename" varchar(30) COLLATE "default",
"ccreateuser" varchar(20) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_activity_dotype_rule_element" IS '活动类型规则元素表';
COMMENT ON COLUMN "public"."t_activity_dotype_rule_element"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_activity_dotype_rule_element"."cdotype" IS '行为类型';
COMMENT ON COLUMN "public"."t_activity_dotype_rule_element"."iwebsiteid" IS '站点编号';
COMMENT ON COLUMN "public"."t_activity_dotype_rule_element"."cshowname" IS '元素名称';
COMMENT ON COLUMN "public"."t_activity_dotype_rule_element"."creplacename" IS '元素名称';
COMMENT ON COLUMN "public"."t_activity_dotype_rule_element"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_activity_dotype_rule_element"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_activity_plan_base
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_activity_plan_base";
CREATE TABLE "public"."t_activity_plan_base" (
"iid" int4 DEFAULT nextval('t_activity_plan_base_iid_seq'::regclass) NOT NULL,
"iwebsiteid" int4,
"cdotype" varchar(30) COLLATE "default",
"cawardtype" varchar(30) COLLATE "default",
"ctitle" varchar(600) COLLATE "default",
"crule" varchar(1200) COLLATE "default",
"benabled" bool,
"dbegindate" timestamp(6),
"denddate" timestamp(6)
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_activity_plan_base" IS '活动计划表';
COMMENT ON COLUMN "public"."t_activity_plan_base"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_activity_plan_base"."iwebsiteid" IS '站点编号';
COMMENT ON COLUMN "public"."t_activity_plan_base"."cdotype" IS '行为类型';
COMMENT ON COLUMN "public"."t_activity_plan_base"."cawardtype" IS '奖励类型';
COMMENT ON COLUMN "public"."t_activity_plan_base"."ctitle" IS '活动名称(多语言)';
COMMENT ON COLUMN "public"."t_activity_plan_base"."crule" IS '奖励规则';
COMMENT ON COLUMN "public"."t_activity_plan_base"."benabled" IS '是否启用';
COMMENT ON COLUMN "public"."t_activity_plan_base"."dbegindate" IS '活动开始时间';
COMMENT ON COLUMN "public"."t_activity_plan_base"."denddate" IS '活动结束时间';

-- ----------------------------
-- Table structure for t_bulk
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_bulk";
CREATE TABLE "public"."t_bulk" (
"iid" int4 DEFAULT nextval('t_bulk_iid_seq'::regclass) NOT NULL,
"igroupid" int4 NOT NULL,
"iwebsiteid" int4 NOT NULL,
"cremark" varchar(2000) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now(),
"denddate" timestamp(6),
"istatus" int4 DEFAULT 0
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_bulk" IS '用户分组享有的批发表';
COMMENT ON COLUMN "public"."t_bulk"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_bulk"."igroupid" IS '用户分组';
COMMENT ON COLUMN "public"."t_bulk"."iwebsiteid" IS 'SiteID';
COMMENT ON COLUMN "public"."t_bulk"."cremark" IS '备注';
COMMENT ON COLUMN "public"."t_bulk"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_bulk"."denddate" IS '有效期';
COMMENT ON COLUMN "public"."t_bulk"."istatus" IS '状态(0未生效、1已生效)';

-- ----------------------------
-- Table structure for t_bulk_rate
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_bulk_rate";
CREATE TABLE "public"."t_bulk_rate" (
"iid" int4 DEFAULT nextval('t_bulk_rate_iid_seq'::regclass) NOT NULL,
"ibulkid" int4 NOT NULL,
"iqty" int4 NOT NULL,
"fdiscount" float8,
"dcreatedate" timestamp(6) DEFAULT now(),
"fgrossprofit" float8
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_bulk_rate" IS '批发优惠明细';
COMMENT ON COLUMN "public"."t_bulk_rate"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_bulk_rate"."ibulkid" IS '外键－批发表ID';
COMMENT ON COLUMN "public"."t_bulk_rate"."iqty" IS '购买数量大于这个数量，这一行的折扣就会生效';
COMMENT ON COLUMN "public"."t_bulk_rate"."fdiscount" IS '折扣：0.1代表百分之十的折扣';
COMMENT ON COLUMN "public"."t_bulk_rate"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_bulk_rate"."fgrossprofit" IS '相对成本价的毛利率设置';

-- ----------------------------
-- Table structure for t_campaign_base
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_campaign_base";
CREATE TABLE "public"."t_campaign_base" (
"iid" int4 DEFAULT nextval('t_campaign_base_iid_seq'::regclass) NOT NULL,
"iwebsiteid" int4,
"cdotype" varchar(30) COLLATE "default",
"cawardtype" varchar(30) COLLATE "default",
"ctitle" varchar(600) COLLATE "default",
"benabled" bool,
"dbegindate" timestamp(6),
"denddate" timestamp(6)
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_campaign_base" IS '活动主表';
COMMENT ON COLUMN "public"."t_campaign_base"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_campaign_base"."iwebsiteid" IS '站点编号';
COMMENT ON COLUMN "public"."t_campaign_base"."cdotype" IS '行为类型';
COMMENT ON COLUMN "public"."t_campaign_base"."cawardtype" IS '奖励类型';
COMMENT ON COLUMN "public"."t_campaign_base"."ctitle" IS '活动名称';
COMMENT ON COLUMN "public"."t_campaign_base"."benabled" IS '是否启用';
COMMENT ON COLUMN "public"."t_campaign_base"."dbegindate" IS '活动开始时间';
COMMENT ON COLUMN "public"."t_campaign_base"."denddate" IS '活动结束时间';

-- ----------------------------
-- Table structure for t_campaign_condition
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_campaign_condition";
CREATE TABLE "public"."t_campaign_condition" (
"iid" int4 DEFAULT nextval('t_campaign_condition_iid_seq'::regclass) NOT NULL,
"icampaignid" int4,
"cawardtype" varchar(30) COLLATE "default",
"ctitle" varchar(600) COLLATE "default",
"crule" varchar(1200) COLLATE "default",
"benabled" bool,
"dbegindate" timestamp(6),
"denddate" timestamp(6)
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_campaign_condition" IS '活动条件表';
COMMENT ON COLUMN "public"."t_campaign_condition"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_campaign_condition"."icampaignid" IS '活动编号';
COMMENT ON COLUMN "public"."t_campaign_condition"."cawardtype" IS '奖励类型';
COMMENT ON COLUMN "public"."t_campaign_condition"."ctitle" IS '活动名称(多语言)';
COMMENT ON COLUMN "public"."t_campaign_condition"."crule" IS '奖励规则';
COMMENT ON COLUMN "public"."t_campaign_condition"."benabled" IS '是否启用';
COMMENT ON COLUMN "public"."t_campaign_condition"."dbegindate" IS '活动开始时间';
COMMENT ON COLUMN "public"."t_campaign_condition"."denddate" IS '活动结束时间';

-- ----------------------------
-- Table structure for t_campaign_product_map
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_campaign_product_map";
CREATE TABLE "public"."t_campaign_product_map" (
"iid" int4 DEFAULT nextval('t_campaign_product_map_iid_seq'::regclass) NOT NULL,
"icampaignid" int4,
"clistingid" varchar(40) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_campaign_product_map" IS '活动产品对应表(用以删除listing)';
COMMENT ON COLUMN "public"."t_campaign_product_map"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_campaign_product_map"."icampaignid" IS '活动编号';
COMMENT ON COLUMN "public"."t_campaign_product_map"."clistingid" IS '产品编号';
COMMENT ON COLUMN "public"."t_campaign_product_map"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_campaign_type
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_campaign_type";
CREATE TABLE "public"."t_campaign_type" (
"iid" int4 DEFAULT nextval('t_campaign_type_iid_seq'::regclass) NOT NULL,
"cname" varchar(50) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_campaign_type" IS '活动类型表';
COMMENT ON COLUMN "public"."t_campaign_type"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_campaign_type"."cname" IS '类型名称';

-- ----------------------------
-- Table structure for t_cart_coupon
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_cart_coupon";
CREATE TABLE "public"."t_cart_coupon" (
"iid" int4 DEFAULT nextval('t_cart_coupon_iid_seq'::regclass) NOT NULL,
"ccode" varchar(60) COLLATE "default",
"istatus" int4 DEFAULT 0,
"ccartid" varchar(100) COLLATE "default",
"cemail" varchar(40) COLLATE "default",
"dusedate" timestamp(6) DEFAULT now(),
"iorderid" int4,
"cordernumber" varchar(100) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_cart_coupon" IS '购物卷消费记录表';
COMMENT ON COLUMN "public"."t_cart_coupon"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_cart_coupon"."ccode" IS '购物卷号码';
COMMENT ON COLUMN "public"."t_cart_coupon"."istatus" IS '状态(0未使用、1锁定中、2已使用)';
COMMENT ON COLUMN "public"."t_cart_coupon"."ccartid" IS '购物车编号';
COMMENT ON COLUMN "public"."t_cart_coupon"."cemail" IS '使用人';
COMMENT ON COLUMN "public"."t_cart_coupon"."dusedate" IS '使用时间';

-- ----------------------------
-- Table structure for t_collect_customer_share
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_collect_customer_share";
CREATE TABLE "public"."t_collect_customer_share" (
"iid" int4 DEFAULT nextval('t_collect_customer_share_iid_seq'::regclass) NOT NULL,
"cemail" varchar(80) COLLATE "default" DEFAULT '-'::character varying,
"curl" varchar(300) COLLATE "default" DEFAULT '-'::character varying,
"ctype" varchar(300) COLLATE "default" DEFAULT '-'::character varying,
"ccountry" varchar(15) COLLATE "default" DEFAULT '-'::character varying,
"ccreateruser" varchar(20) COLLATE "default" DEFAULT '-'::character varying,
"dcreatedate" timestamp(6) DEFAULT now(),
"dupdatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_collect_customer_share" IS '收集客户分享';
COMMENT ON COLUMN "public"."t_collect_customer_share"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_collect_customer_share"."cemail" IS '邮箱';
COMMENT ON COLUMN "public"."t_collect_customer_share"."curl" IS '用户分享链接地址';
COMMENT ON COLUMN "public"."t_collect_customer_share"."ctype" IS '用户所在当前页面地址';
COMMENT ON COLUMN "public"."t_collect_customer_share"."ccountry" IS '国家';
COMMENT ON COLUMN "public"."t_collect_customer_share"."ccreateruser" IS '用户';
COMMENT ON COLUMN "public"."t_collect_customer_share"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_collect_customer_share"."dupdatedate" IS '更新时间';

-- ----------------------------
-- Table structure for t_coupon_base
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_coupon_base";
CREATE TABLE "public"."t_coupon_base" (
"iid" int4 DEFAULT nextval('t_coupon_base_iid_seq'::regclass) NOT NULL,
"iwebsiteid" int4,
"imemberid" int4,
"ccode" varchar(60) COLLATE "default",
"fparvalue" float8,
"ccurrency" varchar(100) COLLATE "default",
"cremark" varchar(2000) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now(),
"denddate" timestamp(6),
"istatus" int4 DEFAULT 0,
"iruleid" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_coupon_base" IS '购物卷基础表';
COMMENT ON COLUMN "public"."t_coupon_base"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_coupon_base"."iwebsiteid" IS '站点编号';
COMMENT ON COLUMN "public"."t_coupon_base"."imemberid" IS '用户编号';
COMMENT ON COLUMN "public"."t_coupon_base"."ccode" IS '购物卷号码';
COMMENT ON COLUMN "public"."t_coupon_base"."fparvalue" IS '面值';
COMMENT ON COLUMN "public"."t_coupon_base"."ccurrency" IS '货币名称: e.g. EUR';
COMMENT ON COLUMN "public"."t_coupon_base"."cremark" IS '备注';
COMMENT ON COLUMN "public"."t_coupon_base"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_coupon_base"."denddate" IS '有效期';
COMMENT ON COLUMN "public"."t_coupon_base"."istatus" IS '状态(0未使用、1锁定中、2已使用)';

-- ----------------------------
-- Table structure for t_coupon_code
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_coupon_code";
CREATE TABLE "public"."t_coupon_code" (
"iid" int4 DEFAULT nextval('t_coupon_code_iid_seq'::regclass) NOT NULL,
"icouponruleid" int4,
"ccode" varchar(15) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now(),
"icreator" int4,
"iusestatus" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_coupon_code" IS 'coupon code';
COMMENT ON COLUMN "public"."t_coupon_code"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_coupon_code"."icouponruleid" IS '规则id';
COMMENT ON COLUMN "public"."t_coupon_code"."ccode" IS 'coupon code';
COMMENT ON COLUMN "public"."t_coupon_code"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_coupon_code"."icreator" IS '创建人id';
COMMENT ON COLUMN "public"."t_coupon_code"."iusestatus" IS '使用状态';

-- ----------------------------
-- Table structure for t_coupon_rule
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_coupon_rule";
CREATE TABLE "public"."t_coupon_rule" (
"iid" int4 DEFAULT nextval('t_coupon_rule_iid_seq'::regclass) NOT NULL,
"itype" int4,
"dcreatedate" timestamp(6) DEFAULT now(),
"cname" varchar(200) COLLATE "default",
"ccurrency" int4,
"fcouponamount" float8,
"forderamountlimit" float8,
"cdescription" varchar(200) COLLATE "default",
"startdate" timestamp(6),
"enddate" timestamp(6),
"icreator" int4,
"ivalidity" int4,
"istatus" int4 DEFAULT 0,
"fdiscount" float8,
"ctimetype" varchar(10) COLLATE "default",
"cproducttype" varchar(100) COLLATE "default",
"cwebsiteid" varchar(300) COLLATE "default",
"cuseterminal" varchar(20) COLLATE "default",
"csku" varchar(2000) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_coupon_rule" IS '购物卷规则表';
COMMENT ON COLUMN "public"."t_coupon_rule"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_coupon_rule"."itype" IS '购物卷类型id';
COMMENT ON COLUMN "public"."t_coupon_rule"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_coupon_rule"."cname" IS '规则名称';
COMMENT ON COLUMN "public"."t_coupon_rule"."ccurrency" IS '币种';
COMMENT ON COLUMN "public"."t_coupon_rule"."fcouponamount" IS 'coupon金额';
COMMENT ON COLUMN "public"."t_coupon_rule"."forderamountlimit" IS '每笔订单能使用的coupon金额';
COMMENT ON COLUMN "public"."t_coupon_rule"."cdescription" IS '描述';
COMMENT ON COLUMN "public"."t_coupon_rule"."startdate" IS '使用期限开始时间';
COMMENT ON COLUMN "public"."t_coupon_rule"."enddate" IS '使用期限结束时间';
COMMENT ON COLUMN "public"."t_coupon_rule"."icreator" IS '创建人ID';
COMMENT ON COLUMN "public"."t_coupon_rule"."ivalidity" IS '有效期(单位:天)';
COMMENT ON COLUMN "public"."t_coupon_rule"."istatus" IS '规则状态';
COMMENT ON COLUMN "public"."t_coupon_rule"."fdiscount" IS '折扣(单位:%)';
COMMENT ON COLUMN "public"."t_coupon_rule"."ctimetype" IS '时间类型';
COMMENT ON COLUMN "public"."t_coupon_rule"."cproducttype" IS '商品类型';
COMMENT ON COLUMN "public"."t_coupon_rule"."cwebsiteid" IS '站点id';
COMMENT ON COLUMN "public"."t_coupon_rule"."cuseterminal" IS '允许使用的终端';
COMMENT ON COLUMN "public"."t_coupon_rule"."csku" IS '限制使用指定的sku商品';

-- ----------------------------
-- Table structure for t_coupon_rule_categoryfilter
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_coupon_rule_categoryfilter";
CREATE TABLE "public"."t_coupon_rule_categoryfilter" (
"iid" int4 DEFAULT nextval('t_coupon_rule_categoryfilter_iid_seq'::regclass) NOT NULL,
"icategoryid" int4,
"iruleid" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_coupon_rule_categoryfilter" IS 'coupon rule商品类型过滤表';
COMMENT ON COLUMN "public"."t_coupon_rule_categoryfilter"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_coupon_rule_categoryfilter"."icategoryid" IS '商品类型id';
COMMENT ON COLUMN "public"."t_coupon_rule_categoryfilter"."iruleid" IS 'coupon 规则 id';

-- ----------------------------
-- Table structure for t_coupon_sku_relation
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_coupon_sku_relation";
CREATE TABLE "public"."t_coupon_sku_relation" (
"iid" int4 DEFAULT nextval('t_coupon_sku_relation_iid_seq'::regclass) NOT NULL,
"csku" varchar(50) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now(),
"ccreateuser" varchar(30) COLLATE "default" DEFAULT '-'::character varying,
"dupdatedate" timestamp(6) DEFAULT now(),
"cupdateuser" varchar(30) COLLATE "default" DEFAULT '-'::character varying,
"iruleid" int4,
"isenabled" bool
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_coupon_sku_relation" IS 'sku对应送coupon表';
COMMENT ON COLUMN "public"."t_coupon_sku_relation"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_coupon_sku_relation"."csku" IS 'sku';
COMMENT ON COLUMN "public"."t_coupon_sku_relation"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_coupon_sku_relation"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_coupon_sku_relation"."dupdatedate" IS '修改时间';
COMMENT ON COLUMN "public"."t_coupon_sku_relation"."cupdateuser" IS '修改人';
COMMENT ON COLUMN "public"."t_coupon_sku_relation"."iruleid" IS '规则id';
COMMENT ON COLUMN "public"."t_coupon_sku_relation"."isenabled" IS '是否启用';

-- ----------------------------
-- Table structure for t_coupon_type
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_coupon_type";
CREATE TABLE "public"."t_coupon_type" (
"iid" int4 DEFAULT nextval('t_coupon_type_iid_seq'::regclass) NOT NULL,
"ctype" varchar(60) COLLATE "default",
"ccreateuser" varchar(20) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_coupon_type" IS '购物卷类型表';
COMMENT ON COLUMN "public"."t_coupon_type"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_coupon_type"."ctype" IS '购物卷类型';
COMMENT ON COLUMN "public"."t_coupon_type"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_coupon_type"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_integral_behavior
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_integral_behavior";
CREATE TABLE "public"."t_integral_behavior" (
"iid" int4 DEFAULT nextval('t_integral_behavior_iid_seq'::regclass) NOT NULL,
"iwebsiteid" int4,
"cname" varchar(40) COLLATE "default",
"iintegral" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_integral_behavior" IS '积分行为表';
COMMENT ON COLUMN "public"."t_integral_behavior"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_integral_behavior"."iwebsiteid" IS '站点id';
COMMENT ON COLUMN "public"."t_integral_behavior"."cname" IS '行为名称';
COMMENT ON COLUMN "public"."t_integral_behavior"."iintegral" IS '积分';

-- ----------------------------
-- Table structure for t_integral_type
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_integral_type";
CREATE TABLE "public"."t_integral_type" (
"iid" int4 DEFAULT nextval('t_integral_type_iid_seq'::regclass) NOT NULL,
"iintegral" int4,
"ctypename" varchar(100) COLLATE "default",
"bneedcheck" bool DEFAULT false,
"icreator" int4,
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_integral_type" IS '积分类型表';
COMMENT ON COLUMN "public"."t_integral_type"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_integral_type"."iintegral" IS '积分';
COMMENT ON COLUMN "public"."t_integral_type"."ctypename" IS '类型名称';
COMMENT ON COLUMN "public"."t_integral_type"."bneedcheck" IS '是否需要审核0否， 1是';
COMMENT ON COLUMN "public"."t_integral_type"."icreator" IS '创建人';
COMMENT ON COLUMN "public"."t_integral_type"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_integral_use_rule
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_integral_use_rule";
CREATE TABLE "public"."t_integral_use_rule" (
"iid" int4 DEFAULT nextval('t_integral_use_rule_iid_seq'::regclass) NOT NULL,
"iwebsiteid" int4,
"imembergroupid" int4,
"iintegral" int4,
"fmoney" float8,
"ccurrency" varchar(100) COLLATE "default",
"imaxuse" int4,
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_integral_use_rule" IS '用户使用规则表';
COMMENT ON COLUMN "public"."t_integral_use_rule"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_integral_use_rule"."iwebsiteid" IS '站点编号';
COMMENT ON COLUMN "public"."t_integral_use_rule"."imembergroupid" IS '用户分组id';
COMMENT ON COLUMN "public"."t_integral_use_rule"."iintegral" IS '积分';
COMMENT ON COLUMN "public"."t_integral_use_rule"."fmoney" IS '金额';
COMMENT ON COLUMN "public"."t_integral_use_rule"."ccurrency" IS '货币';
COMMENT ON COLUMN "public"."t_integral_use_rule"."imaxuse" IS '每单最多使用';
COMMENT ON COLUMN "public"."t_integral_use_rule"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_member_consume_code
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_member_consume_code";
CREATE TABLE "public"."t_member_consume_code" (
"iid" int4 DEFAULT nextval('t_member_consume_code_iid_seq'::regclass) NOT NULL,
"iwebsiteid" int4,
"cemail" varchar(80) COLLATE "default",
"ccode" varchar(80) COLLATE "default",
"ffacevalue" float8,
"cremark" varchar(2000) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_member_consume_code" IS '用户消费卷表';
COMMENT ON COLUMN "public"."t_member_consume_code"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_member_consume_code"."iwebsiteid" IS '站点编号';
COMMENT ON COLUMN "public"."t_member_consume_code"."cemail" IS '用户邮箱';
COMMENT ON COLUMN "public"."t_member_consume_code"."ccode" IS '消费码';
COMMENT ON COLUMN "public"."t_member_consume_code"."ffacevalue" IS '面值';
COMMENT ON COLUMN "public"."t_member_consume_code"."cremark" IS '备注';
COMMENT ON COLUMN "public"."t_member_consume_code"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_member_coupon
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_member_coupon";
CREATE TABLE "public"."t_member_coupon" (
"iid" int4 DEFAULT nextval('t_member_coupon_iid_seq'::regclass) NOT NULL,
"iwebsiteid" int4,
"cemail" varchar(8000) COLLATE "default",
"iruleid" int4,
"icodeid" int4,
"itype" int4,
"istatus" int4,
"icreator" int4,
"dcreatedate" timestamp(6),
"cmodifierid" int4,
"cmodifydate" timestamp(6),
"iparentid" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "public"."t_member_coupon"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_member_coupon"."iwebsiteid" IS '站点ID';
COMMENT ON COLUMN "public"."t_member_coupon"."cemail" IS '会员邮箱';
COMMENT ON COLUMN "public"."t_member_coupon"."iruleid" IS '规则的id';
COMMENT ON COLUMN "public"."t_member_coupon"."icodeid" IS 'code id';
COMMENT ON COLUMN "public"."t_member_coupon"."itype" IS '类型';
COMMENT ON COLUMN "public"."t_member_coupon"."istatus" IS '状态 0未使用 1锁定中 2已使用';
COMMENT ON COLUMN "public"."t_member_coupon"."icreator" IS '创建人id';
COMMENT ON COLUMN "public"."t_member_coupon"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_member_coupon"."cmodifierid" IS '修改人id';
COMMENT ON COLUMN "public"."t_member_coupon"."cmodifydate" IS '修改时间';
COMMENT ON COLUMN "public"."t_member_coupon"."iparentid" IS '父节点id';

-- ----------------------------
-- Table structure for t_member_edm
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_member_edm";
CREATE TABLE "public"."t_member_edm" (
"iid" int4 DEFAULT nextval('t_member_edm_iid_seq'::regclass) NOT NULL,
"iwebsiteid" int4,
"cemail" varchar(80) COLLATE "default",
"ccategory" varchar(300) COLLATE "default",
"benabled" bool,
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_member_edm" IS 'edm订阅表';
COMMENT ON COLUMN "public"."t_member_edm"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_member_edm"."iwebsiteid" IS '站点编号';
COMMENT ON COLUMN "public"."t_member_edm"."cemail" IS '用户邮箱';
COMMENT ON COLUMN "public"."t_member_edm"."ccategory" IS '订阅品类';
COMMENT ON COLUMN "public"."t_member_edm"."benabled" IS '是否启用';
COMMENT ON COLUMN "public"."t_member_edm"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_member_edm_count
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_member_edm_count";
CREATE TABLE "public"."t_member_edm_count" (
"id" int4 DEFAULT nextval('t_member_edm_count_id_seq'::regclass) NOT NULL,
"iwebsiteid" int4,
"cemail" varchar(32) COLLATE "default",
"type" int4,
"count" int4,
"created_on" timestamp(6) DEFAULT now(),
"last_updated_on" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_member_edm_count" IS '会员发送邮件次数表';
COMMENT ON COLUMN "public"."t_member_edm_count"."id" IS '主键id';
COMMENT ON COLUMN "public"."t_member_edm_count"."iwebsiteid" IS '站点编号';
COMMENT ON COLUMN "public"."t_member_edm_count"."cemail" IS '会员邮箱地址';
COMMENT ON COLUMN "public"."t_member_edm_count"."type" IS '类型  1:会员订阅邮件发送次数，2：以后做其他业务拓展';
COMMENT ON COLUMN "public"."t_member_edm_count"."count" IS '发送次数';
COMMENT ON COLUMN "public"."t_member_edm_count"."created_on" IS '创建时间';
COMMENT ON COLUMN "public"."t_member_edm_count"."last_updated_on" IS '最新修改时间';

-- ----------------------------
-- Table structure for t_member_integral_history
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_member_integral_history";
CREATE TABLE "public"."t_member_integral_history" (
"iid" int4 DEFAULT nextval('t_member_integral_history_iid_seq'::regclass) NOT NULL,
"iwebsiteid" int4,
"cemail" varchar(80) COLLATE "default",
"cdotype" varchar(60) COLLATE "default",
"iintegral" int4,
"cremark" varchar(2000) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now(),
"istatus" int4 DEFAULT 1,
"csource" varchar(200) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_member_integral_history" IS '用户积分获取表';
COMMENT ON COLUMN "public"."t_member_integral_history"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_member_integral_history"."iwebsiteid" IS '站点编号';
COMMENT ON COLUMN "public"."t_member_integral_history"."cemail" IS '用户邮箱';
COMMENT ON COLUMN "public"."t_member_integral_history"."cdotype" IS '行为类型';
COMMENT ON COLUMN "public"."t_member_integral_history"."iintegral" IS '积分';
COMMENT ON COLUMN "public"."t_member_integral_history"."cremark" IS '备注';
COMMENT ON COLUMN "public"."t_member_integral_history"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_member_integral_history"."istatus" IS '审核状态(0未审、1通过、2未通过)';
COMMENT ON COLUMN "public"."t_member_integral_history"."csource" IS '积分来源';

-- ----------------------------
-- Table structure for t_member_integral_history_20160526
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_member_integral_history_20160526";
CREATE TABLE "public"."t_member_integral_history_20160526" (
"iid" int4,
"iwebsiteid" int4,
"cemail" varchar(80) COLLATE "default",
"cdotype" varchar(60) COLLATE "default",
"iintegral" int4,
"cremark" varchar(2000) COLLATE "default",
"dcreatedate" timestamp(6),
"istatus" int4,
"csource" varchar(200) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for t_member_sign
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_member_sign";
CREATE TABLE "public"."t_member_sign" (
"iid" int4 DEFAULT nextval('t_member_sign_iid_seq'::regclass) NOT NULL,
"iwebsiteid" int4,
"cemail" varchar(100) COLLATE "default",
"isigncount" int4,
"dlastsigndate" timestamp(6)
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_member_sign" IS '会员签到表';
COMMENT ON COLUMN "public"."t_member_sign"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_member_sign"."iwebsiteid" IS '站点 ID';
COMMENT ON COLUMN "public"."t_member_sign"."cemail" IS '会员邮箱';
COMMENT ON COLUMN "public"."t_member_sign"."isigncount" IS '签到次数';
COMMENT ON COLUMN "public"."t_member_sign"."dlastsigndate" IS '最近一次签到时间';

-- ----------------------------
-- Table structure for t_member_sign_rule
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_member_sign_rule";
CREATE TABLE "public"."t_member_sign_rule" (
"iid" int4 DEFAULT nextval('t_member_sign_rule_iid_seq'::regclass) NOT NULL,
"icount" int4,
"integral" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_member_sign_rule" IS '会员签到规则表';
COMMENT ON COLUMN "public"."t_member_sign_rule"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_member_sign_rule"."icount" IS '签到天数';
COMMENT ON COLUMN "public"."t_member_sign_rule"."integral" IS '积分';

-- ----------------------------
-- Table structure for t_order_coupon
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_order_coupon";
CREATE TABLE "public"."t_order_coupon" (
"iid" int4 DEFAULT nextval('t_order_coupon_iid_seq'::regclass) NOT NULL,
"ccode" varchar(60) COLLATE "default",
"fparvalue" float8,
"istatus" int4 DEFAULT 0,
"iorderid" int4,
"cemail" varchar(40) COLLATE "default",
"dusedate" timestamp(6) DEFAULT now(),
"cordernumber" varchar(100) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_order_coupon" IS '订单购物卷消费记录表';
COMMENT ON COLUMN "public"."t_order_coupon"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_order_coupon"."ccode" IS '购物卷号码';
COMMENT ON COLUMN "public"."t_order_coupon"."fparvalue" IS '面值';
COMMENT ON COLUMN "public"."t_order_coupon"."istatus" IS '状态(0未使用、1锁定中、2已使用)';
COMMENT ON COLUMN "public"."t_order_coupon"."iorderid" IS '订单编号';
COMMENT ON COLUMN "public"."t_order_coupon"."cemail" IS '使用人';
COMMENT ON COLUMN "public"."t_order_coupon"."dusedate" IS '使用时间';

-- ----------------------------
-- Table structure for t_order_points
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_order_points";
CREATE TABLE "public"."t_order_points" (
"iid" int4 DEFAULT nextval('t_order_points_iid_seq'::regclass) NOT NULL,
"ipointsid" int4,
"fparvalue" float8,
"istatus" int4 DEFAULT 0,
"iorderid" int4,
"cemail" varchar(40) COLLATE "default",
"dusedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_order_points" IS '订单积分消费记录表';
COMMENT ON COLUMN "public"."t_order_points"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_order_points"."ipointsid" IS '积分记录ID';
COMMENT ON COLUMN "public"."t_order_points"."fparvalue" IS '面值';
COMMENT ON COLUMN "public"."t_order_points"."istatus" IS '状态(0未使用、1锁定中、2已使用)';
COMMENT ON COLUMN "public"."t_order_points"."iorderid" IS '订单编号';
COMMENT ON COLUMN "public"."t_order_points"."cemail" IS '使用人';
COMMENT ON COLUMN "public"."t_order_points"."dusedate" IS '使用时间';

-- ----------------------------
-- Table structure for t_promo_code
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_promo_code";
CREATE TABLE "public"."t_promo_code" (
"ccode" varchar(20) COLLATE "default" NOT NULL,
"crules" varchar(1000) COLLATE "default",
"cactions" varchar(1000) COLLATE "default",
"cruleparams" text COLLATE "default",
"cactionparams" text COLLATE "default",
"dbegindate" timestamp(6),
"denddate" timestamp(6),
"dcreateuser" varchar(20) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_promo_code" IS '推广码规则';
COMMENT ON COLUMN "public"."t_promo_code"."ccode" IS '主键：推广码';
COMMENT ON COLUMN "public"."t_promo_code"."crules" IS 'RuleID (CSV)';
COMMENT ON COLUMN "public"."t_promo_code"."cactions" IS 'ActionID (CSV)';
COMMENT ON COLUMN "public"."t_promo_code"."cruleparams" IS 'Rule Params in JSON';
COMMENT ON COLUMN "public"."t_promo_code"."cactionparams" IS 'Action Params in JSON';
COMMENT ON COLUMN "public"."t_promo_code"."dbegindate" IS '有效时间';
COMMENT ON COLUMN "public"."t_promo_code"."denddate" IS '有效时间';
COMMENT ON COLUMN "public"."t_promo_code"."dcreateuser" IS '创建用户';
COMMENT ON COLUMN "public"."t_promo_code"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_theme
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_theme";
CREATE TABLE "public"."t_theme" (
"iid" int4 DEFAULT nextval('t_theme_iid_seq'::regclass) NOT NULL,
"curl" varchar(200) COLLATE "default" NOT NULL,
"cbannerurl" varchar(500) COLLATE "default",
"icssid" int4 NOT NULL,
"ccreateuser" varchar(30) COLLATE "default" DEFAULT '-'::character varying,
"dcreatedate" timestamp(6) DEFAULT now(),
"cupdateuser" varchar(30) COLLATE "default" DEFAULT '-'::character varying,
"dupdatedate" timestamp(6) DEFAULT now(),
"ienable" int4 DEFAULT 0 NOT NULL,
"denablestartdate" timestamp(6) DEFAULT '2015-10-12 06:38:27.835944'::timestamp without time zone,
"denableenddate" timestamp(6) DEFAULT '2015-10-12 06:38:27.835944'::timestamp without time zone,
"iwebsiteid" int4 NOT NULL
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_theme" IS '主题表';
COMMENT ON COLUMN "public"."t_theme"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_theme"."curl" IS '专题的请求url';
COMMENT ON COLUMN "public"."t_theme"."cbannerurl" IS '广告url';
COMMENT ON COLUMN "public"."t_theme"."icssid" IS '样式模块的id';
COMMENT ON COLUMN "public"."t_theme"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_theme"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_theme"."cupdateuser" IS '修改人';
COMMENT ON COLUMN "public"."t_theme"."dupdatedate" IS '修改时间';
COMMENT ON COLUMN "public"."t_theme"."ienable" IS '是否启用,0为不启动，1为启动';
COMMENT ON COLUMN "public"."t_theme"."denablestartdate" IS '启用起始时间';
COMMENT ON COLUMN "public"."t_theme"."denableenddate" IS '启用结束时间';
COMMENT ON COLUMN "public"."t_theme"."iwebsiteid" IS '站点id';

-- ----------------------------
-- Table structure for t_theme_css
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_theme_css";
CREATE TABLE "public"."t_theme_css" (
"iid" int4 DEFAULT nextval('t_theme_css_iid_seq'::regclass) NOT NULL,
"cvalue" varchar(20000) COLLATE "default" NOT NULL,
"cname" varchar(200) COLLATE "default" NOT NULL,
"ccreateuser" varchar(30) COLLATE "default" DEFAULT '-'::character varying,
"dcreatedate" timestamp(6) DEFAULT now(),
"cupdateuser" varchar(30) COLLATE "default" DEFAULT '-'::character varying,
"dupdatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "public"."t_theme_css"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_theme_css"."cvalue" IS '样式的值';
COMMENT ON COLUMN "public"."t_theme_css"."cname" IS '样式模块的名字';
COMMENT ON COLUMN "public"."t_theme_css"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_theme_css"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_theme_css"."cupdateuser" IS '修改人';
COMMENT ON COLUMN "public"."t_theme_css"."dupdatedate" IS '修改时间';

-- ----------------------------
-- Table structure for t_theme_group
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_theme_group";
CREATE TABLE "public"."t_theme_group" (
"iid" int4 DEFAULT nextval('t_theme_group_iid_seq'::regclass) NOT NULL,
"ithemeid" int4 NOT NULL,
"isort" int4 NOT NULL,
"curl" varchar(255) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_theme_group" IS '主题的分组';
COMMENT ON COLUMN "public"."t_theme_group"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_theme_group"."ithemeid" IS '主题的id';
COMMENT ON COLUMN "public"."t_theme_group"."isort" IS '排序的位置';
COMMENT ON COLUMN "public"."t_theme_group"."curl" IS '组的跳转url';

-- ----------------------------
-- Table structure for t_theme_group_name
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_theme_group_name";
CREATE TABLE "public"."t_theme_group_name" (
"iid" int4 DEFAULT nextval('t_theme_group_name_iid_seq'::regclass) NOT NULL,
"igroupid" int4 NOT NULL,
"cname" varchar(200) COLLATE "default",
"ilanguageid" int4 NOT NULL
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_theme_group_name" IS '主题组名字(支持国际化)';
COMMENT ON COLUMN "public"."t_theme_group_name"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_theme_group_name"."igroupid" IS '组id';
COMMENT ON COLUMN "public"."t_theme_group_name"."cname" IS '组名字';
COMMENT ON COLUMN "public"."t_theme_group_name"."ilanguageid" IS '语言id';

-- ----------------------------
-- Table structure for t_theme_sku_relation
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_theme_sku_relation";
CREATE TABLE "public"."t_theme_sku_relation" (
"iid" int4 DEFAULT nextval('t_theme_sku_relation_iid_seq'::regclass) NOT NULL,
"ithemeid" int4 NOT NULL,
"igroupid" int4 NOT NULL,
"csku" varchar(30) COLLATE "default" NOT NULL,
"isort" int4 NOT NULL
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_theme_sku_relation" IS '主题与产品关联表';
COMMENT ON COLUMN "public"."t_theme_sku_relation"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_theme_sku_relation"."ithemeid" IS '主题的id';
COMMENT ON COLUMN "public"."t_theme_sku_relation"."igroupid" IS '组id';
COMMENT ON COLUMN "public"."t_theme_sku_relation"."csku" IS '产品sku';
COMMENT ON COLUMN "public"."t_theme_sku_relation"."isort" IS '排序的位置';

-- ----------------------------
-- Table structure for t_theme_title
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_theme_title";
CREATE TABLE "public"."t_theme_title" (
"iid" int4 DEFAULT nextval('t_theme_title_iid_seq'::regclass) NOT NULL,
"ithemeid" int4 NOT NULL,
"ctitle" varchar(200) COLLATE "default",
"ilanguageid" int4 NOT NULL
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_theme_title" IS '主题标题(支持国际化)';
COMMENT ON COLUMN "public"."t_theme_title"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_theme_title"."ithemeid" IS '主题的id';
COMMENT ON COLUMN "public"."t_theme_title"."ctitle" IS '标题值';
COMMENT ON COLUMN "public"."t_theme_title"."ilanguageid" IS '语言id';

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------
ALTER SEQUENCE "public"."t_activity_award_type_iid_seq" OWNED BY "t_activity_award_type"."iid";
ALTER SEQUENCE "public"."t_activity_do_type_iid_seq" OWNED BY "t_activity_do_type"."iid";
ALTER SEQUENCE "public"."t_activity_dotype_rule_element_iid_seq" OWNED BY "t_activity_dotype_rule_element"."iid";
ALTER SEQUENCE "public"."t_activity_plan_base_iid_seq" OWNED BY "t_activity_plan_base"."iid";
ALTER SEQUENCE "public"."t_bulk_iid_seq" OWNED BY "t_bulk"."iid";
ALTER SEQUENCE "public"."t_bulk_rate_iid_seq" OWNED BY "t_bulk_rate"."iid";
ALTER SEQUENCE "public"."t_campaign_base_iid_seq" OWNED BY "t_campaign_base"."iid";
ALTER SEQUENCE "public"."t_campaign_condition_iid_seq" OWNED BY "t_campaign_condition"."iid";
ALTER SEQUENCE "public"."t_campaign_product_map_iid_seq" OWNED BY "t_campaign_product_map"."iid";
ALTER SEQUENCE "public"."t_campaign_type_iid_seq" OWNED BY "t_campaign_type"."iid";
ALTER SEQUENCE "public"."t_cart_coupon_iid_seq" OWNED BY "t_cart_coupon"."iid";
ALTER SEQUENCE "public"."t_collect_customer_share_iid_seq" OWNED BY "t_collect_customer_share"."iid";
ALTER SEQUENCE "public"."t_coupon_base_iid_seq" OWNED BY "t_coupon_base"."iid";
ALTER SEQUENCE "public"."t_coupon_code_iid_seq" OWNED BY "t_coupon_code"."iid";
ALTER SEQUENCE "public"."t_coupon_rule_categoryfilter_iid_seq" OWNED BY "t_coupon_rule_categoryfilter"."iid";
ALTER SEQUENCE "public"."t_coupon_rule_iid_seq" OWNED BY "t_coupon_rule"."iid";
ALTER SEQUENCE "public"."t_coupon_sku_relation_iid_seq" OWNED BY "t_coupon_sku_relation"."iid";
ALTER SEQUENCE "public"."t_coupon_type_iid_seq" OWNED BY "t_coupon_type"."iid";
ALTER SEQUENCE "public"."t_integral_behavior_iid_seq" OWNED BY "t_integral_behavior"."iid";
ALTER SEQUENCE "public"."t_integral_type_iid_seq" OWNED BY "t_integral_type"."iid";
ALTER SEQUENCE "public"."t_integral_use_rule_iid_seq" OWNED BY "t_integral_use_rule"."iid";
ALTER SEQUENCE "public"."t_member_consume_code_iid_seq" OWNED BY "t_member_consume_code"."iid";
ALTER SEQUENCE "public"."t_member_coupon_iid_seq" OWNED BY "t_member_coupon"."iid";
ALTER SEQUENCE "public"."t_member_edm_count_id_seq" OWNED BY "t_member_edm_count"."id";
ALTER SEQUENCE "public"."t_member_edm_iid_seq" OWNED BY "t_member_edm"."iid";
ALTER SEQUENCE "public"."t_member_integral_history_iid_seq" OWNED BY "t_member_integral_history"."iid";
ALTER SEQUENCE "public"."t_member_sign_iid_seq" OWNED BY "t_member_sign"."iid";
ALTER SEQUENCE "public"."t_member_sign_rule_iid_seq" OWNED BY "t_member_sign_rule"."iid";
ALTER SEQUENCE "public"."t_order_coupon_iid_seq" OWNED BY "t_order_coupon"."iid";
ALTER SEQUENCE "public"."t_order_points_iid_seq" OWNED BY "t_order_points"."iid";
ALTER SEQUENCE "public"."t_theme_css_iid_seq" OWNED BY "t_theme_css"."iid";
ALTER SEQUENCE "public"."t_theme_group_iid_seq" OWNED BY "t_theme_group"."iid";
ALTER SEQUENCE "public"."t_theme_group_name_iid_seq" OWNED BY "t_theme_group_name"."iid";
ALTER SEQUENCE "public"."t_theme_iid_seq" OWNED BY "t_theme"."iid";
ALTER SEQUENCE "public"."t_theme_sku_relation_iid_seq" OWNED BY "t_theme_sku_relation"."iid";
ALTER SEQUENCE "public"."t_theme_title_iid_seq" OWNED BY "t_theme_title"."iid";

-- ----------------------------
-- Primary Key structure for table databasechangeloglock
-- ----------------------------
ALTER TABLE "public"."databasechangeloglock" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_activity_award_type
-- ----------------------------
ALTER TABLE "public"."t_activity_award_type" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_activity_do_type
-- ----------------------------
ALTER TABLE "public"."t_activity_do_type" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_activity_dotype_rule_element
-- ----------------------------
ALTER TABLE "public"."t_activity_dotype_rule_element" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_activity_plan_base
-- ----------------------------
ALTER TABLE "public"."t_activity_plan_base" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_bulk
-- ----------------------------
ALTER TABLE "public"."t_bulk" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_bulk_rate
-- ----------------------------
ALTER TABLE "public"."t_bulk_rate" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_campaign_base
-- ----------------------------
ALTER TABLE "public"."t_campaign_base" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_campaign_condition
-- ----------------------------
ALTER TABLE "public"."t_campaign_condition" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_campaign_product_map
-- ----------------------------
ALTER TABLE "public"."t_campaign_product_map" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_campaign_type
-- ----------------------------
ALTER TABLE "public"."t_campaign_type" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_cart_coupon
-- ----------------------------
ALTER TABLE "public"."t_cart_coupon" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_collect_customer_share
-- ----------------------------
ALTER TABLE "public"."t_collect_customer_share" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Indexes structure for table t_coupon_base
-- ----------------------------
CREATE INDEX "index_t_coupon_base_1" ON "public"."t_coupon_base" USING btree (iwebsiteid, ccode, dcreatedate, iruleid);

-- ----------------------------
-- Uniques structure for table t_coupon_base
-- ----------------------------
ALTER TABLE "public"."t_coupon_base" ADD UNIQUE ("ccode", "iwebsiteid");

-- ----------------------------
-- Primary Key structure for table t_coupon_base
-- ----------------------------
ALTER TABLE "public"."t_coupon_base" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Indexes structure for table t_coupon_code
-- ----------------------------
CREATE INDEX "index_t_coupon_code_1" ON "public"."t_coupon_code" USING btree (ccode);
CREATE INDEX "index_t_coupon_code_2" ON "public"."t_coupon_code" USING btree (iid);

-- ----------------------------
-- Uniques structure for table t_coupon_code
-- ----------------------------
ALTER TABLE "public"."t_coupon_code" ADD UNIQUE ("ccode");

-- ----------------------------
-- Primary Key structure for table t_coupon_code
-- ----------------------------
ALTER TABLE "public"."t_coupon_code" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_coupon_rule
-- ----------------------------
ALTER TABLE "public"."t_coupon_rule" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_coupon_rule_categoryfilter
-- ----------------------------
ALTER TABLE "public"."t_coupon_rule_categoryfilter" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_coupon_sku_relation
-- ----------------------------
ALTER TABLE "public"."t_coupon_sku_relation" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_coupon_type
-- ----------------------------
ALTER TABLE "public"."t_coupon_type" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_integral_behavior
-- ----------------------------
ALTER TABLE "public"."t_integral_behavior" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_integral_type
-- ----------------------------
ALTER TABLE "public"."t_integral_type" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_integral_use_rule
-- ----------------------------
ALTER TABLE "public"."t_integral_use_rule" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_member_consume_code
-- ----------------------------
ALTER TABLE "public"."t_member_consume_code" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Indexes structure for table t_member_coupon
-- ----------------------------
CREATE INDEX "index_t_member_coupon_1" ON "public"."t_member_coupon" USING btree (iwebsiteid, cemail, icodeid);

-- ----------------------------
-- Primary Key structure for table t_member_coupon
-- ----------------------------
ALTER TABLE "public"."t_member_coupon" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Indexes structure for table t_member_edm
-- ----------------------------
CREATE INDEX "index_t_member_edm_1" ON "public"."t_member_edm" USING btree (iwebsiteid, cemail);

-- ----------------------------
-- Primary Key structure for table t_member_edm
-- ----------------------------
ALTER TABLE "public"."t_member_edm" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_member_edm_count
-- ----------------------------
ALTER TABLE "public"."t_member_edm_count" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table t_member_integral_history
-- ----------------------------
CREATE INDEX "index_t_member_integral_history_1" ON "public"."t_member_integral_history" USING btree (iwebsiteid, cemail, cdotype, istatus);

-- ----------------------------
-- Primary Key structure for table t_member_integral_history
-- ----------------------------
ALTER TABLE "public"."t_member_integral_history" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_member_sign
-- ----------------------------
ALTER TABLE "public"."t_member_sign" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_member_sign_rule
-- ----------------------------
ALTER TABLE "public"."t_member_sign_rule" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_order_coupon
-- ----------------------------
ALTER TABLE "public"."t_order_coupon" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_order_points
-- ----------------------------
ALTER TABLE "public"."t_order_points" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_promo_code
-- ----------------------------
ALTER TABLE "public"."t_promo_code" ADD PRIMARY KEY ("ccode");

-- ----------------------------
-- Uniques structure for table t_theme
-- ----------------------------
ALTER TABLE "public"."t_theme" ADD UNIQUE ("curl");

-- ----------------------------
-- Primary Key structure for table t_theme
-- ----------------------------
ALTER TABLE "public"."t_theme" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Uniques structure for table t_theme_css
-- ----------------------------
ALTER TABLE "public"."t_theme_css" ADD UNIQUE ("cname");

-- ----------------------------
-- Primary Key structure for table t_theme_css
-- ----------------------------
ALTER TABLE "public"."t_theme_css" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_theme_group
-- ----------------------------
ALTER TABLE "public"."t_theme_group" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_theme_group_name
-- ----------------------------
ALTER TABLE "public"."t_theme_group_name" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_theme_sku_relation
-- ----------------------------
ALTER TABLE "public"."t_theme_sku_relation" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_theme_title
-- ----------------------------
ALTER TABLE "public"."t_theme_title" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Foreign Key structure for table "public"."t_bulk_rate"
-- ----------------------------
ALTER TABLE "public"."t_bulk_rate" ADD FOREIGN KEY ("ibulkid") REFERENCES "public"."t_bulk" ("iid") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Key structure for table "public"."t_theme"
-- ----------------------------
ALTER TABLE "public"."t_theme" ADD FOREIGN KEY ("icssid") REFERENCES "public"."t_theme_css" ("iid") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Key structure for table "public"."t_theme_group"
-- ----------------------------
ALTER TABLE "public"."t_theme_group" ADD FOREIGN KEY ("ithemeid") REFERENCES "public"."t_theme" ("iid") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Key structure for table "public"."t_theme_group_name"
-- ----------------------------
ALTER TABLE "public"."t_theme_group_name" ADD FOREIGN KEY ("igroupid") REFERENCES "public"."t_theme_group" ("iid") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Key structure for table "public"."t_theme_sku_relation"
-- ----------------------------
ALTER TABLE "public"."t_theme_sku_relation" ADD FOREIGN KEY ("igroupid") REFERENCES "public"."t_theme_group" ("iid") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."t_theme_sku_relation" ADD FOREIGN KEY ("ithemeid") REFERENCES "public"."t_theme" ("iid") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Key structure for table "public"."t_theme_title"
-- ----------------------------
ALTER TABLE "public"."t_theme_title" ADD FOREIGN KEY ("ithemeid") REFERENCES "public"."t_theme" ("iid") ON DELETE CASCADE ON UPDATE NO ACTION;
