-- phpMyAdmin SQL Dump
-- version 4.2.0-dev
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 10, 2014 at 05:53 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `autoportaal`
--

-- --------------------------------------------------------

--
-- Table structure for table `body_type`
--

DROP TABLE IF EXISTS `body_type`;
CREATE TABLE IF NOT EXISTS `body_type` (
`body_type_id` int(10) NOT NULL,
  `body_type_name` varchar(32) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `body_type`
--

INSERT INTO `body_type` (`body_type_id`, `body_type_name`) VALUES
(1, 'Sedaan'),
(2, 'Luukpära'),
(3, 'Universaal'),
(4, 'Mahtuniversaal'),
(5, 'Kupee'),
(6, 'Kabriolett'),
(7, 'Pikap');

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
CREATE TABLE IF NOT EXISTS `car` (
`car_id` int(10) unsigned NOT NULL,
  `car_title` varchar(255) COLLATE utf8mb4_estonian_ci NOT NULL,
  `car_info` text COLLATE utf8mb4_estonian_ci NOT NULL,
  `car_vin` int(11) NOT NULL,
  `car_img` varchar(255) COLLATE utf8mb4_estonian_ci NOT NULL,
  `car_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(10) unsigned NOT NULL
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
-- Table structure for table `fuel_type`
--

DROP TABLE IF EXISTS `fuel_type`;
CREATE TABLE IF NOT EXISTS `fuel_type` (
`fuel_type_id` int(11) NOT NULL,
  `fuel_type_name` varchar(32) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `fuel_type`
--

INSERT INTO `fuel_type` (`fuel_type_id`, `fuel_type_name`) VALUES
(1, 'Bensiin'),
(2, 'Diisel'),
(3, 'Hübriid'),
(4, 'Elekter');

-- --------------------------------------------------------

--
-- Table structure for table `kuulutus`
--

DROP TABLE IF EXISTS `kuulutus`;
CREATE TABLE IF NOT EXISTS `kuulutus` (
  `body_type` varchar(32) NOT NULL,
  `make` int(11) unsigned NOT NULL,
  `price` int(10) NOT NULL,
  `fuel_type` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `make`
--

DROP TABLE IF EXISTS `make`;
CREATE TABLE IF NOT EXISTS `make` (
`make_id` int(10) NOT NULL,
  `make_name` varchar(32) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

--
-- Dumping data for table `make`
--

INSERT INTO `make` (`make_id`, `make_name`) VALUES
(1, 'Alfa Romeo'),
(2, 'Audi'),
(3, 'Bentley'),
(4, 'BMW'),
(5, 'Cadillac'),
(6, 'Chevrolet'),
(7, 'Chrysler'),
(8, 'Citroen'),
(9, 'Dacia'),
(10, 'Daewoo'),
(11, 'Dodge'),
(12, 'Ferrari'),
(13, 'Fiat'),
(14, 'Ford'),
(15, 'Honda'),
(16, 'Hummer'),
(17, 'Hyundai'),
(18, 'Jaguar'),
(19, 'Jeep'),
(20, 'Kia'),
(21, 'Lada'),
(22, 'Lamborghini'),
(23, 'Lancia'),
(24, 'Land Rover'),
(25, 'Lexus'),
(26, 'Lotus'),
(27, 'Maserati'),
(28, 'Mazda'),
(29, 'Mercedes-Benz'),
(30, 'Mitshubishi'),
(31, 'Moskvich'),
(32, 'Nissan'),
(33, 'Opel'),
(34, 'Peugeot'),
(35, 'Pontiac'),
(36, 'Porche'),
(37, 'Renault'),
(38, 'Rolls-Royce'),
(39, 'Rover'),
(40, 'Saab'),
(41, 'SEAT'),
(42, 'Skoda'),
(43, 'Subaru'),
(44, 'Suzuki'),
(45, 'Toyota'),
(46, 'UAZ'),
(47, 'Volkswagen'),
(48, 'Volvo'),
(49, 'GAZ');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
`user_id` int(10) unsigned NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `first_name` varchar(32) NOT NULL,
  `last_name` varchar(32) NOT NULL,
  `email` varchar(1024) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `deleted`, `first_name`, `last_name`, `email`) VALUES
(1, 'demo', 'demo', 0, '', '', ''),
(2, 'Lenard', '123456', 0, 'Lenard', 'Lätte', 'lenard@buytec.eu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `body_type`
--
ALTER TABLE `body_type`
 ADD PRIMARY KEY (`body_type_id`);

--
-- Indexes for table `car`
--
ALTER TABLE `car`
 ADD PRIMARY KEY (`car_id`), ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `fuel_type`
--
ALTER TABLE `fuel_type`
 ADD PRIMARY KEY (`fuel_type_id`);

--
-- Indexes for table `kuulutus`
--
ALTER TABLE `kuulutus`
 ADD PRIMARY KEY (`body_type`);

--
-- Indexes for table `make`
--
ALTER TABLE `make`
 ADD PRIMARY KEY (`make_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `body_type`
--
ALTER TABLE `body_type`
MODIFY `body_type_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `car`
--
ALTER TABLE `car`
MODIFY `car_id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fuel_type`
--
ALTER TABLE `fuel_type`
MODIFY `fuel_type_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `make`
--
ALTER TABLE `make`
MODIFY `make_id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT;SET FOREIGN_KEY_CHECKS=1;