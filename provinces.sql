/*
 Navicat Premium Data Transfer

 Source Server         : china_regions
 Source Server Type    : SQLite
 Source Server Version : 3012001
 Source Schema         : main

 Target Server Type    : SQLite
 Target Server Version : 3012001
 File Encoding         : 65001

 Date: 13/10/2017 13:54:39
*/

PRAGMA foreign_keys = false;

-- ----------------------------
-- Table structure for provinces
-- ----------------------------
DROP TABLE IF EXISTS "provinces";
CREATE TABLE provinces (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(10),
  name VARCHAR(30),
  alias VARCHAR(20),
  pinyin VARCHAR(35),
  pinyin_abbr VARCHAR(20),
  zip_code VARCHAR(10)
);

-- ----------------------------
-- Records of "provinces"
-- ----------------------------
BEGIN;
INSERT INTO "provinces" VALUES (1, 110000, '北京市', NULL, 'BeiJingShi', 'BJS', 100000);
INSERT INTO "provinces" VALUES (2, 120000, '天津市', NULL, 'TianJinShi', 'TJS', 300000);
INSERT INTO "provinces" VALUES (3, 130000, '河北省', NULL, 'HeBeiSheng', 'HBS', '050000');
INSERT INTO "provinces" VALUES (4, 140000, '山西省', NULL, 'ShanXiSheng', 'SXS', '030000');
INSERT INTO "provinces" VALUES (5, 150000, '内蒙古自治区', NULL, 'NeiMengGuZiZhiQu', 'NMGZZQ', '010000');
INSERT INTO "provinces" VALUES (6, 210000, '辽宁省', NULL, 'LiaoNingSheng', 'LNS', 111000);
INSERT INTO "provinces" VALUES (7, 220000, '吉林省', NULL, 'JiLinSheng', 'JLS', 130000);
INSERT INTO "provinces" VALUES (8, 230000, '黑龙江省', NULL, 'HeiLongJiangSheng', 'HLJS', 150000);
INSERT INTO "provinces" VALUES (9, 310000, '上海市', NULL, 'ShangHaiShi', 'SHS', 200000);
INSERT INTO "provinces" VALUES (10, 320000, '江苏省', NULL, 'JiangSuSheng', 'JSS', 212000);
INSERT INTO "provinces" VALUES (11, 330000, '浙江省', NULL, 'ZheJiangSheng', 'ZJS', 310000);
INSERT INTO "provinces" VALUES (12, 340000, '安徽省', NULL, 'AnHuiSheng', 'AHS', 230000);
INSERT INTO "provinces" VALUES (13, 350000, '福建省', NULL, 'FuJianSheng', 'FJS', 350000);
INSERT INTO "provinces" VALUES (14, 360000, '江西省', NULL, 'JiangXiSheng', 'JXS', 330000);
INSERT INTO "provinces" VALUES (15, 370000, '山东省', NULL, 'ShanDongSheng', 'SDS', 250000);
INSERT INTO "provinces" VALUES (16, 410000, '河南省', NULL, 'HeNanSheng', 'HNS', 450000);
INSERT INTO "provinces" VALUES (17, 420000, '湖北省', NULL, 'HuBeiSheng', 'HBS', 430000);
INSERT INTO "provinces" VALUES (18, 430000, '湖南省', NULL, 'HuNanSheng', 'HNS', 410000);
INSERT INTO "provinces" VALUES (19, 440000, '广东省', NULL, 'GuangDongSheng', 'GDS', 511500);
INSERT INTO "provinces" VALUES (20, 450000, '广西壮族自治区', NULL, 'GuangXiZhuangZuZiZhiQu', 'GXZZZZQ', 530000);
INSERT INTO "provinces" VALUES (21, 460000, '海南省', NULL, 'HaiNanSheng', 'HNS', 570100);
INSERT INTO "provinces" VALUES (22, 500000, '重庆市', NULL, 'ChongQingShi', 'CQS', 400000);
INSERT INTO "provinces" VALUES (23, 510000, '四川省', NULL, 'SiChuanSheng', 'SCS', 610000);
INSERT INTO "provinces" VALUES (24, 520000, '贵州省', NULL, 'GuiZhouSheng', 'GZS', 551700);
INSERT INTO "provinces" VALUES (25, 530000, '云南省', NULL, 'YunNanSheng', 'YNS', 650000);
INSERT INTO "provinces" VALUES (26, 540000, '西藏自治区', NULL, 'XiZangZiZhiQu', 'XZZZQ', 850000);
INSERT INTO "provinces" VALUES (27, 610000, '陕西省', NULL, 'ShanXiSheng', 'SXS', 710000);
INSERT INTO "provinces" VALUES (28, 620000, '甘肃省', NULL, 'GanSuSheng', 'GSS', 730000);
INSERT INTO "provinces" VALUES (29, 630000, '青海省', NULL, 'QingHaiSheng', 'QHS', 810000);
INSERT INTO "provinces" VALUES (30, 640000, '宁夏回族自治区', NULL, 'NingXiaHuiZuZiZhiQu', 'NXHZZZQ', 750000);
INSERT INTO "provinces" VALUES (31, 650000, '新疆维吾尔自治区', NULL, 'XinJiangWeiWuErZiZhiQu', 'XJWWEZZQ', 830000);
INSERT INTO "provinces" VALUES (32, 710000, '台湾省', NULL, 'TaiWanSheng', 'TWS', NULL);
INSERT INTO "provinces" VALUES (33, 810000, '香港特别行政区', NULL, 'XiangGangTeBieXingZhengQu', 'XGTBXZQ', NULL);
INSERT INTO "provinces" VALUES (34, 820000, '澳门特别行政区', NULL, 'AoMenTeBieXingZhengQu', 'AMTBXZQ', NULL);
COMMIT;

-- ----------------------------
-- Auto increment value for provinces
-- ----------------------------
UPDATE "main"."sqlite_sequence" SET seq = 34 WHERE name = 'provinces';

-- ----------------------------
-- Indexes structure for table provinces
-- ----------------------------
CREATE INDEX "main"."index_provinces_on_code"
ON "provinces" (
  "code" ASC
);
CREATE INDEX "main"."index_provinces_on_pinyin"
ON "provinces" (
  "pinyin" ASC
);
CREATE INDEX "main"."index_provinces_on_pinyin_abbr"
ON "provinces" (
  "pinyin_abbr" ASC
);
CREATE INDEX "main"."index_provinces_on_zip_code"
ON "provinces" (
  "zip_code" ASC
);

PRAGMA foreign_keys = true;
