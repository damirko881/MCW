-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2023 at 05:54 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mcw_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_list`
--

CREATE TABLE `category_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `order_by` int(30) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category_list`
--

INSERT INTO `category_list` (`id`, `name`, `description`, `order_by`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 'Osnovne Specifikacije', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam sit amet iaculis justo, vitae suscipit velit. Vestibulum sed euismod purus. Curabitur ac lacus congue, ultrices est quis, dapibus lacus. Nullam ut arcu vitae ligula semper tristique vitae nec risus. Morbi non vulputate leo, eget sollicitudin leo. Donec bibendum dolor at ullamcorper aliquam. Aliquam mollis iaculis varius. In nunc massa, accumsan in nisl ac, molestie auctor nisl. Praesent felis lacus, dapibus vel rutrum vitae, aliquet eu ligula.', 1, 1, 0, '2022-02-21 10:18:23', '2023-04-20 09:28:29'),
(2, 'Cijena', 'Praesent neque justo, mattis in venenatis dapibus, ornare ac leo. Ut ut posuere sem, ac hendrerit felis. Quisque non volutpat lorem, nec rhoncus tortor. Proin et libero varius, accumsan mi et, tristique massa. Phasellus dapibus volutpat velit finibus accumsan. Suspendisse accumsan arcu sit amet sapien ultrices vehicula. Nunc lacus metus, laoreet ut leo eu, euismod porttitor odio. Ut sit amet tempus ipsum.', 6, 1, 0, '2022-02-21 10:21:13', '2023-04-20 09:29:03'),
(3, 'Tip uređaja', 'Donec maximus feugiat tortor, non semper lacus dignissim non. Integer vitae posuere massa. Nullam vel erat ornare, sagittis ex eu, blandit sem. Nulla ac nunc non nisi vehicula luctus. Nulla malesuada sollicitudin est, et mollis mi luctus at. Vivamus euismod metus mauris, vitae finibus sem vulputate sed.', 0, 1, 0, '2022-02-21 10:21:39', '2023-04-20 09:29:27'),
(4, 'Zaslon', 'Quisque erat justo, semper sed neque quis, dictum tempor magna. Aliquam erat volutpat. Sed pharetra vitae tellus quis pretium. Praesent venenatis ligula vitae risus scelerisque porttitor.', 4, 1, 0, '2022-02-21 10:22:29', '2023-04-20 09:29:44'),
(5, 'Mreže', 'Nam commodo dignissim nulla, eget elementum odio porttitor ac. Phasellus interdum, nulla in commodo pharetra, lorem lacus tristique quam, eget luctus urna orci viverra dui. Etiam congue ullamcorper erat, eu elementum risus aliquam posuere. Sed posuere ante ac elit dapibus sollicitudin. Quisque dui nunc, scelerisque non ipsum ac, tempus malesuada leo.', 2, 1, 0, '2022-02-21 10:22:52', '2023-04-20 09:33:24'),
(6, 'Kamera', 'Duis quis urna ut eros imperdiet auctor sit amet sed velit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris quis velit lorem. Donec vitae erat ante. Quisque ornare sed nisi id sodales. Donec condimentum condimentum turpis ac suscipit. Maecenas ut eleifend ex.', 5, 1, 0, '2022-02-21 10:23:03', '2023-04-20 09:33:33'),
(7, 'Veličina', 'Duis quis urna ut eros imperdiet auctor sit amet sed velit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Mauris quis velit lorem. Donec vitae erat ante. Quisque ornare sed nisi id sodales. Donec condimentum condimentum turpis ac suscipit. Maecenas ut eleifend ex.', 3, 1, 0, '2022-02-21 10:23:20', '2023-04-20 09:33:43'),
(9, 'test', '123', 1, 1, 1, '2022-02-21 10:29:52', '2022-02-21 10:30:04'),
(10, 'Ostalo', 'Otheri Information', 7, 1, 0, '2022-02-21 11:45:38', '2023-04-20 09:34:14'),
(11, 'test', 'eee', 8, 1, 1, '2023-04-22 11:37:49', '2023-04-22 11:40:45'),
(12, 'test', 'eeee', 8, 1, 1, '2023-04-22 11:40:54', '2023-04-22 11:41:54'),
(13, 'test', 'ddd', 8, 1, 1, '2023-04-22 11:49:41', '2023-04-22 11:50:09'),
(14, 'ddd', 'ddd', 8, 1, 1, '2023-04-22 11:50:20', '2023-04-22 11:50:33'),
(15, 'e', 'e', 8, 0, 1, '2023-04-23 12:48:34', '2023-04-23 12:49:54');

-- --------------------------------------------------------

--
-- Table structure for table `field_list`
--

CREATE TABLE `field_list` (
  `id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `order_by` int(30) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `field_list`
--

INSERT INTO `field_list` (`id`, `category_id`, `name`, `description`, `order_by`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 3, 'TIP', 'Tip uređaja', 0, 1, 0, '2022-02-21 11:19:41', '2023-04-20 09:44:04'),
(2, 3, 'Oblik', 'Oblik uređaja', 1, 1, 0, '2022-02-21 11:20:01', '2023-04-20 09:44:24'),
(3, 1, 'OS', 'Operacijski sustav uređaja', 0, 1, 0, '2022-02-21 11:20:19', '2023-04-20 09:44:41'),
(4, 1, 'VERZIJA OS-a', 'Verzija operacijskog sustava uređaja', 1, 1, 0, '2022-02-21 11:21:37', '2023-04-20 09:45:10'),
(5, 1, 'SIM', 'Utor SIM kartice', 2, 1, 0, '2022-02-21 11:22:28', '2023-04-20 09:45:46'),
(6, 1, 'CPU', 'Procesor uređaja', 3, 1, 0, '2022-02-21 11:23:29', '2023-04-20 09:45:59'),
(7, 1, 'BRZINA CPU-a', 'Brzina procesora', 4, 1, 0, '2022-02-21 11:23:54', '2023-04-20 09:46:26'),
(8, 1, 'POHRANA', 'Pohrana uređaja', 5, 1, 0, '2022-02-21 11:24:08', '2023-04-20 09:46:37'),
(9, 1, 'CHIPSET', 'Chipset uređaja', 6, 1, 0, '2022-02-21 11:24:48', '2023-04-20 09:46:50'),
(10, 1, 'RAM', 'RAM memorija uređaja', 7, 1, 0, '2022-02-21 11:25:08', '2023-04-20 09:47:03'),
(11, 1, 'VANJSKA POHRANA', 'Vanjska pohrana uređaja', 8, 1, 0, '2022-02-21 11:35:57', '2023-04-20 09:47:43'),
(12, 1, 'BATERIJA', 'Informacije o bateriji uređaja', 9, 1, 0, '2022-02-21 11:36:18', '2023-04-20 09:48:05'),
(13, 4, 'VELIČINA ZASLONA', 'Veličina zaslona uređaja', 0, 1, 0, '2022-02-21 11:36:55', '2023-04-20 09:48:20'),
(14, 4, 'REZOLUCIJA', 'Rezolucija zaslona', 1, 1, 0, '2022-02-21 11:37:24', '2023-04-20 09:48:34'),
(15, 5, 'TIP', 'Tip mreža uređaja', 0, 1, 0, '2022-02-21 11:38:32', '2023-04-20 09:48:52'),
(16, 5, '2G', '2G info.', 1, 1, 0, '2022-02-21 11:38:53', '2023-04-20 09:49:09'),
(17, 5, '3G', '3G info.', 2, 1, 0, '2022-02-21 11:38:59', '2023-04-20 09:49:17'),
(18, 5, '4G', '4G info.', 3, 1, 0, '2022-02-21 11:39:07', '2023-04-20 09:49:26'),
(19, 5, '5G', '5G info.', 4, 1, 0, '2022-02-21 11:40:35', '2023-04-20 09:49:34'),
(20, 5, 'BRZINA', 'Brzina mreže uređaja', 5, 1, 0, '2022-02-21 11:40:59', '2023-04-20 09:49:49'),
(21, 6, 'GLAVNA KAMERA', 'Informacije glavne kamere', 0, 1, 0, '2022-02-21 11:41:38', '2023-04-20 09:50:01'),
(22, 6, 'ZNAČAJKE', 'Značajke kamere', 1, 1, 0, '2022-02-21 11:41:54', '2023-04-20 09:50:16'),
(23, 6, 'VIDEO', 'Informacije o videu', 2, 1, 0, '2022-02-21 11:42:13', '2023-04-20 09:50:35'),
(24, 6, 'PREDNJA KAMERA', 'Informacije prednje kamere', 3, 1, 0, '2022-02-21 11:42:32', '2023-04-20 09:50:51'),
(25, 6, 'ZNAČAJKE PREDNJE KAMERE', 'Značajke prednje kamere', 4, 1, 0, '2022-02-21 11:43:38', '2023-04-20 09:51:22'),
(26, 6, 'VIDEO PREDNJE KAMERE', 'Informacije o videu prednje kamere', 5, 1, 0, '2022-02-21 11:43:57', '2023-04-20 09:51:43'),
(27, 7, 'DIMENZIJE', 'Dimenzije uređaja', 0, 1, 0, '2022-02-21 11:44:33', '2023-04-20 09:51:57'),
(28, 7, 'TEŽINA', 'Težina uređaja', 1, 1, 0, '2022-02-21 11:44:56', '2023-04-20 09:52:11'),
(29, 10, 'Više Značajki', 'Ostale informacije', 0, 1, 0, '2022-02-21 11:46:17', '2023-04-20 09:52:27'),
(30, 10, 'test', 'test', 1, 1, 1, '2022-02-21 11:50:55', '2022-02-21 13:26:45'),
(32, 2, 'CIJENA', 'Cijena uređaja', 1, 1, 0, '2022-02-21 12:07:48', '2023-04-20 09:52:39'),
(33, 2, 'aaa', 'aaa', 2, 1, 1, '2023-04-22 12:13:24', '2023-04-22 12:13:38');

-- --------------------------------------------------------

--
-- Table structure for table `mobile_list`
--

CREATE TABLE `mobile_list` (
  `id` int(30) NOT NULL,
  `model` text NOT NULL,
  `brand` text NOT NULL,
  `display_content` text NOT NULL,
  `thumbnail_path` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mobile_list`
--

INSERT INTO `mobile_list` (`id`, `model`, `brand`, `display_content`, `thumbnail_path`, `status`, `date_created`, `date_updated`) VALUES
(2, 'Redmi Note 11 Pro 5G', ' Xiaomi', '&lt;h2 class=&quot;has-text-align-center&quot; id=&quot;here-s-the-complete-list-of-specifications-features-price-of-the-xiaomi-redmi-note-11-pro-5g&quot; style=&quot;margin: 47px 0px 18px; padding: 0px; overflow-wrap: break-word; text-align: center; color: rgb(17, 17, 17); font-size: 29px; line-height: 44px; font-family: Candara, Verdana, sans-serif;&quot;&gt;Evo kompletnog popisa specifikacija, značajki i cijene Xiaomi Redmi Note 11 Pro 5G&lt;/h2&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 29px; margin-left: 0px; padding: 0px; overflow-wrap: break-word; color: rgb(17, 17, 17); font-family: Candara, Verdana, sans-serif; font-size: 18px;&quot;&gt;Xiaomi Redmi Note 11 Pro 5G službeno je najavljen 26. siječnja 2022., a izdan je 18. veljače 2022. Pametni telefon napaja se neizmjenjivom Li-Po baterijom od 5000 mAh + Brzo punjenje od 67 W + Power Delivery 3.0 + Quick Charge 3+. Dostupan je u tri boje: grafitno sivoj, polarno bijeloj i atlantsko plavoj.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 29px; margin-left: 0px; padding: 0px; overflow-wrap: break-word; color: rgb(17, 17, 17); font-family: Candara, Verdana, sans-serif; font-size: 18px;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; overflow-wrap: break-word;&quot;&gt;Tijelo i zaslon:&lt;/strong&gt;&lt;/p&gt;&lt;div class=&quot;code-block code-block-3&quot; style=&quot;margin: 8px auto; padding: 0px; overflow-wrap: break-word; color: rgb(17, 17, 17); font-family: Candara, Verdana, sans-serif; font-size: 18px; text-align: center; clear: both;&quot;&gt;&lt;ins class=&quot;adPushupAds&quot; data-adpcontrol=&quot;1v4kp&quot; data-ver=&quot;2&quot; data-siteid=&quot;38386&quot; data-ac=&quot;PHNjcmlwdCBhc3luYyBzcmM9Ii8vcGFnZWFkMi5nb29nbGVzeW5kaWNhdGlvbi5jb20vcGFnZWFkL2pzL2Fkc2J5Z29vZ2xlLmpzIj48L3NjcmlwdD4KPCEtLSBQTjJuZFBhcmFncmFwaCAtLT4KPGlucyBjbGFzcz0iYWRzYnlnb29nbGUgbWlkYm90YWRzIgogICAgIHN0eWxlPSJkaXNwbGF5OmlubGluZS1ibG9jayIKICAgICBkYXRhLWFkLWNsaWVudD0iY2EtcHViLTAzMzU2MzUyOTc3ODk0NTEiCiAgICAgZGF0YS1hZC1zbG90PSI2NTQ5Mzk5MzE3IgogICAgIGRhdGEtZnVsbC13aWR0aC1yZXNwb25zaXZlPSJ0cnVlIj48L2lucz4KPHNjcmlwdD4KKGFkc2J5Z29vZ2xlID0gd2luZG93LmFkc2J5Z29vZ2xlIHx8IFtdKS5wdXNoKHt9KTsKPC9zY3JpcHQ+&quot; data-push=&quot;1&quot; style=&quot;margin: 0px; padding: 0px; overflow-wrap: break-word;&quot;&gt;&lt;/ins&gt;&lt;/div&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 29px; margin-left: 0px; padding: 0px; overflow-wrap: break-word; color: rgb(17, 17, 17); font-family: Candara, Verdana, sans-serif; font-size: 18px;&quot;&gt;Dimenzije 5G spremnog pametnog telefona su 164,2 x 76,1 x 8,1 mm i težak je 202 grama. Izrađen je sa staklenom prednjom stranom (Gorilla Glass 5) i staklenom stražnjom stranom. Ima zaslon veličine 6,67 inča, a zaslon je Super AMOLED kapacitivni zaslon osjetljiv na dodir koji pruža rezoluciju od 1080 x 2400 piksela.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 29px; margin-left: 0px; padding: 0px; overflow-wrap: break-word; color: rgb(17, 17, 17); font-family: Candara, Verdana, sans-serif; font-size: 18px;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; overflow-wrap: break-word;&quot;&gt;Platforma:&lt;/strong&gt;&lt;/p&gt;&lt;div class=&quot;code-block code-block-4&quot; style=&quot;margin: 8px auto; padding: 0px; overflow-wrap: break-word; color: rgb(17, 17, 17); font-family: Candara, Verdana, sans-serif; font-size: 18px; text-align: center; clear: both;&quot;&gt;&lt;ins class=&quot;adPushupAds&quot; data-adpcontrol=&quot;en6ne&quot; data-ver=&quot;2&quot; data-siteid=&quot;38386&quot; data-ac=&quot;PHNjcmlwdCBhc3luYyBzcmM9Ii8vcGFnZWFkMi5nb29nbGVzeW5kaWNhdGlvbi5jb20vcGFnZWFkL2pzL2Fkc2J5Z29vZ2xlLmpzIj48L3NjcmlwdD4KPCEtLSBQTjNyZFBhcmFncmFwaCAtLT4KPGlucyBjbGFzcz0iYWRzYnlnb29nbGUgbWlkYm90YWRzIgogICAgIHN0eWxlPSJkaXNwbGF5OmlubGluZS1ibG9jayIKICAgICBkYXRhLWFkLWNsaWVudD0iY2EtcHViLTAzMzU2MzUyOTc3ODk0NTEiCiAgICAgZGF0YS1hZC1zbG90PSI5OTg1NjU2NDEwIgogICAgIGRhdGEtZnVsbC13aWR0aC1yZXNwb25zaXZlPSJ0cnVlIj48L2lucz4KPHNjcmlwdD4KKGFkc2J5Z29vZ2xlID0gd2luZG93LmFkc2J5Z29vZ2xlIHx8IFtdKS5wdXNoKHt9KTsKPC9zY3JpcHQ+&quot; data-push=&quot;1&quot; style=&quot;margin: 0px; padding: 0px; overflow-wrap: break-word;&quot;&gt;&lt;/ins&gt;&lt;/div&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 29px; margin-left: 0px; padding: 0px; overflow-wrap: break-word; color: rgb(17, 17, 17); font-family: Candara, Verdana, sans-serif; font-size: 18px;&quot;&gt;Redmi Note 11 Pro 5G radi na Android 11 + MIUI 13 operativnom sustavu. Pokreće ga Qualcomm SM6375 Snapdragon 695 5G (6 nm) Octa-core procesor dok je jedinica za grafičku obradu (GPU) Adreno 619.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 29px; margin-left: 0px; padding: 0px; overflow-wrap: break-word; color: rgb(17, 17, 17); font-family: Candara, Verdana, sans-serif; font-size: 18px;&quot;&gt;Pametni telefon dolazi u varijantama kao &scaron;to su 64 GB + 6 GB RAM-a, 128 GB + 6 GB RAM-a i 128 GB + 8 GB RAM-a. Također podržava pro&scaron;irivu microSD pohranu do 1TB.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 29px; margin-left: 0px; padding: 0px; overflow-wrap: break-word; color: rgb(17, 17, 17); font-family: Candara, Verdana, sans-serif; font-size: 18px;&quot;&gt;&lt;a href=&quot;https://philnews.ph/2022/02/20/xiaomi-redmi-note-11-pro-5g-specs-features-price-philippines/&quot; target=&quot;_blank&quot;&gt;Izvor: Philnews&lt;/a&gt;&lt;br&gt;&lt;/p&gt;', 'uploads/thumbnails/2.png?v=1645423990', 1, '2022-02-21 14:13:10', '2023-04-20 17:16:35'),
(3, 'Redmi K50 Gaming', 'Xiaomi', '&lt;h2 class=&quot;has-text-align-center&quot; id=&quot;here-s-the-complete-list-of-specifications-features-price-of-the-xiaomi-redmi-k50-gaming&quot; style=&quot;margin: 47px 0px 18px; padding: 0px; overflow-wrap: break-word; text-align: center; color: rgb(17, 17, 17); font-size: 29px; line-height: 44px; font-family: Candara, Verdana, sans-serif;&quot;&gt;Evo kompletnog popisa specifikacija, značajki i cijena Xiaomi Redmi K50 Gaming&lt;/h2&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 29px; margin-left: 0px; padding: 0px; overflow-wrap: break-word; color: rgb(17, 17, 17); font-family: Candara, Verdana, sans-serif; font-size: 18px;&quot;&gt;Xiaomi Redmi K50 Gaming službeno je najavljen 16. veljače 2022. Uređaj spreman za 5G napaja se neizmjenjivom Li-Po baterijom od 4700 mAh + Brzo punjenje od 120 W + Power Delivery 3.0 + Quick Charge 3+. U ponudi je u četiri boje: crnoj, sivoj, plavoj i AMG.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 29px; margin-left: 0px; padding: 0px; overflow-wrap: break-word; color: rgb(17, 17, 17); font-family: Candara, Verdana, sans-serif; font-size: 18px;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; overflow-wrap: break-word;&quot;&gt;Tijelo i zaslon:&lt;/strong&gt;&lt;/p&gt;&lt;div class=&quot;code-block code-block-3&quot; style=&quot;margin: 8px auto; padding: 0px; overflow-wrap: break-word; color: rgb(17, 17, 17); font-family: Candara, Verdana, sans-serif; font-size: 18px; text-align: center; clear: both;&quot;&gt;&lt;ins class=&quot;adPushupAds&quot; data-adpcontrol=&quot;1v4kp&quot; data-ver=&quot;2&quot; data-siteid=&quot;38386&quot; data-ac=&quot;PHNjcmlwdCBhc3luYyBzcmM9Ii8vcGFnZWFkMi5nb29nbGVzeW5kaWNhdGlvbi5jb20vcGFnZWFkL2pzL2Fkc2J5Z29vZ2xlLmpzIj48L3NjcmlwdD4KPCEtLSBQTjJuZFBhcmFncmFwaCAtLT4KPGlucyBjbGFzcz0iYWRzYnlnb29nbGUgbWlkYm90YWRzIgogICAgIHN0eWxlPSJkaXNwbGF5OmlubGluZS1ibG9jayIKICAgICBkYXRhLWFkLWNsaWVudD0iY2EtcHViLTAzMzU2MzUyOTc3ODk0NTEiCiAgICAgZGF0YS1hZC1zbG90PSI2NTQ5Mzk5MzE3IgogICAgIGRhdGEtZnVsbC13aWR0aC1yZXNwb25zaXZlPSJ0cnVlIj48L2lucz4KPHNjcmlwdD4KKGFkc2J5Z29vZ2xlID0gd2luZG93LmFkc2J5Z29vZ2xlIHx8IFtdKS5wdXNoKHt9KTsKPC9zY3JpcHQ+&quot; data-push=&quot;1&quot; style=&quot;margin: 0px; padding: 0px; overflow-wrap: break-word;&quot;&gt;&lt;/ins&gt;&lt;/div&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 29px; margin-left: 0px; padding: 0px; overflow-wrap: break-word; color: rgb(17, 17, 17); font-family: Candara, Verdana, sans-serif; font-size: 18px;&quot;&gt;Redmi K50 Gaming ima Corning Gorilla Glass Victus za&scaron;titu. Izrađen je sa staklenom prednjom stranom (Gorilla Glass Victus), staklenom stražnjom stranom i aluminijskim okvirom. Telefon je dimenzija 162,5 x 76,7 x 8,5 mm i težak 210 grama. Ima zaslon veličine 6,67 inča, a zaslon je OLED kapacitivni zaslon osjetljiv na dodir koji pruža razlučivost od 1080 x 2400 piksela.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 29px; margin-left: 0px; padding: 0px; overflow-wrap: break-word; color: rgb(17, 17, 17); font-family: Candara, Verdana, sans-serif; font-size: 18px;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; overflow-wrap: break-word;&quot;&gt;Platforma:&lt;/strong&gt;&lt;/p&gt;&lt;div class=&quot;code-block code-block-4&quot; style=&quot;margin: 8px auto; padding: 0px; overflow-wrap: break-word; color: rgb(17, 17, 17); font-family: Candara, Verdana, sans-serif; font-size: 18px; text-align: center; clear: both;&quot;&gt;&lt;ins class=&quot;adPushupAds&quot; data-adpcontrol=&quot;en6ne&quot; data-ver=&quot;2&quot; data-siteid=&quot;38386&quot; data-ac=&quot;PHNjcmlwdCBhc3luYyBzcmM9Ii8vcGFnZWFkMi5nb29nbGVzeW5kaWNhdGlvbi5jb20vcGFnZWFkL2pzL2Fkc2J5Z29vZ2xlLmpzIj48L3NjcmlwdD4KPCEtLSBQTjNyZFBhcmFncmFwaCAtLT4KPGlucyBjbGFzcz0iYWRzYnlnb29nbGUgbWlkYm90YWRzIgogICAgIHN0eWxlPSJkaXNwbGF5OmlubGluZS1ibG9jayIKICAgICBkYXRhLWFkLWNsaWVudD0iY2EtcHViLTAzMzU2MzUyOTc3ODk0NTEiCiAgICAgZGF0YS1hZC1zbG90PSI5OTg1NjU2NDEwIgogICAgIGRhdGEtZnVsbC13aWR0aC1yZXNwb25zaXZlPSJ0cnVlIj48L2lucz4KPHNjcmlwdD4KKGFkc2J5Z29vZ2xlID0gd2luZG93LmFkc2J5Z29vZ2xlIHx8IFtdKS5wdXNoKHt9KTsKPC9zY3JpcHQ+&quot; data-push=&quot;1&quot; style=&quot;margin: 0px; padding: 0px; overflow-wrap: break-word;&quot;&gt;&lt;/ins&gt;&lt;/div&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 29px; margin-left: 0px; padding: 0px; overflow-wrap: break-word; color: rgb(17, 17, 17); font-family: Candara, Verdana, sans-serif; font-size: 18px;&quot;&gt;Pametni telefon pokreće Qualcomm SM8450 Snapdragon 8 Gen 1 (4 nm) Octa-core procesor dok je grafička procesorska jedinica (GPU) Adreno 730. Radi na Android 12 + MIUI 13 operativnom sustavu. Dolazi u varijantama kao &scaron;to su 128 GB + 8 GB RAM-a, 128 GB + 12 GB RAM-a i 256 GB + 12 GB RAM-a.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 29px; margin-left: 0px; padding: 0px; overflow-wrap: break-word; color: rgb(17, 17, 17); font-family: Candara, Verdana, sans-serif; font-size: 18px;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; overflow-wrap: break-word;&quot;&gt;Glavna kamera:&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 29px; margin-left: 0px; padding: 0px; overflow-wrap: break-word; color: rgb(17, 17, 17); font-family: Candara, Verdana, sans-serif; font-size: 18px;&quot;&gt;Stražnja strana Xiaomi Redmi K50 Gaminga ima trostruku kameru koja se sastoji od 64 megapiksela (&scaron;iroka) + 8 megapiksela (ultra&scaron;iroka) + 2 megapiksela (makro). Sadrži dvostruku LED bljeskalicu, HDR i panoramu.&lt;/p&gt;&lt;div class=&quot;code-block code-block-6&quot; style=&quot;margin: 8px auto; padding: 0px; overflow-wrap: break-word; color: rgb(17, 17, 17); font-family: Candara, Verdana, sans-serif; font-size: 18px; text-align: center; clear: both;&quot;&gt;&lt;ins class=&quot;adPushupAds&quot; data-adpcontrol=&quot;3s6f1&quot; data-ver=&quot;2&quot; data-siteid=&quot;38386&quot; data-ac=&quot;PHNjcmlwdCBhc3luYyBzcmM9Ii8vcGFnZWFkMi5nb29nbGVzeW5kaWNhdGlvbi5jb20vcGFnZWFkL2pzL2Fkc2J5Z29vZ2xlLmpzIj48L3NjcmlwdD4KPCEtLSBQTjh0aFBhcmFncmFwaCAtLT4KPGlucyBjbGFzcz0iYWRzYnlnb29nbGUgbWlkYm90YWRzIgogICAgIHN0eWxlPSJkaXNwbGF5OmlubGluZS1ibG9jayIKICAgICBkYXRhLWFkLWNsaWVudD0iY2EtcHViLTAzMzU2MzUyOTc3ODk0NTEiCiAgICAgZGF0YS1hZC1zbG90PSI5Nzc0MzI4NDU0IgogICAgIGRhdGEtZnVsbC13aWR0aC1yZXNwb25zaXZlPSJ0cnVlIj48L2lucz4KPHNjcmlwdD4KKGFkc2J5Z29vZ2xlID0gd2luZG93LmFkc2J5Z29vZ2xlIHx8IFtdKS5wdXNoKHt9KTsKPC9zY3JpcHQ+&quot; data-push=&quot;1&quot; style=&quot;margin: 0px; padding: 0px; overflow-wrap: break-word;&quot;&gt;&lt;/ins&gt;&lt;/div&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 29px; margin-left: 0px; padding: 0px; overflow-wrap: break-word; color: rgb(17, 17, 17); font-family: Candara, Verdana, sans-serif; font-size: 18px;&quot;&gt;&lt;strong style=&quot;margin: 0px; padding: 0px; overflow-wrap: break-word;&quot;&gt;Selfie kamera:&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 29px; margin-left: 0px; padding: 0px; overflow-wrap: break-word; color: rgb(17, 17, 17); font-family: Candara, Verdana, sans-serif; font-size: 18px;&quot;&gt;Pametni telefon ima maleni zaslon s rupama na kojem se nalazi kamera od 20 megapiksela. Također ima HDR.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 29px; margin-left: 0px; padding: 0px; overflow-wrap: break-word; color: rgb(17, 17, 17); font-family: Candara, Verdana, sans-serif; font-size: 18px;&quot;&gt;Opcije povezivanja na ovom pametnom telefonu uključuju USB Type-C 2.0, USB OTG, infracrveni senzor, NFC, WiFi 802.11 a/b/g/n/ac/6e, hotspot, Bluetooth 5.2, GPS s A-GPS-om, GLONASS, GALILEO, QZSS i NavIC. Senzori na telefonu uključuju otisak prsta (bočno postavljen), akcelerometar, žiroskop, kompas i spektar boja.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 29px; margin-left: 0px; padding: 0px; overflow-wrap: break-word; color: rgb(17, 17, 17); font-family: Candara, Verdana, sans-serif; font-size: 18px;&quot;&gt;&lt;a href=&quot;https://philnews.ph/2022/02/18/xiaomi-redmi-k50-gaming-specs-features-price-philippines/&quot; target=&quot;_blank&quot;&gt;Izvor: PhilNews.PH&lt;/a&gt;&lt;br&gt;&lt;/p&gt;', 'uploads/thumbnails/3.jpg?v=1645424949', 1, '2022-02-21 14:29:08', '2023-04-20 17:26:57');

-- --------------------------------------------------------

--
-- Table structure for table `mobile_meta`
--

CREATE TABLE `mobile_meta` (
  `mobile_id` int(30) NOT NULL,
  `field_id` int(30) NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mobile_meta`
--

INSERT INTO `mobile_meta` (`mobile_id`, `field_id`, `meta_value`) VALUES
(3, 1, 'Smartphone, Phablet, Camera Phone, Selfie Phone, Bezel-less Phone, Gaming Phone'),
(3, 2, 'Bar'),
(3, 3, 'Android'),
(3, 4, 'Android 12, MIUI 13'),
(3, 5, 'Dual SIM (Nano-SIM, dual stand-by)'),
(3, 6, 'Qualcomm SM8450 Snapdragon 8 Gen 1 (4 nm) Octa-core Cortex-X2 & Cortex-A710 &Cortex-A510'),
(3, 7, '1x3.00 GHz Cortex-X2 & 3x2.50 GHz Cortex-A710 & 4x1.80 GHz Cortex-A510'),
(3, 8, '128GB, 256GB'),
(3, 9, '128GB, 256GB'),
(3, 10, '8GB, 12GB'),
(3, 11, 'Ne'),
(3, 12, 'Neizmjenjivom Li-Po baterijom od 4700 mAh + Brzo punjenje od 120 W + Power Delivery 3.0 + Quick Charge 3+'),
(3, 15, '2G , 3G , 4G (LTE), 5G'),
(3, 16, 'GSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2 CDMA 800'),
(3, 17, 'HSDPA 850 / 900 / 1700(AWS) / 1900 / 2100 CDMA2000 1x'),
(3, 18, '1, 2, 3, 4, 5, 7, 8, 18, 19, 26, 34, 38, 39, 40, 41, 42'),
(3, 19, '1, 3, 5, 8, 28, 38, 40, 41, 77, 78 SA/NSA/Sub6'),
(3, 20, 'HSPA 42.2/5.76 Mbps, LTE-A, 5G'),
(3, 27, '162.5 x 76.7 x 8.5 mm (6.40 x 3.02 x 0.33 in)'),
(3, 28, '210 g (7.41 oz)'),
(3, 13, '6.67 inča'),
(3, 14, '1080 x 2400'),
(3, 21, '64MP + 8MP + 2MP'),
(3, 22, 'Dvostruka LED bljeskalica, HDR, panorama'),
(3, 23, '4K@30/60fps, 1080p@30/60/120fps, 720p@960fps, HDR'),
(3, 24, '20MP'),
(3, 25, 'HDR'),
(3, 26, '1080p@30/60fps, 720p@120fps, HDR'),
(3, 32, '31,590'),
(3, 29, 'Wi-Fi, Hotspot/Tethering, GPS, Bluetooth, Infracrveni senzor, Bljeskalica, Otključavanje licem, Skener otiska prsta, NFC, 3.5mm ulaz za slušalice, Trostruka kamera'),
(2, 1, 'Smartphone, Phablet, Camera Phone, Bezel-less Phone'),
(2, 2, '	Bar'),
(2, 3, 'Android'),
(2, 4, 'Android 11, MIUI 13'),
(2, 5, 'Hybrid Dual SIM (Nano-SIM, dual stand-by)'),
(2, 6, 'Qualcomm SM6375 Snapdragon 695 5G (6 nm) Octa-core Kryo 660'),
(2, 7, '2x2.2 GHz Kryo 660 Gold & 6x1.7 GHz Kryo 660 Silver'),
(2, 8, '	64GB, 128GB'),
(2, 9, 'Qualcomm SM6375 Snapdragon 695 5G (6 nm)'),
(2, 10, '6GB, 8GB'),
(2, 11, 'MicroSD do 1TB'),
(2, 12, 'Neizmjenjiva Li-Po 5000 mAh + Brzo punjenje 67W + Power Delivery 3.0 + Quick Charge 3+'),
(2, 15, '2G, 3G , 4G (LTE), 5G'),
(2, 16, 'GSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2'),
(2, 17, 'HSDPA 800 / 850 / 900 / 1900 / 2100'),
(2, 18, '1, 2, 3, 4, 5, 7, 8, 12, 13, 17, 18, 19, 20, 26, 28, 32, 38, 40, 41, 66'),
(2, 19, '1, 3, 5, 7, 8, 20, 28, 38, 40, 41, 66, 77, 78 SA/NSA'),
(2, 20, 'HSPA 42.2/5.76 Mbps, LTE-A (CA), 5G'),
(2, 27, '164.2 x 76.1 x 8.1 mm (6.46 x 3.00 x 0.32 in)'),
(2, 28, '164.2 x 76.1 x 8.1 mm (6.46 x 3.00 x 0.32 in)'),
(2, 13, '6.67 inča'),
(2, 14, '1080 x 2400'),
(2, 21, '108MP + 8MP + 2MP'),
(2, 22, 'LED bljeskalica, HDR, panorama'),
(2, 23, '1080p@30fps'),
(2, 24, '16MP'),
(2, 25, 'N/A'),
(2, 26, '1080p@30fps'),
(2, 32, '16,916.46'),
(2, 29, 'Wi-Fi, Hotspot/Tethering, GPS, Bluetooth, Infracrveni senzor, Bljeskalica, Otključavanje licem, Skener otiska prsta, NFC , Trostruka kamere, 3.5mm ulaz za slušalice, Vodootporan');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Usporedba mobitela'),
(6, 'short_name', 'T-spec'),
(11, 'logo', 'uploads/logo-1645409251.jpg?v=1645409251'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover-1645430976.jpg?v=1645430976');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/avatars/1.png?v=1645064505', NULL, 1, '2021-01-20 14:02:37', '2022-02-17 10:21:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_list`
--
ALTER TABLE `category_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `field_list`
--
ALTER TABLE `field_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `mobile_list`
--
ALTER TABLE `mobile_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mobile_meta`
--
ALTER TABLE `mobile_meta`
  ADD KEY `mobile_id` (`mobile_id`),
  ADD KEY `field_id` (`field_id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category_list`
--
ALTER TABLE `category_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `field_list`
--
ALTER TABLE `field_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `mobile_list`
--
ALTER TABLE `mobile_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `field_list`
--
ALTER TABLE `field_list`
  ADD CONSTRAINT `field_list_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `mobile_meta`
--
ALTER TABLE `mobile_meta`
  ADD CONSTRAINT `mobile_meta_ibfk_1` FOREIGN KEY (`field_id`) REFERENCES `field_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `mobile_meta_ibfk_2` FOREIGN KEY (`mobile_id`) REFERENCES `mobile_list` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
