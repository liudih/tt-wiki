/*
Navicat PGSQL Data Transfer

Source Server         : uat
Source Server Version : 90405
Source Host           : 192.168.220.52:5432
Source Database       : member
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 90405
File Encoding         : 65001

Date: 2016-06-28 18:14:00
*/


-- ----------------------------
-- Sequence structure for t_blacklist_user_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_blacklist_user_iid_seq";
CREATE SEQUENCE "public"."t_blacklist_user_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 5
 CACHE 1;
SELECT setval('"public"."t_blacklist_user_iid_seq"', 5, true);

-- ----------------------------
-- Sequence structure for t_dropship_base_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_dropship_base_iid_seq";
CREATE SEQUENCE "public"."t_dropship_base_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 25
 CACHE 1;
SELECT setval('"public"."t_dropship_base_iid_seq"', 25, true);

-- ----------------------------
-- Sequence structure for t_dropship_level_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_dropship_level_iid_seq";
CREATE SEQUENCE "public"."t_dropship_level_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for t_email_suffix_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_email_suffix_iid_seq";
CREATE SEQUENCE "public"."t_email_suffix_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 11
 CACHE 1;
SELECT setval('"public"."t_email_suffix_iid_seq"', 11, true);

-- ----------------------------
-- Sequence structure for t_layout_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_layout_iid_seq";
CREATE SEQUENCE "public"."t_layout_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for t_layoutmodule_content_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_layoutmodule_content_iid_seq";
CREATE SEQUENCE "public"."t_layoutmodule_content_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for t_layoutmodule_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_layoutmodule_iid_seq";
CREATE SEQUENCE "public"."t_layoutmodule_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for t_member_address_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_member_address_iid_seq";
CREATE SEQUENCE "public"."t_member_address_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1655
 CACHE 1;
SELECT setval('"public"."t_member_address_iid_seq"', 1655, true);

-- ----------------------------
-- Sequence structure for t_member_base_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_member_base_iid_seq";
CREATE SEQUENCE "public"."t_member_base_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1817
 CACHE 1;
SELECT setval('"public"."t_member_base_iid_seq"', 1817, true);

-- ----------------------------
-- Sequence structure for t_member_buy_statistics_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_member_buy_statistics_iid_seq";
CREATE SEQUENCE "public"."t_member_buy_statistics_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 73
 CACHE 1;
SELECT setval('"public"."t_member_buy_statistics_iid_seq"', 73, true);

-- ----------------------------
-- Sequence structure for t_member_email_verify_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_member_email_verify_iid_seq";
CREATE SEQUENCE "public"."t_member_email_verify_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 787
 CACHE 1;
SELECT setval('"public"."t_member_email_verify_iid_seq"', 787, true);

-- ----------------------------
-- Sequence structure for t_member_favorite_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_member_favorite_iid_seq";
CREATE SEQUENCE "public"."t_member_favorite_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for t_member_Group_change_history_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_member_Group_change_history_iid_seq";
CREATE SEQUENCE "public"."t_member_Group_change_history_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for t_member_group_criterion_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_member_group_criterion_iid_seq";
CREATE SEQUENCE "public"."t_member_group_criterion_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 6
 CACHE 1;
SELECT setval('"public"."t_member_group_criterion_iid_seq"', 6, true);

-- ----------------------------
-- Sequence structure for t_member_group_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_member_group_iid_seq";
CREATE SEQUENCE "public"."t_member_group_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for t_member_map_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_member_map_iid_seq";
CREATE SEQUENCE "public"."t_member_map_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 8
 CACHE 1;
SELECT setval('"public"."t_member_map_iid_seq"', 8, true);

-- ----------------------------
-- Sequence structure for t_member_other_id_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_member_other_id_iid_seq";
CREATE SEQUENCE "public"."t_member_other_id_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 28
 CACHE 1;
SELECT setval('"public"."t_member_other_id_iid_seq"', 28, true);

-- ----------------------------
-- Sequence structure for t_member_photo_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_member_photo_iid_seq";
CREATE SEQUENCE "public"."t_member_photo_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 31
 CACHE 1;
SELECT setval('"public"."t_member_photo_iid_seq"', 31, true);

-- ----------------------------
-- Sequence structure for t_member_relate_id_seq
-- ----------------------------
DROP SEQUENCE "public"."t_member_relate_id_seq";
CREATE SEQUENCE "public"."t_member_relate_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;
SELECT setval('"public"."t_member_relate_id_seq"', 1, true);

-- ----------------------------
-- Sequence structure for t_member_role_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_member_role_iid_seq";
CREATE SEQUENCE "public"."t_member_role_iid_seq"
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
-- Table structure for t_blacklist_user
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_blacklist_user";
CREATE TABLE "public"."t_blacklist_user" (
"iid" int4 DEFAULT nextval('t_blacklist_user_iid_seq'::regclass) NOT NULL,
"iwebsiteid" int4,
"creason" varchar(200) COLLATE "default",
"cemail" varchar(200) COLLATE "default",
"dcreatedate" timestamp(6),
"istatus" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_blacklist_user" IS '黑名单用户';
COMMENT ON COLUMN "public"."t_blacklist_user"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_blacklist_user"."iwebsiteid" IS '站点';
COMMENT ON COLUMN "public"."t_blacklist_user"."creason" IS '理由';
COMMENT ON COLUMN "public"."t_blacklist_user"."cemail" IS '用户邮箱';
COMMENT ON COLUMN "public"."t_blacklist_user"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_blacklist_user"."istatus" IS '状态';

-- ----------------------------
-- Table structure for t_dropship_base
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_dropship_base";
CREATE TABLE "public"."t_dropship_base" (
"iid" int4 DEFAULT nextval('t_dropship_base_iid_seq'::regclass) NOT NULL,
"cemail" varchar(100) COLLATE "default",
"cfullname" varchar(100) COLLATE "default",
"ctelephone" varchar(40) COLLATE "default",
"ccountrysn" varchar(30) COLLATE "default",
"cshipurl" varchar(100) COLLATE "default",
"cskype" varchar(100) COLLATE "default",
"cnote" varchar(5000) COLLATE "default",
"cpaypaladdress" varchar(100) COLLATE "default",
"istatus" int4,
"idropshiplevel" int4,
"bnewsletter" bool,
"dcreatedate" timestamp(6) DEFAULT now(),
"iwebsiteid" int4,
"ilanguageid" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_dropship_base" IS 'dropship基础表';
COMMENT ON COLUMN "public"."t_dropship_base"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_dropship_base"."cemail" IS '邮箱';
COMMENT ON COLUMN "public"."t_dropship_base"."cfullname" IS '全名';
COMMENT ON COLUMN "public"."t_dropship_base"."ctelephone" IS '联系电话';
COMMENT ON COLUMN "public"."t_dropship_base"."ccountrysn" IS '国家简写';
COMMENT ON COLUMN "public"."t_dropship_base"."cshipurl" IS '商铺链接';
COMMENT ON COLUMN "public"."t_dropship_base"."cskype" IS 'skype帐号';
COMMENT ON COLUMN "public"."t_dropship_base"."cnote" IS 'note';
COMMENT ON COLUMN "public"."t_dropship_base"."cpaypaladdress" IS 'paypal地址';
COMMENT ON COLUMN "public"."t_dropship_base"."istatus" IS '审核状态';
COMMENT ON COLUMN "public"."t_dropship_base"."idropshiplevel" IS 'dropshiplevel';
COMMENT ON COLUMN "public"."t_dropship_base"."bnewsletter" IS '是否接收推送信息';
COMMENT ON COLUMN "public"."t_dropship_base"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_dropship_base"."iwebsiteid" IS '站点 ID';
COMMENT ON COLUMN "public"."t_dropship_base"."ilanguageid" IS '语言ID';

-- ----------------------------
-- Table structure for t_dropship_level
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_dropship_level";
CREATE TABLE "public"."t_dropship_level" (
"iid" int4 DEFAULT nextval('t_dropship_level_iid_seq'::regclass) NOT NULL,
"clevelname" varchar(60) COLLATE "default",
"ftotal" float8,
"discount" float8,
"iproductcount" int4,
"fstartprice" float8,
"fendprice" float8
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_dropship_level" IS 'dropship级别表';
COMMENT ON COLUMN "public"."t_dropship_level"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_dropship_level"."clevelname" IS '级别名称';
COMMENT ON COLUMN "public"."t_dropship_level"."ftotal" IS '消费累积总额';
COMMENT ON COLUMN "public"."t_dropship_level"."discount" IS '会员折扣';
COMMENT ON COLUMN "public"."t_dropship_level"."iproductcount" IS '可上架商品数';
COMMENT ON COLUMN "public"."t_dropship_level"."fstartprice" IS '开始价格';
COMMENT ON COLUMN "public"."t_dropship_level"."fendprice" IS '结束价格';

-- ----------------------------
-- Table structure for t_email_suffix
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_email_suffix";
CREATE TABLE "public"."t_email_suffix" (
"iid" int4 DEFAULT nextval('t_email_suffix_iid_seq'::regclass) NOT NULL,
"cname" varchar(100) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_email_suffix" IS '邮箱后缀表';
COMMENT ON COLUMN "public"."t_email_suffix"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_email_suffix"."cname" IS '邮箱后缀名称';

-- ----------------------------
-- Table structure for t_forget_passwd_base
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_forget_passwd_base";
CREATE TABLE "public"."t_forget_passwd_base" (
"cid" varchar(50) COLLATE "default",
"iwebsiteid" int4,
"cmemberemail" varchar(80) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now(),
"buse" bool DEFAULT true,
"crandomcode" varchar(6) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_forget_passwd_base" IS '用户找回密码表';
COMMENT ON COLUMN "public"."t_forget_passwd_base"."cid" IS 'uuid';
COMMENT ON COLUMN "public"."t_forget_passwd_base"."iwebsiteid" IS '站点编号';
COMMENT ON COLUMN "public"."t_forget_passwd_base"."cmemberemail" IS '邮箱';
COMMENT ON COLUMN "public"."t_forget_passwd_base"."dcreatedate" IS '加入时间';
COMMENT ON COLUMN "public"."t_forget_passwd_base"."buse" IS '是否使用';
COMMENT ON COLUMN "public"."t_forget_passwd_base"."crandomcode" IS '查找邮箱随机码';

-- ----------------------------
-- Table structure for t_layout
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_layout";
CREATE TABLE "public"."t_layout" (
"iid" int4 DEFAULT nextval('t_layout_iid_seq'::regclass) NOT NULL,
"ccode" varchar(30) COLLATE "default",
"cname" varchar(50) COLLATE "default",
"iclientid" int4,
"ilanguageid" int4,
"curl" varchar(256) COLLATE "default",
"istatus" int4,
"ckeyword" varchar(500) COLLATE "default",
"cdescription" varchar(500) COLLATE "default",
"ctitle" varchar(500) COLLATE "default",
"cremark" varchar(500) COLLATE "default",
"ccreateby" varchar(50) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now(),
"cupdateby" varchar(50) COLLATE "default",
"dupdatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_layout" IS '布局(就是一个页面)';
COMMENT ON COLUMN "public"."t_layout"."iid" IS '主键id';
COMMENT ON COLUMN "public"."t_layout"."ccode" IS '布局的标识';
COMMENT ON COLUMN "public"."t_layout"."cname" IS '布局的名称';
COMMENT ON COLUMN "public"."t_layout"."iclientid" IS '客户端id，1 TOMTOP-PC,2 TOMTOP-Mobile,3 TOMTOP-APP-IOS,4 TOMTOP-APP-Android';
COMMENT ON COLUMN "public"."t_layout"."ilanguageid" IS '语言id,1 en英语';
COMMENT ON COLUMN "public"."t_layout"."curl" IS '路由Url';
COMMENT ON COLUMN "public"."t_layout"."istatus" IS '有两种状态(1 Enabled,0 Disabled), 1可被；0不可用';
COMMENT ON COLUMN "public"."t_layout"."ckeyword" IS '布局搜索关键字';
COMMENT ON COLUMN "public"."t_layout"."cdescription" IS '布局描述';
COMMENT ON COLUMN "public"."t_layout"."ctitle" IS '标题';
COMMENT ON COLUMN "public"."t_layout"."cremark" IS '备注';
COMMENT ON COLUMN "public"."t_layout"."ccreateby" IS '创建人';
COMMENT ON COLUMN "public"."t_layout"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_layout"."cupdateby" IS '更新人';
COMMENT ON COLUMN "public"."t_layout"."dupdatedate" IS '更新时间';

-- ----------------------------
-- Table structure for t_layoutmodule
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_layoutmodule";
CREATE TABLE "public"."t_layoutmodule" (
"iid" int4 DEFAULT nextval('t_layoutmodule_iid_seq'::regclass) NOT NULL,
"ccode" varchar(30) COLLATE "default",
"cname" varchar(50) COLLATE "default",
"clayoutcode" varchar(30) COLLATE "default",
"ilayoutid" int4,
"iclientid" int4,
"ilanguageid" int4,
"ipositionid" int4,
"curl" varchar(256) COLLATE "default",
"inumber" int4,
"isort" int4,
"istatus" int4,
"ccreateby" varchar(50) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now(),
"cupdateby" varchar(50) COLLATE "default",
"dupdatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_layoutmodule" IS '布局模块';
COMMENT ON COLUMN "public"."t_layoutmodule"."iid" IS '主键id';
COMMENT ON COLUMN "public"."t_layoutmodule"."ccode" IS '模块的标识';
COMMENT ON COLUMN "public"."t_layoutmodule"."cname" IS '模块的名称';
COMMENT ON COLUMN "public"."t_layoutmodule"."clayoutcode" IS '布局的标识';
COMMENT ON COLUMN "public"."t_layoutmodule"."ilayoutid" IS '布局id';
COMMENT ON COLUMN "public"."t_layoutmodule"."iclientid" IS '客户端id，1 TOMTOP-PC,2 TOMTOP-Mobile,3 TOMTOP-APP-IOS,4 TOMTOP-APP-Android';
COMMENT ON COLUMN "public"."t_layoutmodule"."ilanguageid" IS '语言id,1 en英语';
COMMENT ON COLUMN "public"."t_layoutmodule"."ipositionid" IS '位置参数id,1左边，2右边，3顶部，4底部';
COMMENT ON COLUMN "public"."t_layoutmodule"."curl" IS '路由Url';
COMMENT ON COLUMN "public"."t_layoutmodule"."inumber" IS '模块显示sku的数量';
COMMENT ON COLUMN "public"."t_layoutmodule"."isort" IS '模块的排序号';
COMMENT ON COLUMN "public"."t_layoutmodule"."istatus" IS '有两种状态(1 Enabled,0 Disabled), 1可被；0不可用';
COMMENT ON COLUMN "public"."t_layoutmodule"."ccreateby" IS '创建人';
COMMENT ON COLUMN "public"."t_layoutmodule"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_layoutmodule"."cupdateby" IS '更新人';
COMMENT ON COLUMN "public"."t_layoutmodule"."dupdatedate" IS '更新时间';

-- ----------------------------
-- Table structure for t_layoutmodule_content
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_layoutmodule_content";
CREATE TABLE "public"."t_layoutmodule_content" (
"iid" int4 DEFAULT nextval('t_layoutmodule_content_iid_seq'::regclass) NOT NULL,
"clayoutcode" varchar(30) COLLATE "default",
"ilayoutid" int4,
"clayoutmodulecode" varchar(50) COLLATE "default",
"ilayoutmoduleid" int4,
"iclientid" int4,
"ilanguageid" int4,
"icategoryid" int4,
"ishow" int4,
"clistingid" varchar(50) COLLATE "default",
"csku" varchar(50) COLLATE "default",
"isort" int4,
"istatus" int4,
"ccreateby" varchar(50) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now(),
"cupdateby" varchar(50) COLLATE "default",
"dupdatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_layoutmodule_content" IS '布局模块内容';
COMMENT ON COLUMN "public"."t_layoutmodule_content"."iid" IS '主键id';
COMMENT ON COLUMN "public"."t_layoutmodule_content"."clayoutcode" IS '布局的标识';
COMMENT ON COLUMN "public"."t_layoutmodule_content"."ilayoutid" IS '布局id';
COMMENT ON COLUMN "public"."t_layoutmodule_content"."clayoutmodulecode" IS '模块的的标识';
COMMENT ON COLUMN "public"."t_layoutmodule_content"."ilayoutmoduleid" IS '模块id';
COMMENT ON COLUMN "public"."t_layoutmodule_content"."iclientid" IS '客户端id，1 TOMTOP-PC,2 TOMTOP-Mobile,3 TOMTOP-APP-IOS,4 TOMTOP-APP-Android';
COMMENT ON COLUMN "public"."t_layoutmodule_content"."ilanguageid" IS '语言id,1 en英语';
COMMENT ON COLUMN "public"."t_layoutmodule_content"."icategoryid" IS '类目id';
COMMENT ON COLUMN "public"."t_layoutmodule_content"."ishow" IS '是否显示在页面布局的模块中,1显示，0不显示';
COMMENT ON COLUMN "public"."t_layoutmodule_content"."clistingid" IS '产品id';
COMMENT ON COLUMN "public"."t_layoutmodule_content"."csku" IS '产品sku';
COMMENT ON COLUMN "public"."t_layoutmodule_content"."isort" IS '模块的排序号';
COMMENT ON COLUMN "public"."t_layoutmodule_content"."istatus" IS '有两种状态(1 Enabled,0 Disabled), 1可被；0不可用';
COMMENT ON COLUMN "public"."t_layoutmodule_content"."ccreateby" IS '创建人';
COMMENT ON COLUMN "public"."t_layoutmodule_content"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_layoutmodule_content"."cupdateby" IS '更新人';
COMMENT ON COLUMN "public"."t_layoutmodule_content"."dupdatedate" IS '更新时间';

-- ----------------------------
-- Table structure for t_member_address
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_member_address";
CREATE TABLE "public"."t_member_address" (
"iid" int4 DEFAULT nextval('t_member_address_iid_seq'::regclass) NOT NULL,
"cmemberemail" varchar(80) COLLATE "default",
"iaddressid" int4,
"bdefault" bool,
"cfirstname" varchar(100) COLLATE "default",
"cmiddlename" varchar(100) COLLATE "default",
"clastname" varchar(100) COLLATE "default",
"ccompany" varchar(200) COLLATE "default",
"cstreetaddress" varchar(180) COLLATE "default",
"ccity" varchar(80) COLLATE "default",
"icountry" int4,
"cprovince" varchar(600) COLLATE "default",
"cpostalcode" varchar(80) COLLATE "default",
"ctelephone" varchar(40) COLLATE "default",
"cfax" varchar(40) COLLATE "default",
"cvatnumber" varchar(60) COLLATE "default",
"ishipaddressid" int4 DEFAULT 0,
"dupdatedate" timestamp(6) DEFAULT now(),
"iwebsiteid" int4 DEFAULT 1
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_member_address" IS '用户地址表';
COMMENT ON COLUMN "public"."t_member_address"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_member_address"."cmemberemail" IS '邮箱';
COMMENT ON COLUMN "public"."t_member_address"."iaddressid" IS '地址类型 1:收货地址 2:账单地址';
COMMENT ON COLUMN "public"."t_member_address"."bdefault" IS '是否默认';
COMMENT ON COLUMN "public"."t_member_address"."cfirstname" IS '姓名首';
COMMENT ON COLUMN "public"."t_member_address"."cmiddlename" IS '姓名中间';
COMMENT ON COLUMN "public"."t_member_address"."clastname" IS '姓名尾';
COMMENT ON COLUMN "public"."t_member_address"."ccompany" IS '公司';
COMMENT ON COLUMN "public"."t_member_address"."cstreetaddress" IS '街道地址';
COMMENT ON COLUMN "public"."t_member_address"."ccity" IS '城市';
COMMENT ON COLUMN "public"."t_member_address"."icountry" IS '国家';
COMMENT ON COLUMN "public"."t_member_address"."cprovince" IS '洲(省)';
COMMENT ON COLUMN "public"."t_member_address"."cpostalcode" IS '邮政编码';
COMMENT ON COLUMN "public"."t_member_address"."ctelephone" IS '联系电话';
COMMENT ON COLUMN "public"."t_member_address"."cfax" IS '传真';
COMMENT ON COLUMN "public"."t_member_address"."cvatnumber" IS '税号';
COMMENT ON COLUMN "public"."t_member_address"."ishipaddressid" IS 'ship地址id';

-- ----------------------------
-- Table structure for t_member_base
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_member_base";
CREATE TABLE "public"."t_member_base" (
"iid" int4 DEFAULT nextval('t_member_base_iid_seq'::regclass) NOT NULL,
"cemail" varchar(100) COLLATE "default",
"iwebsiteid" int4,
"caccount" varchar(100) COLLATE "default",
"cpasswd" varchar(80) COLLATE "default",
"igroupid" int4,
"cprefix" varchar(30) COLLATE "default",
"csuffix" varchar(30) COLLATE "default",
"cfirstname" varchar(100) COLLATE "default",
"cmiddlename" varchar(100) COLLATE "default",
"clastname" varchar(100) COLLATE "default",
"dbirth" timestamp(6),
"ctaxnumber" varchar(60) COLLATE "default",
"igender" int4,
"caboutme" varchar(8000) COLLATE "default",
"cforumsnickname" varchar(80) COLLATE "default",
"bactivated" bool,
"bnewsletter" bool,
"ccountry" varchar(3) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now(),
"cvhost" varchar(80) COLLATE "default",
"cuuid" varchar(100) COLLATE "default",
"hobby_years" int4,
"experience_level" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_member_base" IS '用户基础表';
COMMENT ON COLUMN "public"."t_member_base"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_member_base"."cemail" IS '邮箱';
COMMENT ON COLUMN "public"."t_member_base"."iwebsiteid" IS '站点编号';
COMMENT ON COLUMN "public"."t_member_base"."caccount" IS '账号';
COMMENT ON COLUMN "public"."t_member_base"."cpasswd" IS '密码';
COMMENT ON COLUMN "public"."t_member_base"."igroupid" IS '分组编号';
COMMENT ON COLUMN "public"."t_member_base"."cprefix" IS '前缀';
COMMENT ON COLUMN "public"."t_member_base"."csuffix" IS '后缀';
COMMENT ON COLUMN "public"."t_member_base"."cfirstname" IS '姓名首';
COMMENT ON COLUMN "public"."t_member_base"."cmiddlename" IS '姓名中间';
COMMENT ON COLUMN "public"."t_member_base"."clastname" IS '姓名尾';
COMMENT ON COLUMN "public"."t_member_base"."dbirth" IS '生日';
COMMENT ON COLUMN "public"."t_member_base"."ctaxnumber" IS '税号';
COMMENT ON COLUMN "public"."t_member_base"."igender" IS '性别';
COMMENT ON COLUMN "public"."t_member_base"."caboutme" IS '介绍';
COMMENT ON COLUMN "public"."t_member_base"."cforumsnickname" IS '论坛账号';
COMMENT ON COLUMN "public"."t_member_base"."bactivated" IS '是否已激活';
COMMENT ON COLUMN "public"."t_member_base"."bnewsletter" IS '是否可以发送推广邮件';
COMMENT ON COLUMN "public"."t_member_base"."ccountry" IS '会员国家';
COMMENT ON COLUMN "public"."t_member_base"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_member_base"."cvhost" IS 'vhost';
COMMENT ON COLUMN "public"."t_member_base"."hobby_years" IS '爱好时长';
COMMENT ON COLUMN "public"."t_member_base"."experience_level" IS '经验水平';

-- ----------------------------
-- Table structure for t_member_buy_statistics
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_member_buy_statistics";
CREATE TABLE "public"."t_member_buy_statistics" (
"iid" int4 DEFAULT nextval('t_member_buy_statistics_iid_seq'::regclass) NOT NULL,
"cemail" varchar(100) COLLATE "default",
"famount" float8,
"icount" int4 DEFAULT 1,
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_member_buy_statistics" IS '用户购物统计';
COMMENT ON COLUMN "public"."t_member_buy_statistics"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_member_buy_statistics"."cemail" IS '邮箱';
COMMENT ON COLUMN "public"."t_member_buy_statistics"."famount" IS '购物总金额';
COMMENT ON COLUMN "public"."t_member_buy_statistics"."icount" IS '购物总次数';
COMMENT ON COLUMN "public"."t_member_buy_statistics"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_member_email_verify
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_member_email_verify";
CREATE TABLE "public"."t_member_email_verify" (
"iid" int4 DEFAULT nextval('t_member_email_verify_iid_seq'::regclass) NOT NULL,
"cemail" varchar(100) COLLATE "default",
"bisending" bool,
"cmark" varchar(32) COLLATE "default",
"cactivationcode" varchar(32) COLLATE "default",
"idaynumber" int4,
"dvaliddate" timestamp(6),
"dsenddate" timestamp(6),
"dcreatedate" timestamp(6) DEFAULT now(),
"iresendcount" int4 DEFAULT 0
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_member_email_verify" IS '会员邮箱认证表';
COMMENT ON COLUMN "public"."t_member_email_verify"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_member_email_verify"."cemail" IS '会员邮箱';
COMMENT ON COLUMN "public"."t_member_email_verify"."bisending" IS '是否以发送';
COMMENT ON COLUMN "public"."t_member_email_verify"."cmark" IS '今天是否发送邮箱认证标记';
COMMENT ON COLUMN "public"."t_member_email_verify"."cactivationcode" IS '邮箱激活码';
COMMENT ON COLUMN "public"."t_member_email_verify"."idaynumber" IS '每天发送邮箱次数(最多为3次)';
COMMENT ON COLUMN "public"."t_member_email_verify"."dvaliddate" IS '邮件激活有效时间(3天)';
COMMENT ON COLUMN "public"."t_member_email_verify"."dsenddate" IS '邮件发送日期';
COMMENT ON COLUMN "public"."t_member_email_verify"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_member_email_verify"."iresendcount" IS '重新发送邮件次数';

-- ----------------------------
-- Table structure for t_member_favorite
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_member_favorite";
CREATE TABLE "public"."t_member_favorite" (
"iid" int4 DEFAULT nextval('t_member_favorite_iid_seq'::regclass) NOT NULL,
"clistingId" varchar(50) COLLATE "default",
"csku" varchar(40) COLLATE "default",
"imemberId" int4,
"ienabled" int4,
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_member_favorite" IS '用户收藏夹表';
COMMENT ON COLUMN "public"."t_member_favorite"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_member_favorite"."clistingId" IS '广告编号';
COMMENT ON COLUMN "public"."t_member_favorite"."csku" IS 'SKU';
COMMENT ON COLUMN "public"."t_member_favorite"."imemberId" IS '客户编号';
COMMENT ON COLUMN "public"."t_member_favorite"."ienabled" IS '是否使用';
COMMENT ON COLUMN "public"."t_member_favorite"."dcreatedate" IS '加入时间';

-- ----------------------------
-- Table structure for t_member_group
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_member_group";
CREATE TABLE "public"."t_member_group" (
"iid" int4 DEFAULT nextval('t_member_group_iid_seq'::regclass) NOT NULL,
"iwebsiteid" int4,
"cgroupname" varchar(60) COLLATE "default",
"itaxclassid" int4,
"ccreateuser" varchar(20) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_member_group" IS '用户级别表';
COMMENT ON COLUMN "public"."t_member_group"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_member_group"."iwebsiteid" IS '站点编号';
COMMENT ON COLUMN "public"."t_member_group"."cgroupname" IS '级别名称';
COMMENT ON COLUMN "public"."t_member_group"."itaxclassid" IS '税号';
COMMENT ON COLUMN "public"."t_member_group"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_member_group"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_member_Group_change_history
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_member_Group_change_history";
CREATE TABLE "public"."t_member_Group_change_history" (
"iid" int4 DEFAULT nextval('"t_member_Group_change_history_iid_seq"'::regclass) NOT NULL,
"iwebsiteid" int4,
"cemail" varchar(100) COLLATE "default",
"ioidgroupid" int4,
"inewgroupid" int4,
"creason" varchar(50) COLLATE "default",
"ccreateuser" varchar(20) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_member_Group_change_history" IS '用户级别改变历史表';
COMMENT ON COLUMN "public"."t_member_Group_change_history"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_member_Group_change_history"."iwebsiteid" IS '站点编号';
COMMENT ON COLUMN "public"."t_member_Group_change_history"."cemail" IS '用户';
COMMENT ON COLUMN "public"."t_member_Group_change_history"."ioidgroupid" IS '旧分组';
COMMENT ON COLUMN "public"."t_member_Group_change_history"."inewgroupid" IS '新分组';
COMMENT ON COLUMN "public"."t_member_Group_change_history"."creason" IS '调整原因';
COMMENT ON COLUMN "public"."t_member_Group_change_history"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_member_Group_change_history"."dcreatedate" IS '调整时间';

-- ----------------------------
-- Table structure for t_member_group_criterion
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_member_group_criterion";
CREATE TABLE "public"."t_member_group_criterion" (
"iid" int4 DEFAULT nextval('t_member_group_criterion_iid_seq'::regclass) NOT NULL,
"iwebsiteid" int4,
"igroupid" int4,
"dconsumptionprice" float8,
"ccreateuser" varchar(20) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_member_group_criterion" IS '用户级别标准表';
COMMENT ON COLUMN "public"."t_member_group_criterion"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_member_group_criterion"."iwebsiteid" IS '站点编号';
COMMENT ON COLUMN "public"."t_member_group_criterion"."igroupid" IS '分组名称';
COMMENT ON COLUMN "public"."t_member_group_criterion"."dconsumptionprice" IS '最少消费标准';
COMMENT ON COLUMN "public"."t_member_group_criterion"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_member_group_criterion"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_member_login_history
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_member_login_history";
CREATE TABLE "public"."t_member_login_history" (
"dtimestamp" timestamp(6),
"cemail" varchar(100) COLLATE "default",
"iwebsiteid" int4,
"cltc" varchar(40) COLLATE "default",
"cstc" varchar(40) COLLATE "default",
"cclientip" varchar(40) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON COLUMN "public"."t_member_login_history"."dtimestamp" IS '登入时间';
COMMENT ON COLUMN "public"."t_member_login_history"."cemail" IS '登入用户';
COMMENT ON COLUMN "public"."t_member_login_history"."iwebsiteid" IS '站点编号';
COMMENT ON COLUMN "public"."t_member_login_history"."cltc" IS '长期跟踪Cookie: TT_LTC';
COMMENT ON COLUMN "public"."t_member_login_history"."cstc" IS '短期跟踪Cookie: TT_STC';

-- ----------------------------
-- Table structure for t_member_map
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_member_map";
CREATE TABLE "public"."t_member_map" (
"iid" int4 DEFAULT nextval('t_member_map_iid_seq'::regclass) NOT NULL,
"iuserid" int4,
"iroleid" int4,
"ccreateuser" varchar(20) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_member_map" IS '前台用户角色对应表';
COMMENT ON COLUMN "public"."t_member_map"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_member_map"."iuserid" IS '用户编号';
COMMENT ON COLUMN "public"."t_member_map"."iroleid" IS '角色编号';
COMMENT ON COLUMN "public"."t_member_map"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_member_map"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_member_other_id
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_member_other_id";
CREATE TABLE "public"."t_member_other_id" (
"iid" int4 DEFAULT nextval('t_member_other_id_iid_seq'::regclass) NOT NULL,
"cemail" varchar(100) COLLATE "default",
"csource" varchar(100) COLLATE "default",
"csourceid" varchar(200) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now(),
"bvalidated" bool
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_member_other_id" IS '用户的其他登入账号';
COMMENT ON COLUMN "public"."t_member_other_id"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_member_other_id"."cemail" IS '邮箱';
COMMENT ON COLUMN "public"."t_member_other_id"."csource" IS '账号来源，由插件界定';
COMMENT ON COLUMN "public"."t_member_other_id"."csourceid" IS '登入网站的账号ID';
COMMENT ON COLUMN "public"."t_member_other_id"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_member_other_id"."bvalidated" IS '是否验证过';

-- ----------------------------
-- Table structure for t_member_photo
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_member_photo";
CREATE TABLE "public"."t_member_photo" (
"iid" int4 DEFAULT nextval('t_member_photo_iid_seq'::regclass) NOT NULL,
"cemail" varchar(100) COLLATE "default",
"ccontenttype" varchar(40) COLLATE "default",
"bfile" bytea,
"dcreatedate" timestamp(6) DEFAULT now(),
"cmd5" varchar(32) COLLATE "default",
"iwebsiteid" int4,
"cimageurl" varchar(600) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_member_photo" IS '会员头像表';
COMMENT ON COLUMN "public"."t_member_photo"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_member_photo"."cemail" IS '会员邮箱';
COMMENT ON COLUMN "public"."t_member_photo"."ccontenttype" IS '图片文件类型';
COMMENT ON COLUMN "public"."t_member_photo"."bfile" IS '头像文件';
COMMENT ON COLUMN "public"."t_member_photo"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_member_photo"."cmd5" IS '图片md5';
COMMENT ON COLUMN "public"."t_member_photo"."iwebsiteid" IS '站点编号';
COMMENT ON COLUMN "public"."t_member_photo"."cimageurl" IS '图片路径';

-- ----------------------------
-- Table structure for t_member_relate
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_member_relate";
CREATE TABLE "public"."t_member_relate" (
"id" int4 DEFAULT nextval('t_member_relate_id_seq'::regclass) NOT NULL,
"iwebsiteid" int4,
"ilanguageid" int4,
"type" int4,
"name" varchar(32) COLLATE "default",
"desc" varchar(32) COLLATE "default",
"is_show" int4,
"created_by" varchar(32) COLLATE "default",
"created_on" timestamp(6) DEFAULT now(),
"last_updated_by" varchar(32) COLLATE "default",
"last_updated_on" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_member_relate" IS '会员经验爱好描述表';
COMMENT ON COLUMN "public"."t_member_relate"."id" IS '主键id';
COMMENT ON COLUMN "public"."t_member_relate"."iwebsiteid" IS '站点编号';
COMMENT ON COLUMN "public"."t_member_relate"."ilanguageid" IS '语言Id';
COMMENT ON COLUMN "public"."t_member_relate"."type" IS '类型  1:爱好时常，2：经验水平';
COMMENT ON COLUMN "public"."t_member_relate"."name" IS '标签名称';
COMMENT ON COLUMN "public"."t_member_relate"."desc" IS '标签描述';
COMMENT ON COLUMN "public"."t_member_relate"."is_show" IS '是否显示';
COMMENT ON COLUMN "public"."t_member_relate"."created_by" IS '创建人';
COMMENT ON COLUMN "public"."t_member_relate"."created_on" IS '创建时间';
COMMENT ON COLUMN "public"."t_member_relate"."last_updated_by" IS '最新修改人';
COMMENT ON COLUMN "public"."t_member_relate"."last_updated_on" IS '最新修改时间';

-- ----------------------------
-- Table structure for t_member_role
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_member_role";
CREATE TABLE "public"."t_member_role" (
"iid" int4 DEFAULT nextval('t_member_role_iid_seq'::regclass) NOT NULL,
"crolename" varchar(20) COLLATE "default",
"ccreateuser" varchar(20) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now(),
"cremark" varchar(50) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_member_role" IS '前台用户角色表';
COMMENT ON COLUMN "public"."t_member_role"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_member_role"."crolename" IS '角色名称';
COMMENT ON COLUMN "public"."t_member_role"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_member_role"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_member_role"."cremark" IS '备注说明';

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
-- Alter Sequences Owned By 
-- ----------------------------
ALTER SEQUENCE "public"."t_blacklist_user_iid_seq" OWNED BY "t_blacklist_user"."iid";
ALTER SEQUENCE "public"."t_dropship_base_iid_seq" OWNED BY "t_dropship_base"."iid";
ALTER SEQUENCE "public"."t_dropship_level_iid_seq" OWNED BY "t_dropship_level"."iid";
ALTER SEQUENCE "public"."t_email_suffix_iid_seq" OWNED BY "t_email_suffix"."iid";
ALTER SEQUENCE "public"."t_layout_iid_seq" OWNED BY "t_layout"."iid";
ALTER SEQUENCE "public"."t_layoutmodule_content_iid_seq" OWNED BY "t_layoutmodule_content"."iid";
ALTER SEQUENCE "public"."t_layoutmodule_iid_seq" OWNED BY "t_layoutmodule"."iid";
ALTER SEQUENCE "public"."t_member_address_iid_seq" OWNED BY "t_member_address"."iid";
ALTER SEQUENCE "public"."t_member_base_iid_seq" OWNED BY "t_member_base"."iid";
ALTER SEQUENCE "public"."t_member_buy_statistics_iid_seq" OWNED BY "t_member_buy_statistics"."iid";
ALTER SEQUENCE "public"."t_member_email_verify_iid_seq" OWNED BY "t_member_email_verify"."iid";
ALTER SEQUENCE "public"."t_member_favorite_iid_seq" OWNED BY "t_member_favorite"."iid";
ALTER SEQUENCE "public"."t_member_Group_change_history_iid_seq" OWNED BY "t_member_Group_change_history"."iid";
ALTER SEQUENCE "public"."t_member_group_criterion_iid_seq" OWNED BY "t_member_group_criterion"."iid";
ALTER SEQUENCE "public"."t_member_group_iid_seq" OWNED BY "t_member_group"."iid";
ALTER SEQUENCE "public"."t_member_map_iid_seq" OWNED BY "t_member_map"."iid";
ALTER SEQUENCE "public"."t_member_other_id_iid_seq" OWNED BY "t_member_other_id"."iid";
ALTER SEQUENCE "public"."t_member_photo_iid_seq" OWNED BY "t_member_photo"."iid";
ALTER SEQUENCE "public"."t_member_relate_id_seq" OWNED BY "t_member_relate"."id";
ALTER SEQUENCE "public"."t_member_role_iid_seq" OWNED BY "t_member_role"."iid";

-- ----------------------------
-- Primary Key structure for table databasechangeloglock
-- ----------------------------
ALTER TABLE "public"."databasechangeloglock" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_blacklist_user
-- ----------------------------
ALTER TABLE "public"."t_blacklist_user" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_dropship_base
-- ----------------------------
ALTER TABLE "public"."t_dropship_base" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_dropship_level
-- ----------------------------
ALTER TABLE "public"."t_dropship_level" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_email_suffix
-- ----------------------------
ALTER TABLE "public"."t_email_suffix" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Indexes structure for table t_forget_passwd_base
-- ----------------------------
CREATE INDEX "index_t_forget_passwd_base_1" ON "public"."t_forget_passwd_base" USING btree (cid);
CREATE INDEX "index_t_forget_passwd_base_2" ON "public"."t_forget_passwd_base" USING btree (iwebsiteid, cmemberemail);

-- ----------------------------
-- Primary Key structure for table t_layout
-- ----------------------------
ALTER TABLE "public"."t_layout" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_layoutmodule
-- ----------------------------
ALTER TABLE "public"."t_layoutmodule" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_layoutmodule_content
-- ----------------------------
ALTER TABLE "public"."t_layoutmodule_content" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Indexes structure for table t_member_address
-- ----------------------------
CREATE INDEX "index_t_member_address_1" ON "public"."t_member_address" USING btree (cmemberemail, iwebsiteid, iaddressid);

-- ----------------------------
-- Primary Key structure for table t_member_address
-- ----------------------------
ALTER TABLE "public"."t_member_address" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Indexes structure for table t_member_base
-- ----------------------------
CREATE UNIQUE INDEX "idx_t_member_base_cuuid" ON "public"."t_member_base" USING btree (cuuid);
CREATE UNIQUE INDEX "idx_t_memberbase_cemail" ON "public"."t_member_base" USING btree (cemail, iwebsiteid);
CREATE INDEX "index_t_member_base_1" ON "public"."t_member_base" USING btree (cuuid, iwebsiteid);

-- ----------------------------
-- Primary Key structure for table t_member_base
-- ----------------------------
ALTER TABLE "public"."t_member_base" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_member_buy_statistics
-- ----------------------------
ALTER TABLE "public"."t_member_buy_statistics" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_member_email_verify
-- ----------------------------
ALTER TABLE "public"."t_member_email_verify" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_member_favorite
-- ----------------------------
ALTER TABLE "public"."t_member_favorite" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_member_group
-- ----------------------------
ALTER TABLE "public"."t_member_group" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_member_Group_change_history
-- ----------------------------
ALTER TABLE "public"."t_member_Group_change_history" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_member_group_criterion
-- ----------------------------
ALTER TABLE "public"."t_member_group_criterion" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Indexes structure for table t_member_login_history
-- ----------------------------
CREATE INDEX "idx_member_login_history" ON "public"."t_member_login_history" USING btree (cemail, iwebsiteid, dtimestamp);
CREATE INDEX "idx_member_login_history_timestamp" ON "public"."t_member_login_history" USING btree (dtimestamp);

-- ----------------------------
-- Primary Key structure for table t_member_map
-- ----------------------------
ALTER TABLE "public"."t_member_map" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Indexes structure for table t_member_other_id
-- ----------------------------
CREATE INDEX "index_t_member_other_id_1" ON "public"."t_member_other_id" USING btree (csource, csourceid);

-- ----------------------------
-- Uniques structure for table t_member_other_id
-- ----------------------------
ALTER TABLE "public"."t_member_other_id" ADD UNIQUE ("csource", "csourceid");

-- ----------------------------
-- Primary Key structure for table t_member_other_id
-- ----------------------------
ALTER TABLE "public"."t_member_other_id" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Indexes structure for table t_member_photo
-- ----------------------------
CREATE INDEX "index_t_member_photo_1" ON "public"."t_member_photo" USING btree (cemail, iwebsiteid);

-- ----------------------------
-- Primary Key structure for table t_member_photo
-- ----------------------------
ALTER TABLE "public"."t_member_photo" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_member_relate
-- ----------------------------
ALTER TABLE "public"."t_member_relate" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_member_role
-- ----------------------------
ALTER TABLE "public"."t_member_role" ADD PRIMARY KEY ("iid");
