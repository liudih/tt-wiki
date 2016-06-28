/*
Navicat PGSQL Data Transfer

Source Server         : uat
Source Server Version : 90405
Source Host           : 192.168.220.52:5432
Source Database       : base
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 90405
File Encoding         : 65001

Date: 2016-06-28 18:12:25
*/


-- ----------------------------
-- Sequence structure for t_banner_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_banner_iid_seq";
CREATE SEQUENCE "public"."t_banner_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for t_cms_content_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_cms_content_iid_seq";
CREATE SEQUENCE "public"."t_cms_content_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 19
 CACHE 1;
SELECT setval('"public"."t_cms_content_iid_seq"', 19, true);

-- ----------------------------
-- Sequence structure for t_cms_content_language_map_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_cms_content_language_map_iid_seq";
CREATE SEQUENCE "public"."t_cms_content_language_map_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 12
 CACHE 1;
SELECT setval('"public"."t_cms_content_language_map_iid_seq"', 12, true);

-- ----------------------------
-- Sequence structure for t_cms_menu_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_cms_menu_iid_seq";
CREATE SEQUENCE "public"."t_cms_menu_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 87
 CACHE 1;
SELECT setval('"public"."t_cms_menu_iid_seq"', 87, true);

-- ----------------------------
-- Sequence structure for t_cms_menu_language_map_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_cms_menu_language_map_iid_seq";
CREATE SEQUENCE "public"."t_cms_menu_language_map_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 76
 CACHE 1;
SELECT setval('"public"."t_cms_menu_language_map_iid_seq"', 76, true);

-- ----------------------------
-- Sequence structure for t_cms_menu_wetsite_map_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_cms_menu_wetsite_map_iid_seq";
CREATE SEQUENCE "public"."t_cms_menu_wetsite_map_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 103
 CACHE 1;
SELECT setval('"public"."t_cms_menu_wetsite_map_iid_seq"', 103, true);

-- ----------------------------
-- Sequence structure for t_country_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_country_iid_seq";
CREATE SEQUENCE "public"."t_country_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 229
 CACHE 1;
SELECT setval('"public"."t_country_iid_seq"', 229, true);

-- ----------------------------
-- Sequence structure for t_country_website_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_country_website_iid_seq";
CREATE SEQUENCE "public"."t_country_website_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 2
 CACHE 1;
SELECT setval('"public"."t_country_website_iid_seq"', 2, true);

-- ----------------------------
-- Sequence structure for t_currency_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_currency_iid_seq";
CREATE SEQUENCE "public"."t_currency_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 24
 CACHE 1;
SELECT setval('"public"."t_currency_iid_seq"', 24, true);

-- ----------------------------
-- Sequence structure for t_currency_rate_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_currency_rate_iid_seq";
CREATE SEQUENCE "public"."t_currency_rate_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 209158
 CACHE 1;
SELECT setval('"public"."t_currency_rate_iid_seq"', 209158, true);

-- ----------------------------
-- Sequence structure for t_email_account_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_email_account_iid_seq";
CREATE SEQUENCE "public"."t_email_account_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for t_email_template_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_email_template_iid_seq";
CREATE SEQUENCE "public"."t_email_template_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 2
 CACHE 1;
SELECT setval('"public"."t_email_template_iid_seq"', 2, true);

-- ----------------------------
-- Sequence structure for t_email_type_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_email_type_iid_seq";
CREATE SEQUENCE "public"."t_email_type_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for t_email_variable_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_email_variable_iid_seq";
CREATE SEQUENCE "public"."t_email_variable_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 36
 CACHE 1;
SELECT setval('"public"."t_email_variable_iid_seq"', 36, true);

-- ----------------------------
-- Sequence structure for t_erp_sended_history_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_erp_sended_history_iid_seq";
CREATE SEQUENCE "public"."t_erp_sended_history_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for t_event_log_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_event_log_iid_seq";
CREATE SEQUENCE "public"."t_event_log_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 617
 CACHE 1;
SELECT setval('"public"."t_event_log_iid_seq"', 617, true);

-- ----------------------------
-- Sequence structure for t_job_log_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_job_log_iid_seq";
CREATE SEQUENCE "public"."t_job_log_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for t_language_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_language_iid_seq";
CREATE SEQUENCE "public"."t_language_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for t_login_terminal_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_login_terminal_iid_seq";
CREATE SEQUENCE "public"."t_login_terminal_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for t_platform_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_platform_iid_seq";
CREATE SEQUENCE "public"."t_platform_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;
SELECT setval('"public"."t_platform_iid_seq"', 1, true);

-- ----------------------------
-- Sequence structure for t_province_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_province_iid_seq";
CREATE SEQUENCE "public"."t_province_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 484
 CACHE 1;
SELECT setval('"public"."t_province_iid_seq"', 484, true);

-- ----------------------------
-- Sequence structure for t_received_data_history_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_received_data_history_iid_seq";
CREATE SEQUENCE "public"."t_received_data_history_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1689
 CACHE 1;
SELECT setval('"public"."t_received_data_history_iid_seq"', 1689, true);

-- ----------------------------
-- Sequence structure for t_seo_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_seo_iid_seq";
CREATE SEQUENCE "public"."t_seo_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;
SELECT setval('"public"."t_seo_iid_seq"', 1, true);

-- ----------------------------
-- Sequence structure for t_storage_arrival_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_storage_arrival_iid_seq";
CREATE SEQUENCE "public"."t_storage_arrival_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 4
 CACHE 1;
SELECT setval('"public"."t_storage_arrival_iid_seq"', 4, true);

-- ----------------------------
-- Sequence structure for t_storage_default_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_storage_default_iid_seq";
CREATE SEQUENCE "public"."t_storage_default_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 7
 CACHE 1;
SELECT setval('"public"."t_storage_default_iid_seq"', 7, true);

-- ----------------------------
-- Sequence structure for t_storage_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_storage_iid_seq";
CREATE SEQUENCE "public"."t_storage_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 14
 CACHE 1;
SELECT setval('"public"."t_storage_iid_seq"', 14, true);

-- ----------------------------
-- Sequence structure for t_storage_name_mapping_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_storage_name_mapping_iid_seq";
CREATE SEQUENCE "public"."t_storage_name_mapping_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 19
 CACHE 1;
SELECT setval('"public"."t_storage_name_mapping_iid_seq"', 19, true);

-- ----------------------------
-- Sequence structure for t_storage_parent_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_storage_parent_iid_seq";
CREATE SEQUENCE "public"."t_storage_parent_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 7
 CACHE 1;
SELECT setval('"public"."t_storage_parent_iid_seq"', 7, true);

-- ----------------------------
-- Sequence structure for t_system_parameter_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_system_parameter_iid_seq";
CREATE SEQUENCE "public"."t_system_parameter_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 86
 CACHE 1;
SELECT setval('"public"."t_system_parameter_iid_seq"', 86, true);

-- ----------------------------
-- Sequence structure for t_website_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_website_iid_seq";
CREATE SEQUENCE "public"."t_website_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 7
 CACHE 1;
SELECT setval('"public"."t_website_iid_seq"', 7, true);

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
-- Table structure for t_banner
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_banner";
CREATE TABLE "public"."t_banner" (
"iid" int4 DEFAULT nextval('t_banner_iid_seq'::regclass) NOT NULL,
"iwebsiteid" int4,
"ilanguageid" int4,
"ctitle" varchar(200) COLLATE "default",
"bstatus" bool,
"bfile" bytea,
"curl" varchar(500) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now(),
"bbgimgtile" bool DEFAULT false,
"iindex" int4,
"bbgimagefile" bytea,
"cbgcolor" varchar(7) COLLATE "default",
"bhasbgimage" bool DEFAULT false
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_banner" IS '站点banner表';
COMMENT ON COLUMN "public"."t_banner"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_banner"."iwebsiteid" IS '站点编号';
COMMENT ON COLUMN "public"."t_banner"."ilanguageid" IS '语言编号';
COMMENT ON COLUMN "public"."t_banner"."ctitle" IS '标题';
COMMENT ON COLUMN "public"."t_banner"."bstatus" IS '是否有效';
COMMENT ON COLUMN "public"."t_banner"."bfile" IS '文件数据';
COMMENT ON COLUMN "public"."t_banner"."curl" IS '链接';
COMMENT ON COLUMN "public"."t_banner"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_banner"."bbgimgtile" IS '背景图片是否x轴平铺';
COMMENT ON COLUMN "public"."t_banner"."iindex" IS '排序编号';
COMMENT ON COLUMN "public"."t_banner"."bbgimagefile" IS '背景图片';
COMMENT ON COLUMN "public"."t_banner"."cbgcolor" IS '背景颜色';
COMMENT ON COLUMN "public"."t_banner"."bhasbgimage" IS '是否有背景图片(默认false)';

-- ----------------------------
-- Table structure for t_cms_content
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_cms_content";
CREATE TABLE "public"."t_cms_content" (
"iid" int4 DEFAULT nextval('t_cms_content_iid_seq'::regclass) NOT NULL,
"imenuid" int4,
"ckey" varchar(200) COLLATE "default",
"ctitle" varchar(200) COLLATE "default",
"ccontent" text COLLATE "default",
"iisnominate" int4,
"ccreateuser" varchar(20) COLLATE "default" DEFAULT '0'::character varying,
"dcreatedate" timestamp(6) DEFAULT now(),
"clastupdateduser" varchar(20) COLLATE "default",
"dlastupdateddate" timestamp(6)
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_cms_content" IS '文章目录表';
COMMENT ON COLUMN "public"."t_cms_content"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_cms_content"."imenuid" IS '目录Id';
COMMENT ON COLUMN "public"."t_cms_content"."ckey" IS '文章关键字';
COMMENT ON COLUMN "public"."t_cms_content"."ctitle" IS '文章标题';
COMMENT ON COLUMN "public"."t_cms_content"."ccontent" IS '文章内容';
COMMENT ON COLUMN "public"."t_cms_content"."iisnominate" IS '是否推荐';
COMMENT ON COLUMN "public"."t_cms_content"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_cms_content"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_cms_content"."clastupdateduser" IS '修改人';
COMMENT ON COLUMN "public"."t_cms_content"."dlastupdateddate" IS '修改时间';

-- ----------------------------
-- Table structure for t_cms_content_language_map
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_cms_content_language_map";
CREATE TABLE "public"."t_cms_content_language_map" (
"iid" int4 DEFAULT nextval('t_cms_content_language_map_iid_seq'::regclass) NOT NULL,
"icmscontentid" int4,
"ilanguageid" int4,
"ckey" varchar(200) COLLATE "default",
"ctitle" varchar(200) COLLATE "default",
"ccontent" text COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_cms_content_language_map" IS '文章内容多语言表';
COMMENT ON COLUMN "public"."t_cms_content_language_map"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_cms_content_language_map"."icmscontentid" IS '目录Id';
COMMENT ON COLUMN "public"."t_cms_content_language_map"."ilanguageid" IS '语言ID';
COMMENT ON COLUMN "public"."t_cms_content_language_map"."ckey" IS '文章关键字';
COMMENT ON COLUMN "public"."t_cms_content_language_map"."ctitle" IS '文章标题';
COMMENT ON COLUMN "public"."t_cms_content_language_map"."ccontent" IS '文章内容';

-- ----------------------------
-- Table structure for t_cms_menu
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_cms_menu";
CREATE TABLE "public"."t_cms_menu" (
"iid" int4 DEFAULT nextval('t_cms_menu_iid_seq'::regclass) NOT NULL,
"cname" varchar(200) COLLATE "default",
"iparentid" int4,
"ilevel" int4,
"ciconurl" varchar(200) COLLATE "default",
"curl" varchar(200) COLLATE "default",
"cclass" varchar(100) COLLATE "default",
"iisnominate" int4 DEFAULT 0,
"ccreateuser" varchar(20) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now(),
"clastupdateduser" varchar(20) COLLATE "default",
"dlastupdateddate" timestamp(6),
"ctype" varchar(40) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_cms_menu" IS '文章目录表';
COMMENT ON COLUMN "public"."t_cms_menu"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_cms_menu"."cname" IS '目录名称';
COMMENT ON COLUMN "public"."t_cms_menu"."iparentid" IS '父级菜单编号';
COMMENT ON COLUMN "public"."t_cms_menu"."ilevel" IS '级别';
COMMENT ON COLUMN "public"."t_cms_menu"."ciconurl" IS '目录图标路径';
COMMENT ON COLUMN "public"."t_cms_menu"."curl" IS '访问路径';
COMMENT ON COLUMN "public"."t_cms_menu"."cclass" IS '目录样式名称';
COMMENT ON COLUMN "public"."t_cms_menu"."iisnominate" IS '是否推荐';
COMMENT ON COLUMN "public"."t_cms_menu"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_cms_menu"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_cms_menu"."clastupdateduser" IS '修改人';
COMMENT ON COLUMN "public"."t_cms_menu"."dlastupdateddate" IS '修改时间';
COMMENT ON COLUMN "public"."t_cms_menu"."ctype" IS '目录类型';

-- ----------------------------
-- Table structure for t_cms_menu_language_map
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_cms_menu_language_map";
CREATE TABLE "public"."t_cms_menu_language_map" (
"iid" int4 DEFAULT nextval('t_cms_menu_language_map_iid_seq'::regclass) NOT NULL,
"imenuid" int4,
"ilanguageid" int4,
"cmenuname" varchar(200) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_cms_menu_language_map" IS '文章目录多语言表';
COMMENT ON COLUMN "public"."t_cms_menu_language_map"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_cms_menu_language_map"."imenuid" IS '目录ID';
COMMENT ON COLUMN "public"."t_cms_menu_language_map"."ilanguageid" IS '语言ID';
COMMENT ON COLUMN "public"."t_cms_menu_language_map"."cmenuname" IS '目录名称';

-- ----------------------------
-- Table structure for t_cms_menu_wetsite_map
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_cms_menu_wetsite_map";
CREATE TABLE "public"."t_cms_menu_wetsite_map" (
"iid" int4 DEFAULT nextval('t_cms_menu_wetsite_map_iid_seq'::regclass) NOT NULL,
"imenuid" int4,
"iwebsiteid" int4,
"cdevice" varchar(50) COLLATE "default" DEFAULT 'web'::character varying
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_cms_menu_wetsite_map" IS '文章目录多站点表';
COMMENT ON COLUMN "public"."t_cms_menu_wetsite_map"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_cms_menu_wetsite_map"."imenuid" IS '目录ID';
COMMENT ON COLUMN "public"."t_cms_menu_wetsite_map"."iwebsiteid" IS '站点ID';
COMMENT ON COLUMN "public"."t_cms_menu_wetsite_map"."cdevice" IS '设备：如web/mobile/app';

-- ----------------------------
-- Table structure for t_country
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_country";
CREATE TABLE "public"."t_country" (
"iid" int4 DEFAULT nextval('t_country_iid_seq'::regclass) NOT NULL,
"cname" varchar(100) COLLATE "default",
"cshortname" varchar(60) COLLATE "default",
"ilanguageid" int4,
"idefaultstorage" int4,
"ccurrency" varchar(60) COLLATE "default",
"cweightunit" varchar(60) COLLATE "default",
"cmeasureunit" varchar(60) COLLATE "default",
"ccreateuser" varchar(20) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now(),
"bshow" bool DEFAULT true,
"ishowindex" int4 DEFAULT 9999
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_country" IS '国家表';
COMMENT ON COLUMN "public"."t_country"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_country"."cname" IS '国家名称';
COMMENT ON COLUMN "public"."t_country"."cshortname" IS '2位ISO国家代号';
COMMENT ON COLUMN "public"."t_country"."ilanguageid" IS '语言编号';
COMMENT ON COLUMN "public"."t_country"."idefaultstorage" IS '默认发货仓库';
COMMENT ON COLUMN "public"."t_country"."ccurrency" IS '默认货币';
COMMENT ON COLUMN "public"."t_country"."cweightunit" IS '重量单位';
COMMENT ON COLUMN "public"."t_country"."cmeasureunit" IS '尺寸单位';
COMMENT ON COLUMN "public"."t_country"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_country"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_country"."bshow" IS '是否显示';
COMMENT ON COLUMN "public"."t_country"."ishowindex" IS '显示顺序';

-- ----------------------------
-- Table structure for t_country_website
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_country_website";
CREATE TABLE "public"."t_country_website" (
"iid" int4 DEFAULT nextval('t_country_website_iid_seq'::regclass) NOT NULL,
"icountryid" int4,
"iplatformid" int4,
"iwebsiteid" int4,
"ccreateuser" varchar(20) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_country_website" IS '国家站点关系表';
COMMENT ON COLUMN "public"."t_country_website"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_country_website"."icountryid" IS '国家编号';
COMMENT ON COLUMN "public"."t_country_website"."iplatformid" IS '平台编号';
COMMENT ON COLUMN "public"."t_country_website"."iwebsiteid" IS '默认跳转的站点编号';
COMMENT ON COLUMN "public"."t_country_website"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_country_website"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_currency
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_currency";
CREATE TABLE "public"."t_currency" (
"iid" int4 DEFAULT nextval('t_currency_iid_seq'::regclass) NOT NULL,
"ccode" varchar(100) COLLATE "default",
"csymbol" varchar(50) COLLATE "default",
"fexchangerate" float8,
"ccreateuser" varchar(20) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now(),
"cversionsid" varchar(90) COLLATE "default",
"bshow" bool DEFAULT true
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_currency" IS '货币表';
COMMENT ON COLUMN "public"."t_currency"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_currency"."ccode" IS '货币名称: e.g. EUR';
COMMENT ON COLUMN "public"."t_currency"."csymbol" IS 'Symbol: e.g. $';
COMMENT ON COLUMN "public"."t_currency"."fexchangerate" IS '默认汇率（在汇率表数据缺省的时候的后备数据）';
COMMENT ON COLUMN "public"."t_currency"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_currency"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_currency"."cversionsid" IS '汇率版本';
COMMENT ON COLUMN "public"."t_currency"."bshow" IS '是否显示';

-- ----------------------------
-- Table structure for t_currency_rate
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_currency_rate";
CREATE TABLE "public"."t_currency_rate" (
"iid" int4 DEFAULT nextval('t_currency_rate_iid_seq'::regclass) NOT NULL,
"ccode" varchar(100) COLLATE "default",
"fexchangerate" float8,
"ccreateuser" varchar(20) COLLATE "default",
"buse" bool DEFAULT false,
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_currency_rate" IS '汇率表';
COMMENT ON COLUMN "public"."t_currency_rate"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_currency_rate"."ccode" IS '货币名称: e.g. EUR';
COMMENT ON COLUMN "public"."t_currency_rate"."fexchangerate" IS '相对USD的汇率（即1美元等于多少该货币）';
COMMENT ON COLUMN "public"."t_currency_rate"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_currency_rate"."buse" IS '是否启用';
COMMENT ON COLUMN "public"."t_currency_rate"."dcreatedate" IS '创建时间＝汇率更新日期';

-- ----------------------------
-- Table structure for t_email_account
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_email_account";
CREATE TABLE "public"."t_email_account" (
"iid" int4 DEFAULT nextval('t_email_account_iid_seq'::regclass) NOT NULL,
"iwebsiteid" int4,
"ctype" varchar(100) COLLATE "default",
"csmtphostName" varchar(150) COLLATE "default",
"iserverport" int4,
"cusername" varchar(50) COLLATE "default",
"cemail" varchar(100) COLLATE "default",
"cpassword" varchar(100) COLLATE "default",
"ccreateuser" varchar(20) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_email_account" IS '邮件账号表';
COMMENT ON COLUMN "public"."t_email_account"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_email_account"."iwebsiteid" IS '站点编号';
COMMENT ON COLUMN "public"."t_email_account"."ctype" IS '邮件类型名称';
COMMENT ON COLUMN "public"."t_email_account"."csmtphostName" IS '邮件服务器地址';
COMMENT ON COLUMN "public"."t_email_account"."iserverport" IS '邮件服务器端口';
COMMENT ON COLUMN "public"."t_email_account"."cusername" IS '帐号名称';
COMMENT ON COLUMN "public"."t_email_account"."cemail" IS '邮箱帐号';
COMMENT ON COLUMN "public"."t_email_account"."cpassword" IS '发送邮箱密码';
COMMENT ON COLUMN "public"."t_email_account"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_email_account"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_email_template
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_email_template";
CREATE TABLE "public"."t_email_template" (
"iid" int4 DEFAULT nextval('t_email_template_iid_seq'::regclass) NOT NULL,
"iwebsiteid" int4,
"ctype" varchar(100) COLLATE "default",
"crefurl" varchar(500) COLLATE "default",
"ctpltype" varchar(30) COLLATE "default",
"ctitle" varchar(500) COLLATE "default",
"ccontent" text COLLATE "default",
"ccreateuser" varchar(20) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now(),
"ilanguage" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_email_template" IS '邮件模版表';
COMMENT ON COLUMN "public"."t_email_template"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_email_template"."iwebsiteid" IS '站点编号';
COMMENT ON COLUMN "public"."t_email_template"."ctype" IS '邮件类型';
COMMENT ON COLUMN "public"."t_email_template"."crefurl" IS '邮件连接地址';
COMMENT ON COLUMN "public"."t_email_template"."ctpltype" IS '邮件模版类型';
COMMENT ON COLUMN "public"."t_email_template"."ctitle" IS '邮件title';
COMMENT ON COLUMN "public"."t_email_template"."ccontent" IS '邮件content';
COMMENT ON COLUMN "public"."t_email_template"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_email_template"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_email_type
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_email_type";
CREATE TABLE "public"."t_email_type" (
"iid" int4 DEFAULT nextval('t_email_type_iid_seq'::regclass) NOT NULL,
"cname" varchar(200) COLLATE "default",
"ccreateuser" varchar(20) COLLATE "default" DEFAULT '0'::character varying,
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_email_type" IS '邮件类型表';
COMMENT ON COLUMN "public"."t_email_type"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_email_type"."cname" IS '类型名称';
COMMENT ON COLUMN "public"."t_email_type"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_email_type"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_email_variable
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_email_variable";
CREATE TABLE "public"."t_email_variable" (
"iid" int4 DEFAULT nextval('t_email_variable_iid_seq'::regclass) NOT NULL,
"ctype" varchar(200) COLLATE "default",
"cname" varchar(50) COLLATE "default",
"cremark" varchar(200) COLLATE "default",
"ccreateuser" varchar(20) COLLATE "default" DEFAULT '0'::character varying,
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_email_variable" IS '邮件变量表';
COMMENT ON COLUMN "public"."t_email_variable"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_email_variable"."ctype" IS '类型';
COMMENT ON COLUMN "public"."t_email_variable"."cname" IS '可替换变量';
COMMENT ON COLUMN "public"."t_email_variable"."cremark" IS '变量备注';
COMMENT ON COLUMN "public"."t_email_variable"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_email_variable"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_erp_sended_history
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_erp_sended_history";
CREATE TABLE "public"."t_erp_sended_history" (
"iid" int4 DEFAULT nextval('t_erp_sended_history_iid_seq'::regclass) NOT NULL,
"ctype" varchar(100) COLLATE "default",
"ccontent" text COLLATE "default",
"ccreateuser" varchar(100) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_erp_sended_history" IS 'ERP推送数据记录表';
COMMENT ON COLUMN "public"."t_erp_sended_history"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_erp_sended_history"."ctype" IS '操作类型';
COMMENT ON COLUMN "public"."t_erp_sended_history"."ccontent" IS '推送数据内容';
COMMENT ON COLUMN "public"."t_erp_sended_history"."ccreateuser" IS '操作人';
COMMENT ON COLUMN "public"."t_erp_sended_history"."dcreatedate" IS '发送时间';

-- ----------------------------
-- Table structure for t_event_log
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_event_log";
CREATE TABLE "public"."t_event_log" (
"iid" int4 DEFAULT nextval('t_event_log_iid_seq'::regclass) NOT NULL,
"ccode" varchar(64) COLLATE "default",
"cevent_param" varchar(512) COLLATE "default",
"istatus" int4,
"cfail_reason" varchar(2000) COLLATE "default",
"created_on" varchar(50) COLLATE "default",
"created_by" date
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "public"."t_event_log"."iid" IS '主键-流水编号';
COMMENT ON COLUMN "public"."t_event_log"."ccode" IS '事件code码';
COMMENT ON COLUMN "public"."t_event_log"."cevent_param" IS '事件处理需要的json参数';
COMMENT ON COLUMN "public"."t_event_log"."istatus" IS '处理状态，成功 1，失败 0';
COMMENT ON COLUMN "public"."t_event_log"."cfail_reason" IS '失败原因';
COMMENT ON COLUMN "public"."t_event_log"."created_on" IS '创建者';
COMMENT ON COLUMN "public"."t_event_log"."created_by" IS '创建时间';

-- ----------------------------
-- Table structure for t_job_log
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_job_log";
CREATE TABLE "public"."t_job_log" (
"iid" int4 DEFAULT nextval('t_job_log_iid_seq'::regclass) NOT NULL,
"ctype" varchar(600) COLLATE "default",
"iresult" int4,
"cremaeks" varchar(500) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_job_log" IS 'job执行日志表';
COMMENT ON COLUMN "public"."t_job_log"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_job_log"."ctype" IS 'job类型';
COMMENT ON COLUMN "public"."t_job_log"."iresult" IS '结果(失败0、成功1)';
COMMENT ON COLUMN "public"."t_job_log"."cremaeks" IS '备注';
COMMENT ON COLUMN "public"."t_job_log"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_language
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_language";
CREATE TABLE "public"."t_language" (
"iid" int4 DEFAULT nextval('t_language_iid_seq'::regclass) NOT NULL,
"cname" varchar(30) COLLATE "default",
"bfallback" bool DEFAULT false,
"ccreateuser" varchar(20) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now(),
"cfullname" varchar(50) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_language" IS '语言表';
COMMENT ON COLUMN "public"."t_language"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_language"."cname" IS '语言名称';
COMMENT ON COLUMN "public"."t_language"."bfallback" IS '在特殊情况下的默认语言，如用IP地址到网站';
COMMENT ON COLUMN "public"."t_language"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_language"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_language"."cfullname" IS '语言全称';

-- ----------------------------
-- Table structure for t_login_terminal
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_login_terminal";
CREATE TABLE "public"."t_login_terminal" (
"iid" int4 DEFAULT nextval('t_login_terminal_iid_seq'::regclass) NOT NULL,
"cterminaltype" varchar(20) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_login_terminal" IS '登陆终端类型';
COMMENT ON COLUMN "public"."t_login_terminal"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_login_terminal"."cterminaltype" IS '终端类型名称';

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
-- Table structure for t_platform
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_platform";
CREATE TABLE "public"."t_platform" (
"iid" int4 DEFAULT nextval('t_platform_iid_seq'::regclass) NOT NULL,
"ccode" varchar(100) COLLATE "default",
"cremarks" varchar(300) COLLATE "default",
"iparentid" int4,
"ilevel" int4,
"ichildrencount" int4,
"ccreateuser" varchar(20) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_platform" IS '平台表';
COMMENT ON COLUMN "public"."t_platform"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_platform"."ccode" IS '平台名称';
COMMENT ON COLUMN "public"."t_platform"."cremarks" IS '平台备注';
COMMENT ON COLUMN "public"."t_platform"."iparentid" IS '父类编号';
COMMENT ON COLUMN "public"."t_platform"."ilevel" IS '级别';
COMMENT ON COLUMN "public"."t_platform"."ichildrencount" IS '子类数量';
COMMENT ON COLUMN "public"."t_platform"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_platform"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_province
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_province";
CREATE TABLE "public"."t_province" (
"iid" int4 DEFAULT nextval('t_province_iid_seq'::regclass) NOT NULL,
"icountryid" int4,
"cname" varchar(100) COLLATE "default",
"cshortname" varchar(60) COLLATE "default",
"ccreateuser" varchar(20) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_province" IS '洲表';
COMMENT ON COLUMN "public"."t_province"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_province"."icountryid" IS '国家编号';
COMMENT ON COLUMN "public"."t_province"."cname" IS '洲名称';
COMMENT ON COLUMN "public"."t_province"."cshortname" IS '洲简称';
COMMENT ON COLUMN "public"."t_province"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_province"."dcreatedate" IS '创建时间';

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
-- Table structure for t_seo
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_seo";
CREATE TABLE "public"."t_seo" (
"iid" int4 DEFAULT nextval('t_seo_iid_seq'::regclass) NOT NULL,
"iwebsiteid" int4,
"ilanguageid" int4,
"ctitle" varchar(200) COLLATE "default",
"ckeywords" varchar(200) COLLATE "default",
"ctype" varchar(200) COLLATE "default",
"cdescription" varchar(200) COLLATE "default",
"dcreatedate" timestamp(6),
"ccreatename" varchar(200) COLLATE "default",
"dmodifieddate" timestamp(6),
"cmodifiedname" varchar(200) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_seo" IS '首页的基本信息';
COMMENT ON COLUMN "public"."t_seo"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_seo"."iwebsiteid" IS '站点Id';
COMMENT ON COLUMN "public"."t_seo"."ilanguageid" IS '语言Id';
COMMENT ON COLUMN "public"."t_seo"."ctitle" IS '首页标题';
COMMENT ON COLUMN "public"."t_seo"."ckeywords" IS '关键字';
COMMENT ON COLUMN "public"."t_seo"."ctype" IS '类型';
COMMENT ON COLUMN "public"."t_seo"."cdescription" IS '状态';
COMMENT ON COLUMN "public"."t_seo"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_seo"."ccreatename" IS '创惊人';
COMMENT ON COLUMN "public"."t_seo"."dmodifieddate" IS '修改时间';
COMMENT ON COLUMN "public"."t_seo"."cmodifiedname" IS '修改人';

-- ----------------------------
-- Table structure for t_storage
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_storage";
CREATE TABLE "public"."t_storage" (
"iid" int4 DEFAULT nextval('t_storage_iid_seq'::regclass) NOT NULL,
"ioverseas" int4,
"cstoragename" varchar(400) COLLATE "default",
"ccreateuser" varchar(20) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now(),
"iparentstorage" int4 DEFAULT 0
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_storage" IS '仓库表';
COMMENT ON COLUMN "public"."t_storage"."iid" IS '主键表';
COMMENT ON COLUMN "public"."t_storage"."ioverseas" IS '是否海外';
COMMENT ON COLUMN "public"."t_storage"."cstoragename" IS '仓库名';
COMMENT ON COLUMN "public"."t_storage"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_storage"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_storage"."iparentstorage" IS '父仓库ID';

-- ----------------------------
-- Table structure for t_storage_arrival
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_storage_arrival";
CREATE TABLE "public"."t_storage_arrival" (
"iid" int4 DEFAULT nextval('t_storage_arrival_iid_seq'::regclass) NOT NULL,
"istorageid" int4 DEFAULT 0,
"ccarrivalcountry" varchar(100) COLLATE "default" DEFAULT '--'::character varying,
"ccreateuser" varchar(20) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_storage_arrival" IS '仓库可送达国家地区';
COMMENT ON COLUMN "public"."t_storage_arrival"."iid" IS '主键表';
COMMENT ON COLUMN "public"."t_storage_arrival"."istorageid" IS '仓库ID';
COMMENT ON COLUMN "public"."t_storage_arrival"."ccarrivalcountry" IS '送达地区';
COMMENT ON COLUMN "public"."t_storage_arrival"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_storage_arrival"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_storage_default
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_storage_default";
CREATE TABLE "public"."t_storage_default" (
"iid" int4 DEFAULT nextval('t_storage_default_iid_seq'::regclass) NOT NULL,
"idefaultstorage" int4 DEFAULT 0,
"ccountryname" varchar(100) COLLATE "default" DEFAULT '--'::character varying,
"ccreateuser" varchar(20) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_storage_default" IS '默认仓库';
COMMENT ON COLUMN "public"."t_storage_default"."iid" IS '主键表';
COMMENT ON COLUMN "public"."t_storage_default"."idefaultstorage" IS '仓库ID';
COMMENT ON COLUMN "public"."t_storage_default"."ccountryname" IS '国家';
COMMENT ON COLUMN "public"."t_storage_default"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_storage_default"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_storage_name_mapping
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_storage_name_mapping";
CREATE TABLE "public"."t_storage_name_mapping" (
"iid" int4 DEFAULT nextval('t_storage_name_mapping_iid_seq'::regclass) NOT NULL,
"cstoragename" varchar(100) COLLATE "default",
"cerpstoragename" varchar(100) COLLATE "default",
"ccreateuser" varchar(30) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_storage_name_mapping" IS '仓库对应表';
COMMENT ON COLUMN "public"."t_storage_name_mapping"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_storage_name_mapping"."cstoragename" IS '网站仓库名称';
COMMENT ON COLUMN "public"."t_storage_name_mapping"."cerpstoragename" IS 'ERP仓库名称';
COMMENT ON COLUMN "public"."t_storage_name_mapping"."ccreateuser" IS '操作人';
COMMENT ON COLUMN "public"."t_storage_name_mapping"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_storage_parent
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_storage_parent";
CREATE TABLE "public"."t_storage_parent" (
"iid" int4 DEFAULT nextval('t_storage_parent_iid_seq'::regclass) NOT NULL,
"cstoragename" varchar(400) COLLATE "default",
"ccreateuser" varchar(20) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_storage_parent" IS '总仓库 ';
COMMENT ON COLUMN "public"."t_storage_parent"."iid" IS '主键表';
COMMENT ON COLUMN "public"."t_storage_parent"."cstoragename" IS '仓库名';
COMMENT ON COLUMN "public"."t_storage_parent"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_storage_parent"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_system_parameter
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_system_parameter";
CREATE TABLE "public"."t_system_parameter" (
"iid" int4 DEFAULT nextval('t_system_parameter_iid_seq'::regclass) NOT NULL,
"iwebsiteid" int4,
"ilanguageid" int4,
"cparameterkey" varchar(100) COLLATE "default",
"cparametervalue" varchar(100) COLLATE "default",
"bsystem" bool
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_system_parameter" IS '系统参数表';
COMMENT ON COLUMN "public"."t_system_parameter"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_system_parameter"."iwebsiteid" IS '站点编号';
COMMENT ON COLUMN "public"."t_system_parameter"."ilanguageid" IS '语言编号(0代表所有)';
COMMENT ON COLUMN "public"."t_system_parameter"."cparameterkey" IS '参数键';
COMMENT ON COLUMN "public"."t_system_parameter"."cparametervalue" IS '参数值';

-- ----------------------------
-- Table structure for t_vhost
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_vhost";
CREATE TABLE "public"."t_vhost" (
"cvhost" varchar(100) COLLATE "default",
"iwebsiteid" int4 NOT NULL,
"ilanguageid" int4,
"icurrencyid" int4,
"ccreateuser" varchar(100) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now(),
"cdevice" varchar(50) COLLATE "default" DEFAULT 'web'::character varying,
"corderplaceholder" varchar(10) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_vhost" IS '虚拟主机名字映射t_website关系';
COMMENT ON COLUMN "public"."t_vhost"."cvhost" IS '主键';
COMMENT ON COLUMN "public"."t_vhost"."iwebsiteid" IS 'Website ID';
COMMENT ON COLUMN "public"."t_vhost"."ilanguageid" IS 'Language ID, 如NULL则使用t_website的';
COMMENT ON COLUMN "public"."t_vhost"."icurrencyid" IS 'Currency ID, 如NULL则使用t_website的';
COMMENT ON COLUMN "public"."t_vhost"."ccreateuser" IS '操作人';
COMMENT ON COLUMN "public"."t_vhost"."dcreatedate" IS '发送时间';
COMMENT ON COLUMN "public"."t_vhost"."cdevice" IS '设备：如web/mobile/app';
COMMENT ON COLUMN "public"."t_vhost"."corderplaceholder" IS '订单号生成规则中的占位符';

-- ----------------------------
-- Table structure for t_website
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_website";
CREATE TABLE "public"."t_website" (
"iid" int4 DEFAULT nextval('t_website_iid_seq'::regclass) NOT NULL,
"iplatformid" int4,
"ccode" varchar(100) COLLATE "default",
"curl" varchar(80) COLLATE "default",
"cremarks" varchar(300) COLLATE "default",
"ilanguageid" int4,
"icurrencyid" int4,
"idefaultshippingcountry" int4,
"idefaultshippingstorage" int4,
"bfallback" bool DEFAULT false,
"ccreateuser" varchar(20) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_website" IS '站点表';
COMMENT ON COLUMN "public"."t_website"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_website"."iplatformid" IS '平台编号';
COMMENT ON COLUMN "public"."t_website"."ccode" IS '站点名称';
COMMENT ON COLUMN "public"."t_website"."curl" IS 'URL';
COMMENT ON COLUMN "public"."t_website"."cremarks" IS '站点备注';
COMMENT ON COLUMN "public"."t_website"."ilanguageid" IS '语言编号';
COMMENT ON COLUMN "public"."t_website"."icurrencyid" IS '货币编号';
COMMENT ON COLUMN "public"."t_website"."idefaultshippingcountry" IS '默认发货国家';
COMMENT ON COLUMN "public"."t_website"."idefaultshippingstorage" IS '默认发货仓库';
COMMENT ON COLUMN "public"."t_website"."bfallback" IS '在特殊情况下的默认站点，如用IP地址到网站';
COMMENT ON COLUMN "public"."t_website"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_website"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------
ALTER SEQUENCE "public"."t_banner_iid_seq" OWNED BY "t_banner"."iid";
ALTER SEQUENCE "public"."t_cms_content_iid_seq" OWNED BY "t_cms_content"."iid";
ALTER SEQUENCE "public"."t_cms_content_language_map_iid_seq" OWNED BY "t_cms_content_language_map"."iid";
ALTER SEQUENCE "public"."t_cms_menu_iid_seq" OWNED BY "t_cms_menu"."iid";
ALTER SEQUENCE "public"."t_cms_menu_language_map_iid_seq" OWNED BY "t_cms_menu_language_map"."iid";
ALTER SEQUENCE "public"."t_cms_menu_wetsite_map_iid_seq" OWNED BY "t_cms_menu_wetsite_map"."iid";
ALTER SEQUENCE "public"."t_country_iid_seq" OWNED BY "t_country"."iid";
ALTER SEQUENCE "public"."t_country_website_iid_seq" OWNED BY "t_country_website"."iid";
ALTER SEQUENCE "public"."t_currency_iid_seq" OWNED BY "t_currency"."iid";
ALTER SEQUENCE "public"."t_currency_rate_iid_seq" OWNED BY "t_currency_rate"."iid";
ALTER SEQUENCE "public"."t_email_account_iid_seq" OWNED BY "t_email_account"."iid";
ALTER SEQUENCE "public"."t_email_template_iid_seq" OWNED BY "t_email_template"."iid";
ALTER SEQUENCE "public"."t_email_type_iid_seq" OWNED BY "t_email_type"."iid";
ALTER SEQUENCE "public"."t_email_variable_iid_seq" OWNED BY "t_email_variable"."iid";
ALTER SEQUENCE "public"."t_erp_sended_history_iid_seq" OWNED BY "t_erp_sended_history"."iid";
ALTER SEQUENCE "public"."t_job_log_iid_seq" OWNED BY "t_job_log"."iid";
ALTER SEQUENCE "public"."t_language_iid_seq" OWNED BY "t_language"."iid";
ALTER SEQUENCE "public"."t_login_terminal_iid_seq" OWNED BY "t_login_terminal"."iid";
ALTER SEQUENCE "public"."t_platform_iid_seq" OWNED BY "t_platform"."iid";
ALTER SEQUENCE "public"."t_province_iid_seq" OWNED BY "t_province"."iid";
ALTER SEQUENCE "public"."t_received_data_history_iid_seq" OWNED BY "t_received_data_history"."iid";
ALTER SEQUENCE "public"."t_seo_iid_seq" OWNED BY "t_seo"."iid";
ALTER SEQUENCE "public"."t_storage_arrival_iid_seq" OWNED BY "t_storage_arrival"."iid";
ALTER SEQUENCE "public"."t_storage_default_iid_seq" OWNED BY "t_storage_default"."iid";
ALTER SEQUENCE "public"."t_storage_iid_seq" OWNED BY "t_storage"."iid";
ALTER SEQUENCE "public"."t_storage_name_mapping_iid_seq" OWNED BY "t_storage_name_mapping"."iid";
ALTER SEQUENCE "public"."t_storage_parent_iid_seq" OWNED BY "t_storage_parent"."iid";
ALTER SEQUENCE "public"."t_system_parameter_iid_seq" OWNED BY "t_system_parameter"."iid";
ALTER SEQUENCE "public"."t_website_iid_seq" OWNED BY "t_website"."iid";

-- ----------------------------
-- Primary Key structure for table databasechangeloglock
-- ----------------------------
ALTER TABLE "public"."databasechangeloglock" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_banner
-- ----------------------------
ALTER TABLE "public"."t_banner" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_cms_content
-- ----------------------------
ALTER TABLE "public"."t_cms_content" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_cms_content_language_map
-- ----------------------------
ALTER TABLE "public"."t_cms_content_language_map" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_cms_menu
-- ----------------------------
ALTER TABLE "public"."t_cms_menu" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_cms_menu_language_map
-- ----------------------------
ALTER TABLE "public"."t_cms_menu_language_map" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_cms_menu_wetsite_map
-- ----------------------------
ALTER TABLE "public"."t_cms_menu_wetsite_map" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Indexes structure for table t_country
-- ----------------------------
CREATE INDEX "idx_country_cname" ON "public"."t_country" USING btree (cname);

-- ----------------------------
-- Primary Key structure for table t_country
-- ----------------------------
ALTER TABLE "public"."t_country" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_country_website
-- ----------------------------
ALTER TABLE "public"."t_country_website" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_currency
-- ----------------------------
ALTER TABLE "public"."t_currency" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Indexes structure for table t_currency_rate
-- ----------------------------
CREATE INDEX "index_currency_rate_buse" ON "public"."t_currency_rate" USING btree (buse);
CREATE INDEX "index_currency_rate_ccode" ON "public"."t_currency_rate" USING btree (ccode);
CREATE INDEX "index_currency_rate_date" ON "public"."t_currency_rate" USING btree (dcreatedate);

-- ----------------------------
-- Primary Key structure for table t_currency_rate
-- ----------------------------
ALTER TABLE "public"."t_currency_rate" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_email_account
-- ----------------------------
ALTER TABLE "public"."t_email_account" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_email_template
-- ----------------------------
ALTER TABLE "public"."t_email_template" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_email_type
-- ----------------------------
ALTER TABLE "public"."t_email_type" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_email_variable
-- ----------------------------
ALTER TABLE "public"."t_email_variable" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_erp_sended_history
-- ----------------------------
ALTER TABLE "public"."t_erp_sended_history" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_event_log
-- ----------------------------
ALTER TABLE "public"."t_event_log" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_job_log
-- ----------------------------
ALTER TABLE "public"."t_job_log" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Indexes structure for table t_language
-- ----------------------------
CREATE INDEX "idx_language_cname" ON "public"."t_language" USING btree (cname);

-- ----------------------------
-- Primary Key structure for table t_language
-- ----------------------------
ALTER TABLE "public"."t_language" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_login_terminal
-- ----------------------------
ALTER TABLE "public"."t_login_terminal" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_platform
-- ----------------------------
ALTER TABLE "public"."t_platform" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Indexes structure for table t_province
-- ----------------------------
CREATE INDEX "idx_t_province_icountryid_cname" ON "public"."t_province" USING btree (icountryid, cname);

-- ----------------------------
-- Uniques structure for table t_province
-- ----------------------------
ALTER TABLE "public"."t_province" ADD UNIQUE ("icountryid", "cname");

-- ----------------------------
-- Primary Key structure for table t_province
-- ----------------------------
ALTER TABLE "public"."t_province" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_received_data_history
-- ----------------------------
ALTER TABLE "public"."t_received_data_history" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_seo
-- ----------------------------
ALTER TABLE "public"."t_seo" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_storage
-- ----------------------------
ALTER TABLE "public"."t_storage" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_storage_arrival
-- ----------------------------
ALTER TABLE "public"."t_storage_arrival" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_storage_default
-- ----------------------------
ALTER TABLE "public"."t_storage_default" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_storage_name_mapping
-- ----------------------------
ALTER TABLE "public"."t_storage_name_mapping" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_storage_parent
-- ----------------------------
ALTER TABLE "public"."t_storage_parent" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Indexes structure for table t_system_parameter
-- ----------------------------
CREATE INDEX "idx_parameter_iwebsiteid" ON "public"."t_system_parameter" USING btree (iwebsiteid, ilanguageid, cparameterkey);

-- ----------------------------
-- Uniques structure for table t_system_parameter
-- ----------------------------
ALTER TABLE "public"."t_system_parameter" ADD UNIQUE ("cparameterkey", "iwebsiteid");

-- ----------------------------
-- Primary Key structure for table t_system_parameter
-- ----------------------------
ALTER TABLE "public"."t_system_parameter" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Indexes structure for table t_vhost
-- ----------------------------
CREATE INDEX "idx_vhost_cvhost" ON "public"."t_vhost" USING btree (cvhost);
CREATE INDEX "idx_vhost_iwebsite" ON "public"."t_vhost" USING btree (iwebsiteid);

-- ----------------------------
-- Indexes structure for table t_website
-- ----------------------------
CREATE INDEX "idx_website_icurrencyid" ON "public"."t_website" USING btree (icurrencyid);
CREATE INDEX "idx_website_iplatformid" ON "public"."t_website" USING btree (iplatformid);

-- ----------------------------
-- Primary Key structure for table t_website
-- ----------------------------
ALTER TABLE "public"."t_website" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Foreign Key structure for table "public"."t_vhost"
-- ----------------------------
ALTER TABLE "public"."t_vhost" ADD FOREIGN KEY ("ilanguageid") REFERENCES "public"."t_language" ("iid") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."t_vhost" ADD FOREIGN KEY ("iwebsiteid") REFERENCES "public"."t_website" ("iid") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."t_vhost" ADD FOREIGN KEY ("icurrencyid") REFERENCES "public"."t_currency" ("iid") ON DELETE NO ACTION ON UPDATE NO ACTION;
