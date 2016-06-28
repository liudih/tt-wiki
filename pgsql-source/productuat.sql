/*
Navicat PGSQL Data Transfer

Source Server         : uat
Source Server Version : 90405
Source Host           : 192.168.220.52:5432
Source Database       : productuat
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 90405
File Encoding         : 65001

Date: 2016-06-28 18:15:20
*/


-- ----------------------------
-- Sequence structure for t_all_product_explain_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_all_product_explain_iid_seq";
CREATE SEQUENCE "public"."t_all_product_explain_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 6
 CACHE 1;
SELECT setval('"public"."t_all_product_explain_iid_seq"', 6, true);

-- ----------------------------
-- Sequence structure for t_all_product_explain_type_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_all_product_explain_type_iid_seq";
CREATE SEQUENCE "public"."t_all_product_explain_type_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for t_attachment_desc_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_attachment_desc_iid_seq";
CREATE SEQUENCE "public"."t_attachment_desc_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for t_attachment_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_attachment_iid_seq";
CREATE SEQUENCE "public"."t_attachment_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for t_attribute_key_ikeyid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_attribute_key_ikeyid_seq";
CREATE SEQUENCE "public"."t_attribute_key_ikeyid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 3346
 CACHE 1;
SELECT setval('"public"."t_attribute_key_ikeyid_seq"', 3346, true);

-- ----------------------------
-- Sequence structure for t_attribute_key_name_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_attribute_key_name_iid_seq";
CREATE SEQUENCE "public"."t_attribute_key_name_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 2110
 CACHE 1;
SELECT setval('"public"."t_attribute_key_name_iid_seq"', 2110, true);

-- ----------------------------
-- Sequence structure for t_attribute_value_ivalueid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_attribute_value_ivalueid_seq";
CREATE SEQUENCE "public"."t_attribute_value_ivalueid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 37610
 CACHE 1;
SELECT setval('"public"."t_attribute_value_ivalueid_seq"', 37610, true);

-- ----------------------------
-- Sequence structure for t_attribute_value_name_ikeyid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_attribute_value_name_ikeyid_seq";
CREATE SEQUENCE "public"."t_attribute_value_name_ikeyid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 37630
 CACHE 1;
SELECT setval('"public"."t_attribute_value_name_ikeyid_seq"', 37630, true);

-- ----------------------------
-- Sequence structure for t_category_backgroundimages_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_category_backgroundimages_iid_seq";
CREATE SEQUENCE "public"."t_category_backgroundimages_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 20
 CACHE 1;
SELECT setval('"public"."t_category_backgroundimages_iid_seq"', 20, true);

-- ----------------------------
-- Sequence structure for t_category_base_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_category_base_iid_seq";
CREATE SEQUENCE "public"."t_category_base_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1789
 CACHE 1;
SELECT setval('"public"."t_category_base_iid_seq"', 1789, true);

-- ----------------------------
-- Sequence structure for t_category_label_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_category_label_iid_seq";
CREATE SEQUENCE "public"."t_category_label_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 5733
 CACHE 1;
SELECT setval('"public"."t_category_label_iid_seq"', 5733, true);

-- ----------------------------
-- Sequence structure for t_category_label_name_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_category_label_name_iid_seq";
CREATE SEQUENCE "public"."t_category_label_name_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 103
 CACHE 1;
SELECT setval('"public"."t_category_label_name_iid_seq"', 103, true);

-- ----------------------------
-- Sequence structure for t_category_label_type_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_category_label_type_iid_seq";
CREATE SEQUENCE "public"."t_category_label_type_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 2
 CACHE 1;
SELECT setval('"public"."t_category_label_type_iid_seq"', 2, true);

-- ----------------------------
-- Sequence structure for t_category_name_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_category_name_iid_seq";
CREATE SEQUENCE "public"."t_category_name_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 14143
 CACHE 1;
SELECT setval('"public"."t_category_name_iid_seq"', 14143, true);

-- ----------------------------
-- Sequence structure for t_category_product_recommend_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_category_product_recommend_iid_seq";
CREATE SEQUENCE "public"."t_category_product_recommend_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 315
 CACHE 1;
SELECT setval('"public"."t_category_product_recommend_iid_seq"', 315, true);

-- ----------------------------
-- Sequence structure for t_category_website_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_category_website_iid_seq";
CREATE SEQUENCE "public"."t_category_website_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 3909
 CACHE 1;
SELECT setval('"public"."t_category_website_iid_seq"', 3909, true);

-- ----------------------------
-- Sequence structure for t_daily_deals_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_daily_deals_iid_seq";
CREATE SEQUENCE "public"."t_daily_deals_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1769
 CACHE 1;
SELECT setval('"public"."t_daily_deals_iid_seq"', 1769, true);

-- ----------------------------
-- Sequence structure for t_google_attribute_key_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_google_attribute_key_iid_seq";
CREATE SEQUENCE "public"."t_google_attribute_key_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for t_google_attribute_value_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_google_attribute_value_iid_seq";
CREATE SEQUENCE "public"."t_google_attribute_value_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for t_google_category_base_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_google_category_base_iid_seq";
CREATE SEQUENCE "public"."t_google_category_base_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 810
 CACHE 1;
SELECT setval('"public"."t_google_category_base_iid_seq"', 810, true);

-- ----------------------------
-- Sequence structure for t_google_category_relation_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_google_category_relation_iid_seq";
CREATE SEQUENCE "public"."t_google_category_relation_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 39
 CACHE 1;
SELECT setval('"public"."t_google_category_relation_iid_seq"', 39, true);

-- ----------------------------
-- Sequence structure for t_google_feeds_base_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_google_feeds_base_iid_seq";
CREATE SEQUENCE "public"."t_google_feeds_base_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 21
 CACHE 1;
SELECT setval('"public"."t_google_feeds_base_iid_seq"', 21, true);

-- ----------------------------
-- Sequence structure for t_google_filter_attribute_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_google_filter_attribute_iid_seq";
CREATE SEQUENCE "public"."t_google_filter_attribute_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for t_google_product_category_mapper_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_google_product_category_mapper_iid_seq";
CREATE SEQUENCE "public"."t_google_product_category_mapper_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 24
 CACHE 1;
SELECT setval('"public"."t_google_product_category_mapper_iid_seq"', 24, true);

-- ----------------------------
-- Sequence structure for t_google_product_detail_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_google_product_detail_iid_seq";
CREATE SEQUENCE "public"."t_google_product_detail_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 54
 CACHE 1;
SELECT setval('"public"."t_google_product_detail_iid_seq"', 54, true);

-- ----------------------------
-- Sequence structure for t_home_page_show_history_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_home_page_show_history_iid_seq";
CREATE SEQUENCE "public"."t_home_page_show_history_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 4285
 CACHE 1;
SELECT setval('"public"."t_home_page_show_history_iid_seq"', 4285, true);

-- ----------------------------
-- Sequence structure for t_inventory_history_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_inventory_history_iid_seq";
CREATE SEQUENCE "public"."t_inventory_history_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 157832
 CACHE 1;
SELECT setval('"public"."t_inventory_history_iid_seq"', 157832, true);

-- ----------------------------
-- Sequence structure for t_merchants_product_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_merchants_product_iid_seq";
CREATE SEQUENCE "public"."t_merchants_product_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 320116
 CACHE 1;
SELECT setval('"public"."t_merchants_product_iid_seq"', 320116, true);

-- ----------------------------
-- Sequence structure for t_product_activity_relation_detail_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_product_activity_relation_detail_iid_seq";
CREATE SEQUENCE "public"."t_product_activity_relation_detail_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 19
 CACHE 1;
SELECT setval('"public"."t_product_activity_relation_detail_iid_seq"', 19, true);

-- ----------------------------
-- Sequence structure for t_product_activity_relation_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_product_activity_relation_iid_seq";
CREATE SEQUENCE "public"."t_product_activity_relation_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 6
 CACHE 1;
SELECT setval('"public"."t_product_activity_relation_iid_seq"', 6, true);

-- ----------------------------
-- Sequence structure for t_product_attachment_mapper_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_product_attachment_mapper_iid_seq";
CREATE SEQUENCE "public"."t_product_attachment_mapper_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for t_product_base_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_product_base_iid_seq";
CREATE SEQUENCE "public"."t_product_base_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 146159
 CACHE 1;
SELECT setval('"public"."t_product_base_iid_seq"', 146159, true);

-- ----------------------------
-- Sequence structure for t_product_bundle_sale_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_product_bundle_sale_iid_seq";
CREATE SEQUENCE "public"."t_product_bundle_sale_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1979420
 CACHE 1;
SELECT setval('"public"."t_product_bundle_sale_iid_seq"', 1979420, true);

-- ----------------------------
-- Sequence structure for t_product_category_mapper_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_product_category_mapper_iid_seq";
CREATE SEQUENCE "public"."t_product_category_mapper_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 407218
 CACHE 1;
SELECT setval('"public"."t_product_category_mapper_iid_seq"', 407218, true);

-- ----------------------------
-- Sequence structure for t_product_category_rank_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_product_category_rank_iid_seq";
CREATE SEQUENCE "public"."t_product_category_rank_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 11937
 CACHE 1;
SELECT setval('"public"."t_product_category_rank_iid_seq"', 11937, true);

-- ----------------------------
-- Sequence structure for t_product_entity_map_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_product_entity_map_iid_seq";
CREATE SEQUENCE "public"."t_product_entity_map_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 97718
 CACHE 1;
SELECT setval('"public"."t_product_entity_map_iid_seq"', 97718, true);

-- ----------------------------
-- Sequence structure for t_product_group_price_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_product_group_price_iid_seq";
CREATE SEQUENCE "public"."t_product_group_price_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 20
 CACHE 1;
SELECT setval('"public"."t_product_group_price_iid_seq"', 20, true);

-- ----------------------------
-- Sequence structure for t_product_image_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_product_image_iid_seq";
CREATE SEQUENCE "public"."t_product_image_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1600989
 CACHE 1;
SELECT setval('"public"."t_product_image_iid_seq"', 1600989, true);

-- ----------------------------
-- Sequence structure for t_product_intercept_url_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_product_intercept_url_iid_seq";
CREATE SEQUENCE "public"."t_product_intercept_url_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 45
 CACHE 1;
SELECT setval('"public"."t_product_intercept_url_iid_seq"', 45, true);

-- ----------------------------
-- Sequence structure for t_product_label_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_product_label_iid_seq";
CREATE SEQUENCE "public"."t_product_label_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 5704867
 CACHE 1;
SELECT setval('"public"."t_product_label_iid_seq"', 5704867, true);

-- ----------------------------
-- Sequence structure for t_product_label_type_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_product_label_type_iid_seq";
CREATE SEQUENCE "public"."t_product_label_type_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 8
 CACHE 1;
SELECT setval('"public"."t_product_label_type_iid_seq"', 8, true);

-- ----------------------------
-- Sequence structure for t_product_multiattribute_attribute_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_product_multiattribute_attribute_iid_seq";
CREATE SEQUENCE "public"."t_product_multiattribute_attribute_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 19884
 CACHE 1;
SELECT setval('"public"."t_product_multiattribute_attribute_iid_seq"', 19884, true);

-- ----------------------------
-- Sequence structure for t_product_multiattribute_base_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_product_multiattribute_base_iid_seq";
CREATE SEQUENCE "public"."t_product_multiattribute_base_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 14884
 CACHE 1;
SELECT setval('"public"."t_product_multiattribute_base_iid_seq"', 14884, true);

-- ----------------------------
-- Sequence structure for t_product_multiattribute_sku_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_product_multiattribute_sku_iid_seq";
CREATE SEQUENCE "public"."t_product_multiattribute_sku_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 60186
 CACHE 1;
SELECT setval('"public"."t_product_multiattribute_sku_iid_seq"', 60186, true);

-- ----------------------------
-- Sequence structure for t_product_parent_url_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_product_parent_url_iid_seq";
CREATE SEQUENCE "public"."t_product_parent_url_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for t_product_recommend_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_product_recommend_iid_seq";
CREATE SEQUENCE "public"."t_product_recommend_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 202236
 CACHE 1;
SELECT setval('"public"."t_product_recommend_iid_seq"', 202236, true);

-- ----------------------------
-- Sequence structure for t_product_saleprice_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_product_saleprice_iid_seq";
CREATE SEQUENCE "public"."t_product_saleprice_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 46508
 CACHE 1;
SELECT setval('"public"."t_product_saleprice_iid_seq"', 46508, true);

-- ----------------------------
-- Sequence structure for t_product_selling_points_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_product_selling_points_iid_seq";
CREATE SEQUENCE "public"."t_product_selling_points_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1945922
 CACHE 1;
SELECT setval('"public"."t_product_selling_points_iid_seq"', 1945922, true);

-- ----------------------------
-- Sequence structure for t_product_storage_map_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_product_storage_map_iid_seq";
CREATE SEQUENCE "public"."t_product_storage_map_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 318568
 CACHE 1;
SELECT setval('"public"."t_product_storage_map_iid_seq"', 318568, true);

-- ----------------------------
-- Sequence structure for t_product_topic_page_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_product_topic_page_iid_seq";
CREATE SEQUENCE "public"."t_product_topic_page_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 191
 CACHE 1;
SELECT setval('"public"."t_product_topic_page_iid_seq"', 191, true);

-- ----------------------------
-- Sequence structure for t_product_translate_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_product_translate_iid_seq";
CREATE SEQUENCE "public"."t_product_translate_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 445231
 CACHE 1;
SELECT setval('"public"."t_product_translate_iid_seq"', 445231, true);

-- ----------------------------
-- Sequence structure for t_product_url_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_product_url_iid_seq";
CREATE SEQUENCE "public"."t_product_url_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 152962
 CACHE 1;
SELECT setval('"public"."t_product_url_iid_seq"', 152962, true);

-- ----------------------------
-- Sequence structure for t_product_video_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_product_video_iid_seq";
CREATE SEQUENCE "public"."t_product_video_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 9942
 CACHE 1;
SELECT setval('"public"."t_product_video_iid_seq"', 9942, true);

-- ----------------------------
-- Sequence structure for t_rabbit_monitor_id_seq
-- ----------------------------
DROP SEQUENCE "public"."t_rabbit_monitor_id_seq";
CREATE SEQUENCE "public"."t_rabbit_monitor_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 46
 CACHE 1;
SELECT setval('"public"."t_rabbit_monitor_id_seq"', 46, true);

-- ----------------------------
-- Sequence structure for t_third_platform_data_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_third_platform_data_iid_seq";
CREATE SEQUENCE "public"."t_third_platform_data_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 6450
 CACHE 1;
SELECT setval('"public"."t_third_platform_data_iid_seq"', 6450, true);

-- ----------------------------
-- Sequence structure for tmp_sas_product_id_seq
-- ----------------------------
DROP SEQUENCE "public"."tmp_sas_product_id_seq";
CREATE SEQUENCE "public"."tmp_sas_product_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 61858
 CACHE 1;
SELECT setval('"public"."tmp_sas_product_id_seq"', 61858, true);

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
-- Table structure for t_a
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_a";
CREATE TABLE "public"."t_a" (
"iwebsiteid" int4,
"ilanguageid" int4,
"ctype" varchar(100) COLLATE "default",
"ccontent" varchar(50000) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for t_activity_award_type
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_activity_award_type";
CREATE TABLE "public"."t_activity_award_type" (
"iwebsiteid" int4,
"ilanguageid" int4,
"ctype" varchar(100) COLLATE "default",
"ccontent" varchar(50000) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for t_all_product_explain
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_all_product_explain";
CREATE TABLE "public"."t_all_product_explain" (
"iid" int4 DEFAULT nextval('t_all_product_explain_iid_seq'::regclass) NOT NULL,
"iwebsiteid" int4,
"ilanguageid" int4,
"ctype" varchar(100) COLLATE "default",
"ccontent" varchar(50000) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_all_product_explain" IS '整体产品说明';
COMMENT ON COLUMN "public"."t_all_product_explain"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_all_product_explain"."iwebsiteid" IS '站点编号';
COMMENT ON COLUMN "public"."t_all_product_explain"."ilanguageid" IS '语言编号';
COMMENT ON COLUMN "public"."t_all_product_explain"."ctype" IS '全局说明类型';
COMMENT ON COLUMN "public"."t_all_product_explain"."ccontent" IS '详细说明';

-- ----------------------------
-- Table structure for t_all_product_explain_type
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_all_product_explain_type";
CREATE TABLE "public"."t_all_product_explain_type" (
"iid" int4 DEFAULT nextval('t_all_product_explain_type_iid_seq'::regclass) NOT NULL,
"ctype" varchar(100) COLLATE "default",
"ccreateuser" varchar(100) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_all_product_explain_type" IS '整体产品全局说明类型';
COMMENT ON COLUMN "public"."t_all_product_explain_type"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_all_product_explain_type"."ctype" IS '全局说明类型';
COMMENT ON COLUMN "public"."t_all_product_explain_type"."ccreateuser" IS '创建人';

-- ----------------------------
-- Table structure for t_attachment
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_attachment";
CREATE TABLE "public"."t_attachment" (
"iid" int4 DEFAULT nextval('t_attachment_iid_seq'::regclass) NOT NULL,
"cdescribe" varchar(200) COLLATE "default",
"ctype" varchar(50) COLLATE "default",
"cfilename" varchar(50) COLLATE "default",
"cpath" varchar(200) COLLATE "default",
"ccreateuser" varchar(20) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_attachment" IS '附件表';
COMMENT ON COLUMN "public"."t_attachment"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_attachment"."cdescribe" IS '描述';
COMMENT ON COLUMN "public"."t_attachment"."ctype" IS '文件类型';
COMMENT ON COLUMN "public"."t_attachment"."cfilename" IS '文件名';
COMMENT ON COLUMN "public"."t_attachment"."cpath" IS '文件路径';
COMMENT ON COLUMN "public"."t_attachment"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_attachment"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_attachment_desc
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_attachment_desc";
CREATE TABLE "public"."t_attachment_desc" (
"iid" int4 DEFAULT nextval('t_attachment_desc_iid_seq'::regclass) NOT NULL,
"ilanguage" int4,
"ctitle" varchar(200) COLLATE "default",
"cdescribe" varchar(500) COLLATE "default",
"iattachmentid" int4,
"ccreateuser" varchar(20) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now(),
"cupdateuser" varchar(20) COLLATE "default",
"dupdatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_attachment_desc" IS '附件描述表';
COMMENT ON COLUMN "public"."t_attachment_desc"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_attachment_desc"."ilanguage" IS '语言';
COMMENT ON COLUMN "public"."t_attachment_desc"."ctitle" IS '文件title';
COMMENT ON COLUMN "public"."t_attachment_desc"."cdescribe" IS '描述';
COMMENT ON COLUMN "public"."t_attachment_desc"."iattachmentid" IS '附件表id';
COMMENT ON COLUMN "public"."t_attachment_desc"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_attachment_desc"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_attachment_desc"."cupdateuser" IS '更新人';
COMMENT ON COLUMN "public"."t_attachment_desc"."dupdatedate" IS '更新时间';

-- ----------------------------
-- Table structure for t_attribute_key
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_attribute_key";
CREATE TABLE "public"."t_attribute_key" (
"ikeyid" int4 DEFAULT nextval('t_attribute_key_ikeyid_seq'::regclass) NOT NULL,
"ccreateuser" varchar(30) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_attribute_key" IS '属性键基础表';
COMMENT ON COLUMN "public"."t_attribute_key"."ikeyid" IS '主键';
COMMENT ON COLUMN "public"."t_attribute_key"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_attribute_key"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_attribute_key_name
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_attribute_key_name";
CREATE TABLE "public"."t_attribute_key_name" (
"iid" int4 DEFAULT nextval('t_attribute_key_name_iid_seq'::regclass) NOT NULL,
"ikeyid" int4,
"ilanguageid" int4,
"ckeyname" varchar(50) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_attribute_key_name" IS '属性键名称表';
COMMENT ON COLUMN "public"."t_attribute_key_name"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_attribute_key_name"."ikeyid" IS '属性值编号';
COMMENT ON COLUMN "public"."t_attribute_key_name"."ilanguageid" IS '语言编号';
COMMENT ON COLUMN "public"."t_attribute_key_name"."ckeyname" IS '属性名';

-- ----------------------------
-- Table structure for t_attribute_value
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_attribute_value";
CREATE TABLE "public"."t_attribute_value" (
"ivalueid" int4 DEFAULT nextval('t_attribute_value_ivalueid_seq'::regclass) NOT NULL,
"ikeyid" int4,
"ccreateuser" varchar(30) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_attribute_value" IS '属性值基础表';
COMMENT ON COLUMN "public"."t_attribute_value"."ivalueid" IS '主键';
COMMENT ON COLUMN "public"."t_attribute_value"."ikeyid" IS '属性键编号';
COMMENT ON COLUMN "public"."t_attribute_value"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_attribute_value"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_attribute_value_name
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_attribute_value_name";
CREATE TABLE "public"."t_attribute_value_name" (
"ikeyid" int4 DEFAULT nextval('t_attribute_value_name_ikeyid_seq'::regclass) NOT NULL,
"ilanguageid" int4,
"ivalueid" int4,
"cvaluename" varchar(50) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_attribute_value_name" IS '属性值名称表';
COMMENT ON COLUMN "public"."t_attribute_value_name"."ikeyid" IS '主键';
COMMENT ON COLUMN "public"."t_attribute_value_name"."ilanguageid" IS '语言编号';
COMMENT ON COLUMN "public"."t_attribute_value_name"."ivalueid" IS '属性值编号';
COMMENT ON COLUMN "public"."t_attribute_value_name"."cvaluename" IS '属性值名称';

-- ----------------------------
-- Table structure for t_category_backgroundimages
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_category_backgroundimages";
CREATE TABLE "public"."t_category_backgroundimages" (
"iid" int4 DEFAULT nextval('t_category_backgroundimages_iid_seq'::regclass) NOT NULL,
"icategorynameid" int4,
"ibottom" int4,
"iright" int4,
"cbackgroundimages" bytea,
"curl" varchar(300) COLLATE "default",
"iwebsiteid" int4 DEFAULT 1
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_category_backgroundimages" IS '品类背景图片信息表';
COMMENT ON COLUMN "public"."t_category_backgroundimages"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_category_backgroundimages"."icategorynameid" IS '类别名称主键编号';
COMMENT ON COLUMN "public"."t_category_backgroundimages"."ibottom" IS 'bottom';
COMMENT ON COLUMN "public"."t_category_backgroundimages"."iright" IS 'right';
COMMENT ON COLUMN "public"."t_category_backgroundimages"."cbackgroundimages" IS '背景图片';
COMMENT ON COLUMN "public"."t_category_backgroundimages"."curl" IS '路由地址';
COMMENT ON COLUMN "public"."t_category_backgroundimages"."iwebsiteid" IS '站点ID';

-- ----------------------------
-- Table structure for t_category_base
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_category_base";
CREATE TABLE "public"."t_category_base" (
"iid" int4 DEFAULT nextval('t_category_base_iid_seq'::regclass) NOT NULL,
"iparentid" int4,
"cpath" varchar(255) COLLATE "default",
"ilevel" int4,
"iposition" int4,
"ichildrencount" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_category_base" IS '品类基础表';
COMMENT ON COLUMN "public"."t_category_base"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_category_base"."iparentid" IS '父编号';
COMMENT ON COLUMN "public"."t_category_base"."cpath" IS '路径';
COMMENT ON COLUMN "public"."t_category_base"."ilevel" IS '级别';
COMMENT ON COLUMN "public"."t_category_base"."iposition" IS '排序位置';
COMMENT ON COLUMN "public"."t_category_base"."ichildrencount" IS '子类数量';

-- ----------------------------
-- Table structure for t_category_filter_attribute
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_category_filter_attribute";
CREATE TABLE "public"."t_category_filter_attribute" (
"iid" int4,
"icategoryid" int4,
"iattributekeyid" int4,
"iattributevalueid" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for t_category_filter_attribute1
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_category_filter_attribute1";
CREATE TABLE "public"."t_category_filter_attribute1" (
"iid" int4,
"icategoryid" int4,
"iattributekeyid" int4,
"iattributevalueid" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for t_category_label
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_category_label";
CREATE TABLE "public"."t_category_label" (
"iid" int4 DEFAULT nextval('t_category_label_iid_seq'::regclass) NOT NULL,
"iwebsiteid" int4,
"ctype" varchar(50) COLLATE "default",
"icategoryid" int4,
"ccreateuser" varchar(20) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_category_label" IS '品类标签';
COMMENT ON COLUMN "public"."t_category_label"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_category_label"."iwebsiteid" IS '站点编号';
COMMENT ON COLUMN "public"."t_category_label"."ctype" IS '标签名称';
COMMENT ON COLUMN "public"."t_category_label"."icategoryid" IS '品类编号';
COMMENT ON COLUMN "public"."t_category_label"."ccreateuser" IS '创建人';

-- ----------------------------
-- Table structure for t_category_label_name
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_category_label_name";
CREATE TABLE "public"."t_category_label_name" (
"iid" int4 DEFAULT nextval('t_category_label_name_iid_seq'::regclass) NOT NULL,
"icategorylabelid" int4,
"ilanguageid" int4,
"cimages" bytea,
"curl" varchar(500) COLLATE "default",
"cprompt" varchar(90) COLLATE "default",
"ccreateuser" varchar(20) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_category_label_name" IS '品类标签';
COMMENT ON COLUMN "public"."t_category_label_name"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_category_label_name"."icategorylabelid" IS 'labelid';
COMMENT ON COLUMN "public"."t_category_label_name"."ilanguageid" IS '语言编号';
COMMENT ON COLUMN "public"."t_category_label_name"."cimages" IS '图片';
COMMENT ON COLUMN "public"."t_category_label_name"."curl" IS '链接';
COMMENT ON COLUMN "public"."t_category_label_name"."cprompt" IS '提示';
COMMENT ON COLUMN "public"."t_category_label_name"."ccreateuser" IS '创建人';

-- ----------------------------
-- Table structure for t_category_label_type
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_category_label_type";
CREATE TABLE "public"."t_category_label_type" (
"iid" int4 DEFAULT nextval('t_category_label_type_iid_seq'::regclass) NOT NULL,
"ctype" varchar(50) COLLATE "default",
"ccreateuser" varchar(20) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_category_label_type" IS '品类标签类型';
COMMENT ON COLUMN "public"."t_category_label_type"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_category_label_type"."ctype" IS '标签名称';
COMMENT ON COLUMN "public"."t_category_label_type"."ccreateuser" IS '创建人';

-- ----------------------------
-- Table structure for t_category_name
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_category_name";
CREATE TABLE "public"."t_category_name" (
"iid" int4 DEFAULT nextval('t_category_name_iid_seq'::regclass) NOT NULL,
"icategoryid" int4,
"ilanguageid" int4,
"cname" varchar(300) COLLATE "default",
"ctitle" varchar(300) COLLATE "default",
"cdescription" varchar(2000) COLLATE "default",
"ckeywords" varchar(2000) COLLATE "default",
"cmetatitle" varchar(500) COLLATE "default",
"cmetakeyword" varchar(2000) COLLATE "default",
"cmetadescription" varchar(2000) COLLATE "default",
"ccontent" varchar(8000) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_category_name" IS '品类名称表';
COMMENT ON COLUMN "public"."t_category_name"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_category_name"."icategoryid" IS '类别编号';
COMMENT ON COLUMN "public"."t_category_name"."ilanguageid" IS '语言编号';
COMMENT ON COLUMN "public"."t_category_name"."cname" IS '类别名称';
COMMENT ON COLUMN "public"."t_category_name"."ctitle" IS 'HTML的标题';
COMMENT ON COLUMN "public"."t_category_name"."cdescription" IS 'HTML的描述栏';
COMMENT ON COLUMN "public"."t_category_name"."ckeywords" IS 'HTML的关键字栏';
COMMENT ON COLUMN "public"."t_category_name"."cmetatitle" IS 'meta title';
COMMENT ON COLUMN "public"."t_category_name"."cmetakeyword" IS 'meta keyword';
COMMENT ON COLUMN "public"."t_category_name"."cmetadescription" IS 'meta description';
COMMENT ON COLUMN "public"."t_category_name"."ccontent" IS '展示介绍';

-- ----------------------------
-- Table structure for t_category_product_recommend
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_category_product_recommend";
CREATE TABLE "public"."t_category_product_recommend" (
"iid" int4 DEFAULT nextval('t_category_product_recommend_iid_seq'::regclass) NOT NULL,
"categoryid" int4,
"categoryname" varchar(200) COLLATE "default",
"categoryfullname" varchar(600) COLLATE "default",
"parentid" int4,
"parentname" varchar(200) COLLATE "default",
"level" int4,
"sku" varchar(40) COLLATE "default",
"status" int4,
"createdate" timestamp(6) DEFAULT now(),
"sequence" int4,
"createby" varchar(40) COLLATE "default",
"updateby" varchar(40) COLLATE "default",
"iwebsiteid" int4,
"cdevice" varchar(40) COLLATE "default",
"upddate" timestamp(6) DEFAULT '2015-09-16 02:03:45.483842'::timestamp without time zone
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_category_product_recommend" IS '品类推荐产品表';
COMMENT ON COLUMN "public"."t_category_product_recommend"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_category_product_recommend"."categoryid" IS '子类ID';
COMMENT ON COLUMN "public"."t_category_product_recommend"."categoryname" IS '子类名称';
COMMENT ON COLUMN "public"."t_category_product_recommend"."categoryfullname" IS '类别全称';
COMMENT ON COLUMN "public"."t_category_product_recommend"."parentid" IS '父类ID';
COMMENT ON COLUMN "public"."t_category_product_recommend"."parentname" IS '父类名称';
COMMENT ON COLUMN "public"."t_category_product_recommend"."level" IS '级别';
COMMENT ON COLUMN "public"."t_category_product_recommend"."sku" IS 'sku';
COMMENT ON COLUMN "public"."t_category_product_recommend"."status" IS '状态';
COMMENT ON COLUMN "public"."t_category_product_recommend"."createdate" IS '创建时间';
COMMENT ON COLUMN "public"."t_category_product_recommend"."sequence" IS '排序位置';
COMMENT ON COLUMN "public"."t_category_product_recommend"."createby" IS '创建的用户';
COMMENT ON COLUMN "public"."t_category_product_recommend"."updateby" IS '更新的用户';
COMMENT ON COLUMN "public"."t_category_product_recommend"."iwebsiteid" IS '站点ID';
COMMENT ON COLUMN "public"."t_category_product_recommend"."cdevice" IS '设备';
COMMENT ON COLUMN "public"."t_category_product_recommend"."upddate" IS '更新时间';

-- ----------------------------
-- Table structure for t_category_website
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_category_website";
CREATE TABLE "public"."t_category_website" (
"iid" int4 DEFAULT nextval('t_category_website_iid_seq'::regclass) NOT NULL,
"iwebsiteid" int4,
"icategoryid" int4,
"iparentid" int4,
"cpath" varchar(255) COLLATE "default",
"ilevel" int4,
"iposition" int4,
"ichildrencount" int4,
"bshow" bool,
"bhasbgimage" bool DEFAULT false
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_category_website" IS '站点品类表';
COMMENT ON COLUMN "public"."t_category_website"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_category_website"."iwebsiteid" IS '站点编号';
COMMENT ON COLUMN "public"."t_category_website"."icategoryid" IS '品类编号';
COMMENT ON COLUMN "public"."t_category_website"."iparentid" IS '父编号';
COMMENT ON COLUMN "public"."t_category_website"."cpath" IS '路径';
COMMENT ON COLUMN "public"."t_category_website"."ilevel" IS '级别';
COMMENT ON COLUMN "public"."t_category_website"."iposition" IS '排序位置';
COMMENT ON COLUMN "public"."t_category_website"."ichildrencount" IS '子类数量';
COMMENT ON COLUMN "public"."t_category_website"."bhasbgimage" IS '是否有背景图片(默认false)';

-- ----------------------------
-- Table structure for t_daily_deals
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_daily_deals";
CREATE TABLE "public"."t_daily_deals" (
"iid" int4 DEFAULT nextval('t_daily_deals_iid_seq'::regclass) NOT NULL,
"iwebsiteid" int4,
"clistingid" varchar(40) COLLATE "default",
"csku" varchar(30) COLLATE "default",
"ccreateuser" varchar(20) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now(),
"bvalid" bool
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_daily_deals" IS 'daily deal表';
COMMENT ON COLUMN "public"."t_daily_deals"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_daily_deals"."iwebsiteid" IS '站点编号';
COMMENT ON COLUMN "public"."t_daily_deals"."clistingid" IS '广告 编号';
COMMENT ON COLUMN "public"."t_daily_deals"."csku" IS 'SKU';
COMMENT ON COLUMN "public"."t_daily_deals"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_daily_deals"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_daily_deals"."bvalid" IS '是否有效';

-- ----------------------------
-- Table structure for t_erpimg
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_erpimg";
CREATE TABLE "public"."t_erpimg" (
"id" int4,
"sku" varchar(50) COLLATE "default",
"imageurl" varchar(500) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for t_google_attribute_key
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_google_attribute_key";
CREATE TABLE "public"."t_google_attribute_key" (
"iid" int4 DEFAULT nextval('t_google_attribute_key_iid_seq'::regclass) NOT NULL,
"ckeyname" varchar(50) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_google_attribute_key" IS '谷歌品类属性表';
COMMENT ON COLUMN "public"."t_google_attribute_key"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_google_attribute_key"."ckeyname" IS '谷歌属性名';

-- ----------------------------
-- Table structure for t_google_attribute_value
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_google_attribute_value";
CREATE TABLE "public"."t_google_attribute_value" (
"iid" int4 DEFAULT nextval('t_google_attribute_value_iid_seq'::regclass) NOT NULL,
"cvaluename" varchar(50) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_google_attribute_value" IS '谷歌品类属性值表';
COMMENT ON COLUMN "public"."t_google_attribute_value"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_google_attribute_value"."cvaluename" IS '谷歌属性值';

-- ----------------------------
-- Table structure for t_google_category_base
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_google_category_base";
CREATE TABLE "public"."t_google_category_base" (
"iid" int4 DEFAULT nextval('t_google_category_base_iid_seq'::regclass) NOT NULL,
"icategory" int4,
"iparentid" int4,
"cpath" varchar(255) COLLATE "default",
"cname" varchar(200) COLLATE "default",
"ilevel" int4,
"iposition" int4,
"ichildrencount" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_google_category_base" IS '谷歌品类基础表';
COMMENT ON COLUMN "public"."t_google_category_base"."iid" IS '品类id主键';
COMMENT ON COLUMN "public"."t_google_category_base"."icategory" IS '品类编号';
COMMENT ON COLUMN "public"."t_google_category_base"."iparentid" IS '父编号';
COMMENT ON COLUMN "public"."t_google_category_base"."cpath" IS '路径';
COMMENT ON COLUMN "public"."t_google_category_base"."cname" IS '品类名称';
COMMENT ON COLUMN "public"."t_google_category_base"."ilevel" IS '级别';
COMMENT ON COLUMN "public"."t_google_category_base"."iposition" IS '排序位置';
COMMENT ON COLUMN "public"."t_google_category_base"."ichildrencount" IS '子类数量';

-- ----------------------------
-- Table structure for t_google_category_relation
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_google_category_relation";
CREATE TABLE "public"."t_google_category_relation" (
"iid" int4 DEFAULT nextval('t_google_category_relation_iid_seq'::regclass) NOT NULL,
"igooglecategory" int4,
"icategory" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_google_category_relation" IS '谷歌与本站品类关系表';
COMMENT ON COLUMN "public"."t_google_category_relation"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_google_category_relation"."igooglecategory" IS '谷歌品类编号';
COMMENT ON COLUMN "public"."t_google_category_relation"."icategory" IS '网站品类编号';

-- ----------------------------
-- Table structure for t_google_feeds_base
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_google_feeds_base";
CREATE TABLE "public"."t_google_feeds_base" (
"iid" int4 DEFAULT nextval('t_google_feeds_base_iid_seq'::regclass) NOT NULL,
"country" varchar(50) COLLATE "default",
"clanguage" varchar(50) COLLATE "default",
"ccurrency" varchar(50) COLLATE "default",
"ilanguageid" int4,
"ccreateuser" varchar(20) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_google_feeds_base" IS '谷歌feeds配置表';
COMMENT ON COLUMN "public"."t_google_feeds_base"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_google_feeds_base"."country" IS '国家';
COMMENT ON COLUMN "public"."t_google_feeds_base"."clanguage" IS '语言名称';
COMMENT ON COLUMN "public"."t_google_feeds_base"."ccurrency" IS '币种名称';
COMMENT ON COLUMN "public"."t_google_feeds_base"."ilanguageid" IS '产品语言编号';
COMMENT ON COLUMN "public"."t_google_feeds_base"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_google_feeds_base"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_google_filter_attribute
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_google_filter_attribute";
CREATE TABLE "public"."t_google_filter_attribute" (
"iid" int4 DEFAULT nextval('t_google_filter_attribute_iid_seq'::regclass) NOT NULL,
"icategoryid" int4,
"iattributekeyid" int4,
"iattributevalueid" int4,
"iwebkeyid" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_google_filter_attribute" IS '谷歌品类属性表';
COMMENT ON COLUMN "public"."t_google_filter_attribute"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_google_filter_attribute"."icategoryid" IS '谷歌品类编号';
COMMENT ON COLUMN "public"."t_google_filter_attribute"."iattributekeyid" IS '属性键编号';
COMMENT ON COLUMN "public"."t_google_filter_attribute"."iattributevalueid" IS '属性值编号';
COMMENT ON COLUMN "public"."t_google_filter_attribute"."iwebkeyid" IS '网站品类属性id';

-- ----------------------------
-- Table structure for t_google_product_category_mapper
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_google_product_category_mapper";
CREATE TABLE "public"."t_google_product_category_mapper" (
"iid" int4 DEFAULT nextval('t_google_product_category_mapper_iid_seq'::regclass) NOT NULL,
"csku" varchar(30) COLLATE "default",
"iwebsiteid" int4,
"icategory" int4,
"ccreateuser" varchar(20) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now(),
"cupdateuser" varchar(20) COLLATE "default",
"dupdatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_google_product_category_mapper" IS '谷歌产品品类对应表';
COMMENT ON COLUMN "public"."t_google_product_category_mapper"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_google_product_category_mapper"."csku" IS 'SKU';
COMMENT ON COLUMN "public"."t_google_product_category_mapper"."iwebsiteid" IS '站点编号';
COMMENT ON COLUMN "public"."t_google_product_category_mapper"."icategory" IS '品类编号';
COMMENT ON COLUMN "public"."t_google_product_category_mapper"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_google_product_category_mapper"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_google_product_category_mapper"."cupdateuser" IS '修改人';
COMMENT ON COLUMN "public"."t_google_product_category_mapper"."dupdatedate" IS '修改时间';

-- ----------------------------
-- Table structure for t_google_product_detail
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_google_product_detail";
CREATE TABLE "public"."t_google_product_detail" (
"iid" int4 DEFAULT nextval('t_google_product_detail_iid_seq'::regclass) NOT NULL,
"csku" varchar(30) COLLATE "default",
"ilanguageid" int4,
"ctitle" varchar(500) COLLATE "default",
"cdescription" varchar(5000) COLLATE "default",
"ccreateuser" varchar(20) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now(),
"cupdateuser" varchar(20) COLLATE "default",
"dupdatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_google_product_detail" IS '谷歌产品描述自定义表';
COMMENT ON COLUMN "public"."t_google_product_detail"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_google_product_detail"."csku" IS 'SKU';
COMMENT ON COLUMN "public"."t_google_product_detail"."ilanguageid" IS '语言编号';
COMMENT ON COLUMN "public"."t_google_product_detail"."ctitle" IS 'HTML的标题';
COMMENT ON COLUMN "public"."t_google_product_detail"."cdescription" IS 'feeds自定义描述';
COMMENT ON COLUMN "public"."t_google_product_detail"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_google_product_detail"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_google_product_detail"."cupdateuser" IS '修改人';
COMMENT ON COLUMN "public"."t_google_product_detail"."dupdatedate" IS '修改时间';

-- ----------------------------
-- Table structure for t_home_page_show_history
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_home_page_show_history";
CREATE TABLE "public"."t_home_page_show_history" (
"iid" int4 DEFAULT nextval('t_home_page_show_history_iid_seq'::regclass) NOT NULL,
"iwebsiteid" int4,
"ctype" varchar(40) COLLATE "default",
"clistingid" varchar(40) COLLATE "default",
"dshowtime" timestamp(6)
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_home_page_show_history" IS '首页产品展示历史表';
COMMENT ON COLUMN "public"."t_home_page_show_history"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_home_page_show_history"."iwebsiteid" IS '站点编号';
COMMENT ON COLUMN "public"."t_home_page_show_history"."ctype" IS '首页产品类型标签(hot,featured,clearstocks)';
COMMENT ON COLUMN "public"."t_home_page_show_history"."clistingid" IS '产品广告编号';
COMMENT ON COLUMN "public"."t_home_page_show_history"."dshowtime" IS '展示时间';

-- ----------------------------
-- Table structure for t_inventory_history
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_inventory_history";
CREATE TABLE "public"."t_inventory_history" (
"iid" int4 DEFAULT nextval('t_inventory_history_iid_seq'::regclass) NOT NULL,
"iwebsiteid" int4,
"clistingid" varchar(64) COLLATE "default",
"ibeforechangeqty" int4,
"iqty" int4,
"iafterchangeqty" int4,
"creference" varchar(255) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now(),
"ctype" varchar(30) COLLATE "default",
"benabled" bool DEFAULT true
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_inventory_history" IS '库存流水记录';
COMMENT ON COLUMN "public"."t_inventory_history"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_inventory_history"."iwebsiteid" IS '站点ID';
COMMENT ON COLUMN "public"."t_inventory_history"."clistingid" IS '商品ListingID';
COMMENT ON COLUMN "public"."t_inventory_history"."ibeforechangeqty" IS '变更前数量';
COMMENT ON COLUMN "public"."t_inventory_history"."iqty" IS '变动的数量（分正负）';
COMMENT ON COLUMN "public"."t_inventory_history"."iafterchangeqty" IS '变更后数量';
COMMENT ON COLUMN "public"."t_inventory_history"."creference" IS '参考信息';
COMMENT ON COLUMN "public"."t_inventory_history"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_inventory_history"."ctype" IS '操作类型';
COMMENT ON COLUMN "public"."t_inventory_history"."benabled" IS '是否有效';

-- ----------------------------
-- Table structure for t_merchants_product
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_merchants_product";
CREATE TABLE "public"."t_merchants_product" (
"iid" int4 DEFAULT nextval('t_merchants_product_iid_seq'::regclass) NOT NULL,
"clistingid" varchar(50) COLLATE "default",
"ctitle" varchar(150) COLLATE "default",
"cdescription" varchar(5000) COLLATE "default",
"iwebsiteid" int4,
"ctargetcountry" varchar(30) COLLATE "default",
"clanguage" varchar(20) COLLATE "default",
"googlecategory" varchar(100) COLLATE "default",
"cpath" varchar(150) COLLATE "default",
"cname" varchar(30) COLLATE "default",
"ilanguage" int4,
"cstate" varchar(10) COLLATE "default",
"cresult" varchar(10) COLLATE "default",
"cfaultreason" varchar(1000) COLLATE "default",
"createuser" varchar(30) COLLATE "default",
"cnodedata" varchar(100000) COLLATE "default",
"cnodeid" varchar(100) COLLATE "default",
"icount" int4,
"cchannel" varchar(15) COLLATE "default",
"productprice" varchar(20) COLLATE "default",
"dpulldate" timestamp(6),
"dpushdate" timestamp(6),
"dcreatedate" timestamp(6) DEFAULT now(),
"dupdatedate" timestamp(6),
"ccountrycurrency" varchar(15) COLLATE "default",
"csku" varchar(100) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_merchants_product" IS '产品刊登记录表';
COMMENT ON COLUMN "public"."t_merchants_product"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_merchants_product"."clistingid" IS 'clistingId';
COMMENT ON COLUMN "public"."t_merchants_product"."ctitle" IS '名称';
COMMENT ON COLUMN "public"."t_merchants_product"."cdescription" IS '描述';
COMMENT ON COLUMN "public"."t_merchants_product"."iwebsiteid" IS '站点';
COMMENT ON COLUMN "public"."t_merchants_product"."ctargetcountry" IS '目标国家';
COMMENT ON COLUMN "public"."t_merchants_product"."clanguage" IS '刊登国家语言';
COMMENT ON COLUMN "public"."t_merchants_product"."googlecategory" IS '谷歌品类';
COMMENT ON COLUMN "public"."t_merchants_product"."cpath" IS '站点品类';
COMMENT ON COLUMN "public"."t_merchants_product"."cname" IS '当前品类名';
COMMENT ON COLUMN "public"."t_merchants_product"."ilanguage" IS '站点语言';
COMMENT ON COLUMN "public"."t_merchants_product"."cstate" IS '状态';
COMMENT ON COLUMN "public"."t_merchants_product"."cresult" IS '操作结果';
COMMENT ON COLUMN "public"."t_merchants_product"."cfaultreason" IS '失败原因';
COMMENT ON COLUMN "public"."t_merchants_product"."createuser" IS '操作人';
COMMENT ON COLUMN "public"."t_merchants_product"."cnodedata" IS '刊登元数据';
COMMENT ON COLUMN "public"."t_merchants_product"."cnodeid" IS '刊登元数据ID';
COMMENT ON COLUMN "public"."t_merchants_product"."icount" IS '数量';
COMMENT ON COLUMN "public"."t_merchants_product"."cchannel" IS '在线状态';
COMMENT ON COLUMN "public"."t_merchants_product"."productprice" IS '价格';
COMMENT ON COLUMN "public"."t_merchants_product"."dpulldate" IS '拉取时间';
COMMENT ON COLUMN "public"."t_merchants_product"."dpushdate" IS '更新刊登时间';
COMMENT ON COLUMN "public"."t_merchants_product"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_merchants_product"."dupdatedate" IS '更新时间';
COMMENT ON COLUMN "public"."t_merchants_product"."ccountrycurrency" IS '目标国家币种';
COMMENT ON COLUMN "public"."t_merchants_product"."csku" IS 'sku';

-- ----------------------------
-- Table structure for t_product_activity_relation
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_product_activity_relation";
CREATE TABLE "public"."t_product_activity_relation" (
"iid" int4 DEFAULT nextval('t_product_activity_relation_iid_seq'::regclass) NOT NULL,
"iwebsiteid" int4,
"dfromdate" timestamp(6),
"dtodate" timestamp(6),
"cparentspu" varchar(40) COLLATE "default",
"csubspu" varchar(40) COLLATE "default",
"cparentlistingid" varchar(40) COLLATE "default",
"csublistingid" varchar(40) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT '2015-06-05 22:03:38.618399'::timestamp without time zone,
"bvisible" bool DEFAULT true
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_product_activity_relation" IS '参与活动的产品关系表';
COMMENT ON COLUMN "public"."t_product_activity_relation"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_product_activity_relation"."iwebsiteid" IS '站点';
COMMENT ON COLUMN "public"."t_product_activity_relation"."dfromdate" IS '活动开始时间';
COMMENT ON COLUMN "public"."t_product_activity_relation"."dtodate" IS '活动结束时间';
COMMENT ON COLUMN "public"."t_product_activity_relation"."cparentspu" IS '主产品spu';
COMMENT ON COLUMN "public"."t_product_activity_relation"."csubspu" IS '次产品spu';
COMMENT ON COLUMN "public"."t_product_activity_relation"."cparentlistingid" IS '主产品';
COMMENT ON COLUMN "public"."t_product_activity_relation"."csublistingid" IS '次产品';
COMMENT ON COLUMN "public"."t_product_activity_relation"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_product_activity_relation"."bvisible" IS '是否可见';

-- ----------------------------
-- Table structure for t_product_activity_relation_detail
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_product_activity_relation_detail";
CREATE TABLE "public"."t_product_activity_relation_detail" (
"iid" int4 DEFAULT nextval('t_product_activity_relation_detail_iid_seq'::regclass) NOT NULL,
"iactivityid" int4,
"cspu" varchar(40) COLLATE "default",
"csku" varchar(40) COLLATE "default",
"clistingid" varchar(40) COLLATE "default",
"fprice" float8,
"iqty" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_product_activity_relation_detail" IS '参与活动的产品详情表';
COMMENT ON COLUMN "public"."t_product_activity_relation_detail"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_product_activity_relation_detail"."iactivityid" IS '活动编号';
COMMENT ON COLUMN "public"."t_product_activity_relation_detail"."cspu" IS 'spu';
COMMENT ON COLUMN "public"."t_product_activity_relation_detail"."csku" IS 'sku';
COMMENT ON COLUMN "public"."t_product_activity_relation_detail"."clistingid" IS '广告编号';
COMMENT ON COLUMN "public"."t_product_activity_relation_detail"."fprice" IS '活动价';
COMMENT ON COLUMN "public"."t_product_activity_relation_detail"."iqty" IS '产品数量';

-- ----------------------------
-- Table structure for t_product_attachment_mapper
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_product_attachment_mapper";
CREATE TABLE "public"."t_product_attachment_mapper" (
"iid" int4 DEFAULT nextval('t_product_attachment_mapper_iid_seq'::regclass) NOT NULL,
"iwebsiteid" int4,
"csku" varchar(40) COLLATE "default",
"ilanguage" int4,
"clistingid" varchar(40) COLLATE "default",
"iattachmentdescid" int4,
"ccreateuser" varchar(20) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_product_attachment_mapper" IS '附件路径映射表';
COMMENT ON COLUMN "public"."t_product_attachment_mapper"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_product_attachment_mapper"."iwebsiteid" IS '站点编号';
COMMENT ON COLUMN "public"."t_product_attachment_mapper"."csku" IS 'sku';
COMMENT ON COLUMN "public"."t_product_attachment_mapper"."ilanguage" IS '语言';
COMMENT ON COLUMN "public"."t_product_attachment_mapper"."clistingid" IS '广告编号';
COMMENT ON COLUMN "public"."t_product_attachment_mapper"."iattachmentdescid" IS '下载文件路径映射id';
COMMENT ON COLUMN "public"."t_product_attachment_mapper"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_product_attachment_mapper"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_product_base
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_product_base";
CREATE TABLE "public"."t_product_base" (
"iid" int4 DEFAULT nextval('t_product_base_iid_seq'::regclass) NOT NULL,
"clistingid" varchar(50) COLLATE "default",
"iwebsiteid" int4,
"csku" varchar(40) COLLATE "default",
"istatus" int4,
"dnewformdate" timestamp(6),
"dnewtodate" timestamp(6),
"bspecial" bool,
"cvideoaddress" varchar(500) COLLATE "default",
"iqty" int4,
"fprice" float8,
"fweight" float8,
"bmultiattribute" bool,
"cparentsku" varchar(40) COLLATE "default",
"bvisible" bool DEFAULT true,
"bpulish" bool,
"ccreateuser" varchar(20) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now(),
"fcostprice" float8,
"ffreight" float8,
"bmain" bool,
"bactivity" bool DEFAULT false
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_product_base" IS '产品基础表';
COMMENT ON COLUMN "public"."t_product_base"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_product_base"."clistingid" IS '广告编号';
COMMENT ON COLUMN "public"."t_product_base"."iwebsiteid" IS '站点编号';
COMMENT ON COLUMN "public"."t_product_base"."csku" IS 'SKU';
COMMENT ON COLUMN "public"."t_product_base"."istatus" IS '状态(在售、停售、下架)';
COMMENT ON COLUMN "public"."t_product_base"."dnewformdate" IS '新品期开始时间';
COMMENT ON COLUMN "public"."t_product_base"."dnewtodate" IS '新品期结束时间';
COMMENT ON COLUMN "public"."t_product_base"."bspecial" IS '特殊商品';
COMMENT ON COLUMN "public"."t_product_base"."cvideoaddress" IS '特殊商品';
COMMENT ON COLUMN "public"."t_product_base"."iqty" IS '数量';
COMMENT ON COLUMN "public"."t_product_base"."fprice" IS '价格';
COMMENT ON COLUMN "public"."t_product_base"."fweight" IS '重量';
COMMENT ON COLUMN "public"."t_product_base"."bmultiattribute" IS '是否多属性';
COMMENT ON COLUMN "public"."t_product_base"."cparentsku" IS '父编号';
COMMENT ON COLUMN "public"."t_product_base"."bvisible" IS '是否可见';
COMMENT ON COLUMN "public"."t_product_base"."bpulish" IS '是否发布(待扩展)';
COMMENT ON COLUMN "public"."t_product_base"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_product_base"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_product_base"."ffreight" IS '包含的邮费';
COMMENT ON COLUMN "public"."t_product_base"."bmain" IS '是否主产品';
COMMENT ON COLUMN "public"."t_product_base"."bactivity" IS '是否活动产品';

-- ----------------------------
-- Table structure for t_product_base_sku_for_not1
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_product_base_sku_for_not1";
CREATE TABLE "public"."t_product_base_sku_for_not1" (
"csku" varchar(40) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for t_product_bundle_sale
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_product_bundle_sale";
CREATE TABLE "public"."t_product_bundle_sale" (
"iid" int4 DEFAULT nextval('t_product_bundle_sale_iid_seq'::regclass) NOT NULL,
"clistingid" varchar(40) COLLATE "default",
"cbundlelistingid" varchar(40) COLLATE "default",
"fdiscount" float8,
"ipriority" int4,
"bmachine" bool DEFAULT true,
"clastupdateuser" varchar(20) COLLATE "default",
"dlastupdatedate" timestamp(6),
"ccreateuser" varchar(20) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now(),
"bvisible" bool DEFAULT true,
"bavailable" bool DEFAULT true,
"bactivity" bool DEFAULT false
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_product_bundle_sale" IS '产品捆绑销售表';
COMMENT ON COLUMN "public"."t_product_bundle_sale"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_product_bundle_sale"."clistingid" IS '广告编号';
COMMENT ON COLUMN "public"."t_product_bundle_sale"."cbundlelistingid" IS '捆绑的广告编号';
COMMENT ON COLUMN "public"."t_product_bundle_sale"."fdiscount" IS '折扣';
COMMENT ON COLUMN "public"."t_product_bundle_sale"."ipriority" IS '优先级';
COMMENT ON COLUMN "public"."t_product_bundle_sale"."bmachine" IS '是否机器产生';
COMMENT ON COLUMN "public"."t_product_bundle_sale"."clastupdateuser" IS '修改人';
COMMENT ON COLUMN "public"."t_product_bundle_sale"."dlastupdatedate" IS '修改时间';
COMMENT ON COLUMN "public"."t_product_bundle_sale"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_product_bundle_sale"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_product_bundle_sale"."bvisible" IS '是否可见';
COMMENT ON COLUMN "public"."t_product_bundle_sale"."bavailable" IS '是否可用';
COMMENT ON COLUMN "public"."t_product_bundle_sale"."bactivity" IS '是否为活动捆绑';

-- ----------------------------
-- Table structure for t_product_category_mapper
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_product_category_mapper";
CREATE TABLE "public"."t_product_category_mapper" (
"iid" int4 DEFAULT nextval('t_product_category_mapper_iid_seq'::regclass) NOT NULL,
"clistingid" varchar(40) COLLATE "default",
"ilanguageid" int4,
"csku" varchar(30) COLLATE "default",
"icategory" int4,
"ccreateuser" varchar(20) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_product_category_mapper" IS '产品品类对应表';
COMMENT ON COLUMN "public"."t_product_category_mapper"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_product_category_mapper"."clistingid" IS '广告编号';
COMMENT ON COLUMN "public"."t_product_category_mapper"."ilanguageid" IS '语言编号';
COMMENT ON COLUMN "public"."t_product_category_mapper"."csku" IS 'SKU';
COMMENT ON COLUMN "public"."t_product_category_mapper"."icategory" IS '品类编号';
COMMENT ON COLUMN "public"."t_product_category_mapper"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_product_category_mapper"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_product_category_rank
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_product_category_rank";
CREATE TABLE "public"."t_product_category_rank" (
"iid" int4 DEFAULT nextval('t_product_category_rank_iid_seq'::regclass) NOT NULL,
"clistingid" varchar(40) COLLATE "default",
"csku" varchar(30) COLLATE "default",
"icategoryid" int4,
"iwebsiteid" int4,
"isales" int4,
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_product_category_rank" IS '产品同类排名表';
COMMENT ON COLUMN "public"."t_product_category_rank"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_product_category_rank"."clistingid" IS '广告 编号';
COMMENT ON COLUMN "public"."t_product_category_rank"."csku" IS 'SKU';
COMMENT ON COLUMN "public"."t_product_category_rank"."icategoryid" IS '品类编号';
COMMENT ON COLUMN "public"."t_product_category_rank"."iwebsiteid" IS '站点编号';
COMMENT ON COLUMN "public"."t_product_category_rank"."isales" IS '商品销量';
COMMENT ON COLUMN "public"."t_product_category_rank"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_product_clean
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_product_clean";
CREATE TABLE "public"."t_product_clean" (
"csku" varchar(60) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for t_product_entity_map
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_product_entity_map";
CREATE TABLE "public"."t_product_entity_map" (
"iid" int4 DEFAULT nextval('t_product_entity_map_iid_seq'::regclass) NOT NULL,
"clistingid" varchar(40) COLLATE "default",
"csku" varchar(30) COLLATE "default",
"ikey" int4,
"ivalue" int4,
"iwebsiteid" int4,
"bshow" bool,
"multiattribute" bool,
"ccreateuser" varchar(50) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_product_entity_map" IS '产品自定义属性表';
COMMENT ON COLUMN "public"."t_product_entity_map"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_product_entity_map"."clistingid" IS '广告编号';
COMMENT ON COLUMN "public"."t_product_entity_map"."csku" IS 'SKU';
COMMENT ON COLUMN "public"."t_product_entity_map"."ikey" IS '属性键';
COMMENT ON COLUMN "public"."t_product_entity_map"."ivalue" IS '属性值';
COMMENT ON COLUMN "public"."t_product_entity_map"."iwebsiteid" IS '站点';
COMMENT ON COLUMN "public"."t_product_entity_map"."bshow" IS '是否产品页显示';
COMMENT ON COLUMN "public"."t_product_entity_map"."multiattribute" IS '是否多属性';
COMMENT ON COLUMN "public"."t_product_entity_map"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_product_entity_map"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_product_entity_map_bak
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_product_entity_map_bak";
CREATE TABLE "public"."t_product_entity_map_bak" (
"iid" int4,
"clistingid" varchar(40) COLLATE "default",
"csku" varchar(30) COLLATE "default",
"ikey" int4,
"ivalue" int4,
"iwebsiteid" int4,
"bshow" bool,
"multiattribute" bool,
"ccreateuser" varchar(50) COLLATE "default",
"dcreatedate" timestamp(6)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for t_product_group_price
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_product_group_price";
CREATE TABLE "public"."t_product_group_price" (
"iid" int4 DEFAULT nextval('t_product_group_price_iid_seq'::regclass) NOT NULL,
"icustomergroupid" int4,
"clistingid" varchar(40) COLLATE "default",
"iqty" int4,
"fdiscount" float8,
"ccreateuser" varchar(20) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_product_group_price" IS '产品分段价格表';
COMMENT ON COLUMN "public"."t_product_group_price"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_product_group_price"."icustomergroupid" IS '客户组编号';
COMMENT ON COLUMN "public"."t_product_group_price"."clistingid" IS '广告编号';
COMMENT ON COLUMN "public"."t_product_group_price"."iqty" IS '数量区间起点';
COMMENT ON COLUMN "public"."t_product_group_price"."fdiscount" IS '折扣';
COMMENT ON COLUMN "public"."t_product_group_price"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_product_group_price"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_product_image
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_product_image";
CREATE TABLE "public"."t_product_image" (
"iid" int4 DEFAULT nextval('t_product_image_iid_seq'::regclass) NOT NULL,
"clistingid" varchar(40) COLLATE "default",
"csku" varchar(30) COLLATE "default",
"cimageurl" varchar(600) COLLATE "default",
"clabel" varchar(50) COLLATE "default",
"iorder" int4,
"bthumbnail" bool,
"bsmallimage" bool,
"bbaseimage" bool,
"ccreateuser" varchar(40) COLLATE "default",
"bshowondetails" bool DEFAULT true
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_product_image" IS '产品图片表';
COMMENT ON COLUMN "public"."t_product_image"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_product_image"."clistingid" IS '广告编号';
COMMENT ON COLUMN "public"."t_product_image"."csku" IS 'SKU';
COMMENT ON COLUMN "public"."t_product_image"."cimageurl" IS '图片路径';
COMMENT ON COLUMN "public"."t_product_image"."clabel" IS '图片label';
COMMENT ON COLUMN "public"."t_product_image"."iorder" IS '图片排序';
COMMENT ON COLUMN "public"."t_product_image"."bthumbnail" IS '是否缩略图';
COMMENT ON COLUMN "public"."t_product_image"."bsmallimage" IS '是否小图';
COMMENT ON COLUMN "public"."t_product_image"."bshowondetails" IS '是否显示在产品详情页面';

-- ----------------------------
-- Table structure for t_product_intercept_url
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_product_intercept_url";
CREATE TABLE "public"."t_product_intercept_url" (
"iid" int4 DEFAULT nextval('t_product_intercept_url_iid_seq'::regclass) NOT NULL,
"iwebsiteid" int4,
"clistingid" varchar(40) COLLATE "default",
"csku" varchar(30) COLLATE "default",
"ilanguageid" int4,
"bavailable" bool DEFAULT true,
"curl" varchar(300) COLLATE "default",
"ccreateuser" varchar(30) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_product_intercept_url" IS 'URL拦截表';
COMMENT ON COLUMN "public"."t_product_intercept_url"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_product_intercept_url"."iwebsiteid" IS '站点编号';
COMMENT ON COLUMN "public"."t_product_intercept_url"."clistingid" IS '广告编号';
COMMENT ON COLUMN "public"."t_product_intercept_url"."csku" IS 'SKU';
COMMENT ON COLUMN "public"."t_product_intercept_url"."ilanguageid" IS '语言编号';
COMMENT ON COLUMN "public"."t_product_intercept_url"."bavailable" IS '是否可用';
COMMENT ON COLUMN "public"."t_product_intercept_url"."curl" IS '路由地址';
COMMENT ON COLUMN "public"."t_product_intercept_url"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_product_intercept_url"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_product_label
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_product_label";
CREATE TABLE "public"."t_product_label" (
"iid" int4 DEFAULT nextval('t_product_label_iid_seq'::regclass) NOT NULL,
"iwebsiteid" int4,
"ctype" varchar(50) COLLATE "default",
"clistingid" varchar(80) COLLATE "default",
"ccreateuser" varchar(20) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_product_label" IS '产品标签';
COMMENT ON COLUMN "public"."t_product_label"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_product_label"."iwebsiteid" IS '站点编号';
COMMENT ON COLUMN "public"."t_product_label"."ctype" IS '标签名称';
COMMENT ON COLUMN "public"."t_product_label"."clistingid" IS 'listing编号';
COMMENT ON COLUMN "public"."t_product_label"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_product_label"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_product_label_bak
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_product_label_bak";
CREATE TABLE "public"."t_product_label_bak" (
"iid" int4,
"iwebsiteid" int4,
"ctype" varchar(50) COLLATE "default",
"clistingid" varchar(80) COLLATE "default",
"ccreateuser" varchar(20) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for t_product_label_type
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_product_label_type";
CREATE TABLE "public"."t_product_label_type" (
"iid" int4 DEFAULT nextval('t_product_label_type_iid_seq'::regclass) NOT NULL,
"ctype" varchar(50) COLLATE "default",
"ccreateuser" varchar(20) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_product_label_type" IS '产品标签类型';
COMMENT ON COLUMN "public"."t_product_label_type"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_product_label_type"."ctype" IS '标签名称';
COMMENT ON COLUMN "public"."t_product_label_type"."ccreateuser" IS '创建人';

-- ----------------------------
-- Table structure for t_product_multiattribute_attribute
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_product_multiattribute_attribute";
CREATE TABLE "public"."t_product_multiattribute_attribute" (
"iid" int4 DEFAULT nextval('t_product_multiattribute_attribute_iid_seq'::regclass) NOT NULL,
"iwebsiteid" int4,
"cparentsku" varchar(40) COLLATE "default",
"ikey" int4,
"bshowimg" bool NOT NULL
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_product_multiattribute_attribute" IS '多属性产品属性表';
COMMENT ON COLUMN "public"."t_product_multiattribute_attribute"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_product_multiattribute_attribute"."iwebsiteid" IS '站点编号';
COMMENT ON COLUMN "public"."t_product_multiattribute_attribute"."cparentsku" IS 'parent sku';
COMMENT ON COLUMN "public"."t_product_multiattribute_attribute"."ikey" IS '属性键';
COMMENT ON COLUMN "public"."t_product_multiattribute_attribute"."bshowimg" IS '是否图片呈现';

-- ----------------------------
-- Table structure for t_product_multiattribute_base
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_product_multiattribute_base";
CREATE TABLE "public"."t_product_multiattribute_base" (
"iid" int4 DEFAULT nextval('t_product_multiattribute_base_iid_seq'::regclass) NOT NULL,
"iwebsiteid" int4,
"cparentsku" varchar(40) COLLATE "default",
"ccreateuser" varchar(20) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now(),
"clastupdateuser" varchar(20) COLLATE "default",
"dlastupdatedate" timestamp(6)
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_product_multiattribute_base" IS '产品多属性基础表';
COMMENT ON COLUMN "public"."t_product_multiattribute_base"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_product_multiattribute_base"."iwebsiteid" IS '站点编号';
COMMENT ON COLUMN "public"."t_product_multiattribute_base"."cparentsku" IS 'parent sku';
COMMENT ON COLUMN "public"."t_product_multiattribute_base"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_product_multiattribute_base"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_product_multiattribute_base"."clastupdateuser" IS '修改人';
COMMENT ON COLUMN "public"."t_product_multiattribute_base"."dlastupdatedate" IS '修改时间';

-- ----------------------------
-- Table structure for t_product_multiattribute_sku
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_product_multiattribute_sku";
CREATE TABLE "public"."t_product_multiattribute_sku" (
"iid" int4 DEFAULT nextval('t_product_multiattribute_sku_iid_seq'::regclass) NOT NULL,
"cparentsku" varchar(40) COLLATE "default",
"csku" varchar(40) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_product_multiattribute_sku" IS '多属性产品表';
COMMENT ON COLUMN "public"."t_product_multiattribute_sku"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_product_multiattribute_sku"."cparentsku" IS 'parent sku';
COMMENT ON COLUMN "public"."t_product_multiattribute_sku"."csku" IS 'SKU';

-- ----------------------------
-- Table structure for t_product_parent_url
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_product_parent_url";
CREATE TABLE "public"."t_product_parent_url" (
"iid" int4 DEFAULT nextval('t_product_parent_url_iid_seq'::regclass) NOT NULL,
"cparentsku" varchar(30) COLLATE "default",
"ilanguageid" int4,
"curl" varchar(300) COLLATE "default",
"ccreateuser" varchar(30) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now(),
"iwebsiteid" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_product_parent_url" IS '产品SPU路由表';
COMMENT ON COLUMN "public"."t_product_parent_url"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_product_parent_url"."cparentsku" IS 'SKU';
COMMENT ON COLUMN "public"."t_product_parent_url"."ilanguageid" IS '语言编号';
COMMENT ON COLUMN "public"."t_product_parent_url"."curl" IS '路由地址';
COMMENT ON COLUMN "public"."t_product_parent_url"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_product_parent_url"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_product_parent_url"."iwebsiteid" IS '站点编号';

-- ----------------------------
-- Table structure for t_product_recommend
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_product_recommend";
CREATE TABLE "public"."t_product_recommend" (
"iid" int4 DEFAULT nextval('t_product_recommend_iid_seq'::regclass) NOT NULL,
"clistingid" varchar(40) COLLATE "default",
"csku" varchar(50) COLLATE "default",
"crecommendlisting" varchar(40) COLLATE "default",
"crecommendsku" varchar(30) COLLATE "default",
"ccreateuser" varchar(20) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_product_recommend" IS '产品推荐表';
COMMENT ON COLUMN "public"."t_product_recommend"."clistingid" IS '广告编号';
COMMENT ON COLUMN "public"."t_product_recommend"."csku" IS 'SKU';
COMMENT ON COLUMN "public"."t_product_recommend"."crecommendlisting" IS '推荐产品listing';
COMMENT ON COLUMN "public"."t_product_recommend"."crecommendsku" IS '推荐产品sku';
COMMENT ON COLUMN "public"."t_product_recommend"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_product_recommend"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_product_saleprice
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_product_saleprice";
CREATE TABLE "public"."t_product_saleprice" (
"iid" int4 DEFAULT nextval('t_product_saleprice_iid_seq'::regclass) NOT NULL,
"clistingid" varchar(40) COLLATE "default",
"csku" varchar(30) COLLATE "default",
"fsaleprice" float8,
"dbegindate" timestamp(6),
"denddate" timestamp(6),
"ccreateuser" varchar(20) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_product_saleprice" IS '产品促销表';
COMMENT ON COLUMN "public"."t_product_saleprice"."iid" IS '产品主键';
COMMENT ON COLUMN "public"."t_product_saleprice"."clistingid" IS '广告编号';
COMMENT ON COLUMN "public"."t_product_saleprice"."csku" IS 'SKU';
COMMENT ON COLUMN "public"."t_product_saleprice"."fsaleprice" IS '促销价';
COMMENT ON COLUMN "public"."t_product_saleprice"."dbegindate" IS '促销开始时间';
COMMENT ON COLUMN "public"."t_product_saleprice"."denddate" IS '促销结束时间';
COMMENT ON COLUMN "public"."t_product_saleprice"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_product_saleprice"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_product_selling_points
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_product_selling_points";
CREATE TABLE "public"."t_product_selling_points" (
"iid" int4 DEFAULT nextval('t_product_selling_points_iid_seq'::regclass) NOT NULL,
"clistingid" varchar(50) COLLATE "default",
"csku" varchar(40) COLLATE "default",
"ilanguageid" int4,
"ccontent" varchar(2000) COLLATE "default",
"ccreateuser" varchar(20) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_product_selling_points" IS '产品卖点表';
COMMENT ON COLUMN "public"."t_product_selling_points"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_product_selling_points"."clistingid" IS '广告编号';
COMMENT ON COLUMN "public"."t_product_selling_points"."csku" IS 'SKU';
COMMENT ON COLUMN "public"."t_product_selling_points"."ilanguageid" IS '语言编号';
COMMENT ON COLUMN "public"."t_product_selling_points"."ccontent" IS '卖点内容';
COMMENT ON COLUMN "public"."t_product_selling_points"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_product_selling_points"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_product_storage_map
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_product_storage_map";
CREATE TABLE "public"."t_product_storage_map" (
"iid" int4 DEFAULT nextval('t_product_storage_map_iid_seq'::regclass) NOT NULL,
"clistingid" varchar(50) COLLATE "default",
"csku" varchar(40) COLLATE "default",
"istorageid" int4,
"ccreateuser" varchar(20) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now(),
"bavailable" bool DEFAULT true
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_product_storage_map" IS '产品发货仓库表';
COMMENT ON COLUMN "public"."t_product_storage_map"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_product_storage_map"."clistingid" IS '广告编号';
COMMENT ON COLUMN "public"."t_product_storage_map"."csku" IS 'SKU';
COMMENT ON COLUMN "public"."t_product_storage_map"."istorageid" IS '仓库编号';
COMMENT ON COLUMN "public"."t_product_storage_map"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_product_storage_map"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_product_storage_map"."bavailable" IS '是否可用';

-- ----------------------------
-- Table structure for t_product_topic_page
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_product_topic_page";
CREATE TABLE "public"."t_product_topic_page" (
"iid" int4 DEFAULT nextval('t_product_topic_page_iid_seq'::regclass) NOT NULL,
"iwebsiteid" int4,
"ilanguageid" int4,
"ctype" varchar(20) COLLATE "default",
"ctitle" varchar(500) COLLATE "default",
"cimage" bytea,
"chtmlurl" varchar(300) COLLATE "default",
"bshow" bool,
"icreateuserid" int4,
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_product_topic_page" IS '主题产品宣传页表';
COMMENT ON COLUMN "public"."t_product_topic_page"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_product_topic_page"."iwebsiteid" IS '站点编号';
COMMENT ON COLUMN "public"."t_product_topic_page"."ilanguageid" IS '语言编号';
COMMENT ON COLUMN "public"."t_product_topic_page"."ctype" IS '类型';
COMMENT ON COLUMN "public"."t_product_topic_page"."ctitle" IS '标题';
COMMENT ON COLUMN "public"."t_product_topic_page"."cimage" IS '二进制图片';
COMMENT ON COLUMN "public"."t_product_topic_page"."chtmlurl" IS '上传的html的地址';
COMMENT ON COLUMN "public"."t_product_topic_page"."bshow" IS '是否显示';
COMMENT ON COLUMN "public"."t_product_topic_page"."icreateuserid" IS '创建人';
COMMENT ON COLUMN "public"."t_product_topic_page"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_product_translate
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_product_translate";
CREATE TABLE "public"."t_product_translate" (
"iid" int4 DEFAULT nextval('t_product_translate_iid_seq'::regclass) NOT NULL,
"clistingid" varchar(50) COLLATE "default",
"ilanguageid" int4,
"csku" varchar(40) COLLATE "default",
"ctitle" varchar(3000) COLLATE "default",
"cdescription" varchar(100000) COLLATE "default",
"cshortdescription" varchar(6000) COLLATE "default",
"ckeyword" varchar(2000) COLLATE "default",
"cmetatitle" varchar(500) COLLATE "default",
"cmetakeyword" varchar(2000) COLLATE "default",
"cmetadescription" varchar(2000) COLLATE "default",
"ccreateuser" varchar(40) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_product_translate" IS '产品翻译信息表';
COMMENT ON COLUMN "public"."t_product_translate"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_product_translate"."clistingid" IS '广告编号';
COMMENT ON COLUMN "public"."t_product_translate"."ilanguageid" IS '语言编号';
COMMENT ON COLUMN "public"."t_product_translate"."csku" IS 'SKU';
COMMENT ON COLUMN "public"."t_product_translate"."ctitle" IS '标题';
COMMENT ON COLUMN "public"."t_product_translate"."cdescription" IS '描述';
COMMENT ON COLUMN "public"."t_product_translate"."cshortdescription" IS '短描述';
COMMENT ON COLUMN "public"."t_product_translate"."ckeyword" IS '多语种关键字';
COMMENT ON COLUMN "public"."t_product_translate"."cmetatitle" IS 'meta title';
COMMENT ON COLUMN "public"."t_product_translate"."cmetakeyword" IS 'meta keyword';
COMMENT ON COLUMN "public"."t_product_translate"."cmetadescription" IS 'meta description';

-- ----------------------------
-- Table structure for t_product_url
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_product_url";
CREATE TABLE "public"."t_product_url" (
"iid" int4 DEFAULT nextval('t_product_url_iid_seq'::regclass) NOT NULL,
"clistingid" varchar(40) COLLATE "default",
"csku" varchar(30) COLLATE "default",
"ilanguageid" int4,
"curl" varchar(500) COLLATE "default",
"ccreateuser" varchar(30) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now(),
"iwebsiteid" int4 DEFAULT 1
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_product_url" IS '产品详情页路由表';
COMMENT ON COLUMN "public"."t_product_url"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_product_url"."clistingid" IS '广告编号';
COMMENT ON COLUMN "public"."t_product_url"."csku" IS 'SKU';
COMMENT ON COLUMN "public"."t_product_url"."ilanguageid" IS '语言编号';
COMMENT ON COLUMN "public"."t_product_url"."curl" IS '路由地址';
COMMENT ON COLUMN "public"."t_product_url"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_product_url"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_product_url"."iwebsiteid" IS '站点编号';

-- ----------------------------
-- Table structure for t_product_video
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_product_video";
CREATE TABLE "public"."t_product_video" (
"iid" int4 DEFAULT nextval('t_product_video_iid_seq'::regclass) NOT NULL,
"clistingid" varchar(40) COLLATE "default",
"csku" varchar(50) COLLATE "default",
"cemail" int4,
"icommentid" int4,
"cvideourl" varchar(600) COLLATE "default",
"clabel" varchar(50) COLLATE "default",
"ccreateuser" varchar(20) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_product_video" IS '产品视频表';
COMMENT ON COLUMN "public"."t_product_video"."clistingid" IS '广告编号';
COMMENT ON COLUMN "public"."t_product_video"."csku" IS 'SKU';
COMMENT ON COLUMN "public"."t_product_video"."cemail" IS '客户编号';
COMMENT ON COLUMN "public"."t_product_video"."icommentid" IS '评论编号';
COMMENT ON COLUMN "public"."t_product_video"."cvideourl" IS '视频路径';
COMMENT ON COLUMN "public"."t_product_video"."clabel" IS '视频label';
COMMENT ON COLUMN "public"."t_product_video"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_product_video"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_product_viewcount
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_product_viewcount";
CREATE TABLE "public"."t_product_viewcount" (
"iwebsiteid" int4,
"clistingid" varchar(64) COLLATE "default",
"iviewcount" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_product_viewcount" IS '浏览数量表';
COMMENT ON COLUMN "public"."t_product_viewcount"."iwebsiteid" IS '站点ID';
COMMENT ON COLUMN "public"."t_product_viewcount"."clistingid" IS '商品ListingID';
COMMENT ON COLUMN "public"."t_product_viewcount"."iviewcount" IS '浏览计数';

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
"created_on" varchar(30) COLLATE "default",
"created_by" varchar(20) COLLATE "default",
"last_updated_on" varchar(30) COLLATE "default",
"last_updated_by" varchar(20) COLLATE "default",
"is_deleted" varchar(5) COLLATE "default" DEFAULT '0'::character varying
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for t_third_platform_data
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_third_platform_data";
CREATE TABLE "public"."t_third_platform_data" (
"iid" int4 DEFAULT nextval('t_third_platform_data_iid_seq'::regclass) NOT NULL,
"cplatform" varchar(40) COLLATE "default",
"cwebsite" varchar(50) COLLATE "default",
"cproductid" varchar(50) COLLATE "default",
"cdomain" varchar(50) COLLATE "default",
"csku" varchar(40) COLLATE "default",
"iqty" int4,
"istatus" int4,
"isalesvolume" int4,
"dcreatedate" timestamp(6) DEFAULT now(),
"dupdatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_third_platform_data" IS '第三方平台数据表';
COMMENT ON COLUMN "public"."t_third_platform_data"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_third_platform_data"."cplatform" IS '平台';
COMMENT ON COLUMN "public"."t_third_platform_data"."cwebsite" IS '平台站点';
COMMENT ON COLUMN "public"."t_third_platform_data"."cproductid" IS '商品id';
COMMENT ON COLUMN "public"."t_third_platform_data"."cdomain" IS '域名';
COMMENT ON COLUMN "public"."t_third_platform_data"."csku" IS 'sku';
COMMENT ON COLUMN "public"."t_third_platform_data"."iqty" IS '库存';
COMMENT ON COLUMN "public"."t_third_platform_data"."istatus" IS '1:在售,2:停售,3:下架';
COMMENT ON COLUMN "public"."t_third_platform_data"."isalesvolume" IS '销量';
COMMENT ON COLUMN "public"."t_third_platform_data"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_third_platform_data"."dupdatedate" IS '更新时间';

-- ----------------------------
-- Table structure for ta
-- ----------------------------
DROP TABLE IF EXISTS "public"."ta";
CREATE TABLE "public"."ta" (
"clistingid" varchar(80) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for tb
-- ----------------------------
DROP TABLE IF EXISTS "public"."tb";
CREATE TABLE "public"."tb" (
"clistingid" varchar(80) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for tmp_brand
-- ----------------------------
DROP TABLE IF EXISTS "public"."tmp_brand";
CREATE TABLE "public"."tmp_brand" (
"clistingid" varchar(40) COLLATE "default",
"csku" varchar(30) COLLATE "default",
"brand" varchar(50) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for tmp_product_baseimg
-- ----------------------------
DROP TABLE IF EXISTS "public"."tmp_product_baseimg";
CREATE TABLE "public"."tmp_product_baseimg" (
"clistingid" varchar(40) COLLATE "default",
"csku" varchar(30) COLLATE "default",
"cimageurl" varchar(600) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for tmp_product_category
-- ----------------------------
DROP TABLE IF EXISTS "public"."tmp_product_category";
CREATE TABLE "public"."tmp_product_category" (
"ilevel" int4,
"clistingid" varchar(40) COLLATE "default",
"cpath" text COLLATE "default",
"csku" varchar(30) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for tmp_sas_category
-- ----------------------------
DROP TABLE IF EXISTS "public"."tmp_sas_category";
CREATE TABLE "public"."tmp_sas_category" (
"icategory" int4,
"cpath" varchar(200) COLLATE "default",
"ilevel" int4,
"sas_cat1" int4,
"sas_cat2" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for tmp_sas_product
-- ----------------------------
DROP TABLE IF EXISTS "public"."tmp_sas_product";
CREATE TABLE "public"."tmp_sas_product" (
"sku" varchar(40) COLLATE "default",
"name" varchar(3000) COLLATE "default",
"url" text COLLATE "default",
"price" float8,
"retail_price" float8,
"description" text COLLATE "default",
"image_url" text COLLATE "default",
"thumbnail_image_url" text COLLATE "default",
"keyword" varchar COLLATE "default",
"website_cpath" varchar(255) COLLATE "default",
"website_cat1" text COLLATE "default",
"website_cat2" text COLLATE "default",
"sas_cat1" int4,
"sas_cat2" int4,
"id" int4 DEFAULT nextval('tmp_sas_product_id_seq'::regclass) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for tmp_sas_product_category
-- ----------------------------
DROP TABLE IF EXISTS "public"."tmp_sas_product_category";
CREATE TABLE "public"."tmp_sas_product_category" (
"clistingid" varchar(40) COLLATE "default",
"website_cpath" varchar(255) COLLATE "default",
"website_cat1" text COLLATE "default",
"website_cat2" text COLLATE "default",
"sas_cat1" int4,
"sas_cat2" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------
ALTER SEQUENCE "public"."t_all_product_explain_iid_seq" OWNED BY "t_all_product_explain"."iid";
ALTER SEQUENCE "public"."t_all_product_explain_type_iid_seq" OWNED BY "t_all_product_explain_type"."iid";
ALTER SEQUENCE "public"."t_attachment_desc_iid_seq" OWNED BY "t_attachment_desc"."iid";
ALTER SEQUENCE "public"."t_attachment_iid_seq" OWNED BY "t_attachment"."iid";
ALTER SEQUENCE "public"."t_attribute_key_ikeyid_seq" OWNED BY "t_attribute_key"."ikeyid";
ALTER SEQUENCE "public"."t_attribute_key_name_iid_seq" OWNED BY "t_attribute_key_name"."iid";
ALTER SEQUENCE "public"."t_attribute_value_ivalueid_seq" OWNED BY "t_attribute_value"."ivalueid";
ALTER SEQUENCE "public"."t_attribute_value_name_ikeyid_seq" OWNED BY "t_attribute_value_name"."ikeyid";
ALTER SEQUENCE "public"."t_category_backgroundimages_iid_seq" OWNED BY "t_category_backgroundimages"."iid";
ALTER SEQUENCE "public"."t_category_base_iid_seq" OWNED BY "t_category_base"."iid";
ALTER SEQUENCE "public"."t_category_label_iid_seq" OWNED BY "t_category_label"."iid";
ALTER SEQUENCE "public"."t_category_label_name_iid_seq" OWNED BY "t_category_label_name"."iid";
ALTER SEQUENCE "public"."t_category_label_type_iid_seq" OWNED BY "t_category_label_type"."iid";
ALTER SEQUENCE "public"."t_category_name_iid_seq" OWNED BY "t_category_name"."iid";
ALTER SEQUENCE "public"."t_category_product_recommend_iid_seq" OWNED BY "t_category_product_recommend"."iid";
ALTER SEQUENCE "public"."t_category_website_iid_seq" OWNED BY "t_category_website"."iid";
ALTER SEQUENCE "public"."t_daily_deals_iid_seq" OWNED BY "t_daily_deals"."iid";
ALTER SEQUENCE "public"."t_google_attribute_key_iid_seq" OWNED BY "t_google_attribute_key"."iid";
ALTER SEQUENCE "public"."t_google_attribute_value_iid_seq" OWNED BY "t_google_attribute_value"."iid";
ALTER SEQUENCE "public"."t_google_category_base_iid_seq" OWNED BY "t_google_category_base"."iid";
ALTER SEQUENCE "public"."t_google_category_relation_iid_seq" OWNED BY "t_google_category_relation"."iid";
ALTER SEQUENCE "public"."t_google_feeds_base_iid_seq" OWNED BY "t_google_feeds_base"."iid";
ALTER SEQUENCE "public"."t_google_filter_attribute_iid_seq" OWNED BY "t_google_filter_attribute"."iid";
ALTER SEQUENCE "public"."t_google_product_category_mapper_iid_seq" OWNED BY "t_google_product_category_mapper"."iid";
ALTER SEQUENCE "public"."t_google_product_detail_iid_seq" OWNED BY "t_google_product_detail"."iid";
ALTER SEQUENCE "public"."t_home_page_show_history_iid_seq" OWNED BY "t_home_page_show_history"."iid";
ALTER SEQUENCE "public"."t_inventory_history_iid_seq" OWNED BY "t_inventory_history"."iid";
ALTER SEQUENCE "public"."t_merchants_product_iid_seq" OWNED BY "t_merchants_product"."iid";
ALTER SEQUENCE "public"."t_product_activity_relation_detail_iid_seq" OWNED BY "t_product_activity_relation_detail"."iid";
ALTER SEQUENCE "public"."t_product_activity_relation_iid_seq" OWNED BY "t_product_activity_relation"."iid";
ALTER SEQUENCE "public"."t_product_attachment_mapper_iid_seq" OWNED BY "t_product_attachment_mapper"."iid";
ALTER SEQUENCE "public"."t_product_base_iid_seq" OWNED BY "t_product_base"."iid";
ALTER SEQUENCE "public"."t_product_bundle_sale_iid_seq" OWNED BY "t_product_bundle_sale"."iid";
ALTER SEQUENCE "public"."t_product_category_mapper_iid_seq" OWNED BY "t_product_category_mapper"."iid";
ALTER SEQUENCE "public"."t_product_category_rank_iid_seq" OWNED BY "t_product_category_rank"."iid";
ALTER SEQUENCE "public"."t_product_entity_map_iid_seq" OWNED BY "t_product_entity_map"."iid";
ALTER SEQUENCE "public"."t_product_group_price_iid_seq" OWNED BY "t_product_group_price"."iid";
ALTER SEQUENCE "public"."t_product_image_iid_seq" OWNED BY "t_product_image"."iid";
ALTER SEQUENCE "public"."t_product_intercept_url_iid_seq" OWNED BY "t_product_intercept_url"."iid";
ALTER SEQUENCE "public"."t_product_label_iid_seq" OWNED BY "t_product_label"."iid";
ALTER SEQUENCE "public"."t_product_label_type_iid_seq" OWNED BY "t_product_label_type"."iid";
ALTER SEQUENCE "public"."t_product_multiattribute_attribute_iid_seq" OWNED BY "t_product_multiattribute_attribute"."iid";
ALTER SEQUENCE "public"."t_product_multiattribute_base_iid_seq" OWNED BY "t_product_multiattribute_base"."iid";
ALTER SEQUENCE "public"."t_product_multiattribute_sku_iid_seq" OWNED BY "t_product_multiattribute_sku"."iid";
ALTER SEQUENCE "public"."t_product_parent_url_iid_seq" OWNED BY "t_product_parent_url"."iid";
ALTER SEQUENCE "public"."t_product_recommend_iid_seq" OWNED BY "t_product_recommend"."iid";
ALTER SEQUENCE "public"."t_product_saleprice_iid_seq" OWNED BY "t_product_saleprice"."iid";
ALTER SEQUENCE "public"."t_product_selling_points_iid_seq" OWNED BY "t_product_selling_points"."iid";
ALTER SEQUENCE "public"."t_product_storage_map_iid_seq" OWNED BY "t_product_storage_map"."iid";
ALTER SEQUENCE "public"."t_product_topic_page_iid_seq" OWNED BY "t_product_topic_page"."iid";
ALTER SEQUENCE "public"."t_product_translate_iid_seq" OWNED BY "t_product_translate"."iid";
ALTER SEQUENCE "public"."t_product_url_iid_seq" OWNED BY "t_product_url"."iid";
ALTER SEQUENCE "public"."t_product_video_iid_seq" OWNED BY "t_product_video"."iid";
ALTER SEQUENCE "public"."t_third_platform_data_iid_seq" OWNED BY "t_third_platform_data"."iid";
ALTER SEQUENCE "public"."tmp_sas_product_id_seq" OWNED BY "tmp_sas_product"."id";

-- ----------------------------
-- Primary Key structure for table databasechangeloglock
-- ----------------------------
ALTER TABLE "public"."databasechangeloglock" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_all_product_explain
-- ----------------------------
ALTER TABLE "public"."t_all_product_explain" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_all_product_explain_type
-- ----------------------------
ALTER TABLE "public"."t_all_product_explain_type" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_attachment
-- ----------------------------
ALTER TABLE "public"."t_attachment" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_attachment_desc
-- ----------------------------
ALTER TABLE "public"."t_attachment_desc" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_attribute_key
-- ----------------------------
ALTER TABLE "public"."t_attribute_key" ADD PRIMARY KEY ("ikeyid");

-- ----------------------------
-- Primary Key structure for table t_attribute_key_name
-- ----------------------------
ALTER TABLE "public"."t_attribute_key_name" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_attribute_value
-- ----------------------------
ALTER TABLE "public"."t_attribute_value" ADD PRIMARY KEY ("ivalueid");

-- ----------------------------
-- Primary Key structure for table t_attribute_value_name
-- ----------------------------
ALTER TABLE "public"."t_attribute_value_name" ADD PRIMARY KEY ("ikeyid");

-- ----------------------------
-- Primary Key structure for table t_category_backgroundimages
-- ----------------------------
ALTER TABLE "public"."t_category_backgroundimages" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Uniques structure for table t_category_base
-- ----------------------------
ALTER TABLE "public"."t_category_base" ADD UNIQUE ("cpath");

-- ----------------------------
-- Primary Key structure for table t_category_base
-- ----------------------------
ALTER TABLE "public"."t_category_base" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_category_label
-- ----------------------------
ALTER TABLE "public"."t_category_label" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_category_label_name
-- ----------------------------
ALTER TABLE "public"."t_category_label_name" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_category_label_type
-- ----------------------------
ALTER TABLE "public"."t_category_label_type" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_category_name
-- ----------------------------
ALTER TABLE "public"."t_category_name" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_category_product_recommend
-- ----------------------------
ALTER TABLE "public"."t_category_product_recommend" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_category_website
-- ----------------------------
ALTER TABLE "public"."t_category_website" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_daily_deals
-- ----------------------------
ALTER TABLE "public"."t_daily_deals" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_google_attribute_key
-- ----------------------------
ALTER TABLE "public"."t_google_attribute_key" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_google_attribute_value
-- ----------------------------
ALTER TABLE "public"."t_google_attribute_value" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_google_category_base
-- ----------------------------
ALTER TABLE "public"."t_google_category_base" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_google_category_relation
-- ----------------------------
ALTER TABLE "public"."t_google_category_relation" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_google_feeds_base
-- ----------------------------
ALTER TABLE "public"."t_google_feeds_base" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_google_filter_attribute
-- ----------------------------
ALTER TABLE "public"."t_google_filter_attribute" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_google_product_category_mapper
-- ----------------------------
ALTER TABLE "public"."t_google_product_category_mapper" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_google_product_detail
-- ----------------------------
ALTER TABLE "public"."t_google_product_detail" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Uniques structure for table t_home_page_show_history
-- ----------------------------
ALTER TABLE "public"."t_home_page_show_history" ADD UNIQUE ("iwebsiteid", "ctype", "clistingid");

-- ----------------------------
-- Primary Key structure for table t_home_page_show_history
-- ----------------------------
ALTER TABLE "public"."t_home_page_show_history" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_inventory_history
-- ----------------------------
ALTER TABLE "public"."t_inventory_history" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Indexes structure for table t_merchants_product
-- ----------------------------
CREATE INDEX "idx_merchants_product" ON "public"."t_merchants_product" USING btree (cnodeid);
CREATE INDEX "idx_sku_merchants_product" ON "public"."t_merchants_product" USING btree (csku);

-- ----------------------------
-- Primary Key structure for table t_merchants_product
-- ----------------------------
ALTER TABLE "public"."t_merchants_product" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_product_activity_relation
-- ----------------------------
ALTER TABLE "public"."t_product_activity_relation" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_product_activity_relation_detail
-- ----------------------------
ALTER TABLE "public"."t_product_activity_relation_detail" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_product_attachment_mapper
-- ----------------------------
ALTER TABLE "public"."t_product_attachment_mapper" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Indexes structure for table t_product_base
-- ----------------------------
CREATE UNIQUE INDEX "idx_productbase_listing" ON "public"."t_product_base" USING btree (clistingid);

-- ----------------------------
-- Primary Key structure for table t_product_base
-- ----------------------------
ALTER TABLE "public"."t_product_base" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Indexes structure for table t_product_bundle_sale
-- ----------------------------
CREATE INDEX "idx_productbundlesale_listing" ON "public"."t_product_bundle_sale" USING btree (clistingid);
CREATE UNIQUE INDEX "idx_t_product_bundle_sale" ON "public"."t_product_bundle_sale" USING btree (clistingid, cbundlelistingid);

-- ----------------------------
-- Primary Key structure for table t_product_bundle_sale
-- ----------------------------
ALTER TABLE "public"."t_product_bundle_sale" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_product_category_mapper
-- ----------------------------
ALTER TABLE "public"."t_product_category_mapper" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_product_category_rank
-- ----------------------------
ALTER TABLE "public"."t_product_category_rank" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_product_entity_map
-- ----------------------------
ALTER TABLE "public"."t_product_entity_map" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_product_group_price
-- ----------------------------
ALTER TABLE "public"."t_product_group_price" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Indexes structure for table t_product_image
-- ----------------------------
CREATE INDEX "idx_productimage_listing" ON "public"."t_product_image" USING btree (clistingid);

-- ----------------------------
-- Primary Key structure for table t_product_image
-- ----------------------------
ALTER TABLE "public"."t_product_image" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Indexes structure for table t_product_intercept_url
-- ----------------------------
CREATE INDEX "idx_t_product_intercept_url_curl" ON "public"."t_product_intercept_url" USING btree (iwebsiteid, curl, ilanguageid, bavailable);

-- ----------------------------
-- Primary Key structure for table t_product_intercept_url
-- ----------------------------
ALTER TABLE "public"."t_product_intercept_url" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Indexes structure for table t_product_label
-- ----------------------------
CREATE INDEX "idx_produclabel" ON "public"."t_product_label" USING btree (iwebsiteid, ctype);

-- ----------------------------
-- Uniques structure for table t_product_label
-- ----------------------------
ALTER TABLE "public"."t_product_label" ADD UNIQUE ("iwebsiteid", "ctype", "clistingid");

-- ----------------------------
-- Primary Key structure for table t_product_label
-- ----------------------------
ALTER TABLE "public"."t_product_label" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_product_label_type
-- ----------------------------
ALTER TABLE "public"."t_product_label_type" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_product_multiattribute_attribute
-- ----------------------------
ALTER TABLE "public"."t_product_multiattribute_attribute" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_product_multiattribute_base
-- ----------------------------
ALTER TABLE "public"."t_product_multiattribute_base" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_product_multiattribute_sku
-- ----------------------------
ALTER TABLE "public"."t_product_multiattribute_sku" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Indexes structure for table t_product_parent_url
-- ----------------------------
CREATE INDEX "idx_t_product_parent_url_curl" ON "public"."t_product_parent_url" USING btree (curl, ilanguageid);

-- ----------------------------
-- Uniques structure for table t_product_parent_url
-- ----------------------------
ALTER TABLE "public"."t_product_parent_url" ADD UNIQUE ("curl", "ilanguageid");

-- ----------------------------
-- Primary Key structure for table t_product_parent_url
-- ----------------------------
ALTER TABLE "public"."t_product_parent_url" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_product_recommend
-- ----------------------------
ALTER TABLE "public"."t_product_recommend" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_product_saleprice
-- ----------------------------
ALTER TABLE "public"."t_product_saleprice" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_product_selling_points
-- ----------------------------
ALTER TABLE "public"."t_product_selling_points" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_product_storage_map
-- ----------------------------
ALTER TABLE "public"."t_product_storage_map" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_product_topic_page
-- ----------------------------
ALTER TABLE "public"."t_product_topic_page" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Uniques structure for table t_product_translate
-- ----------------------------
ALTER TABLE "public"."t_product_translate" ADD UNIQUE ("clistingid", "ilanguageid");

-- ----------------------------
-- Primary Key structure for table t_product_translate
-- ----------------------------
ALTER TABLE "public"."t_product_translate" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Indexes structure for table t_product_url
-- ----------------------------
CREATE INDEX "idx_producturl_url" ON "public"."t_product_url" USING btree (curl);

-- ----------------------------
-- Uniques structure for table t_product_url
-- ----------------------------
ALTER TABLE "public"."t_product_url" ADD UNIQUE ("curl", "ilanguageid", "iwebsiteid");

-- ----------------------------
-- Primary Key structure for table t_product_url
-- ----------------------------
ALTER TABLE "public"."t_product_url" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_product_video
-- ----------------------------
ALTER TABLE "public"."t_product_video" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Indexes structure for table t_product_viewcount
-- ----------------------------
CREATE INDEX "idx_t_product_viewcount_iwebsiteid_clistingid" ON "public"."t_product_viewcount" USING btree (iwebsiteid, clistingid);

-- ----------------------------
-- Uniques structure for table t_product_viewcount
-- ----------------------------
ALTER TABLE "public"."t_product_viewcount" ADD UNIQUE ("iwebsiteid", "clistingid");

-- ----------------------------
-- Primary Key structure for table t_rabbit_monitor
-- ----------------------------
ALTER TABLE "public"."t_rabbit_monitor" ADD PRIMARY KEY ("moniter_id");

-- ----------------------------
-- Primary Key structure for table t_third_platform_data
-- ----------------------------
ALTER TABLE "public"."t_third_platform_data" ADD PRIMARY KEY ("iid");
