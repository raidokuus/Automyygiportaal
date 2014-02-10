-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 10, 2014 at 09:31 AM
-- Server version: 5.5.34
-- PHP Version: 5.4.22

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `autoportaal`
--

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
CREATE TABLE IF NOT EXISTS `car` (
  `car_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `car_title` varchar(255) COLLATE utf8mb4_estonian_ci NOT NULL,
  `car_info` text COLLATE utf8mb4_estonian_ci NOT NULL,
  `car_vin` int(11) NOT NULL,
  `car_img` varchar(255) COLLATE utf8mb4_estonian_ci NOT NULL,
  `car_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`car_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_estonian_ci AUTO_INCREMENT=4 ;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`car_id`, `car_title`, `car_info`, `car_vin`, `car_img`, `car_created`, `user_id`) VALUES
(1, 'Auto1', 'Auto1 tekst', 1234, 'http://www.extremetech.com/wp-content/uploads/2012/12/Audi-A1.jpg', '2014-02-07 11:00:09', 1),
(2, 'Auto 2', 'Auto 2 tekst', 12345, 'http://images.dailytech.com/nimage/m_l_13.jpg', '2014-02-07 11:00:30', 1),
(3, 'Auto 4', 'Auto 4', 2342, 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQHkD1nKz-MH1SWbA1neZfNIRNUgJ2pcFkrAZ6XpqbJBWqmOG6a', '2014-02-07 11:19:36', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `first_name` varchar(32) NOT NULL,
  `last_name` varchar(32) NOT NULL,
  `email` varchar(1024) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `deleted`, `first_name`, `last_name`, `email`) VALUES
(1, 'demo', 'demo', 0, '', '', '');
SET FOREIGN_KEY_CHECKS=1;
