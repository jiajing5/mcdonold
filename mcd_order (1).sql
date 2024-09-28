-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2023-02-13 08:17:37
-- 伺服器版本： 10.4.13-MariaDB
-- PHP 版本： 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `mcd`
--

-- --------------------------------------------------------

--
-- 資料表結構 `mcd_order`
--

CREATE TABLE `mcd_order` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `item` varchar(30) NOT NULL,
  `price` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `create-time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `mcd_order`
--

INSERT INTO `mcd_order` (`id`, `order_id`, `item`, `price`, `amount`, `create-time`) VALUES
(1, 1, 'OREO冰炫風', 55, 1, '2023-01-11 13:31:38'),
(2, 1, '冰經典卡布奇諾', 45, 1, '2023-01-11 13:31:38'),
(3, 1, '冰經典拿鐵', 40, 1, '2023-01-11 13:31:38'),
(4, 1, 'OREO冰炫風', 55, 2, '2023-02-01 14:28:08'),
(5, 1, '大麥克', 85, 3, '2023-02-01 14:28:08'),
(6, 1, '冰經典卡布奇諾', 45, 1, '2023-02-01 14:28:08'),
(7, 1, 'OREO冰炫風', 55, 2, '2023-02-01 14:30:10'),
(8, 1, '冰經典拿鐵', 40, 1, '2023-02-01 14:30:10'),
(9, 1, '大麥克', 85, 2, '2023-02-01 14:30:10'),
(10, 1, '滿福堡', 45, 1, '2023-02-01 14:30:10'),
(11, 2, 'OREO冰炫風', 55, 2, '2023-02-01 14:35:50'),
(12, 3, '冰經典卡布奇諾', 45, 1, '2023-02-01 14:44:55'),
(13, 4, 'OREO冰炫風', 55, 1, '2023-02-01 14:46:50'),
(14, 4, '冰經典卡布奇諾', 45, 1, '2023-02-01 14:46:50');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `mcd_order`
--
ALTER TABLE `mcd_order`
  ADD PRIMARY KEY (`id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `mcd_order`
--
ALTER TABLE `mcd_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
