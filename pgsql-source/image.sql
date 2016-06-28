/*
Navicat PGSQL Data Transfer

Source Server         : uat
Source Server Version : 90405
Source Host           : 192.168.220.52:5432
Source Database       : image
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 90405
File Encoding         : 65001

Date: 2016-06-28 18:13:01
*/


-- ----------------------------
-- Sequence structure for t_file_route_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_file_route_iid_seq";
CREATE SEQUENCE "public"."t_file_route_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 10280
 CACHE 1;
SELECT setval('"public"."t_file_route_iid_seq"', 10280, true);

-- ----------------------------
-- Sequence structure for t_img_cache_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_img_cache_iid_seq";
CREATE SEQUENCE "public"."t_img_cache_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 90
 CACHE 1;
SELECT setval('"public"."t_img_cache_iid_seq"', 90, true);

-- ----------------------------
-- Sequence structure for t_img_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_img_iid_seq";
CREATE SEQUENCE "public"."t_img_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 722
 CACHE 1;
SELECT setval('"public"."t_img_iid_seq"', 722, true);

-- ----------------------------
-- Sequence structure for t_img_use_mapping_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_img_use_mapping_iid_seq";
CREATE SEQUENCE "public"."t_img_use_mapping_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 206
 CACHE 1;
SELECT setval('"public"."t_img_use_mapping_iid_seq"', 206, true);

-- ----------------------------
-- Sequence structure for t_uploadfile_path_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_uploadfile_path_iid_seq";
CREATE SEQUENCE "public"."t_uploadfile_path_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;
SELECT setval('"public"."t_uploadfile_path_iid_seq"', 1, true);

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
-- Table structure for t_file_route
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_file_route";
CREATE TABLE "public"."t_file_route" (
"iid" int8 DEFAULT nextval('t_file_route_iid_seq'::regclass) NOT NULL,
"cpath" varchar(300) COLLATE "default",
"croute" varchar(200) COLLATE "default",
"ctype" varchar(100) COLLATE "default",
"iwidth" int4,
"iheight" int4,
"cmd5" varchar(50) COLLATE "default",
"bcompress" bool DEFAULT true,
"bmodified" bool DEFAULT false,
"bamazon" bool DEFAULT false
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_file_route" IS '图片表';
COMMENT ON COLUMN "public"."t_file_route"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_file_route"."cpath" IS '图片相对路径';
COMMENT ON COLUMN "public"."t_file_route"."croute" IS '图片路径';
COMMENT ON COLUMN "public"."t_file_route"."ctype" IS '内容标识';
COMMENT ON COLUMN "public"."t_file_route"."iwidth" IS '宽度';
COMMENT ON COLUMN "public"."t_file_route"."iheight" IS '高度';
COMMENT ON COLUMN "public"."t_file_route"."cmd5" IS '图片内容的MD5';

-- ----------------------------
-- Table structure for t_file_route1
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_file_route1";
CREATE TABLE "public"."t_file_route1" (
"iid" int8 DEFAULT nextval('t_file_route_iid_seq'::regclass) NOT NULL,
"cpath" varchar(300) COLLATE "default",
"croute" varchar(200) COLLATE "default",
"ctype" varchar(100) COLLATE "default",
"iwidth" int4,
"iheight" int4,
"cmd5" varchar(50) COLLATE "default",
"bcompress" bool DEFAULT true,
"bmodified" bool DEFAULT false,
"bamazon" bool DEFAULT false
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_file_route1" IS '图片表';
COMMENT ON COLUMN "public"."t_file_route1"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_file_route1"."cpath" IS '图片相对路径';
COMMENT ON COLUMN "public"."t_file_route1"."croute" IS '图片路径';
COMMENT ON COLUMN "public"."t_file_route1"."ctype" IS '内容标识';
COMMENT ON COLUMN "public"."t_file_route1"."iwidth" IS '宽度';
COMMENT ON COLUMN "public"."t_file_route1"."iheight" IS '高度';
COMMENT ON COLUMN "public"."t_file_route1"."cmd5" IS '图片内容的MD5';

-- ----------------------------
-- Table structure for t_img
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_img";
CREATE TABLE "public"."t_img" (
"iid" int8 DEFAULT nextval('t_img_iid_seq'::regclass) NOT NULL,
"bcontent" bytea,
"cpath" varchar(500) COLLATE "default",
"ccontenttype" varchar(100) COLLATE "default",
"cmd5" varchar(50) COLLATE "default",
"cfastdfsurl" varchar(200) COLLATE "default",
"cdnpath" varchar(500) COLLATE "default",
"iwebsiteid" int4 DEFAULT 1
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_img" IS '图片表';
COMMENT ON COLUMN "public"."t_img"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_img"."bcontent" IS '二进制数据';
COMMENT ON COLUMN "public"."t_img"."cpath" IS '图片路径';
COMMENT ON COLUMN "public"."t_img"."ccontenttype" IS '内容标识';
COMMENT ON COLUMN "public"."t_img"."cmd5" IS '图片内容的MD5';
COMMENT ON COLUMN "public"."t_img"."cdnpath" IS 'cdn路径';

-- ----------------------------
-- Table structure for t_img_cache
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_img_cache";
CREATE TABLE "public"."t_img_cache" (
"iid" int8 DEFAULT nextval('t_img_cache_iid_seq'::regclass) NOT NULL,
"bcontent" bytea,
"cpath" varchar(500) COLLATE "default",
"iwidth" int4,
"iheight" int4,
"ccontenttype" varchar(100) COLLATE "default",
"cmd5" varchar(50) COLLATE "default",
"ccreatedate" timestamp(6) DEFAULT now(),
"cfastdfsurl" varchar(200) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_img_cache" IS '图片缓存表(保存自动缩少图片)';
COMMENT ON COLUMN "public"."t_img_cache"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_img_cache"."bcontent" IS '二进制数据';
COMMENT ON COLUMN "public"."t_img_cache"."cpath" IS '图片路径';
COMMENT ON COLUMN "public"."t_img_cache"."ccontenttype" IS '内容标识';
COMMENT ON COLUMN "public"."t_img_cache"."cmd5" IS '图片内容的MD5';

-- ----------------------------
-- Table structure for t_img_use_mapping
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_img_use_mapping";
CREATE TABLE "public"."t_img_use_mapping" (
"iid" int8 DEFAULT nextval('t_img_use_mapping_iid_seq'::regclass) NOT NULL,
"iimgid" int8,
"cpath" varchar(500) COLLATE "default",
"clabel" varchar(50) COLLATE "default",
"ccreateuser" varchar(50) COLLATE "default",
"dcreatedate" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_img_use_mapping" IS '文档用途对应表';
COMMENT ON COLUMN "public"."t_img_use_mapping"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_img_use_mapping"."iimgid" IS '文档编号';
COMMENT ON COLUMN "public"."t_img_use_mapping"."cpath" IS '文件路径';
COMMENT ON COLUMN "public"."t_img_use_mapping"."clabel" IS '文件用途标签';
COMMENT ON COLUMN "public"."t_img_use_mapping"."ccreateuser" IS '创建人';
COMMENT ON COLUMN "public"."t_img_use_mapping"."dcreatedate" IS '创建时间';

-- ----------------------------
-- Table structure for t_product_image_history
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_product_image_history";
CREATE TABLE "public"."t_product_image_history" (
"clistingid" varchar(40) COLLATE "default",
"cimageurl" varchar(600) COLLATE "default",
"istatus" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for t_product_image_temp
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_product_image_temp";
CREATE TABLE "public"."t_product_image_temp" (
"iid" int4 NOT NULL,
"cimageurl" varchar(600) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Table structure for t_uploadfile_path
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_uploadfile_path";
CREATE TABLE "public"."t_uploadfile_path" (
"iid" int8 DEFAULT nextval('t_uploadfile_path_iid_seq'::regclass) NOT NULL,
"cpath" varchar(50) COLLATE "default",
"ccreateuser" varchar(50) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_uploadfile_path" IS '文档路径表';
COMMENT ON COLUMN "public"."t_uploadfile_path"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_uploadfile_path"."cpath" IS '路径';
COMMENT ON COLUMN "public"."t_uploadfile_path"."ccreateuser" IS '创建人';

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------
ALTER SEQUENCE "public"."t_file_route_iid_seq" OWNED BY "t_file_route"."iid";
ALTER SEQUENCE "public"."t_img_cache_iid_seq" OWNED BY "t_img_cache"."iid";
ALTER SEQUENCE "public"."t_img_iid_seq" OWNED BY "t_img"."iid";
ALTER SEQUENCE "public"."t_img_use_mapping_iid_seq" OWNED BY "t_img_use_mapping"."iid";
ALTER SEQUENCE "public"."t_uploadfile_path_iid_seq" OWNED BY "t_uploadfile_path"."iid";

-- ----------------------------
-- Primary Key structure for table databasechangeloglock
-- ----------------------------
ALTER TABLE "public"."databasechangeloglock" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table t_file_route
-- ----------------------------
ALTER TABLE "public"."t_file_route" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_file_route1
-- ----------------------------
ALTER TABLE "public"."t_file_route1" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Indexes structure for table t_img
-- ----------------------------
CREATE INDEX "idx_t_file_route_cpath" ON "public"."t_img" USING btree (cpath);
CREATE INDEX "idx_t_img_cpath" ON "public"."t_img" USING btree (cpath);

-- ----------------------------
-- Uniques structure for table t_img
-- ----------------------------
ALTER TABLE "public"."t_img" ADD UNIQUE ("cpath");

-- ----------------------------
-- Primary Key structure for table t_img
-- ----------------------------
ALTER TABLE "public"."t_img" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Indexes structure for table t_img_cache
-- ----------------------------
CREATE INDEX "idx_t_img_cache_cpath" ON "public"."t_img_cache" USING btree (cpath, iwidth, iheight);

-- ----------------------------
-- Uniques structure for table t_img_cache
-- ----------------------------
ALTER TABLE "public"."t_img_cache" ADD UNIQUE ("cpath", "iwidth", "iheight");

-- ----------------------------
-- Primary Key structure for table t_img_cache
-- ----------------------------
ALTER TABLE "public"."t_img_cache" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Indexes structure for table t_img_use_mapping
-- ----------------------------
CREATE INDEX "idx_t_img_use_mapping_imgid" ON "public"."t_img_use_mapping" USING btree (iimgid);

-- ----------------------------
-- Primary Key structure for table t_img_use_mapping
-- ----------------------------
ALTER TABLE "public"."t_img_use_mapping" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Indexes structure for table t_product_image_temp
-- ----------------------------
CREATE INDEX "idx_cimageurl" ON "public"."t_product_image_temp" USING btree (cimageurl);

-- ----------------------------
-- Primary Key structure for table t_uploadfile_path
-- ----------------------------
ALTER TABLE "public"."t_uploadfile_path" ADD PRIMARY KEY ("iid");
