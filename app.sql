-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 21 2021 г., 03:06
-- Версия сервера: 5.7.25
-- Версия PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `app`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(20, '2014_10_12_000000_create_users_table', 1),
(21, '2014_10_12_100000_create_password_resets_table', 1),
(22, '2019_08_19_000000_create_failed_jobs_table', 1),
(23, '2019_12_13_072406_create_tasks_table', 1),
(24, '2019_12_15_012048_create_cache_table', 1),
(25, '2019_12_15_025249_create_url_photo_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `complited` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `url_photo`
--

CREATE TABLE `url_photo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `photo_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `mini_photo_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `complited` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `url_photo`
--

INSERT INTO `url_photo` (`id`, `photo_link`, `mini_photo_link`, `complited`, `created_at`, `updated_at`) VALUES
(37, 'https://i.ibb.co/F7PjGp0/look-com-ua-142556.jpg', 'https://i.ibb.co/NY4HwRm/look-com-ua-142556.jpg', 0, NULL, NULL),
(38, 'https://i.ibb.co/7bh9N2d/look-com-ua-141731.jpg', 'https://i.ibb.co/YbgrTpF/look-com-ua-141731.jpg', 0, NULL, NULL),
(39, 'https://i.ibb.co/n7f1C7n/look-com-ua-140852.jpg', 'https://i.ibb.co/gSwWVSP/look-com-ua-140852.jpg', 0, NULL, NULL),
(40, 'https://i.ibb.co/jW0mLfM/look-com-ua-113501.jpg', 'https://i.ibb.co/VQnRv9S/look-com-ua-113501.jpg', 0, NULL, NULL),
(41, 'https://i.ibb.co/txB85vS/look-com-ua-111333.jpg', 'https://i.ibb.co/rck4Jzg/look-com-ua-111333.jpg', 0, NULL, NULL),
(42, 'https://i.ibb.co/82R3Tp0/look-com-ua-99657.jpg', 'https://i.ibb.co/sQDSkG2/look-com-ua-99657.jpg', 0, NULL, NULL),
(43, 'https://i.ibb.co/G5VFr55/look-com-ua-99420.jpg', 'https://i.ibb.co/FDBndDD/look-com-ua-99420.jpg', 0, NULL, NULL),
(44, 'https://i.ibb.co/PDVZGbb/look-com-ua-94148.jpg', 'https://i.ibb.co/xFrSqcc/look-com-ua-94148.jpg', 0, NULL, NULL),
(45, 'https://i.ibb.co/wdC48Ln/look-com-ua-90565.jpg', 'https://i.ibb.co/0nZr1X0/look-com-ua-90565.jpg', 0, NULL, NULL),
(46, 'https://i.ibb.co/Cs93ZFs/look-com-ua-90564.jpg', 'https://i.ibb.co/HpPfsQp/look-com-ua-90564.jpg', 0, NULL, NULL),
(47, 'https://i.ibb.co/q9jYBxz/look-com-ua-90563.jpg', 'https://i.ibb.co/RPbT271/look-com-ua-90563.jpg', 0, NULL, NULL),
(48, 'https://i.ibb.co/yqrVRRV/look-com-ua-90537.jpg', 'https://i.ibb.co/YhxbWWb/look-com-ua-90537.jpg', 0, NULL, NULL),
(49, 'https://i.ibb.co/FwNKCHM/look-com-ua-90334.jpg', 'https://i.ibb.co/YkY3w0M/look-com-ua-90334.jpg', 0, NULL, NULL),
(50, 'https://i.ibb.co/PQ3NTdV/look-com-ua-90182.jpg', 'https://i.ibb.co/hfhyXST/look-com-ua-90182.jpg', 0, NULL, NULL),
(51, 'https://i.ibb.co/BCF245H/look-com-ua-89618.jpg', 'https://i.ibb.co/P60GTvs/look-com-ua-89618.jpg', 0, NULL, NULL),
(52, 'https://i.ibb.co/kq83XGB/look-com-ua-89272.jpg', 'https://i.ibb.co/h2WXVg9/look-com-ua-89272.jpg', 0, NULL, NULL),
(53, 'https://i.ibb.co/72Vzkxm/look-com-ua-89265.jpg', 'https://i.ibb.co/4PMf1wr/look-com-ua-89265.jpg', 0, NULL, NULL),
(54, 'https://i.ibb.co/JKCYvRs/look-com-ua-88741.jpg', 'https://i.ibb.co/FKnQ5bD/look-com-ua-88741.jpg', 0, NULL, NULL),
(55, 'https://i.ibb.co/MkqLbmv/look-com-ua-88523.jpg', 'https://i.ibb.co/m5Q7m3j/look-com-ua-88523.jpg', 0, NULL, NULL),
(56, 'https://i.ibb.co/NjsRnNP/look-com-ua-88520.jpg', 'https://i.ibb.co/xjDZ8g0/look-com-ua-88520.jpg', 0, NULL, NULL),
(57, 'https://i.ibb.co/YLyjmD4/look-com-ua-88517.jpg', 'https://i.ibb.co/KrLydNc/look-com-ua-88517.jpg', 0, NULL, NULL),
(58, 'https://i.ibb.co/YDG8gsH/look-com-ua-88134.jpg', 'https://i.ibb.co/28BPJ4G/look-com-ua-88134.jpg', 0, NULL, NULL),
(59, 'https://i.ibb.co/M5TVFnL/look-com-ua-87601.jpg', 'https://i.ibb.co/XkBscXT/look-com-ua-87601.jpg', 0, NULL, NULL),
(60, 'https://i.ibb.co/vXcgc76/look-com-ua-87600.jpg', 'https://i.ibb.co/ph1G1tB/look-com-ua-87600.jpg', 0, NULL, NULL),
(61, 'https://i.ibb.co/5hdRzdJ/look-com-ua-87596.jpg', 'https://i.ibb.co/KxYrQY8/look-com-ua-87596.jpg', 0, NULL, NULL),
(62, 'https://i.ibb.co/qWVXnpT/look-com-ua-87447.jpg', 'https://i.ibb.co/hZwhMV3/look-com-ua-87447.jpg', 0, NULL, NULL),
(63, 'https://i.ibb.co/0Bqpcpr/look-com-ua-87444.jpg', 'https://i.ibb.co/gvyb3bJ/look-com-ua-87444.jpg', 0, NULL, NULL),
(64, 'https://i.ibb.co/7N1W36s/look-com-ua-87407.jpg', 'https://i.ibb.co/qFrsHPT/look-com-ua-87407.jpg', 0, NULL, NULL),
(65, 'https://i.ibb.co/M8kQ51H/look-com-ua-87073.jpg', 'https://i.ibb.co/tZpFP26/look-com-ua-87073.jpg', 0, NULL, NULL),
(66, 'https://i.ibb.co/wCstvQN/look-com-ua-86560.jpg', 'https://i.ibb.co/82ckhxD/look-com-ua-86560.jpg', 0, NULL, NULL),
(67, 'https://i.ibb.co/7tBmGFK/look-com-ua-86557.jpg', 'https://i.ibb.co/wh8mK14/look-com-ua-86557.jpg', 0, NULL, NULL),
(68, 'https://i.ibb.co/djKQHfV/look-com-ua-86554.jpg', 'https://i.ibb.co/fq0CTXy/look-com-ua-86554.jpg', 0, NULL, NULL),
(69, 'https://i.ibb.co/yRvYJTz/look-com-ua-86553.jpg', 'https://i.ibb.co/X403TBn/look-com-ua-86553.jpg', 0, NULL, NULL),
(70, 'https://i.ibb.co/QpdRg4R/look-com-ua-86550.jpg', 'https://i.ibb.co/TYLSfsS/look-com-ua-86550.jpg', 0, NULL, NULL),
(71, 'https://i.ibb.co/h8yx8t5/look-com-ua-86545.jpg', 'https://i.ibb.co/XJbfJvB/look-com-ua-86545.jpg', 0, NULL, NULL),
(72, 'https://i.ibb.co/7VDr4Mv/look-com-ua-85749.jpg', 'https://i.ibb.co/gw8tVqy/look-com-ua-85749.jpg', 0, NULL, NULL),
(73, 'https://i.ibb.co/4gPTgRT/look-com-ua-85222.jpg', 'https://i.ibb.co/XkSskxs/look-com-ua-85222.jpg', 0, NULL, NULL),
(74, 'https://i.ibb.co/ChnSLKy/look-com-ua-84938.jpg', 'https://i.ibb.co/wMK2thq/look-com-ua-84938.jpg', 0, NULL, NULL),
(75, 'https://i.ibb.co/58YvRsG/look-com-ua-84878.jpg', 'https://i.ibb.co/DCGkRwz/look-com-ua-84878.jpg', 0, NULL, NULL),
(76, 'https://i.ibb.co/S3N16kC/look-com-ua-84857.jpg', 'https://i.ibb.co/XCXdWnR/look-com-ua-84857.jpg', 0, NULL, NULL),
(77, 'https://i.ibb.co/8KxjXzh/look-com-ua-83992.jpg', 'https://i.ibb.co/6nt4Nvd/look-com-ua-83992.jpg', 0, NULL, NULL),
(78, 'https://i.ibb.co/vZyLCHd/look-com-ua-83847.jpg', 'https://i.ibb.co/jg039Tw/look-com-ua-83847.jpg', 0, NULL, NULL),
(79, 'https://i.ibb.co/YhHH7xh/look-com-ua-82885.jpg', 'https://i.ibb.co/njxxsFj/look-com-ua-82885.jpg', 0, NULL, NULL),
(80, 'https://i.ibb.co/vVCszk0/look-com-ua-82858.jpg', 'https://i.ibb.co/CmpJ0QR/look-com-ua-82858.jpg', 0, NULL, NULL),
(81, 'https://i.ibb.co/f8R1Fjv/look-com-ua-82813.jpg', 'https://i.ibb.co/wJH0g5s/look-com-ua-82813.jpg', 0, NULL, NULL),
(82, 'https://i.ibb.co/WFkMDBQ/look-com-ua-82792.jpg', 'https://i.ibb.co/VDgzHMd/look-com-ua-82792.jpg', 0, NULL, NULL),
(83, 'https://i.ibb.co/LtKCLjF/look-com-ua-82493.jpg', 'https://i.ibb.co/hW0KPQ6/look-com-ua-82493.jpg', 0, NULL, NULL),
(84, 'https://i.ibb.co/QvCd6Dq/look-com-ua-82469.jpg', 'https://i.ibb.co/8gdcjYR/look-com-ua-82469.jpg', 0, NULL, NULL),
(85, 'https://i.ibb.co/LpZQx6t/look-com-ua-82229.jpg', 'https://i.ibb.co/VBqHgDS/look-com-ua-82229.jpg', 0, NULL, NULL),
(86, 'https://i.ibb.co/jRBJZ7C/look-com-ua-81734.jpg', 'https://i.ibb.co/4d91gBb/look-com-ua-81734.jpg', 0, NULL, NULL),
(87, 'https://i.ibb.co/r4FgTKw/look-com-ua-81707.jpg', 'https://i.ibb.co/t8QSkwJ/look-com-ua-81707.jpg', 0, NULL, NULL),
(88, 'https://i.ibb.co/zSk4fY6/look-com-ua-80858.jpg', 'https://i.ibb.co/tbdJCtL/look-com-ua-80858.jpg', 0, NULL, NULL),
(89, 'https://i.ibb.co/9W60YHf/look-com-ua-80087.jpg', 'https://i.ibb.co/tDg6CpN/look-com-ua-80087.jpg', 0, NULL, NULL),
(90, 'https://i.ibb.co/Jcj7y0p/look-com-ua-79233.jpg', 'https://i.ibb.co/mR5qX1y/look-com-ua-79233.jpg', 0, NULL, NULL),
(91, 'https://i.ibb.co/TTq62xP/look-com-ua-78824.jpg', 'https://i.ibb.co/ZJ15Xpc/look-com-ua-78824.jpg', 0, NULL, NULL),
(92, 'https://i.ibb.co/BfBj6GZ/look-com-ua-78583.jpg', 'https://i.ibb.co/HKqYPCz/look-com-ua-78583.jpg', 0, NULL, NULL),
(93, 'https://i.ibb.co/tKJSFBr/look-com-ua-78256.jpg', 'https://i.ibb.co/02Gkvqb/look-com-ua-78256.jpg', 0, NULL, NULL),
(94, 'https://i.ibb.co/wdBxjq6/look-com-ua-77594.jpg', 'https://i.ibb.co/yNdb7Cs/look-com-ua-77594.jpg', 0, NULL, NULL),
(95, 'https://i.ibb.co/FJhmPk5/look-com-ua-76765.jpg', 'https://i.ibb.co/92pcMmb/look-com-ua-76765.jpg', 0, NULL, NULL),
(96, 'https://i.ibb.co/KNmdN9h/look-com-ua-75206.jpg', 'https://i.ibb.co/WDsZDc5/look-com-ua-75206.jpg', 0, NULL, NULL),
(97, 'https://i.ibb.co/QM5DrzF/look-com-ua-72553.jpg', 'https://i.ibb.co/fHcD4BY/look-com-ua-72553.jpg', 0, NULL, NULL),
(98, 'https://i.ibb.co/zrv0zB7/look-com-ua-72166.jpg', 'https://i.ibb.co/2y4fTCs/look-com-ua-72166.jpg', 0, NULL, NULL),
(99, 'https://i.ibb.co/NT4R70n/look-com-ua-69904.jpg', 'https://i.ibb.co/5K7Z2Qx/look-com-ua-69904.jpg', 0, NULL, NULL),
(100, 'https://i.ibb.co/9nwqtDH/look-com-ua-68766.jpg', 'https://i.ibb.co/JnxzQ1j/look-com-ua-68766.jpg', 0, NULL, NULL),
(101, 'https://i.ibb.co/LhYs9wm/look-com-ua-66853.jpg', 'https://i.ibb.co/XkjGFB1/look-com-ua-66853.jpg', 0, NULL, NULL),
(102, 'https://i.ibb.co/44Ct39F/look-com-ua-66470.jpg', 'https://i.ibb.co/0Y12v8n/look-com-ua-66470.jpg', 0, NULL, NULL),
(103, 'https://i.ibb.co/SJd5Rg6/look-com-ua-66031.jpg', 'https://i.ibb.co/7bRj2DS/look-com-ua-66031.jpg', 0, NULL, NULL),
(104, 'https://i.ibb.co/py8t2Lc/look-com-ua-65609.jpg', 'https://i.ibb.co/GTLK75y/look-com-ua-65609.jpg', 0, NULL, NULL),
(105, 'https://i.ibb.co/PYz4k4V/look-com-ua-65455.jpg', 'https://i.ibb.co/CtsvLvS/look-com-ua-65455.jpg', 0, NULL, NULL),
(106, 'https://i.ibb.co/yfwRBcw/look-com-ua-65391.jpg', 'https://i.ibb.co/r7CtfRC/look-com-ua-65391.jpg', 0, NULL, NULL),
(107, 'https://i.ibb.co/RpWz9Ws/look-com-ua-64970.jpg', 'https://i.ibb.co/VW82t8z/look-com-ua-64970.jpg', 0, NULL, NULL),
(108, 'https://i.ibb.co/Xkz5DMz/look-com-ua-64578.jpg', 'https://i.ibb.co/cXN8wVN/look-com-ua-64578.jpg', 0, NULL, NULL),
(109, 'https://i.ibb.co/0mg9TWc/look-com-ua-64492.jpg', 'https://i.ibb.co/Xjh51db/look-com-ua-64492.jpg', 0, NULL, NULL),
(110, 'https://i.ibb.co/wLZbccT/look-com-ua-64251.jpg', 'https://i.ibb.co/hMxnYYk/look-com-ua-64251.jpg', 0, NULL, NULL),
(111, 'https://i.ibb.co/KWvVYKh/look-com-ua-64250.jpg', 'https://i.ibb.co/CQGVqP8/look-com-ua-64250.jpg', 0, NULL, NULL),
(112, 'https://i.ibb.co/3vp7Gdy/look-com-ua-64104.jpg', 'https://i.ibb.co/w7SR3gN/look-com-ua-64104.jpg', 0, NULL, NULL),
(113, 'https://i.ibb.co/gFW2Fw6/look-com-ua-63921.jpg', 'https://i.ibb.co/JFp1F2C/look-com-ua-63921.jpg', 0, NULL, NULL),
(114, 'https://i.ibb.co/0cr9LTX/look-com-ua-63398.jpg', 'https://i.ibb.co/R9c6KfS/look-com-ua-63398.jpg', 0, NULL, NULL),
(115, 'https://i.ibb.co/bgDQHw2/look-com-ua-63324.jpg', 'https://i.ibb.co/fYLq86n/look-com-ua-63324.jpg', 0, NULL, NULL),
(116, 'https://i.ibb.co/YkJWr1C/look-com-ua-63282.jpg', 'https://i.ibb.co/zRC5kBM/look-com-ua-63282.jpg', 0, NULL, NULL),
(117, 'https://i.ibb.co/0cP5PSh/look-com-ua-63207.jpg', 'https://i.ibb.co/37tKtqB/look-com-ua-63207.jpg', 0, NULL, NULL),
(118, 'https://i.ibb.co/b6zg1gd/look-com-ua-63150.jpg', 'https://i.ibb.co/grzMyMg/look-com-ua-63150.jpg', 0, NULL, NULL),
(119, 'https://i.ibb.co/kq2dSzN/look-com-ua-63149.jpg', 'https://i.ibb.co/c2hmrR4/look-com-ua-63149.jpg', 0, NULL, NULL),
(120, 'https://i.ibb.co/mTJbcnV/look-com-ua-63148.jpg', 'https://i.ibb.co/54TGRQg/look-com-ua-63148.jpg', 0, NULL, NULL),
(121, 'https://i.ibb.co/pW8BThB/look-com-ua-63022.jpg', 'https://i.ibb.co/rbSRhdR/look-com-ua-63022.jpg', 0, NULL, NULL),
(122, 'https://i.ibb.co/YTfnTx4/look-com-ua-63021.jpg', 'https://i.ibb.co/BKTWK9H/look-com-ua-63021.jpg', 0, NULL, NULL),
(123, 'https://i.ibb.co/XzhQVkw/look-com-ua-63020.jpg', 'https://i.ibb.co/7GwfbN9/look-com-ua-63020.jpg', 0, NULL, NULL),
(124, 'https://i.ibb.co/HYDX96T/look-com-ua-62920.jpg', 'https://i.ibb.co/Y87bVmB/look-com-ua-62920.jpg', 0, NULL, NULL),
(125, 'https://i.ibb.co/TH6LZLT/look-com-ua-62085.jpg', 'https://i.ibb.co/K9dwYwG/look-com-ua-62085.jpg', 0, NULL, NULL),
(126, 'https://i.ibb.co/61fspgC/look-com-ua-61515.jpg', 'https://i.ibb.co/9VCYfs5/look-com-ua-61515.jpg', 0, NULL, NULL),
(127, 'https://i.ibb.co/2tDZ14z/look-com-ua-61480.jpg', 'https://i.ibb.co/mqLNVWn/look-com-ua-61480.jpg', 0, NULL, NULL),
(128, 'https://i.ibb.co/ySwhGgt/look-com-ua-58023.jpg', 'https://i.ibb.co/vY7sgLp/look-com-ua-58023.jpg', 0, NULL, NULL),
(129, 'https://i.ibb.co/k6TYCTB/look-com-ua-52552.jpg', 'https://i.ibb.co/YTSvsSQ/look-com-ua-52552.jpg', 0, NULL, NULL),
(130, 'https://i.ibb.co/0JrsNHn/look-com-ua-49280.jpg', 'https://i.ibb.co/x56Fvx2/look-com-ua-49280.jpg', 0, NULL, NULL),
(131, 'https://i.ibb.co/7RHWfkr/look-com-ua-48731.jpg', 'https://i.ibb.co/gPGT24t/look-com-ua-48731.jpg', 0, NULL, NULL),
(132, 'https://i.ibb.co/R3ksqxy/look-com-ua-16167.jpg', 'https://i.ibb.co/3p9jnDz/look-com-ua-16167.jpg', 0, NULL, NULL),
(133, 'https://i.ibb.co/PCmRqSP/look-com-ua-140279.jpg', 'https://i.ibb.co/F7x9RPy/look-com-ua-140279.jpg', 0, NULL, NULL),
(134, 'https://i.ibb.co/JKrzN5X/look-com-ua-113643.jpg', 'https://i.ibb.co/zrPS1GK/look-com-ua-113643.jpg', 0, NULL, NULL),
(135, 'https://i.ibb.co/9wQhtS0/look-com-ua-113642.jpg', 'https://i.ibb.co/tZVzXF6/look-com-ua-113642.jpg', 0, NULL, NULL),
(136, 'https://i.ibb.co/DznkHMV/look-com-ua-82605.jpg', 'https://i.ibb.co/ydJ5ckf/look-com-ua-82605.jpg', 0, NULL, NULL),
(137, 'https://i.ibb.co/vV16zH8/look-com-ua-78429.jpg', 'https://i.ibb.co/pb2BXxp/look-com-ua-78429.jpg', 0, NULL, NULL),
(138, 'https://i.ibb.co/ZfThm7D/look-com-ua-64745.jpg', 'https://i.ibb.co/tHCbXFr/look-com-ua-64745.jpg', 0, NULL, NULL),
(139, 'https://i.ibb.co/7W2rHfr/look-com-ua-64236.jpg', 'https://i.ibb.co/nczQTGQ/look-com-ua-64236.jpg', 0, NULL, NULL),
(140, 'https://i.ibb.co/hYHBFKQ/look-com-ua-63924.jpg', 'https://i.ibb.co/6XbH049/look-com-ua-63924.jpg', 0, NULL, NULL),
(141, 'https://i.ibb.co/hRtKyfC/look-com-ua-63630.jpg', 'https://i.ibb.co/wNxKRsY/look-com-ua-63630.jpg', 0, NULL, NULL),
(142, 'https://i.ibb.co/FgzgX3P/look-com-ua-63608.jpg', 'https://i.ibb.co/m6460Tx/look-com-ua-63608.jpg', 0, NULL, NULL),
(143, 'https://i.ibb.co/QQXW3HD/look-com-ua-63383.jpg', 'https://i.ibb.co/GpFZ4MH/look-com-ua-63383.jpg', 0, NULL, NULL),
(144, 'https://i.ibb.co/dp3GDG3/look-com-ua-63289.jpg', 'https://i.ibb.co/kDrQXQr/look-com-ua-63289.jpg', 0, NULL, NULL),
(145, 'https://i.ibb.co/RcxqWwt/look-com-ua-63287.jpg', 'https://i.ibb.co/DQxZn2m/look-com-ua-63287.jpg', 0, NULL, NULL),
(146, 'https://i.ibb.co/qRNxhdJ/look-com-ua-45150.jpg', 'https://i.ibb.co/19rbBLz/look-com-ua-45150.jpg', 0, NULL, NULL),
(147, 'https://i.ibb.co/QrfR7jn/look-com-ua-21387.jpg', 'https://i.ibb.co/5B6yXxv/look-com-ua-21387.jpg', 0, NULL, NULL),
(148, 'https://i.ibb.co/28dMT1h/721tmg256dg11my.jpg', 'https://i.ibb.co/s5q1ZdR/721tmg256dg11my.jpg', 0, NULL, NULL),
(149, 'https://i.ibb.co/gStBx9B/721tmg256dg11.jpg', 'https://i.ibb.co/ZBck0Xk/721tmg256dg11.jpg', 0, NULL, NULL),
(152, 'https://image.ibb.co/fQsQgK/Screenshot-3.png', 'https://image.ibb.co/dyG7ve/Screenshot-3.png', 0, NULL, NULL),
(153, 'https://image.ibb.co/fQsQgK/Screenshot-3.png', 'https://image.ibb.co/dyG7ve/Screenshot-3.png', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cache`
--
ALTER TABLE `cache`
  ADD UNIQUE KEY `cache_key_unique` (`key`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Индексы таблицы `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `url_photo`
--
ALTER TABLE `url_photo`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `url_photo`
--
ALTER TABLE `url_photo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
