-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Loomise aeg: Veebr 27, 2014 kell 12:41 PM
-- Serveri versioon: 5.5.27
-- PHP versioon: 5.4.7

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
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
  `body_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
-- Tabeli struktuur tabelile `city`
--

DROP TABLE IF EXISTS `city`;
CREATE TABLE IF NOT EXISTS `city` (
  `city_id` int(15) unsigned NOT NULL AUTO_INCREMENT,
  `city_name` varchar(20) NOT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=63 ;

--
-- Andmete tõmmistamine tabelile `city`
--

INSERT INTO `city` (`city_id`, `city_name`) VALUES
(1, 'Abja-Paluoja'),
(2, 'Antsla'),
(3, 'Elva'),
(4, 'Haapsalu'),
(5, 'Jõgeva'),
(6, 'Jõhvi'),
(7, 'Kallaste'),
(8, 'Kärdla'),
(9, 'Karksi-Nuia'),
(10, 'Kehra'),
(11, 'Keila'),
(12, 'Kilingi-Nõmme'),
(13, 'Kiviõli'),
(14, 'Kohta-Järve'),
(15, 'Kunda'),
(16, 'Kuressaare'),
(17, 'Lihula'),
(18, 'Loksa'),
(19, 'Maardu'),
(20, 'Mõisaküla'),
(21, 'Mustvee'),
(22, 'Narva'),
(23, 'Narva-Jõesuu'),
(24, 'Otepää'),
(25, 'Paide'),
(26, 'Paldiski'),
(27, 'Pärnu'),
(28, 'Põltsamaa'),
(29, 'Põlva'),
(30, 'Püssi'),
(31, 'Rakvere'),
(32, 'Räpina'),
(33, 'Rapla'),
(34, 'Saue'),
(35, 'Sillamäe'),
(36, 'Sindi'),
(37, 'Suure-Jaani'),
(38, 'Tallinn'),
(39, 'Tamsalu'),
(40, 'Tapa'),
(41, 'Tartu'),
(42, 'Tõrva'),
(43, 'Türi'),
(44, 'Valga'),
(45, 'Viljandi'),
(46, 'Võhma'),
(47, 'Võru'),
(48, 'Harjumaa'),
(49, 'Hiiumaa'),
(50, 'Ida-Virumaa'),
(51, 'Järvamaa'),
(52, 'Jõgevamaa'),
(53, 'Lääne-Virumaa'),
(54, 'Läänemaa'),
(55, 'Pärnumaa'),
(56, 'Põlvamaa'),
(57, 'Raplamaa'),
(58, 'Saaremaa'),
(59, 'Tartumaa'),
(60, 'Valgamaa'),
(61, 'Viljandimaa'),
(62, 'Võrumaa');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `color`
--

DROP TABLE IF EXISTS `color`;
CREATE TABLE IF NOT EXISTS `color` (
  `color_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
-- Tabeli struktuur tabelile `country`
--

DROP TABLE IF EXISTS `country`;
CREATE TABLE IF NOT EXISTS `country` (
  `country_id` int(15) unsigned NOT NULL AUTO_INCREMENT,
  `country_name` varchar(20) NOT NULL,
  PRIMARY KEY (`country_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Andmete tõmmistamine tabelile `country`
--

INSERT INTO `country` (`country_id`, `country_name`) VALUES
(1, 'Ameerika Ühendriigid'),
(2, 'Austria'),
(3, 'Belgia'),
(4, 'Bulgaaria'),
(5, 'Eesti'),
(6, 'Hispaania'),
(7, 'Holland'),
(8, 'Iirimaa'),
(9, 'Inglismaa'),
(10, 'Itaalia'),
(11, 'Jaapan'),
(12, 'Kreeka'),
(13, 'Küpros'),
(14, 'Leedu'),
(15, 'Luksenburg'),
(16, 'Läti'),
(17, 'Malta'),
(18, 'Norra'),
(19, 'Poola'),
(20, 'Portugal'),
(21, 'Prantsusmaa'),
(22, 'Rootsi'),
(23, 'Rumeenia'),
(24, 'Saksamaa'),
(25, 'Slovakkia'),
(26, 'Sloveenia'),
(27, 'Soome'),
(28, 'Suurbritannia'),
(29, 'Taani'),
(30, 'Tšehhi'),
(31, 'Ungari'),
(32, 'Venemaa'),
(33, 'Šveits');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `door`
--

DROP TABLE IF EXISTS `door`;
CREATE TABLE IF NOT EXISTS `door` (
  `door_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `door_name` int(10) NOT NULL,
  PRIMARY KEY (`door_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Andmete tõmmistamine tabelile `door`
--

INSERT INTO `door` (`door_id`, `door_name`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `fuel_type`
--

DROP TABLE IF EXISTS `fuel_type`;
CREATE TABLE IF NOT EXISTS `fuel_type` (
  `fuel_type_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
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
  `gearbox_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `gearbox_name` varchar(15) NOT NULL,
  PRIMARY KEY (`gearbox_id`),
  KEY `gearbox_name` (`gearbox_name`),
  KEY `gearbox_name_2` (`gearbox_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Andmete tõmmistamine tabelile `gearbox`
--

INSERT INTO `gearbox` (`gearbox_id`, `gearbox_name`) VALUES
(3, 'automaat'),
(2, 'manuaal'),
(4, 'poolautomaat');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `km`
--

DROP TABLE IF EXISTS `km`;
CREATE TABLE IF NOT EXISTS `km` (
  `km_id` int(15) unsigned NOT NULL AUTO_INCREMENT,
  `km_name` int(15) NOT NULL,
  PRIMARY KEY (`km_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `kuulutus`
--

DROP TABLE IF EXISTS `kuulutus`;
CREATE TABLE IF NOT EXISTS `kuulutus` (
  `body_type_id` int(32) unsigned NOT NULL DEFAULT '0',
  `make_id` int(11) unsigned DEFAULT NULL,
  `price_id` int(10) unsigned DEFAULT NULL,
  `fuel_type_id` int(10) unsigned DEFAULT NULL,
  `year_id` smallint(5) unsigned DEFAULT NULL,
  `gearbox_id` int(10) unsigned DEFAULT NULL,
  `color_id` int(30) unsigned DEFAULT NULL,
  `vin_id` int(10) unsigned DEFAULT NULL,
  `reg_id` int(10) unsigned DEFAULT NULL,
  `motion_id` int(10) unsigned DEFAULT NULL,
  `muu_id` int(10) unsigned DEFAULT NULL,
  `country_id` int(15) unsigned DEFAULT NULL,
  `city_id` int(15) unsigned DEFAULT NULL,
  `kw_id` int(7) unsigned DEFAULT NULL,
  `door_id` int(10) unsigned DEFAULT NULL,
  `muudlisad_id` int(15) unsigned DEFAULT NULL,
  PRIMARY KEY (`body_type_id`),
  UNIQUE KEY `body_type` (`body_type_id`),
  UNIQUE KEY `year` (`year_id`),
  KEY `fuel_type_id` (`fuel_type_id`),
  KEY `fuel_type_id_2` (`fuel_type_id`),
  KEY `make_id` (`make_id`),
  KEY `price_id` (`price_id`),
  KEY `year_id` (`year_id`),
  KEY `gearbox_id` (`gearbox_id`),
  KEY `color_id` (`color_id`),
  KEY `vin_id` (`vin_id`),
  KEY `reg_id` (`reg_id`),
  KEY `motion_id` (`motion_id`),
  KEY `muu_id` (`muu_id`),
  KEY `country_id` (`country_id`),
  KEY `city_id` (`city_id`),
  KEY `kw_id` (`kw_id`),
  KEY `door_id` (`door_id`),
  KEY `muudlisad_id` (`muudlisad_id`),
  KEY `fuel_type_id_3` (`fuel_type_id`),
  KEY `make_id_2` (`make_id`),
  KEY `gearbox_id_2` (`gearbox_id`),
  KEY `color_id_2` (`color_id`),
  KEY `vin_id_2` (`vin_id`),
  KEY `muudlisad_id_2` (`muudlisad_id`),
  KEY `door_id_2` (`door_id`),
  KEY `kw_id_2` (`kw_id`),
  KEY `city_id_2` (`city_id`),
  KEY `country_id_2` (`country_id`),
  KEY `muu_id_2` (`muu_id`),
  KEY `reg_id_2` (`reg_id`),
  KEY `motion_id_2` (`motion_id`),
  KEY `price_id_2` (`price_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `kw`
--

DROP TABLE IF EXISTS `kw`;
CREATE TABLE IF NOT EXISTS `kw` (
  `kw_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `kw_name` int(11) NOT NULL,
  PRIMARY KEY (`kw_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `make`
--

DROP TABLE IF EXISTS `make`;
CREATE TABLE IF NOT EXISTS `make` (
  `make_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
-- Tabeli struktuur tabelile `model`
--

DROP TABLE IF EXISTS `model`;
CREATE TABLE IF NOT EXISTS `model` (
  `model_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `model_name` varchar(15) NOT NULL,
  `make_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`model_id`),
  KEY `make_id` (`make_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Andmete tõmmistamine tabelile `model`
--

INSERT INTO `model` (`model_id`, `model_name`, `make_id`) VALUES
(1, 'test', 1);

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `motion`
--

DROP TABLE IF EXISTS `motion`;
CREATE TABLE IF NOT EXISTS `motion` (
  `motion_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  `muu_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `muu_name` varchar(200) NOT NULL,
  PRIMARY KEY (`muu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `muudlisad`
--

DROP TABLE IF EXISTS `muudlisad`;
CREATE TABLE IF NOT EXISTS `muudlisad` (
  `muudlisad_id` int(15) unsigned NOT NULL AUTO_INCREMENT,
  `muudlisad_name` varchar(230) NOT NULL,
  PRIMARY KEY (`muudlisad_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `price`
--

DROP TABLE IF EXISTS `price`;
CREATE TABLE IF NOT EXISTS `price` (
  `price_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `price_name` int(50) NOT NULL,
  PRIMARY KEY (`price_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `reg`
--

DROP TABLE IF EXISTS `reg`;
CREATE TABLE IF NOT EXISTS `reg` (
  `reg_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reg_name` int(10) NOT NULL,
  PRIMARY KEY (`reg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `roolivoim`
--

DROP TABLE IF EXISTS `roolivoim`;
CREATE TABLE IF NOT EXISTS `roolivoim` (
  `roolivoim_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `roolivoim_name` varchar(15) NOT NULL,
  PRIMARY KEY (`roolivoim_id`)
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Andmete tõmmistamine tabelile `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `deleted`, `first_name`, `last_name`, `email`) VALUES
(1, 'demo', 'demo', 0, '', '', ''),
(2, 'Lenard', '123456', 0, 'Lenard', 'Lätte', 'lenard@buytec.eu'),
(3, 'tanelkolga', 'longdrink', 0, 'tanel', 'kolga', 'kokoko@hot.ee');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `vin`
--

DROP TABLE IF EXISTS `vin`;
CREATE TABLE IF NOT EXISTS `vin` (
  `vin_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vin_name` int(32) NOT NULL,
  PRIMARY KEY (`vin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `year`
--

DROP TABLE IF EXISTS `year`;
CREATE TABLE IF NOT EXISTS `year` (
  `year_id` smallint(7) unsigned NOT NULL AUTO_INCREMENT,
  `year_name` int(5) NOT NULL,
  PRIMARY KEY (`year_id`),
  KEY `year_name` (`year_name`),
  KEY `year_name_2` (`year_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=67 ;

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

--
-- Tõmmistatud tabelite piirangud
--

--
-- Piirangud tabelile `kuulutus`
--
ALTER TABLE `kuulutus`
  ADD CONSTRAINT `kuulutus_ibfk_13` FOREIGN KEY (`muudlisad_id`) REFERENCES `muudlisad` (`muudlisad_id`),
  ADD CONSTRAINT `kuulutus_ibfk_1` FOREIGN KEY (`body_type_id`) REFERENCES `body_type` (`body_type_id`),
  ADD CONSTRAINT `kuulutus_ibfk_10` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`),
  ADD CONSTRAINT `kuulutus_ibfk_11` FOREIGN KEY (`kw_id`) REFERENCES `kw` (`kw_id`),
  ADD CONSTRAINT `kuulutus_ibfk_12` FOREIGN KEY (`door_id`) REFERENCES `door` (`door_id`),
  ADD CONSTRAINT `kuulutus_ibfk_14` FOREIGN KEY (`muu_id`) REFERENCES `muu` (`muu_id`),
  ADD CONSTRAINT `kuulutus_ibfk_15` FOREIGN KEY (`reg_id`) REFERENCES `reg` (`reg_id`),
  ADD CONSTRAINT `kuulutus_ibfk_16` FOREIGN KEY (`motion_id`) REFERENCES `motion` (`motion_id`),
  ADD CONSTRAINT `kuulutus_ibfk_2` FOREIGN KEY (`fuel_type_id`) REFERENCES `fuel_type` (`fuel_type_id`),
  ADD CONSTRAINT `kuulutus_ibfk_3` FOREIGN KEY (`year_id`) REFERENCES `year` (`year_id`),
  ADD CONSTRAINT `kuulutus_ibfk_4` FOREIGN KEY (`make_id`) REFERENCES `make` (`make_id`),
  ADD CONSTRAINT `kuulutus_ibfk_5` FOREIGN KEY (`price_id`) REFERENCES `price` (`price_id`),
  ADD CONSTRAINT `kuulutus_ibfk_6` FOREIGN KEY (`gearbox_id`) REFERENCES `gearbox` (`gearbox_id`),
  ADD CONSTRAINT `kuulutus_ibfk_7` FOREIGN KEY (`color_id`) REFERENCES `color` (`color_id`),
  ADD CONSTRAINT `kuulutus_ibfk_8` FOREIGN KEY (`vin_id`) REFERENCES `vin` (`vin_id`),
  ADD CONSTRAINT `kuulutus_ibfk_9` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`);

--
-- Piirangud tabelile `model`
--
ALTER TABLE `model`
  ADD CONSTRAINT `model_ibfk_1` FOREIGN KEY (`make_id`) REFERENCES `make` (`make_id`);
SET FOREIGN_KEY_CHECKS=1;