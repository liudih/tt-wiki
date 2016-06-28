/*
Navicat PGSQL Data Transfer

Source Server         : uat
Source Server Version : 90405
Source Host           : 192.168.220.52:5432
Source Database       : interaction
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 90405
File Encoding         : 65001

Date: 2016-06-28 18:13:11
*/


-- ----------------------------
-- Sequence structure for emp_sequence
-- ----------------------------
DROP SEQUENCE "public"."emp_sequence";
CREATE SEQUENCE "public"."emp_sequence"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 295
 CACHE 1;
SELECT setval('"public"."emp_sequence"', 295, true);

-- ----------------------------
-- Sequence structure for t_dropship_product_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_dropship_product_iid_seq";
CREATE SEQUENCE "public"."t_dropship_product_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 120
 CACHE 1;
SELECT setval('"public"."t_dropship_product_iid_seq"', 120, true);

-- ----------------------------
-- Sequence structure for t_interaction_comment_help_evaluate_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_interaction_comment_help_evaluate_iid_seq";
CREATE SEQUENCE "public"."t_interaction_comment_help_evaluate_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 468
 CACHE 1;
SELECT setval('"public"."t_interaction_comment_help_evaluate_iid_seq"', 468, true);

-- ----------------------------
-- Sequence structure for t_interaction_comment_help_qty_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_interaction_comment_help_qty_iid_seq";
CREATE SEQUENCE "public"."t_interaction_comment_help_qty_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 39
 CACHE 1;
SELECT setval('"public"."t_interaction_comment_help_qty_iid_seq"', 39, true);

-- ----------------------------
-- Sequence structure for t_interaction_comment_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_interaction_comment_iid_seq";
CREATE SEQUENCE "public"."t_interaction_comment_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 2916
 CACHE 1;
SELECT setval('"public"."t_interaction_comment_iid_seq"', 2916, true);

-- ----------------------------
-- Sequence structure for t_interaction_faq_evaluate_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_interaction_faq_evaluate_iid_seq";
CREATE SEQUENCE "public"."t_interaction_faq_evaluate_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 8
 CACHE 1;
SELECT setval('"public"."t_interaction_faq_evaluate_iid_seq"', 8, true);

-- ----------------------------
-- Sequence structure for t_interaction_faq_help_qty_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_interaction_faq_help_qty_iid_seq";
CREATE SEQUENCE "public"."t_interaction_faq_help_qty_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for t_interaction_faq_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_interaction_faq_iid_seq";
CREATE SEQUENCE "public"."t_interaction_faq_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 13
 CACHE 1;
SELECT setval('"public"."t_interaction_faq_iid_seq"', 13, true);

-- ----------------------------
-- Sequence structure for t_interaction_faq_type_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_interaction_faq_type_iid_seq";
CREATE SEQUENCE "public"."t_interaction_faq_type_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 4
 CACHE 1;
SELECT setval('"public"."t_interaction_faq_type_iid_seq"', 4, true);

-- ----------------------------
-- Sequence structure for t_interaction_product_browse_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_interaction_product_browse_iid_seq";
CREATE SEQUENCE "public"."t_interaction_product_browse_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 34763
 CACHE 1;
SELECT setval('"public"."t_interaction_product_browse_iid_seq"', 34763, true);

-- ----------------------------
-- Sequence structure for t_interaction_product_member_photos_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_interaction_product_member_photos_iid_seq";
CREATE SEQUENCE "public"."t_interaction_product_member_photos_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 468
 CACHE 1;
SELECT setval('"public"."t_interaction_product_member_photos_iid_seq"', 468, true);

-- ----------------------------
-- Sequence structure for t_interaction_product_member_video_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_interaction_product_member_video_iid_seq";
CREATE SEQUENCE "public"."t_interaction_product_member_video_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 114
 CACHE 1;
SELECT setval('"public"."t_interaction_product_member_video_iid_seq"', 114, true);

-- ----------------------------
-- Sequence structure for t_price_match_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_price_match_iid_seq";
CREATE SEQUENCE "public"."t_price_match_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 22
 CACHE 1;
SELECT setval('"public"."t_price_match_iid_seq"', 22, true);

-- ----------------------------
-- Sequence structure for t_product_collect_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_product_collect_iid_seq";
CREATE SEQUENCE "public"."t_product_collect_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 2757
 CACHE 1;
SELECT setval('"public"."t_product_collect_iid_seq"', 2757, true);

-- ----------------------------
-- Sequence structure for t_recommend_label_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_recommend_label_iid_seq";
CREATE SEQUENCE "public"."t_recommend_label_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for t_report_error_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_report_error_iid_seq";
CREATE SEQUENCE "public"."t_report_error_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 4
 CACHE 1;
SELECT setval('"public"."t_report_error_iid_seq"', 4, true);

-- ----------------------------
-- Sequence structure for t_super_deals_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_super_deals_iid_seq";
CREATE SEQUENCE "public"."t_super_deals_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 44
 CACHE 1;
SELECT setval('"public"."t_super_deals_iid_seq"', 44, true);

-- ----------------------------
-- Sequence structure for t_wholesale_inquiry_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_wholesale_inquiry_iid_seq";
CREATE SEQUENCE "public"."t_wholesale_inquiry_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 23
 CACHE 1;
SELECT setval('"public"."t_wholesale_inquiry_iid_seq"', 23, true);

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
-- Table structure for t_dropship_product
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_dropship_product";
CREATE TABLE "public"."t_dropship_product" (
"iid" int4 DEFAULT nextval('t_dropship_product_iid_seq'::regclass) NOT NULL,
"cemail" varchar(100) COLLATE "default",
"csku" varchar(50) COLLATE "default",
"bstate" bool DEFAULT false,
"dcreatedate" timestamp(6) DEFAULT now(),
"dupdatestatedate" timestamp(6),
"iwebsiteid" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_dropship_product" IS 'dropship产品表';
COMMENT ON COLUMN "public"."t_dropship_product"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_dropship_product"."cemail" IS '用户Email';
COMMENT ON COLUMN "public"."t_dropship_product"."csku" IS 'sku';
COMMENT ON COLUMN "public"."t_dropship_product"."bstate" IS '是否为dropship产品';
COMMENT ON COLUMN "public"."t_dropship_product"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_dropship_product"."dupdatestatedate" IS '状态更改时间';
COMMENT ON COLUMN "public"."t_dropship_product"."iwebsiteid" IS '站点编号';

-- ----------------------------
-- Table structure for t_interaction_comment
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_interaction_comment";
CREATE TABLE "public"."t_interaction_comment" (
"iid" int4 DEFAULT nextval('t_interaction_comment_iid_seq'::regclass) NOT NULL,
"clistingid" varchar(40) COLLATE "default",
"csku" varchar(30) COLLATE "default",
"cmemberemail" varchar(100) COLLATE "default",
"ccomment" varchar(2000) COLLATE "default",
"iprice" int4,
"iquality" int4,
"ishipping" int4,
"iusefulness" int4,
"foverallrating" float8,
"dcreatedate" timestamp(6) DEFAULT now(),
"dauditdate" timestamp(6),
"istate" int4 DEFAULT 0,
"iorderid" int4,
"ccountry" varchar(100) COLLATE "default",
"cplatform" varchar(40) COLLATE "default",
"iwebsiteid" int4,
"ctitle" varchar(200) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_interaction_comment" IS '产品评论表';
COMMENT ON COLUMN "public"."t_interaction_comment"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_interaction_comment"."clistingid" IS '广告 编号';
COMMENT ON COLUMN "public"."t_interaction_comment"."csku" IS 'SKU';
COMMENT ON COLUMN "public"."t_interaction_comment"."cmemberemail" IS '客户邮箱';
COMMENT ON COLUMN "public"."t_interaction_comment"."ccomment" IS '评论';
COMMENT ON COLUMN "public"."t_interaction_comment"."iprice" IS '价格评级';
COMMENT ON COLUMN "public"."t_interaction_comment"."iquality" IS '质量评级';
COMMENT ON COLUMN "public"."t_interaction_comment"."ishipping" IS '物流评级';
COMMENT ON COLUMN "public"."t_interaction_comment"."iusefulness" IS '有用评级';
COMMENT ON COLUMN "public"."t_interaction_comment"."foverallrating" IS '综合评级';
COMMENT ON COLUMN "public"."t_interaction_comment"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_interaction_comment"."dauditdate" IS '审核时间';
COMMENT ON COLUMN "public"."t_interaction_comment"."istate" IS '审核状态(0未审、1通过、2未通过)';
COMMENT ON COLUMN "public"."t_interaction_comment"."ccountry" IS '评论人国家';
COMMENT ON COLUMN "public"."t_interaction_comment"."cplatform" IS '评论来源';
COMMENT ON COLUMN "public"."t_interaction_comment"."iwebsiteid" IS '站点编号';
COMMENT ON COLUMN "public"."t_interaction_comment"."ctitle" IS '评论标题';

-- ----------------------------
-- Table structure for t_interaction_comment_help_evaluate
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_interaction_comment_help_evaluate";
CREATE TABLE "public"."t_interaction_comment_help_evaluate" (
"iid" int4 DEFAULT nextval('t_interaction_comment_help_evaluate_iid_seq'::regclass) NOT NULL,
"icommentid" int4,
"helpfulcode" int4,
"cmemberemail" varchar(100) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_interaction_comment_help_evaluate" IS '产品评论帮助表';
COMMENT ON COLUMN "public"."t_interaction_comment_help_evaluate"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_interaction_comment_help_evaluate"."icommentid" IS '产品评论帮助评价编号';
COMMENT ON COLUMN "public"."t_interaction_comment_help_evaluate"."helpfulcode" IS '是否有帮助(0:没有帮助1:有帮助)';
COMMENT ON COLUMN "public"."t_interaction_comment_help_evaluate"."cmemberemail" IS '用户邮箱';
COMMENT ON COLUMN "public"."t_interaction_comment_help_evaluate"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_interaction_comment_help_qty
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_interaction_comment_help_qty";
CREATE TABLE "public"."t_interaction_comment_help_qty" (
"iid" int4 DEFAULT nextval('t_interaction_comment_help_qty_iid_seq'::regclass) NOT NULL,
"commentid" int4,
"helpfulqty" int4 DEFAULT 0,
"nothelpfulqty" int4 DEFAULT 0,
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_interaction_comment_help_qty" IS '产品评论帮助评价记录表';
COMMENT ON COLUMN "public"."t_interaction_comment_help_qty"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_interaction_comment_help_qty"."commentid" IS '评论帮助记录编号';
COMMENT ON COLUMN "public"."t_interaction_comment_help_qty"."helpfulqty" IS '有用帮助数量';
COMMENT ON COLUMN "public"."t_interaction_comment_help_qty"."nothelpfulqty" IS '没有用帮助数量';
COMMENT ON COLUMN "public"."t_interaction_comment_help_qty"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_interaction_product_browse
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_interaction_product_browse";
CREATE TABLE "public"."t_interaction_product_browse" (
"iid" int8 DEFAULT nextval('t_interaction_product_browse_iid_seq'::regclass) NOT NULL,
"iplatformid" int4,
"iwebsiteid" int4,
"imemberid" int4,
"cltc" varchar(40) COLLATE "default",
"cstc" varchar(40) COLLATE "default",
"clistingid" varchar(40) COLLATE "default",
"csku" varchar(50) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_interaction_product_browse" IS '会员浏览产品历史表';
COMMENT ON COLUMN "public"."t_interaction_product_browse"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_interaction_product_browse"."iplatformid" IS '平台编号';
COMMENT ON COLUMN "public"."t_interaction_product_browse"."iwebsiteid" IS '站点编号';
COMMENT ON COLUMN "public"."t_interaction_product_browse"."imemberid" IS '用户编号';
COMMENT ON COLUMN "public"."t_interaction_product_browse"."cltc" IS '长期跟踪Cookie: TT_LTC';
COMMENT ON COLUMN "public"."t_interaction_product_browse"."cstc" IS '短期跟踪Cookie: TT_STC';
COMMENT ON COLUMN "public"."t_interaction_product_browse"."clistingid" IS '广告编号';
COMMENT ON COLUMN "public"."t_interaction_product_browse"."csku" IS 'SKU';
COMMENT ON COLUMN "public"."t_interaction_product_browse"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_interaction_product_member_photos
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_interaction_product_member_photos";
CREATE TABLE "public"."t_interaction_product_member_photos" (
"iid" int4 DEFAULT nextval('t_interaction_product_member_photos_iid_seq'::regclass) NOT NULL,
"clistingid" varchar(40) COLLATE "default",
"csku" varchar(50) COLLATE "default",
"cmemberemail" varchar(100) COLLATE "default",
"icommentid" int4,
"cimageurl" varchar(600) COLLATE "default",
"clabel" varchar(50) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now(),
"cauditoruser" varchar(20) COLLATE "default",
"dauditordate" timestamp(6),
"iauditorstatus" int4 DEFAULT 0,
"ccontenttype" varchar(40) COLLATE "default",
"bfile" bytea,
"iwebsiteid" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_interaction_product_member_photos" IS '产品客户上传图片表';
COMMENT ON COLUMN "public"."t_interaction_product_member_photos"."clistingid" IS '广告编号';
COMMENT ON COLUMN "public"."t_interaction_product_member_photos"."csku" IS 'SKU';
COMMENT ON COLUMN "public"."t_interaction_product_member_photos"."cmemberemail" IS '客户邮箱';
COMMENT ON COLUMN "public"."t_interaction_product_member_photos"."icommentid" IS '评论编号';
COMMENT ON COLUMN "public"."t_interaction_product_member_photos"."cimageurl" IS '图片路径';
COMMENT ON COLUMN "public"."t_interaction_product_member_photos"."clabel" IS '图片label';
COMMENT ON COLUMN "public"."t_interaction_product_member_photos"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_interaction_product_member_photos"."cauditoruser" IS '审核人';
COMMENT ON COLUMN "public"."t_interaction_product_member_photos"."dauditordate" IS '审核时间';
COMMENT ON COLUMN "public"."t_interaction_product_member_photos"."iauditorstatus" IS '审核状态(0未审、1通过、2未通过)';
COMMENT ON COLUMN "public"."t_interaction_product_member_photos"."ccontenttype" IS '图片文件类型';
COMMENT ON COLUMN "public"."t_interaction_product_member_photos"."bfile" IS '图片文件';
COMMENT ON COLUMN "public"."t_interaction_product_member_photos"."iwebsiteid" IS '站点编号';

-- ----------------------------
-- Table structure for t_interaction_product_member_photos_test
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_interaction_product_member_photos_test";
CREATE TABLE "public"."t_interaction_product_member_photos_test" (
"iid" int4 DEFAULT nextval('t_interaction_product_member_photos_iid_seq'::regclass) NOT NULL,
"clistingid" varchar(40) COLLATE "default",
"csku" varchar(50) COLLATE "default",
"cmemberemail" varchar(100) COLLATE "default",
"icommentid" int4,
"cimageurl" varchar(600) COLLATE "default",
"clabel" varchar(50) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now(),
"cauditoruser" varchar(20) COLLATE "default",
"dauditordate" timestamp(6),
"iauditorstatus" int4 DEFAULT 0,
"ccontenttype" varchar(40) COLLATE "default",
"bfile" bytea,
"iwebsiteid" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for t_interaction_product_member_video
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_interaction_product_member_video";
CREATE TABLE "public"."t_interaction_product_member_video" (
"iid" int4 DEFAULT nextval('t_interaction_product_member_video_iid_seq'::regclass) NOT NULL,
"clistingid" varchar(40) COLLATE "default",
"csku" varchar(50) COLLATE "default",
"cmemberemail" varchar(100) COLLATE "default",
"icomment" int4,
"cvideourl" varchar(600) COLLATE "default",
"clabel" varchar(50) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now(),
"cauditoruser" varchar(20) COLLATE "default",
"dauditordate" timestamp(6),
"iauditorstatus" int4 DEFAULT 0,
"iwebsiteid" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_interaction_product_member_video" IS '产品客户上传视频表';
COMMENT ON COLUMN "public"."t_interaction_product_member_video"."clistingid" IS '广告编号';
COMMENT ON COLUMN "public"."t_interaction_product_member_video"."csku" IS 'SKU';
COMMENT ON COLUMN "public"."t_interaction_product_member_video"."cmemberemail" IS '用户邮箱';
COMMENT ON COLUMN "public"."t_interaction_product_member_video"."icomment" IS '评论编号';
COMMENT ON COLUMN "public"."t_interaction_product_member_video"."cvideourl" IS '视频路径';
COMMENT ON COLUMN "public"."t_interaction_product_member_video"."clabel" IS '视频label';
COMMENT ON COLUMN "public"."t_interaction_product_member_video"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_interaction_product_member_video"."cauditoruser" IS '审核人';
COMMENT ON COLUMN "public"."t_interaction_product_member_video"."dauditordate" IS '审核时间';
COMMENT ON COLUMN "public"."t_interaction_product_member_video"."iauditorstatus" IS '审核状态(0未审、1通过、2未通过)';
COMMENT ON COLUMN "public"."t_interaction_product_member_video"."iwebsiteid" IS '站点编号';

-- ----------------------------
-- Table structure for t_interaction_product_post
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_interaction_product_post";
CREATE TABLE "public"."t_interaction_product_post" (
"iid" int4 DEFAULT nextval('t_interaction_faq_iid_seq'::regclass) NOT NULL,
"clistingid" varchar(50) COLLATE "default",
"itypeid" int4,
"csku" varchar(40) COLLATE "default",
"ctitle" varchar(150) COLLATE "default",
"cquestion" varchar(600) COLLATE "default",
"canswer" varchar(600) COLLATE "default",
"cmemberemail" varchar(100) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now(),
"crecoveryuser" varchar(20) COLLATE "default",
"drecoverydate" timestamp(6),
"istate" int4 DEFAULT 0,
"breply" bool DEFAULT false,
"iwebsiteid" int4,
"ilanguageid" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_interaction_product_post" IS '产品FAQ表';
COMMENT ON COLUMN "public"."t_interaction_product_post"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_interaction_product_post"."clistingid" IS '广告编号';
COMMENT ON COLUMN "public"."t_interaction_product_post"."itypeid" IS '类型编号';
COMMENT ON COLUMN "public"."t_interaction_product_post"."csku" IS 'SKU';
COMMENT ON COLUMN "public"."t_interaction_product_post"."ctitle" IS '标题';
COMMENT ON COLUMN "public"."t_interaction_product_post"."cquestion" IS '问题';
COMMENT ON COLUMN "public"."t_interaction_product_post"."canswer" IS '答案';
COMMENT ON COLUMN "public"."t_interaction_product_post"."cmemberemail" IS '客户邮箱';
COMMENT ON COLUMN "public"."t_interaction_product_post"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_interaction_product_post"."crecoveryuser" IS '回复人';
COMMENT ON COLUMN "public"."t_interaction_product_post"."drecoverydate" IS '回复时间';
COMMENT ON COLUMN "public"."t_interaction_product_post"."istate" IS '审核状态(0未审、1通过、2未通过)';
COMMENT ON COLUMN "public"."t_interaction_product_post"."breply" IS '是否以回复';
COMMENT ON COLUMN "public"."t_interaction_product_post"."iwebsiteid" IS '站点编号';
COMMENT ON COLUMN "public"."t_interaction_product_post"."ilanguageid" IS '语言编号';

-- ----------------------------
-- Table structure for t_interaction_product_post_evaluate
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_interaction_product_post_evaluate";
CREATE TABLE "public"."t_interaction_product_post_evaluate" (
"iid" int4 DEFAULT nextval('t_interaction_faq_evaluate_iid_seq'::regclass) NOT NULL,
"ipostid" int4,
"ihelpfulcode" int4,
"cmemberemail" varchar(100) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_interaction_product_post_evaluate" IS '产品FAQ评价表';
COMMENT ON COLUMN "public"."t_interaction_product_post_evaluate"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_interaction_product_post_evaluate"."ipostid" IS 'FAQ编号';
COMMENT ON COLUMN "public"."t_interaction_product_post_evaluate"."ihelpfulcode" IS '是否有帮助(0:没有帮助1:有帮助)';
COMMENT ON COLUMN "public"."t_interaction_product_post_evaluate"."cmemberemail" IS '用户邮箱';
COMMENT ON COLUMN "public"."t_interaction_product_post_evaluate"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_interaction_product_post_help_qty
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_interaction_product_post_help_qty";
CREATE TABLE "public"."t_interaction_product_post_help_qty" (
"iid" int4 DEFAULT nextval('t_interaction_faq_help_qty_iid_seq'::regclass) NOT NULL,
"ipostid" int4,
"ihelpfulqty" int4 DEFAULT 0,
"inothelpfulqty" int4 DEFAULT 0,
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_interaction_product_post_help_qty" IS '产品FAQ帮助评价表';
COMMENT ON COLUMN "public"."t_interaction_product_post_help_qty"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_interaction_product_post_help_qty"."ipostid" IS 'FAQ编号';
COMMENT ON COLUMN "public"."t_interaction_product_post_help_qty"."ihelpfulqty" IS '有用帮助数量';
COMMENT ON COLUMN "public"."t_interaction_product_post_help_qty"."inothelpfulqty" IS '没有用帮助数量';
COMMENT ON COLUMN "public"."t_interaction_product_post_help_qty"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_interaction_product_post_type
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_interaction_product_post_type";
CREATE TABLE "public"."t_interaction_product_post_type" (
"iid" int4 DEFAULT nextval('t_interaction_faq_type_iid_seq'::regclass) NOT NULL,
"ccode" varchar(40) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_interaction_product_post_type" IS '产品FAQ表';
COMMENT ON COLUMN "public"."t_interaction_product_post_type"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_interaction_product_post_type"."ccode" IS '类型名称';
COMMENT ON COLUMN "public"."t_interaction_product_post_type"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_price_match
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_price_match";
CREATE TABLE "public"."t_price_match" (
"iid" int4 DEFAULT nextval('t_price_match_iid_seq'::regclass) NOT NULL,
"clistingid" varchar(40) COLLATE "default",
"csku" varchar(50) COLLATE "default",
"iwebsiteid" int4,
"csourceurl" varchar(200) COLLATE "default",
"cemail" varchar(100) COLLATE "default",
"flowerprice" float8,
"cinquiry" varchar(2000) COLLATE "default",
"cstatic" varchar(40) COLLATE "default" DEFAULT 'Pending'::character varying,
"dcreatedate" timestamp(6) DEFAULT now(),
"cuseremail" varchar(40) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_price_match" IS '价格比较记录表';
COMMENT ON COLUMN "public"."t_price_match"."clistingid" IS '广告编号';
COMMENT ON COLUMN "public"."t_price_match"."csku" IS 'SKU';
COMMENT ON COLUMN "public"."t_price_match"."iwebsiteid" IS '站点编号';
COMMENT ON COLUMN "public"."t_price_match"."csourceurl" IS '目标地址';
COMMENT ON COLUMN "public"."t_price_match"."cemail" IS 'email';
COMMENT ON COLUMN "public"."t_price_match"."flowerprice" IS '低价格';
COMMENT ON COLUMN "public"."t_price_match"."cinquiry" IS '备注';
COMMENT ON COLUMN "public"."t_price_match"."cstatic" IS '状态';
COMMENT ON COLUMN "public"."t_price_match"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_price_match"."cuseremail" IS '用户email';

-- ----------------------------
-- Table structure for t_product_collect
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_product_collect";
CREATE TABLE "public"."t_product_collect" (
"iid" int4 DEFAULT nextval('t_product_collect_iid_seq'::regclass) NOT NULL,
"cemail" varchar(100) COLLATE "default",
"clistingid" varchar(500) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now(),
"iwebsiteid" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_product_collect" IS '产品收藏表';
COMMENT ON COLUMN "public"."t_product_collect"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_product_collect"."cemail" IS '用户Email';
COMMENT ON COLUMN "public"."t_product_collect"."clistingid" IS '广告编号 集合';
COMMENT ON COLUMN "public"."t_product_collect"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_recommend_label
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_recommend_label";
CREATE TABLE "public"."t_recommend_label" (
"iid" int4 DEFAULT nextval('t_recommend_label_iid_seq'::regclass) NOT NULL,
"icategoryid" int4,
"itype" int4 DEFAULT 1,
"iwebsiteid" int4,
"cdevice" varchar(40) COLLATE "default",
"ipriority" int4 DEFAULT 1,
"bshow" bool DEFAULT false,
"ccreateuser" varchar(30) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_recommend_label" IS '客户喜爱推荐标签表';
COMMENT ON COLUMN "public"."t_recommend_label"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_recommend_label"."icategoryid" IS '品类ID';
COMMENT ON COLUMN "public"."t_recommend_label"."itype" IS '标签类型';
COMMENT ON COLUMN "public"."t_recommend_label"."iwebsiteid" IS '站点ID';
COMMENT ON COLUMN "public"."t_recommend_label"."cdevice" IS '设备';
COMMENT ON COLUMN "public"."t_recommend_label"."ipriority" IS '优先级(数字越低,优先级越高.从1开始)';
COMMENT ON COLUMN "public"."t_recommend_label"."bshow" IS '是否显示';
COMMENT ON COLUMN "public"."t_recommend_label"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_recommend_label"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_recommend_label_name
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_recommend_label_name";
CREATE TABLE "public"."t_recommend_label_name" (
"ilabelid" int4,
"ilanguageid" int4,
"clabelname" varchar(100) COLLATE "default",
"cvalue" varchar(300) COLLATE "default" DEFAULT ''::character varying,
"cimageurl" varchar(600) COLLATE "default",
"cimages" bytea
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_recommend_label_name" IS '客户喜爱推荐标签名字对应表';
COMMENT ON COLUMN "public"."t_recommend_label_name"."ilabelid" IS '标签ID';
COMMENT ON COLUMN "public"."t_recommend_label_name"."ilanguageid" IS '语言ID';
COMMENT ON COLUMN "public"."t_recommend_label_name"."clabelname" IS '标签名称';
COMMENT ON COLUMN "public"."t_recommend_label_name"."cvalue" IS '内容';
COMMENT ON COLUMN "public"."t_recommend_label_name"."cimageurl" IS '图片路径';
COMMENT ON COLUMN "public"."t_recommend_label_name"."cimages" IS '图片';

-- ----------------------------
-- Table structure for t_report_error
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_report_error";
CREATE TABLE "public"."t_report_error" (
"iid" int4 DEFAULT nextval('t_report_error_iid_seq'::regclass) NOT NULL,
"clistingid" varchar(40) COLLATE "default",
"csku" varchar(50) COLLATE "default",
"cerrortype" varchar(100) COLLATE "default",
"cemail" varchar(100) COLLATE "default",
"cinquiry" varchar(2000) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_report_error" IS '错误报告记录表';
COMMENT ON COLUMN "public"."t_report_error"."clistingid" IS '广告编号';
COMMENT ON COLUMN "public"."t_report_error"."csku" IS 'SKU';
COMMENT ON COLUMN "public"."t_report_error"."cerrortype" IS '错误类型';
COMMENT ON COLUMN "public"."t_report_error"."cemail" IS 'email';
COMMENT ON COLUMN "public"."t_report_error"."cinquiry" IS '备注';
COMMENT ON COLUMN "public"."t_report_error"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_super_deals
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_super_deals";
CREATE TABLE "public"."t_super_deals" (
"iid" int4 DEFAULT nextval('t_super_deals_iid_seq'::regclass) NOT NULL,
"clistingid" varchar(40) COLLATE "default",
"icategoryrootid" int4,
"csku" varchar(30) COLLATE "default",
"ccreateuser" varchar(20) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now(),
"bshow" bool,
"iwebsiteid" int4
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_super_deals" IS 'super deal表';
COMMENT ON COLUMN "public"."t_super_deals"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_super_deals"."clistingid" IS '广告 编号';
COMMENT ON COLUMN "public"."t_super_deals"."icategoryrootid" IS '顶级品类编号';
COMMENT ON COLUMN "public"."t_super_deals"."csku" IS 'SKU';
COMMENT ON COLUMN "public"."t_super_deals"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_super_deals"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_super_deals"."bshow" IS '是否显示';
COMMENT ON COLUMN "public"."t_super_deals"."iwebsiteid" IS '站点编号';

-- ----------------------------
-- Table structure for t_wholesale_inquiry
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_wholesale_inquiry";
CREATE TABLE "public"."t_wholesale_inquiry" (
"iid" int4 DEFAULT nextval('t_wholesale_inquiry_iid_seq'::regclass) NOT NULL,
"clistingid" varchar(40) COLLATE "default",
"csku" varchar(50) COLLATE "default",
"cname" varchar(50) COLLATE "default",
"cphone" varchar(60) COLLATE "default",
"cemail" varchar(100) COLLATE "default",
"ftargetprice" float8,
"iquantity" int4,
"ccountrystate" varchar(100) COLLATE "default",
"ccompany" varchar(60) COLLATE "default",
"cinquiry" varchar(2000) COLLATE "default",
"dcreatedate" timestamp(6)
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_wholesale_inquiry" IS '客户批发讯盘记录表';
COMMENT ON COLUMN "public"."t_wholesale_inquiry"."clistingid" IS '广告编号';
COMMENT ON COLUMN "public"."t_wholesale_inquiry"."csku" IS 'SKU';
COMMENT ON COLUMN "public"."t_wholesale_inquiry"."cname" IS '姓名';
COMMENT ON COLUMN "public"."t_wholesale_inquiry"."cphone" IS '联系电话';
COMMENT ON COLUMN "public"."t_wholesale_inquiry"."cemail" IS 'email';
COMMENT ON COLUMN "public"."t_wholesale_inquiry"."ftargetprice" IS '目标价格';
COMMENT ON COLUMN "public"."t_wholesale_inquiry"."iquantity" IS '数量';
COMMENT ON COLUMN "public"."t_wholesale_inquiry"."ccountrystate" IS '国家';
COMMENT ON COLUMN "public"."t_wholesale_inquiry"."ccompany" IS '公司';
COMMENT ON COLUMN "public"."t_wholesale_inquiry"."cinquiry" IS '备注';
COMMENT ON COLUMN "public"."t_wholesale_inquiry"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------
ALTER SEQUENCE "public"."t_dropship_product_iid_seq" OWNED BY "t_dropship_product"."iid";
ALTER SEQUENCE "public"."t_interaction_comment_help_evaluate_iid_seq" OWNED BY "t_interaction_comment_help_evaluate"."iid";
ALTER SEQUENCE "public"."t_interaction_comment_help_qty_iid_seq" OWNED BY "t_interaction_comment_help_qty"."iid";
ALTER SEQUENCE "public"."t_interaction_comment_iid_seq" OWNED BY "t_interaction_comment"."iid";
ALTER SEQUENCE "public"."t_interaction_faq_evaluate_iid_seq" OWNED BY "t_interaction_product_post_evaluate"."iid";
ALTER SEQUENCE "public"."t_interaction_faq_help_qty_iid_seq" OWNED BY "t_interaction_product_post_help_qty"."iid";
ALTER SEQUENCE "public"."t_interaction_faq_iid_seq" OWNED BY "t_interaction_product_post"."iid";
ALTER SEQUENCE "public"."t_interaction_faq_type_iid_seq" OWNED BY "t_interaction_product_post_type"."iid";
ALTER SEQUENCE "public"."t_interaction_product_browse_iid_seq" OWNED BY "t_interaction_product_browse"."iid";
ALTER SEQUENCE "public"."t_interaction_product_member_photos_iid_seq" OWNED BY "t_interaction_product_member_photos"."iid";
ALTER SEQUENCE "public"."t_interaction_product_member_video_iid_seq" OWNED BY "t_interaction_product_member_video"."iid";
ALTER SEQUENCE "public"."t_price_match_iid_seq" OWNED BY "t_price_match"."iid";
ALTER SEQUENCE "public"."t_product_collect_iid_seq" OWNED BY "t_product_collect"."iid";
ALTER SEQUENCE "public"."t_recommend_label_iid_seq" OWNED BY "t_recommend_label"."iid";
ALTER SEQUENCE "public"."t_report_error_iid_seq" OWNED BY "t_report_error"."iid";
ALTER SEQUENCE "public"."t_super_deals_iid_seq" OWNED BY "t_super_deals"."iid";
ALTER SEQUENCE "public"."t_wholesale_inquiry_iid_seq" OWNED BY "t_wholesale_inquiry"."iid";

-- ----------------------------
-- Primary Key structure for table databasechangeloglock
-- ----------------------------
ALTER TABLE "public"."databasechangeloglock" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table t_dropship_product
-- ----------------------------
ALTER TABLE "public"."t_dropship_product" ADD UNIQUE ("cemail", "csku", "iwebsiteid");

-- ----------------------------
-- Primary Key structure for table t_dropship_product
-- ----------------------------
ALTER TABLE "public"."t_dropship_product" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Indexes structure for table t_interaction_comment
-- ----------------------------
CREATE INDEX "idx_interactioncomment_listingid_istate" ON "public"."t_interaction_comment" USING btree (clistingid, istate);
CREATE INDEX "index_t_interaction_comment_1" ON "public"."t_interaction_comment" USING btree (clistingid, istate, iwebsiteid);
CREATE INDEX "index_t_interaction_comment_2" ON "public"."t_interaction_comment" USING btree (cmemberemail, istate, iwebsiteid);

-- ----------------------------
-- Primary Key structure for table t_interaction_comment
-- ----------------------------
ALTER TABLE "public"."t_interaction_comment" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_interaction_comment_help_evaluate
-- ----------------------------
ALTER TABLE "public"."t_interaction_comment_help_evaluate" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_interaction_comment_help_qty
-- ----------------------------
ALTER TABLE "public"."t_interaction_comment_help_qty" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Indexes structure for table t_interaction_product_browse
-- ----------------------------
CREATE INDEX "idx_show_history-clistingid" ON "public"."t_interaction_product_browse" USING btree (clistingid);
CREATE INDEX "idx_show_history-cltc" ON "public"."t_interaction_product_browse" USING btree (cltc);
CREATE INDEX "t_interaction_product_browse_imemberid_index" ON "public"."t_interaction_product_browse" USING btree (imemberid);

-- ----------------------------
-- Primary Key structure for table t_interaction_product_browse
-- ----------------------------
ALTER TABLE "public"."t_interaction_product_browse" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Indexes structure for table t_interaction_product_member_photos
-- ----------------------------
CREATE INDEX "index_t_interaction_product_member_photos_1" ON "public"."t_interaction_product_member_photos" USING btree (iwebsiteid, icommentid, iauditorstatus);

-- ----------------------------
-- Primary Key structure for table t_interaction_product_member_photos
-- ----------------------------
ALTER TABLE "public"."t_interaction_product_member_photos" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Indexes structure for table t_interaction_product_member_video
-- ----------------------------
CREATE INDEX "index_t_interaction_product_member_video_1" ON "public"."t_interaction_product_member_video" USING btree (iwebsiteid, icomment, iauditorstatus);

-- ----------------------------
-- Primary Key structure for table t_interaction_product_member_video
-- ----------------------------
ALTER TABLE "public"."t_interaction_product_member_video" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_interaction_product_post
-- ----------------------------
ALTER TABLE "public"."t_interaction_product_post" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_interaction_product_post_evaluate
-- ----------------------------
ALTER TABLE "public"."t_interaction_product_post_evaluate" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_interaction_product_post_help_qty
-- ----------------------------
ALTER TABLE "public"."t_interaction_product_post_help_qty" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_interaction_product_post_type
-- ----------------------------
ALTER TABLE "public"."t_interaction_product_post_type" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_price_match
-- ----------------------------
ALTER TABLE "public"."t_price_match" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Indexes structure for table t_product_collect
-- ----------------------------
CREATE INDEX "index_t_product_collect_1" ON "public"."t_product_collect" USING btree (clistingid);
CREATE INDEX "index_t_product_collect_2" ON "public"."t_product_collect" USING btree (cemail, iwebsiteid);

-- ----------------------------
-- Primary Key structure for table t_product_collect
-- ----------------------------
ALTER TABLE "public"."t_product_collect" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_recommend_label
-- ----------------------------
ALTER TABLE "public"."t_recommend_label" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_report_error
-- ----------------------------
ALTER TABLE "public"."t_report_error" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_super_deals
-- ----------------------------
ALTER TABLE "public"."t_super_deals" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_wholesale_inquiry
-- ----------------------------
ALTER TABLE "public"."t_wholesale_inquiry" ADD PRIMARY KEY ("iid");
