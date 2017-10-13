/*
 Navicat Premium Data Transfer

 Source Server         : china_regions
 Source Server Type    : SQLite
 Source Server Version : 3012001
 Source Schema         : main

 Target Server Type    : SQLite
 Target Server Version : 3012001
 File Encoding         : 65001

 Date: 13/10/2017 13:54:24
*/

PRAGMA foreign_keys = false;

-- ----------------------------
-- Table structure for cities
-- ----------------------------
DROP TABLE IF EXISTS "cities";
CREATE TABLE cities (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  code VARCHAR(10),
  province_code VARCHAR(10),
  name VARCHAR(30),
  alias VARCHAR(20),
  pinyin VARCHAR(35),
  pinyin_abbr VARCHAR(20),
  zip_code VARCHAR(10),
  FOREIGN KEY(province_code) REFERENCES provinces(code)
);

-- ----------------------------
-- Records of "cities"
-- ----------------------------
BEGIN;
INSERT INTO "cities" VALUES (1, 110100, 110000, '市辖区', NULL, 'ShiXiaQu', 'SXQ', 100000);
INSERT INTO "cities" VALUES (2, 120100, 120000, '市辖区', NULL, 'ShiXiaQu', 'SXQ', 300000);
INSERT INTO "cities" VALUES (3, 130100, 130000, '石家庄市', NULL, 'ShiJiaZhuangShi', 'SJZS', '050000');
INSERT INTO "cities" VALUES (4, 130200, 130000, '唐山市', NULL, 'TangShanShi', 'TSS', '063000');
INSERT INTO "cities" VALUES (5, 130300, 130000, '秦皇岛市', NULL, 'QinHuangDaoShi', 'QHDS', '066000');
INSERT INTO "cities" VALUES (6, 130400, 130000, '邯郸市', NULL, 'HanDanShi', 'HDS', '056000');
INSERT INTO "cities" VALUES (7, 130500, 130000, '邢台市', NULL, 'XingTaiShi', 'XTS', '054000');
INSERT INTO "cities" VALUES (8, 130600, 130000, '保定市', NULL, 'BaoDingShi', 'BDS', '071000');
INSERT INTO "cities" VALUES (9, 130700, 130000, '张家口市', NULL, 'ZhangJiaKouShi', 'ZJKS', '075000');
INSERT INTO "cities" VALUES (10, 130800, 130000, '承德市', NULL, 'ChengDeShi', 'CDS', '067000');
INSERT INTO "cities" VALUES (11, 130900, 130000, '沧州市', NULL, 'CangZhouShi', 'CZS', '061000');
INSERT INTO "cities" VALUES (12, 131000, 130000, '廊坊市', NULL, 'LangFangShi', 'LFS', '065000');
INSERT INTO "cities" VALUES (13, 131100, 130000, '衡水市', NULL, 'HengShuiShi', 'HSS', '053000');
INSERT INTO "cities" VALUES (14, 139000, 130000, '省直辖县级行政区划', NULL, 'ShengZhiXiaXianJiXingZhengQuHua', 'SZXXJXZQH', '050000');
INSERT INTO "cities" VALUES (15, 140100, 140000, '太原市', NULL, 'TaiYuanShi', 'TYS', '030000');
INSERT INTO "cities" VALUES (16, 140200, 140000, '大同市', NULL, 'DaTongShi', 'DTS', '037000');
INSERT INTO "cities" VALUES (17, 140300, 140000, '阳泉市', NULL, 'YangQuanShi', 'YQS', '045000');
INSERT INTO "cities" VALUES (18, 140400, 140000, '长治市', NULL, 'ChangZhiShi', 'CZS', '046000');
INSERT INTO "cities" VALUES (19, 140500, 140000, '晋城市', NULL, 'JinChengShi', 'JCS', '048000');
INSERT INTO "cities" VALUES (20, 140600, 140000, '朔州市', NULL, 'ShuoZhouShi', 'SZS', '036000');
INSERT INTO "cities" VALUES (21, 140700, 140000, '晋中市', NULL, 'JinZhongShi', 'JZS', '030600');
INSERT INTO "cities" VALUES (22, 140800, 140000, '运城市', NULL, 'YunChengShi', 'YCS', '044000');
INSERT INTO "cities" VALUES (23, 140900, 140000, '忻州市', NULL, 'XinZhouShi', 'XZS', '034000');
INSERT INTO "cities" VALUES (24, 141000, 140000, '临汾市', NULL, 'LinFenShi', 'LFS', '041000');
INSERT INTO "cities" VALUES (25, 141100, 140000, '吕梁市', NULL, 'Lu:LiangShi', 'LLS', '033000');
INSERT INTO "cities" VALUES (26, 150100, 150000, '呼和浩特市', NULL, 'HuHeHaoTeShi', 'HHHTS', '010000');
INSERT INTO "cities" VALUES (27, 150200, 150000, '包头市', NULL, 'BaoTouShi', 'BTS', '014000');
INSERT INTO "cities" VALUES (28, 150300, 150000, '乌海市', NULL, 'WuHaiShi', 'WHS', '016000');
INSERT INTO "cities" VALUES (29, 150400, 150000, '赤峰市', NULL, 'ChiFengShi', 'CFS', '024000');
INSERT INTO "cities" VALUES (30, 150500, 150000, '通辽市', NULL, 'TongLiaoShi', 'TLS', '028000');
INSERT INTO "cities" VALUES (31, 150600, 150000, '鄂尔多斯市', NULL, 'EErDuoSiShi', 'EEDSS', '017000');
INSERT INTO "cities" VALUES (32, 150700, 150000, '呼伦贝尔市', NULL, 'HuLunBeiErShi', 'HLBES', '021000');
INSERT INTO "cities" VALUES (33, 150800, 150000, '巴彦淖尔市', NULL, 'BaYanNaoErShi', 'BYNES', '015000');
INSERT INTO "cities" VALUES (34, 150900, 150000, '乌兰察布市', NULL, 'WuLanChaBuShi', 'WLCBS', '012000');
INSERT INTO "cities" VALUES (35, 152200, 150000, '兴安盟', NULL, 'XingAnMeng', 'XAM', 137400);
INSERT INTO "cities" VALUES (36, 152500, 150000, '锡林郭勒盟', NULL, 'XiLinGuoLeMeng', 'XLGLM', '026000');
INSERT INTO "cities" VALUES (37, 152900, 150000, '阿拉善盟', NULL, 'ALaShanMeng', 'ALSM', 750300);
INSERT INTO "cities" VALUES (38, 210100, 210000, '沈阳市', NULL, 'ShenYangShi', 'SYS', 110000);
INSERT INTO "cities" VALUES (39, 210200, 210000, '大连市', NULL, 'DaLianShi', 'DLS', 116000);
INSERT INTO "cities" VALUES (40, 210300, 210000, '鞍山市', NULL, 'AnShanShi', 'ASS', 114000);
INSERT INTO "cities" VALUES (41, 210400, 210000, '抚顺市', NULL, 'FuShunShi', 'FSS', 113000);
INSERT INTO "cities" VALUES (42, 210500, 210000, '本溪市', NULL, 'BenXiShi', 'BXS', 117000);
INSERT INTO "cities" VALUES (43, 210600, 210000, '丹东市', NULL, 'DanDongShi', 'DDS', 118000);
INSERT INTO "cities" VALUES (44, 210700, 210000, '锦州市', NULL, 'JinZhouShi', 'JZS', 121000);
INSERT INTO "cities" VALUES (45, 210800, 210000, '营口市', NULL, 'YingKouShi', 'YKS', 115000);
INSERT INTO "cities" VALUES (46, 210900, 210000, '阜新市', NULL, 'FuXinShi', 'FXS', 123000);
INSERT INTO "cities" VALUES (47, 211000, 210000, '辽阳市', NULL, 'LiaoYangShi', 'LYS', 111000);
INSERT INTO "cities" VALUES (48, 211100, 210000, '盘锦市', NULL, 'PanJinShi', 'PJS', 124000);
INSERT INTO "cities" VALUES (49, 211200, 210000, '铁岭市', NULL, 'TieLingShi', 'TLS', 112000);
INSERT INTO "cities" VALUES (50, 211300, 210000, '朝阳市', NULL, 'ChaoYangShi', 'CYS', 122000);
INSERT INTO "cities" VALUES (51, 211400, 210000, '葫芦岛市', NULL, 'HuLuDaoShi', 'HLDS', 125000);
INSERT INTO "cities" VALUES (52, 220100, 220000, '长春市', NULL, 'ChangChunShi', 'CCS', 130000);
INSERT INTO "cities" VALUES (53, 220200, 220000, '吉林市', NULL, 'JiLinShi', 'JLS', 132000);
INSERT INTO "cities" VALUES (54, 220300, 220000, '四平市', NULL, 'SiPingShi', 'SPS', 136000);
INSERT INTO "cities" VALUES (55, 220400, 220000, '辽源市', NULL, 'LiaoYuanShi', 'LYS', 136200);
INSERT INTO "cities" VALUES (56, 220500, 220000, '通化市', NULL, 'TongHuaShi', 'THS', 134000);
INSERT INTO "cities" VALUES (57, 220600, 220000, '白山市', NULL, 'BaiShanShi', 'BSS', 134300);
INSERT INTO "cities" VALUES (58, 220700, 220000, '松原市', NULL, 'SongYuanShi', 'SYS', 131100);
INSERT INTO "cities" VALUES (59, 220800, 220000, '白城市', NULL, 'BaiChengShi', 'BCS', 137000);
INSERT INTO "cities" VALUES (60, 222400, 220000, '延边朝鲜族自治州', NULL, 'YanBianChaoXianZuZiZhiZhou', 'YBCXZZZZ', 133000);
INSERT INTO "cities" VALUES (61, 230100, 230000, '哈尔滨市', NULL, 'HaErBinShi', 'HEBS', 150000);
INSERT INTO "cities" VALUES (62, 230200, 230000, '齐齐哈尔市', NULL, 'QiQiHaErShi', 'QQHES', 161000);
INSERT INTO "cities" VALUES (63, 230300, 230000, '鸡西市', NULL, 'JiXiShi', 'JXS', 158100);
INSERT INTO "cities" VALUES (64, 230400, 230000, '鹤岗市', NULL, 'HeGangShi', 'HGS', 154100);
INSERT INTO "cities" VALUES (65, 230500, 230000, '双鸭山市', NULL, 'ShuangYaShanShi', 'SYSS', 155100);
INSERT INTO "cities" VALUES (66, 230600, 230000, '大庆市', NULL, 'DaQingShi', 'DQS', 163000);
INSERT INTO "cities" VALUES (67, 230700, 230000, '伊春市', NULL, 'YiChunShi', 'YCS', 153000);
INSERT INTO "cities" VALUES (68, 230800, 230000, '佳木斯市', NULL, 'JiaMuSiShi', 'JMSS', 154000);
INSERT INTO "cities" VALUES (69, 230900, 230000, '七台河市', NULL, 'QiTaiHeShi', 'QTHS', 154600);
INSERT INTO "cities" VALUES (70, 231000, 230000, '牡丹江市', NULL, 'MuDanJiangShi', 'MDJS', 157000);
INSERT INTO "cities" VALUES (71, 231100, 230000, '黑河市', NULL, 'HeiHeShi', 'HHS', 164300);
INSERT INTO "cities" VALUES (72, 231200, 230000, '绥化市', NULL, 'SuiHuaShi', 'SHS', 152000);
INSERT INTO "cities" VALUES (73, 232700, 230000, '大兴安岭地区', NULL, 'DaXingAnLingDiQu', 'DXALDQ', 165000);
INSERT INTO "cities" VALUES (74, 310100, 310000, '市辖区', NULL, 'ShiXiaQu', 'SXQ', 200000);
INSERT INTO "cities" VALUES (75, 320100, 320000, '南京市', NULL, 'NanJingShi', 'NJS', 210000);
INSERT INTO "cities" VALUES (76, 320200, 320000, '无锡市', NULL, 'WuXiShi', 'WXS', 214000);
INSERT INTO "cities" VALUES (77, 320300, 320000, '徐州市', NULL, 'XuZhouShi', 'XZS', 221000);
INSERT INTO "cities" VALUES (78, 320400, 320000, '常州市', NULL, 'ChangZhouShi', 'CZS', 213000);
INSERT INTO "cities" VALUES (79, 320500, 320000, '苏州市', NULL, 'SuZhouShi', 'SZS', 215000);
INSERT INTO "cities" VALUES (80, 320600, 320000, '南通市', NULL, 'NanTongShi', 'NTS', 226000);
INSERT INTO "cities" VALUES (81, 320700, 320000, '连云港市', NULL, 'LianYunGangShi', 'LYGS', 222000);
INSERT INTO "cities" VALUES (82, 320800, 320000, '淮安市', NULL, 'HuaiAnShi', 'HAS', 223001);
INSERT INTO "cities" VALUES (83, 320900, 320000, '盐城市', NULL, 'YanChengShi', 'YCS', 224000);
INSERT INTO "cities" VALUES (84, 321000, 320000, '扬州市', NULL, 'YangZhouShi', 'YZS', 225000);
INSERT INTO "cities" VALUES (85, 321100, 320000, '镇江市', NULL, 'ZhenJiangShi', 'ZJS', 212000);
INSERT INTO "cities" VALUES (86, 321200, 320000, '泰州市', NULL, 'TaiZhouShi', 'TZS', 225300);
INSERT INTO "cities" VALUES (87, 321300, 320000, '宿迁市', NULL, 'SuQianShi', 'SQS', 223800);
INSERT INTO "cities" VALUES (88, 330100, 330000, '杭州市', NULL, 'HangZhouShi', 'HZS', 310000);
INSERT INTO "cities" VALUES (89, 330200, 330000, '宁波市', NULL, 'NingBoShi', 'NBS', 315000);
INSERT INTO "cities" VALUES (90, 330300, 330000, '温州市', NULL, 'WenZhouShi', 'WZS', 325000);
INSERT INTO "cities" VALUES (91, 330400, 330000, '嘉兴市', NULL, 'JiaXingShi', 'JXS', 314000);
INSERT INTO "cities" VALUES (92, 330500, 330000, '湖州市', NULL, 'HuZhouShi', 'HZS', 313000);
INSERT INTO "cities" VALUES (93, 330600, 330000, '绍兴市', NULL, 'ShaoXingShi', 'SXS', 312000);
INSERT INTO "cities" VALUES (94, 330700, 330000, '金华市', NULL, 'JinHuaShi', 'JHS', 321000);
INSERT INTO "cities" VALUES (95, 330800, 330000, '衢州市', NULL, 'QuZhouShi', 'QZS', 324000);
INSERT INTO "cities" VALUES (96, 330900, 330000, '舟山市', NULL, 'ZhouShanShi', 'ZSS', 316000);
INSERT INTO "cities" VALUES (97, 331000, 330000, '台州市', NULL, 'TaiZhouShi', 'TZS', 318000);
INSERT INTO "cities" VALUES (98, 331100, 330000, '丽水市', NULL, 'LiShuiShi', 'LSS', 323000);
INSERT INTO "cities" VALUES (99, 340100, 340000, '合肥市', NULL, 'HeFeiShi', 'HFS', 230000);
INSERT INTO "cities" VALUES (100, 340200, 340000, '芜湖市', NULL, 'WuHuShi', 'WHS', 241000);
INSERT INTO "cities" VALUES (101, 340300, 340000, '蚌埠市', NULL, 'BengBuShi', 'BBS', 233000);
INSERT INTO "cities" VALUES (102, 340400, 340000, '淮南市', NULL, 'HuaiNanShi', 'HNS', 232000);
INSERT INTO "cities" VALUES (103, 340500, 340000, '马鞍山市', NULL, 'MaAnShanShi', 'MASS', 243000);
INSERT INTO "cities" VALUES (104, 340600, 340000, '淮北市', NULL, 'HuaiBeiShi', 'HBS', 235000);
INSERT INTO "cities" VALUES (105, 340700, 340000, '铜陵市', NULL, 'TongLingShi', 'TLS', 244000);
INSERT INTO "cities" VALUES (106, 340800, 340000, '安庆市', NULL, 'AnQingShi', 'AQS', 246000);
INSERT INTO "cities" VALUES (107, 341000, 340000, '黄山市', NULL, 'HuangShanShi', 'HSS', 242700);
INSERT INTO "cities" VALUES (108, 341100, 340000, '滁州市', NULL, 'ChuZhouShi', 'CZS', 239000);
INSERT INTO "cities" VALUES (109, 341200, 340000, '阜阳市', NULL, 'FuYangShi', 'FYS', 236000);
INSERT INTO "cities" VALUES (110, 341300, 340000, '宿州市', NULL, 'SuZhouShi', 'SZS', 234000);
INSERT INTO "cities" VALUES (111, 341500, 340000, '六安市', NULL, 'LuAnShi', 'LAS', 237000);
INSERT INTO "cities" VALUES (112, 341600, 340000, '亳州市', NULL, 'BoZhouShi', 'BZS', 236000);
INSERT INTO "cities" VALUES (113, 341700, 340000, '池州市', NULL, 'ChiZhouShi', 'CZS', 247100);
INSERT INTO "cities" VALUES (114, 341800, 340000, '宣城市', NULL, 'XuanChengShi', 'XCS', 242000);
INSERT INTO "cities" VALUES (115, 350100, 350000, '福州市', NULL, 'FuZhouShi', 'FZS', 350000);
INSERT INTO "cities" VALUES (116, 350200, 350000, '厦门市', NULL, 'XiaMenShi', 'XMS', 361000);
INSERT INTO "cities" VALUES (117, 350300, 350000, '莆田市', NULL, 'PuTianShi', 'PTS', 351100);
INSERT INTO "cities" VALUES (118, 350400, 350000, '三明市', NULL, 'SanMingShi', 'SMS', 365000);
INSERT INTO "cities" VALUES (119, 350500, 350000, '泉州市', NULL, 'QuanZhouShi', 'QZS', 362000);
INSERT INTO "cities" VALUES (120, 350600, 350000, '漳州市', NULL, 'ZhangZhouShi', 'ZZS', 363000);
INSERT INTO "cities" VALUES (121, 350700, 350000, '南平市', NULL, 'NanPingShi', 'NPS', 353000);
INSERT INTO "cities" VALUES (122, 350800, 350000, '龙岩市', NULL, 'LongYanShi', 'LYS', 364000);
INSERT INTO "cities" VALUES (123, 350900, 350000, '宁德市', NULL, 'NingDeShi', 'NDS', 352000);
INSERT INTO "cities" VALUES (124, 360100, 360000, '南昌市', NULL, 'NanChangShi', 'NCS', 330000);
INSERT INTO "cities" VALUES (125, 360200, 360000, '景德镇市', NULL, 'JingDeZhenShi', 'JDZS', 333000);
INSERT INTO "cities" VALUES (126, 360300, 360000, '萍乡市', NULL, 'PingXiangShi', 'PXS', 337000);
INSERT INTO "cities" VALUES (127, 360400, 360000, '九江市', NULL, 'JiuJiangShi', 'JJS', 332000);
INSERT INTO "cities" VALUES (128, 360500, 360000, '新余市', NULL, 'XinYuShi', 'XYS', 338000);
INSERT INTO "cities" VALUES (129, 360600, 360000, '鹰潭市', NULL, 'YingTanShi', 'YTS', 335000);
INSERT INTO "cities" VALUES (130, 360700, 360000, '赣州市', NULL, 'GanZhouShi', 'GZS', 341000);
INSERT INTO "cities" VALUES (131, 360800, 360000, '吉安市', NULL, 'JiAnShi', 'JAS', 343000);
INSERT INTO "cities" VALUES (132, 360900, 360000, '宜春市', NULL, 'YiChunShi', 'YCS', 336000);
INSERT INTO "cities" VALUES (133, 361000, 360000, '抚州市', NULL, 'FuZhouShi', 'FZS', 344000);
INSERT INTO "cities" VALUES (134, 361100, 360000, '上饶市', NULL, 'ShangRaoShi', 'SRS', 334000);
INSERT INTO "cities" VALUES (135, 370100, 370000, '济南市', NULL, 'JiNanShi', 'JNS', 250000);
INSERT INTO "cities" VALUES (136, 370200, 370000, '青岛市', NULL, 'QingDaoShi', 'QDS', 266000);
INSERT INTO "cities" VALUES (137, 370300, 370000, '淄博市', NULL, 'ZiBoShi', 'ZBS', 255000);
INSERT INTO "cities" VALUES (138, 370400, 370000, '枣庄市', NULL, 'ZaoZhuangShi', 'ZZS', 277000);
INSERT INTO "cities" VALUES (139, 370500, 370000, '东营市', NULL, 'DongYingShi', 'DYS', 257000);
INSERT INTO "cities" VALUES (140, 370600, 370000, '烟台市', NULL, 'YanTaiShi', 'YTS', 264000);
INSERT INTO "cities" VALUES (141, 370700, 370000, '潍坊市', NULL, 'WeiFangShi', 'WFS', 261000);
INSERT INTO "cities" VALUES (142, 370800, 370000, '济宁市', NULL, 'JiNingShi', 'JNS', 272000);
INSERT INTO "cities" VALUES (143, 370900, 370000, '泰安市', NULL, 'TaiAnShi', 'TAS', 271000);
INSERT INTO "cities" VALUES (144, 371000, 370000, '威海市', NULL, 'WeiHaiShi', 'WHS', 264200);
INSERT INTO "cities" VALUES (145, 371100, 370000, '日照市', NULL, 'RiZhaoShi', 'RZS', 276800);
INSERT INTO "cities" VALUES (146, 371200, 370000, '莱芜市', NULL, 'LaiWuShi', 'LWS', 271100);
INSERT INTO "cities" VALUES (147, 371300, 370000, '临沂市', NULL, 'LinYiShi', 'LYS', 276000);
INSERT INTO "cities" VALUES (148, 371400, 370000, '德州市', NULL, 'DeZhouShi', 'DZS', 253000);
INSERT INTO "cities" VALUES (149, 371500, 370000, '聊城市', NULL, 'LiaoChengShi', 'LCS', 252000);
INSERT INTO "cities" VALUES (150, 371600, 370000, '滨州市', NULL, 'BinZhouShi', 'BZS', 256600);
INSERT INTO "cities" VALUES (151, 371700, 370000, '菏泽市', NULL, 'HeZeShi', 'HZS', 274000);
INSERT INTO "cities" VALUES (152, 410100, 410000, '郑州市', NULL, 'ZhengZhouShi', 'ZZS', 450000);
INSERT INTO "cities" VALUES (153, 410200, 410000, '开封市', NULL, 'KaiFengShi', 'KFS', 475000);
INSERT INTO "cities" VALUES (154, 410300, 410000, '洛阳市', NULL, 'LuoYangShi', 'LYS', 471000);
INSERT INTO "cities" VALUES (155, 410400, 410000, '平顶山市', NULL, 'PingDingShanShi', 'PDSS', 467000);
INSERT INTO "cities" VALUES (156, 410500, 410000, '安阳市', NULL, 'AnYangShi', 'AYS', 455000);
INSERT INTO "cities" VALUES (157, 410600, 410000, '鹤壁市', NULL, 'HeBiShi', 'HBS', 458000);
INSERT INTO "cities" VALUES (158, 410700, 410000, '新乡市', NULL, 'XinXiangShi', 'XXS', 453000);
INSERT INTO "cities" VALUES (159, 410800, 410000, '焦作市', NULL, 'JiaoZuoShi', 'JZS', 454150);
INSERT INTO "cities" VALUES (160, 410900, 410000, '濮阳市', NULL, 'PuYangShi', 'PYS', 457000);
INSERT INTO "cities" VALUES (161, 411000, 410000, '许昌市', NULL, 'XuChangShi', 'XCS', 461000);
INSERT INTO "cities" VALUES (162, 411100, 410000, '漯河市', NULL, 'LuoHeShi', 'LHS', 462000);
INSERT INTO "cities" VALUES (163, 411200, 410000, '三门峡市', NULL, 'SanMenXiaShi', 'SMXS', 472000);
INSERT INTO "cities" VALUES (164, 411300, 410000, '南阳市', NULL, 'NanYangShi', 'NYS', 473000);
INSERT INTO "cities" VALUES (165, 411400, 410000, '商丘市', NULL, 'ShangQiuShi', 'SQS', 476000);
INSERT INTO "cities" VALUES (166, 411500, 410000, '信阳市', NULL, 'XinYangShi', 'XYS', 464000);
INSERT INTO "cities" VALUES (167, 411600, 410000, '周口市', NULL, 'ZhouKouShi', 'ZKS', 466000);
INSERT INTO "cities" VALUES (168, 411700, 410000, '驻马店市', NULL, 'ZhuMaDianShi', 'ZMDS', 463000);
INSERT INTO "cities" VALUES (169, 419000, 410000, '省直辖县级行政区划', NULL, 'ShengZhiXiaXianJiXingZhengQuHua', 'SZXXJXZQH', 450000);
INSERT INTO "cities" VALUES (170, 420100, 420000, '武汉市', NULL, 'WuHanShi', 'WHS', 430000);
INSERT INTO "cities" VALUES (171, 420200, 420000, '黄石市', NULL, 'HuangShiShi', 'HSS', 435000);
INSERT INTO "cities" VALUES (172, 420300, 420000, '十堰市', NULL, 'ShiYanShi', 'SYS', 442000);
INSERT INTO "cities" VALUES (173, 420500, 420000, '宜昌市', NULL, 'YiChangShi', 'YCS', 443000);
INSERT INTO "cities" VALUES (174, 420600, 420000, '襄阳市', NULL, 'XiangYangShi', 'XYS', 441000);
INSERT INTO "cities" VALUES (175, 420700, 420000, '鄂州市', NULL, 'EZhouShi', 'EZS', 436000);
INSERT INTO "cities" VALUES (176, 420800, 420000, '荆门市', NULL, 'JingMenShi', 'JMS', 448000);
INSERT INTO "cities" VALUES (177, 420900, 420000, '孝感市', NULL, 'XiaoGanShi', 'XGS', 432000);
INSERT INTO "cities" VALUES (178, 421000, 420000, '荆州市', NULL, 'JingZhouShi', 'JZS', 434000);
INSERT INTO "cities" VALUES (179, 421100, 420000, '黄冈市', NULL, 'HuangGangShi', 'HGS', 438000);
INSERT INTO "cities" VALUES (180, 421200, 420000, '咸宁市', NULL, 'XianNingShi', 'XNS', 437000);
INSERT INTO "cities" VALUES (181, 421300, 420000, '随州市', NULL, 'SuiZhouShi', 'SZS', 441300);
INSERT INTO "cities" VALUES (182, 422800, 420000, '恩施土家族苗族自治州', NULL, 'EnShiTuJiaZuMiaoZuZiZhiZhou', 'ESTJZMZZZZ', 445000);
INSERT INTO "cities" VALUES (183, 429000, 420000, '省直辖县级行政区划', NULL, 'ShengZhiXiaXianJiXingZhengQuHua', 'SZXXJXZQH', 430000);
INSERT INTO "cities" VALUES (184, 430100, 430000, '长沙市', NULL, 'ChangShaShi', 'CSS', 410000);
INSERT INTO "cities" VALUES (185, 430200, 430000, '株洲市', NULL, 'ZhuZhouShi', 'ZZS', 412000);
INSERT INTO "cities" VALUES (186, 430300, 430000, '湘潭市', NULL, 'XiangTanShi', 'XTS', 411100);
INSERT INTO "cities" VALUES (187, 430400, 430000, '衡阳市', NULL, 'HengYangShi', 'HYS', 421000);
INSERT INTO "cities" VALUES (188, 430500, 430000, '邵阳市', NULL, 'ShaoYangShi', 'SYS', 422000);
INSERT INTO "cities" VALUES (189, 430600, 430000, '岳阳市', NULL, 'YueYangShi', 'YYS', 414000);
INSERT INTO "cities" VALUES (190, 430700, 430000, '常德市', NULL, 'ChangDeShi', 'CDS', 415000);
INSERT INTO "cities" VALUES (191, 430800, 430000, '张家界市', NULL, 'ZhangJiaJieShi', 'ZJJS', 427000);
INSERT INTO "cities" VALUES (192, 430900, 430000, '益阳市', NULL, 'YiYangShi', 'YYS', 413000);
INSERT INTO "cities" VALUES (193, 431000, 430000, '郴州市', NULL, 'ChenZhouShi', 'CZS', 423000);
INSERT INTO "cities" VALUES (194, 431100, 430000, '永州市', NULL, 'YongZhouShi', 'YZS', 425000);
INSERT INTO "cities" VALUES (195, 431200, 430000, '怀化市', NULL, 'HuaiHuaShi', 'HHS', 418000);
INSERT INTO "cities" VALUES (196, 431300, 430000, '娄底市', NULL, 'LouDiShi', 'LDS', 417000);
INSERT INTO "cities" VALUES (197, 433100, 430000, '湘西土家族苗族自治州', NULL, 'XiangXiTuJiaZuMiaoZuZiZhiZhou', 'XXTJZMZZZZ', 416000);
INSERT INTO "cities" VALUES (198, 440100, 440000, '广州市', NULL, 'GuangZhouShi', 'GZS', 510000);
INSERT INTO "cities" VALUES (199, 440200, 440000, '韶关市', NULL, 'ShaoGuanShi', 'SGS', 512000);
INSERT INTO "cities" VALUES (200, 440300, 440000, '深圳市', NULL, 'ShenZhenShi', 'SZS', 518000);
INSERT INTO "cities" VALUES (201, 440400, 440000, '珠海市', NULL, 'ZhuHaiShi', 'ZHS', 519000);
INSERT INTO "cities" VALUES (202, 440500, 440000, '汕头市', NULL, 'ShanTouShi', 'STS', 515000);
INSERT INTO "cities" VALUES (203, 440600, 440000, '佛山市', NULL, 'FoShanShi', 'FSS', 528000);
INSERT INTO "cities" VALUES (204, 440700, 440000, '江门市', NULL, 'JiangMenShi', 'JMS', 529000);
INSERT INTO "cities" VALUES (205, 440800, 440000, '湛江市', NULL, 'ZhanJiangShi', 'ZJS', 524000);
INSERT INTO "cities" VALUES (206, 440900, 440000, '茂名市', NULL, 'MaoMingShi', 'MMS', 525000);
INSERT INTO "cities" VALUES (207, 441200, 440000, '肇庆市', NULL, 'ZhaoQingShi', 'ZQS', 526000);
INSERT INTO "cities" VALUES (208, 441300, 440000, '惠州市', NULL, 'HuiZhouShi', 'HZS', 516000);
INSERT INTO "cities" VALUES (209, 441400, 440000, '梅州市', NULL, 'MeiZhouShi', 'MZS', 514000);
INSERT INTO "cities" VALUES (210, 441500, 440000, '汕尾市', NULL, 'ShanWeiShi', 'SWS', 516600);
INSERT INTO "cities" VALUES (211, 441600, 440000, '河源市', NULL, 'HeYuanShi', 'HYS', 517000);
INSERT INTO "cities" VALUES (212, 441700, 440000, '阳江市', NULL, 'YangJiangShi', 'YJS', 529500);
INSERT INTO "cities" VALUES (213, 441800, 440000, '清远市', NULL, 'QingYuanShi', 'QYS', 511500);
INSERT INTO "cities" VALUES (214, 441900, 440000, '东莞市', NULL, 'DongGuanShi', 'DGS', 523000);
INSERT INTO "cities" VALUES (215, 442000, 440000, '中山市', NULL, 'ZhongShanShi', 'ZSS', 528400);
INSERT INTO "cities" VALUES (216, 445100, 440000, '潮州市', NULL, 'ChaoZhouShi', 'CZS', 521000);
INSERT INTO "cities" VALUES (217, 445200, 440000, '揭阳市', NULL, 'JieYangShi', 'JYS', 515200);
INSERT INTO "cities" VALUES (218, 445300, 440000, '云浮市', NULL, 'YunFuShi', 'YFS', 527300);
INSERT INTO "cities" VALUES (219, 450100, 450000, '南宁市', NULL, 'NanNingShi', 'NNS', 530000);
INSERT INTO "cities" VALUES (220, 450200, 450000, '柳州市', NULL, 'LiuZhouShi', 'LZS', 545000);
INSERT INTO "cities" VALUES (221, 450300, 450000, '桂林市', NULL, 'GuiLinShi', 'GLS', 541000);
INSERT INTO "cities" VALUES (222, 450400, 450000, '梧州市', NULL, 'WuZhouShi', 'WZS', 543000);
INSERT INTO "cities" VALUES (223, 450500, 450000, '北海市', NULL, 'BeiHaiShi', 'BHS', 536000);
INSERT INTO "cities" VALUES (224, 450600, 450000, '防城港市', NULL, 'FangChengGangShi', 'FCGS', 538000);
INSERT INTO "cities" VALUES (225, 450700, 450000, '钦州市', NULL, 'QinZhouShi', 'QZS', 535000);
INSERT INTO "cities" VALUES (226, 450800, 450000, '贵港市', NULL, 'GuiGangShi', 'GGS', 537000);
INSERT INTO "cities" VALUES (227, 450900, 450000, '玉林市', NULL, 'YuLinShi', 'YLS', 537000);
INSERT INTO "cities" VALUES (228, 451000, 450000, '百色市', NULL, 'BaiSeShi', 'BSS', 533000);
INSERT INTO "cities" VALUES (229, 451100, 450000, '贺州市', NULL, 'HeZhouShi', 'HZS', 542800);
INSERT INTO "cities" VALUES (230, 451200, 450000, '河池市', NULL, 'HeChiShi', 'HCS', 547000);
INSERT INTO "cities" VALUES (231, 451300, 450000, '来宾市', NULL, 'LaiBinShi', 'LBS', 546100);
INSERT INTO "cities" VALUES (232, 451400, 450000, '崇左市', NULL, 'ChongZuoShi', 'CZS', 532200);
INSERT INTO "cities" VALUES (233, 460100, 460000, '海口市', NULL, 'HaiKouShi', 'HKS', 570100);
INSERT INTO "cities" VALUES (234, 460200, 460000, '三亚市', NULL, 'SanYaShi', 'SYS', 572000);
INSERT INTO "cities" VALUES (235, 460300, 460000, '三沙市', NULL, 'SanShaShi', 'SSS', 573199);
INSERT INTO "cities" VALUES (236, 460400, 460000, '儋州市', NULL, 'DanZhouShi', 'DZS', 571700);
INSERT INTO "cities" VALUES (237, 469000, 460000, '省直辖县级行政区划', NULL, 'ShengZhiXiaXianJiXingZhengQuHua', 'SZXXJXZQH', 570100);
INSERT INTO "cities" VALUES (238, 500100, 500000, '市辖区', NULL, 'ShiXiaQu', 'SXQ', 400000);
INSERT INTO "cities" VALUES (239, 500200, 500000, '县', NULL, 'Xian', 'X', 400000);
INSERT INTO "cities" VALUES (240, 510100, 510000, '成都市', NULL, 'ChengDuShi', 'CDS', 610000);
INSERT INTO "cities" VALUES (241, 510300, 510000, '自贡市', NULL, 'ZiGongShi', 'ZGS', 643000);
INSERT INTO "cities" VALUES (242, 510400, 510000, '攀枝花市', NULL, 'PanZhiHuaShi', 'PZHS', 617000);
INSERT INTO "cities" VALUES (243, 510500, 510000, '泸州市', NULL, 'LuZhouShi', 'LZS', 646000);
INSERT INTO "cities" VALUES (244, 510600, 510000, '德阳市', NULL, 'DeYangShi', 'DYS', 618000);
INSERT INTO "cities" VALUES (245, 510700, 510000, '绵阳市', NULL, 'MianYangShi', 'MYS', 621000);
INSERT INTO "cities" VALUES (246, 510800, 510000, '广元市', NULL, 'GuangYuanShi', 'GYS', 628000);
INSERT INTO "cities" VALUES (247, 510900, 510000, '遂宁市', NULL, 'SuiNingShi', 'SNS', 629000);
INSERT INTO "cities" VALUES (248, 511000, 510000, '内江市', NULL, 'NeiJiangShi', 'NJS', 641000);
INSERT INTO "cities" VALUES (249, 511100, 510000, '乐山市', NULL, 'LeShanShi', 'LSS', 614000);
INSERT INTO "cities" VALUES (250, 511300, 510000, '南充市', NULL, 'NanChongShi', 'NCS', 637000);
INSERT INTO "cities" VALUES (251, 511400, 510000, '眉山市', NULL, 'MeiShanShi', 'MSS', 620000);
INSERT INTO "cities" VALUES (252, 511500, 510000, '宜宾市', NULL, 'YiBinShi', 'YBS', 644000);
INSERT INTO "cities" VALUES (253, 511600, 510000, '广安市', NULL, 'GuangAnShi', 'GAS', 638500);
INSERT INTO "cities" VALUES (254, 511700, 510000, '达州市', NULL, 'DaZhouShi', 'DZS', 635000);
INSERT INTO "cities" VALUES (255, 511800, 510000, '雅安市', NULL, 'YaAnShi', 'YAS', 625000);
INSERT INTO "cities" VALUES (256, 511900, 510000, '巴中市', NULL, 'BaZhongShi', 'BZS', 635600);
INSERT INTO "cities" VALUES (257, 512000, 510000, '资阳市', NULL, 'ZiYangShi', 'ZYS', 641300);
INSERT INTO "cities" VALUES (258, 513200, 510000, '阿坝藏族羌族自治州', NULL, 'ABaZangZuQiangZuZiZhiZhou', 'ABZZQZZZZ', 624000);
INSERT INTO "cities" VALUES (259, 513300, 510000, '甘孜藏族自治州', NULL, 'GanZiZangZuZiZhiZhou', 'GZZZZZZ', 626000);
INSERT INTO "cities" VALUES (260, 513400, 510000, '凉山彝族自治州', NULL, 'LiangShanYiZuZiZhiZhou', 'LSYZZZZ', 615000);
INSERT INTO "cities" VALUES (261, 520100, 520000, '贵阳市', NULL, 'GuiYangShi', 'GYS', 550000);
INSERT INTO "cities" VALUES (262, 520200, 520000, '六盘水市', NULL, 'LiuPanShuiShi', 'LPSS', 553000);
INSERT INTO "cities" VALUES (263, 520300, 520000, '遵义市', NULL, 'ZunYiShi', 'ZYS', 563000);
INSERT INTO "cities" VALUES (264, 520400, 520000, '安顺市', NULL, 'AnShunShi', 'ASS', 561000);
INSERT INTO "cities" VALUES (265, 520500, 520000, '毕节市', NULL, 'BiJieShi', 'BJS', 551700);
INSERT INTO "cities" VALUES (266, 520600, 520000, '铜仁市', NULL, 'TongRenShi', 'TRS', 554300);
INSERT INTO "cities" VALUES (267, 522300, 520000, '黔西南布依族苗族自治州', NULL, 'QianXiNanBuYiZuMiaoZuZiZhiZhou', 'QXNBYZMZZZZ', 562400);
INSERT INTO "cities" VALUES (268, 522600, 520000, '黔东南苗族侗族自治州', NULL, 'QianDongNanMiaoZuDongZuZiZhiZhou', 'QDNMZDZZZZ', 556000);
INSERT INTO "cities" VALUES (269, 522700, 520000, '黔南布依族苗族自治州', NULL, 'QianNanBuYiZuMiaoZuZiZhiZhou', 'QNBYZMZZZZ', 558000);
INSERT INTO "cities" VALUES (270, 530100, 530000, '昆明市', NULL, 'KunMingShi', 'KMS', 650000);
INSERT INTO "cities" VALUES (271, 530300, 530000, '曲靖市', NULL, 'QuJingShi', 'QJS', 655000);
INSERT INTO "cities" VALUES (272, 530400, 530000, '玉溪市', NULL, 'YuXiShi', 'YXS', 653100);
INSERT INTO "cities" VALUES (273, 530500, 530000, '保山市', NULL, 'BaoShanShi', 'BSS', 678000);
INSERT INTO "cities" VALUES (274, 530600, 530000, '昭通市', NULL, 'ZhaoTongShi', 'ZTS', 657000);
INSERT INTO "cities" VALUES (275, 530700, 530000, '丽江市', NULL, 'LiJiangShi', 'LJS', 674100);
INSERT INTO "cities" VALUES (276, 530800, 530000, '普洱市', NULL, 'PuErShi', 'PES', 654800);
INSERT INTO "cities" VALUES (277, 530900, 530000, '临沧市', NULL, 'LinCangShi', 'LCS', 677000);
INSERT INTO "cities" VALUES (278, 532300, 530000, '楚雄彝族自治州', NULL, 'ChuXiongYiZuZiZhiZhou', 'CXYZZZZ', 675000);
INSERT INTO "cities" VALUES (279, 532500, 530000, '红河哈尼族彝族自治州', NULL, 'HongHeHaNiZuYiZuZiZhiZhou', 'HHHNZYZZZZ', 661400);
INSERT INTO "cities" VALUES (280, 532600, 530000, '文山壮族苗族自治州', NULL, 'WenShanZhuangZuMiaoZuZiZhiZhou', 'WSZZMZZZZ', 663000);
INSERT INTO "cities" VALUES (281, 532800, 530000, '西双版纳傣族自治州', NULL, 'XiShuangBanNaDaiZuZiZhiZhou', 'XSBNDZZZZ', 666100);
INSERT INTO "cities" VALUES (282, 532900, 530000, '大理白族自治州', NULL, 'DaLiBaiZuZiZhiZhou', 'DLBZZZZ', 671000);
INSERT INTO "cities" VALUES (283, 533100, 530000, '德宏傣族景颇族自治州', NULL, 'DeHongDaiZuJingPoZuZiZhiZhou', 'DHDZJPZZZZ', 678400);
INSERT INTO "cities" VALUES (284, 533300, 530000, '怒江傈僳族自治州', NULL, 'NuJiangLiSuZuZiZhiZhou', 'NJLSZZZZ', 673100);
INSERT INTO "cities" VALUES (285, 533400, 530000, '迪庆藏族自治州', NULL, 'DiQingZangZuZiZhiZhou', 'DQZZZZZ', 674400);
INSERT INTO "cities" VALUES (286, 540100, 540000, '拉萨市', NULL, 'LaSaShi', 'LSS', 850000);
INSERT INTO "cities" VALUES (287, 540200, 540000, '日喀则市', NULL, 'RiKaZeShi', 'RKZS', 857000);
INSERT INTO "cities" VALUES (288, 540300, 540000, '昌都市', NULL, 'ChangDuShi', 'CDS', 854000);
INSERT INTO "cities" VALUES (289, 540400, 540000, '林芝市', NULL, 'LinZhiShi', 'LZS', 860018);
INSERT INTO "cities" VALUES (290, 540500, 540000, '山南市', NULL, 'ShanNanShi', 'SNS', 856000);
INSERT INTO "cities" VALUES (291, 542400, 540000, '那曲地区', NULL, 'NaQuDiQu', 'NQDQ', 852000);
INSERT INTO "cities" VALUES (292, 542500, 540000, '阿里地区', NULL, 'ALiDiQu', 'ALDQ', 859000);
INSERT INTO "cities" VALUES (293, 610100, 610000, '西安市', NULL, 'XiAnShi', 'XAS', 710000);
INSERT INTO "cities" VALUES (294, 610200, 610000, '铜川市', NULL, 'TongChuanShi', 'TCS', 727000);
INSERT INTO "cities" VALUES (295, 610300, 610000, '宝鸡市', NULL, 'BaoJiShi', 'BJS', 721000);
INSERT INTO "cities" VALUES (296, 610400, 610000, '咸阳市', NULL, 'XianYangShi', 'XYS', 712000);
INSERT INTO "cities" VALUES (297, 610500, 610000, '渭南市', NULL, 'WeiNanShi', 'WNS', 714000);
INSERT INTO "cities" VALUES (298, 610600, 610000, '延安市', NULL, 'YanAnShi', 'YAS', 716000);
INSERT INTO "cities" VALUES (299, 610700, 610000, '汉中市', NULL, 'HanZhongShi', 'HZS', 723000);
INSERT INTO "cities" VALUES (300, 610800, 610000, '榆林市', NULL, 'YuLinShi', 'YLS', 719000);
INSERT INTO "cities" VALUES (301, 610900, 610000, '安康市', NULL, 'AnKangShi', 'AKS', 725000);
INSERT INTO "cities" VALUES (302, 611000, 610000, '商洛市', NULL, 'ShangLuoShi', 'SLS', 726000);
INSERT INTO "cities" VALUES (303, 620100, 620000, '兰州市', NULL, 'LanZhouShi', 'LZS', 730000);
INSERT INTO "cities" VALUES (304, 620200, 620000, '嘉峪关市', NULL, 'JiaYuGuanShi', 'JYGS', 735100);
INSERT INTO "cities" VALUES (305, 620300, 620000, '金昌市', NULL, 'JinChangShi', 'JCS', 737100);
INSERT INTO "cities" VALUES (306, 620400, 620000, '白银市', NULL, 'BaiYinShi', 'BYS', 730900);
INSERT INTO "cities" VALUES (307, 620500, 620000, '天水市', NULL, 'TianShuiShi', 'TSS', 741000);
INSERT INTO "cities" VALUES (308, 620600, 620000, '武威市', NULL, 'WuWeiShi', 'WWS', 733000);
INSERT INTO "cities" VALUES (309, 620700, 620000, '张掖市', NULL, 'ZhangYeShi', 'ZYS', 734000);
INSERT INTO "cities" VALUES (310, 620800, 620000, '平凉市', NULL, 'PingLiangShi', 'PLS', 744000);
INSERT INTO "cities" VALUES (311, 620900, 620000, '酒泉市', NULL, 'JiuQuanShi', 'JQS', 735000);
INSERT INTO "cities" VALUES (312, 621000, 620000, '庆阳市', NULL, 'QingYangShi', 'QYS', 745000);
INSERT INTO "cities" VALUES (313, 621100, 620000, '定西市', NULL, 'DingXiShi', 'DXS', 743000);
INSERT INTO "cities" VALUES (314, 621200, 620000, '陇南市', NULL, 'LongNanShi', 'LNS', 742500);
INSERT INTO "cities" VALUES (315, 622900, 620000, '临夏回族自治州', NULL, 'LinXiaHuiZuZiZhiZhou', 'LXHZZZZ', 731100);
INSERT INTO "cities" VALUES (316, 623000, 620000, '甘南藏族自治州', NULL, 'GanNanZangZuZiZhiZhou', 'GNZZZZZ', 747000);
INSERT INTO "cities" VALUES (317, 630100, 630000, '西宁市', NULL, 'XiNingShi', 'XNS', 810000);
INSERT INTO "cities" VALUES (318, 630200, 630000, '海东市', NULL, 'HaiDongShi', 'HDS', 810600);
INSERT INTO "cities" VALUES (319, 632200, 630000, '海北藏族自治州', NULL, 'HaiBeiZangZuZiZhiZhou', 'HBZZZZZ', 812200);
INSERT INTO "cities" VALUES (320, 632300, 630000, '黄南藏族自治州', NULL, 'HuangNanZangZuZiZhiZhou', 'HNZZZZZ', 811300);
INSERT INTO "cities" VALUES (321, 632500, 630000, '海南藏族自治州', NULL, 'HaiNanZangZuZiZhiZhou', 'HNZZZZZ', 813000);
INSERT INTO "cities" VALUES (322, 632600, 630000, '果洛藏族自治州', NULL, 'GuoLuoZangZuZiZhiZhou', 'GLZZZZZ', 814000);
INSERT INTO "cities" VALUES (323, 632700, 630000, '玉树藏族自治州', NULL, 'YuShuZangZuZiZhiZhou', 'YSZZZZZ', 815000);
INSERT INTO "cities" VALUES (324, 632800, 630000, '海西蒙古族藏族自治州', NULL, 'HaiXiMengGuZuZangZuZiZhiZhou', 'HXMGZZZZZZ', 817000);
INSERT INTO "cities" VALUES (325, 640100, 640000, '银川市', NULL, 'YinChuanShi', 'YCS', 750000);
INSERT INTO "cities" VALUES (326, 640200, 640000, '石嘴山市', NULL, 'ShiZuiShanShi', 'SZSS', 753000);
INSERT INTO "cities" VALUES (327, 640300, 640000, '吴忠市', NULL, 'WuZhongShi', 'WZS', 751100);
INSERT INTO "cities" VALUES (328, 640400, 640000, '固原市', NULL, 'GuYuanShi', 'GYS', 756000);
INSERT INTO "cities" VALUES (329, 640500, 640000, '中卫市', NULL, 'ZhongWeiShi', 'ZWS', 755000);
INSERT INTO "cities" VALUES (330, 650100, 650000, '乌鲁木齐市', NULL, 'WuLuMuQiShi', 'WLMQS', 830000);
INSERT INTO "cities" VALUES (331, 650200, 650000, '克拉玛依市', NULL, 'KeLaMaYiShi', 'KLMYS', 834000);
INSERT INTO "cities" VALUES (332, 650400, 650000, '吐鲁番市', NULL, 'TuLuFanShi', 'TLFS', 838000);
INSERT INTO "cities" VALUES (333, 650500, 650000, '哈密市', NULL, 'HaMiShi', 'HMS', 839000);
INSERT INTO "cities" VALUES (334, 652300, 650000, '昌吉回族自治州', NULL, 'ChangJiHuiZuZiZhiZhou', 'CJHZZZZ', 831100);
INSERT INTO "cities" VALUES (335, 652700, 650000, '博尔塔拉蒙古自治州', NULL, 'BoErTaLaMengGuZiZhiZhou', 'BETLMGZZZ', 833400);
INSERT INTO "cities" VALUES (336, 652800, 650000, '巴音郭楞蒙古自治州', NULL, 'BaYinGuoLengMengGuZiZhiZhou', 'BYGLMGZZZ', 841000);
INSERT INTO "cities" VALUES (337, 652900, 650000, '阿克苏地区', NULL, 'AKeSuDiQu', 'AKSDQ', 843000);
INSERT INTO "cities" VALUES (338, 653000, 650000, '克孜勒苏柯尔克孜自治州', NULL, 'KeZiLeSuKeErKeZiZiZhiZhou', 'KZLSKEKZZZZ', 845350);
INSERT INTO "cities" VALUES (339, 653100, 650000, '喀什地区', NULL, 'KaShiDiQu', 'KSDQ', 844000);
INSERT INTO "cities" VALUES (340, 653200, 650000, '和田地区', NULL, 'HeTianDiQu', 'HTDQ', 848000);
INSERT INTO "cities" VALUES (341, 654000, 650000, '伊犁哈萨克自治州', NULL, 'YiLiHaSaKeZiZhiZhou', 'YLHSKZZZ', 835000);
INSERT INTO "cities" VALUES (342, 654200, 650000, '塔城地区', NULL, 'TaChengDiQu', 'TCDQ', 834700);
INSERT INTO "cities" VALUES (343, 654300, 650000, '阿勒泰地区', NULL, 'ALeTaiDiQu', 'ALTDQ', 836500);
INSERT INTO "cities" VALUES (344, 659000, 650000, '自治区直辖县级行政区划', NULL, 'ZiZhiQuZhiXiaXianJiXingZhengQuHua', 'ZZQZXXJXZQH', 830000);
INSERT INTO "cities" VALUES (345, 712700, 710000, '澎湖县', NULL, 'PengHuXian', 'PHX', NULL);
INSERT INTO "cities" VALUES (346, 712600, 710000, '花莲县', NULL, 'HuaLianXian', 'HLX', NULL);
INSERT INTO "cities" VALUES (347, 712500, 710000, '台东县', NULL, 'TaiDongXian', 'TDX', NULL);
INSERT INTO "cities" VALUES (348, 712400, 710000, '屏东县', NULL, 'PingDongXian', 'PDX', NULL);
INSERT INTO "cities" VALUES (349, 712100, 710000, '云林县', NULL, 'YunLinXian', 'YLX', NULL);
INSERT INTO "cities" VALUES (350, 711900, 710000, '嘉义县', NULL, 'JiaYiXian', 'JYX', NULL);
INSERT INTO "cities" VALUES (351, 711700, 710000, '彰化县', NULL, 'ZhangHuaXian', 'ZHX', NULL);
INSERT INTO "cities" VALUES (352, 711500, 710000, '苗栗县', NULL, 'MiaoLiXian', 'MLX', NULL);
INSERT INTO "cities" VALUES (353, 711400, 710000, '桃园县', NULL, 'TaoYuanXian', 'TYX', NULL);
INSERT INTO "cities" VALUES (354, 711300, 710000, '新竹县', NULL, 'XinZhuXian', 'XZX', NULL);
INSERT INTO "cities" VALUES (355, 711200, 710000, '宜兰县', NULL, 'YiLanXian', 'YLX', NULL);
INSERT INTO "cities" VALUES (356, 711100, 710000, '新北市', NULL, 'XinBeiShi', 'XBS', NULL);
INSERT INTO "cities" VALUES (357, 710900, 710000, '嘉义市', NULL, 'JiaYiShi', 'JYS', NULL);
INSERT INTO "cities" VALUES (358, 710800, 710000, '新竹市', NULL, 'XinZhuShi', 'XZS', NULL);
INSERT INTO "cities" VALUES (359, 710700, 710000, '基隆市', NULL, 'JiLongShi', 'JLS', NULL);
INSERT INTO "cities" VALUES (360, 710600, 710000, '南投县', NULL, 'NanTouXian', 'NTX', NULL);
INSERT INTO "cities" VALUES (361, 710500, 710000, '金门县', NULL, 'JinMenXian', 'JMX', NULL);
INSERT INTO "cities" VALUES (362, 710400, 710000, '台中市', NULL, 'TaiZhongShi', 'TZS', NULL);
INSERT INTO "cities" VALUES (363, 710300, 710000, '台南市', NULL, 'TaiNanShi', 'TNS', NULL);
INSERT INTO "cities" VALUES (364, 710200, 710000, '高雄市', NULL, 'GaoXiongShi', 'GXS', NULL);
INSERT INTO "cities" VALUES (365, 710100, 710000, '台北市', NULL, 'TaiBeiShi', 'TBS', NULL);
INSERT INTO "cities" VALUES (366, 810300, 810000, '新界', NULL, 'XinJie', 'XJ', NULL);
INSERT INTO "cities" VALUES (367, 810200, 810000, '九龙', NULL, 'JiuLong', 'JL', NULL);
INSERT INTO "cities" VALUES (368, 810100, 810000, '香港岛', NULL, 'XiangGangDao', 'XGD', NULL);
INSERT INTO "cities" VALUES (369, 820200, 820000, '离岛', NULL, 'LiDao', 'LD', NULL);
INSERT INTO "cities" VALUES (370, 820100, 820000, '澳门半岛', NULL, 'AoMenBanDao', 'AMBD', NULL);
COMMIT;

-- ----------------------------
-- Auto increment value for cities
-- ----------------------------
UPDATE "main"."sqlite_sequence" SET seq = 370 WHERE name = 'cities';

-- ----------------------------
-- Indexes structure for table cities
-- ----------------------------
CREATE INDEX "main"."index_cities_on_code"
ON "cities" (
  "code" ASC
);
CREATE INDEX "main"."index_cities_on_pinyin"
ON "cities" (
  "pinyin" ASC
);
CREATE INDEX "main"."index_cities_on_pinyin_abbr"
ON "cities" (
  "pinyin_abbr" ASC
);
CREATE INDEX "main"."index_cities_on_zip_code"
ON "cities" (
  "zip_code" ASC
);

PRAGMA foreign_keys = true;
