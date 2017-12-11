SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "-05:00";

-- Miscellaneous settings
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

-- DATABASE: `users`
-- Create database if it doesn't exist
-- Use database so further changes occur in `users`
CREATE DATABASE IF NOT EXISTS `users`;
USE `users`;

-- Hold basic information on all users
-- Table structure for table `all_users`
CREATE TABLE IF NOT EXISTS `all_users` (
  `id` int(9) unsigned NOT NULL,
  `username` text NOT NULL,
  `name` text NOT NULL,
  `surname` text NOT NULL,
  `category` int(3) NOT NULL,
  `admin_user` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
-- Set `id` as a unique key
ALTER TABLE `all_users`
  ADD UNIQUE KEY `id` (`id`);

-- Add specific information for students
-- Table structure for table `students`
CREATE TABLE IF NOT EXISTS `students` (
  `id` int(9) NOT NULL,
  `classification` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `major` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `graduation` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
-- Set `id` as a unique key
ALTER TABLE `students`
  ADD UNIQUE KEY `id` (`id`);

-- Add specific information for faculty
-- Table structure for table `faculty`
-- One day, we may add a `courses` or `schedule` column
CREATE TABLE IF NOT EXISTS `faculty` (
  `id` int(9) NOT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'Professor',
  `department` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
-- Set `id` as a unique key
ALTER TABLE `faculty`
  ADD UNIQUE KEY `id` (`id`);

-- Add specific information for staff
-- Table structure for table `staff`
CREATE TABLE IF NOT EXISTS `staff` (
  `id` int(9) NOT NULL,
  `title` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `department` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
-- Set `id` as a unique key
ALTER TABLE `staff`
  ADD UNIQUE KEY `id` (`id`);

-- Miscellaneous settings
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
