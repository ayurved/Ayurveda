-- phpMyAdmin SQL Dump
-- version 4.0.0
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 09, 2014 at 12:33 PM
-- Server version: 5.6.11
-- PHP Version: 5.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `crestyl`
--

-- --------------------------------------------------------

--
-- Table structure for table `attachments`
--

CREATE TABLE IF NOT EXISTS `attachments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `parent_type` varchar(250) NOT NULL DEFAULT 'Post',
  `type` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'publish',
  `url` varchar(1000) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `attachments`
--

INSERT INTO `attachments` (`id`, `parent_id`, `parent_type`, `type`, `status`, `url`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 2, 'Post', 'featured-image', 'publish', 'app1.jpg', NULL, NULL, '2014-04-02 11:10:09', '2014-04-02 11:10:09'),
(2, 3, 'Post', 'featured-image', 'publish', 'app2.jpg', NULL, NULL, '2014-04-02 11:10:09', '2014-04-02 11:10:09'),
(3, 4, 'Post', 'featured-image', 'publish', 'app3.jpg', NULL, NULL, '2014-04-02 11:10:09', '2014-04-02 11:10:09'),
(4, 6, 'Post', 'featured-image', 'publish', 'projekt.jpg', NULL, NULL, '2014-04-02 11:10:09', '2014-04-02 11:10:09'),
(5, 7, 'Post', 'featured-image', 'publish', 'project.jpg', NULL, NULL, '2014-04-02 11:10:09', '2014-04-02 11:10:09'),
(6, 8, 'Post', 'featured-image', 'publish', 'architects.jpg', NULL, NULL, '2014-04-02 11:10:09', '2014-04-02 11:10:09'),
(7, 9, 'Post', 'featured-image', 'publish', 'partners.jpg', NULL, NULL, '2014-04-02 11:10:09', '2014-04-02 11:10:09'),
(8, 12, 'Post', 'featured-image', 'publish', 'gal1.jpg', NULL, NULL, '2014-04-02 13:04:33', '2014-04-02 13:04:33'),
(9, 13, 'Post', 'featured-image', 'publish', 'gal2.jpg', NULL, NULL, '2014-04-02 13:04:33', '2014-04-02 13:04:33'),
(10, 14, 'Post', 'featured-image', 'publish', 'gal3.jpg', NULL, NULL, '2014-04-02 13:04:33', '2014-04-02 13:04:33'),
(11, 16, 'Post', 'featured-image', 'publish', 'app1.jpg', NULL, NULL, '2014-04-02 16:18:25', '2014-04-02 16:18:25'),
(12, 17, 'Post', 'featured-image', 'publish', 'app2.jpg', NULL, NULL, '2014-04-02 16:18:25', '2014-04-02 16:18:25'),
(13, 18, 'Post', 'featured-image', 'publish', 'app3.jpg', NULL, NULL, '2014-04-02 16:18:25', '2014-04-02 16:18:25'),
(14, 20, 'Post', 'featured-image', 'publish', 'portrait1.jpg', NULL, NULL, '2014-04-02 16:18:25', '2014-04-02 16:18:25'),
(15, 21, 'Post', 'featured-image', 'publish', 'portrait2.jpg', NULL, NULL, '2014-04-02 16:18:25', '2014-04-02 16:18:25'),
(16, 22, 'Post', 'featured-image', 'publish', 'portrait3.jpg', NULL, NULL, '2014-04-02 16:18:25', '2014-04-02 16:18:25'),
(17, 23, 'Post', 'featured-image', 'publish', 'portrait1.jpg', NULL, NULL, '2014-04-02 16:18:25', '2014-04-02 16:18:25'),
(18, 25, 'Post', 'featured-image', 'publish', 'app1.jpg', NULL, NULL, '2014-04-02 16:22:53', '2014-04-02 16:22:53'),
(19, 26, 'Post', 'featured-image', 'publish', 'app2.jpg', NULL, NULL, '2014-04-02 16:22:53', '2014-04-02 16:22:53'),
(20, 27, 'Post', 'featured-image', 'publish', 'app3.jpg', NULL, NULL, '2014-04-02 16:22:53', '2014-04-02 16:22:53'),
(21, 29, 'Post', 'featured-image', 'publish', 'portrait1.jpg', NULL, NULL, '2014-04-02 16:22:53', '2014-04-02 16:22:53'),
(22, 30, 'Post', 'featured-image', 'publish', 'portrait2.jpg', NULL, NULL, '2014-04-02 16:22:54', '2014-04-02 16:22:54'),
(23, 31, 'Post', 'featured-image', 'publish', 'portrait3.jpg', NULL, NULL, '2014-04-02 16:22:54', '2014-04-02 16:22:54'),
(24, 32, 'Post', 'featured-image', 'publish', 'portrait1.jpg', NULL, NULL, '2014-04-02 16:22:54', '2014-04-02 16:22:54'),
(25, 33, 'Post', 'featured-image', 'publish', 'news1_featured.jpg', NULL, NULL, '2014-04-02 16:25:33', '2014-04-02 16:25:33'),
(26, 34, 'Post', 'featured-image', 'publish', 'news2_featured.jpg', NULL, NULL, '2014-04-02 16:25:33', '2014-04-02 16:25:33'),
(27, 35, 'Post', 'featured-image', 'publish', 'news3_featured.jpg', NULL, NULL, '2014-04-02 16:25:33', '2014-04-02 16:25:33'),
(28, 42, 'Post', 'featured-image', 'publish', 'news4_featured.jpg', NULL, NULL, '2014-04-29 14:03:30', '2014-04-29 14:03:30');

-- --------------------------------------------------------

--
-- Table structure for table `building_floors`
--

CREATE TABLE IF NOT EXISTS `building_floors` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `building_object_id` int(11) NOT NULL,
  `floor_code_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `building_floors`
--

INSERT INTO `building_floors` (`id`, `building_object_id`, `floor_code_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(2, 2, 3, '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(3, 2, 5, '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(4, 2, 7, '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(5, 2, 9, '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(6, 3, 1, '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(7, 3, 3, '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(8, 3, 5, '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(9, 3, 7, '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(10, 3, 9, '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(11, 3, 11, '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(12, 4, 1, '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(13, 4, 3, '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(14, 4, 5, '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(15, 4, 7, '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(16, 4, 9, '2014-04-10 13:06:08', '2014-04-10 13:06:08');

-- --------------------------------------------------------

--
-- Table structure for table `building_objects`
--

CREATE TABLE IF NOT EXISTS `building_objects` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `xml_id` varchar(255) NOT NULL,
  `job_id` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `building_objects_xml_id_unique` (`xml_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `building_objects`
--

INSERT INTO `building_objects` (`id`, `xml_id`, `job_id`, `description`, `created_at`, `updated_at`) VALUES
(1, 'DOCK C NAKLADOVY', 'PROJEKT-0003/03', 'DOCK C NAKLADOVY', '2014-04-10 13:06:07', '2014-04-10 13:06:07'),
(2, 'DOCK Z1', 'PROJEKT-0003/03', 'DOCK Z1', '2014-04-10 13:06:07', '2014-04-10 13:06:07'),
(3, 'DOCK Z2', 'PROJEKT-0003/03', 'DOCK Z2', '2014-04-10 13:06:07', '2014-04-10 13:06:07'),
(4, 'DOCK Z3', 'PROJEKT-0003/03', 'DOCK Z3', '2014-04-10 13:06:07', '2014-04-10 13:06:07');

-- --------------------------------------------------------

--
-- Table structure for table `floor_codes`
--

CREATE TABLE IF NOT EXISTS `floor_codes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `xml_id` varchar(255) NOT NULL,
  `description_cs` varchar(255) DEFAULT NULL,
  `description_en` varchar(255) DEFAULT NULL,
  `description_ru` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `floor_codes_xml_id_unique` (`xml_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `floor_codes`
--

INSERT INTO `floor_codes` (`id`, `xml_id`, `description_cs`, `description_en`, `description_ru`, `created_at`, `updated_at`) VALUES
(1, '01 NP', 'přízemí', 'ground floor', 'sadasd', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(2, '01/02 NP', 'mezonet 1/2. podlaží', 'mezonet 1/2. podlaží', 'dasdas', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(3, '02 NP', '2.podlaží', '2 floor', 'dasd', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(4, '02/03 NP', 'mezonet 2/3. podlaží', 'duplex 2/3. storey', 'sada', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(5, '03 NP', '3.podlaží', '3rd floor', 'asdas', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(6, '03/04 NP', 'mezonet 3/4. podlaží', 'duplex 3/4. storey', 'asd', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(7, '04 NP', '4.podlaží', '4th floor', 'dd', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(8, '04/05 NP', 'mezonet 4/5. podlaží', 'duplex 4/5. storey', 'sd', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(9, '05 NP', '5.podlaží', '5th floor', 'sda', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(10, '05/06 NP', 'mezonet 5/6. podlaží', 'duplex 5/6. storey', 'dasdas', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(11, '06 NP', '6.podlaží', '6th floor', 'dsadas', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(12, '06/07 NP', 'mezonet 6/7. podlaží', '', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(13, '07 NP', '7.podlaží', '', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(14, '07/08 NP', 'mezonet 7/8. podlaží', '', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(15, '08 NP', '8.podlaží', '', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(16, '08/09 NP', 'mezonet 8/9. podlaží', '', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(17, '09 NP', '9.podlaží', '', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(18, '09/10 NP', 'mezonet 9/10. podlaží', '', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(19, '10 NP', '10.podlaží', '', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(20, '10/11 NP', 'mezonet 10/11. podlaží', '', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(21, '11 NP', '11. podlaží', '', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(22, '11/12 NP', 'mezonet 11/12. podlaží', '', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(23, '12 NP', '12. podlaží', '', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(24, '12/13 NP', 'mezonet 12/13. podlaží', '', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(25, '13 NP', '13. podlaží', '', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(26, '13/14 NP', 'mezonet 13/14. podlaží', '', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(27, '14 NP', '14. podlaží', '', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(28, '14/15 NP', 'mezonet 14/15. podlaží', '', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(29, '15 NP', '15. podlaží', '', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(30, 'NEURCENO', 'bez určení podlaží', '', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(31, 'PP 01', '1.podzemní podlaží', '', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(32, 'PP 02', '2.podzemní podlaží', '', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(33, 'PP 03', '3.podzemní podlaží', '', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(34, 'PP 04', '4.podzemní podlaží', '', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(35, 'PP 05', '5.podzemní podlaží', '', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE IF NOT EXISTS `galleries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `type`, `status`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'post-gallery', 'publish', NULL, NULL, '2014-04-02 11:10:09', '2014-04-02 11:10:09'),
(2, 'post-gallery', 'publish', NULL, NULL, '2014-04-02 11:10:09', '2014-04-02 11:10:09'),
(3, 'post-gallery', 'publish', NULL, NULL, '2014-04-02 11:10:09', '2014-04-02 11:10:09'),
(4, 'post-gallery', 'publish', NULL, NULL, '2014-04-02 11:10:09', '2014-04-02 11:10:09'),
(5, 'post-gallery', 'publish', NULL, NULL, '2014-04-02 12:48:47', '2014-04-02 12:48:47'),
(6, 'post-gallery', 'publish', NULL, NULL, '2014-04-02 13:04:33', '2014-04-02 13:04:33'),
(7, 'post-gallery', 'publish', NULL, NULL, '2014-04-02 13:04:33', '2014-04-02 13:04:33'),
(8, 'post-gallery', 'publish', NULL, NULL, '2014-04-02 13:04:33', '2014-04-02 13:04:33'),
(9, 'post-gallery', 'publish', NULL, NULL, '2014-04-02 16:18:25', '2014-04-02 16:18:25'),
(10, 'post-gallery', 'publish', NULL, NULL, '2014-04-02 16:18:25', '2014-04-02 16:18:25'),
(11, 'post-gallery', 'publish', NULL, NULL, '2014-04-02 16:18:25', '2014-04-02 16:18:25'),
(12, 'post-gallery', 'publish', NULL, NULL, '2014-04-02 16:18:25', '2014-04-02 16:18:25'),
(13, 'post-gallery', 'publish', NULL, NULL, '2014-04-02 16:22:53', '2014-04-02 16:22:53'),
(14, 'post-gallery', 'publish', NULL, NULL, '2014-04-02 16:22:54', '2014-04-02 16:22:54'),
(15, 'post-gallery', 'publish', NULL, NULL, '2014-04-02 16:22:54', '2014-04-02 16:22:54'),
(16, 'post-gallery', 'publish', NULL, NULL, '2014-04-02 16:22:54', '2014-04-02 16:22:54'),
(17, 'post-gallery', 'publish', NULL, NULL, '2014-04-02 16:25:33', '2014-04-02 16:25:33'),
(18, 'post-gallery', 'publish', NULL, NULL, '2014-04-02 16:25:33', '2014-04-02 16:25:33'),
(19, 'post-gallery', 'publish', NULL, NULL, '2014-04-02 16:25:33', '2014-04-02 16:25:33'),
(20, 'post-gallery', 'publish', NULL, NULL, '2014-04-29 14:02:03', '2014-04-29 14:02:03'),
(21, 'post-gallery', 'publish', NULL, NULL, '2014-04-30 16:34:16', '2014-04-30 16:34:16');

-- --------------------------------------------------------

--
-- Table structure for table `galleries_posts`
--

CREATE TABLE IF NOT EXISTS `galleries_posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gallery_id` int(10) unsigned NOT NULL,
  `post_id` int(10) unsigned NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `galleries_posts`
--

INSERT INTO `galleries_posts` (`id`, `gallery_id`, `post_id`, `type`) VALUES
(1, 1, 6, NULL),
(2, 2, 7, NULL),
(3, 3, 8, NULL),
(4, 4, 9, NULL),
(5, 5, 10, NULL),
(6, 6, 12, NULL),
(7, 7, 13, NULL),
(8, 8, 14, NULL),
(9, 9, 20, NULL),
(10, 10, 21, NULL),
(11, 11, 22, NULL),
(12, 12, 23, NULL),
(13, 13, 29, NULL),
(14, 14, 30, NULL),
(15, 15, 31, NULL),
(16, 16, 32, NULL),
(17, 17, 33, ''),
(18, 18, 34, ''),
(19, 19, 35, ''),
(20, 20, 42, NULL),
(21, 21, 43, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `gallery_items`
--

CREATE TABLE IF NOT EXISTS `gallery_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gallery_id` int(10) unsigned NOT NULL,
  `type` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `url` varchar(1000) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `content` text,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=88 ;

--
-- Dumping data for table `gallery_items`
--

INSERT INTO `gallery_items` (`id`, `gallery_id`, `type`, `status`, `url`, `name`, `description`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, 'image', 'publish', 'projektVizual.jpg', NULL, NULL, NULL, '2014-04-02 11:10:09', '2014-04-02 11:10:09'),
(3, 2, 'image', 'publish', 'radim_gallery.jpg', NULL, NULL, NULL, '2014-04-02 11:10:09', '2014-04-02 11:10:09'),
(4, 2, 'image', 'publish', 'naumov_gallery.jpg', NULL, NULL, NULL, '2014-04-02 11:10:09', '2014-04-02 11:10:09'),
(5, 3, 'image', 'publish', 'ian_gallery.jpg', NULL, NULL, NULL, '2014-04-02 11:10:09', '2014-04-02 11:10:09'),
(6, 3, 'image', 'publish', 'chmelar_gallery.jpg', NULL, NULL, NULL, '2014-04-02 11:10:09', '2014-04-02 11:10:09'),
(7, 4, 'image', 'publish', 'bang.jpg', NULL, NULL, NULL, '2014-04-02 11:10:09', '2014-04-02 11:10:09'),
(9, 5, 'image', 'publish', 'MF1.jpg', NULL, NULL, NULL, '2014-04-02 12:48:47', '2014-04-02 12:48:47'),
(10, 5, 'image', 'publish', 'MF.jpg', NULL, NULL, NULL, '2014-04-02 12:48:47', '2014-04-02 12:48:47'),
(23, 9, 'image', 'publish', 'portrait1.jpg', NULL, NULL, NULL, '2014-04-02 16:18:25', '2014-04-02 16:18:25'),
(24, 9, 'image', 'publish', 'portrait2.jpg', NULL, NULL, NULL, '2014-04-02 16:18:25', '2014-04-02 16:18:25'),
(25, 10, 'image', 'publish', 'portrait1.jpg', NULL, NULL, NULL, '2014-04-02 16:18:25', '2014-04-02 16:18:25'),
(26, 10, 'image', 'publish', 'portrait2.jpg', NULL, NULL, NULL, '2014-04-02 16:18:25', '2014-04-02 16:18:25'),
(27, 11, 'image', 'publish', 'portrait1.jpg', NULL, NULL, NULL, '2014-04-02 16:18:25', '2014-04-02 16:18:25'),
(28, 11, 'image', 'publish', 'portrait2.jpg', NULL, NULL, NULL, '2014-04-02 16:18:25', '2014-04-02 16:18:25'),
(29, 12, 'image', 'publish', 'portrait1.jpg', NULL, NULL, NULL, '2014-04-02 16:18:25', '2014-04-02 16:18:25'),
(30, 12, 'image', 'publish', 'portrait2.jpg', NULL, NULL, NULL, '2014-04-02 16:18:25', '2014-04-02 16:18:25'),
(31, 13, 'image', 'publish', 'portrait1.jpg', NULL, NULL, NULL, '2014-04-02 16:22:54', '2014-04-02 16:22:54'),
(32, 13, 'image', 'publish', 'portrait2.jpg', NULL, NULL, NULL, '2014-04-02 16:22:54', '2014-04-02 16:22:54'),
(33, 14, 'image', 'publish', 'portrait1.jpg', NULL, NULL, NULL, '2014-04-02 16:22:54', '2014-04-02 16:22:54'),
(34, 14, 'image', 'publish', 'portrait2.jpg', NULL, NULL, NULL, '2014-04-02 16:22:54', '2014-04-02 16:22:54'),
(35, 15, 'image', 'publish', 'portrait1.jpg', NULL, NULL, NULL, '2014-04-02 16:22:54', '2014-04-02 16:22:54'),
(36, 15, 'image', 'publish', 'portrait2.jpg', NULL, NULL, NULL, '2014-04-02 16:22:54', '2014-04-02 16:22:54'),
(37, 16, 'image', 'publish', 'portrait1.jpg', NULL, NULL, NULL, '2014-04-02 16:22:54', '2014-04-02 16:22:54'),
(38, 16, 'image', 'publish', 'portrait2.jpg', NULL, NULL, NULL, '2014-04-02 16:22:54', '2014-04-02 16:22:54'),
(39, 17, 'image', 'publish', 'news1_gallery.jpg', NULL, NULL, NULL, '2014-04-02 16:25:33', '2014-04-02 16:25:33'),
(44, 18, 'image', 'publish', 'news2_gallery.jpg', NULL, NULL, NULL, '2014-04-02 16:25:33', '2014-04-02 16:25:33'),
(45, 19, 'image', 'publish', 'news3_gallery.jpg', NULL, NULL, NULL, '2014-04-02 16:25:33', '2014-04-02 16:25:33'),
(48, 3, 'image', 'publish', 'brian_gallery.jpg', NULL, NULL, NULL, '2014-04-29 11:53:18', '2014-04-29 11:53:18'),
(49, 2, 'image', 'publish', 'alena_gallery.jpg', NULL, NULL, NULL, '2014-04-29 12:00:01', '2014-04-29 12:00:01'),
(50, 2, 'image', 'publish', 'nina_gallery.jpg', NULL, NULL, NULL, '2014-04-29 12:00:01', '2014-04-29 12:00:01'),
(51, 2, 'image', 'publish', 'eva_gallery.jpg', NULL, NULL, NULL, '2014-04-29 12:00:01', '2014-04-29 12:00:01'),
(52, 2, 'image', 'publish', 'petra_gallery.jpg', NULL, NULL, NULL, '2014-04-29 12:00:01', '2014-04-29 12:00:01'),
(53, 2, 'image', 'publish', 'lubomir_gallery.jpg', NULL, NULL, NULL, '2014-04-29 12:00:01', '2014-04-29 12:00:01'),
(54, 2, 'image', 'publish', 'tomas_gallery.jpg', NULL, NULL, NULL, '2014-04-29 12:01:44', '2014-04-29 12:01:44'),
(55, 2, 'image', 'publish', 'nikita_gallery.jpg', NULL, NULL, NULL, '2014-04-29 12:01:44', '2014-04-29 12:01:44'),
(56, 2, 'image', 'publish', 'vaclav_gallery.jpg', NULL, NULL, NULL, '2014-04-29 12:01:44', '2014-04-29 12:01:44'),
(57, 2, 'image', 'publish', 'egor_gallery.jpg', NULL, NULL, NULL, '2014-04-29 12:01:44', '2014-04-29 12:01:44'),
(58, 4, 'image', 'publish', 'bulb.jpg', NULL, NULL, NULL, '2014-04-29 13:30:52', '2014-04-29 13:30:52'),
(59, 4, 'image', 'publish', 'icontrol.jpg', NULL, NULL, NULL, '2014-04-29 13:30:52', '2014-04-29 13:30:52'),
(60, 4, 'image', 'publish', 'ligne.jpg', NULL, NULL, NULL, '2014-04-29 13:30:52', '2014-04-29 13:30:52'),
(61, 4, 'image', 'publish', 'lutron.jpg', NULL, NULL, NULL, '2014-04-29 13:30:52', '2014-04-29 13:30:52'),
(62, 4, 'image', 'publish', 'wg.jpg', NULL, NULL, NULL, '2014-04-29 13:30:52', '2014-04-29 13:30:52'),
(63, 20, 'image', 'publish', 'news4_gallery.jpg', NULL, NULL, NULL, '2014-04-29 14:04:57', '2014-04-29 14:04:57'),
(64, 8, 'image', 'publish', 'lokalita.jpg', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 8, 'image', 'publish', 'lokalita1.jpg', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 8, 'image', 'publish', 'lokalita2.jpg', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 8, 'image', 'publish', 'lokalita3.jpg', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 8, 'image', 'publish', 'lokalita4.jpg', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 6, 'image', 'publish', 'marina.jpg', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 6, 'image', 'publish', 'marina2.jpg', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 6, 'image', 'publish', 'marina3.jpg', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 6, 'image', 'publish', 'marina4.jpg', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 7, 'image', 'publish', 'residential.jpg', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 7, 'image', 'publish', 'residential2.jpg', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 7, 'image', 'publish', 'residential3.jpg', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 7, 'image', 'publish', 'residential4.jpg', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 7, 'image', 'publish', 'residential5.jpg', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 7, 'image', 'publish', 'residential6.jpg', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 7, 'image', 'publish', 'residential7.jpg', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 7, 'image', 'publish', 'residential8.jpg', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 7, 'image', 'publish', 'residential9.jpg', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 7, 'image', 'publish', 'residential10.jpg', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 7, 'image', 'publish', 'residential11.jpg', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 7, 'image', 'publish', 'residential12.jpg', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 7, 'image', 'publish', 'residential13.jpg', NULL, NULL, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 4, 'image', 'publish', 'poggen.jpg', NULL, NULL, NULL, '2014-04-30 13:27:18', '2014-04-30 13:27:18'),
(87, 21, 'image', 'publish', 'dockpark.jpg', NULL, NULL, NULL, '2014-04-30 16:34:56', '2014-04-30 16:34:56');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(2) NOT NULL,
  `description` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `code`, `description`, `created_at`, `updated_at`) VALUES
(1, 'cs', 'Czech', '2014-04-01 16:08:44', '2014-04-01 16:08:44'),
(2, 'en', 'English', '2014-04-01 16:08:44', '2014-04-01 16:08:44'),
(3, 'ru', 'Russian', '2014-04-01 16:08:44', '2014-04-01 16:08:44');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(100) NOT NULL,
  `postition` varchar(100) NOT NULL DEFAULT '',
  `slug` varchar(250) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `type`, `postition`, `slug`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'main', '', 'desktop', NULL, NULL, '2014-04-02 18:14:29', '2014-04-02 18:14:29'),
(2, 'main', '', 'mobile', NULL, NULL, '2014-04-02 18:14:29', '2014-04-02 18:14:29');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE IF NOT EXISTS `menu_items` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned NOT NULL,
  `language_id` int(11) NOT NULL,
  `label` varchar(250) NOT NULL,
  `order` int(11) NOT NULL,
  `url` varchar(1000) NOT NULL,
  `slug` varchar(250) NOT NULL,
  `css_class` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=62 ;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `language_id`, `label`, `order`, `url`, `slug`, `css_class`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Byty', 1, 'apartments', 'apartments', 'hidden-mobile', '2014-04-02 18:14:29', '2014-04-02 18:14:29'),
(2, 1, 2, 'Apartments', 1, 'apartments', 'apartments', 'hidden-mobile', '2014-04-02 18:14:29', '2014-04-02 18:14:29'),
(3, 1, 3, 'Stanovi', 1, 'apartments', 'apartments', 'hidden-mobile', '2014-04-02 18:14:29', '2014-04-02 18:14:29'),
(4, 1, 1, 'Marina', 2, 'marina', 'marina', NULL, '2014-04-02 18:14:29', '2014-04-02 18:14:29'),
(5, 1, 2, 'Marina', 2, 'marina', 'marina', NULL, '2014-04-02 18:14:29', '2014-04-02 18:14:29'),
(6, 1, 3, 'Marina', 2, 'marina', 'marina', NULL, '2014-04-02 18:14:29', '2014-04-02 18:14:29'),
(7, 1, 1, 'Galerie', 3, 'gallery', 'gallery', NULL, '2014-04-02 18:14:29', '2014-04-02 18:14:29'),
(8, 1, 2, 'Gallery', 3, 'gallery', 'gallery', NULL, '2014-04-02 18:14:29', '2014-04-02 18:14:29'),
(9, 1, 3, 'Gallery', 3, 'gallery', 'gallery', NULL, '2014-04-02 18:14:29', '2014-04-02 18:14:29'),
(10, 1, 1, 'Standardy', 4, 'standards', 'standards', 'hidden-tablet', '2014-04-02 18:14:29', '2014-04-02 18:14:29'),
(11, 1, 2, 'Standards', 4, 'standards', 'standards', 'hidden-tablet', '2014-04-02 18:14:29', '2014-04-02 18:14:29'),
(12, 1, 3, 'Standards', 4, 'standards', 'standards', 'hidden-tablet', '2014-04-02 18:14:29', '2014-04-02 18:14:29'),
(13, 1, 1, 'O Nás', 5, 'about', 'about', NULL, '2014-04-02 18:14:29', '2014-04-02 18:14:29'),
(14, 1, 2, 'About', 5, 'about', 'about', NULL, '2014-04-02 18:14:29', '2014-04-02 18:14:29'),
(15, 1, 3, 'About', 5, 'about', 'about', NULL, '2014-04-02 18:14:29', '2014-04-02 18:14:29'),
(16, 1, 1, 'Lokalita', 6, 'locality', 'locality', 'hidden-mobile', '2014-04-02 18:14:29', '2014-04-02 18:14:29'),
(17, 1, 2, 'Locality', 6, 'locality', 'locality', 'hidden-mobile', '2014-04-02 18:14:29', '2014-04-02 18:14:29'),
(18, 1, 3, 'Locality', 6, 'locality', 'locality', 'hidden-mobile', '2014-04-02 18:14:29', '2014-04-02 18:14:29'),
(19, 1, 1, 'Kontakt', 7, 'contact', 'contact', NULL, '2014-04-02 18:14:29', '2014-04-02 18:14:29'),
(20, 1, 2, 'Contact', 7, 'contact', 'contact', NULL, '2014-04-02 18:14:29', '2014-04-02 18:14:29'),
(21, 1, 3, 'Contact', 7, 'contact', 'contact', NULL, '2014-04-02 18:14:29', '2014-04-02 18:14:29'),
(22, 1, 1, 'Novinky', 8, 'news', 'news', NULL, '2014-04-02 18:14:29', '2014-04-02 18:14:29'),
(23, 1, 2, 'News', 8, 'news', 'news', NULL, '2014-04-02 18:14:29', '2014-04-02 18:14:29'),
(24, 1, 3, 'Vesti', 8, 'news', 'news', NULL, '2014-04-02 18:14:29', '2014-04-02 18:14:29'),
(25, 2, 1, 'Byty', 1, 'apartments/list', 'apartments', NULL, '2014-04-02 18:14:29', '2014-04-02 18:14:29'),
(26, 2, 2, 'Apartments', 1, 'apartments/list', 'apartments', NULL, '2014-04-02 18:14:29', '2014-04-02 18:14:29'),
(27, 2, 3, 'Stanovi', 1, 'apartments/list', 'apartments', NULL, '2014-04-02 18:14:29', '2014-04-02 18:14:29'),
(28, 2, 1, 'Marina', 2, 'marina', 'marina', NULL, '2014-04-02 18:14:29', '2014-04-02 18:14:29'),
(29, 2, 2, 'Marina', 2, 'marina', 'marina', NULL, '2014-04-02 18:14:29', '2014-04-02 18:14:29'),
(30, 2, 3, 'Marina', 2, 'marina', 'marina', NULL, '2014-04-02 18:14:29', '2014-04-02 18:14:29'),
(31, 2, 1, 'Galerie', 3, 'gallery', 'gallery', NULL, '2014-04-02 18:14:29', '2014-04-02 18:14:29'),
(32, 2, 2, 'Gallery', 3, 'gallery', 'gallery', NULL, '2014-04-02 18:14:29', '2014-04-02 18:14:29'),
(33, 2, 3, 'Gallery', 3, 'gallery', 'gallery', NULL, '2014-04-02 18:14:29', '2014-04-02 18:14:29'),
(34, 2, 1, 'O Nás', 5, 'about', 'about', NULL, '2014-04-02 18:14:29', '2014-04-02 18:14:29'),
(35, 2, 2, 'About', 5, 'about', 'about', NULL, '2014-04-02 18:14:29', '2014-04-02 18:14:29'),
(36, 2, 3, 'About', 5, 'about', 'about', NULL, '2014-04-02 18:14:29', '2014-04-02 18:14:29'),
(37, 2, 1, 'Kontakt', 7, 'contact', 'contact', NULL, '2014-04-02 18:14:29', '2014-04-02 18:14:29'),
(38, 2, 2, 'Contact', 7, 'contact', 'contact', NULL, '2014-04-02 18:14:29', '2014-04-02 18:14:29'),
(39, 2, 3, 'Contact', 7, 'contact', 'contact', NULL, '2014-04-02 18:14:29', '2014-04-02 18:14:29'),
(40, 2, 1, 'Novinky', 8, 'news', 'news', NULL, '2014-04-02 18:14:29', '2014-04-02 18:14:29'),
(41, 2, 2, 'News', 8, 'news', 'news', NULL, '2014-04-02 18:14:29', '2014-04-02 18:14:29'),
(42, 2, 3, 'Vesti', 8, 'news', 'news', NULL, '2014-04-02 18:14:29', '2014-04-02 18:14:29'),
(43, 1, 1, 'Financování', 10, 'financing', '', NULL, '2014-04-09 17:00:02', '2014-04-09 17:00:02'),
(44, 1, 2, 'Financing', 10, 'financing', 'financing', NULL, '2014-04-09 17:00:02', '2014-04-09 17:00:02'),
(45, 1, 3, 'Finansiranje', 10, 'financing', 'financing', NULL, '2014-04-09 17:00:02', '2014-04-09 17:00:02'),
(58, 1, 1, 'Byty', 1, 'apartments/list', 'apartments', 'visible-mobile', '2014-04-29 09:59:19', '2014-04-29 09:59:19'),
(59, 1, 2, 'Flats', 1, 'apartments/list', 'apartments', 'visible-mobile', '2014-04-29 09:59:19', '2014-04-29 09:59:19'),
(60, 1, 3, 'Stanovi', 1, 'apartments/list', 'apartments', 'visible-mobile', '2014-04-29 09:59:19', '2014-04-29 09:59:19'),
(61, 1, 1, 'Dock Park', 2, 'dockpark', '', NULL, '2014-04-30 16:37:15', '2014-04-30 16:37:15');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_01_27_210054_create_xml_tables', 1),
('2014_03_31_111823_create_posts_tables', 1),
('2014_03_31_114615_create_langauage_table', 1),
('2014_04_01_105244_create_gallery_tables', 1),
('2014_04_02_114219_create_attachments_tables', 2),
('2014_04_02_184052_create_menu_tables', 3),
('2014_04_10_174019_alter_menu_items_table', 4),
('2014_04_29_142725_seed_galleryitems', 5),
('2014_04_29_150144_seed_galleryitems_marina', 6),
('2014_04_29_163849_seed_galleryitems_residental', 7);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `type` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `view` varchar(250) NOT NULL DEFAULT 'page',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `parent_id`, `type`, `status`, `created_at`, `updated_at`, `view`) VALUES
(1, NULL, 'page', 'publish', '2014-04-02 11:10:09', '2014-04-02 11:10:09', 'navigationPage'),
(2, 1, 'page', 'publish', '2014-04-02 11:10:09', '2014-04-02 11:10:09', 'apartments'),
(3, 1, 'page', 'publish', '2014-04-02 11:10:09', '2014-04-02 11:10:09', 'list'),
(4, 1, 'page', 'publish', '2014-04-02 11:10:09', '2014-04-02 11:10:09', 'link'),
(5, NULL, 'page', 'publish', '2014-04-02 11:10:09', '2014-04-02 11:10:09', 'navigationPage'),
(6, 5, 'page', 'publish', '2014-04-02 11:10:09', '2014-04-02 11:10:09', 'page'),
(7, 5, 'page', 'publish', '2014-04-02 11:10:09', '2014-04-02 11:10:09', 'page'),
(8, 5, 'page', 'publish', '2014-04-02 11:10:09', '2014-04-02 11:10:09', 'page'),
(9, 5, 'page', 'publish', '2014-04-02 11:10:09', '2014-04-02 11:10:09', 'page'),
(10, NULL, 'page', 'publish', '2014-04-02 12:48:47', '2014-04-02 12:48:47', 'page'),
(11, NULL, 'page', 'publish', '2014-04-02 13:04:33', '2014-04-02 13:04:33', 'navigationPage'),
(12, 11, 'gallery-page', 'publish', '2014-04-02 13:04:33', '2014-04-02 13:04:33', 'gallery'),
(13, 11, 'gallery-page', 'publish', '2014-04-02 13:04:33', '2014-04-02 13:04:33', 'gallery'),
(14, 11, 'gallery-page', 'publish', '2014-04-02 13:04:33', '2014-04-02 13:04:33', 'gallery'),
(33, NULL, 'post', 'publish', '2014-01-02 17:25:33', '2014-04-02 16:25:33', 'page'),
(34, NULL, 'post', 'publish', '2014-02-10 17:25:33', '2014-04-02 16:25:33', 'page'),
(35, NULL, 'post', 'publish', '2014-03-12 17:25:33', '2014-04-02 16:25:33', 'page'),
(36, NULL, 'page', 'publish', '2014-04-08 11:07:22', '2014-04-08 11:07:22', 'news'),
(37, NULL, 'page', 'publish', '2014-04-08 15:14:39', '2014-04-08 15:14:39', 'contact'),
(38, NULL, 'page', 'publish', '2014-04-08 15:14:39', '2014-04-08 15:14:39', 'locality'),
(39, NULL, 'page', 'publish', '2014-04-08 15:20:36', '2014-04-08 15:20:36', 'standards'),
(40, NULL, 'page', 'publish', '2014-04-08 15:28:53', '2014-04-08 15:28:53', 'home'),
(41, NULL, 'page', 'publish', '2014-04-09 11:53:01', '2014-04-09 11:53:01', 'financing'),
(42, 36, 'post', 'publish', '2014-04-14 13:55:26', '2014-04-29 13:55:26', 'page'),
(43, NULL, 'page', 'publish', '2014-04-30 16:25:23', '2014-04-30 16:25:23', 'page');

-- --------------------------------------------------------

--
-- Table structure for table `post_contents`
--

CREATE TABLE IF NOT EXISTS `post_contents` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `url` varchar(1000) NOT NULL,
  `name` varchar(250) NOT NULL,
  `type` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `title` varchar(250) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=126 ;

--
-- Dumping data for table `post_contents`
--

INSERT INTO `post_contents` (`id`, `post_id`, `language_id`, `user_id`, `url`, `name`, `type`, `status`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'cs/apartments', 'apartments', 'page', 'publish', 'Apartments', '', '2014-04-02 11:10:09', '2014-04-02 11:10:09'),
(2, 1, 2, 1, 'en/apartments', 'apartments', 'page', 'publish', 'Apartments', '', '2014-04-02 11:10:09', '2014-04-02 11:10:09'),
(3, 1, 3, 1, 'ru/apartments', 'apartments', 'page', 'publish', 'Apartments', '', '2014-04-02 11:10:09', '2014-04-02 11:10:09'),
(4, 2, 1, 1, 'cs/apartments/navigator', 'navigator', 'page', 'publish', 'Navigátor', '', '2014-04-02 11:10:09', '2014-04-02 11:10:09'),
(5, 2, 2, 1, 'en/apartments/navigator', 'navigator', 'page', 'publish', 'Navigator', '', '2014-04-02 11:10:09', '2014-04-02 11:10:09'),
(6, 2, 3, 1, 'ru/apartments/navigator', 'navigator', 'page', 'publish', 'Navigator', '', '2014-04-02 11:10:09', '2014-04-02 11:10:09'),
(7, 3, 1, 1, 'cs/apartments/list', 'list', 'page', 'publish', 'Ceník', '', '2014-04-02 11:10:09', '2014-04-02 11:10:09'),
(8, 3, 2, 1, 'en/apartments/list', 'list', 'page', 'publish', 'Apartments List', '', '2014-04-02 11:10:09', '2014-04-02 11:10:09'),
(9, 3, 3, 1, 'ru/apartments/list', 'list', 'page', 'publish', 'Lista stanova', '', '2014-04-02 11:10:09', '2014-04-02 11:10:09'),
(10, 4, 1, 1, 'http://dock.cz/cs/page-byty.html', 'phase1', 'page', 'publish', 'Etapa 1', '', '2014-04-02 11:10:09', '2014-04-02 11:10:09'),
(11, 4, 2, 1, 'http://dock.cz/cs/page-byty.html', 'phase1', 'page', 'publish', 'Phase 1', '', '2014-04-02 11:10:09', '2014-04-02 11:10:09'),
(12, 4, 3, 1, 'http://dock.cz/cs/page-byty.html', 'phase1', 'page', 'publish', 'Faza 1', '', '2014-04-02 11:10:09', '2014-04-02 11:10:09'),
(13, 5, 1, 1, 'en/about', 'about', 'page', 'publish', 'About', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque congue, magna sit amet rhoncus fermentum, justo sem faucibus tellus, vitae ultrices ipsum tortor ut ante. Vestibulum ultricies elementum lectus non vestibulum. Duis sit amet ipsum nec metus aliquet viverra at ut orci. Duis semper libero tempor sem convallis ornare. Sed sit amet mi quis nisl tristique tristique sit amet sit amet augue. Nam eu est in libero fermentum placerat ut quis metus. Maecenas ac est sed massa blandit tincidunt.', '2014-04-02 11:10:09', '2014-04-02 11:10:09'),
(14, 5, 2, 1, 'cs/about', 'about', 'page', 'publish', 'About', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque congue, magna sit amet rhoncus fermentum, justo sem faucibus tellus, vitae ultrices ipsum tortor ut ante. Vestibulum ultricies elementum lectus non vestibulum. Duis sit amet ipsum nec metus aliquet viverra at ut orci. Duis semper libero tempor sem convallis ornare. Sed sit amet mi quis nisl tristique tristique sit amet sit amet augue. Nam eu est in libero fermentum placerat ut quis metus. Maecenas ac est sed massa blandit tincidunt.', '2014-04-02 11:10:09', '2014-04-02 11:10:09'),
(15, 5, 3, 1, 'ru/about', 'about', 'page', 'publish', 'About', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque congue, magna sit amet rhoncus fermentum, justo sem faucibus tellus, vitae ultrices ipsum tortor ut ante. Vestibulum ultricies elementum lectus non vestibulum. Duis sit amet ipsum nec metus aliquet viverra at ut orci. Duis semper libero tempor sem convallis ornare. Sed sit amet mi quis nisl tristique tristique sit amet sit amet augue. Nam eu est in libero fermentum placerat ut quis metus. Maecenas ac est sed massa blandit tincidunt.', '2014-04-02 11:10:09', '2014-04-02 11:10:09'),
(16, 6, 1, 1, 'cs/about/project', 'project', 'page', 'publish', 'Projekt', '<h2>Komplex domů tvoří soukromý prostor, který nabízí vše pro moderní způsob života.</h2>\r\n<p>\r\nV rámci Dock B, River Watch vznikají tři nízkopodlažní bytové domy s celkem 65 byty, které jsou dostupné v dispozicích od 1+kk až po luxusní penthousy.\r\n<br/><br/>\r\nVšechny bytové jednotky charakterizují velkolepé prosklené plochy, francouzská okna, expresivní vstupní haly, světelné podhledy, výběr kvalitních povrchových materiálů a luxusní vybavení interiérů reflektující individuální potřeby každého majitele.\r\n<br/><br/>\r\nVšechny byty zároveň disponují balkonem, terasou či předzahrádkou s jedinečným výhledem na vodní hladinu nebo zeleň.\r\n<br/><br/>\r\nRezidence DOCK nabízí i dostatek podzemních parkovacích stání, kolárnu a mycí box, stejně jako centrální recepci s obsluhou 24 hodin denně.\r\n</p>', '2014-04-30 16:22:16', '2014-04-30 16:22:16'),
(17, 6, 2, 1, 'en/about/project', 'project', 'page', 'publish', 'Project', '<p>The whole text, as an information bearer, has been simplified, especially when edited its structure and stylistics.\r\n<br/>\r\nIt is necessary to “batch” the text carefully, nobody is interested in large text areas.  \r\n<br/>\r\nSimple and clear paragraphs and easy structuring of particular information segments – that is the way to keep somebody''s attention. Strong headlines developing some feelings. Image bullet points, occasional BOLD. We want a reader to VISUALIZE it. \r\n<br/>\r\nEach “paragraph“ will be introduced with an image introduction. They are basically key words, summarizing the “message” of individual chapters. \r\n<br/>\r\nThe information is now not doubled, or unnecessarily repeated. The whole text has slimmed down under retaining the original content as well as uniform style.  \r\n<br/>\r\nI maintained original “Chapter” titles (LOCATION, RESIDENCE etc.) and down below it in the brackets, you can see a version which is created in the so called DOCK concept. Both ways are possible, maybe the “DOCKonalý developer“ (Perfect Developer) sounds a little bit exxagerated.</p>', '2014-04-02 11:10:09', '2014-04-02 11:10:09'),
(18, 6, 3, 1, 'ru/about/project', 'project', 'page', 'publish', 'Пројекат', '<p>Ово је нешто написано на српском или руском...</p>', '2014-04-07 17:37:47', '2014-04-07 17:37:47'),
(19, 7, 1, 1, 'cs/about/developer', 'developer', 'page', 'publish', 'Developer', '<h2>Čistota zpracování, funkce<br/>i estetika.\r\n						Cit pro design<br/>a vytříbený styl.\r\n						Dobrý vkus.\r\n						Trvalá hodnota nepodléhající módním vlnám.\r\n						Komfort<br/>a pohodlí.\r\n						nadstandardní kvalita materiálů.</h2>\r\n\r\n<p>To vše charakterizuje realizace skupiny CRESTYL, developera a investora projektu DOCK.\r\nNa českém realitním trhu působí už od roku 1996 a patří mezi přední developery s širokým portfoliem rezidenčních a komerčních projektů. \r\n\r\n<br/><br/>\r\n“Pokročilý a nadčasový design je součástí všech našich projektů. Dáváme přednost designově čistému zpracování, \r\nkteré zároveň nepůsobí chladným a neosobním dojmem.”\r\n<br/>\r\n<span class=''block tRight''>\r\nRadim Sayed<br/>\r\nobchodní ředitel\r\n</span>\r\n</p>', '2014-04-30 16:17:52', '2014-04-30 16:17:52'),
(20, 7, 2, 1, 'en/about/developer', 'developer', 'page', 'publish', 'Developer', '<h2>Perfect work, functions and aesthetics.\r\n						Sophisticated sense of style and design. \r\n						Good taste.\r\n						Lasting value that will never fall out of fashion. \r\n						Comfort and convenience.\r\n						And premium quality materials.</h2>\r\n						<p>That all is what defines developments of the CRESTYL Group, the developer and investor of the DOCK Project.<br/>\r\nOperating on the Czech market since 1996, the CRESTYL Group belongs among leading developers having a broad portfolio of residential and commercial projects. </p>', '2014-04-02 11:10:09', '2014-04-02 11:10:09'),
(21, 7, 3, 1, 'ru/about/developer', 'developer', 'page', 'publish', 'Developer', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque congue, magna sit amet rhoncus fermentum, justo sem faucibus tellus, vitae ultrices ipsum tortor ut ante. Vestibulum ultricies elementum lectus non vestibulum. Duis sit amet ipsum nec metus aliquet viverra at ut orci. Duis semper libero tempor sem convallis ornare. Sed sit amet mi quis nisl tristique tristique sit amet sit amet augue. Nam eu est in libero fermentum placerat ut quis metus. Maecenas ac est sed massa blandit tincidunt.', '2014-04-02 11:10:09', '2014-04-02 11:10:09'),
(22, 8, 1, 1, 'cs/about/architects', 'architects', 'page', 'publish', 'Architekti', '<h2>Ian Bryan Architects</h2>\r\n<p>je prestižní architektonický ateliér se sídlem v Praze, který v roce 1997 založil Ian Bryan – architekt registrovaný ve Velké Británii a autorizovaný architekt České komory architektů. Ve svých realizacích dokazuje, že design není (nesmí být) jen efektní okázalostí, ale musí v sobě kromě estetických nároků spojovat funkci i cenovou efektivitu. Díky dlouholetým mezinárodním zkušenostem s komerčními i rezidenčními projekty, myslí Ian Bryan Architects na design stejně jako na potřeby klientů, kteří „v něm“ budou bydlet.</p>\r\n<h2>Chmelař architekti</h2>\r\n<p>je architektonické studio působící na českém trhu již od roku 1998, které stojí za návrhem a zpracováním interiérů v jednotlivých domech projektu DOCK. David Chmelař dlouhodobě spolupracuje se skupinou Crestyl na pozici Design supervisor a autorsky se již spolupodílel na realizaci úspěšného projektu DOCK A. Interiéry z dílny studia Chmelař architekti jsou moderní, osobní, pohodlné, z kvalitních materiálů – a přitom splňující nejvyšší estetické nároky.</p>', '2014-04-29 11:46:33', '2014-04-29 11:46:33'),
(23, 8, 2, 1, 'en/about/architects', 'architects', 'page', 'publish', 'Architects', '<h2>IBA, s.r.o. (Ian Bryan Architects) </h2>\r\n<p>is a prestigious architectonic studio seated in Prague which was established by Ian Bryan in 1997. Ian Bryan is an architect registered in Great Britain and a certified architect of the Czech Chamber of Architects. Realizations of the studio prove that design is not (must not be) only opulence for effect but must combine aesthetic requirements, function and price efficiency. Thanks to longterm international experience with commercial and residential projects, Ian Bryan Architects meets not only design requirements but also needs of clients who will live in the “residence”.  </p>\r\n<h2>Chmelař architekti</h2>\r\n<p>is an architectonic studio operating on the Czech market since 1998 which designed and executed the interiors in particular buildings of the DOCK Project. David Chmelař has been cooperating with the CRESTYL Group for a long time as a Design Supervisor and has co-authored the successful realization of the DOCK A Project. Interiors designed by Chmelař architekti are modern, distinctive, comfortable, made of materials of high quality – and at the same time meeting the highest aesthetic requirements. </p>', '2014-04-03 20:21:25', '2014-04-03 20:21:25'),
(24, 8, 3, 1, 'ru/about/architects', 'architects', 'page', 'publish', 'Arhitekti', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque congue, magna sit amet rhoncus fermentum, justo sem faucibus tellus, vitae ultrices ipsum tortor ut ante. Vestibulum ultricies elementum lectus non vestibulum. Duis sit amet ipsum nec metus aliquet viverra at ut orci. Duis semper libero tempor sem convallis ornare. Sed sit amet mi quis nisl tristique tristique sit amet sit amet augue. Nam eu est in libero fermentum placerat ut quis metus. Maecenas ac est sed massa blandit tincidunt.', '2014-04-02 11:10:09', '2014-04-02 11:10:09'),
(25, 9, 1, 1, 'cs/about/partners', 'partners', 'page', 'publish', 'Partneři', '<br/>\r\n\r\n<h4><a target="_blank" href=''http://www.ligne-roset.cz/home.php''>Ligne Roset</a></h4>\r\n<p>Značka Ligne Roset je symbolem moderního životního stylu a podepsal se na ní rukopis nejvýznačnějších světových talentů designu své doby. Klienti v projektu DOCK mohou využít partnerské nabídky bytového vybavení včetně interiérového návrhu, jako služby na klíč. Klient projektu DOCK získává jako bonus návrh interiéru svého bytu od designérů společnosti Ligne Roset.</p>\r\n\r\n<h4><a target="_blank" href=''http://www.poggenpohl.cz/''>Poggenpohl</a></h4>\r\n<p>Poggenpohl je synonymem pro kuchyně té nejvyšší estetické úrovně a kvality zpracování. Klienti DOCK mohou využít partnerské nabídky a pořídit si tuto jedinečnou kuchyň do svého nového bytu.</p>\r\n\r\n\r\n<h4><a target="_blank" href=''http://www.bulb.cz/''>Bulb</a></h4>\r\n<p>Bulb se specializuje na prodej a veškerý servis související s designovým osvětlením a nábytkem. Zastupuje nejlepší a nejoriginálnější světové výrobce a navržené interiéry, exteriéry, bytové i komerční prostory mají myšlenku, nadhled a vášeň. Klienti DOCK tak mohou mít ve svých bytech osvětlení této značky za zvýhodněné ceny.</p>\r\n\r\n\r\n<h4><a target="_blank" href=''http://www.kd-elektronika.cz/bang-olufsen''>Bang&Olufsen</a></h4>\r\n<p>Bang & Olufsen, to je dánská společnost proslavená svým nadčasovým designem, dokonalým řemeslným zpracováním a moderní technologií. Je to také značka, která prostřednictvím inteligentní technologie svých výrobků vnáší uživatelům komfort do života. Klienti DOCK mohou využít zvýhodněné nabídky na pořízení těchto výrobků.</p>', '2014-04-29 20:22:40', '2014-04-29 20:22:40'),
(26, 9, 2, 1, 'en/about/partners', 'partners', 'page', 'publish', 'Partners', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque congue, magna sit amet rhoncus fermentum, justo sem faucibus tellus, vitae ultrices ipsum tortor ut ante. Vestibulum ultricies elementum lectus non vestibulum. Duis sit amet ipsum nec metus aliquet viverra at ut orci. Duis semper libero tempor sem convallis ornare. Sed sit amet mi quis nisl tristique tristique sit amet sit amet augue. Nam eu est in libero fermentum placerat ut quis metus. Maecenas ac est sed massa blandit tincidunt.', '2014-04-02 11:10:09', '2014-04-02 11:10:09'),
(27, 9, 3, 1, 'ru/about/partners', 'partners', 'page', 'publish', 'Partneri', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque congue, magna sit amet rhoncus fermentum, justo sem faucibus tellus, vitae ultrices ipsum tortor ut ante. Vestibulum ultricies elementum lectus non vestibulum. Duis sit amet ipsum nec metus aliquet viverra at ut orci. Duis semper libero tempor sem convallis ornare. Sed sit amet mi quis nisl tristique tristique sit amet sit amet augue. Nam eu est in libero fermentum placerat ut quis metus. Maecenas ac est sed massa blandit tincidunt.', '2014-04-02 11:10:09', '2014-04-02 11:10:09'),
(28, 10, 1, 1, 'cs/marina', 'marina', 'page', 'publish', 'Marina', '<h2>Zaparkujte svou loď přímo před domem. Nebo na ní vyražte<br/>na večeři do centra metropole. Nebo kamkoliv jinam.</h2>\r\n						<p>Projekt DOCK, to není jen luxusní bydlení s výhledem na vodní hladinu, ale také možnost skutečně využít veškerých výhod, které bydlení u vody nabízí. Součástí rezidence je přístavní molo, kde je možné kotvit lodě až do délky 12 metrů. Jde o zcela plnohodnotnou „marinu“, vybavenou standardními službami: tankování, připojení na vodu a elektřinu, správa lodě včetně mytí a servisu. Samozřejmostí je protipovodňová ochrana před stoletou vodou, nonstop ostraha a bezdrátový internet v celém přístavu.<br/>\r\nProvoz a správu mariny zajišťuje společnost <a href=''http://www.yachtprofessional.cz'' class=''darkT'' target="_blank">YACHT Professional</a>, jejíž prodejna s jachtařským oblečením a vybavením je součástí mariny.\r\n</p>', '2014-04-30 16:21:08', '2014-04-30 16:21:08'),
(29, 10, 2, 1, 'en/marina', 'marina', 'page', 'publish', 'Marina', '<h2>Park your boat directly in front of the house. Or head out on boat for downtown dinner. Or anywhere else. </h2>\n						<p>The DOCK Project is not only luxurious living with an overview of the river but also an opportunity to really enjoy all the benefits offered by the living at the river. The residence includes a pier for anchoring the boats up to the length of 12 metres. This is a completely full "marine", equipped with the standard services: refueling, access to water and electricity, management of ships, including cleaning and servicing.<br/>\nFlood protective measures against hundred-year water, round the clock security and wireless internet throughout the harbor are matters of course.</p>', '2014-04-02 12:48:47', '2014-04-02 12:48:47'),
(30, 10, 3, 1, 'ru/marina', 'marina', 'page', 'publish', 'Marina', 'Super strava ruski', '2014-04-02 12:48:47', '2014-04-02 12:48:47'),
(31, 11, 1, 1, 'cs/gallery', 'gallery', 'page', 'publish', 'Gallery', '', '2014-04-02 13:04:33', '2014-04-02 13:04:33'),
(32, 11, 2, 1, 'en/gallery', 'gallery', 'page', 'publish', 'Gallery', '', '2014-04-02 13:04:33', '2014-04-02 13:04:33'),
(33, 11, 3, 1, 'ru/gallery', 'gallery', 'page', 'publish', 'Gallery', '', '2014-04-02 13:04:33', '2014-04-02 13:04:33'),
(34, 12, 1, 1, 'cs/gallery/marina', 'marina', 'gallery-page', 'publish', 'Marina', '', '2014-04-02 13:04:33', '2014-04-02 13:04:33'),
(35, 12, 2, 1, 'en/gallery/marina', 'marina', 'gallery-page', 'publish', 'Marina', '', '2014-04-02 13:04:33', '2014-04-02 13:04:33'),
(36, 12, 3, 1, 'ru/gallery/marina', 'marina', 'gallery-page', 'publish', 'Marina', '', '2014-04-02 13:04:33', '2014-04-02 13:04:33'),
(37, 13, 1, 1, 'cs/gallery/residence', 'residence', 'gallery-page', 'publish', 'Rezidence', '', '2014-04-02 13:04:33', '2014-04-02 13:04:33'),
(38, 13, 2, 1, 'en/gallery/residence', 'residence', 'gallery-page', 'publish', 'Residence', '', '2014-04-02 13:04:33', '2014-04-02 13:04:33'),
(39, 13, 3, 1, 'ru/gallery/residence', 'residence', 'gallery-page', 'publish', 'Residence', '', '2014-04-02 13:04:33', '2014-04-02 13:04:33'),
(40, 14, 1, 1, 'cs/gallery/locality', 'locality', 'gallery-page', 'publish', 'Lokalita', '', '2014-04-02 13:04:33', '2014-04-02 13:04:33'),
(41, 14, 2, 1, 'en/gallery/locality', 'locality', 'gallery-page', 'publish', 'Locality', '', '2014-04-02 13:04:33', '2014-04-02 13:04:33'),
(42, 14, 3, 1, 'ru/gallery/locality', 'locality', 'gallery-page', 'publish', 'Locality', '', '2014-04-02 13:04:33', '2014-04-02 13:04:33'),
(97, 33, 1, 1, 'cs/news/vystavba-druhe-etapy-rezidencniho-projektu-dock', 'vystavba-druhe-etapy-rezidencniho-projektu-dock', 'post', 'publish', 'Výstavba druhé etapy rezidenčního projektu DOCK', '<p>Výstavba druhé etapy rezidenčního projektu DOCK, která nese název River Watch/B, byla zahájena na počátku letošního roku. V jejím rámci vznikne 65 bytů ve třech nízkopodlažních bytových domech. Veškeré byty budou vybaveny balkónem, terasou či předzahrádkou. Druhá etapa nabídne byty o dispozicích od 1+kk až po luxusní penthousy se skutečně velkorysými terasami a výhledem na řeku.</p>', '2014-01-02 12:13:25', '2014-04-29 11:13:25'),
(98, 33, 2, 1, 'en/news/lorem-ipsum', 'lorem-ipsum', 'post', 'publish', 'Lorem ipsum', '			<p>The DOCK Project is not only luxurious living with an overview of the river but also an opportunity to really enjoy all the benefits offered by the living at the river. The residence includes a pier for anchoring the boats up to the length of 12 metres. This is a completely full "marine", equipped with the standard services: refueling, access to water and electricity, management of ships, including cleaning and servicing.<br/>\nFlood protective measures against hundred-year water, round the clock security and wireless internet throughout the harbor are matters of course.</p>', '2014-04-02 16:25:33', '2014-04-02 16:25:33'),
(99, 33, 3, 1, 'ru/news/lorem-ipsum', 'lorem-ipsum', 'post', 'publish', 'Lorem ipsum', '			<p>The DOCK Project is not only luxurious living with an overview of the river but also an opportunity to really enjoy all the benefits offered by the living at the river. The residence includes a pier for anchoring the boats up to the length of 12 metres. This is a completely full "marine", equipped with the standard services: refueling, access to water and electricity, management of ships, including cleaning and servicing.<br/>\nFlood protective measures against hundred-year water, round the clock security and wireless internet throughout the harbor are matters of course.</p>', '2014-04-02 16:25:33', '2014-04-02 16:25:33'),
(100, 34, 1, 1, 'cs/news/ocisteni-ramen-reky-v-sousedstvi-rezidence-dock', 'ocisteni-ramen-reky-v-sousedstvi-rezidence-dock', 'post', 'publish', 'Očištění ramen řeky v sousedství rezidence dock', '<p>Vážení klienti, rádi bychom Vás informovali, že v současné době probíhá čištění slepých ramen řeky v sousedství rezidence DOCK. Čištění, které zajistí ještě lepší splavnost řeky a příjemnější prostředí, bude trvat přibližně do konce června t.r. Čištění probíhá ve všední dny v době od 7 do 18 hodin. Čištění řeky jsme se snažili naplánovat tak, abychom minimalizovali dopad na pohodlí všech rezidentů. Věříme, že čistější řeku pro relaxaci i vodní plavby jistě uvítáte.</p>', '2014-04-30 16:18:56', '2014-04-30 16:18:56'),
(101, 34, 2, 1, 'en/news/vestibulum-elementum-sapien-at-risus', 'vestibulum-elementum-sapien-at-risus', 'post', 'publish', 'Vestibulum elementum sapien at risus', '<h2 class="fittext noMargin" data-fit="4" data-min="10" data-max="100">03</h2>\r\n    					<p class="date fittext" data-fit="22" data-min="10" data-max="100">10-01-2014</p>\r\n    					<h1 class="noMargin uppercase boldFont">Interier Headline</h2>\r\n				        <p class="noMargin">\r\n        					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce auctor, arcu sit amet facilisis consectetur, ligula lacus adipiscing metus, a dignissim risus mi sed velit. Vivamus elementum, ipsum eget fringilla commodo, eros dui lobortis erat, sit amet accumsan metus dolor eu enim. Donec mattis, risus at suscipit volutpat, diam massa ornare neque, ac ultrices dolor dolor vel leo. In eu blandit odio. Vestibulum elementum sapien at risus rutrum, eu egestas arcu fermentum. Fusce vestibulum dui vitae nunc ultrices, at dapibus mi condimentum. Proin placerat lorem eget pulvinar venenatis. Etiam varius magna eget dui scelerisque, nec posuere metus tincidunt. Phasellus imperdiet ultrices ante et dictum. Curabitur nec metus velit. Fusce nec augue tortor. Ut in est nibh.Vestibulum elementum sapien at risus rutrum, eu egestas arcu fermentum. Fusce vestibulum dui vitae nunc ultrices, at dapibus mi condimentum. Proin placerat lorem eget pulvinar venenatis. Etiam varius magna eget dui scelerisque, nec posuere metus tincidunt. Phasellus imperdiet ultrices ante et dictum. Curabitur nec metus velit. Fusce nec augue tortor. Ut in est nibh.\r\n        				</p>', '2014-04-02 16:25:33', '2014-04-02 16:25:33'),
(102, 34, 3, 1, 'ru/news/vestibulum-elementum-sapien-at-risus', 'vestibulum-elementum-sapien-at-risus', 'post', 'publish', 'Vestibulum elementum sapien at risus', '<h2 class="fittext noMargin" data-fit="4" data-min="10" data-max="100">03</h2>\r\n    					<p class="date fittext" data-fit="22" data-min="10" data-max="100">10-01-2014</p>\r\n    					<h1 class="noMargin uppercase boldFont">Interier Headline</h2>\r\n				        <p class="noMargin">\r\n        					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce auctor, arcu sit amet facilisis consectetur, ligula lacus adipiscing metus, a dignissim risus mi sed velit. Vivamus elementum, ipsum eget fringilla commodo, eros dui lobortis erat, sit amet accumsan metus dolor eu enim. Donec mattis, risus at suscipit volutpat, diam massa ornare neque, ac ultrices dolor dolor vel leo. In eu blandit odio. Vestibulum elementum sapien at risus rutrum, eu egestas arcu fermentum. Fusce vestibulum dui vitae nunc ultrices, at dapibus mi condimentum. Proin placerat lorem eget pulvinar venenatis. Etiam varius magna eget dui scelerisque, nec posuere metus tincidunt. Phasellus imperdiet ultrices ante et dictum. Curabitur nec metus velit. Fusce nec augue tortor. Ut in est nibh.Vestibulum elementum sapien at risus rutrum, eu egestas arcu fermentum. Fusce vestibulum dui vitae nunc ultrices, at dapibus mi condimentum. Proin placerat lorem eget pulvinar venenatis. Etiam varius magna eget dui scelerisque, nec posuere metus tincidunt. Phasellus imperdiet ultrices ante et dictum. Curabitur nec metus velit. Fusce nec augue tortor. Ut in est nibh.\r\n        				</p>', '2014-04-02 16:25:33', '2014-04-02 16:25:33'),
(103, 35, 1, 1, 'cs/news/stavba-rezidence-river-watch', 'stavba-rezidence-river-watch', 'post', 'publish', 'Stavba rezidence river watch', '<p>Stavbě rezidence River Watch se daří stejně jako jarní přírodě, roste jako z vody. V galerii si můžete prohlédnout aktuální fotografie z výstavby tohoto jedinečného projektu. Dokončení předpokládáme na jaře roku 2015.</p>', '2014-03-12 15:32:34', '2014-04-29 14:32:34'),
(104, 35, 2, 1, 'en/news/etiam-varius-magna-eget-dui-scelerisque-nec-posuere-metus', 'etiam-varius-magna-eget-dui-scelerisque-nec-posuere-metus', 'post', 'publish', 'Etiam varius magna eget dui scelerisque, nec posuere metus', '<h2 class="fittext noMargin" data-fit="4" data-min="10" data-max="100">03</h2>\r\n    					<p class="date fittext" data-fit="22" data-min="10" data-max="100">10-01-2014</p>\r\n    					<h1 class="noMargin uppercase boldFont">Interier Headline</h2>\r\n				        <p class="noMargin">\r\n        					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce auctor, arcu sit amet facilisis consectetur, ligula lacus adipiscing metus, a dignissim risus mi sed velit. Vivamus elementum, ipsum eget fringilla commodo, eros dui lobortis erat, sit amet accumsan metus dolor eu enim. Donec mattis, risus at suscipit volutpat, diam massa ornare neque, ac ultrices dolor dolor vel leo. In eu blandit odio. Vestibulum elementum sapien at risus rutrum, eu egestas arcu fermentum. Fusce vestibulum dui vitae nunc ultrices, at dapibus mi condimentum. Proin placerat lorem eget pulvinar venenatis. Etiam varius magna eget dui scelerisque, nec posuere metus tincidunt. Phasellus imperdiet ultrices ante et dictum. Curabitur nec metus velit. Fusce nec augue tortor. Ut in est nibh.Vestibulum elementum sapien at risus rutrum, eu egestas arcu fermentum. Fusce vestibulum dui vitae nunc ultrices, at dapibus mi condimentum. Proin placerat lorem eget pulvinar venenatis. Etiam varius magna eget dui scelerisque, nec posuere metus tincidunt. Phasellus imperdiet ultrices ante et dictum. Curabitur nec metus velit. Fusce nec augue tortor. Ut in est nibh.\r\n        				</p>', '2014-04-02 16:25:33', '2014-04-02 16:25:33'),
(105, 35, 3, 1, 'ru/news/etiam-varius-magna-eget-dui-scelerisque-nec-posuere-metus', 'etiam-varius-magna-eget-dui-scelerisque-nec-posuere-metus', 'post', 'publish', 'Etiam varius magna eget dui scelerisque, nec posuere metus', '<h2 class="fittext noMargin" data-fit="4" data-min="10" data-max="100">03</h2>\r\n    					<p class="date fittext" data-fit="22" data-min="10" data-max="100">10-01-2014</p>\r\n    					<h1 class="noMargin uppercase boldFont">Interier Headline</h2>\r\n				        <p class="noMargin">\r\n        					Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce auctor, arcu sit amet facilisis consectetur, ligula lacus adipiscing metus, a dignissim risus mi sed velit. Vivamus elementum, ipsum eget fringilla commodo, eros dui lobortis erat, sit amet accumsan metus dolor eu enim. Donec mattis, risus at suscipit volutpat, diam massa ornare neque, ac ultrices dolor dolor vel leo. In eu blandit odio. Vestibulum elementum sapien at risus rutrum, eu egestas arcu fermentum. Fusce vestibulum dui vitae nunc ultrices, at dapibus mi condimentum. Proin placerat lorem eget pulvinar venenatis. Etiam varius magna eget dui scelerisque, nec posuere metus tincidunt. Phasellus imperdiet ultrices ante et dictum. Curabitur nec metus velit. Fusce nec augue tortor. Ut in est nibh.Vestibulum elementum sapien at risus rutrum, eu egestas arcu fermentum. Fusce vestibulum dui vitae nunc ultrices, at dapibus mi condimentum. Proin placerat lorem eget pulvinar venenatis. Etiam varius magna eget dui scelerisque, nec posuere metus tincidunt. Phasellus imperdiet ultrices ante et dictum. Curabitur nec metus velit. Fusce nec augue tortor. Ut in est nibh.\r\n        				</p>', '2014-04-02 16:25:33', '2014-04-02 16:25:33'),
(106, 36, 1, 1, 'cs/news', 'news', '', 'publish', 'Novinky', '', '2014-04-08 11:09:23', '2014-04-08 11:09:23'),
(107, 36, 2, 1, 'en/news', 'news', '', 'publish', 'News', '', '2014-04-08 11:09:23', '2014-04-08 11:09:23'),
(108, 36, 3, 1, 'ru/news', 'news', '', 'publish', 'Vesti', '', '2014-04-08 11:09:23', '2014-04-08 11:09:23'),
(109, 37, 1, 1, 'cs/contact', 'contact', 'page', 'publish', 'Kontakt', '', '2014-04-08 15:17:08', '2014-04-08 15:17:08'),
(110, 37, 2, 1, 'en/contact', 'contact', 'page', 'publish', 'Contact', '', '2014-04-08 15:17:08', '2014-04-08 15:17:08'),
(111, 37, 3, 1, 'ru/contact', 'contact', 'page', 'publish', 'Kontakt', '', '2014-04-08 15:17:08', '2014-04-08 15:17:08'),
(112, 38, 1, 1, 'cs/locality', 'locality', 'page', 'publish', 'Lokalita', '', '2014-04-08 15:18:58', '2014-04-08 15:18:58'),
(113, 38, 2, 1, 'en/locality', 'locality', 'page', 'publish', 'Locality', '', '2014-04-08 15:18:58', '2014-04-08 15:18:58'),
(114, 38, 3, 1, 'ru/locality', 'locality', 'page', 'publish', 'Lokalitet', '', '2014-04-08 15:19:27', '2014-04-08 15:19:27'),
(115, 39, 1, 1, 'cs/standards', 'standards', 'page', 'publish', 'Standarty', '', '2014-04-08 15:22:15', '2014-04-08 15:22:15'),
(116, 39, 2, 1, 'en/standards', 'standards', 'page', 'publish', 'Standards', '', '2014-04-08 15:22:15', '2014-04-08 15:22:15'),
(117, 39, 3, 1, 'ru/standards', 'standards', 'page', 'publish', 'Standardi', '', '2014-04-08 15:22:15', '2014-04-08 15:22:15'),
(118, 40, 1, 1, 'cs/home', 'home', 'page', 'publish', 'Domu', '', '2014-04-08 15:29:43', '2014-04-08 15:29:43'),
(119, 40, 2, 1, 'en/home', 'home', 'page', 'publish', 'Home', '', '2014-04-08 15:29:43', '2014-04-08 15:29:43'),
(120, 40, 3, 1, 'ru/home', 'home', 'page', 'publish', 'Dom', '', '2014-04-08 15:30:16', '2014-04-08 15:30:16'),
(121, 41, 1, 1, 'cs/financing', 'financing', 'page', 'publish', 'Financování', '', '2014-04-09 11:54:43', '2014-04-09 11:54:43'),
(122, 41, 2, 1, 'en/financing', 'financing', 'page', 'publish', 'Financing', '', '2014-04-09 11:54:43', '2014-04-09 11:54:43'),
(123, 41, 3, 1, 'ru/financing', 'financing', 'page', 'publish', 'Finansiranje', '', '2014-04-09 11:54:43', '2014-04-09 11:54:43'),
(124, 42, 1, 1, 'cs/news/dock-park-nove-relaxacne-zabavni-centrum', 'dock-park-nove-relaxacne-zabavni-centrum', 'post', 'publish', 'DOCK PARK. Nové relaxačně-zábavní centrum', '<p>DOCK PARK. Nové relaxačně-zábavní centrum nabídne sportovní halu, jóga centrum, restaurace a kavárny, sauny na vodě a mnohé další. Otevření první části Vás čeká již v září.</p>', '2014-04-14 14:05:58', '2014-04-29 14:05:58'),
(125, 43, 1, 1, 'cs/dockpark', 'dockpark', 'page', 'publish', 'Dock Park', '<h2>\r\nVolnočasové centrum v srdci projektu DOCK.\r\n<br/>\r\nSport, odpočinek, příroda, umění, gastronomie.\r\n<br/>\r\nAtraktivní místo pro konání veřejných a privátních akcí s celoročním využitím.\r\n</h2>\r\n<p>\r\nDOCK Park nacházející se na polostrově ve starém Libeňském přístavu přináší rezidentům projektu DOCK i široké veřejnosti příjemné prostředí pro trávení volného času. Rozsáhlá nabídka gastronomických služeb, sportovních aktivit, možností relaxace a společenských akcí různého zaměření činí z DOCKParku nejkomplexnější volnočasové centrum v Praze.\r\n</p>', '2014-04-30 16:32:09', '2014-04-30 16:32:09');

-- --------------------------------------------------------

--
-- Table structure for table `room_types`
--

CREATE TABLE IF NOT EXISTS `room_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `xml_id` varchar(255) NOT NULL,
  `description_cs` varchar(255) DEFAULT NULL,
  `description_en` varchar(255) DEFAULT NULL,
  `description_ru` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `room_types_xml_id_unique` (`xml_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=84 ;

--
-- Dumping data for table `room_types`
--

INSERT INTO `room_types` (`id`, `xml_id`, `description_cs`, `description_en`, `description_ru`, `created_at`, `updated_at`) VALUES
(1, '01.01', 'Obyvaci pokoj', 'Living rooom', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(2, '01.02', 'Obyvaci pokoj', 'Living rooom', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(3, '01.03', 'Obyvaci pokoj', 'Living rooom', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(4, '01.04', 'Obyvaci pokoj', 'Living rooom', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(5, '01.05', 'Obyvaci pokoj', 'Living rooom', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(6, '02.01', 'Kuchyn', 'Kitchen', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(7, '02.02', 'Kuchyn', 'Kitchen', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(8, '02.03', 'Kuchyn', 'Kitchen', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(9, '03.01', 'Obyvaci pokoj + kuchynsky kout', 'Living Room + Kitchen', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(10, '03.02', 'Obyvaci pokoj + kuchynsky kout', 'Living Room + Kitchen', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(11, '03.03', 'Obyvaci pokoj + kuchynsky kout', 'Living Room + Kitchen', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(12, '04.01', 'Pokoj', 'Room', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(13, '04.02', 'Pokoj', 'Room', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(14, '04.03', 'Pokoj', 'Room', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(15, '04.04', 'Pokoj', 'Room', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(16, '04.05', 'Pokoj', 'Room', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(17, '05.01', 'Loznice', 'Bedroom', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(18, '05.02', 'Loznice', 'Bedroom', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(19, '05.03', 'Loznice', 'Bedroom', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(20, '05.04', 'Loznice', 'Bedroom', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(21, '05.05', 'Loznice', 'Bedroom', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(22, '06.01', 'Koupelna', 'Bathroom', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(23, '06.02', 'Koupelna', 'Bathroom', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(24, '06.03', 'Koupelna', 'Bathroom', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(25, '06.04', 'Koupelna', 'Bathroom', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(26, '06.05', 'Koupelna', 'Bathroom', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(27, '07.01', 'Toaleta', 'Toilet', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(28, '07.02', 'Toaleta', 'Toilet', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(29, '07.03', 'Toaleta', 'Toilet', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(30, '08.01', 'Koupelna + toaleta', 'Bathroom + Toilet', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(31, '08.02', 'Koupelna + toaleta', 'Bathroom + Toilet', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(32, '08.03', 'Koupelna + toaleta', 'Bathroom + Toilet', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(33, '08.04', 'Koupelna + toaleta', 'Bathroom + Toilet', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(34, '08.05', 'Koupelna + toaleta', 'Bathroom + Toilet', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(35, '09.01', 'Pracovna', 'Workroom', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(36, '09.02', 'Pracovna', 'Workroom', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(37, '09.03', 'Pracovna', 'Workroom', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(38, '10.01', 'Predsin', 'Hall', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(39, '10.02', 'Predsin', 'Hall', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(40, '11.01', 'Vstupni hala', 'Foyer', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(41, '11.02', 'Vstupni hala', 'Foyer', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(42, '11.03', 'Vstupni hala', 'Foyer', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(43, '12.01', 'Chodba', 'Hallway\n', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(44, '12.02', 'Chodba', 'Hallway\n', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(45, '12.03', 'Chodba', 'Hallway\n', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(46, '12.04', 'Chodba', 'Hallway\n', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(47, '12.05', 'Chodba', 'Hallway\n', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(48, '13.01', 'Satna', 'Wordrobe', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(49, '13.02', 'Satna', 'Wordrobe', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(50, '13.03', 'Satna', 'Wordrobe', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(51, '14.01', 'Komora', 'Chamber', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(52, '14.02', 'Komora', 'Chamber', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(53, '14.03', 'Komora', 'Chamber', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(54, '15.01', 'Venkovni komora', 'Outdoor chamber', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(55, '15.02', 'Venkovni komora', 'Outdoor chamber', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(56, '15.03', 'Venkovni komora', 'Outdoor chamber', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(57, '16.01', 'Schodiste', 'Stairway', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(58, '16.02', 'Schodiste', 'Stairway', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(59, '16.03', 'Schodiste', 'Stairway', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(60, '17.01', 'Balkon', 'Balcony', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(61, '17.02', 'Balkon', 'Balcony', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(62, '17.03', 'Balkon', 'Balcony', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(63, '18.01', 'Lodzie', 'Loggia', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(64, '18.02', 'Lodzie', 'Loggia', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(65, '18.03', 'Lodzie', 'Loggia', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(66, '19.01', 'Terasa', 'Terasse', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(67, '19.02', 'Terasa', 'Terasse', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(68, '19.03', 'Terasa', 'Terasse', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(69, '20.01', 'Predzahradka', 'Front garden', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(70, '20.02', 'Predzahradka', 'Front garden', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(71, '20.03', 'Predzahradka', 'Front garden', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(72, '21.01', 'Osobni vytah', 'Personal elevator', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(73, '21.02', 'Osobni vytah', 'Personal elevator', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(74, '22.01', 'Spiz', 'Pantry\n', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(75, '22.02', 'Spiz', 'Pantry\n', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(76, '23.01', 'Hala', 'Hall', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(77, '23.02', 'Hala', 'Hall', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(78, '23.03', 'Hala', 'Hall', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(79, '24.01', 'Garaz u rodinneho domu', 'Garage of a family home', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(80, '24.02', 'Garaz u rodinneho domu', 'Garage of a family home', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(81, '24.03', 'Garaz u rodinneho domu', 'Garage of a family home', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(82, '25.01', 'Chodba + schodiště', 'Hallway + stairs', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56'),
(83, '25.02', 'Chodba + schodiště', 'Hallway + stairs', '', '2014-04-01 14:49:56', '2014-04-01 14:49:56');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE IF NOT EXISTS `units` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `xml_id` varchar(255) NOT NULL,
  `job_id` varchar(255) NOT NULL,
  `building_object_id` int(11) NOT NULL,
  `building_object_xml_id` varchar(255) NOT NULL,
  `floor_code_id` int(11) NOT NULL,
  `floor_code_xml_id` varchar(255) NOT NULL,
  `building_floor_id` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `layout_variant` varchar(255) NOT NULL,
  `unit_sales_area` varchar(255) NOT NULL,
  `sales_price` varchar(255) NOT NULL,
  `unit_type_id` int(11) NOT NULL,
  `unit_type_xml_id` varchar(255) NOT NULL,
  `garden_area` varchar(255) NOT NULL,
  `terrace_area` varchar(255) NOT NULL,
  `for_rent` varchar(255) NOT NULL,
  `rented` varchar(255) NOT NULL,
  `rental_price` varchar(255) NOT NULL,
  `note_for_web` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `units_xml_id_unique` (`xml_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=66 ;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `xml_id`, `job_id`, `building_object_id`, `building_object_xml_id`, `floor_code_id`, `floor_code_xml_id`, `building_floor_id`, `status`, `layout_variant`, `unit_sales_area`, `sales_price`, `unit_type_id`, `unit_type_xml_id`, `garden_area`, `terrace_area`, `for_rent`, `rented`, `rental_price`, `note_for_web`, `created_at`, `updated_at`) VALUES
(1, 'DB1.B1.01.01', 'PROJEKT-0003/03', 2, 'DOCK Z1', 1, '01 NP', 1, '3', '2+KK', '61.8', '5500000', 13, 'R-BYT', '80', '8.4', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(2, 'DB1.B1.01.02', 'PROJEKT-0003/03', 2, 'DOCK Z1', 1, '01 NP', 1, '0', '4+KK', '111.2', '12217000', 13, 'R-BYT', '75.1', '7.9', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(3, 'DB1.B1.01.03', 'PROJEKT-0003/03', 2, 'DOCK Z1', 1, '01 NP', 1, '0', '3+KK', '83.6', '9465000', 13, 'R-BYT', '44', '13.9', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(4, 'DB1.B1.01.04', 'PROJEKT-0003/03', 2, 'DOCK Z1', 1, '01 NP', 1, '0', '2+KK', '51.3', '6104000', 13, 'R-BYT', '13.7', '14.6', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(5, 'DB1.B1.02.01', 'PROJEKT-0003/03', 2, 'DOCK Z1', 3, '02 NP', 2, '0', '2+KK', '59.1', '6618000', 13, 'R-BYT', '0', '10.2', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(6, 'DB1.B1.02.02', 'PROJEKT-0003/03', 2, 'DOCK Z1', 3, '02 NP', 2, '1', '4+KK', '113.8', '11735000', 13, 'R-BYT', '0', '7.1', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(7, 'DB1.B1.02.03', 'PROJEKT-0003/03', 2, 'DOCK Z1', 3, '02 NP', 2, '0', '3+KK', '85.2', '9031000', 13, 'R-BYT', '0', '7.4', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(8, 'DB1.B1.02.04', 'PROJEKT-0003/03', 2, 'DOCK Z1', 3, '02 NP', 2, '0', '3+KK', '74.5', '7986000', 13, 'R-BYT', '0', '9.1', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(9, 'DB1.B1.03.01', 'PROJEKT-0003/03', 2, 'DOCK Z1', 5, '03 NP', 3, '0', '2+KK', '58.1', '6649000', 13, 'R-BYT', '0', '8.6', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(10, 'DB1.B1.03.02', 'PROJEKT-0003/03', 2, 'DOCK Z1', 5, '03 NP', 3, '3', '4+KK', '118.7', '10666022.3', 13, 'R-BYT', '0', '7.8', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(11, 'DB1.B1.03.03', 'PROJEKT-0003/03', 2, 'DOCK Z1', 5, '03 NP', 3, '0', '3+KK', '87.3', '9482000', 13, 'R-BYT', '0', '6.1', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(12, 'DB1.B1.03.04', 'PROJEKT-0003/03', 2, 'DOCK Z1', 5, '03 NP', 3, '3', '3+KK', '73.6', '7200000', 13, 'R-BYT', '0', '8.6', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(13, 'DB1.B1.04.01', 'PROJEKT-0003/03', 2, 'DOCK Z1', 7, '04 NP', 4, '3', '2+KK', '59.1', '5676107', 13, 'R-BYT', '0', '8.7', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(14, 'DB1.B1.04.02', 'PROJEKT-0003/03', 2, 'DOCK Z1', 7, '04 NP', 4, '1', '4+KK', '113.5', '12295000', 13, 'R-BYT', '0', '7.1', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(15, 'DB1.B1.04.03', 'PROJEKT-0003/03', 2, 'DOCK Z1', 7, '04 NP', 4, '1', '3+KK', '85', '9462000', 13, 'R-BYT', '0', '7.4', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(16, 'DB1.B1.04.04', 'PROJEKT-0003/03', 2, 'DOCK Z1', 7, '04 NP', 4, '1', '3+KK', '74.6', '8260000', 13, 'R-BYT', '0', '0', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(17, 'DB1.B1.05.01', 'PROJEKT-0003/03', 2, 'DOCK Z1', 9, '05 NP', 5, '0', '5+KK', '244.7', '33950000', 13, 'R-BYT', '0', '63', '0', '0', '0', '[at=holobyt]', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(18, 'DB2.B1.01.01', 'PROJEKT-0003/03', 3, 'DOCK Z2', 1, '01 NP', 6, '3', '3+KK', '96.7', '9575971', 13, 'R-BYT', '68.3', '12.5', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(19, 'DB2.B1.01.02', 'PROJEKT-0003/03', 3, 'DOCK Z2', 1, '01 NP', 6, '3', '3+KK', '95.1', '8675783', 13, 'R-BYT', '54.4', '8.5', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(20, 'DB2.B1.01.03', 'PROJEKT-0003/03', 3, 'DOCK Z2', 1, '01 NP', 6, '0', '1+KK', '42.3', '5164000', 13, 'R-BYT', '11.6', '9.4', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(21, 'DB2.B1.01.04', 'PROJEKT-0003/03', 3, 'DOCK Z2', 1, '01 NP', 6, '0', '4+KK', '118.6', '13885000', 13, 'R-BYT', '126.2', '16', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(22, 'DB2.B1.02.01', 'PROJEKT-0003/03', 3, 'DOCK Z2', 3, '02 NP', 7, '3', '3+KK', '98.2', '10866000', 13, 'R-BYT', '0', '13.5', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(23, 'DB2.B1.02.02', 'PROJEKT-0003/03', 3, 'DOCK Z2', 3, '02 NP', 7, '0', '3+KK', '99.1', '10827000', 13, 'R-BYT', '0', '9.5', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(24, 'DB2.B1.02.03', 'PROJEKT-0003/03', 3, 'DOCK Z2', 3, '02 NP', 7, '0', '2+KK', '64.4', '7194000', 13, 'R-BYT', '0', '4.8', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(25, 'DB2.B1.02.04', 'PROJEKT-0003/03', 3, 'DOCK Z2', 3, '02 NP', 7, '0', '4+KK', '122.3', '13014000', 13, 'R-BYT', '0', '9.1', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(26, 'DB2.B1.03.01', 'PROJEKT-0003/03', 3, 'DOCK Z2', 5, '03 NP', 8, '0', '3+KK', '102.6', '11507000', 13, 'R-BYT', '0', '8.7', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(27, 'DB2.B1.03.02', 'PROJEKT-0003/03', 3, 'DOCK Z2', 5, '03 NP', 8, '0', '3+KK', '99.4', '11181000', 13, 'R-BYT', '0', '9.4', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(28, 'DB2.B1.03.03', 'PROJEKT-0003/03', 3, 'DOCK Z2', 5, '03 NP', 8, '0', '2+KK', '66.5', '7739000', 13, 'R-BYT', '0', '7.5', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(29, 'DB2.B1.03.04', 'PROJEKT-0003/03', 3, 'DOCK Z2', 5, '03 NP', 8, '0', '4+KK', '122.2', '13531000', 13, 'R-BYT', '0', '13.1', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(30, 'DB2.B1.04.01', 'PROJEKT-0003/03', 3, 'DOCK Z2', 7, '04 NP', 9, '0', '3+KK', '96.9', '11258000', 13, 'R-BYT', '0', '13.5', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(31, 'DB2.B1.04.02', 'PROJEKT-0003/03', 3, 'DOCK Z2', 7, '04 NP', 9, '0', '3+KK', '98.2', '11268000', 13, 'R-BYT', '0', '9.5', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(32, 'DB2.B1.04.03', 'PROJEKT-0003/03', 3, 'DOCK Z2', 7, '04 NP', 9, '0', '2+KK', '66.1', '7840000', 13, 'R-BYT', '0', '7.4', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(33, 'DB2.B1.04.04', 'PROJEKT-0003/03', 3, 'DOCK Z2', 7, '04 NP', 9, '0', '4+KK', '121.6', '13592000', 13, 'R-BYT', '0', '9.1', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(34, 'DB2.B1.05.01', 'PROJEKT-0003/03', 3, 'DOCK Z2', 9, '05 NP', 10, '0', '3+KK', '102', '11999000', 13, 'R-BYT', '0', '8.7', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(35, 'DB2.B1.05.02', 'PROJEKT-0003/03', 3, 'DOCK Z2', 9, '05 NP', 10, '3', '3+KK', '98.6', '9498999.5', 13, 'R-BYT', '0', '9.3', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(36, 'DB2.B1.05.03', 'PROJEKT-0003/03', 3, 'DOCK Z2', 9, '05 NP', 10, '0', '2+KK', '66.1', '8056000', 13, 'R-BYT', '0', '7.2', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(37, 'DB2.B1.05.04', 'PROJEKT-0003/03', 3, 'DOCK Z2', 9, '05 NP', 10, '1', '4+KK', '121.7', '13990000', 13, 'R-BYT', '0', '13.1', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(38, 'DB2.B1.06.01', 'PROJEKT-0003/03', 3, 'DOCK Z2', 11, '06 NP', 11, '3', '4+KK', '112.5', '13453000', 13, 'R-BYT', '0', '31.5', '0', '0', '0', '[at=holobyt]', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(39, 'DB2.B1.06.02', 'PROJEKT-0003/03', 3, 'DOCK Z2', 11, '06 NP', 11, '0', '5+KK', '185.8', '27044000', 13, 'R-BYT', '0', '30.9', '0', '0', '0', '[at=holobyt]', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(40, 'DB3.B1.01.01', 'PROJEKT-0003/03', 4, 'DOCK Z3', 1, '01 NP', 12, '3', '2+KK', '63.5', '5560131', 13, 'R-BYT', '113.2', '7.2', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(41, 'DB3.B1.01.02', 'PROJEKT-0003/03', 4, 'DOCK Z3', 1, '01 NP', 12, '1', '2+KK', '50.5', '5498000', 13, 'R-BYT', '47.8', '7.2', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(42, 'DB3.B1.01.03', 'PROJEKT-0003/03', 4, 'DOCK Z3', 1, '01 NP', 12, '0', '3+KK', '85.4', '8550000', 13, 'R-BYT', '53.1', '7.2', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(43, 'DB3.B1.02.01', 'PROJEKT-0003/03', 4, 'DOCK Z3', 3, '02 NP', 13, '0', '3+KK', '85.3', '8037000', 13, 'R-BYT', '0', '7.4', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(44, 'DB3.B1.02.02', 'PROJEKT-0003/03', 4, 'DOCK Z3', 3, '02 NP', 13, '0', '2+KK', '50.5', '5269000', 13, 'R-BYT', '0', '6.5', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(45, 'DB3.B1.02.03', 'PROJEKT-0003/03', 4, 'DOCK Z3', 3, '02 NP', 13, '0', '3+KK', '85.6', '8000000', 13, 'R-BYT', '0', '5.5', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(46, 'DB3.B1.03.01', 'PROJEKT-0003/03', 4, 'DOCK Z3', 5, '03 NP', 14, '0', '3+KK', '85.9', '8273000', 13, 'R-BYT', '0', '5.6', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(47, 'DB3.B1.03.02', 'PROJEKT-0003/03', 4, 'DOCK Z3', 5, '03 NP', 14, '3', '2+KK', '51.4', '5140000', 13, 'R-BYT', '0', '5.6', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(48, 'DB3.B1.03.03', 'PROJEKT-0003/03', 4, 'DOCK Z3', 5, '03 NP', 14, '0', '3+KK', '85.4', '8226000', 13, 'R-BYT', '0', '5.6', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(49, 'DB3.B1.04.01', 'PROJEKT-0003/03', 4, 'DOCK Z3', 7, '04 NP', 15, '0', '3+KK', '85.4', '8445000', 13, 'R-BYT', '0', '7.3', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(50, 'DB3.B1.04.02', 'PROJEKT-0003/03', 4, 'DOCK Z3', 7, '04 NP', 15, '0', '2+KK', '51.2', '5251000', 13, 'R-BYT', '0', '5.6', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(51, 'DB3.B1.04.03', 'PROJEKT-0003/03', 4, 'DOCK Z3', 7, '04 NP', 15, '0', '3+KK', '85.1', '8358000', 13, 'R-BYT', '0', '5.6', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(52, 'DB3.B1.05.01', 'PROJEKT-0003/03', 4, 'DOCK Z3', 9, '05 NP', 16, '0', '5+KK', '177.5', '22051000', 13, 'R-BYT', '0', '47.2', '0', '0', '0', '[at=holobyt]', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(53, 'DB3.B2.01.01', 'PROJEKT-0003/03', 4, 'DOCK Z3', 1, '01 NP', 12, '0', '2+KK', '63.4', '6714000', 13, 'R-BYT', '30.9', '7.4', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(54, 'DB3.B2.01.02', 'PROJEKT-0003/03', 4, 'DOCK Z3', 1, '01 NP', 12, '3', '2+KK', '51', '5384334', 13, 'R-BYT', '47.8', '7.2', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(55, 'DB3.B2.01.03', 'PROJEKT-0003/03', 4, 'DOCK Z3', 1, '01 NP', 12, '1', '3+KK', '85.1', '8613000', 13, 'R-BYT', '60.2', '7.2', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(56, 'DB3.B2.02.01', 'PROJEKT-0003/03', 4, 'DOCK Z3', 3, '02 NP', 13, '0', '3+KK', '85.9', '8031000', 13, 'R-BYT', '0', '5.6', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(57, 'DB3.B2.02.02', 'PROJEKT-0003/03', 4, 'DOCK Z3', 3, '02 NP', 13, '2', '2+KK', '51', '5588783.8', 13, 'R-BYT', '0', '6.5', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(58, 'DB3.B2.02.03', 'PROJEKT-0003/03', 4, 'DOCK Z3', 3, '02 NP', 13, '0', '3+KK', '85.1', '7958000', 13, 'R-BYT', '0', '5.6', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(59, 'DB3.B2.03.01', 'PROJEKT-0003/03', 4, 'DOCK Z3', 5, '03 NP', 14, '0', '3+KK', '86', '8293000', 13, 'R-BYT', '0', '5.9', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(60, 'DB3.B2.03.02', 'PROJEKT-0003/03', 4, 'DOCK Z3', 5, '03 NP', 14, '0', '2+KK', '51.2', '5152000', 13, 'R-BYT', '0', '5.6', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(61, 'DB3.B2.03.03', 'PROJEKT-0003/03', 4, 'DOCK Z3', 5, '03 NP', 14, '0', '3+KK', '85.2', '8208000', 13, 'R-BYT', '0', '5.6', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(62, 'DB3.B2.04.01', 'PROJEKT-0003/03', 4, 'DOCK Z3', 7, '04 NP', 15, '0', '3+KK', '86.1', '8454000', 13, 'R-BYT', '0', '5.6', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(63, 'DB3.B2.04.02', 'PROJEKT-0003/03', 4, 'DOCK Z3', 7, '04 NP', 15, '3', '2+KK', '51.4', '4841000', 13, 'R-BYT', '0', '5.6', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(64, 'DB3.B2.04.03', 'PROJEKT-0003/03', 4, 'DOCK Z3', 7, '04 NP', 15, '0', '3+KK', '85.1', '8355000', 13, 'R-BYT', '0', '5.5', '0', '0', '0', '', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(65, 'DB3.B2.05.01', 'PROJEKT-0003/03', 4, 'DOCK Z3', 9, '05 NP', 16, '0', '5+KK', '177.5', '22051000', 13, 'R-BYT', '0', '47.2', '0', '0', '0', '[at=holobyt]', '2014-04-10 13:06:08', '2014-04-10 13:06:08');

-- --------------------------------------------------------

--
-- Table structure for table `unit_floor_areas`
--

CREATE TABLE IF NOT EXISTS `unit_floor_areas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `unit_id` int(11) NOT NULL,
  `unit_xml_id` varchar(255) NOT NULL,
  `room_no` varchar(255) NOT NULL,
  `room_id` int(11) DEFAULT NULL,
  `room_xml_id` varchar(255) NOT NULL,
  `room_code` varchar(255) DEFAULT NULL,
  `floor_area` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=547 ;

--
-- Dumping data for table `unit_floor_areas`
--

INSERT INTO `unit_floor_areas` (`id`, `unit_id`, `unit_xml_id`, `room_no`, `room_id`, `room_xml_id`, `room_code`, `floor_area`, `created_at`, `updated_at`) VALUES
(1, 1, 'DZ1.B1.01.01', '01', 40, '11.01', NULL, '8.3', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(2, 1, 'DZ1.B1.01.01', '02', 30, '08.01', NULL, '4.2', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(3, 1, 'DZ1.B1.01.01', '03', 51, '14.01', NULL, '1.5', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(4, 1, 'DZ1.B1.01.01', '04', 17, '05.01', NULL, '12.8', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(5, 1, 'DZ1.B1.01.01', '05', 9, '03.01', NULL, '33.1', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(6, 1, 'DZ1.B1.01.01', '06', 66, '19.01', NULL, '8.4', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(7, 1, 'DZ1.B1.01.01', '07', 69, '20.01', NULL, '80', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(8, 2, 'DZ1.B1.01.02', '01', 40, '11.01', NULL, '16.3', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(9, 2, 'DZ1.B1.01.02', '02', 30, '08.01', NULL, '4.5', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(10, 2, 'DZ1.B1.01.02', '03', 17, '05.01', NULL, '15.3', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(11, 2, 'DZ1.B1.01.02', '04', 18, '05.02', NULL, '12.3', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(12, 2, 'DZ1.B1.01.02', '05', 51, '14.01', NULL, '1.8', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(13, 2, 'DZ1.B1.01.02', '06', 9, '03.01', NULL, '38.1', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(14, 2, 'DZ1.B1.01.02', '07', 19, '05.03', NULL, '13.5', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(15, 2, 'DZ1.B1.01.02', '08', 31, '08.02', NULL, '4.5', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(16, 2, 'DZ1.B1.01.02', '09', 66, '19.01', NULL, '7.9', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(17, 2, 'DZ1.B1.01.02', '10', 69, '20.01', NULL, '75.1', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(18, 3, 'DZ1.B1.01.03', '01', 40, '11.01', NULL, '14.8', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(19, 3, 'DZ1.B1.01.03', '02', 30, '08.01', NULL, '4', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(20, 3, 'DZ1.B1.01.03', '03', 17, '05.01', NULL, '14.5', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(21, 3, 'DZ1.B1.01.03', '04', 18, '05.02', NULL, '11.9', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(22, 3, 'DZ1.B1.01.03', '05', 31, '08.02', NULL, '2.8', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(23, 3, 'DZ1.B1.01.03', '06', 9, '03.01', NULL, '31.1', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(24, 3, 'DZ1.B1.01.03', '07', 60, '17.01', NULL, '6.1', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(25, 3, 'DZ1.B1.01.03', '08', 66, '19.01', NULL, '7.8', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(26, 3, 'DZ1.B1.01.03', '09', 69, '20.01', NULL, '44', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(27, 4, 'DZ1.B1.01.04', '01', 40, '11.01', NULL, '5.7', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(28, 4, 'DZ1.B1.01.04', '02', 51, '14.01', NULL, '1.3', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(29, 4, 'DZ1.B1.01.04', '03', 30, '08.01', NULL, '3.9', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(30, 4, 'DZ1.B1.01.04', '04', 17, '05.01', NULL, '12', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(31, 4, 'DZ1.B1.01.04', '05', 9, '03.01', NULL, '26.1', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(32, 4, 'DZ1.B1.01.04', '06', 60, '17.01', NULL, '6.9', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(33, 4, 'DZ1.B1.01.04', '07', 66, '19.01', NULL, '7.7', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(34, 4, 'DZ1.B1.01.04', '08', 69, '20.01', NULL, '13.7', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(35, 5, 'DZ1.B1.02.01', '01', 40, '11.01', NULL, '8.3', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(36, 5, 'DZ1.B1.02.01', '02', 61, '17.02', NULL, '1.5', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(37, 5, 'DZ1.B1.02.01', '03', 30, '08.01', NULL, '4.2', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(38, 5, 'DZ1.B1.02.01', '04', 17, '05.01', NULL, '12.8', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(39, 5, 'DZ1.B1.02.01', '05', 9, '03.01', NULL, '30.3', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(40, 5, 'DZ1.B1.02.01', '06', 60, '17.01', NULL, '6.9', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(41, 5, 'DZ1.B1.02.01', '07', 61, '17.02', NULL, '1.8', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(42, 6, 'DZ1.B1.02.02', '01', 40, '11.01', NULL, '16.3', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(43, 6, 'DZ1.B1.02.02', '02', 30, '08.01', NULL, '4.5', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(44, 6, 'DZ1.B1.02.02', '03', 17, '05.01', NULL, '15.6', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(45, 6, 'DZ1.B1.02.02', '04', 18, '05.02', NULL, '14', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(46, 6, 'DZ1.B1.02.02', '05', 51, '14.01', NULL, '1.8', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(47, 6, 'DZ1.B1.02.02', '06', 9, '03.01', NULL, '38.3', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(48, 6, 'DZ1.B1.02.02', '07', 19, '05.03', NULL, '13.8', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(49, 6, 'DZ1.B1.02.02', '08', 31, '08.02', NULL, '4.5', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(50, 6, 'DZ1.B1.02.02', '09', 60, '17.01', NULL, '7.1', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(51, 7, 'DZ1.B1.02.03', '01', 40, '11.01', NULL, '14.8', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(52, 7, 'DZ1.B1.02.03', '02', 30, '08.01', NULL, '4', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(53, 7, 'DZ1.B1.02.03', '03', 17, '05.01', NULL, '16.2', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(54, 7, 'DZ1.B1.02.03', '04', 18, '05.02', NULL, '12.1', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(55, 7, 'DZ1.B1.02.03', '05', 31, '08.02', NULL, '2.8', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(56, 7, 'DZ1.B1.02.03', '06', 9, '03.01', NULL, '31.1', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(57, 7, 'DZ1.B1.02.03', '07', 60, '17.01', NULL, '7.4', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(58, 8, 'DZ1.B1.02.04', '01', 40, '11.01', NULL, '9.5', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(59, 8, 'DZ1.B1.02.04', '02', 27, '07.01', NULL, '1.8', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(60, 8, 'DZ1.B1.02.04', '03', 51, '14.01', NULL, '1.2', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(61, 8, 'DZ1.B1.02.04', '04', 30, '08.01', NULL, '4.9', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(62, 8, 'DZ1.B1.02.04', '05', 9, '03.01', NULL, '28.5', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(63, 8, 'DZ1.B1.02.04', '06', 17, '05.01', NULL, '13', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(64, 8, 'DZ1.B1.02.04', '07', 18, '05.02', NULL, '12.3', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(65, 8, 'DZ1.B1.02.04', '08', 60, '17.01', NULL, '6.6', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(66, 8, 'DZ1.B1.02.04', '09', 61, '17.02', NULL, '2.5', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(67, 9, 'DZ1.B1.03.01', '01', 40, '11.01', NULL, '8.3', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(68, 9, 'DZ1.B1.03.01', '02', 61, '17.02', NULL, '1.5', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(69, 9, 'DZ1.B1.03.01', '03', 30, '08.01', NULL, '4.2', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(70, 9, 'DZ1.B1.03.01', '04', 17, '05.01', NULL, '12.8', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(71, 9, 'DZ1.B1.03.01', '05', 9, '03.01', NULL, '29.4', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(72, 9, 'DZ1.B1.03.01', '06', 60, '17.01', NULL, '5.3', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(73, 9, 'DZ1.B1.03.01', '07', 61, '17.02', NULL, '1.8', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(74, 10, 'DZ1.B1.03.02', '01', 40, '11.01', NULL, '16.3', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(75, 10, 'DZ1.B1.03.02', '02', 30, '08.01', NULL, '4.5', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(76, 10, 'DZ1.B1.03.02', '03', 17, '05.01', NULL, '17.6', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(77, 10, 'DZ1.B1.03.02', '04', 18, '05.02', NULL, '12.8', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(78, 10, 'DZ1.B1.03.02', '05', 51, '14.01', NULL, '1.8', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(79, 10, 'DZ1.B1.03.02', '06', 9, '03.01', NULL, '39.8', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(80, 10, 'DZ1.B1.03.02', '07', 19, '05.03', NULL, '16.9', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(81, 10, 'DZ1.B1.03.02', '08', 31, '08.02', NULL, '4.5', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(82, 10, 'DZ1.B1.03.02', '09', 60, '17.01', NULL, '7.8', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(83, 11, 'DZ1.B1.03.03', '01', 40, '11.01', NULL, '14.7', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(84, 11, 'DZ1.B1.03.03', '02', 30, '08.01', NULL, '4', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(85, 11, 'DZ1.B1.03.03', '03', 17, '05.01', NULL, '15.1', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(86, 11, 'DZ1.B1.03.03', '04', 18, '05.02', NULL, '14', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(87, 11, 'DZ1.B1.03.03', '05', 31, '08.02', NULL, '2.8', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(88, 11, 'DZ1.B1.03.03', '06', 9, '03.01', NULL, '31.8', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(89, 11, 'DZ1.B1.03.03', '07', 60, '17.01', NULL, '6.1', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(90, 12, 'DZ1.B1.03.04', '01', 40, '11.01', NULL, '9.5', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(91, 12, 'DZ1.B1.03.04', '02', 27, '07.01', NULL, '1.8', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(92, 12, 'DZ1.B1.03.04', '03', 51, '14.01', NULL, '1.2', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(93, 12, 'DZ1.B1.03.04', '04', 30, '08.01', NULL, '4.9', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(94, 12, 'DZ1.B1.03.04', '05', 9, '03.01', NULL, '27.7', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(95, 12, 'DZ1.B1.03.04', '06', 17, '05.01', NULL, '13', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(96, 12, 'DZ1.B1.03.04', '07', 18, '05.02', NULL, '12.1', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(97, 12, 'DZ1.B1.03.04', '08', 60, '17.01', NULL, '6.9', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(98, 12, 'DZ1.B1.03.04', '09', 61, '17.02', NULL, '1.7', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(99, 13, 'DZ1.B1.04.01', '01', 40, '11.01', NULL, '8.3', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(100, 13, 'DZ1.B1.04.01', '02', 51, '14.01', NULL, '1.5', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(101, 13, 'DZ1.B1.04.01', '03', 30, '08.01', NULL, '4.2', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(102, 13, 'DZ1.B1.04.01', '04', 17, '05.01', NULL, '12.8', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(103, 13, 'DZ1.B1.04.01', '05', 9, '03.01', NULL, '30.3', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(104, 13, 'DZ1.B1.04.01', '06', 60, '17.01', NULL, '6.9', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(105, 13, 'DZ1.B1.04.01', '07', 61, '17.02', NULL, '1.8', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(106, 14, 'DZ1.B1.04.02', '01', 40, '11.01', NULL, '16.3', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(107, 14, 'DZ1.B1.04.02', '02', 30, '08.01', NULL, '4.5', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(108, 14, 'DZ1.B1.04.02', '03', 17, '05.01', NULL, '15.6', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(109, 14, 'DZ1.B1.04.02', '04', 18, '05.02', NULL, '14', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(110, 14, 'DZ1.B1.04.02', '05', 51, '14.01', NULL, '1.8', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(111, 14, 'DZ1.B1.04.02', '06', 9, '03.01', NULL, '38.1', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(112, 14, 'DZ1.B1.04.02', '07', 19, '05.03', NULL, '13.6', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(113, 14, 'DZ1.B1.04.02', '08', 31, '08.02', NULL, '4.5', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(114, 14, 'DZ1.B1.04.02', '09', 60, '17.01', NULL, '7.1', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(115, 15, 'DZ1.B1.04.03', '01', 40, '11.01', NULL, '14.7', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(116, 15, 'DZ1.B1.04.03', '02', 30, '08.01', NULL, '4', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(117, 15, 'DZ1.B1.04.03', '03', 17, '05.01', NULL, '16.2', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(118, 15, 'DZ1.B1.04.03', '04', 18, '05.02', NULL, '12.1', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(119, 15, 'DZ1.B1.04.03', '05', 31, '08.02', NULL, '2.8', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(120, 15, 'DZ1.B1.04.03', '06', 9, '03.01', NULL, '30.6', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(121, 15, 'DZ1.B1.04.03', '07', 60, '17.01', NULL, '7.4', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(122, 16, 'DZ1.B1.04.04', '01', 40, '11.01', NULL, '9.5', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(123, 16, 'DZ1.B1.04.04', '02', 27, '07.01', NULL, '1.8', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(124, 16, 'DZ1.B1.04.04', '03', 51, '14.01', NULL, '1.2', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(125, 16, 'DZ1.B1.04.04', '04', 30, '08.01', NULL, '4.9', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(126, 16, 'DZ1.B1.04.04', '05', 9, '03.01', NULL, '28.5', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(127, 16, 'DZ1.B1.04.04', '06', 17, '05.01', NULL, '13', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(128, 16, 'DZ1.B1.04.04', '07', 18, '05.02', NULL, '12.3', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(129, 16, 'DZ1.B1.04.04', '08', 60, '17.01', NULL, '6.6', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(130, 16, 'DZ1.B1.04.04', '09', 61, '17.02', NULL, '2.5', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(131, 17, 'DZ1.B1.05.01', '01', 40, '11.01', NULL, '18.7', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(132, 17, 'DZ1.B1.05.01', '02', 9, '03.01', NULL, '98.3', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(133, 17, 'DZ1.B1.05.01', '03', 27, '07.01', NULL, '2.6', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(134, 17, 'DZ1.B1.05.01', '04', 17, '05.01', NULL, '20.4', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(135, 17, 'DZ1.B1.05.01', '05', 30, '08.01', NULL, '4.5', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(136, 17, 'DZ1.B1.05.01', '06', 43, '12.01', NULL, '16.5', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(137, 17, 'DZ1.B1.05.01', '07', 18, '05.02', NULL, '19.6', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(138, 17, 'DZ1.B1.05.01', '08', 31, '08.02', NULL, '5', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(139, 17, 'DZ1.B1.05.01', '09', 49, '13.02', NULL, '6.8', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(140, 17, 'DZ1.B1.05.01', '10', 19, '05.03', NULL, '13.3', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(141, 17, 'DZ1.B1.05.01', '11', 20, '05.04', NULL, '15', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(142, 17, 'DZ1.B1.05.01', '12', 51, '14.01', NULL, '5.3', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(143, 17, 'DZ1.B1.05.01', '13', 32, '08.03', NULL, '6.9', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(144, 17, 'DZ1.B1.05.01', '14', 66, '19.01', NULL, '33.3', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(145, 17, 'DZ1.B1.05.01', '15', 67, '19.02', NULL, '2.4', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(146, 17, 'DZ1.B1.05.01', '16', 68, '19.03', NULL, '9.5', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(147, 17, 'DZ1.B1.05.01', '17', NULL, '19.04', NULL, '14', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(148, 17, 'DZ1.B1.05.01', '18', NULL, '19.05', NULL, '2.1', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(149, 17, 'DZ1.B1.05.01', '19', NULL, '19.06', NULL, '1.7', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(150, 18, 'DZ2.B1.01.01', '01', 40, '11.01', NULL, '8.3', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(151, 18, 'DZ2.B1.01.01', '02', 43, '12.01', NULL, '4.2', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(152, 18, 'DZ2.B1.01.01', '03', 27, '07.01', NULL, '1.9', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(153, 18, 'DZ2.B1.01.01', '04', 51, '14.01', NULL, '1.6', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(154, 18, 'DZ2.B1.01.01', '05', 30, '08.01', NULL, '6.4', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(155, 18, 'DZ2.B1.01.01', '06', 17, '05.01', NULL, '13.1', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(156, 18, 'DZ2.B1.01.01', '07', 18, '05.02', NULL, '16.7', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(157, 18, 'DZ2.B1.01.01', '08', 9, '03.01', NULL, '40.6', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(158, 18, 'DZ2.B1.01.01', '09', 66, '19.01', NULL, '12.5', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(159, 18, 'DZ2.B1.01.01', '10', 69, '20.01', NULL, '68.3', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(160, 19, 'DZ2.B1.01.02', '01', 40, '11.01', NULL, '5.2', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(161, 19, 'DZ2.B1.01.02', '02', 43, '12.01', NULL, '7.3', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(162, 19, 'DZ2.B1.01.02', '03', 27, '07.01', NULL, '2', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(163, 19, 'DZ2.B1.01.02', '04', 51, '14.01', NULL, '1.5', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(164, 19, 'DZ2.B1.01.02', '05', 30, '08.01', NULL, '6.4', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(165, 19, 'DZ2.B1.01.02', '06', 17, '05.01', NULL, '16', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(166, 19, 'DZ2.B1.01.02', '07', 18, '05.02', NULL, '12.8', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(167, 19, 'DZ2.B1.01.02', '08', 9, '03.01', NULL, '39.8', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(168, 19, 'DZ2.B1.01.02', '09', 66, '19.01', NULL, '8.5', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(169, 19, 'DZ2.B1.01.02', '10', 69, '20.01', NULL, '54.4', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(170, 20, 'DZ2.B1.01.03', '01', 40, '11.01', NULL, '3.8', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(171, 20, 'DZ2.B1.01.03', '02', 30, '08.01', NULL, '5.1', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(172, 20, 'DZ2.B1.01.03', '03', 9, '03.01', NULL, '32.1', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(173, 20, 'DZ2.B1.01.03', '04', 66, '19.01', NULL, '9.4', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(174, 20, 'DZ2.B1.01.03', '05', 69, '20.01', NULL, '11.6', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(175, 21, 'DZ2.B1.01.04', '01', 40, '11.01', NULL, '10.4', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(176, 21, 'DZ2.B1.01.04', '02', 43, '12.01', NULL, '5.1', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(177, 21, 'DZ2.B1.01.04', '03', 51, '14.01', NULL, '1.7', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(178, 21, 'DZ2.B1.01.04', '04', 30, '08.01', NULL, '5.3', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(179, 21, 'DZ2.B1.01.04', '05', 31, '08.02', NULL, '5.5', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(180, 21, 'DZ2.B1.01.04', '06', 17, '05.01', NULL, '14', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(181, 21, 'DZ2.B1.01.04', '07', 18, '05.02', NULL, '12.1', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(182, 21, 'DZ2.B1.01.04', '08', 19, '05.03', NULL, '12.7', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(183, 21, 'DZ2.B1.01.04', '09', 9, '03.01', NULL, '46.5', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(184, 21, 'DZ2.B1.01.04', '10', 66, '19.01', NULL, '7.5', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(185, 21, 'DZ2.B1.01.04', '11', 67, '19.02', NULL, '8.5', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(186, 21, 'DZ2.B1.01.04', '12', 69, '20.01', NULL, '126.2', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(187, 22, 'DZ2.B1.02.01', '01', 40, '11.01', NULL, '10.8', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(188, 22, 'DZ2.B1.02.01', '02', 27, '07.01', NULL, '1.7', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(189, 22, 'DZ2.B1.02.01', '03', 51, '14.01', NULL, '1.4', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(190, 22, 'DZ2.B1.02.01', '04', 30, '08.01', NULL, '5.8', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(191, 22, 'DZ2.B1.02.01', '05', 17, '05.01', NULL, '11.1', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(192, 22, 'DZ2.B1.02.01', '06', 18, '05.02', NULL, '15.9', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(193, 22, 'DZ2.B1.02.01', '07', 9, '03.01', NULL, '46', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(194, 22, 'DZ2.B1.02.01', '08', 60, '17.01', NULL, '8.6', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(195, 22, 'DZ2.B1.02.01', '09', 61, '17.02', NULL, '4.9', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(196, 23, 'DZ2.B1.02.02', '01', 40, '11.01', NULL, '5.2', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(197, 23, 'DZ2.B1.02.02', '02', 43, '12.01', NULL, '6.9', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(198, 23, 'DZ2.B1.02.02', '03', 27, '07.01', NULL, '2.2', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(199, 23, 'DZ2.B1.02.02', '04', 51, '14.01', NULL, '1.9', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(200, 23, 'DZ2.B1.02.02', '05', 30, '08.01', NULL, '6', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(201, 23, 'DZ2.B1.02.02', '06', 17, '05.01', NULL, '20.1', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(202, 23, 'DZ2.B1.02.02', '07', 18, '05.02', NULL, '13.2', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(203, 23, 'DZ2.B1.02.02', '08', 9, '03.01', NULL, '39.5', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(204, 23, 'DZ2.B1.02.02', '09', 60, '17.01', NULL, '9.5', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(205, 24, 'DZ2.B1.02.03', '01', 40, '11.01', NULL, '6.2', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(206, 24, 'DZ2.B1.02.03', '02', 51, '14.01', NULL, '1.3', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(207, 24, 'DZ2.B1.02.03', '03', 30, '08.01', NULL, '5.6', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(208, 24, 'DZ2.B1.02.03', '04', 17, '05.01', NULL, '16.1', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(209, 24, 'DZ2.B1.02.03', '05', 9, '03.01', NULL, '32.8', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(210, 24, 'DZ2.B1.02.03', '06', 60, '17.01', NULL, '4.8', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(211, 25, 'DZ2.B1.02.04', '01', 40, '11.01', NULL, '10.4', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(212, 25, 'DZ2.B1.02.04', '02', 43, '12.01', NULL, '5.2', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(213, 25, 'DZ2.B1.02.04', '03', 51, '14.01', NULL, '1.8', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(214, 25, 'DZ2.B1.02.04', '04', 30, '08.01', NULL, '5.3', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(215, 25, 'DZ2.B1.02.04', '05', 31, '08.02', NULL, '5.5', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(216, 25, 'DZ2.B1.02.04', '06', 17, '05.01', NULL, '19.3', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(217, 25, 'DZ2.B1.02.04', '07', 18, '05.02', NULL, '12.8', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(218, 25, 'DZ2.B1.02.04', '08', 19, '05.03', NULL, '12.4', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(219, 25, 'DZ2.B1.02.04', '09', 9, '03.01', NULL, '44.2', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(220, 25, 'DZ2.B1.02.04', '10', 60, '17.01', NULL, '9.1', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(221, 26, 'DZ2.B1.03.01', '01', 40, '11.01', NULL, '8.3', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(222, 26, 'DZ2.B1.03.01', '02', 43, '12.01', NULL, '4.2', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(223, 26, 'DZ2.B1.03.01', '03', 27, '07.01', NULL, '1.9', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(224, 26, 'DZ2.B1.03.01', '04', 51, '14.01', NULL, '1.6', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(225, 26, 'DZ2.B1.03.01', '05', 30, '08.01', NULL, '6.4', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(226, 26, 'DZ2.B1.03.01', '06', 17, '05.01', NULL, '13.1', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(227, 26, 'DZ2.B1.03.01', '07', 18, '05.02', NULL, '19.2', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(228, 26, 'DZ2.B1.03.01', '08', 9, '03.01', NULL, '43.9', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(229, 26, 'DZ2.B1.03.01', '09', 60, '17.01', NULL, '8.7', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(230, 27, 'DZ2.B1.03.02', '01', 40, '11.01', NULL, '5.2', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(231, 27, 'DZ2.B1.03.02', '02', 43, '12.01', NULL, '7.3', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(232, 27, 'DZ2.B1.03.02', '03', 27, '07.01', NULL, '2', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(233, 27, 'DZ2.B1.03.02', '04', 51, '14.01', NULL, '1.5', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(234, 27, 'DZ2.B1.03.02', '05', 30, '08.01', NULL, '6.4', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(235, 27, 'DZ2.B1.03.02', '06', 17, '05.01', NULL, '18.2', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(236, 27, 'DZ2.B1.03.02', '07', 18, '05.02', NULL, '14.9', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(237, 27, 'DZ2.B1.03.02', '08', 9, '03.01', NULL, '39.8', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(238, 27, 'DZ2.B1.03.02', '09', 60, '17.01', NULL, '9.4', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(239, 28, 'DZ2.B1.03.03', '01', 40, '11.01', NULL, '6.1', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(240, 28, 'DZ2.B1.03.03', '02', 51, '14.01', NULL, '1.3', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(241, 28, 'DZ2.B1.03.03', '03', 30, '08.01', NULL, '5.7', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(242, 28, 'DZ2.B1.03.03', '04', 17, '05.01', NULL, '16.1', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(243, 28, 'DZ2.B1.03.03', '05', 9, '03.01', NULL, '35', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(244, 28, 'DZ2.B1.03.03', '06', 60, '17.01', NULL, '7.5', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(245, 29, 'DZ2.B1.03.04', '01', 40, '11.01', NULL, '10.4', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(246, 29, 'DZ2.B1.03.04', '02', 43, '12.01', NULL, '5.1', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(247, 29, 'DZ2.B1.03.04', '03', 51, '14.01', NULL, '1.7', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(248, 29, 'DZ2.B1.03.04', '04', 30, '08.01', NULL, '5.3', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(249, 29, 'DZ2.B1.03.04', '05', 31, '08.02', NULL, '5.5', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(250, 29, 'DZ2.B1.03.04', '06', 17, '05.01', NULL, '14', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(251, 29, 'DZ2.B1.03.04', '07', 18, '05.02', NULL, '13.8', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(252, 29, 'DZ2.B1.03.04', '08', 19, '05.03', NULL, '14.5', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(253, 29, 'DZ2.B1.03.04', '09', 9, '03.01', NULL, '46.5', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(254, 29, 'DZ2.B1.03.04', '10', 60, '17.01', NULL, '8.5', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(255, 29, 'DZ2.B1.03.04', '11', 61, '17.02', NULL, '4.6', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(256, 30, 'DZ2.B1.04.01', '01', 40, '11.01', NULL, '10.8', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(257, 30, 'DZ2.B1.04.01', '02', 27, '07.01', NULL, '1.7', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(258, 30, 'DZ2.B1.04.01', '03', NULL, '14.07', NULL, '1.4', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(259, 30, 'DZ2.B1.04.01', '04', 30, '08.01', NULL, '5.8', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(260, 30, 'DZ2.B1.04.01', '05', 17, '05.01', NULL, '11.1', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(261, 30, 'DZ2.B1.04.01', '06', 18, '05.02', NULL, '15.9', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(262, 30, 'DZ2.B1.04.01', '07', 9, '03.01', NULL, '46', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(263, 30, 'DZ2.B1.04.01', '08', 60, '17.01', NULL, '8.6', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(264, 30, 'DZ2.B1.04.01', '09', 61, '17.02', NULL, '4.9', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(265, 31, 'DZ2.B1.04.02', '01', 40, '11.01', NULL, '5.2', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(266, 31, 'DZ2.B1.04.02', '02', 43, '12.01', NULL, '6.8', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(267, 31, 'DZ2.B1.04.02', '03', 27, '07.01', NULL, '2.1', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(268, 31, 'DZ2.B1.04.02', '04', 51, '14.01', NULL, '1.9', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(269, 31, 'DZ2.B1.04.02', '05', 30, '08.01', NULL, '5.8', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(270, 31, 'DZ2.B1.04.02', '06', 17, '05.01', NULL, '20.1', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(271, 31, 'DZ2.B1.04.02', '07', 18, '05.02', NULL, '13.2', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(272, 31, 'DZ2.B1.04.02', '08', 9, '03.01', NULL, '38.7', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(273, 31, 'DZ2.B1.04.02', '09', 60, '17.01', NULL, '9.5', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(274, 32, 'DZ2.B1.04.03', '01', 40, '11.01', NULL, '6.1', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(275, 32, 'DZ2.B1.04.03', '02', 51, '14.01', NULL, '1.3', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(276, 32, 'DZ2.B1.04.03', '03', 30, '08.01', NULL, '5.4', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(277, 32, 'DZ2.B1.04.03', '04', 17, '05.01', NULL, '16.1', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(278, 32, 'DZ2.B1.04.03', '05', 9, '03.01', NULL, '34.9', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(279, 32, 'DZ2.B1.04.03', '06', 60, '17.01', NULL, '7.4', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(280, 33, 'DZ2.B1.04.04', '01', 40, '11.01', NULL, '10.4', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(281, 33, 'DZ2.B1.04.04', '02', 43, '12.01', NULL, '5.2', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(282, 33, 'DZ2.B1.04.04', '03', 51, '14.01', NULL, '1.7', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(283, 33, 'DZ2.B1.04.04', '04', 30, '08.01', NULL, '5.1', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(284, 33, 'DZ2.B1.04.04', '05', 31, '08.02', NULL, '5.2', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(285, 33, 'DZ2.B1.04.04', '06', 17, '05.01', NULL, '19.3', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(286, 33, 'DZ2.B1.04.04', '07', 18, '05.02', NULL, '12.8', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(287, 33, 'DZ2.B1.04.04', '08', 19, '05.03', NULL, '12.4', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(288, 33, 'DZ2.B1.04.04', '09', 9, '03.01', NULL, '44.1', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(289, 33, 'DZ2.B1.04.04', '10', 60, '17.01', NULL, '9.1', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(290, 34, 'DZ2.B1.05.01', '01', 40, '11.01', NULL, '8.4', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(291, 34, 'DZ2.B1.05.01', '02', 43, '12.01', NULL, '4.2', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(292, 34, 'DZ2.B1.05.01', '03', 27, '07.01', NULL, '1.9', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(293, 34, 'DZ2.B1.05.01', '04', 51, '14.01', NULL, '1.6', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(294, 34, 'DZ2.B1.05.01', '05', 30, '08.01', NULL, '6.4', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(295, 34, 'DZ2.B1.05.01', '06', 17, '05.01', NULL, '13.1', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(296, 34, 'DZ2.B1.05.01', '07', 18, '05.02', NULL, '19.2', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(297, 34, 'DZ2.B1.05.01', '08', 9, '03.01', NULL, '43.2', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(298, 34, 'DZ2.B1.05.01', '09', 60, '17.01', NULL, '8.7', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(299, 35, 'DZ2.B1.05.02', '01', 40, '11.01', NULL, '5.5', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(300, 35, 'DZ2.B1.05.02', '02', 43, '12.01', NULL, '7.1', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(301, 35, 'DZ2.B1.05.02', '03', 27, '07.01', NULL, '2', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(302, 35, 'DZ2.B1.05.02', '04', 51, '14.01', NULL, '1.5', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(303, 35, 'DZ2.B1.05.02', '05', 30, '08.01', NULL, '6.4', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(304, 35, 'DZ2.B1.05.02', '06', 17, '05.01', NULL, '17.8', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(305, 35, 'DZ2.B1.05.02', '07', 18, '05.02', NULL, '14.4', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(306, 35, 'DZ2.B1.05.02', '08', 9, '03.01', NULL, '39.4', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(307, 35, 'DZ2.B1.05.02', '09', 60, '17.01', NULL, '9.3', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(308, 36, 'DZ2.B1.05.03', '01', 40, '11.01', NULL, '6.3', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(309, 36, 'DZ2.B1.05.03', '02', 51, '14.01', NULL, '1.4', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(310, 36, 'DZ2.B1.05.03', '03', 30, '08.01', NULL, '5.5', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(311, 36, 'DZ2.B1.05.03', '04', 17, '05.01', NULL, '16.1', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(312, 36, 'DZ2.B1.05.03', '05', 9, '03.01', NULL, '34.6', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(313, 36, 'DZ2.B1.05.03', '06', 60, '17.01', NULL, '7.2', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(314, 37, 'DZ2.B1.05.04', '01', 40, '11.01', NULL, '10.4', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(315, 37, 'DZ2.B1.05.04', '02', 43, '12.01', NULL, '5.3', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(316, 37, 'DZ2.B1.05.04', '03', 51, '14.01', NULL, '1.7', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(317, 37, 'DZ2.B1.05.04', '04', 30, '08.01', NULL, '5.1', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(318, 37, 'DZ2.B1.05.04', '05', 31, '08.02', NULL, '5.2', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(319, 37, 'DZ2.B1.05.04', '06', 17, '05.01', NULL, '14', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(320, 37, 'DZ2.B1.05.04', '07', 18, '05.02', NULL, '13.7', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(321, 37, 'DZ2.B1.05.04', '08', 19, '05.03', NULL, '14.4', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(322, 37, 'DZ2.B1.05.04', '09', 9, '03.01', NULL, '46.3', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(323, 37, 'DZ2.B1.05.04', '10', 60, '17.01', NULL, '8.5', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(324, 37, 'DZ2.B1.05.04', '11', 61, '17.02', NULL, '4.6', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(325, 38, 'DZ2.B1.06.01', '01', 40, '11.01', NULL, '6.5', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(326, 38, 'DZ2.B1.06.01', '02', 27, '07.01', NULL, '1.5', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(327, 38, 'DZ2.B1.06.01', '03', 51, '14.01', NULL, '1.4', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(328, 38, 'DZ2.B1.06.01', '04', 30, '08.01', NULL, '3.8', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(329, 38, 'DZ2.B1.06.01', '05', 17, '05.01', NULL, '12.1', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(330, 38, 'DZ2.B1.06.01', '06', 18, '05.02', NULL, '11.1', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(331, 38, 'DZ2.B1.06.01', '07', 19, '05.03', NULL, '14.2', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(332, 38, 'DZ2.B1.06.01', '08', 31, '08.02', NULL, '4.3', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(333, 38, 'DZ2.B1.06.01', '09', 43, '12.01', NULL, '6', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(334, 38, 'DZ2.B1.06.01', '10', 9, '03.01', NULL, '47.4', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(335, 38, 'DZ2.B1.06.01', '11', 66, '19.01', NULL, '25.1', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(336, 38, 'DZ2.B1.06.01', '12', 67, '19.02', NULL, '4.6', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(337, 38, 'DZ2.B1.06.01', '13', 68, '19.03', NULL, '1.8', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(338, 39, 'DZ2.B1.06.02', '01', 40, '11.01', NULL, '12.6', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(339, 39, 'DZ2.B1.06.02', '02', 30, '08.01', NULL, '4.3', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(340, 39, 'DZ2.B1.06.02', '03', 17, '05.01', NULL, '18.4', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(341, 39, 'DZ2.B1.06.02', '04', 18, '05.02', NULL, '18', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(342, 39, 'DZ2.B1.06.02', '05', 19, '05.03', NULL, '13.1', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(343, 39, 'DZ2.B1.06.02', '06', 31, '08.02', NULL, '5.9', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(344, 39, 'DZ2.B1.06.02', '07', 51, '14.01', NULL, '3.4', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(345, 39, 'DZ2.B1.06.02', '08', 43, '12.01', NULL, '9', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(346, 39, 'DZ2.B1.06.02', '09', 48, '13.01', NULL, '5.4', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(347, 39, 'DZ2.B1.06.02', '10', 20, '05.04', NULL, '19.1', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(348, 39, 'DZ2.B1.06.02', '11', 32, '08.03', NULL, '5.4', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(349, 39, 'DZ2.B1.06.02', '12', 9, '03.01', NULL, '59.1', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(350, 39, 'DZ2.B1.06.02', '13', 66, '19.01', NULL, '19.2', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(351, 39, 'DZ2.B1.06.02', '14', 67, '19.02', NULL, '3.9', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(352, 39, 'DZ2.B1.06.02', '15', 68, '19.03', NULL, '4.2', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(353, 39, 'DZ2.B1.06.02', '16', NULL, '19.04', NULL, '1.8', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(354, 39, 'DZ2.B1.06.02', '17', NULL, '19.05', NULL, '1.8', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(355, 40, 'DZ3.B1.01.01', '01', 40, '11.01', NULL, '6.9', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(356, 40, 'DZ3.B1.01.01', '02', 30, '08.01', NULL, '4.7', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(357, 40, 'DZ3.B1.01.01', '03', 17, '05.01', NULL, '13.8', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(358, 40, 'DZ3.B1.01.01', '04', 9, '03.01', NULL, '36.4', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(359, 40, 'DZ3.B1.01.01', '05', 66, '19.01', NULL, '7.2', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(360, 40, 'DZ3.B1.01.01', '06', 69, '20.01', NULL, '113.2', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(361, 41, 'DZ3.B1.01.02', '01', 40, '11.01', NULL, '4.9', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(362, 41, 'DZ3.B1.01.02', '02', 30, '08.01', NULL, '5.4', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(363, 41, 'DZ3.B1.01.02', '03', 17, '05.01', NULL, '11.8', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(364, 41, 'DZ3.B1.01.02', '04', 9, '03.01', NULL, '26.6', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(365, 41, 'DZ3.B1.01.02', '05', 66, '19.01', NULL, '7.2', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(366, 41, 'DZ3.B1.01.02', '06', 69, '20.01', NULL, '47.8', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(367, 42, 'DZ3.B1.01.03', '01', 40, '11.01', NULL, '11.9', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(368, 42, 'DZ3.B1.01.03', '02', 30, '08.01', NULL, '6.8', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(369, 42, 'DZ3.B1.01.03', '03', 17, '05.01', NULL, '15.1', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(370, 42, 'DZ3.B1.01.03', '04', 18, '05.02', NULL, '12.5', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(371, 42, 'DZ3.B1.01.03', '05', 9, '03.01', NULL, '33.1', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(372, 42, 'DZ3.B1.01.03', '06', 27, '07.01', NULL, '2.1', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(373, 42, 'DZ3.B1.01.03', '07', 66, '19.01', NULL, '7.2', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(374, 42, 'DZ3.B1.01.03', '08', 69, '20.01', NULL, '29.2', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(375, 42, 'DZ3.B1.01.03', '09', 69, '20.01', NULL, '23.9', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(376, 43, 'DZ3.B1.02.01', '01', 40, '11.01', NULL, '11', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(377, 43, 'DZ3.B1.02.01', '02', 30, '08.01', NULL, '6.7', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(378, 43, 'DZ3.B1.02.01', '03', 17, '05.01', NULL, '12.3', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(379, 43, 'DZ3.B1.02.01', '04', 18, '05.02', NULL, '13.3', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(380, 43, 'DZ3.B1.02.01', '05', 9, '03.01', NULL, '34.8', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(381, 43, 'DZ3.B1.02.01', '06', 27, '07.01', NULL, '1.8', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(382, 43, 'DZ3.B1.02.01', '07', 51, '14.01', NULL, '1.4', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(383, 43, 'DZ3.B1.02.01', '08', 60, '17.01', NULL, '7.4', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(384, 44, 'DZ3.B1.02.02', '01', 40, '11.01', NULL, '4.9', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(385, 44, 'DZ3.B1.02.02', '02', 30, '08.01', NULL, '5.4', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(386, 44, 'DZ3.B1.02.02', '03', 9, '03.01', NULL, '26.6', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(387, 44, 'DZ3.B1.02.02', '04', 17, '05.01', NULL, '11.8', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(388, 44, 'DZ3.B1.02.02', '05', 60, '17.01', NULL, '6.5', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(389, 45, 'DZ3.B1.02.03', '01', 40, '11.01', NULL, '11.9', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(390, 45, 'DZ3.B1.02.03', '02', 30, '08.01', NULL, '6.8', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(391, 45, 'DZ3.B1.02.03', '03', 17, '05.01', NULL, '15.1', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(392, 45, 'DZ3.B1.02.03', '04', 18, '05.02', NULL, '12.5', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(393, 45, 'DZ3.B1.02.03', '05', 9, '03.01', NULL, '33.1', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(394, 45, 'DZ3.B1.02.03', '06', 27, '07.01', NULL, '2.2', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(395, 45, 'DZ3.B1.02.03', '07', 60, '17.01', NULL, '5.5', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(396, 46, 'DZ3.B1.03.01', '01', 40, '11.01', NULL, '11', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(397, 46, 'DZ3.B1.03.01', '02', 30, '08.01', NULL, '6.7', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(398, 46, 'DZ3.B1.03.01', '03', 17, '05.01', NULL, '12.3', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(399, 46, 'DZ3.B1.03.01', '04', 18, '05.02', NULL, '13.1', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(400, 46, 'DZ3.B1.03.01', '05', 9, '03.01', NULL, '35.6', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(401, 46, 'DZ3.B1.03.01', '06', 27, '07.01', NULL, '1.8', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(402, 46, 'DZ3.B1.03.01', '07', 51, '14.01', NULL, '1.4', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(403, 46, 'DZ3.B1.03.01', '08', 60, '17.01', NULL, '5.6', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(404, 47, 'DZ3.B1.03.02', '01', 40, '11.01', NULL, '4.9', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(405, 47, 'DZ3.B1.03.02', '02', 30, '08.01', NULL, '5.1', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(406, 47, 'DZ3.B1.03.02', '03', 9, '03.01', NULL, '27.6', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(407, 47, 'DZ3.B1.03.02', '04', 17, '05.01', NULL, '11.8', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(408, 47, 'DZ3.B1.03.02', '05', 60, '17.01', NULL, '5.6', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(409, 48, 'DZ3.B1.03.03', '01', 40, '11.01', NULL, '11.6', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(410, 48, 'DZ3.B1.03.03', '02', 30, '08.01', NULL, '6.8', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(411, 48, 'DZ3.B1.03.03', '03', 17, '05.01', NULL, '15', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(412, 48, 'DZ3.B1.03.03', '04', 18, '05.02', NULL, '12.5', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(413, 48, 'DZ3.B1.03.03', '05', 9, '03.01', NULL, '33', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(414, 48, 'DZ3.B1.03.03', '06', 27, '07.01', NULL, '2.2', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(415, 48, 'DZ3.B1.03.03', '07', 60, '17.01', NULL, '5.6', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(416, 49, 'DZ3.B1.04.01', '01', 40, '11.01', NULL, '11', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(417, 49, 'DZ3.B1.04.01', '02', 30, '08.01', NULL, '7', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(418, 49, 'DZ3.B1.04.01', '03', 17, '05.01', NULL, '12.3', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(419, 49, 'DZ3.B1.04.01', '04', 18, '05.02', NULL, '13.1', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(420, 49, 'DZ3.B1.04.01', '05', 9, '03.01', NULL, '34.8', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(421, 49, 'DZ3.B1.04.01', '06', 27, '07.01', NULL, '1.8', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(422, 49, 'DZ3.B1.04.01', '07', 51, '14.01', NULL, '1.4', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(423, 49, 'DZ3.B1.04.01', '08', 60, '17.01', NULL, '7.3', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(424, 50, 'DZ3.B1.04.02', '01', 40, '11.01', NULL, '4.9', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(425, 50, 'DZ3.B1.04.02', '02', 30, '08.01', NULL, '5.1', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(426, 50, 'DZ3.B1.04.02', '03', 9, '03.01', NULL, '27.5', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(427, 50, 'DZ3.B1.04.02', '04', 17, '05.01', NULL, '11.8', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(428, 50, 'DZ3.B1.04.02', '05', 60, '17.01', NULL, '5.6', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(429, 51, 'DZ3.B1.04.03', '01', 40, '11.01', NULL, '11.6', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(430, 51, 'DZ3.B1.04.03', '02', 30, '08.01', NULL, '6.8', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(431, 51, 'DZ3.B1.04.03', '03', 17, '05.01', NULL, '15', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(432, 51, 'DZ3.B1.04.03', '04', 18, '05.02', NULL, '12.5', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(433, 51, 'DZ3.B1.04.03', '05', 9, '03.01', NULL, '33', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(434, 51, 'DZ3.B1.04.03', '06', 27, '07.01', NULL, '2.2', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(435, 51, 'DZ3.B1.04.03', '07', 60, '17.01', NULL, '5.6', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(436, 52, 'DZ3.B1.05.01', '01', 40, '11.01', NULL, '22.2', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(437, 52, 'DZ3.B1.05.01', '02', 27, '07.01', NULL, '2', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(438, 52, 'DZ3.B1.05.01', '03', 17, '05.01', NULL, '11.6', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(439, 52, 'DZ3.B1.05.01', '04', 18, '05.02', NULL, '15.7', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(440, 52, 'DZ3.B1.05.01', '05', 19, '05.03', NULL, '14', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(441, 52, 'DZ3.B1.05.01', '06', 20, '05.04', NULL, '12.6', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(442, 52, 'DZ3.B1.05.01', '07', 30, '08.01', NULL, '6.3', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(443, 52, 'DZ3.B1.05.01', '08', 31, '08.02', NULL, '4.7', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(444, 52, 'DZ3.B1.05.01', '09', 51, '14.01', NULL, '2.6', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(445, 52, 'DZ3.B1.05.01', '10', 43, '12.01', NULL, '12.5', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(446, 52, 'DZ3.B1.05.01', '11', 9, '03.01', NULL, '64.7', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(447, 52, 'DZ3.B1.05.01', '12', 66, '19.01', NULL, '20.4', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(448, 52, 'DZ3.B1.05.01', '13', 67, '19.02', NULL, '13.1', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(449, 52, 'DZ3.B1.05.01', '14', 68, '19.03', NULL, '7', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(450, 52, 'DZ3.B1.05.01', '15', NULL, '19.04', NULL, '6.7', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(451, 53, 'DZ3.B2.01.01', '01', 40, '11.01', NULL, '6.9', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(452, 53, 'DZ3.B2.01.01', '02', 30, '08.01', NULL, '4.7', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(453, 53, 'DZ3.B2.01.01', '03', 17, '05.01', NULL, '13.8', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(454, 53, 'DZ3.B2.01.01', '04', 9, '03.01', NULL, '36.3', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(455, 53, 'DZ3.B2.01.01', '05', 66, '19.01', NULL, '7.4', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(456, 53, 'DZ3.B2.01.01', '06', 69, '20.01', NULL, '30.9', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(457, 54, 'DZ3.B2.01.02', '01', 40, '11.01', NULL, '4.9', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(458, 54, 'DZ3.B2.01.02', '02', 30, '08.01', NULL, '5.4', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(459, 54, 'DZ3.B2.01.02', '03', 17, '05.01', NULL, '11.8', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(460, 54, 'DZ3.B2.01.02', '04', 9, '03.01', NULL, '26.8', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(461, 54, 'DZ3.B2.01.02', '05', 66, '19.01', NULL, '7.2', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(462, 54, 'DZ3.B2.01.02', '06', 69, '20.01', NULL, '47.8', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(463, 55, 'DZ3.B2.01.03', '01', 40, '11.01', NULL, '11.6', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(464, 55, 'DZ3.B2.01.03', '02', 30, '08.01', NULL, '6.8', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(465, 55, 'DZ3.B2.01.03', '03', 17, '05.01', NULL, '15.1', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(466, 55, 'DZ3.B2.01.03', '04', 18, '05.02', NULL, '12.5', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(467, 55, 'DZ3.B2.01.03', '05', 9, '03.01', NULL, '33.1', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(468, 55, 'DZ3.B2.01.03', '06', 27, '07.01', NULL, '2.2', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(469, 55, 'DZ3.B2.01.03', '07', 66, '19.01', NULL, '7.2', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(470, 55, 'DZ3.B2.01.03', '08', 69, '20.01', NULL, '28.6', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(471, 55, 'DZ3.B2.01.03', '09', 70, '20.02', NULL, '31.6', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(472, 56, 'DZ3.B2.02.01', '01', 40, '11.01', NULL, '11', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(473, 56, 'DZ3.B2.02.01', '02', 30, '08.01', NULL, '6.7', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(474, 56, 'DZ3.B2.02.01', '03', 17, '05.01', NULL, '12.3', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(475, 56, 'DZ3.B2.02.01', '04', 18, '05.02', NULL, '13.3', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(476, 56, 'DZ3.B2.02.01', '05', 9, '03.01', NULL, '35.6', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(477, 56, 'DZ3.B2.02.01', '06', 27, '07.01', NULL, '1.8', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(478, 56, 'DZ3.B2.02.01', '07', 51, '14.01', NULL, '1.4', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(479, 56, 'DZ3.B2.02.01', '08', 60, '17.01', NULL, '5.6', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(480, 57, 'DZ3.B2.02.02', '01', 40, '11.01', NULL, '4.9', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(481, 57, 'DZ3.B2.02.02', '02', 30, '08.01', NULL, '5.4', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(482, 57, 'DZ3.B2.02.02', '03', 9, '03.01', NULL, '26.8', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(483, 57, 'DZ3.B2.02.02', '04', 17, '05.01', NULL, '11.8', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(484, 57, 'DZ3.B2.02.02', '05', 66, '19.01', NULL, '6.5', '2014-04-10 13:06:09', '2014-04-10 13:06:09');
INSERT INTO `unit_floor_areas` (`id`, `unit_id`, `unit_xml_id`, `room_no`, `room_id`, `room_xml_id`, `room_code`, `floor_area`, `created_at`, `updated_at`) VALUES
(485, 58, 'DZ3.B2.02.03', '01', 40, '11.01', NULL, '11.6', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(486, 58, 'DZ3.B2.02.03', '02', 30, '08.01', NULL, '6.8', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(487, 58, 'DZ3.B2.02.03', '03', 17, '05.01', NULL, '15', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(488, 58, 'DZ3.B2.02.03', '04', 18, '05.02', NULL, '12.5', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(489, 58, 'DZ3.B2.02.03', '05', 9, '03.01', NULL, '33.1', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(490, 58, 'DZ3.B2.02.03', '06', 27, '07.01', NULL, '2.2', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(491, 58, 'DZ3.B2.02.03', '07', 66, '19.01', NULL, '5.6', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(492, 59, 'DZ3.B2.03.01', '01', 40, '11.01', NULL, '11', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(493, 59, 'DZ3.B2.03.01', '02', 30, '08.01', NULL, '6.7', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(494, 59, 'DZ3.B2.03.01', '03', 17, '05.01', NULL, '12.3', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(495, 59, 'DZ3.B2.03.01', '04', 18, '05.02', NULL, '13.1', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(496, 59, 'DZ3.B2.03.01', '05', 9, '03.01', NULL, '35.6', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(497, 59, 'DZ3.B2.03.01', '06', 27, '07.01', NULL, '1.8', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(498, 59, 'DZ3.B2.03.01', '07', 51, '14.01', NULL, '1.4', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(499, 59, 'DZ3.B2.03.01', '08', 60, '17.01', NULL, '5.9', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(500, 60, 'DZ3.B2.03.02', '01', 40, '11.01', NULL, '4.9', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(501, 60, 'DZ3.B2.03.02', '02', 30, '08.01', NULL, '5.1', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(502, 60, 'DZ3.B2.03.02', '03', 9, '03.01', NULL, '27.5', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(503, 60, 'DZ3.B2.03.02', '04', 17, '05.01', NULL, '11.8', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(504, 60, 'DZ3.B2.03.02', '05', 60, '17.01', NULL, '5.6', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(505, 61, 'DZ3.B2.03.03', '01', 40, '11.01', NULL, '11.6', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(506, 61, 'DZ3.B2.03.03', '02', 30, '08.01', NULL, '6.8', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(507, 61, 'DZ3.B2.03.03', '03', 17, '05.01', NULL, '15', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(508, 61, 'DZ3.B2.03.03', '04', 18, '05.02', NULL, '12.5', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(509, 61, 'DZ3.B2.03.03', '05', 9, '03.01', NULL, '33', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(510, 61, 'DZ3.B2.03.03', '06', 27, '07.01', NULL, '2.2', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(511, 61, 'DZ3.B2.03.03', '07', 60, '17.01', NULL, '5.6', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(512, 62, 'DZ3.B2.04.01', '01', 40, '11.01', NULL, '11', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(513, 62, 'DZ3.B2.04.01', '02', 30, '08.01', NULL, '7', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(514, 62, 'DZ3.B2.04.01', '03', 17, '05.01', NULL, '12.3', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(515, 62, 'DZ3.B2.04.01', '04', 18, '05.02', NULL, '13.1', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(516, 62, 'DZ3.B2.04.01', '05', 9, '03.01', NULL, '35.6', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(517, 62, 'DZ3.B2.04.01', '06', 27, '07.01', NULL, '1.8', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(518, 62, 'DZ3.B2.04.01', '07', 51, '14.01', NULL, '1.4', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(519, 62, 'DZ3.B2.04.01', '08', 60, '17.01', NULL, '5.6', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(520, 63, 'DZ3.B2.04.02', '01', 40, '11.01', NULL, '4.9', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(521, 63, 'DZ3.B2.04.02', '02', 30, '08.01', NULL, '5.1', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(522, 63, 'DZ3.B2.04.02', '03', 9, '03.01', NULL, '27.6', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(523, 63, 'DZ3.B2.04.02', '04', 17, '05.01', NULL, '11.8', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(524, 63, 'DZ3.B2.04.02', '05', 60, '17.01', NULL, '5.6', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(525, 64, 'DZ3.B2.04.03', '01', 40, '11.01', NULL, '11.6', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(526, 64, 'DZ3.B2.04.03', '02', 30, '08.01', NULL, '6.8', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(527, 64, 'DZ3.B2.04.03', '03', 17, '05.01', NULL, '15', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(528, 64, 'DZ3.B2.04.03', '04', 18, '05.02', NULL, '12.5', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(529, 64, 'DZ3.B2.04.03', '05', 9, '03.01', NULL, '33', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(530, 64, 'DZ3.B2.04.03', '06', 27, '07.01', NULL, '2.2', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(531, 64, 'DZ3.B2.04.03', '07', 60, '17.01', NULL, '5.5', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(532, 65, 'DZ3.B2.05.01', '01', 40, '11.01', NULL, '22.2', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(533, 65, 'DZ3.B2.05.01', '02', 27, '07.01', NULL, '2', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(534, 65, 'DZ3.B2.05.01', '03', 17, '05.01', NULL, '11.6', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(535, 65, 'DZ3.B2.05.01', '04', 18, '05.02', NULL, '15.7', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(536, 65, 'DZ3.B2.05.01', '05', 19, '05.03', NULL, '14', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(537, 65, 'DZ3.B2.05.01', '06', 20, '05.04', NULL, '12.6', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(538, 65, 'DZ3.B2.05.01', '07', 30, '08.01', NULL, '6.3', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(539, 65, 'DZ3.B2.05.01', '08', 31, '08.02', NULL, '4.7', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(540, 65, 'DZ3.B2.05.01', '09', 51, '14.01', NULL, '2.6', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(541, 65, 'DZ3.B2.05.01', '10', 43, '12.01', NULL, '12.5', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(542, 65, 'DZ3.B2.05.01', '11', 9, '03.01', NULL, '65.3', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(543, 65, 'DZ3.B2.05.01', '12', 66, '19.01', NULL, '20.4', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(544, 65, 'DZ3.B2.05.01', '13', 67, '19.02', NULL, '13.1', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(545, 65, 'DZ3.B2.05.01', '14', 68, '19.03', NULL, '7', '2014-04-10 13:06:09', '2014-04-10 13:06:09'),
(546, 65, 'DZ3.B2.05.01', '15', NULL, '19.04', NULL, '6.7', '2014-04-10 13:06:09', '2014-04-10 13:06:09');

-- --------------------------------------------------------

--
-- Table structure for table `unit_types`
--

CREATE TABLE IF NOT EXISTS `unit_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `xml_id` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unit_types_xml_id_unique` (`xml_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `unit_types`
--

INSERT INTO `unit_types` (`id`, `xml_id`, `description`, `created_at`, `updated_at`) VALUES
(1, 'K-ADD ON', 'Add on', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(2, 'K-BALKON/TERASA', 'Balkón/terasa', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(3, 'K-HOTEL', 'Hotelova jednotka', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(4, 'K-KANCELAR', 'Kancelář', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(5, 'K-NAJEM PRED STAVBOU', 'Objekt určený k demolici/přestavbě', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(6, 'K-OBCHODNI PROSTOR', 'Obchodní prostor', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(7, 'K-PARKOVACI STANI', 'Parkovací stání', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(8, 'K-PASAZ', 'Pronájem jednotky v pasazi', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(9, 'K-RESTAURACE', 'Restaurace', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(10, 'K-SKLAD', 'Sklad', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(11, 'K-TECHNICKA MISTNOST', 'Technická místnost', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(12, 'R-ATELIER', 'Atelier', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(13, 'R-BYT', 'Byt', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(14, 'R-CONTINGENCY-ATEL', 'Slevovy polstar atelier', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(15, 'R-CONTINGENCY-BYT', 'Slevovy polstar byt', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(16, 'R-CONTINGENCY-KANCEL', 'Slevovy polstar kancelar', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(17, 'R-CONTINGENCY-OBCH', 'Slevovy polstar obchodni prostor', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(18, 'R-CONTINGENCY-PARCEL', 'Slevovy polstar parcela', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(19, 'R-CONTINGENCY-PARK', 'Slevovy polstar parkovaci stani', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(20, 'R-CONTINGENCY-SKLEP', 'Slevovy polstar sklep', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(21, 'R-CONTINGENCY-VILA', 'Slevovy polstar vila', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(22, 'R-KANCELAR', 'Kancelář', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(23, 'R-NAJEM PRED STAVBOU', 'Objekt určený k demolici/přestavbě', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(24, 'R-OBCHODNI PROSTOR', 'Obchodní prostor', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(25, 'R-PARCELA', 'Parcela', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(26, 'R-PARKOVACI STANI', 'Parkovací stání', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(27, 'R-PILIRE A PRIPOJKY', 'Pilíře a přípojky k parcelám', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(28, 'R-PRISTAVNI MOLO', 'Přístavní molo', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(29, 'R-SITE', 'Prodavane site', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(30, 'R-SKLEP', 'Sklep', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(31, 'R-VILA', 'Vila', '2014-04-10 13:06:08', '2014-04-10 13:06:08'),
(32, 'R-ZAHRADA', 'Zahrada', '2014-04-10 13:06:08', '2014-04-10 13:06:08');

-- --------------------------------------------------------

--
-- Table structure for table `xmlimages`
--

CREATE TABLE IF NOT EXISTS `xmlimages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `svg` varchar(3000) NOT NULL,
  `img` varchar(255) NOT NULL,
  `imageable_id` int(11) NOT NULL,
  `xml_code` varchar(20) NOT NULL,
  `imageable_type` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=85 ;

--
-- Dumping data for table `xmlimages`
--

INSERT INTO `xmlimages` (`id`, `svg`, `img`, `imageable_id`, `xml_code`, `imageable_type`, `created_at`, `updated_at`) VALUES
(1, 'm 184.18605,395.58139 1.04651,-18.31395 58.08139,-7.84884 1.56977,-5.23255 17.7907,-1.56977 0.52325,4.18604 14.12791,-2.09302 0,-3.66279 23.02326,-3.13953 0.52325,4.18604 9.94186,-1.56976 0.52326,-4.18605 9.94186,-0.52326 0.52326,3.13954 37.15116,-3.66279 -1.04651,-3.66279 20.40697,-4.18605 4.18605,17.7907 31.39535,-3.66279 -0.52326,-4.18605 25.63954,-3.13953 -1.04651,-13.60466 36.6279,-4.18604 0.52326,4.18604 40.81395,-4.7093 0,7.84884 1.56977,-0.52326 3.66279,22.5 12.55814,-1.04651 4.25578,7.85503 1.47999,14.05991 2.95998,26.63984 5.91996,16.2799 3.69998,7.76995 3.69998,7.76996 7.39995,8.13995 6.65996,56.97965 -2.95998,1.84999 10.05301,19.83605 5.75581,0.26163 8.11046,59.91279 -8.37209,2.35465 -5.23256,1.56977 -5.49418,5.49419 -2.87791,3.66279 -2.86753,1.44255 -1.295,2.58998 -1.47999,0.185 -0.92499,2.03499 0.73999,3.69998 -0.73999,4.25497 -1.66499,3.88498 -1.29499,1.66499 -1.19925,2.61174 -0.39245,3.66279 -0.39244,1.56977 -0.78488,0.65407 -1.56977,1.96221 -1.83139,0.26163 -2.7471,0.9157 -0.39244,1.70058 -1.56977,1.30814 -1.43895,1.30814 -1.43895,0.91569 -0.78489,1.04652 -1.96221,1.17732 -0.26162,2.35465 -0.52326,1.04651 -1.17733,1.04652 -2.35465,0.52325 -1.17732,0.39244 c 0,0 -0.39244,1.43896 -0.9157,1.56977 -0.52326,0.13082 -2.87791,0.78489 -2.87791,0.78489 l -1.04651,4.18604 -1.43895,0.78489 -0.26163,2.74709 -2.09302,2.35465 0.39244,1.43895 -2.22384,1.30814 -43.20075,7.91261 -8.20913,-0.3254 -2.09303,-6.27907 -3.92441,-1.30814 0,9.94186 -59.91279,8.11047 -1.30814,-8.89535 -63.31396,19.36046 -7.06395,1.04652 -3.40116,-9.94186 -2.87791,-0.52326 -1.04651,1.56977 -0.78489,9.4186 -48.40116,7.32558 -25.63953,3.66279 -23.54652,4.18605 -23.28488,3.13954 0.52326,-9.68024 -0.52326,-2.35465 -2.87791,-2.09302 -3.13953,-0.52326 -1.56977,-1.83139 -2.09302,0.26163 -2.09303,1.56976 -3.66279,0.52326 -1.83139,-0.26163 -1.56977,0.78488 -4.97093,0.52326 -1.56977,-1.30814 -2.35465,-1.04651 -2.09302,-2.61628 -4.44768,0 -0.26162,-5.23256 -2.61628,-2.09302 -4.97093,1.04651 -5.49419,-0.26163 -3.13953,0.26163 -0.78489,-4.97093 -2.35465,-0.78488 -11.25,-20.40698 -7.32558,-17.26744 -0.52326,-4.7093 -3.66279,-4.70931 0.78489,-3.66279 -8.11047,-15.9593 0,-6.80233 -0.13081,-8.24127 -11.64244,-23.15407 -5.75582,-17.7907 -4.44767,-13.34303 -3.660377,-6.99901 21.459867,-4.06998 5.91997,-52.16968 -8.13995,-67.70958 16.2799,-1.11 1.47999,-14.05991 z', 'Z1roof.jpg', 2, 'DOCK Z1', 'Xml\\Building_object', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'm 744.99044,400.49916 -0.555,-14.61491 -0.88893,-13.58774 7.06396,-8.37209 0,-4.7093 -7.58721,-1.04652 -3.66279,-42.90697 -0.78489,-12.03489 11.51163,-13.60465 -2.09302,-43.69186 21.19186,-27.47093 -0.52326,-10.46512 6.80233,-7.06395 7.58721,0.52326 0,1.83139 4.97093,-5.23256 -6.5407,-0.26162 -0.26163,-4.70931 7.06395,-9.4186 3.6628,0 5.23255,-6.80233 0.52326,-4.7093 8.89535,-10.46511 6.5407,0.26162 7.06395,-10.46511 13.60465,2.09302 3.66279,-2.87791 13.0814,2.09303 0.26162,4.7093 28.51745,4.97093 13.60465,-17.00582 14.38953,2.87791 3.66279,-2.87791 7.84884,1.30814 0.52326,3.13954 20.40697,3.40116 2.35465,-2.09302 15.43605,2.35465 0,3.66279 19.09884,3.40116 2.61628,-2.61628 13.08139,2.09303 0.26163,3.66279 9.41862,1.56977 2.6163,-3.40117 19.0988,3.13954 0,4.44767 20.407,3.40117 2.3546,-2.61628 17.0058,2.09302 0.2617,3.92442 57.0349,10.72674 0,4.7093 -6.8024,10.46512 4.7093,0.52326 -0.2616,4.7093 17.5291,2.35465 2.3546,-3.40116 36.6279,6.54069 2.8779,-1.30813 2.8779,0.52325 3.1396,1.30814 1.5697,2.35465 8.8954,1.04651 -1.3081,13.0814 6.279,0 -1.8314,39.76744 8.1105,1.30814 2.3546,2.61628 12.8198,0.78488 1.3082,6.27907 -3.6628,39.24419 -9.9419,17.52907 -0.5233,5.49418 7.8489,0.78489 0.7849,4.44767 -1.0465,14.38954 -1.5698,17.7907 -8.1105,17.26744 0.2617,7.32558 12.2965,2.87791 -12.2965,30.08721 -14.9128,-1.8314 1.3081,15.43605 -2.3546,10.72674 -0.5233,9.15698 -9.157,17.52907 -7.3256,-0.52326 -0.5232,3.40116 -16.4826,-1.30814 -0.5232,-4.44767 -3.6628,-0.26163 0,4.7093 -23.2849,-2.35465 -1.0465,18.31396 -3.6628,0 -1.5698,6.54069 -9.4186,-0.52325 -2.6163,20.93023 -119.30229,-26.94767 -36.6279,-8.89535 -1.04652,-13.60465 -3.13953,0 -6.80233,10.46511 -87.38372,-18.83721 -2.61628,-13.60465 -7.84883,-3.13953 -7.32559,13.08139 -35.05813,-7.32558 -2.89258,-4.39737 0.74,-3.88497 -1.11,-4.99497 0.925,-0.925 0.185,-3.51497 -0.925,-2.40499 -7.02995,-2.77498 -2.95999,-1.84999 -3.88497,-0.555 -2.40499,-0.92499 -0.37,-3.32998 1.47999,-4.80997 0,-3.69998 -0.55499,-2.03499 2.58998,-2.95998 -3.51498,-4.99497 -2.21998,-3.14498 -0.74,-2.77498 -3.14498,-3.51498 -0.185,-4.06998 -4.25497,-0.185 -1.47999,-2.03498 -3.32998,0.185 -2.58999,-1.47999 -7.39995,0.73999 -3.69998,-1.29499 -4.43997,0.73999 -2.03499,0 z', 'Z2roof.jpg', 3, 'DOCK Z2', 'Xml\\Building_object', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'm 1211.8605,833.80814 70.1162,20.40698 6.5407,0.52325 0.7849,-6.5407 1.0465,-3.13953 1.5698,-1.04651 2.8779,0.26163 0,2.09302 -0.2616,9.68023 115.9011,15.17442 0.5233,-6.01744 1.5698,-3.13954 1.8314,-1.56976 2.093,0 5.2325,1.04651 1.5698,1.56976 1.5698,4.70931 0.2616,5.23256 117.4709,14.38953 0.7849,-5.75581 1.5698,-3.40117 1.3081,-1.83139 3.1396,0 1.0465,2.87791 0,4.97093 0,4.18604 75.8721,-2.35465 0.7849,8.37209 1.5697,-2.8779 4.1861,0.26162 0.2616,-2.61627 1.0465,-2.61628 2.3547,1.56976 2.8779,0.26163 3.6628,-0.26163 2.093,-2.61628 2.093,3.40117 0,4.7093 1.3081,2.35465 -1.5697,4.44768 1.5697,1.30814 1.8314,1.30813 39.7675,3.40117 3.9244,-2.61628 14.9128,0.78488 3.9244,-3.13953 2.3547,-3.13954 -1.3082,-3.13953 -0.7849,-3.40117 3.4012,-0.52325 3.4012,-2.09302 5.2325,0.26162 3.6628,0 1.3082,-3.40116 0.5232,-3.40116 2.6163,-2.35465 3.4011,-4.18605 4.1861,-1.8314 3.1395,-1.04651 2.6163,-2.61628 3.4012,-5.23255 3.1395,-1.8314 -0.7849,-3.13953 -0.2616,-3.13954 1.8314,-2.87791 3.1395,0 2.3547,0.52326 5.2325,-1.04651 3.6628,0 3.9244,1.04651 3.1396,-1.30814 3.6628,-1.04651 4.5785,2.09302 3.4011,1.56977 2.093,-0.13081 2.7471,1.30813 1.0466,1.70059 1.1773,2.48546 3.4011,-0.9157 0.6541,-2.48546 2.6163,-1.8314 3.1395,1.30814 1.5698,-2.48546 1.5698,-2.87791 3.1395,-0.52326 3.4012,1.56977 2.6162,-0.26163 5.7558,-15.17441 1.5698,-3.40117 -13.0814,-20.6686 5.2326,-14.91279 19.8837,1.30814 14.9128,-34.79651 -1.0465,-6.80233 -29.8256,-48.92442 -3.9244,-20.93023 0.7849,-7.32558 0,-1.30814 8.3721,-24.06977 2.8779,-7.06395 -24.5931,-36.36628 1.0465,-3.66279 -4.7093,-30.34884 -4.7093,-0.52326 -2.6162,-19.62209 -45.5233,-4.44767 0,-5.49419 -40.2907,-3.66279 -0.2616,4.18605 -38.9826,-4.44768 -0.7849,19.88372 -4.7093,-0.52325 0.2617,4.44767 -32.4419,-4.7093 0.2616,-3.92442 -16.7442,-1.8314 0.5233,4.70931 -12.2965,-1.30814 -0.2616,-4.18605 -7.3256,0 -0.7849,-25.37791 -21.9767,-1.04651 -0.2617,4.7093 -37.936,-4.44767 0,-5.49419 -17.5291,-0.78488 0.2616,3.92442 -16.2209,-1.56977 0.2616,-4.7093 -16.2209,-1.56977 0.2616,3.92442 -19.3604,-0.78488 -0.2617,-6.27907 -18.8372,-0.78489 -0.2616,3.92442 -18.5756,-1.30814 0,-5.23256 -14.9128,-0.52325 -0.2616,3.66279 -16.2209,-1.30814 -0.7849,-5.23256 -15.6977,-1.04651 -0.2616,3.92442 -38.7209,-2.87791 0.7848,-5.49418 -20.9302,-0.52326 -1.0465,21.45349 -6.0174,0 -0.5233,3.66279 -12.5581,-1.04651 0,-4.97093 -15.1745,-1.30814 0,4.18604 -30.0872,-3.92441 -0.2616,-3.92442 -6.2791,-0.26163 -0.2616,-20.66861 -36.6279,-1.56976 -0.5233,-4.97093 -36.8895,-3.13954 -0.2616,3.66279 -43.6919,-3.92442 -1.3081,18.57558 -3.1396,0 -0.7848,6.01745 -11.5117,-0.52326 -8.8953,49.44768 -38.7209,76.39534 0,37.93605 8.8953,0.52326 -1.3081,10.72674 -15.1745,21.19186 -0.7848,37.93605 23.5465,2.61628 -3.9244,77.96511 1.0465,4.18605 76.9186,6.27907 3.6628,1.56977 53.6337,5.75581 z', 'Z3roof.jpg', 4, 'DOCK Z3', 'Xml\\Building_object', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'm 523.25581,795.87209 173.72093,19.36047 133.95349,48.13953 7.32558,1.04651 8.89535,-30.87209 45.52326,5.75582 -1.04651,-29.82559 82.67442,-4.18604 72.73257,26.68604 10.9884,3.66279 -2.0931,55.46512 235.4652,-4.7093 145.9883,17.7907 -15.6977,56.51162 -378.8372,-47.61627 5.7559,-27.73256 -153.314,9.94186 -361.04651,-43.95349 z', 'Z1_1NP.jpg', 1, '01 NP', 'Xml\\Building_floor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'm 505.46512,730.98837 51.27907,4.7093 129.24418,45.52326 15.17442,2.61628 6.27907,-28.77907 185.75582,19.88372 -2.09303,-31.9186 28.77907,-1.56977 130.81398,39.76744 0,12.03488 173.1977,21.45349 -4.1861,29.30233 12.0349,2.09302 153.3139,-13.08139 71.1628,7.84883 -18.8372,64.36047 -147.0349,-18.31396 -233.8953,4.18605 0.5232,-30.34884 -8.372,-3.66279 -1.0466,-25.11628 -84.24415,-25.63953 -72.2093,4.18605 2.61628,28.25581 -45.52325,-5.23256 -8.89535,31.91861 -8.3721,-2.09303 -136.04651,-47.61628 -173.72093,-19.88372 z', 'Z1_2NP.jpg', 2, '02 NP', 'Xml\\Building_floor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'm 488.72093,660.34884 189.94186,19.88372 138.66279,48.13953 15.17442,0.52326 -2.61628,-2.61628 7.32558,-25.63954 49.18605,5.23256 0.52326,-11.51163 167.96509,-9.4186 -0.5232,39.76744 -1.5698,32.96512 179.4767,-3.66279 83.1977,-2.61628 156.4535,20.93023 5.2326,0 -20.9303,70.11628 -74.3023,-9.4186 -152.2674,12.03488 -8.8954,-0.52326 0.5233,-28.77907 -171.1047,-19.36046 1.0465,-15.17442 L 917.26744,742.5 l -26.16279,0.52326 1.04651,32.44186 -183.13953,-19.36047 -9.94186,27.73256 -8.89535,-0.52326 -135,-47.09302 -49.7093,-5.75581 z', 'Z1_3NP.jpg', 3, '03 NP', 'Xml\\Building_floor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'm 468.31395,574.01163 419.12791,45 3.13954,-6.80233 165.8721,17.7907 -1.0465,7.84884 445.8139,48.66279 -25.6395,87.38372 -163.2558,-22.5 -248.5465,6.80232 -13.0814,-0.52325 5.2325,-72.73256 -167.96508,10.46512 0.52325,10.98837 -50.23256,-5.75582 -7.84883,28.77907 -9.94186,1.04652 -144.94186,-50.23256 -187.32559,-19.36047 -10.46511,-68.02325 -5.75582,-1.56977 z', 'Z1_4NP.jpg', 4, '04 NP', 'Xml\\Building_floor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'm 469.15713,536.10333 160.20902,-380.35767 91.75944,7.39995 13.68991,-37.73977 125.05924,9.61995 3.69997,-8.50995 35.51979,3.69997 0.73999,9.61995 32.5598,2.58998 2.58999,-9.24994 48.4697,3.69997 -0.74,10.72994 23.67982,1.47999 1.48,-9.24994 21.4599,1.47999 -0.37,9.24994 83.2495,6.28996 1.48,-7.39995 44.7697,2.58998 -4.07,46.98971 79.5495,4.80997 0.37,-9.98993 58.8297,5.17996 1.85,-33.66979 83.2495,5.54997 -0.74,12.20992 95.4594,6.28996 0,18.49989 6.2899,0 4.44,159.09902 6.66,183.88888 13.3199,135.41917 L 819.91498,612.32286 467.30714,573.8431 z', 'Z1_5NP.jpg', 5, '05 NP', 'Xml\\Building_floor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'm 408.88889,762.05128 70.42735,9.57265 10.94017,32.13675 78.63248,12.3077 6.83761,-17.77778 28.03418,4.10256 9.57265,33.50428 102.56411,17.77777 9.57265,-38.2906 1.02564,-3.4188 220.8547,36.5812 8.54701,-13.33334 32.13675,-2.05128 92.99141,36.92308 209.2308,35.55556 -10.9402,38.97435 -430.08543,-75.21367 -6.49573,29.40171 -89.91453,-16.41026 -6.49572,-1.02564 -7.52137,-1.02564 -9.57265,-1.02564 -11.62393,-1.02564 -18.46154,0.34188 -38.63248,1.02564 -13.33333,2.05128 -16.75214,3.4188 -16.41025,1.70941 -11.28206,-1.36752 -31.11111,-6.15385 -16.41025,-3.07692 -9.23077,-1.70941 -2.39317,-6.49572 -5.1282,-3.07693 0,-3.76068 -0.34188,-4.44444 -3.07692,-1.02564 -1.36753,-3.76069 -5.81196,-2.05128 0,-5.81197 -1.7094,-5.47008 -3.41881,-0.34188 -10.59829,-3.07693 -0.34188,-3.4188 -10.59829,0 -10.59829,-1.02564 -10.25641,1.36752 0,-4.78632 4.44445,-3.76069 7.52136,0 2.73505,-4.10256 0,-2.73504 1.7094,-2.05129 -0.34188,-5.1282 -4.78633,-2.39316 -4.78632,-3.07693 -2.05128,-5.47008 -0.34188,-5.81197 -2.73505,-2.05128 -1.7094,-7.52137 -4.78632,-2.73504 -7.86325,-3.4188 -7.52137,2.73504 -9.57265,-2.05128 -8.20513,-0.68376 -5.47008,-2.39317 -6.49573,4.44445 -5.1282,-2.39316 -6.15385,-2.73505 -5.81197,1.02564 z', 'Z2_1NP.jpg', 6, '01 NP', 'Xml\\Building_floor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'm 391.11111,716.92308 207.86325,32.82051 -4.10256,16.41026 3.4188,17.09401 106.66667,15.7265 10.94017,-29.40171 113.50427,17.09402 4.78633,42.39316 111.45299,17.77778 10.25641,-36.92308 -0.68376,-3.4188 106.66662,-4.78633 24.6154,10.25641 -2.0513,15.7265 216.7522,34.87179 -10.2564,43.76069 -207.8633,-36.23932 -100.5128,-37.60684 -25.29914,1.36752 -8.20513,21.88035 -4.10256,-3.41881 -219.48718,-36.92308 -8.88889,38.97436 -104.61539,-19.82906 -10.94017,-41.02564 -25.29914,-4.78632 -8.20513,27.35043 -77.94872,-12.3077 L 480,770.94017 407.52137,760 z', 'Z2_2NP.jpg', 7, '02 NP', 'Xml\\Building_floor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'm 371.96581,669.05983 75.89744,11.62393 10.25641,31.45299 83.4188,12.99145 8.20513,-27.35042 25.98291,3.4188 12.99145,44.44445 110.08547,17.09401 12.30769,-39.65812 118.2906,18.46154 -2.73504,16.41026 1.36752,14.35897 118.97436,19.82906 7.52137,-37.60684 -0.68376,-12.99145 26.66666,0 108.03418,39.65812 224.9573,37.60684 -11.624,45.1282 -218.8034,-36.23931 2.7351,-15.7265 -23.9317,-9.57265 -5.47,-3.4188 -101.88038,8.20513 -7.52137,41.02564 -112.82051,-17.09402 -4.10257,-45.1282 -114.87179,-17.77778 -8.88889,33.50427 -107.35043,-18.46154 -4.78632,-17.09401 6.15384,-14.35898 -210.59829,-39.65812 z', 'Z2_3NP.jpg', 8, '03 NP', 'Xml\\Building_floor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'm 349.40171,617.09402 221.53846,34.18803 -5.47008,16.41026 7.52136,17.77777 112.82052,17.09402 10.94017,-30.08547 124.44444,17.77778 3.41881,45.1282 122.39316,19.1453 8.20513,-43.07692 140.85472,-8.88889 -3.4188,31.45299 233.1624,35.55556 -10.9402,49.23077 -226.3248,-35.55556 -103.24785,-43.07692 -29.40171,2.73504 -9.57265,49.91453 -118.97436,-20.51282 0.68376,-15.04273 2.73504,-16.41026 -121.7094,-19.1453 -10.25641,41.02564 -112.13675,-17.77778 -9.57265,-43.76068 -27.35043,-2.73504 -8.20513,26.66666 -84.78632,-13.67521 -9.57265,-32.13675 -75.89744,-10.94017 z', 'Z2_4NP.jpg', 9, '04 NP', 'Xml\\Building_floor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'm 365.81197,385.29914 33.50427,2.05129 -13.67521,75.21367 -8.20513,98.46154 577.09402,86.15385 156.58118,23.24786 233.1624,35.55556 -17.7778,67.6923 -233.1624,-40.34188 2.7351,-30.08547 -140.85472,6.83761 -8.88889,44.44444 -120.34188,-20.51282 -5.47009,-43.07692 -123.07692,-17.09402 -10.25641,28.71795 -115.55556,-17.09402 -5.47008,-17.09401 5.47008,-16.41026 -223.58974,-32.82051 -7.52137,-27.35043 34.8718,-79.31624 -11.62394,0 -23.93162,-69.74359 z', 'Z2_5NP.jpg', 10, '05 NP', 'Xml\\Building_floor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'm 1344.9573,706.66667 -246.8376,-36.92308 3.4188,-27.35043 -33.5043,-6.15384 -2.0513,33.50427 -4.7863,3.4188 -64.95728,-8.20513 2.05128,-38.97435 -32.82051,-5.47009 -8.20513,2.73504 -6.15385,23.24787 -462.22222,-69.74359 -111.45299,-15.7265 1.36752,-10.25641 -3.4188,-12.99145 13.67521,-71.79487 -2.73504,-4.78633 -23.24787,0 2.73505,-7.52137 2.05128,-4.78632 -28.03419,-4.78633 56.75214,-126.49572 4.10256,1.36752 10.94017,-24.61539 8.88889,1.36752 12.99145,-28.03418 -5.47008,-7.52137 17.09402,-36.92308 8.88888,-1.36752 15.7265,-37.60684 7.52137,0.68376 12.30769,-27.35042 133.33333,17.77777 8.20513,-26.66666 39.65812,4.78632 2.73487,-6.40173 17.8892,1.69222 0.96698,7.97761 48.34918,5.07667 2.90096,-5.8019 33.84442,4.10968 0.48349,7.97761 50.28315,5.8019 1.45048,-7.25237 29.493,3.62619 1.20873,6.76888 24.41634,3.38444 2.17571,-5.56015 44.96474,4.83492 -0.24175,7.49412 51.73363,6.76888 2.17571,-6.76888 38.43763,5.07666 -0.4835,7.25238 124.0156,16.19698 -3.6262,24.41633 116.2798,15.47174 0.2914,4.52449 51.2821,6.15384 2.3931,22.56411 23.9317,3.07692 4.1025,37.94872 15.3846,1.7094 -2.735,23.93162 12.6496,1.36753 0,44.78632 2.2109,8.17094 -5.8019,79.29266 31.9105,5.31841 -7.2524,87.99551 -32.8774,-5.8019 z', 'Z2_6NP.jpg', 11, '06 NP', 'Xml\\Building_floor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'm 307.98429,749.2916 12.57078,0.96698 128.60883,33.36094 12.08729,0.96698 6.76889,-20.30666 81.71012,10.63682 8.70285,-21.27364 123.29041,37.71237 41.5803,4.35142 143.11358,37.71236 9.18634,1.45048 5.31841,-20.30666 81.22663,10.15333 1.45047,21.27364 163.90371,-2.41746 38.1959,4.83492 146.0145,-8.21936 -0.4835,22.72411 32.394,3.86794 0,25.62506 87.9955,-13.53777 59.4695,8.21936 0.9669,6.2854 -4.3514,2.41746 -8.2193,-1.93397 -7.7359,3.86793 0.967,6.2854 3.8679,3.38444 2.4175,5.31841 -7.2524,-0.96698 -3.3845,2.41746 -1.4504,3.86793 0.967,3.38444 -6.2854,3.86794 0.9669,5.31841 -164.3872,-18.37269 1.934,-26.10856 -143.5971,8.70285 -452.54831,-53.66759 -14.98825,-1.93396 -120.38946,-38.19586 -8.21936,22.24063 -234.01004,-24.1746 z', 'Z3_1NP.jpg', 12, '01 NP', 'Xml\\Building_floor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'm 286.71065,694.17353 115.07105,10.15333 86.54504,30.94347 8.70285,0 5.31841,-18.37268 31.42697,3.38444 134.41072,-9.66984 4.35143,26.59205 461.25118,51.73363 44.4813,4.35142 3.3844,-24.17459 140.2126,41.09681 90.413,10.63682 0.967,20.30665 153.2669,-2.41746 28.0425,2.41746 -12.5708,32.87745 -3.3844,-5.31841 -3.3845,-5.80191 -8.7028,0 -2.901,-6.76888 -6.2854,3.38444 -4.8349,-1.93397 -9.6698,2.41746 0,3.86794 -8.7029,1.93397 -2.4174,-4.35143 -6.2854,3.86793 -5.8019,0 -1.934,-3.86793 -7.2524,2.90095 -5.8019,2.90095 -0.9669,4.83492 1.9339,3.38444 -1.4505,4.83492 -8.7028,3.38444 -8.2194,0 -58.019,-5.31841 -80.7431,13.53777 -5.3184,-1.45047 0,-23.20761 -33.361,-4.35143 0.967,-21.75713 -146.0145,7.25238 -39.6463,-4.83492 -161.00282,1.45048 -1.93396,-21.27364 -81.22663,-8.70286 -5.31841,20.79015 -153.7504,-39.16283 -39.64633,-4.83492 -123.29041,-33.84443 -8.70285,16.43872 -83.16059,-10.15333 -5.80191,22.24063 -10.15332,-0.96699 -132.47676,-35.2949 -11.12031,0 z', 'Z3_2NP.jpg', 13, '02 NP', 'Xml\\Building_floor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'm 240.68376,578.80342 22.5641,54.70085 10.94017,-0.68376 147.00855,37.60684 3.41881,-0.68376 8.20512,-18.46154 89.57265,8.88889 4.78633,-24.61539 135.38461,41.02565 45.12821,4.10256 160.68376,39.65812 6.15385,-20.51282 87.52136,10.25641 -0.68376,23.24786 177.09398,-2.73504 47.8633,3.4188 153.8461,-8.20512 -4.7863,28.71794 35.5556,4.10257 -0.6838,18.46154 11.6239,1.36752 83.4188,-12.30769 153.1624,17.77777 -23.2478,56.75214 -29.4017,-3.4188 -153.1624,4.78632 1.3675,-21.19658 -90.2564,-10.25641 -140.8547,-41.02564 -6.1539,25.29914 -506.66663,-59.48718 -4.10256,-23.24786 -133.33334,7.52137 -30.76923,-2.05128 -6.8376,19.1453 -7.52137,0 -88.20513,-32.13676 -115.55556,-13.67521 -9.57265,-29.40171 -24.61538,-1.36752 -24.61538,-61.53846 z', 'Z3_3NP.jpg', 14, '03 NP', 'Xml\\Building_floor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'm 230.42735,550.08547 268.71795,30.76923 14.35897,-4.10256 132.64958,13.67521 -1.36752,4.10256 291.96581,32.13676 262.56406,28.03418 1.3676,-4.10256 149.0598,16.41026 1.3675,6.15384 299.4872,31.45299 -33.5043,78.63248 -151.7949,-17.77778 -92.3076,10.94018 -3.4188,-19.1453 -36.9231,-4.78633 7.5213,-29.40171 -160.6837,12.30769 -43.0769,-5.47008 -173.67526,3.4188 -0.68376,-24.61538 -88.20512,-9.57265 -2.73505,22.5641 -164.10256,-41.02564 -43.07693,-4.78632 -131.28205,-38.97436 -14.35897,24.61538 -84.10257,-10.25641 -10.94017,21.19658 -148.37606,-39.65812 -12.3077,-0.68376 z', 'Z3_4NP.jpg', 15, '04 NP', 'Xml\\Building_floor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'm 643.04412,596.50818 555.04858,59.95299 0,-6.76889 152.7834,17.40571 0,6.76888 299.765,30.94348 -21.2737,-234.01004 0,-8.70285 1.934,-22.24063 -5.8019,0 -5.8019,-52.21711 2.9009,-5.8019 -2.9009,-57.05204 -6.7689,-2.90095 -3.8679,-40.61331 -3.868,1.93397 -81.2266,-7.73587 -0.967,-7.73587 -73.9742,-7.25238 -0.967,8.70285 -73.0073,-7.73587 -0.967,38.19586 -13.5377,0.48349 0,16.92221 -63.3375,-6.76888 0.967,-15.95523 -27.0755,-3.38445 -2.4175,18.37269 -25.625,-3.38444 1.4504,-17.8892 -12.0873,-0.48349 4.3515,-45.44823 -36.7454,-3.38444 -1.934,8.70285 -73.4907,-8.21936 0.4835,-7.73587 -30.46,-2.90095 -0.4835,8.70285 -32.394,-3.86793 1.934,-7.25238 -27.559,-3.38444 -0.4835,7.73587 -36.26191,-2.41746 0.48349,-8.70285 -33.36094,-2.41746 -0.96698,8.21936 -36.26189,-3.38445 1.93397,-8.21936 -28.04253,-1.93396 -0.96698,7.25237 -30.45998,-3.38444 0,-8.21936 -29.493,-2.41746 -1.45048,7.73587 -67.68885,-5.31841 -1.45048,-8.21936 -35.77839,-3.38444 -14.50476,43.99775 -11.12031,0 -2.41746,5.8019 -22.24062,-1.93396 -0.4835,-6.76889 -26.10855,-2.41746 -2.90095,6.76889 -55.11807,-3.86794 -1.45048,-8.70285 -12.08729,-0.96698 17.4057,-35.7784 -69.13933,-6.28539 0,-8.21936 -68.17234,-6.2854 -2.90095,9.18635 -74.94124,-6.76889 -17.4057,35.29491 -8.70285,-0.4835 -25.62507,51.73363 3.38444,7.73587 -22.24062,44.96474 -8.21936,-0.4835 -9.18635,22.24063 2.90095,8.70285 -31.42696,61.40346 1.45047,7.25238 5.8019,-0.48349 3.86794,12.57078 -51.25013,99.11583 3.86793,9.18634 -8.70285,18.85618 273.17287,28.52602 9.66984,-27.07554 4.83492,24.65808 131.50977,12.0873 z', 'Z3_5NP.jpg', 16, '05 NP', 'Xml\\Building_floor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'm 881.36752,861.88034 -335.72649,-38.97436 54.01709,-149.05983 231.79487,26.66667 11.62393,-49.23077 70.42735,8.20513 -8.20512,49.91453 8.88889,0.68376 z', '', 1, 'DB1.B1.01.01', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'm 1061.1966,491.28205 353.5043,35.55556 -0.6838,175.72649 -380.1709,-38.97436 z', '', 2, 'DB1.B1.01.03', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'm 1154.8718,894.70085 261.1966,31.453 -0.6838,-214.0171 -243.4188,-27.35043 z', '', 3, 'DB1.B1.01.04', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'm 516.23932,766.15385 -11.62393,-118.2906 3.4188,-4.78633 50.59829,6.15385 17.09402,-51.28205 252.30769,25.9829 10.25641,-41.7094 82.05128,8.88889 -8.88889,42.39316 12.99146,1.36752 -36.92308,173.67522 z', '', 4, 'DB1.B1.02.01', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'm 617.4359,389.40171 3.4188,-32.82051 140.17094,31.45299 105.29915,8.88889 4.78632,-19.82906 126.49573,34.18803 61.53846,4.10256 -34.188,185.98291 -221.5385,-25.29914 -11.62393,44.44444 -218.80342,-21.88034 12.3077,-27.35043 z', '', 5, 'DB1.B1.02.02', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'm 1098.8034,398.97436 131.9658,34.87179 56.7522,4.78633 2.0513,-22.5641 152.4786,38.29059 -1.3675,116.23932 17.094,70.42735 -421.8804,-46.49573 28.0342,-179.1453 32.8205,4.78633 z', '', 6, 'DB1.B1.02.03', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'm 1459.1453,649.23077 22.5641,93.67521 -36.9231,-2.73504 3.4188,133.33333 -387.6923,-47.86324 36.2393,-226.32479 362.3932,40.34188 z', '', 7, 'DB1.B1.02.04', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'm 536.75214,535.72649 284.44444,32.13676 13.67522,-49.23077 84.78632,8.20513 -9.57265,39.65812 12.30769,2.05128 -34.18803,174.35897 -389.05983,-47.86325 30.08547,-75.89743 z', '', 8, 'DB1.B1.03.01', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'm 1073.5043,340.8547 63.5897,14.35897 86.8376,8.20513 4.1026,-21.88034 171.6239,41.02564 0,-4.10256 56.0684,6.15384 0.6838,63.58975 41.0256,91.62393 -36.2393,-3.4188 -1.3675,37.60683 -421.1966,-44.44444 z', '', 9, 'DB1.B1.03.03', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'm 1110.4274,543.93162 352.1367,38.2906 0,47.86325 41.7094,123.76068 -37.6068,-2.73504 0.6837,56.75214 -400,-46.49573 31.453,-218.11966 z', '', 10, 'DB1.B1.03.04', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'm 875.12019,657.42815 -358.26744,-40.61331 -4.35142,11.6038 -32.87745,-3.86793 -8.21936,-117.00502 2.90095,-7.25238 52.70061,5.8019 18.85618,-44.96474 273.65637,26.10856 10.63682,-42.06379 77.84218,7.73587 -10.63682,47.86569 23.6911,0.96699 -34.81141,156.65135 z', '', 11, 'DB1.B1.04.01', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'm 600.49684,214.06616 147.94849,30.45998 113.13709,10.15333 3.38444,-19.82317 13.05428,0.4835 -0.96698,1.93396 122.80692,31.42697 0,4.83492 67.20532,6.76888 -31.4269,175.50753 -241.26244,-23.2076 -14.98825,49.79965 -216.12084,-20.30665 10.63682,-89.92948 z', '', 12, 'DB1.B1.04.02', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'm 1119.2836,259.51439 127.6418,33.84442 0.4835,-4.83491 62.3704,6.76888 1.934,-22.72411 161.4863,38.67934 3.8679,116.03804 28.526,72.04028 -463.1851,-43.03077 29.9765,-182.75991 33.3609,3.38444 2.4174,-19.33967 z', '', 13, 'DB1.B1.04.03', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 'm 1495.9237,507.54569 25.625,94.76439 -38.6793,-2.90095 2.4175,135.37771 -418.2205,-47.86569 19.8232,-135.37771 3.8679,1.45048 13.5378,-90.41297 391.6284,36.74538 z', '', 14, 'DB1.B1.04.04', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'm 742.64343,184.57315 120.38946,11.12032 2.41746,-5.80191 162.93675,15.47174 -0.967,5.8019 79.7762,7.73587 1.4504,-6.28539 44.4813,3.38444 -6.2854,38.67935 80.7431,7.25238 0,-3.38445 58.5025,6.2854 -0.4835,-35.29491 81.2267,5.80191 0.4835,8.21936 88.479,7.25237 -1.4505,21.27364 9.1863,0.4835 2.901,96.21487 -6.7689,-0.96699 0,20.30666 7.2524,0.48349 0.967,43.51427 -6.7689,-0.96699 0,53.66759 7.7358,0.96699 1.934,40.61331 -8.2194,-0.48349 2.4175,73.49075 8.2194,0.4835 -1.4505,15.47173 -99.5993,-9.66983 0,6.28539 -30.46,-4.35143 0.967,-5.8019 -31.9105,-3.38444 0,-7.73587 -26.592,-3.38444 0.4835,9.18634 -22.7242,-2.90095 1.4505,-17.4057 8.7029,0 4.8349,-50.76664 -180.826,-17.8892 13.5378,-126.67486 -188.0783,-19.33967 -43.51426,190.49578 -29.493,-4.35143 1.45047,-7.25238 -101.04979,-10.15333 -1.93396,8.21936 -73.00727,-6.76888 2.90095,-8.70285 -141.6631,-14.02127 24.17459,-62.37044 -7.25237,-1.45048 21.75713,-51.25013 8.70285,0.48349 21.75713,-58.50251 83.64409,8.21936 15.47173,-42.54728 -9.18634,-1.45047 16.43872,-43.51426 9.18635,0.48349 z', '', 15, 'DB1.B1.05.01', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'm 1087.5214,668.03419 26.6666,-145.29915 -6.8376,-0.68376 1.0257,-4.44444 -101.1966,-14.70086 -1.3675,4.10257 -95.04277,-13.33334 1.02564,-5.1282 -101.88034,-15.38462 -1.7094,5.81197 -40.34188,-5.81197 0,7.52137 -43.07692,144.61538 298.46157,46.83761 3.0769,-12.99145 z', '', 16, 'DB2.B1.01.02', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'm 638.97436,813.67521 47.17949,-147.35042 202.73504,31.45299 -32.82051,122.39316 -17.09402,-3.4188 -1.02564,5.1282 -61.53846,-11.28205 0.68376,-3.4188 -19.1453,-3.41881 -6.15385,28.03419 -19.48718,-3.07692 -1.36752,5.1282 -75.55555,-12.99145 1.7094,-5.1282 z', '', 17, 'DB2.B1.01.03', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'm 627.35043,811.28205 -148.37607,-23.58974 -3.07692,-3.07693 -3.07693,-0.34188 7.86325,-69.74359 6.83761,-0.34188 1.36752,-15.04273 -24.95727,-2.39316 5.12821,-17.4359 -5.81197,-0.68376 38.97436,-99.1453 5.12821,-0.34188 14.35897,-38.63248 -3.76068,-0.34188 22.5641,-61.53846 4.78633,0.68376 14.01709,-36.92308 96.06838,12.99145 2.05128,-3.4188 103.93162,14.70086 -1.36752,4.78632 3.76069,0.34188 -47.86325,158.63248 22.5641,3.07692 -9.57265,34.8718 -50.59829,-8.20513 z', '', 18, 'DB2.B1.01.04', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'm 1242.4524,868.3613 26.6398,-80.65951 -6.6599,-0.74 8.1399,-19.23988 26.6399,5.17997 2.2199,-3.69998 2.96,-0.73999 5.92,-59.93964 -6.66,0 11.84,-103.59936 4.4399,-0.74 4.44,-39.95975 -5.92,0 7.4,-61.41963 -65.1196,-9.61994 -2.96,11.83993 -8.1399,-0.74 -122.1091,-18.17887 -28.7791,152.7907 34.5349,5.75581 -36.6279,200.93024 z', '', 19, 'DB2.B1.02.01', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'm 824.12791,442.15116 111.97674,16.74419 3.13954,-11.51163 29.82558,4.7093 5.75581,-24.06976 107.79072,14.65116 -4.1861,24.06977 42.3838,6.80232 -2.0931,11.51163 -1.5697,-1.04651 -26.1628,136.56976 -63.8372,-8.89534 -2.6163,13.60465 -308.19769,-46.56977 49.7093,-154.88372 52.32558,6.27907 -4.18604,11.51163 z', '', 20, 'DB2.B1.02.02', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'm 624.76744,803.72093 75.8721,12.03488 9.94186,-32.96511 85.81395,13.60465 3.13953,-14.65116 149.65117,26.16279 5.75581,-24.06977 -4.7093,-0.52326 28.77907,-117.73256 -115.11628,-14.65116 -2.09302,5.23256 -76.91861,-13.0814 3.13954,-3.66279 -110.40698,-18.83721 -5.23256,16.74419 5.75582,1.04651 -19.36047,47.61628 -3.66279,0 -27.2093,83.19768 4.7093,2.09302 -10.46512,32.44186 z', '', 21, 'DB2.B1.02.03', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'm 499.18605,770.23256 8.37209,-20.93023 -93.13953,-14.12791 9.94186,-29.30233 -6.27907,-1.04651 16.74418,-40.2907 5.75582,1.04651 13.08139,-32.96511 -4.18605,-1.04651 38.19768,-102.03489 6.80232,1.56977 6.27907,-18.83721 26.1628,4.18605 10.46511,-17.7907 -4.18605,-2.61628 62.26745,-97.32558 77.96511,10.98837 8.89535,-22.5 81.62791,10.46512 -6.80233,23.54651 1.04652,3.13953 -50.23256,158.02326 24.06976,4.18605 -10.46511,35.05814 -51.27907,-7.84884 -50.23256,154.36046 -60.69767,-9.4186 -7.84884,22.5 z', '', 22, 'DB2.B1.02.04', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'm 1134.359,399.65812 90.2564,10.94017 -4.1026,25.29914 56.0684,8.88889 17.7778,112.13676 30.0854,5.47008 -9.5726,80 36.9231,6.83761 -2.7351,60.8547 -39.6581,-5.47009 -12.9914,127.17949 -19.1453,-3.4188 -1.3676,-15.04274 -10.2564,-1.36752 -3.4188,21.19658 -87.5213,-14.35897 3.4188,-20.51282 -12.3077,-1.36752 -0.6838,15.04273 -63.5897,-10.94017 33.5042,-201.7094 -38.2906,-5.47009 z', '', 23, 'DB2.B1.03.01', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 'm 649.57265,714.87179 120.34188,19.82906 -2.73504,12.3077 90.94017,15.04273 -10.25641,38.2906 86.15385,14.35897 45.81196,-196.92307 -313.84615,-47.17949 -49.23077,152.47863 28.71795,4.78633 z', '', 24, 'DB2.B1.03.03', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'm 441.7094,695.04273 15.04274,-90.94017 -27.35043,-2.73504 8.20513,-17.09402 -7.52137,-1.36752 42.39316,-101.88034 5.47009,0 17.77778,-40.34188 -7.52137,0 26.66667,-65.64103 6.15384,2.05129 15.04274,-37.60684 86.8376,12.99145 -4.10256,11.62393 10.94017,1.36752 2.05128,-2.73504 114.8718,16.41026 3.4188,4.78632 -49.23077,151.11111 24.61539,2.73505 -11.62394,34.87179 -54.01709,-8.20513 -54.01709,155.89744 z', '', 25, 'DB2.B1.03.04', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'm 1136.4103,381.88034 138.1196,17.77778 2.0513,-12.30769 71.1111,10.94017 -30.0855,278.2906 -15.7265,-2.05129 -34.8718,104.61539 -166.8376,-27.35043 41.0257,-201.7094 -38.9744,-4.78632 z', '', 26, 'DB2.B1.04.01', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'm 702.90598,478.2906 51.28205,-160.68376 54.70086,6.8376 -4.10256,10.25641 129.23076,18.46154 2.05129,-10.94017 34.18803,3.41881 6.83761,-24.61539 114.18808,15.04274 -6.1539,25.9829 45.812,6.15385 -30.7693,153.84615 -58.8034,-10.25641 -9.5726,-1.36752 -2.0513,14.35897 z', '', 27, 'DB2.B1.04.02', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'm 978.46154,569.23077 -35.55556,157.26496 -33.50427,-5.47009 1.36752,-14.35897 -127.17949,-19.82906 -3.4188,14.35897 -87.52137,-13.67521 -15.04273,45.1282 -85.47009,-13.67521 16.41026,-43.07692 -4.10257,0 L 659.1453,520 z', '', 28, 'DB2.B1.04.03', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'm 593.50427,670.42735 -62.90598,-9.57265 -10.25641,30.08547 -56.06838,-10.25641 11.62394,-27.35043 -101.19659,-14.35897 12.99146,-30.08547 -7.52137,0 18.46154,-45.81197 6.83761,2.73505 12.99145,-34.18804 -7.52137,-2.05128 45.12821,-102.5641 5.47008,-1.36752 8.20513,-17.09402 25.98291,3.4188 80,-120.34188 77.94871,10.94017 11.62394,-23.24786 86.15384,10.94017 -7.52137,24.61538 6.83761,0.68377 -54.70085,167.52136 22.5641,2.73505 -12.30769,36.23931 -56.75214,-8.88889 z', '', 29, 'DB2.B1.04.04', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'M 1113.8462,699.82906 1323.0769,733.33333 1336.7521,600 l 42.3932,6.83761 2.735,-64.27351 -39.6581,-5.47008 6.1539,-83.41881 -19.1453,-1.36752 -13.6752,-3.4188 -15.7265,-114.8718 -61.5385,-8.88889 2.735,-23.93162 -92.9914,-14.35897 -30.0855,171.62393 -4.7863,-0.68376 -6.1539,26.66666 38.9744,5.47009 z', '', 30, 'DB2.B1.05.01', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'm 648.88889,462.5641 332.30769,49.23077 -49.91453,203.07692 -92.99145,-17.09401 10.94017,-38.2906 -98.46154,-14.35898 4.78633,-15.72649 -128.54701,-18.46154 -4.78633,15.7265 -31.45299,-6.15385 z', '', 31, 'DB2.B1.05.03', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'm 1130.9402,606.15385 174.3589,26.66666 28.0342,-245.47008 -15.7265,-2.73505 -5.47,-36.23931 -193.5043,-28.03419 12.9914,-60.8547 -220.85467,-35.55556 -45.81196,155.21368 114.18803,19.1453 4.78633,-15.7265 73.16237,10.94017 -3.4188,15.04274 58.1197,10.25641 -17.094,83.4188 34.8718,5.47009 10.9401,10.94017 -4.7863,29.40171 5.4701,2.73504 z', '', 32, 'DB2.B1.06.01', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'M 947.69231,580.17094 977.77778,450.94017 841.7094,431.11111 899.82906,233.50427 644.78633,197.94872 l -22.56411,54.01709 -138.80342,-19.1453 -79.31624,185.29915 19.82906,4.10256 -18.46153,73.84616 327.52136,52.64957 z', '', 33, 'DB2.B1.06.02', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'm 332.64237,767.18079 118.4555,-292.02905 81.22662,8.21936 5.8019,-14.02126 59.4695,5.31841 -51.25014,151.81643 -36.74537,-3.86794 -57.53553,160.03579 z', '', 34, 'DB3.B1.01.01', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 'm 561.99005,611.54229 41.79105,-135.32339 137.71144,13.93035 -5.97015,21.09453 84.37811,9.15423 -27.8607,121.79104 -90.74627,-10.74626 -2.38806,11.54228 -55.72139,-6.36816 4.37811,-14.72636 z', '', 35, 'DB3.B1.01.02', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 'm 920.59702,836.41791 -219.7015,-24.67662 41.79105,-157.61194 52.1393,4.77612 39.801,-159.20398 55.32338,5.97015 -1.99005,13.53234 89.55224,10.34826 z', '', 36, 'DB3.B1.01.03', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 'M 312.33571,714.96368 443.362,406.01241 l 57.05203,5.8019 -4.35143,13.53777 85.09456,8.21936 -45.44823,129.09232 53.1841,6.28539 -58.50251,172.12309 z', '', 37, 'DB3.B1.02.01', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 'm 692.36028,758.47794 42.54728,-159.5523 55.60156,4.83492 39.64633,-159.06881 58.50251,6.76889 -3.38444,12.57079 90.89646,10.15332 -57.05204,311.36873 z', '', 38, 'DB3.B1.02.03', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 'm 289.12811,655.49418 226.75766,27.55904 60.43648,-175.02404 -55.11807,-5.31841 53.1841,-143.11358 -61.88695,-5.31841 -4.83492,13.53777 -86.54504,-8.70285 z', '', 39, 'DB3.B1.03.01', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 'm 583.09113,360.56418 -45.44823,134.41072 89.92948,9.18635 -5.31841,15.95523 58.986,5.8019 3.86793,-11.12031 96.21488,10.15332 37.22887,-141.17961 -50.76664,-6.28539 -4.83492,14.50475 -98.63233,-9.66983 5.31841,-13.05428 z', '', 40, 'DB3.B1.03.02', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 'm 680.27299,699.49194 237.87797,27.55903 61.40346,-327.80745 -62.37044,-5.31841 -3.86794,13.05428 -92.83043,-8.21936 -36.26188,145.53104 -57.05204,-6.2854 z', '', 41, 'DB3.B1.03.03', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 'm 266.40399,593.60723 43.51426,-94.76439 -5.8019,0.48349 17.8892,-41.09681 5.8019,0.96699 38.67935,-81.22663 -5.8019,-1.45047 15.95523,-35.29491 6.28539,-0.48349 29.00951,-59.46949 61.40346,5.8019 -6.28539,14.02126 89.44598,8.21936 -48.83267,130.54279 56.08505,4.83492 -62.85394,175.02404 -81.22662,-9.18634 -2.90095,6.76888 -20.79015,-2.90095 1.93397,-6.28539 -31.91046,-3.86794 -1.45048,6.2854 -57.53553,-6.2854 2.41746,-5.8019 z', '', 42, 'DB3.B1.04.01', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 'm 571.48733,297.71024 29.00951,2.41746 0.96698,-3.38444 50.76664,3.86793 -2.41746,2.90095 72.04028,7.25238 -5.31841,14.02126 93.79742,9.18635 -35.7784,128.12533 -98.14884,-10.15333 -4.35142,11.12031 -60.91997,-5.8019 4.83491,-15.47174 -94.2809,-10.15333 z', '', 43, 'DB3.B1.04.02', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 'm 821.93609,320.91785 62.37044,5.31841 -3.86793,14.98824 97.18185,8.21936 -60.43647,315.72016 -55.11807,-5.31841 -1.93397,6.76889 -59.95298,-6.76889 1.45047,-7.25238 -39.16283,-3.86793 -2.41746,6.28539 -57.53553,-6.76888 1.45048,-5.8019 -31.42697,-3.38445 47.3822,-163.90372 58.01901,5.8019 z', '', 44, 'DB3.B1.04.03', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 'm 295.89699,451.46064 29.97649,-64.78791 8.70286,0 10.15333,-21.27364 -9.18635,0 24.17459,-53.1841 9.18635,0.4835 24.17459,-50.28315 -8.21936,0 19.82316,-38.19586 72.52377,5.80191 -1.45047,3.86793 66.72187,6.28539 0.48349,-3.86793 64.7879,5.31841 -15.47173,39.16284 -10.63682,-0.96699 -3.38445,10.15333 25.14158,2.90095 2.90095,-6.28539 58.01902,5.31841 -2.41746,6.28539 26.59205,0.96699 1.93396,-4.83492 23.6911,2.90095 -1.45047,5.31841 27.55903,2.90095 12.57079,-44.96474 19.33967,2.41746 2.41746,-7.25238 71.55679,6.2854 -1.93397,7.73586 26.59205,2.41746 1.45048,-5.8019 32.39395,3.38444 -0.96698,5.31841 23.6911,1.45048 1.93396,-4.83492 36.74538,3.38444 -1.93397,4.35143 17.40571,1.93397 -2.41746,16.92221 -51.73362,261.56907 -18.37269,-2.90095 -1.45048,6.2854 -42.54728,-3.86794 1.45048,-6.28539 -28.04253,-3.38444 -1.93397,5.31841 -36.26188,-3.86794 1.45047,-5.8019 -37.71236,-2.90095 -0.96698,3.86793 -0.96699,2.41746 -78.80916,-9.18634 1.45047,-6.76889 -34.81141,-2.90095 -1.93397,6.76889 -34.81141,-3.86794 1.93397,-6.76888 -68.65584,-6.76889 -1.93396,7.25238 -35.7784,-4.83492 2.90095,-6.76888 -25.62506,-2.41746 18.37269,-48.83268 -17.40571,-0.96698 -1.93397,3.86793 -34.81141,-2.90095 2.41746,-6.28539 -40.12982,-3.38444 -3.38444,5.31841 z', '', 45, 'DB3.B1.05.01', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 'm 1329.119,831.48521 240.2954,29.00951 -13.5377,-250.44877 -21.7572,-2.41746 -5.8019,-95.24788 -37.7123,-3.86794 0.4835,4.35143 -98.6324,-10.15333 0.4835,150.84945 -58.986,-6.2854 z', '', 46, 'DB3.B2.02.01', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 'm 1130.4039,620.19928 14.0212,-142.63008 54.1511,4.35142 -1.4505,21.75713 99.1159,10.63682 1.4504,-22.24062 32.394,3.38444 -0.967,-4.35142 52.2171,5.31841 0,3.38444 4.8349,1.93397 -5.3184,140.69612 -93.3139,-8.70286 -0.967,14.50476 -59.953,-5.31841 0,-13.53777 z', '', 47, 'DB3.B2.02.02', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 'm 1158.4464,812.14553 17.8892,-167.77166 -58.5025,-6.28539 17.8892,-147.9485 -92.8305,-8.70285 2.4175,-14.02126 -60.91996,-6.2854 -56.56854,324.90651 51.25013,5.31841 0,5.31841 57.05207,6.28539 0,-3.86794 37.7123,3.86794 -0.967,5.31841 56.5686,6.28539 0,-5.31841 z', '', 48, 'DB3.B2.02.03', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 'm 1340.2393,774.43317 89.446,9.66984 -0.4835,6.76888 22.7241,2.41746 -0.967,-6.76888 33.8445,4.35142 0.967,6.2854 59.9529,6.76888 -0.4835,-6.28539 47.8657,5.31841 -8.2193,-118.93899 5.3184,-0.48349 -2.4175,-43.51426 -6.2854,0.48349 -5.8019,-87.02853 4.835,0.48349 -2.4175,-41.0968 -5.8019,-0.48349 -2.901,-54.63458 -66.2383,-5.8019 0.9669,14.50475 -99.5993,-9.66983 2.901,136.34469 -60.4365,-5.8019 z', '', 49, 'DB3.B2.03.01', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 'm 1393.4234,582.97041 5.3184,-142.14659 -153.7504,-14.50476 -1.9339,14.02127 -93.7975,-10.15333 -13.5377,131.99326 99.5993,8.21936 -1.4505,13.53778 62.3705,5.8019 0.9669,-15.95523 z', '', 50, 'DB3.B2.03.02', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 'm 984.38934,414.23177 93.79746,9.18634 3.8679,-13.53777 61.4034,6.2854 -19.3396,162.45325 58.019,5.8019 -14.9883,171.63959 -30.9434,-4.35142 -0.967,6.28539 -59.4695,-8.70285 1.934,-4.35143 -82.67714,-9.18634 -0.48349,4.35142 -58.50251,-7.25237 0.96698,-4.83492 -10.63682,-1.45048 z', '', 51, 'DB3.B2.03.03', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 'm 1355.7111,714.48019 259.6351,27.55903 -1.934,-33.84443 7.2524,0 -2.901,-49.31616 -9.1863,-0.48349 -0.4835,-28.52602 7.7359,0.96698 -5.3185,-45.44823 -7.7358,-0.48349 -1.934,-34.81141 6.2854,-1.45048 -1.934,-24.65808 -5.8019,0 -3.8679,-37.71236 -22.7241,-1.45048 -8.7029,-100.0828 -39.6463,-2.41746 0.4835,5.31841 -104.9177,-9.18635 0.4835,152.78342 -60.92,-7.25238 z', '', 52, 'DB3.B2.04.01', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 'm 1141.0407,496.90887 14.9882,-144.56405 56.0851,6.28539 -0.967,14.50475 105.8847,9.66984 0.967,-14.98825 35.7784,3.38445 -0.967,-4.35143 54.6346,5.8019 -0.4835,3.86794 6.2854,0.48349 -3.3845,143.11358 -102.9837,-9.18635 1.4505,17.40571 -65.2714,-8.21936 0,-12.0873 z', '', 53, 'DB3.B2.04.02', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 'm 987.29029,336.87308 64.78791,5.8019 -2.4175,13.53777 99.1159,10.15333 -18.8562,149.39897 60.4365,7.25238 -13.0543,171.63959 -34.8114,-3.86793 0,5.8019 -61.4035,-7.25238 0.4835,-5.8019 -38.1959,-4.35143 -1.9339,6.2854 -61.40349,-6.2854 1.45048,-7.25237 -56.08505,-5.31841 z', '', 54, 'DB3.B2.04.03', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 'm 933.13921,559.27931 10.15333,1.45048 -1.45048,6.76888 41.5803,4.83492 0.96698,-7.73587 30.45996,3.38445 -1.4505,8.70285 36.2619,3.38444 1.4505,-8.21936 37.7124,3.86793 -0.4835,7.25238 82.6771,8.70285 0.967,-7.25237 36.2619,4.35142 -0.4835,9.66984 36.7453,4.35143 0,-10.63682 73.0073,7.73587 -0.967,10.15332 38.6794,4.35143 1.4504,-10.15333 27.5591,3.86794 0.967,-52.70061 16.4387,1.45047 0.4835,6.2854 39.6463,4.35142 -1.4505,-6.76888 42.5473,4.35142 0.4835,6.2854 126.6749,14.50475 -4.835,-69.62282 -9.6698,-2.90095 -1.934,-22.72412 10.6368,0 -4.8349,-58.986 -10.6368,0 -3.3844,-56.08505 9.1863,0.96699 -3.8679,-43.51427 -80.2597,-6.28539 1.4505,4.83492 -73.0073,-6.2854 -0.4834,-4.83491 -68.6559,-5.80191 2.4175,40.12982 -20.7902,-1.93396 -0.4835,4.35142 -60.9199,-6.28539 0,7.73587 -27.5591,-2.90095 0.4835,-7.25238 -24.6581,-1.93397 0,7.25238 -29.493,-3.86793 4.3515,-46.41522 -20.7902,-1.93397 0.967,-5.31841 -74.4577,-6.28539 -0.4835,5.8019 -27.5591,-3.86793 1.934,-4.83492 -32.3939,-2.90095 -1.4505,4.83492 -26.1086,-2.90095 0.967,-3.86794 -36.74537,-2.90095 -0.96699,3.86794 -14.98824,-0.96699 -2.90095,15.95523 -50.28315,259.63511 z', '', 55, 'DB3.B2.05.01', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 'm 599.65812,667.69231 75.21368,-216.75214 380.1709,38.2906 -30.0854,172.99145 -214.01713,-23.93162 -13.67521,48.54701 z', '', 2, 'DB1.B1.01.02', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 'm 538.11966,528.20513 10.94017,-95.04274 47.17949,6.83761 23.93162,-62.22222 -25.9829,-1.36752 17.09401,-88.88889 117.60684,25.29914 6.15385,-17.09402 187.35042,38.97436 60.8547,4.78633 5.47009,-21.19658 76.58115,20.51282 -33.5042,195.55555 L 800,504.95726 785.64103,554.87179 z', '', 10, 'DB1.B1.03.02', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 'm 1094.7009,887.86325 67.6923,11.62393 -1.3676,8.54701 80.3419,12.30769 1.0257,-7.17949 31.7948,5.47009 27.0086,-259.48718 -29.7436,-4.78633 -12.6496,-109.40171 -5.1282,0.34188 1.0257,-2.05128 -49.9146,-6.8376 0.3419,-6.15385 -82.3932,-10.94017 -1.0256,4.78632 -1.3675,1.7094 -30.4274,158.97436 34.5299,4.10257 z', '', 18, 'DB2.B1.01.01', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 'm 807.52137,354.52991 107.35043,12.99146 -6.15385,24.61538 88.20513,12.30769 -2.73504,10.94017 119.65816,17.09402 6.8376,-13.67521 6.8376,0.68376 -30.7693,153.16239 -68.376,-9.57265 -0.6838,13.67522 L 708.37607,529.57265 759.65812,372.99145 800,375.72649 z', '', 27, 'DB2.B1.03.02', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 'm 1134.359,322.39316 -28.0342,142.90598 -69.7436,-9.57264 -5.4701,16.41025 -337.77777,-50.59829 53.33334,-162.73504 43.07692,4.10256 7.52137,-21.19658 114.87179,13.67521 -5.47008,25.29915 93.67523,12.30769 -3.41882,11.62393 z', '', 35, 'DB2.B1.05.02', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 'm 579.1453,617.77778 -171.62393,-25.98291 14.35897,-94.35897 -30.08547,-3.41881 7.52137,-19.1453 -8.88889,-1.36752 117.60684,-246.15384 92.99145,11.62393 -4.10256,9.57265 138.80342,19.1453 -52.64958,157.26495 25.29915,4.10257 -10.25641,36.23931 -61.53846,-8.20512 z', '', 37, 'DB2.B1.05.04', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 'm 1417.7114,895.32338 1.1941,-174.72637 -40.199,-4.77611 0.796,-144.07961 91.9403,8.35821 0,-13.53234 62.0895,5.97015 14.7264,288.95523 -6.7662,-0.39801 1.1941,6.36816 -7.1642,0.39801 -6.7662,-3.18408 -6.7661,4.77612 -7.1642,-0.79602 -5.9702,-4.37811 -4.3781,2.38806 0,7.16418 3.1841,5.57213 -5.1741,3.58209 -5.1742,-0.39801 -3.9801,1.59204 -1.99,3.9801 1.194,4.37811 -2.7861,2.38806 -7.1641,0.39801 -7.9602,-0.39801 -2.3881,3.58209 -0.398,3.18408 z', '', 53, 'DB3.B2.01.01', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 'm 1124.7761,676.0199 14.3284,-144.47761 50.9453,5.57214 -1.1941,21.89054 97.5125,9.15423 1.194,-21.49253 85.9701,9.15422 -1.592,93.93035 -2.7861,-0.79602 -1.592,50.14926 -91.5423,-9.55224 -0.398,14.72637 -58.9055,-5.97015 1.5921,-11.9403 z', '', 54, 'DB3.B2.01.02', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 'm 1154.6269,863.48259 -226.06969,-24.67662 55.32339,-322.38806 59.3035,4.77612 -1.5921,15.12438 90.3483,8.75622 -16.7164,148.45771 53.7313,6.76617 z', '', 55, 'DB3.B2.01.03', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 'm 594.69494,421.96764 139.72913,13.53777 -4.83492,22.24062 86.54504,8.21936 -29.00951,119.42248 -94.28091,-10.15333 -1.45047,11.60381 -58.01902,-7.73587 3.86793,-14.98825 -87.51201,-9.18634 z', '', 44, 'DB3.B1.02.02', 'Xml\\Unit', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
