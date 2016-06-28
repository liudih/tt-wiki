/*
Navicat PGSQL Data Transfer

Source Server         : uat
Source Server Version : 90405
Source Host           : 192.168.220.52:5432
Source Database       : email
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 90405
File Encoding         : 65001

Date: 2016-06-28 18:12:49
*/


-- ----------------------------
-- Sequence structure for logging_event_event_id_seq
-- ----------------------------
DROP SEQUENCE "public"."logging_event_event_id_seq";
CREATE SEQUENCE "public"."logging_event_event_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 473717
 CACHE 1;
SELECT setval('"public"."logging_event_event_id_seq"', 473717, true);

-- ----------------------------
-- Sequence structure for t_email_emaillog_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_email_emaillog_iid_seq";
CREATE SEQUENCE "public"."t_email_emaillog_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 5413421
 CACHE 1;
SELECT setval('"public"."t_email_emaillog_iid_seq"', 5413421, true);

-- ----------------------------
-- Sequence structure for t_email_service_send_fail_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_email_service_send_fail_iid_seq";
CREATE SEQUENCE "public"."t_email_service_send_fail_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 100
 CACHE 1;
SELECT setval('"public"."t_email_service_send_fail_iid_seq"', 100, true);

-- ----------------------------
-- Sequence structure for t_email_service_send_ok_iid_seq
-- ----------------------------
DROP SEQUENCE "public"."t_email_service_send_ok_iid_seq";
CREATE SEQUENCE "public"."t_email_service_send_ok_iid_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 2661
 CACHE 1;
SELECT setval('"public"."t_email_service_send_ok_iid_seq"', 2661, true);

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
-- Table structure for logging_event
-- ----------------------------
DROP TABLE IF EXISTS "public"."logging_event";
CREATE TABLE "public"."logging_event" (
"timestmp" int8,
"formatted_message" text COLLATE "default",
"logger_name" varchar(254) COLLATE "default",
"level_string" varchar(254) COLLATE "default",
"thread_name" varchar(254) COLLATE "default",
"reference_flag" int2,
"arg0" varchar(254) COLLATE "default",
"arg1" varchar(254) COLLATE "default",
"arg2" varchar(254) COLLATE "default",
"arg3" varchar(254) COLLATE "default",
"caller_filename" varchar(254) COLLATE "default",
"caller_class" varchar(254) COLLATE "default",
"caller_method" varchar(254) COLLATE "default",
"caller_line" char(4) COLLATE "default",
"event_id" int8 DEFAULT nextval('logging_event_event_id_seq'::regclass) NOT NULL
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."logging_event" IS 'logback日志记录';
COMMENT ON COLUMN "public"."logging_event"."timestmp" IS '时间戳';
COMMENT ON COLUMN "public"."logging_event"."formatted_message" IS '日志信息';
COMMENT ON COLUMN "public"."logging_event"."logger_name" IS '日志名称';
COMMENT ON COLUMN "public"."logging_event"."level_string" IS '等级';
COMMENT ON COLUMN "public"."logging_event"."event_id" IS '主键';

-- ----------------------------
-- Table structure for logging_event_exception
-- ----------------------------
DROP TABLE IF EXISTS "public"."logging_event_exception";
CREATE TABLE "public"."logging_event_exception" (
"event_id" int8,
"i" int2,
"trace_line" varchar(254) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."logging_event_exception" IS 'logback异常日志记录';
COMMENT ON COLUMN "public"."logging_event_exception"."event_id" IS '时间戳';
COMMENT ON COLUMN "public"."logging_event_exception"."i" IS '日志信息';
COMMENT ON COLUMN "public"."logging_event_exception"."trace_line" IS '日志名称';

-- ----------------------------
-- Table structure for logging_event_property
-- ----------------------------
DROP TABLE IF EXISTS "public"."logging_event_property";
CREATE TABLE "public"."logging_event_property" (
"event_id" int8,
"mapped_key" varchar(254) COLLATE "default",
"mapped_value" text COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."logging_event_property" IS 'logback对照属性';
COMMENT ON COLUMN "public"."logging_event_property"."event_id" IS '时间戳';

-- ----------------------------
-- Table structure for t_email_emaillog
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_email_emaillog";
CREATE TABLE "public"."t_email_emaillog" (
"iid" int4 DEFAULT nextval('t_email_emaillog_iid_seq'::regclass) NOT NULL,
"cfromemail" varchar(100) COLLATE "default",
"ctoemail" varchar(100) COLLATE "default",
"ctitle" varchar(500) COLLATE "default",
"ccontent" varchar(30000) COLLATE "default",
"dsenddate" timestamp(6) DEFAULT now(),
"dcreatedate" timestamp(6) DEFAULT now(),
"bsendstatus" bool,
"cthirdresult" varchar(1000) COLLATE "default",
"cfailreason" varchar(1000) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_email_emaillog" IS '邮件发送日志';
COMMENT ON COLUMN "public"."t_email_emaillog"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_email_emaillog"."cfromemail" IS '发件人邮箱';
COMMENT ON COLUMN "public"."t_email_emaillog"."ctoemail" IS '接收人邮箱';
COMMENT ON COLUMN "public"."t_email_emaillog"."ctitle" IS '邮件标题';
COMMENT ON COLUMN "public"."t_email_emaillog"."ccontent" IS '邮件正文';
COMMENT ON COLUMN "public"."t_email_emaillog"."dsenddate" IS '发送时间';
COMMENT ON COLUMN "public"."t_email_emaillog"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_email_emaillog"."bsendstatus" IS '发送结果';
COMMENT ON COLUMN "public"."t_email_emaillog"."cthirdresult" IS '第三方返回结果';
COMMENT ON COLUMN "public"."t_email_emaillog"."cfailreason" IS '失败原因';

-- ----------------------------
-- Table structure for t_email_service_send_fail
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_email_service_send_fail";
CREATE TABLE "public"."t_email_service_send_fail" (
"iid" int4 DEFAULT nextval('t_email_service_send_fail_iid_seq'::regclass) NOT NULL,
"cfromemail" varchar(100) COLLATE "default",
"ctoemail" varchar(100) COLLATE "default",
"ctitle" varchar(500) COLLATE "default",
"ccontent" varchar(30000) COLLATE "default",
"dcreatedate" timestamp(6),
"websiteid" int4,
"descripte" varchar(100) COLLATE "default",
"fromname" varchar(50) COLLATE "default",
"failcount" int4,
"reason" varchar(500) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_email_service_send_fail" IS '用户邮件发送失败记录表';
COMMENT ON COLUMN "public"."t_email_service_send_fail"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_email_service_send_fail"."cfromemail" IS '发件人邮箱';
COMMENT ON COLUMN "public"."t_email_service_send_fail"."ctoemail" IS '收件人邮箱';
COMMENT ON COLUMN "public"."t_email_service_send_fail"."ctitle" IS '标题';
COMMENT ON COLUMN "public"."t_email_service_send_fail"."ccontent" IS '邮件内容';
COMMENT ON COLUMN "public"."t_email_service_send_fail"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_email_service_send_fail"."websiteid" IS '站点ID';
COMMENT ON COLUMN "public"."t_email_service_send_fail"."descripte" IS '邮件发送描述';
COMMENT ON COLUMN "public"."t_email_service_send_fail"."fromname" IS '收件人别名';
COMMENT ON COLUMN "public"."t_email_service_send_fail"."failcount" IS '发送失败次数';
COMMENT ON COLUMN "public"."t_email_service_send_fail"."reason" IS '发送失败原因';

-- ----------------------------
-- Table structure for t_email_service_send_ok
-- ----------------------------
DROP TABLE IF EXISTS "public"."t_email_service_send_ok";
CREATE TABLE "public"."t_email_service_send_ok" (
"iid" int4 DEFAULT nextval('t_email_service_send_ok_iid_seq'::regclass) NOT NULL,
"cfromemail" varchar(100) COLLATE "default",
"ctoemail" varchar(100) COLLATE "default",
"ctitle" varchar(500) COLLATE "default",
"ccontent" varchar(30000) COLLATE "default",
"dcreatedate" timestamp(6),
"websiteid" int4,
"descripte" varchar(100) COLLATE "default",
"fromname" varchar(50) COLLATE "default"
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_email_service_send_ok" IS '用户邮件发送成功记录表';
COMMENT ON COLUMN "public"."t_email_service_send_ok"."iid" IS '主键';
COMMENT ON COLUMN "public"."t_email_service_send_ok"."cfromemail" IS '发件人邮箱';
COMMENT ON COLUMN "public"."t_email_service_send_ok"."ctoemail" IS '收件人邮箱';
COMMENT ON COLUMN "public"."t_email_service_send_ok"."ctitle" IS '标题';
COMMENT ON COLUMN "public"."t_email_service_send_ok"."ccontent" IS '邮件内容';
COMMENT ON COLUMN "public"."t_email_service_send_ok"."dcreatedate" IS '创建时间';
COMMENT ON COLUMN "public"."t_email_service_send_ok"."websiteid" IS '站点ID';
COMMENT ON COLUMN "public"."t_email_service_send_ok"."descripte" IS '邮件发送描述';
COMMENT ON COLUMN "public"."t_email_service_send_ok"."fromname" IS '收件人别名';

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------
ALTER SEQUENCE "public"."logging_event_event_id_seq" OWNED BY "logging_event"."event_id";
ALTER SEQUENCE "public"."t_email_emaillog_iid_seq" OWNED BY "t_email_emaillog"."iid";
ALTER SEQUENCE "public"."t_email_service_send_fail_iid_seq" OWNED BY "t_email_service_send_fail"."iid";
ALTER SEQUENCE "public"."t_email_service_send_ok_iid_seq" OWNED BY "t_email_service_send_ok"."iid";

-- ----------------------------
-- Primary Key structure for table databasechangeloglock
-- ----------------------------
ALTER TABLE "public"."databasechangeloglock" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table logging_event
-- ----------------------------
ALTER TABLE "public"."logging_event" ADD PRIMARY KEY ("event_id");

-- ----------------------------
-- Primary Key structure for table t_email_emaillog
-- ----------------------------
ALTER TABLE "public"."t_email_emaillog" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_email_service_send_fail
-- ----------------------------
ALTER TABLE "public"."t_email_service_send_fail" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Primary Key structure for table t_email_service_send_ok
-- ----------------------------
ALTER TABLE "public"."t_email_service_send_ok" ADD PRIMARY KEY ("iid");

-- ----------------------------
-- Foreign Key structure for table "public"."logging_event_exception"
-- ----------------------------
ALTER TABLE "public"."logging_event_exception" ADD FOREIGN KEY ("event_id") REFERENCES "public"."logging_event" ("event_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Key structure for table "public"."logging_event_property"
-- ----------------------------
ALTER TABLE "public"."logging_event_property" ADD FOREIGN KEY ("event_id") REFERENCES "public"."logging_event" ("event_id") ON DELETE NO ACTION ON UPDATE NO ACTION;
