SET NAMES UTF8;
DROP DATABASE IF EXISTS hw;
CREATE DATABASE hw CHARSET=UTF8;
USE hw;


/** 热销单品 **/
CREATE TABLE hw_rx(
    pid INT PRIMARY KEY AUTO_INCREMENT,
    pimg VARCHAR(128),
    ptitle VARCHAR(64),
    pdesc VARCHAR(128),
    pprice VARCHAR(32),
    ptips VARCHAR(32),
    pboolean VARCHAR(16)
);

INSERT INTO hw_rx VALUES
/**  **/
(NULL,'/img/container/secondFloor/11.png','荣耀8X','64GB降100 老用户再送数据线','1299','','false'),
(NULL,'/img/container/secondFloor/12.png','HUAWEI P30','最高享6期免息','3988','热卖','true'),
(NULL,'/img/container/secondFloor/13.png','荣耀10青春版','4+64GB减150','1299','爆款','true'),
(NULL,'/img/container/secondFloor/14.png','HUAWEI Mate 20 Pro','赠好礼|享6期免息','5499','热卖','true'),
(NULL,'/img/container/secondFloor/21.png','荣耀10','最高优惠400元','1799','爆款','true'),
(NULL,'/img/container/secondFloor/22.png','HUAWEI nova 4','限量赠好礼','2699','','false'),
(NULL,'/img/container/secondFloor/23.png','荣耀畅玩8C','4GB+32GB到手价899','899','热卖','true'),
(NULL,'/img/container/secondFloor/24.png','HUAWEI nova 4e','限量赠礼','1999','','false');
/** 第一个左右移动的列表 **/
CREATE TABLE hw_listOne(
    pid INT PRIMARY KEY AUTO_INCREMENT,
    pimg VARCHAR(128),
    pdesc VARCHAR(128),
    ptitle VARCHAR(64),
    pprice VARCHAR(32),
    ptips VARCHAR(32)
);
INSERT INTO hw_listOne VALUES
(NULL,'img/container/thirdFloor/1.png',"最高直降300+赠背包+3期免息","HUAWEI MateBook D","4888","热卖"),
(NULL,'img/container/thirdFloor/2.png',"新品预订省30元赠数据线","荣耀智能体脂秤WiFi版","199","新品"),
(NULL,'img/container/thirdFloor/3.png',"限时直降190元","华为儿童手表 3 Pro","798","热卖"),
(NULL,'img/container/thirdFloor/4.png',"全款预售 享多重好礼","HUAWEI FreeBuds 悦享版无线耳机","399","新品"),
(NULL,'img/container/thirdFloor/5.png',"订金100元抵400元","荣耀MagicBook 2019 锐龙版","3999","618特惠预定"),
(NULL,'img/container/thirdFloor/6.png',"订金30抵45","华为路由WS5200四核版","249","新品"),
(NULL,'img/container/thirdFloor/7.png',"新品上市  享6期免息","HUAWEI MateBook X Pro 2019款","8999","新品上市"),
(NULL,'img/container/thirdFloor/8.png',"最高直降200元","荣耀平板5 10.1英寸","1399","618特惠预定"),
(NULL,'img/container/thirdFloor/9.png',"订金30抵50","华为快充移动电源 20000mAh (Max 18W)","229","新品"),
(NULL,'img/container/thirdFloor/10.png',"强劲续航 智能提醒","HUAWEI WATCH GT","1288","新品上市"),
(NULL,'img/container/thirdFloor/11.png',"新品预订省20元赠数据线","荣耀魔方蓝牙音箱","99","新品"),
(NULL,'img/container/thirdFloor/12.png',"订金10元抵30元","荣耀手环4","199","爆款"),
(NULL,'img/container/thirdFloor/13.png',"13英寸2K全面屏","HUAWEI MateBook 13","6399","爆款"),
(NULL,'img/container/thirdFloor/14.png',"新品预订省20元赠数据线","荣耀移动电源2 20000mAh (Max 18W) 快充版","169","新品"),
(NULL,'img/container/thirdFloor/14.png',"订金9元最高抵109","荣耀平板5 8英寸","999","");
/**  **/
CREATE TABLE hw_phone(
    pid INT PRIMARY KEY AUTO_INCREMENT,
    pimg VARCHAR(128),
    ptitle VARCHAR(64),
    pdesc VARCHAR(128),
    pprice VARCHAR(32),
    ptips VARCHAR(32)
);
INSERT INTO hw_phone VALUES
(NULL,'img/container/fifthFloor/12.png',"华为畅享9","32G领券减100","999",""),
(NULL,'img/container/fifthFloor/13.png',"荣耀Magic2","最高优惠800元","3499",""),
(NULL,'img/container/fifthFloor/14.png',"HUAWEI P20 Pro","下单减400+赠好礼","4988","爆款"),
(NULL,'img/container/fifthFloor/15.png',"荣耀Note10","最高优惠800元","1999","特惠"),
(NULL,'img/container/fifthFloor/21.png',"华为畅享 9S","2400万超广角AI三摄","1499",""),
(NULL,'img/container/fifthFloor/22.png',"荣耀8X Max","64GB减100","1399",""),
(NULL,'img/container/fifthFloor/23.png',"HUAWEI Mate 20 RS","保时捷设计","12999",""),
(NULL,'img/container/fifthFloor/24.png',"荣耀Play","高配版优惠300","1699","爆款"),
(NULL,'img/container/fifthFloor/25.png',"华为畅享 9e","6.09英寸珍珠屏","999",""),
(NULL,'img/container/fifthFloor/31.png',"荣耀畅玩7","购机赠豪华礼包","599",""),
(NULL,'img/container/fifthFloor/32.png',"HUAWEI nova 3","领券最高减100元","2799",""),
(NULL,'img/container/fifthFloor/33.png',"HUAWEI nova 3i","","2199",""),
(NULL,'img/container/fifthFloor/34.png',"荣耀畅玩8C","限时优惠100","899","热卖"),
(NULL,'img/container/fifthFloor/35.png',"华为畅享 8e 青春","5.45英寸高清全面屏 ","799","");

/**  **/
-- (NULL,'img/container/fourthFloor/1.jpg'),
-- (NULL,'img/container/fourthFloor/2.jpg'),
-- (NULL,'img/container/fourthFloor/3.png'),
-- (NULL,'img/container/fourthFloor/4.jpg'),
-- (NULL,'img/container/fourthFloor/5.jpg'),
-- (NULL,'img/container/fourthFloor/6.png'),
-- (NULL,'img/container/fourthFloor/7.jpg'),
/**  **/
-- (NULL,'img/container/fifthFloor/11.png'),
-- (NULL,'img/container/fifthFloor/12.png'),
-- (NULL,'img/container/fifthFloor/13.png'),
-- (NULL,'img/container/fifthFloor/14.png'),
-- (NULL,'img/container/fifthFloor/15.png'),
-- (NULL,'img/container/fifthFloor/21.png'),
-- (NULL,'img/container/fifthFloor/22.png'),
-- (NULL,'img/container/fifthFloor/23.png'),
-- (NULL,'img/container/fifthFloor/24.png'),
-- (NULL,'img/container/fifthFloor/25.png'),
-- (NULL,'img/container/fifthFloor/31.png'),
-- (NULL,'img/container/fifthFloor/32.png'),
-- (NULL,'img/container/fifthFloor/33.png'),
-- (NULL,'img/container/fifthFloor/34.png'),
-- (NULL,'img/container/fifthFloor/35.png'),
/**  **/
CREATE TABLE hw_laptop(
    pid INT PRIMARY KEY AUTO_INCREMENT,
    pimg VARCHAR(128),
    ptitle VARCHAR(64),
    pdesc VARCHAR(128),
    pprice VARCHAR(32),
    ptips VARCHAR(32)
);
INSERT INTO hw_laptop VALUES
(NULL,'img/container/sixthFloor/12.png','荣耀MagicBook 2019 锐龙新品','新品限时直降200元','4499','新品'),
(NULL,'img/container/sixthFloor/13.png','HUAWEI MateBook 14','优享购 免费登记中','6999','新品上市'),
(NULL,'img/container/sixthFloor/14.png','荣耀MagicBook','最高直降300元 享6期免息','4699',''),
(NULL,'img/container/sixthFloor/15.png','HUAWEI MateBook E 2019 款','赠内胆包+3期免息+赠红酒券','4999','新品上市'),
(NULL,'img/container/sixthFloor/21.png','HUAWEI MateBook D','限量赠华为双肩包','5188','热卖'),
(NULL,'img/container/sixthFloor/22.png','荣耀MagicBook 2019 锐龙版','新品限时直降200元','3799','新品'),
(NULL,'img/container/sixthFloor/23.png','HUAWEI MateBook 13','稀缺货源  现货速发','5699','爆款'),
(NULL,'img/container/sixthFloor/24.png','HUAWEI MateBook E','限量赠配件礼包','4288','赠超值配件'),
(NULL,'img/container/sixthFloor/25.png','HUAWEI MateBook X','2K高清屏  指纹式开机','7188','赠超值配件');
/**  **/
CREATE TABLE hw_slab(
    pid INT PRIMARY KEY AUTO_INCREMENT,
    pimg VARCHAR(128),
    ptitle VARCHAR(64),
    pdesc VARCHAR(128),
    pprice VARCHAR(32),
    ptips VARCHAR(32)
);
INSERT INTO hw_slab VALUES
(NULL,'img/container/sixth1Floor/12.png','荣耀平板5 10.1英寸','最高直降200元','1199',''),
(NULL,'img/container/sixth1Floor/13.png','华为平板 M5 青春版 10.1英寸','AI 智能语音控制','1899','热卖'),
(NULL,'img/container/sixth1Floor/14.png','荣耀平板5 8英寸','最高直降100元','999',''),
(NULL,'img/container/sixth1Floor/15.png','华为畅享平板','畅快追剧，大屏享受','1299','热卖'),
(NULL,'img/container/sixth1Floor/21.png','荣耀Waterplay','防水影音平板  四喇叭扬声器','1499',''),
(NULL,'img/container/sixth1Floor/22.png','华为平板 M5 8.4英寸','哈曼卡顿调音','2088','爆款'),
(NULL,'img/container/sixth1Floor/23.png','荣耀Waterplay 8英寸','最高直降200元','1499',''),
(NULL,'img/container/sixth1Floor/24.png','华为平板 M5 10.8英寸','2K 高清屏','2888','爆款'),
(NULL,'img/container/sixth1Floor/25.png','荣耀畅玩平板2 9.6英寸','限时直降50元','1049','');
/**  **/
CREATE TABLE hw_watches(
    pid INT PRIMARY KEY AUTO_INCREMENT,
    pimg VARCHAR(128),
    ptitle VARCHAR(64),
    pdesc VARCHAR(128),
    pprice VARCHAR(32),
    ptips VARCHAR(32)
);
INSERT INTO hw_watches VALUES
(NULL,'img/container/seventhFloor/12.png','荣耀手表魔法系列','最高直降200','799',''),
(NULL,'img/container/seventhFloor/13.png','华为手环 B5','最高直降100元','899','爆款'),
(NULL,'img/container/seventhFloor/14.png','荣耀手表梦幻系列','最高直降200','799',''),
(NULL,'img/container/seventhFloor/21.png','HUAWEI WATCH 2 Pro','手机手表共享一个号码','2288','热卖'),
(NULL,'img/container/seventhFloor/22.png','荣耀手环4','爆款限时优惠10','189','爆款'),
(NULL,'img/container/seventhFloor/23.png','华为手环 3 Pro','独立GPS  彩屏健康手环 ','399',''),
(NULL,'img/container/seventhFloor/24.png','荣耀手环3','最高直降90元','109','特惠'),
(NULL,'img/container/seventhFloor/25.png','华为儿童手表 3 Pro','4G全网通 高清拍照','988','热卖');

CREATE TABLE hw_subWatches(
    pid INT PRIMARY KEY AUTO_INCREMENT,
    pimg VARCHAR(128),
    pdesc VARCHAR(128),
    ptitle VARCHAR(64),
    pprice VARCHAR(32),
    ptips VARCHAR(32)
);
INSERT INTO hw_subWatches VALUES
(NULL,'img/container/seventhFloor/31.png','限时直降70元','荣耀小K 2 儿童手表','229',''),
(NULL,'img/container/seventhFloor/32.png','低调奢华 天生不凡','华为智能手表 保时捷联合设计','4988',''),
(NULL,'img/container/seventhFloor/33.png','实时心率  彩屏触控','华为手环 3','269','热卖'),
(NULL,'img/container/seventhFloor/34.png','蓝牙通话，NFC支付','HUAWEI WATCH 2','1388',''),
(NULL,'img/container/seventhFloor/35.png','两种佩戴方式','荣耀手环4 Running版','99',''),
(NULL,'img/container/seventhFloor/36.png','精准定位  清晰通话','华为儿童手表 3','398','热卖'),
(NULL,'img/container/seventhFloor/37.png','两种佩戴方式','荣耀手环4 Running版','99',''),
(NULL,'img/container/seventhFloor/38.png','精准定位  清晰通话','华为儿童手表 3','398','热卖'),
(NULL,'img/container/seventhFloor/39.png','是手环 也是耳机','华为手环B3 青春版','499',''),
(NULL,'img/container/seventhFloor/310.png','OLED大屏，防尘防水','荣耀畅玩手环A2','129','限时优惠20元'),
(NULL,'img/container/seventhFloor/311.png','14天持久续航','华为手环 3e 跑步精灵','109',''),
(NULL,'img/container/seventhFloor/312.png','适配HUAWEI P20系列，Mate 10系列','HUAWEI VR 2','1799','');
/**  **/
CREATE TABLE hw_homes(
    pid INT PRIMARY KEY AUTO_INCREMENT,
    pimg VARCHAR(128),
    ptitle VARCHAR(64),
    pdesc VARCHAR(128),
    pprice VARCHAR(32),
    ptips VARCHAR(32)
);
INSERT INTO hw_homes VALUES
(NULL,'img/container/eighthFloor/12.png','荣耀路由Pro 2','四核全千兆','349',''),
(NULL,'img/container/eighthFloor/13.png','华为 AI 音箱','丹拿音质 声纹识别','399','爆款'),
(NULL,'img/container/eighthFloor/14.png','荣耀YOYO智能音箱','智能通话 能听会说','189','限时值降10元'),
(NULL,'img/container/eighthFloor/21.png','华为路由WS5200增强版','双核真双频 就是快','229','爆款'),
(NULL,'img/container/eighthFloor/22.png','荣耀路由2S','4颗放大器 信号更强','189','限时直降10元'),
(NULL,'img/container/eighthFloor/23.png','华为路由器WS5102','真双频  就是快','159','热卖'),
(NULL,'img/container/eighthFloor/24.png','荣耀路由Pro','双千兆网速','269','限时直降59元'),
(NULL,'img/container/eighthFloor/25.png','华为备咖存储','1T 大容量','699','热卖');

CREATE TABLE hw_subHomes(
    pid INT PRIMARY KEY AUTO_INCREMENT,
    pimg VARCHAR(128),
    ptitle VARCHAR(64),
    pdesc VARCHAR(128),
    pprice VARCHAR(32),
    ptips VARCHAR(32)
);
INSERT INTO hw_subHomes VALUES
(NULL,'img/container/eighthFloor/31.png','荣耀盒子Pro','限时直降20元','399',''),
(NULL,'img/container/eighthFloor/32.png','华为路由器 A1','千兆网口+千兆WiFi','399','爆款'),
(NULL,'img/container/eighthFloor/33.png','荣耀存储','限时直降50元','649',''),
(NULL,'img/container/eighthFloor/34.png','华为子母路由器 Q1','大户型优选  ','459',''),
(NULL,'img/container/eighthFloor/35.png','荣耀路由 X2','限时优惠10元','139',''),
(NULL,'img/container/eighthFloor/36.png','华为路由WS5200','真双频就是快','199',''),
(NULL,'img/container/eighthFloor/37.png','荣耀分布式路由','限时最高优惠100元','799',''),
(NULL,'img/container/eighthFloor/38.png','华为 WiFi 放大器','新品上市','99',''),
(NULL,'img/container/eighthFloor/39.png','荣耀路由X1 增强版','限时直降10元','139',''),
(NULL,'img/container/eighthFloor/310.png','华为路由器WS5100','支持5G信号智能优先选择','159',''),
(NULL,'img/container/eighthFloor/311.png','荣耀WiFi穿墙宝','即插即用 自动配对','255',''),
(NULL,'img/container/eighthFloor/312.png','华为随行WiFi 2 畅享版','轻薄小巧 口袋WiFi','349',''),
(NULL,'img/container/eighthFloor/313.png','华为4G路由 2（白色）','4G全网通','389','');

/**  **/
CREATE TABLE hw_parts(
    pid INT PRIMARY KEY AUTO_INCREMENT,
    pimg VARCHAR(128),
    ptitle VARCHAR(64),
    pdesc VARCHAR(128),
    pprice VARCHAR(32),
    ptips VARCHAR(32)
);
INSERT INTO hw_parts VALUES
(NULL,'img/container/ninthFloor/12.png','FlyPods系列无线耳机','赠599元红酒券等礼包','799','享分期免息'),
(NULL,'img/container/ninthFloor/13.png','HUAWEI FreeBuds 2系列','骨声纹识别 智慧声控','999',''),
(NULL,'img/container/ninthFloor/14.png','荣耀FlyPods青春版 真无线耳机','赠599元红酒券等礼包','399','享分期免息'),
(NULL,'img/container/ninthFloor/21.png','华为安居智能摄像机','360度全景视角','299',''),
(NULL,'img/container/ninthFloor/22.png','荣耀智能体脂秤','赠210元礼包','129','限时优惠40元'),
(NULL,'img/container/ninthFloor/23.png','华为40W超级快充移动电源','双向40W超级快充','369',''),
(NULL,'img/container/ninthFloor/24.png','荣耀xSport 运动蓝牙耳机','赠210元礼包','229','限时优惠20元'),
(NULL,'img/container/ninthFloor/25.png','华为无线充电器','支持Qi无线充电标准','99','');


CREATE TABLE hw_subParts(
    pid INT PRIMARY KEY AUTO_INCREMENT,
    pimg VARCHAR(128),
    ptitle VARCHAR(64),
    pdesc VARCHAR(128),
    pprice VARCHAR(32),
    ptips VARCHAR(32)
);
INSERT INTO hw_subParts VALUES
(NULL,'img/container/ninthFloor/31.png','华为无线充电器','支持Qi无线充电标准  ','99',''),
(NULL,'img/container/ninthFloor/32.png','华为智能体脂秤','健身减脂必备  ','129','爆款'),
(NULL,'img/container/ninthFloor/33.png','华为主动降噪耳机3','3种降噪模式切换  ','349',''),
(NULL,'img/container/ninthFloor/34.png','荣耀小哨兵智能摄像机 广角版','AI高清夜视/看得清更安心  ','179',''),
(NULL,'img/container/ninthFloor/35.png','华为无线三脚架自拍杆','开启自拍新时代  ','89','爆款'),
(NULL,'img/container/ninthFloor/36.png','荣耀小天鹅蓝牙音箱','360°高清环绕音箱/优雅外观  ','99',''),
(NULL,'img/container/ninthFloor/37.png','华为车载充电器快充版','支持9V2A快充  ','59','热卖'),
(NULL,'img/container/ninthFloor/38.png','荣耀MINI照片打印机','高清画质/小巧便携  ','549',''),
(NULL,'img/container/ninthFloor/39.png','荣耀引擎耳机2代','物理调音黑科技  ','79','显示优惠50元'),
(NULL,'img/container/ninthFloor/310.png','荣耀车载充电器（supercharge 快充版）（赠数据线）','赠5A Type C数据线  ','99','限时优惠60元'),
(NULL,'img/container/ninthFloor/311.png','华为全景相机','360度无界视野  ','599',''),
(NULL,'img/container/ninthFloor/312.png','荣耀小哨兵智能摄像机','AI高清夜视/看得清更安心  ','179',''),
(NULL,'img/container/ninthFloor/313.png','华为运动心率蓝牙耳机R1 Pro','可测心理压力 提供放松训练  ','549',''),
(NULL,'img/container/ninthFloor/314.png','荣耀 AM116半入耳式耳机','三键线控/高性价比  ','49','限时优惠40元'),
(NULL,'img/container/ninthFloor/315.png','华为车载充电器SuperCharge快充','4.5V5A车充  ','149','爆款'),
(NULL,'img/container/ninthFloor/316.png','荣耀心晴耳机','实时心率检测  ','99','限时优惠30元'),
(NULL,'img/container/ninthFloor/317.png','华为全景相机酷玩版','360°照片/视频/微博直播  ','599',''),
(NULL,'img/container/ninthFloor/318.png','荣耀魔声耳机2','给您如临现场的音质体验  ','169','');
/**  **/
CREATE TABLE hw_boutique(
    pid INT PRIMARY KEY AUTO_INCREMENT,
    pimg VARCHAR(128),
    ptitle VARCHAR(64),
    pdesc VARCHAR(128),
    pprice VARCHAR(32),
    ptips VARCHAR(32)
);
INSERT INTO hw_boutique VALUES
(NULL,'img/container/tenthFloor/12.png','海雀AI全景摄像头','用芯看家护宠','299','智能生态'),
(NULL,'img/container/tenthFloor/13.png','科沃斯 扫拖一体机器人','视觉导航 清晰辨位','1899','新品'),
(NULL,'img/container/tenthFloor/14.png','720全效空气净化器','灭菌除醛 全效净化','1299','智能生态'),
(NULL,'img/container/tenthFloor/21.png','汇泰龙智能指纹锁','360°指纹识别','2299','智能生态'),
(NULL,'img/container/tenthFloor/22.png','科沃 智能扫地机器人','净彩生活 不止优雅','799','直降'),
(NULL,'img/container/tenthFloor/23.png','卡赫高温高压蒸汽清洁机','除油除污','799','新品'),
(NULL,'img/container/tenthFloor/24.png','55度moscup智能降温杯','一分钟快速降温','239','爆款'),
(NULL,'img/container/tenthFloor/25.png','欧普香薰助眠灯','静谧时光 润色添香','199','智能生态');


CREATE TABLE hw_subBoutique(
    pid INT PRIMARY KEY AUTO_INCREMENT,
    pimg VARCHAR(128),
    ptitle VARCHAR(64),
    pdesc VARCHAR(128),
    pprice VARCHAR(32),
    ptips VARCHAR(32)
);
INSERT INTO hw_subBoutique VALUES
(NULL,'img/container/tenthFloor/31.png','三思慧圆台灯','爱上智慧家居  ','179',''),
(NULL,'img/container/tenthFloor/32.png','博联 智能分控 USB插排','四位独立远程控制  ','119',''),
(NULL,'img/container/tenthFloor/33.png','科沃斯 智能扫地机器人','智慧湿拖，高效覆盖  ','2899',''),
(NULL,'img/container/tenthFloor/34.png','享睡 Nox音乐助眠灯','声光助眠 智能唤醒  ','399',''),
(NULL,'img/container/tenthFloor/35.png','公牛多国旅行转换器','出国旅行好伴侣  ','69',''),
(NULL,'img/container/tenthFloor/36.png','三思智能植物生长灯','给植物能量 给你乐趣  ','129',''),
(NULL,'img/container/tenthFloor/37.png','三思全彩灯泡','耀.出彩  ','99','智选生态'),
(NULL,'img/container/tenthFloor/38.png','亚摩斯 智能足浴盆','匠心智品 静享足浴之乐  ','499',''),
(NULL,'img/container/tenthFloor/39.png','豪恩门窗传感器','智能监测门窗开合  ','79','智选生态'),
(NULL,'img/container/tenthFloor/310.png','享睡 香薰助眠灯','智能助眠 智能唤醒  ','299','爆款'),
(NULL,'img/container/tenthFloor/311.png','卡赫 手持无线吸尘器','无刷电机 旋风过滤  ','1499',''),
(NULL,'img/container/tenthFloor/312.png','卡赫 车载空气净化器','除尘除霾 APP智控  ','1099','');
/**  **/
CREATE TABLE hw_jxParts(
    pid INT PRIMARY KEY AUTO_INCREMENT,
    pimg VARCHAR(128),
    ptitle VARCHAR(64),
    pdesc VARCHAR(128),
    pprice VARCHAR(32),
    ptips VARCHAR(32)
);
INSERT INTO hw_jxParts VALUES
(NULL,'img/container/eleventhFloor/12.png','阿尔法蛋 儿童陪伴机器人','儿童启赋智能机器人','899','新品'),
(NULL,'img/container/eleventhFloor/13.png','海备思高清无线投屏器','扫码投屏 4K高清 ','229',''),
(NULL,'img/container/eleventhFloor/14.png','M5 平板电脑皮套键盘','轻薄优雅 精巧设计 ','399','直降'),
(NULL,'img/container/eleventhFloor/21.png','Tech21 P30 Pro 皮革保护壳','轻巧贴合 保护升级','398',''),
(NULL,'img/container/eleventhFloor/22.png','大康专用运动型蓝牙耳机','出色音质体验','89',''),
(NULL,'img/container/eleventhFloor/23.png','北通G1手游游戏手柄-蓝牙版','多指组合操作','235','爆款'),
(NULL,'img/container/eleventhFloor/24.png','锐力商务便携式 摄像笔','手机实时无线对接','299',''),
(NULL,'img/container/eleventhFloor/25.png','绿联 高清投屏转换器','智能Type-C拓展 小巧便捷','159','');


CREATE TABLE hw_subjxParts(
    pid INT PRIMARY KEY AUTO_INCREMENT,
    pimg VARCHAR(128),
    ptitle VARCHAR(64),
    pdesc VARCHAR(128),
    pprice VARCHAR(32),
    ptips VARCHAR(32)
);
INSERT INTO hw_subjxParts VALUES
(NULL,'img/container/eleventhFloor/31.png','耐翔 手游数据线','随心随意双面盲插  ','29','新品'),
(NULL,'img/container/eleventhFloor/32.png','耐翔 Type-C 通用U盘','5种安全保护  ','129',''),
(NULL,'img/container/eleventhFloor/33.png','飞宇 三轴手持手机稳定器','让你从此爱上拍视频  ','599',''),
(NULL,'img/container/eleventhFloor/34.png','Tech21Mate 20 Pro 轻薄保护壳','亲肤皮革  ','298',''),
(NULL,'img/container/eleventhFloor/35.png','Momax 精英3合1编织线','随时随地 快速切换  ','98',''),
(NULL,'img/container/eleventhFloor/36.png','Momax Tripod Pro 6精英三脚架','手机拍摄最佳拍档  ','498',''),
(NULL,'img/container/eleventhFloor/37.png','绿联 Type C转3.5mm音频','边充边听 音质如初  ','29.90','新品'),
(NULL,'img/container/eleventhFloor/38.png','耐翔 手机扩容U盘 安卓版','手机轻松扩容，高效传输  ','65',''),
(NULL,'img/container/eleventhFloor/39.png','绿联 墙壁式四口6.8A 充电器','折叠便携  ','69','新品'),
(NULL,'img/container/eleventhFloor/310.png','NOLO VR 交互套件','让VR好看又好玩  ','1299',''),
(NULL,'img/container/eleventhFloor/311.png','图拉斯临时停车牌','临时停车更方便  ','65','新品'),
(NULL,'img/container/eleventhFloor/312.png','绿联 3.5mm公转2RCA公音频线','音质清晰  ','22','新品');
