-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 28, 2016 at 11:38 AM
-- Server version: 5.7.12-0ubuntu1
-- PHP Version: 7.0.4-7ubuntu2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eseusp`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` int(11) NOT NULL,
  `testid` int(2) DEFAULT NULL,
  `testnumber` varchar(2) DEFAULT NULL,
  `typeEC` varchar(3) DEFAULT NULL,
  `answervalue` varchar(50) DEFAULT NULL,
  `segundos` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `testid`, `testnumber`, `typeEC`, `answervalue`, `segundos`) VALUES
(19, 4, 'C1', 'ES5', '4', NULL),
(20, 4, 'C1', 'ES6', '', NULL),
(21, 4, 'C2', 'ES5', '19', NULL),
(22, 4, 'C2', 'ES6', '', NULL),
(23, 4, 'C3', 'ES5', '4', NULL),
(24, 4, 'C3', 'ES6', '', NULL),
(25, 6, 'C1', 'ES5', '4', 46),
(26, 6, 'C1', 'ES6', '2', 29),
(27, 5, 'C1', 'ES5', '4', 83),
(28, 5, 'C1', 'ES6', '2', 46),
(29, 7, 'C1', 'ES5', '4', 60),
(30, 7, 'C1', 'ES6', '2', 34),
(31, 10, 'C1', 'ES5', '4', 44),
(32, 10, 'C1', 'ES6', '-2', 43),
(33, 5, 'C2', 'ES5', '19', 36),
(34, 5, 'C2', 'ES6', '18', 32),
(35, 13, 'C1', 'ES5', '-2', 61),
(36, 13, 'C1', 'ES6', '-2', 9),
(37, 12, 'C1', 'ES5', '4', 38),
(38, 12, 'C1', 'ES6', '2', 47),
(39, 9, 'C1', 'ES5', '4', 93),
(40, 9, 'C1', 'ES6', '2', 31),
(41, 6, 'C2', 'ES5', '-5', 94),
(42, 6, 'C2', 'ES6', '-1', 32),
(43, 15, 'C1', 'ES5', '4', 42),
(44, 15, 'C1', 'ES6', '2', 26),
(45, 8, 'C1', 'ES5', '4', 158),
(46, 8, 'C1', 'ES6', '2', 26),
(47, 11, 'C1', 'ES5', '4', 104),
(48, 11, 'C1', 'ES6', '2', 33),
(49, 9, 'C2', 'ES5', '1', 23),
(50, 9, 'C2', 'ES6', '18', 16),
(51, 14, 'C1', 'ES5', '0', 94),
(52, 14, 'C1', 'ES6', '3', 27),
(53, 12, 'C2', 'ES5', '19', 42),
(54, 12, 'C2', 'ES6', '', 22),
(55, 7, 'C2', 'ES5', '0', 56),
(56, 7, 'C2', 'ES6', '18', 98),
(57, 10, 'C2', 'ES5', '19', 103),
(58, 10, 'C2', 'ES6', '18', 26),
(59, 14, 'C2', 'ES5', '1', 40),
(60, 14, 'C2', 'ES6', '12', 9),
(61, 9, 'C3', 'ES5', '4', 49),
(62, 9, 'C3', 'ES6', '4', 20),
(63, 11, 'C2', 'ES5', '-1', 49),
(64, 11, 'C2', 'ES6', '18', 31),
(65, 8, 'C2', 'ES5', '19', 52),
(66, 8, 'C2', 'ES6', '18', 48),
(67, 15, 'C2', 'ES5', '19', 82),
(68, 15, 'C2', 'ES6', '18', 27),
(69, 12, 'C3', 'ES5', '2', 62),
(70, 12, 'C3', 'ES6', '4', 16),
(71, 7, 'C3', 'ES5', '4', 35),
(72, 7, 'C3', 'ES6', '4', 36),
(73, 14, 'C3', 'ES5', '4', 35),
(74, 14, 'C3', 'ES6', '4', 7),
(75, 5, 'C3', 'ES5', '4', 109),
(76, 5, 'C3', 'ES6', '44', 71),
(77, 6, 'C3', 'ES5', '4', 124),
(78, 6, 'C3', 'ES6', '4', 32),
(79, 11, 'C3', 'ES5', '4', 53),
(80, 11, 'C3', 'ES6', '4', 23),
(81, 10, 'C3', 'ES5', '4', 71),
(82, 10, 'C3', 'ES6', '4', 59),
(83, 8, 'C3', 'ES5', '4', 77),
(84, 8, 'C3', 'ES6', '0', 99),
(85, 15, 'C3', 'ES5', '4', 75),
(86, 15, 'C3', 'ES6', '0', 99),
(87, 23, 'C1', 'ES5', '', NULL),
(88, 23, 'C1', 'ES6', '', NULL),
(89, 16, 'C1', 'ES5', '4', 70),
(90, 16, 'C1', 'ES6', '2', 34),
(91, 18, 'C1', 'ES5', '4', 44),
(92, 18, 'C1', 'ES6', '4', 50),
(93, 17, 'C1', 'ES5', '4', 90),
(94, 17, 'C1', 'ES6', '2', 17),
(95, 20, 'C1', 'ES5', '4', 71),
(96, 20, 'C1', 'ES6', '2', 19),
(97, 19, 'C1', 'ES5', '4', 67),
(98, 19, 'C1', 'ES6', '2', 45),
(99, 18, 'C2', 'ES5', '19', 20),
(100, 18, 'C2', 'ES6', '18', 12),
(101, 16, 'C2', 'ES5', '19', 53),
(102, 16, 'C2', 'ES6', '18', 14),
(103, 19, 'C2', 'ES5', '19', 40),
(104, 19, 'C2', 'ES6', '18', 11),
(105, 21, 'C1', 'ES5', '4', 84),
(106, 21, 'C1', 'ES6', '6', 39),
(107, 23, 'C2', 'ES5', '19', 105),
(108, 23, 'C2', 'ES6', '18', 2),
(109, 18, 'C3', 'ES5', '6', 21),
(110, 18, 'C3', 'ES6', '6', 34),
(111, 24, 'C1', 'ES5', '4', 54),
(112, 24, 'C1', 'ES6', '2', 56),
(113, 22, 'C1', 'ES5', '4', 79),
(114, 22, 'C1', 'ES6', '2', 55),
(115, 27, 'C1', 'ES5', '4', 56),
(116, 27, 'C1', 'ES6', '2', 40),
(117, 16, 'C3', 'ES5', '4', 45),
(118, 16, 'C3', 'ES6', '4', 38),
(119, 21, 'C2', 'ES5', '19', 32),
(120, 21, 'C2', 'ES6', '18', 16),
(121, 23, 'C3', 'ES5', '4', 52),
(122, 23, 'C3', 'ES6', '4', 3),
(123, 17, 'C2', 'ES5', '19', 66),
(124, 17, 'C2', 'ES6', '18', 72),
(125, 20, 'C2', 'ES5', '19', 57),
(126, 20, 'C2', 'ES6', '18', 83),
(127, 25, 'C1', 'ES5', '4', 107),
(128, 25, 'C1', 'ES6', '2', 42),
(129, 19, 'C3', 'ES5', '2', 74),
(130, 19, 'C3', 'ES6', '0', 17),
(131, 21, 'C3', 'ES5', '4', 33),
(132, 21, 'C3', 'ES6', '4', 13),
(133, 24, 'C2', 'ES5', '19', 66),
(134, 24, 'C2', 'ES6', '18', 13),
(135, 22, 'C2', 'ES5', '19', 53),
(136, 22, 'C2', 'ES6', '18', 24),
(137, 30, 'C1', 'ES5', '4', 73),
(138, 30, 'C1', 'ES6', '2', 44),
(139, 31, 'C1', 'ES5', '4', 86),
(140, 31, 'C1', 'ES6', '2', 29),
(141, 33, 'C1', 'ES5', '6', 65),
(142, 33, 'C1', 'ES6', '2', 43),
(143, 17, 'C3', 'ES5', '2', 32),
(144, 17, 'C3', 'ES6', '4', 11),
(145, 29, 'C1', 'ES5', '7', 130),
(146, 29, 'C1', 'ES6', '8', 21),
(147, 27, 'C2', 'ES5', '361', 79),
(148, 27, 'C2', 'ES6', '20', 0),
(149, 26, 'C1', 'ES5', '4', 133),
(150, 26, 'C1', 'ES6', '2', 47),
(151, 29, 'C2', 'ES5', '12', 14),
(152, 29, 'C2', 'ES6', '15', 14),
(153, 28, 'C1', 'ES5', '4', 131),
(154, 28, 'C1', 'ES6', '2', 80),
(155, 32, 'C1', 'ES5', '3', 108),
(156, 32, 'C1', 'ES6', '9', 69),
(157, 22, 'C3', 'ES5', '4', 62),
(158, 22, 'C3', 'ES6', '4', 14),
(159, 29, 'C3', 'ES5', '5', 32),
(160, 29, 'C3', 'ES6', '4', 8),
(161, 34, 'C1', 'ES5', '', 126),
(162, 34, 'C1', 'ES6', '', 43),
(163, 27, 'C3', 'ES5', '4', NULL),
(164, 27, 'C3', 'ES6', '', NULL),
(165, 25, 'C2', 'ES5', '19', 96),
(166, 25, 'C2', 'ES6', '18', 24),
(167, 32, 'C2', 'ES5', '32', NULL),
(168, 32, 'C2', 'ES6', '', NULL),
(169, 31, 'C2', 'ES5', '19', NULL),
(170, 31, 'C2', 'ES6', '', NULL),
(171, 35, 'C1', 'ES5', '5', 189),
(172, 35, 'C1', 'ES6', '2', 23),
(173, 30, 'C2', 'ES5', '19', 123),
(174, 30, 'C2', 'ES6', '18', 25),
(175, 33, 'C2', 'ES5', '-19', 106),
(176, 33, 'C2', 'ES6', '-18', 41),
(177, 36, 'C1', 'ES5', '4', 169),
(178, 36, 'C1', 'ES6', '2', 35),
(179, 32, 'C3', 'ES5', '4', NULL),
(180, 32, 'C3', 'ES6', '', NULL),
(181, 38, 'C1', 'ES5', '4', 75),
(182, 38, 'C1', 'ES6', '2', 47),
(183, 34, 'C2', 'ES5', '6', 34),
(184, 34, 'C2', 'ES6', '8', 48),
(185, 39, 'C1', 'ES5', '4', 92),
(186, 39, 'C1', 'ES6', '2', 46),
(187, 37, 'C1', 'ES5', '4', 173),
(188, 37, 'C1', 'ES6', '2', 29),
(189, 35, 'C2', 'ES5', '9', 35),
(190, 35, 'C2', 'ES6', '8', 21),
(191, 34, 'C3', 'ES5', '4', 13),
(192, 34, 'C3', 'ES6', '0', 14),
(193, 20, 'C3', 'ES5', '4', 88),
(194, 20, 'C3', 'ES6', '4', 154),
(195, 40, 'C1', 'ES5', '4', 68),
(196, 40, 'C1', 'ES6', '2', 57),
(197, 35, 'C3', 'ES5', '4', 29),
(198, 35, 'C3', 'ES6', '8', 13),
(199, 24, 'C3', 'ES5', '4', 219),
(200, 24, 'C3', 'ES6', '4', 23),
(201, 38, 'C2', 'ES5', '19', 54),
(202, 38, 'C2', 'ES6', '18', 34),
(203, 26, 'C2', 'ES5', '19', 166),
(204, 26, 'C2', 'ES6', '18', 73),
(205, 26, 'C3', 'ES5', '19', 166),
(206, 26, 'C3', 'ES6', '18', 74),
(207, 30, 'C3', 'ES5', '4', 97),
(208, 30, 'C3', 'ES6', '4', 37),
(209, 33, 'C3', 'ES5', '4', 94),
(210, 33, 'C3', 'ES6', '4', 39),
(211, 25, 'C3', 'ES5', '4', 124),
(212, 25, 'C3', 'ES6', '4', 74),
(213, 41, 'C1', 'ES5', '4', 24),
(214, 41, 'C1', 'ES6', '2', 19),
(215, 39, 'C2', 'ES5', '19', 124),
(216, 39, 'C2', 'ES6', '18', 31),
(217, 40, 'C2', 'ES5', '19', 93),
(218, 40, 'C2', 'ES6', '18', 24),
(219, 38, 'C3', 'ES5', '4', 58),
(220, 38, 'C3', 'ES6', '4', 40),
(221, 41, 'C2', 'ES5', '19', 8),
(222, 41, 'C2', 'ES6', '18', 35),
(223, 28, 'C2', 'ES5', '19', 248),
(224, 28, 'C2', 'ES6', '18', 76),
(225, 36, 'C2', 'ES5', '19', 162),
(226, 36, 'C2', 'ES6', '18', 84),
(227, 37, 'C2', 'ES5', '19', 173),
(228, 37, 'C2', 'ES6', '18', 40),
(229, 40, 'C3', 'ES5', '4', 43),
(230, 40, 'C3', 'ES6', '4', 26),
(231, 41, 'C3', 'ES5', '4', 84),
(232, 41, 'C3', 'ES6', '4', 14),
(233, 39, 'C3', 'ES5', '2', 128),
(234, 39, 'C3', 'ES6', '4', 41),
(235, 37, 'C3', 'ES5', '2', 122),
(236, 37, 'C3', 'ES6', '2', 46),
(237, 36, 'C3', 'ES5', '4', 132),
(238, 36, 'C3', 'ES6', '4', 66),
(239, 28, 'C3', 'ES5', '4', 204),
(240, 28, 'C3', 'ES6', '4', 185);

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `testnumber` varchar(2) DEFAULT NULL,
  `typeEC` varchar(3) DEFAULT NULL,
  `correctanswer` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`testnumber`, `typeEC`, `correctanswer`) VALUES
('C1', 'ES5', '4'),
('C1', 'ES6', '2'),
('C2', 'ES5', '19'),
('C2', 'ES6', '18'),
('C3', 'ES5', '4'),
('C3', 'ES6', '4');

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` int(11) NOT NULL,
  `studentname` varchar(100) DEFAULT NULL,
  `expes5` int(11) DEFAULT NULL,
  `expes6` int(11) DEFAULT NULL,
  `expoo` int(11) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `firstclass` varchar(3) DEFAULT NULL,
  `orientacao` varchar(20) DEFAULT NULL,
  `tempoadequado` varchar(1) DEFAULT NULL,
  `observacaosujeito` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tests`
--

INSERT INTO `tests` (`id`, `studentname`, `expes5`, `expes6`, `expoo`, `semester`, `firstclass`, `orientacao`, `tempoadequado`, `observacaosujeito`) VALUES
(4, 'Diego Roberto Amaral Pelicce', 2, 2, 4, 4, 'ES6', 'BOA', 'S', NULL),
(5, 'Ana Paula', 3, 1, 0, 4, 'ES5', 'BOA', 'S', NULL),
(6, 'Felipe', 7, 2, 2, 4, 'ES6', 'EXCELENTE', 'S', NULL),
(7, 'Renan', 7, 4, 4, 4, 'ES5', 'EXCELENTE', 'S', NULL),
(8, 'LetÃ­cia Deieno Tadeu', 6, 5, 3, 4, 'ES6', 'EXCELENTE', 'S', NULL),
(9, 'Sergio', 2, 4, 4, 4, 'ES5', 'REGULAR', 'S', NULL),
(10, 'Pedro Henrique Machado Silva', 3, 6, 1, 4, 'ES6', 'BOA', 'S', NULL),
(11, 'Bruna Gradin', 6, 6, 1, 4, 'ES5', 'REGULAR', 'S', NULL),
(12, 'Guilherme de Cinque CalÃ©fi', 3, 5, 36, 8, 'ES6', 'BOA', 'S', NULL),
(13, 'joao', 9, 7, 0, 5, 'ES5', 'BOA', 'S', NULL),
(14, 'Maria', 1, 1, 1, 6, 'ES6', 'EXCELENTE', 'S', NULL),
(15, 'Charles Ruy', 6, 5, 3, 4, 'ES5', 'BOA', 'S', NULL),
(16, 'Luana Leao', 4, 2, 6, 3, 'ES6', 'EXCELENTE', 'S', NULL),
(17, 'JoÃ£o Vitor Motta Silva', 6, 4, 2, 3, 'ES5', 'REGULAR', 'S', NULL),
(18, 'victor marques da silva', 2, 6, -1, 3, 'ES6', 'BOA', 'S', NULL),
(19, 'Erick Ferreira de Souza', 2, 9, 6, 3, 'ES5', 'REGULAR', 'S', NULL),
(20, 'EstevÃ£o Felipe Munis de Abreu', 7, 7, 2, 3, 'ES6', 'REGULAR', 'S', NULL),
(21, 'Leonardo Jose Rodrigues Amorim', 7, 8, 0, 3, 'ES5', 'REGULAR', 'S', NULL),
(22, 'Fernanda Uzarti', 5, 8, 0, 3, 'ES6', 'REGULAR', 'S', NULL),
(23, 'Vinicius Zavarize Rates', 5, 6, 2, 3, 'ES5', 'EXCELENTE', 'S', NULL),
(24, 'Gustavo Barros Tiburtino', 9, 2, 1, 3, 'ES5', 'EXCELENTE', 'S', NULL),
(25, 'GIovani Melone Esquetini', 5, 9, 4, 3, 'ES5', 'BOA', 'S', NULL),
(26, 'Bruno Henrique Poiano', 2, 7, 3, 3, 'ES6', 'BOA', 'S', NULL),
(27, 'Carlos Henrique', 3, 9, 10, 4, 'ES5', 'BOA', 'S', NULL),
(28, 'Luisa Dentello e Silva', 8, 2, 0, 3, 'ES6', 'REGULAR', 'S', NULL),
(29, 'Marcos Henrique Tsutsumi Watanabe', 6, 5, 0, 3, 'ES5', 'REGULAR', 'S', NULL),
(30, 'Diego Souza', 18, 1, 36, 3, 'ES6', 'BOA', 'S', NULL),
(31, 'Felipe Moreira Manhani', 6, 0, 36, 3, 'ES5', 'REGULAR', 'S', NULL),
(32, 'Ailda mirela da Costa Carvalho', 2, 2, 3, 6, 'ES6', 'EXCELENTE', 'S', NULL),
(33, 'Mariana Trevisoli Gervino', 2, 8, 3, 8, 'ES5', 'EXCELENTE', 'S', NULL),
(34, 'Alexandre Alves da Costa', 6, 2, 6, 6, 'ES6', 'EXCELENTE', 'S', NULL),
(35, 'Guilherme Henrique Kenji Morino', 6, 4, 6, 6, 'ES5', 'BOA', 'S', NULL),
(36, 'Daniel Aparecido Cordeiro de Morais', 6, 7, 0, 3, 'ES6', 'REGULAR', 'S', NULL),
(37, 'Rafael Peral Santos', 1, 2, 1, 2, 'ES5', 'EXCELENTE', 'S', NULL),
(38, 'Charlles Paiva', 60, 8, 30, 3, 'ES6', 'BOA', 'S', NULL),
(39, 'Wellington Roberto Mendes Furtado', 5, 6, 2, 3, 'ES5', 'BOA', 'S', NULL),
(40, 'Thiago', 1, 1, 5, 7, 'ES6', 'EXCELENTE', 'S', NULL),
(41, 'FELIPE MOREIRA MANHANI', 6, 5, 12, 3, 'ES5', 'BOA', 'S', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fky_answers_testes` (`testid`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;
--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `fky_answers_testes` FOREIGN KEY (`testid`) REFERENCES `tests` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
