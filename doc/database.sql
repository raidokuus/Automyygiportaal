-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Loomise aeg: Veebr 11, 2014 kell 10:56 PM
-- Serveri versioon: 5.5.34
-- PHP versioon: 5.4.22

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Andmebaas: `autoportaal`
--

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `body_type`
--

DROP TABLE IF EXISTS `body_type`;
CREATE TABLE IF NOT EXISTS `body_type` (
  `body_type_id` int(10) NOT NULL AUTO_INCREMENT,
  `body_type_name` varchar(32) NOT NULL,
  PRIMARY KEY (`body_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Andmete tõmmistamine tabelile `body_type`
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
-- Tabeli struktuur tabelile `car`
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
-- Andmete tõmmistamine tabelile `car`
--

INSERT INTO `car` (`car_id`, `car_title`, `car_info`, `car_vin`, `car_img`, `car_created`, `user_id`) VALUES
(1, 'Auto1', 'Auto1 tekst', 1234, 'http://www.extremetech.com/wp-content/uploads/2012/12/Audi-A1.jpg', '2014-02-07 11:00:09', 1),
(2, 'Auto 2', 'Auto 2 tekst', 12345, 'http://images.dailytech.com/nimage/m_l_13.jpg', '2014-02-07 11:00:30', 1),
(3, 'Auto 4', 'Auto 4', 2342, 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQHkD1nKz-MH1SWbA1neZfNIRNUgJ2pcFkrAZ6XpqbJBWqmOG6a', '2014-02-07 11:19:36', 1);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `color`
--

DROP TABLE IF EXISTS `color`;
CREATE TABLE IF NOT EXISTS `color` (
  `color_id` int(10) NOT NULL AUTO_INCREMENT,
  `color_name` varchar(30) NOT NULL,
  PRIMARY KEY (`color_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Andmete tõmmistamine tabelile `color`
--

INSERT INTO `color` (`color_id`, `color_name`) VALUES
(1, 'beež'),
(2, 'hall'),
(3, 'kollane'),
(4, 'kuldne'),
(5, 'lilla'),
(6, 'must'),
(7, 'oranž'),
(8, 'pruun'),
(9, 'punane'),
(10, 'roheline'),
(11, 'roosa'),
(12, 'sinine'),
(13, 'valge');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `fuel_type`
--

DROP TABLE IF EXISTS `fuel_type`;
CREATE TABLE IF NOT EXISTS `fuel_type` (
  `fuel_type_id` int(11) NOT NULL AUTO_INCREMENT,
  `fuel_type_name` varchar(32) NOT NULL,
  PRIMARY KEY (`fuel_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Andmete tõmmistamine tabelile `fuel_type`
--

INSERT INTO `fuel_type` (`fuel_type_id`, `fuel_type_name`) VALUES
(1, 'Bensiin'),
(2, 'Diisel'),
(3, 'Hübriid'),
(4, 'Elekter');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `gearbox`
--

DROP TABLE IF EXISTS `gearbox`;
CREATE TABLE IF NOT EXISTS `gearbox` (
  `gearbox_id` int(11) NOT NULL AUTO_INCREMENT,
  `gearbox_name` varchar(15) NOT NULL,
  PRIMARY KEY (`gearbox_id`),
  KEY `gearbox_name` (`gearbox_name`),
  KEY `gearbox_name_2` (`gearbox_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Andmete tõmmistamine tabelile `gearbox`
--

INSERT INTO `gearbox` (`gearbox_id`, `gearbox_name`) VALUES
(3, 'automaat'),
(2, 'manuaal'),
(4, 'poolautomaat');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `kuulutus`
--

DROP TABLE IF EXISTS `kuulutus`;
CREATE TABLE IF NOT EXISTS `kuulutus` (
  `body_type` varchar(32) NOT NULL,
  `make` int(11) unsigned NOT NULL,
  `price` int(10) NOT NULL,
  `fuel_type` varchar(32) NOT NULL,
  `year` int(5) NOT NULL,
  `gearbox` int(10) NOT NULL,
  `color` varchar(30) NOT NULL,
  `vin` int(10) NOT NULL,
  `reg` int(10) NOT NULL,
  `motion` int(10) NOT NULL,
  `muu` int(10) NOT NULL,
  PRIMARY KEY (`body_type`),
  UNIQUE KEY `year` (`year`),
  UNIQUE KEY `year_2` (`year`),
  UNIQUE KEY `year_3` (`year`),
  UNIQUE KEY `body_type` (`body_type`),
  UNIQUE KEY `year_4` (`year`),
  UNIQUE KEY `body_type_2` (`body_type`),
  KEY `fuel_type` (`fuel_type`),
  KEY `body_type_3` (`body_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `make`
--

DROP TABLE IF EXISTS `make`;
CREATE TABLE IF NOT EXISTS `make` (
  `make_id` int(10) NOT NULL AUTO_INCREMENT,
  `make_name` varchar(32) NOT NULL,
  PRIMARY KEY (`make_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

--
-- Andmete tõmmistamine tabelile `make`
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
-- Tabeli struktuur tabelile `motion`
--

DROP TABLE IF EXISTS `motion`;
CREATE TABLE IF NOT EXISTS `motion` (
  `motion_id` int(10) NOT NULL AUTO_INCREMENT,
  `motion_name` varchar(20) NOT NULL,
  PRIMARY KEY (`motion_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Andmete tõmmistamine tabelile `motion`
--

INSERT INTO `motion` (`motion_id`, `motion_name`) VALUES
(1, 'esivedu'),
(2, 'tagavedu'),
(3, 'nelikvedu');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `muu`
--

DROP TABLE IF EXISTS `muu`;
CREATE TABLE IF NOT EXISTS `muu` (
  `muu_id` int(11) NOT NULL AUTO_INCREMENT,
  `muu_name` varchar(200) NOT NULL,
  PRIMARY KEY (`muu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `reg`
--

DROP TABLE IF EXISTS `reg`;
CREATE TABLE IF NOT EXISTS `reg` (
  `reg_id` int(10) NOT NULL AUTO_INCREMENT,
  `reg_name` int(10) NOT NULL,
  PRIMARY KEY (`reg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `user`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Andmete tõmmistamine tabelile `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `deleted`, `first_name`, `last_name`, `email`) VALUES
(1, 'demo', 'demo', 0, '', '', ''),
(2, 'Lenard', '123456', 0, 'Lenard', 'Lätte', 'lenard@buytec.eu');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `vin`
--

DROP TABLE IF EXISTS `vin`;
CREATE TABLE IF NOT EXISTS `vin` (
  `vin_id` int(10) NOT NULL AUTO_INCREMENT,
  `vin_name` int(32) NOT NULL,
  PRIMARY KEY (`vin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `year`
--

DROP TABLE IF EXISTS `year`;
CREATE TABLE IF NOT EXISTS `year` (
  `year_id` int(7) NOT NULL AUTO_INCREMENT,
  `year_name` int(5) NOT NULL,
  PRIMARY KEY (`year_id`),
  KEY `year_name` (`year_name`),
  KEY `year_name_2` (`year_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=68 ;

--
-- Andmete tõmmistamine tabelile `year`
--

INSERT INTO `year` (`year_id`, `year_name`) VALUES
(2, 1950),
(3, 1951),
(4, 1952),
(5, 1953),
(6, 1954),
(7, 1955),
(8, 1956),
(9, 1957),
(10, 1958),
(11, 1959),
(12, 1960),
(13, 1961),
(14, 1962),
(15, 1963),
(16, 1964),
(17, 1965),
(18, 1966),
(19, 1967),
(20, 1968),
(21, 1969),
(22, 1970),
(23, 1971),
(24, 1972),
(25, 1973),
(26, 1974),
(27, 1975),
(28, 1976),
(29, 1977),
(30, 1978),
(31, 1979),
(32, 1980),
(33, 1981),
(34, 1982),
(35, 1983),
(36, 1984),
(37, 1985),
(38, 1986),
(39, 1987),
(40, 1988),
(41, 1989),
(42, 1990),
(43, 1991),
(44, 1992),
(45, 1993),
(46, 1994),
(47, 1995),
(48, 1996),
(49, 1997),
(50, 1998),
(51, 1999),
(52, 2000),
(53, 2001),
(54, 2002),
(55, 2003),
(56, 2004),
(57, 2005),
(58, 2006),
(59, 2007),
(60, 2008),
(61, 2009),
(62, 2010),
(63, 2011),
(64, 2012),
(65, 2013),
(66, 2014);
SET FOREIGN_KEY_CHECKS=1;
