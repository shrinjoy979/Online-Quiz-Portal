-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2019 at 12:08 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quizdbase`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `aid` int(250) NOT NULL,
  `answer` varchar(250) DEFAULT NULL,
  `ans_id` int(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`aid`, `answer`, `ans_id`) VALUES
(1, 'Hyper Text Markup Language', 1),
(2, 'Hyperlinks and Text Markup Language', 1),
(3, 'Home Tool Markup Language', 1),
(4, 'none of the above', 1),
(5, 'All div element', 2),
(6, 'The first div element', 2),
(7, 'The last div element', 2),
(8, 'none of the above', 2),
(9, 'The body section', 3),
(10, 'The head section', 3),
(11, 'Both the head section and the body section', 3),
(12, 'none of the above', 3),
(13, 'function myFunction()', 4),
(14, 'function:myFunction()', 4),
(15, 'function = myFunction()', 4),
(16, 'none of the above', 4),
(17, '.container', 5),
(18, '.container-fixed', 5),
(19, '.container-fluid', 5),
(20, 'none of the above', 5);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `qid` int(250) NOT NULL,
  `question` varchar(250) DEFAULT NULL,
  `ans_id` int(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`qid`, `question`, `ans_id`) VALUES
(1, 'What does HTML stand for?', 1),
(2, 'Look at the following selector: $(\"div\").What does it select?', 5),
(3, 'Where is the correct place to insert a javaScript?', 9),
(4, 'How do you create a function in javaScript?', 13),
(5, 'Which class provides a responsive fixed width container?', 17);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `uid` int(250) NOT NULL,
  `totalques` int(250) DEFAULT NULL,
  `answerscorrect` int(250) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `totalques`, `answerscorrect`, `username`) VALUES
(1, 5, 1, 'shrinjoy'),
(2, 5, 2, 'shrinjoy'),
(3, 5, 4, 'shrinjoy'),
(4, 5, 2, 'shrinjoy'),
(5, 5, 1, 'shrinjoy'),
(6, 5, 1, 'shrinjoy'),
(7, 5, 0, 'shrinjoy'),
(8, 5, 0, 'shrinjoy'),
(9, 5, 0, 'shrinjoy'),
(10, 5, 1, 'shrinjoy'),
(11, 5, 0, 'shrinjoy'),
(12, 5, 0, 'shrinjoy'),
(13, 5, 1, 'shrinjoy'),
(14, 5, 0, ''),
(15, 5, 1, 'shrinjoy'),
(16, 5, 4, 'shrinjoy'),
(17, 5, 4, 'shrinjoy'),
(18, 5, 4, 'shrinjoy'),
(19, 5, 4, 'shrinjoy'),
(20, 5, 4, 'shrinjoy'),
(21, 5, 4, 'shrinjoy'),
(22, 5, 4, 'shrinjoy'),
(23, 5, 4, 'shrinjoy'),
(24, 5, 4, 'shrinjoy'),
(25, 5, 4, 'shrinjoy'),
(26, 5, 4, 'shrinjoy'),
(27, 5, 4, 'shrinjoy'),
(28, 5, 4, 'shrinjoy'),
(29, 5, 4, 'shrinjoy'),
(30, 5, 4, 'shrinjoy'),
(31, 5, 4, 'shrinjoy'),
(32, 5, 4, 'shrinjoy'),
(33, 5, 4, 'shrinjoy'),
(34, 5, 4, 'shrinjoy'),
(35, 5, 0, 'shrinjoy'),
(36, 5, 1, 'shrinjoy'),
(37, 5, 1, 'shrinjoy'),
(38, 5, 1, 'shrinjoy'),
(39, 5, 1, 'shrinjoy'),
(40, 5, 1, 'shrinjoy'),
(41, 5, 1, 'shrinjoy'),
(42, 5, 1, 'shrinjoy'),
(43, 5, 1, 'shrinjoy'),
(44, 5, 1, 'shrinjoy'),
(45, 5, 1, 'shrinjoy'),
(46, 5, 1, 'shrinjoy'),
(47, 5, 0, 'shrinjoy'),
(48, 5, 1, 'shrinjoy'),
(49, 5, 1, 'shrinjoy'),
(50, 5, 1, 'shrinjoy'),
(51, 5, 1, 'shrinjoy'),
(52, 5, 1, 'shrinjoy'),
(53, 5, 1, 'shrinjoy'),
(54, 5, 1, 'shrinjoy'),
(55, 5, 1, 'shrinjoy'),
(56, 5, 1, 'shrinjoy'),
(57, 5, 1, 'shrinjoy'),
(58, 5, 1, 'raja'),
(59, 5, 5, 'shrinjoy'),
(60, 5, 0, 'shrinjoy'),
(61, 5, 0, 'shrinjoy'),
(62, 5, 0, 'shrinjoy'),
(63, 5, 1, 'shrinjoy'),
(64, 5, 5, 'shrinjoy'),
(65, 5, 5, 'swapan'),
(66, 5, 2, 'raju'),
(67, 5, 0, 'raju'),
(68, 5, 0, 'raju'),
(69, 5, 0, 'raju'),
(70, 5, 0, 'raju'),
(71, 5, 0, 'raju'),
(72, 5, 0, 'raju'),
(73, 5, 0, 'raju'),
(74, 5, 5, 'raju'),
(75, 5, 2, 'shrinjoy'),
(76, 5, 2, 'shrinjoy'),
(77, 5, 0, 'shrinjoy'),
(78, 5, 0, 'shrinjoy'),
(79, 5, 1, 'shrinjoy');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `aid` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `qid` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `uid` int(250) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
