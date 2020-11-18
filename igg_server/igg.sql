-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2020-10-10 13:11:02
-- 服务器版本： 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";
drop database if exists igg;
create database igg charset=utf8;
use igg;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `igg`
--

-- --------------------------------------------------------

--
-- 表的结构 `bannerimage`
--

CREATE TABLE `bannerimage` (
  `id` int(11) NOT NULL,
  `imagename` varchar(30) DEFAULT NULL,
  `path` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `bannerimage`
--

INSERT INTO `bannerimage` (`id`, `imagename`, `path`) VALUES
(1, 'banner1', 'banner1.jpg'),
(2, 'banner2', 'banner2.jpg'),
(3, 'banner3', 'banner3.jpg'),
(4, 'banner4', 'banner4.jpg'),
(5, 'banner5', 'banner5.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `commodity`
--

CREATE TABLE `commodity` (
  `id` int(11) NOT NULL,
  `title` char(50) DEFAULT NULL,
  `price` float(7,2) DEFAULT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `commodity`
--

INSERT INTO `commodity` (`id`, `title`, `price`, `image`) VALUES
(1, '王国纪元精品背包系列 - 大帝款', 415.00, 'kanpsack.jpg'),
(2, '大个子手办 胜利版', 248.00, 'model.jpg'),
(3, '《王国纪元》环游记晴雨伞', 153.00, 'umbrella.jpg'),
(4, '小恶魔趣味抱枕毯', 138.00, 'pillow.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `pic`
--

CREATE TABLE `pic` (
  `id` int(11) NOT NULL,
  `imagename` varchar(30) DEFAULT NULL,
  `path` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `pro`
--

CREATE TABLE `pro` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `subtitle` varchar(50) DEFAULT NULL,
  `price` float(7,2) DEFAULT NULL,
  `game` varchar(10) DEFAULT NULL,
  `size` varchar(30) DEFAULT NULL,
  `texture` varchar(30) DEFAULT NULL,
  `kg` varchar(15) DEFAULT NULL,
  `introduce` varchar(100) DEFAULT NULL,
  `pathimg` varchar(50) NOT NULL,
  `detailtopimg` varchar(50) NOT NULL,
  `detailsimg` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `pro`
--

INSERT INTO `pro` (`id`, `cid`, `title`, `subtitle`, `price`, `game`, `size`, `texture`, `kg`, `introduce`, `pathimg`, `detailtopimg`, `detailsimg`) VALUES
(1, 1, '趣味小兵帆布包', '百搭+实用', 89.00, '王国纪元', '350(W)x340(H)MM', '16安水洗帆布', '10KG以内', '单肩、手提', 'satchel.jpg', 'satchel.jpg', ''),
(2, 1, '《王国纪元》膳魔师保温杯', '王国纪元×膳魔师：百年品牌，冷暖相伴；最强领主，称霸奇观。', 389.00, '王国纪元', NULL, NULL, '约210g', '保温效力: 68°C以上(6小时)', 'cup.jpg', 'cup.jpg', ''),
(3, 1, '英雄集结鼠标垫', '王国纪元，众英雄集结，新款鼠标垫上架！', 78.00, '王国纪元', '800(L) x 300(W) x 3(D) MM', NULL, NULL, '70(L) x 70(W) x 310(H) MM', 'pad.jpg', 'pad.jpg', ''),
(4, 0, '熔岩之翼龙蛋手办', 'Carry全场，龙蛋相伴！', 549.00, '城堡争霸', ' 9.0CM（H）', '树脂', NULL, '手办、赠送CASTLE CLASH礼品卡一张', 'eggs.jpg', 'eggs.jpg', '');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `uid` int(11) NOT NULL,
  `uname` char(10) DEFAULT NULL,
  `password` char(16) DEFAULT NULL,
  `phone` bigint(11) DEFAULT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`uid`, `uname`, `password`, `phone`, `email`) VALUES
(1, '12306apple', '123456', 13890625483, ''),
(2, '1537965584', '123456', 15379655849, ''),
(3, '小明', '123456', 1008611, ''),
(4, NULL, NULL, NULL, '1228375094@qq.com'),
(5, NULL, '12306abc', NULL, '12345678@12306.com'),
(6, NULL, '12346asd', NULL, '88888@qq.com'),
(7, NULL, '123456', NULL, '100@qq.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bannerimage`
--
ALTER TABLE `bannerimage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commodity`
--
ALTER TABLE `commodity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pic`
--
ALTER TABLE `pic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pro`
--
ALTER TABLE `pro`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `bannerimage`
--
ALTER TABLE `bannerimage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `commodity`
--
ALTER TABLE `commodity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `pic`
--
ALTER TABLE `pic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `pro`
--
ALTER TABLE `pro`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
