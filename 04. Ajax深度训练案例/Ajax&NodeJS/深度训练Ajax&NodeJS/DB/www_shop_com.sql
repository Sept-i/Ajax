-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2020-10-23 09:58:27
-- 服务器版本： 5.7.26
-- PHP 版本： 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `www.shop.com`
--
CREATE DATABASE IF NOT EXISTS `www.shop.com` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `www.shop.com`;

-- --------------------------------------------------------

--
-- 表的结构 `cart`
--
-- 创建时间： 2020-09-01 07:32:01
--

CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mid` int(11) NOT NULL,
  `gid` int(11) NOT NULL,
  `num` int(11) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `cart`
--

INSERT INTO `cart` (`id`, `mid`, `gid`, `num`, `price`) VALUES
(4, 66, 448, 1, '100'),
(6, 71, 4, 3114, '100');

-- --------------------------------------------------------

--
-- 表的结构 `category`
--
-- 创建时间： 2020-08-21 07:31:09
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `cname` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `remark` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `goods`
--
-- 创建时间： 2020-08-05 03:05:01
--

CREATE TABLE IF NOT EXISTS `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `fileurl` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `goods`
--

INSERT INTO `goods` (`id`, `name`, `price`, `fileurl`, `content`) VALUES
(3, '李宁青少年男女足球鞋碎钉儿童训练鞋学生人造草地ASTK029', '199', '/uploads/1.jpg', '李宁碎钉足球训练鞋，采用简洁的色彩搭配，简单时尚。 侧面李宁品牌标志“正交叉转体90度经单环起倒立落下成骑撑”这个被国际体联命名为“李宁交叉”的动作，体现李宁先生在运动中的创新精神。橡胶搭载EVA复合底结合碎钉鞋底，更具抓地性能。\r\n√ 鞋面：合成革+纺织品 √ 鞋底：橡胶+EVA复合底 √ 优雅的鞋头弧度，提供舒适的前掌空间和良好的触球感受 √ 双车线设计，更加牢固，增大耐用度'),
(4, '花花公子男装短袖T恤男夏季新款修身圆领打底衫半袖衣服潮流体恤', '168', '/uploads/2.jpg', '品牌: PLAYBOY/花花公子货号: RT191919基础风格: 青春流行上市年份季节: 2019年夏季厚薄: 薄销售渠道类型: 纯电商(只在线上销售)棉95% 聚氨酯弹性纤维(氨纶)5%'),
(5, 'PURE＆MILD/泊美鲜纯珍萃柔亮保湿面霜滋润', '108', '/uploads/3.jpg', '品牌: PURE＆MILD/泊美面部护理套装: 鲜纯珍萃柔亮保湿面霜产地: 中国颜色分类: 50g功效: 补水 保湿 滋润 其他/other 嫩肤规格类型: 正常规格是否为特殊用途化妆品: 否限期使用日期范围: 2021-12-10至2021-12-14化妆品保质期: 60'),
(6, '回力洞洞鞋男潮拖鞋男士防滑沙滩鞋潮流室外夏外穿2020新款凉拖', '92', '/uploads/4.jpg', '品牌: Warrior/回力功能: 透气尺码: 36 37 38 39 40 41 42 43 44图案: 纯色风格: 运动颜色分类: 鱼骨底深蓝色（标准鞋码） 鱼骨底黑色（标准鞋码） 鱼骨底咖啡（标准鞋码） 鱼骨底卡其（标准鞋码） 鱼骨底粉红（标准鞋码） 鱼骨底天蓝（标准鞋码） 鱼骨底白色（标准鞋码） 鱼骨底黄色（标准鞋码） 平底黑色（偏小一码） 平底灰色（偏小一码） 平底深蓝（偏小一码） 平底天蓝（偏小一码） 平底黄色（偏小一码） 平底红色（偏小一码） 平底白色（偏小一码）货号: HL-00357适用季节: 夏季上市年份季节: 2014年夏季'),
(7, '卡帝乐鳄鱼男士胸包男式斜挎包头层牛皮真皮单肩挎男背休闲包潮牌', '396', '/uploads/5.jpg', '品牌: CARTELO/卡帝乐鳄鱼质地: 牛皮皮革材质: 牛皮闭合方式: 拉链图案: 纯色风格: 欧美时尚形状: 方盒形成色: 全新流行元素: 褶皱'),
(8, '双星运动鞋男春夏款中老年健步鞋轻便防滑老人鞋女软底休闲旅游鞋', '199', '/uploads/6.gif', '品牌: F－MAN/双星名人闭合方式: 魔术贴尺码: 35 36 37 38 39 40 41 42 43 44 45风格: 休闲鞋头款式: 圆头后跟高: 平跟(小于等于1cm)颜色分类: 深兰-女 酒红-女 深兰-男 黑色-男货号: H495465上市年份季节: 2019年春季鞋头款式: 圆头适用场景: 休闲跟底款式: 平底'),
(9, 'Kaila公主风发夹 女韩国网红仙女森系侧边镂空仿珍珠一字夹头饰', '88', '/uploads/7.jpg', '品牌: Kaila材质: 合金/镀银/镀金风格: 日韩成色: 全新发饰分类: 其他价格区间: 51-100元新奇特: 新鲜出炉颜色分类: 公主风发夹上市时间: 2018年冬季货号: Z3367镶嵌材质: 未镶嵌'),
(10, '乔丹男鞋网面透气跑步鞋2020夏季新款轻便减震耐磨休闲鞋男运动鞋', '239', '/uploads/8.jpg', '产品名称：乔丹 BM4310215品牌: 乔丹功能: 减震 防滑 耐磨 透气 支撑 抗冲击 轻便 回弹闭合方式: 系带鞋码: 39 40 41 42 43 44 45流行元素: 车缝线颜色分类: 白色/炭灰 白色/黑色 黑色/明黄 297黑色/亮绿 297黑色/浅灰 黑色/白色（网面）【272】 黑色/极光红（网面）【272】 黑色【233】 黑色/白色 【233】 黑色/白色【213】 黑色/白色（网'),
(11, '车载台天线3件套装 NL-770S+吸盘5M+转接头 适小米米家户外对讲机', '70', '/uploads/9.jpg', '对讲机配件品牌: 宝锋对讲机配件类型: 对讲机配件售后服务: 其他/other'),
(12, 'Newsmy纽曼移动硬盘1TB 500G笔记本移动硬盘存储轻薄高速加密320G', '629', '/uploads/10.jpg', '产品名称：纽曼 星云品牌: 纽曼型号: 星云容量: 320GB尺寸: 2.5英寸接口类型: USB2.0是否外接电源: 无外接电源颜色分类: 黑色套餐类型: 官方标配 套餐一 套餐二 套餐三 套餐四 套餐五 套餐六 套餐七生产企业: 湖南纽曼数码科技有限公司存储介质: 其他/other外壳材质: 塑胶'),
(13, '北通神鹰XPRO电脑游戏手柄NBA2K19有线USB只狼家用双人FIFAOL4电视PS3鬼泣5实况足球2019steam怪物猎人手柄', '189', '/uploads/11.jpg', '产品名称：BETOP/北通 BTP-2163X品牌: BETOP/北通型号: BTP-2163X有无线: 有线接口类型: USB颜色分类: 白色 蓝色生产企业: 广州市品众电子科技有限公司手柄特性: 震动'),
(14, '航嘉（Huntkey）冷静王钻石蓝钻版 额定400W电源台式机电源', '267', '/uploads/12.jpg', '制造商名称：深圳市航嘉驰源电气股份有限公司产品名称：开关电源3C产品型号：多核R80 400; 多核WD400；JUMPER 400；HK500-31FP 输入：AC100-...3C规格型号：多核R80 400; 多核WD400；JUMPER 400；HK500-31FP 输入：AC100-...产品名称：Huntkey/航嘉 冷静王钻石...品牌: Huntkey/航嘉型号: 冷静王钻石蓝钻版额定功率: 400W适用对象: 台式机');

-- --------------------------------------------------------

--
-- 表的结构 `member`
--
-- 创建时间： 2020-09-01 07:15:02
--

CREATE TABLE IF NOT EXISTS `member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `r_date` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_date` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `member`
--

INSERT INTO `member` (`id`, `username`, `password`, `email`, `r_date`, `l_date`) VALUES
(66, 'zhangsan', '123456', '111', '2020-10-08 16:39:03', '2020-10-08 16:39:14'),
(67, 'lisi', '123456', '111', '2020-10-09 10:10:57', '2020-10-09 10:11:13'),
(68, '梅琳松', '123456', '123123@123', '2020-10-12 10:29:47', NULL),
(69, '梅琳松abb', '123', '123123@123', '2020-10-12 10:55:46', NULL),
(70, '梅琳松abbc', '123', '123123@123', '2020-10-12 11:11:09', '2020-10-12 11:20:46'),
(71, 'lidongchao', '123456', 'ldc@itcast.cn', '2020-10-12 14:12:09', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
