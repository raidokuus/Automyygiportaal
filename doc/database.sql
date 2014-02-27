-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Loomise aeg: Veebr 27, 2014 kell 02:43 PL
-- Serveri versioon: 5.6.14
-- PHP versioon: 5.5.6

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=606 ;

--
-- Andmete tõmmistamine tabelile `model`
--

INSERT INTO `model` (`model_id`, `model_name`, `make_id`) VALUES
(1, '145', 1),
(2, '146', 1),
(3, '147', 1),
(4, '155', 1),
(5, '156', 1),
(6, '159', 1),
(7, '164', 1),
(8, '166', 1),
(9, '1750', 1),
(10, '2000', 1),
(11, '33', 1),
(12, '4C', 1),
(13, '75', 1),
(14, '8C', 1),
(15, '90', 1),
(16, 'Alfa 6', 1),
(17, 'Alfasud', 1),
(18, 'Alfetta', 1),
(19, 'GT', 1),
(20, 'Montreal', 1),
(21, 'Spider', 1),
(22, 'Sprint', 1),
(23, '100', 2),
(24, '200', 2),
(25, '5000', 2),
(26, '80', 2),
(27, '90', 2),
(28, 'A1', 2),
(29, 'A2', 2),
(30, 'A3', 2),
(31, 'A4', 2),
(32, 'A4 Allroad', 2),
(33, 'A4 Cabrio', 2),
(34, 'A5', 2),
(35, 'A6', 2),
(36, 'A6 Allroad', 2),
(37, 'A7', 2),
(38, 'A8', 2),
(39, 'Coupe', 2),
(40, 'Q3', 2),
(41, 'Q5', 2),
(42, 'Q6', 2),
(43, 'Q7', 2),
(44, 'Quattro', 2),
(45, 'R8', 2),
(46, 'RS 2', 2),
(47, 'RS 3', 2),
(48, 'RS 4', 2),
(49, 'RS 5', 2),
(50, 'RS 6', 2),
(51, 'S2', 2),
(52, 'S3', 2),
(53, 'S4', 2),
(54, 'S5', 2),
(55, 'S6', 2),
(56, 'S7', 2),
(57, 'S8', 2),
(58, 'SQ5', 2),
(59, 'TT', 2),
(60, 'TTS', 2),
(61, 'V8', 2),
(62, 'Arnage', 3),
(63, 'Continental Fly', 3),
(64, 'Continental GT', 3),
(65, 'Continental GTC', 3),
(66, 'Continental R', 3),
(67, 'Continental Sup', 3),
(68, 'Continental T', 3),
(69, 'Mulsanne', 3),
(70, 'Turbo R', 3),
(71, '116', 4),
(72, '118', 4),
(73, '120', 4),
(74, '123', 4),
(75, '125', 4),
(76, '130', 4),
(77, '135', 4),
(78, '2000', 4),
(79, '2002', 4),
(80, '315', 4),
(81, '316', 4),
(82, '318', 4),
(83, '320', 4),
(84, '323', 4),
(85, '324', 4),
(86, '325', 4),
(87, '328', 4),
(88, '330', 4),
(89, '335', 4),
(90, '518', 4),
(91, '520', 4),
(92, '523', 4),
(93, '524', 4),
(94, '525', 4),
(95, '528', 4),
(96, '530', 4),
(97, '533', 4),
(98, '535', 4),
(99, '540', 4),
(100, '545', 4),
(101, '550', 4),
(102, '628', 4),
(103, '630', 4),
(104, '635', 4),
(105, '640', 4),
(106, '645', 4),
(107, '650', 4),
(108, '725', 4),
(109, '728', 4),
(110, '730', 4),
(111, '732', 4),
(112, '733', 4),
(113, '735', 4),
(114, '740', 4),
(115, '745', 4),
(116, '750', 4),
(117, '760', 4),
(118, '840', 4),
(119, '850', 4),
(120, 'C1', 4),
(121, 'i3', 4),
(122, 'i8', 4),
(123, 'M1', 4),
(124, 'M3', 4),
(125, 'M5', 4),
(126, 'M6', 4),
(127, 'X1', 4),
(128, 'X3', 4),
(129, 'X4', 4),
(130, 'X5', 4),
(131, 'X6', 4),
(132, 'Z3', 4),
(133, 'Z4', 4),
(134, 'Z8', 4),
(135, 'Allante', 5),
(136, 'ATS', 5),
(137, 'BLS', 5),
(138, 'Brougham', 5),
(139, 'Calais', 5),
(140, 'Catera', 5),
(141, 'Cimarron', 5),
(142, 'CTS', 5),
(143, 'DeVille', 5),
(144, 'DTS', 5),
(145, 'Eldorado', 5),
(146, 'ELR', 5),
(147, 'Escalade', 5),
(148, 'Fleetwood', 5),
(149, 'SeVille', 5),
(150, 'SRX', 5),
(151, 'STS', 5),
(152, 'XLR', 5),
(153, 'XTS', 5),
(154, 'Alero', 6),
(155, 'Astro', 6),
(156, 'Avalanche', 6),
(157, 'Aveo', 6),
(158, 'Bel Air', 6),
(159, 'Beretta', 6),
(160, 'Blazer', 6),
(161, 'Camaro', 6),
(162, 'Caprice', 6),
(163, 'Captiva', 6),
(164, 'Cavalier', 6),
(165, 'Celebrity', 6),
(166, 'Chevelle', 6),
(167, 'Chevy Van', 6),
(168, 'Cobalt', 6),
(169, 'Colorado', 6),
(170, 'Corsica', 6),
(171, 'Corvette', 6),
(172, 'Cruze', 6),
(173, 'El Camino', 6),
(174, 'Epica', 6),
(175, 'Equinox', 6),
(176, 'Evanda', 6),
(177, 'Express', 6),
(178, 'G10', 6),
(179, 'G20', 6),
(180, 'G30', 6),
(181, 'G31', 6),
(182, 'HHR', 6),
(183, 'Impala', 6),
(184, 'Kalos', 6),
(185, 'Lacetti', 6),
(186, 'Lumina', 6),
(187, 'Malibu', 6),
(188, 'Master Deluxe', 6),
(189, 'Matiz', 6),
(190, 'Metro', 6),
(191, 'Monte Carlo', 6),
(192, 'Nubira', 6),
(193, 'Orlando', 6),
(194, 'Rezzo', 6),
(195, 'S-10', 6),
(196, 'Silverado', 6),
(197, 'Spark', 6),
(198, 'Spectrum', 6),
(199, 'Sprint', 6),
(200, 'Suburban', 6),
(201, 'Tacuma', 6),
(202, 'Tahoe', 6),
(203, 'Tracker', 6),
(204, 'TrailBlazer', 6),
(205, 'TransSport', 6),
(206, 'Traverse', 6),
(207, 'Trax', 6),
(208, 'Uplander', 6),
(209, 'Van', 6),
(210, 'Venture', 6),
(211, 'Volt', 6),
(212, '180', 7),
(213, '200', 7),
(214, '300 C', 7),
(215, '300 M', 7),
(216, 'Aspen', 7),
(217, 'Avenger', 7),
(218, 'Charger', 7),
(219, 'Cirrus', 7),
(220, 'Concorde', 7),
(221, 'Conquest', 7),
(222, 'Crossfire', 7),
(223, 'Daytona', 7),
(224, 'ES', 7),
(225, 'Fifth Avenue', 7),
(226, 'Grand Voyager', 7),
(227, 'GS', 7),
(228, 'Imperial', 7),
(229, 'Intrepid', 7),
(230, 'Lebaron', 7),
(231, 'LHS', 7),
(232, 'Neon', 7),
(233, 'New Yorker', 7),
(234, 'Newport', 7),
(235, 'Pacifica', 7),
(236, 'PT Cruiser', 7),
(237, 'Royal', 7),
(238, 'Saratoga', 7),
(239, 'Sebring', 7),
(240, 'Stratus', 7),
(241, 'Sunbeam', 7),
(242, 'TC', 7),
(243, 'Town & Country', 7),
(244, 'Vision', 7),
(245, 'Voyager', 7),
(246, '2CV', 8),
(247, 'Acadiane', 8),
(248, 'AMI', 8),
(249, 'AX', 8),
(250, 'Axel', 8),
(251, 'Berlingo', 8),
(252, 'BX', 8),
(253, 'C-Crosser', 8),
(254, 'C-Elysee', 8),
(255, 'C-Zero', 8),
(256, 'C1', 8),
(257, 'C15', 8),
(258, 'C2', 8),
(259, 'C25', 8),
(260, 'C3', 8),
(261, 'C3 Picasso', 8),
(262, 'C3 Pluriel', 8),
(263, 'C4', 8),
(264, 'C4 Aircross', 8),
(265, 'C4 Picasso', 8),
(266, 'C5', 8),
(267, 'C6', 8),
(268, 'C8', 8),
(269, 'CX', 8),
(270, 'DS', 8),
(271, 'DS3', 8),
(272, 'DS4', 8),
(273, 'DS5', 8),
(274, 'Dyane', 8),
(275, 'Evasion', 8),
(276, 'GS', 8),
(277, 'Jumper', 8),
(278, 'Jumpy', 8),
(279, 'LNA', 8),
(280, 'Nemo', 8),
(281, 'Saxo', 8),
(282, 'SM', 8),
(283, 'Synergie', 8),
(284, 'Visa', 8),
(285, 'Xantia', 8),
(286, 'XM', 8),
(287, 'Xsara', 8),
(288, 'Xsara Picasso', 8),
(289, 'ZX', 8),
(290, 'Dokker', 9),
(291, 'Duster', 9),
(292, 'Lodgy', 9),
(293, 'Logan', 9),
(294, 'Logan MCV', 9),
(295, 'Sandero', 9),
(296, 'Arcadia', 10),
(297, 'Brougham', 10),
(298, 'Damas', 10),
(299, 'Espero', 10),
(300, 'Evanada', 10),
(301, 'Kalos', 10),
(302, 'Korando', 10),
(303, 'Labo', 10),
(304, 'Lacetti', 10),
(305, 'Lanos', 10),
(306, 'Leganza', 10),
(307, 'Magnus', 10),
(308, 'Matiz', 10),
(309, 'Musso', 10),
(310, 'Nexia', 10),
(311, 'Nubira', 10),
(312, 'Prince', 10),
(313, 'Rezzo', 10),
(314, 'Tacuma', 10),
(315, 'Tico', 10),
(316, 'Avenger', 11),
(317, 'Caliber', 11),
(318, 'Caravan', 11),
(319, 'Challenger', 11),
(320, 'Charger', 11),
(321, 'Colt', 11),
(322, 'Coronet', 11),
(323, 'Custom 880', 11),
(324, 'Dakota', 11),
(325, 'Dart', 11),
(326, 'Daytona', 11),
(327, 'Durango', 11),
(328, 'Dynasty', 11),
(329, 'Grand Caravan', 11),
(330, 'Intrepid', 11),
(331, 'Journey', 11),
(332, 'La Femme', 11),
(333, 'Lancer', 11),
(334, 'Magnum', 11),
(335, 'Monaco', 11),
(336, 'Neon', 11),
(337, 'Nitro', 11),
(338, 'RAM', 11),
(339, 'Sebring', 11),
(340, 'Shadow', 11),
(341, 'Spirit', 11),
(342, 'Stealth', 11),
(343, 'Stratus', 11),
(344, 'Viper', 11),
(345, '212', 12),
(346, '246', 12),
(347, '250', 12),
(348, '275', 12),
(349, '308', 12),
(350, '328', 12),
(351, '330', 12),
(352, '348', 12),
(353, '360', 12),
(354, '365', 12),
(355, '400', 12),
(356, '410', 12),
(357, '412', 12),
(358, '456', 12),
(359, '458', 12),
(360, '500', 12),
(361, '512', 12),
(362, '550', 12),
(363, '575M', 12),
(364, '599', 12),
(365, '612', 12),
(366, 'California', 12),
(367, 'Dino', 12),
(368, 'Enzo', 12),
(369, 'F355', 12),
(370, 'F40', 12),
(371, 'F430', 12),
(372, 'F450', 12),
(373, 'F50', 12),
(374, 'F512', 12),
(375, 'F620GT', 12),
(376, 'FF', 12),
(377, 'GTB', 12),
(378, 'GTO', 12),
(379, 'GTS', 12),
(380, 'Mondial', 12),
(381, 'Testarossa', 12),
(382, '126', 13),
(383, '127', 13),
(384, '128', 13),
(385, '130', 13),
(386, '132', 13),
(387, '500', 13),
(388, '500C', 13),
(389, '508', 13),
(390, 'Albea', 13),
(391, 'Argenta', 13),
(392, 'Barchetta', 13),
(393, 'Brava', 13),
(394, 'Bravo', 13),
(395, 'Cinquecento', 13),
(396, 'Coupe', 13),
(397, 'Croma', 13),
(398, 'Doblo', 13),
(399, 'Ducato', 13),
(400, 'Fiorino', 13),
(401, 'Freemont', 13),
(402, 'Grande Punto', 13),
(403, 'Idea', 13),
(404, 'Linea', 13),
(405, 'Marea', 13),
(406, 'Mirafiori', 13),
(407, 'Multipla', 13),
(408, 'Palio', 13),
(409, 'Panda', 13),
(410, 'Punto', 13),
(411, 'Punto Evo', 13),
(412, 'Qubo', 13),
(413, 'Regata', 13),
(414, 'Ritmo', 13),
(415, 'Scudo', 13),
(416, 'Sedici', 13),
(417, 'Seicento', 13),
(418, 'Siena', 13),
(419, 'Stilo', 13),
(420, 'Strada', 13),
(421, 'Tempra', 13),
(422, 'Tipo', 13),
(423, 'Ulysse', 13),
(424, 'Uno', 13),
(425, 'X19', 13),
(426, 'Aerostar', 14),
(427, 'B-MAX', 14),
(428, 'Bronco', 14),
(429, 'C-MAX', 14),
(430, 'Capri', 14),
(431, 'Cargo', 14),
(432, 'Consul', 14),
(433, 'Contour', 14),
(434, 'Cortina', 14),
(435, 'Cougar', 14),
(436, 'Courier', 14),
(437, 'Crown Victoria', 14),
(438, 'Econoline', 14),
(439, 'Econovan', 14),
(440, 'EcoSport', 14),
(441, 'Edge', 14),
(442, 'Escape', 14),
(443, 'Escort', 14),
(444, 'Excursion', 14),
(445, 'Expedition', 14),
(446, 'Explorer', 14),
(447, 'Express', 14),
(448, 'F-100', 14),
(449, 'F-150', 14),
(450, 'F-250', 14),
(451, 'F-350', 14),
(452, 'F-600', 14),
(453, 'F-700', 14),
(454, 'F-800', 14),
(455, 'Fiesta', 14),
(456, 'Flex', 14),
(457, 'Focus', 14),
(458, 'Focus C-Max', 14),
(459, 'Freestyle', 14),
(460, 'Fusion', 14),
(461, 'Galaxy', 14),
(462, 'Granada', 14),
(463, 'GT', 14),
(464, 'Ka', 14),
(465, 'Kuga', 14),
(466, 'LTD', 14),
(467, 'Maverick', 14),
(468, 'Mondeo', 14),
(469, 'Mustang', 14),
(470, 'Orion', 14),
(471, 'P100', 14),
(472, 'Probe', 14),
(473, 'Puma', 14),
(474, 'Ranchero', 14),
(475, 'Ranger', 14),
(476, 'Rimor', 14),
(477, 'S-MAX', 14),
(478, 'Scorpio', 14),
(479, 'Sierra', 14),
(480, 'Sportka', 14),
(481, 'Streetka', 14),
(482, 'Super Duty', 14),
(483, 'Taunus', 14),
(484, 'Taurus', 14),
(485, 'Tempo', 14),
(486, 'Thunderbird', 14),
(487, 'Tourneo', 14),
(488, 'Transit', 14),
(489, 'Windstar', 14),
(490, 'Zephyr', 14),
(491, 'Zodiac', 14),
(492, 'Accord', 15),
(493, 'Accord Type-R', 15),
(494, 'Airwave', 15),
(495, 'Ascot', 15),
(496, 'Avancier', 15),
(497, 'Ballade', 15),
(498, 'Beat', 15),
(499, 'Capa', 15),
(500, 'City', 15),
(501, 'Civic', 15),
(502, 'Civic Type-R', 15),
(503, 'Concerto', 15),
(504, 'CR-V', 15),
(505, 'CR-Z', 15),
(506, 'Crossroad', 15),
(507, 'Crosstour', 15),
(508, 'CRX', 15),
(509, 'Domani', 15),
(510, 'Element', 15),
(511, 'FCX', 15),
(512, 'Fit', 15),
(513, 'FR-V', 15),
(514, 'HR-V', 15),
(515, 'Insight', 15),
(516, 'Inspire', 15),
(517, 'Integra', 15),
(518, 'Jazz', 15),
(519, 'Legend', 15),
(520, 'Life', 15),
(521, 'Logo', 15),
(522, 'Mobilio', 15),
(523, 'NSX', 15),
(524, 'Odyssey', 15),
(525, 'Passport', 15),
(526, 'Pilot', 15),
(527, 'Prelude', 15),
(528, 'Quintet', 15),
(529, 'Ridgeline', 15),
(530, 'S2000', 15),
(531, 'Shuttle', 15),
(532, 'Stream', 15),
(533, 'Thats', 15),
(534, 'Today', 15),
(535, 'Z', 15),
(536, 'H1', 16),
(537, 'H2', 16),
(538, 'H3', 16),
(539, 'Accent', 17),
(540, 'Amica', 17),
(541, 'Atos', 17),
(542, 'Azera', 17),
(543, 'Coupe', 17),
(544, 'Dynasty', 17),
(545, 'E3', 17),
(546, 'Elantra', 17),
(547, 'Entourage', 17),
(548, 'Equus', 17),
(549, 'Excel', 17),
(550, 'Galloper', 17),
(551, 'Genesis', 17),
(552, 'Getz', 17),
(553, 'Grandeur', 17),
(554, 'H1', 17),
(555, 'H100', 17),
(556, 'H200', 17),
(557, 'H350', 17),
(558, 'i10', 17),
(559, 'i20', 17),
(560, 'i30', 17),
(561, 'i40', 17),
(562, 'ix20', 17),
(563, 'ix35', 17),
(564, 'ix55', 17),
(565, 'Lantra', 17),
(566, 'Marcia', 17),
(567, 'Matrix', 17),
(568, 'Pony', 17),
(569, 'Porter', 17),
(570, 'Santa Fe', 17),
(571, 'Santamo', 17),
(572, 'Satellite', 17),
(573, 'Scoupe', 17),
(574, 'Sonata', 17),
(575, 'Stellar', 17),
(576, 'Terracan', 17),
(577, 'Tiburon', 17),
(578, 'Trajet', 17),
(579, 'Tucson', 17),
(580, 'Veloster', 17),
(581, 'Veracruz', 17),
(582, 'X2', 17),
(583, 'XG', 17),
(584, 'Daimler', 18),
(585, 'E-Type', 18),
(586, 'F-Type', 18),
(587, 'S-Type', 18),
(588, 'SS', 18),
(589, 'X-Type', 18),
(590, 'XF', 18),
(591, 'XJ', 18),
(592, 'XJ12', 18),
(593, 'XJ40', 18),
(594, 'XJ6', 18),
(595, 'XJ8', 18),
(596, 'XJR', 18),
(597, 'XJ220', 18),
(598, 'XJS', 18),
(599, 'XK', 18),
(600, 'XK8', 18),
(601, 'XKR', 18),
(602, 'XK120', 18),
(603, 'XK140', 18),
(604, 'XK150', 18),
(605, 'XKSS', 18);

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
  ADD CONSTRAINT `kuulutus_ibfk_1` FOREIGN KEY (`body_type_id`) REFERENCES `body_type` (`body_type_id`),
  ADD CONSTRAINT `kuulutus_ibfk_10` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`),
  ADD CONSTRAINT `kuulutus_ibfk_11` FOREIGN KEY (`kw_id`) REFERENCES `kw` (`kw_id`),
  ADD CONSTRAINT `kuulutus_ibfk_12` FOREIGN KEY (`door_id`) REFERENCES `door` (`door_id`),
  ADD CONSTRAINT `kuulutus_ibfk_13` FOREIGN KEY (`muudlisad_id`) REFERENCES `muudlisad` (`muudlisad_id`),
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
