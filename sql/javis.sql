-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 20, 2013 at 08:03 AM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `javis`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE IF NOT EXISTS `answer` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `dateTime` datetime NOT NULL,
  `email` varchar(100) NOT NULL,
  `questionID` bigint(20) DEFAULT '0',
  `description` varchar(1000) NOT NULL,
  `noOfReplies` int(11) NOT NULL DEFAULT '0',
  `likes` int(11) NOT NULL DEFAULT '0',
  `dislikes` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `email` (`email`),
  KEY `questionID` (`questionID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`id`, `dateTime`, `email`, `questionID`, `description`, `noOfReplies`, `likes`, `dislikes`) VALUES
(0, '2013-07-19 17:00:00', 'user1@hotmail.com', NULL, '0', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `parentID` bigint(20) NOT NULL DEFAULT '0',
  `categoryName` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parentID` (`parentID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `parentID`, `categoryName`) VALUES
(0, 0, ''),
(1, 0, 'Credit Card'),
(2, 0, 'Account'),
(3, 0, 'Promotion'),
(4, 0, 'Loan'),
(5, 0, 'General'),
(6, 0, 'Investment');

-- --------------------------------------------------------

--
-- Table structure for table `dislikelist`
--

CREATE TABLE IF NOT EXISTS `dislikelist` (
  `answerID` bigint(20) NOT NULL DEFAULT '0',
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`answerID`,`email`),
  KEY `answerID` (`answerID`,`email`),
  KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `likelist`
--

CREATE TABLE IF NOT EXISTS `likelist` (
  `answerID` bigint(20) NOT NULL DEFAULT '0',
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`answerID`,`email`),
  KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE IF NOT EXISTS `notification` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `answerID` bigint(20) NOT NULL DEFAULT '0',
  `notificationDescription` varchar(500) NOT NULL,
  `seen` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `answerID` (`answerID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `description` varchar(1000) NOT NULL,
  `optionalDescription` varchar(1000) NOT NULL,
  `dateTime` datetime NOT NULL,
  `topAnswerID` bigint(20) DEFAULT '0',
  `email` varchar(100) DEFAULT NULL,
  `noOfAnswers` int(11) NOT NULL DEFAULT '0',
  `categoryID` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `topAnswerID` (`topAnswerID`,`email`,`categoryID`),
  KEY `email` (`email`,`categoryID`),
  KEY `categoryID` (`categoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `description`, `optionalDescription`, `dateTime`, `topAnswerID`, `email`, `noOfAnswers`, `categoryID`) VALUES
(1, 'Steps for losing credit card?', 'I lost my credit card. What are the steps to be taken?', '"2013-07-19 17:00:00"', 0, 'user1@hotmail.com', 0, 1),
(2, 'What are the requirements to apply for the ABC Card?', '', '"2013-07-19 17:00:00"', 0, 'user1@hotmail.com', 0, 1),
(3, 'Who should I contact if I lost my Credit Card?', '', '2013-07-19 17:00:00', 0, 'user1@hotmail.com', 0, 1),
(4, 'I wish to cancel my credit card. What number should I call?', 'I am using ABC credit card.', '2013-07-19 17:00:00', 0, 'user1@hotmail.com', 0, 1),
(5, 'How to apply for ABC Credit Card?', '', '2013-07-19 17:00:00', 0, 'user1@hotmail.com', 0, 1),
(6, 'How do I open a savings account?', '', '2013-07-19 17:00:00', 0, 'user1@hotmail.com', 0, 2),
(7, 'What is the minimum amount for an account before the bank start charging?', '', '2013-07-19 17:00:00', 0, 'user1@hotmail.com', 0, 2),
(8, 'How much do I have to deposit to open an account?', '', '2013-07-19 17:00:00', 0, 'user1@hotmail.com', 0, 2),
(9, 'Do I have to pay a fee if I wish to terminate my account?', '', '2013-07-19 17:00:00', 0, 'user1@hotmail.com', 0, 2),
(10, 'Do I have to pay a fee to switch from current to savings account?', '', '2013-07-19 17:00:00', 0, 'user1@hotmail.com', 0, 2),
(11, 'What promotions do I get from ABC Card?', '', '2013-07-19 17:00:00', 0, 'user1@hotmail.com', 0, 3),
(12, 'What are the recent promotions?', 'Any recommendations of good promotions?', '2013-07-19 17:00:00', 0, 'user1@hotmail.com', 0, 3),
(13, 'What are the top promotions?', '', '2013-07-19 17:00:00', 0, 'user1@hotmail.com', 0, 3),
(14, 'When do the promotions expire?', '', '2013-07-19 17:00:00', 0, 'user1@hotmail.com', 0, 3),
(15, 'How do I like the promotions so that my friends can see?', 'Is it also sharable on Facebook and Twitter?', '2013-07-19 17:00:00', 0, 'user1@hotmail.com', 0, 3),
(16, 'How long does it take to apply for a credit card?', 'I have just applied for my ABC card and hope to get it by next week.', '2013-07-19 17:00:00', 0, 'user1@hotmail.com', 0, 1),
(17, 'What documents are required to apply for a loan?', '', '2013-07-19 17:00:00', 0, 'user1@hotmail.com', 0, 4),
(18, 'How are my loan interest calculated?', '', '2013-07-19 17:00:00', 0, 'user1@hotmail.com', 0, 4),
(19, 'What requirements are there to apply for a loan?', 'Requirements referring to minimum wage, family background etc.', '2013-07-19 17:00:00', 0, 'user1@hotmail.com', 0, 4),
(20, 'What is the current bank interest?', '', '2013-07-19 17:00:00', 0, 'user1@hotmail.com', 0, 5),
(21, 'What are the ways to transfer funds?', '', '2013-07-19 17:00:00', 0, 'user1@hotmail.com', 0, 5),
(22, 'What are the ways to contact the bank?', '', '2013-07-19 17:00:00', 0, 'user1@hotmail.com', 0, 5),
(23, 'What are the types of savings accounts that are offered?', '', '2013-07-19 17:00:00', 0, 'user1@hotmail.com', 0, 2),
(24, 'What are the investment fund packages that are offered?', '', '2013-07-19 17:00:00', 0, 'user1@hotmail.com', 0, 6),
(25, 'What kind of credit cards does this bank offer?', '', '2013-07-19 17:00:00', 0, 'user1@hotmail.com', 0, 1),
(26, 'I am a 20 year old student, what credit card best suits me?', '', '2013-07-19 17:00:00', 0, 'user1@hotmail.com', 0, 1),
(27, 'What can my ABC credit card points redeem for?', '', '2013-07-19 17:00:00', 0, 'user1@hotmail.com', 0, 1),
(28, 'What are the bonus points for?', '', '2013-07-19 17:00:00', 0, 'user1@hotmail.com', 0, 5),
(29, 'What are the charges to transfer funds to overseas?', '', '2013-07-19 17:00:00', 0, 'user1@hotmail.com', 0, 5),
(30, 'What are the opening for the branches?', '', '2013-07-19 17:00:00', 0, 'user1@hotmail.com', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `reply`
--

CREATE TABLE IF NOT EXISTS `reply` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `email` varchar(100) NOT NULL,
  `replyDescription` varchar(500) NOT NULL,
  `dateTime` datetime NOT NULL,
  `answerID` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `email` (`email`),
  KEY `answerID` (`answerID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE IF NOT EXISTS `report` (
  `id` bigint(20) NOT NULL DEFAULT '0',
  `dateTime` datetime NOT NULL,
  `email` varchar(100) NOT NULL,
  `questionID` bigint(20) NOT NULL DEFAULT '0',
  `answerID` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `questionID` (`questionID`,`answerID`),
  KEY `answerID` (`answerID`),
  KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reward`
--

CREATE TABLE IF NOT EXISTS `reward` (
  `id` bigint(20) NOT NULL,
  `pointsRequired` int(11) NOT NULL DEFAULT '0',
  `rankRequired` int(11) NOT NULL DEFAULT '0',
  `expiry` datetime NOT NULL,
  `likes` int(11) NOT NULL DEFAULT '0',
  `rewardDescription` varchar(200) NOT NULL,
  `picture` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reward`
--

INSERT INTO `reward` (`id`, `pointsRequired`, `rankRequired`, `expiry`, `likes`, `rewardDescription`, `picture`) VALUES
(1, 100, 0, '2013-07-19 17:00:00', 0, 'Padfone Infinity', 'No picture yet');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `email` varchar(100) NOT NULL,
  `rewardPoints` int(11) NOT NULL DEFAULT '0',
  `rankPoints` int(11) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL,
  `rewardID` bigint(20) NOT NULL DEFAULT '0',
  `noOfQuestions` int(11) NOT NULL DEFAULT '0',
  `noOfAnswers` int(11) NOT NULL DEFAULT '0',
  `password` varchar(100) NOT NULL,
  `picture` varchar(100) NOT NULL,
  PRIMARY KEY (`email`),
  KEY `rewardID` (`rewardID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`email`, `rewardPoints`, `rankPoints`, `rank`, `name`, `rewardID`, `noOfQuestions`, `noOfAnswers`, `password`, `picture`) VALUES
('user1@hotmail.com', 0, 0, 0, 'user1', 1, 0, 0, 'user1', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `useranswer`
--

CREATE TABLE IF NOT EXISTS `useranswer` (
  `email` varchar(100) NOT NULL,
  `answerID` bigint(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`email`,`answerID`),
  KEY `answerID` (`answerID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `userquestion`
--

CREATE TABLE IF NOT EXISTS `userquestion` (
  `email` varchar(100) NOT NULL,
  `questionID` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`email`,`questionID`),
  KEY `questionID` (`questionID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `answer_ibfk_1` FOREIGN KEY (`email`) REFERENCES `user` (`email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `answer_ibfk_2` FOREIGN KEY (`questionID`) REFERENCES `question` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_ibfk_1` FOREIGN KEY (`parentID`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dislikelist`
--
ALTER TABLE `dislikelist`
  ADD CONSTRAINT `dislikelist_ibfk_4` FOREIGN KEY (`email`) REFERENCES `user` (`email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dislikelist_ibfk_3` FOREIGN KEY (`answerID`) REFERENCES `answer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `likelist`
--
ALTER TABLE `likelist`
  ADD CONSTRAINT `likelist_ibfk_2` FOREIGN KEY (`email`) REFERENCES `user` (`email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `likelist_ibfk_1` FOREIGN KEY (`answerID`) REFERENCES `answer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notification`
--
ALTER TABLE `notification`
  ADD CONSTRAINT `notification_ibfk_1` FOREIGN KEY (`answerID`) REFERENCES `answer` (`id`);

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `question_ibfk_1` FOREIGN KEY (`topAnswerID`) REFERENCES `answer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `question_ibfk_2` FOREIGN KEY (`email`) REFERENCES `user` (`email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `question_ibfk_3` FOREIGN KEY (`categoryID`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reply`
--
ALTER TABLE `reply`
  ADD CONSTRAINT `reply_ibfk_2` FOREIGN KEY (`answerID`) REFERENCES `answer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reply_ibfk_1` FOREIGN KEY (`email`) REFERENCES `user` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `report`
--
ALTER TABLE `report`
  ADD CONSTRAINT `report_ibfk_3` FOREIGN KEY (`answerID`) REFERENCES `answer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `report_ibfk_1` FOREIGN KEY (`email`) REFERENCES `user` (`email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `report_ibfk_2` FOREIGN KEY (`questionID`) REFERENCES `question` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`rewardID`) REFERENCES `reward` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `useranswer`
--
ALTER TABLE `useranswer`
  ADD CONSTRAINT `useranswer_ibfk_2` FOREIGN KEY (`answerID`) REFERENCES `answer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `useranswer_ibfk_1` FOREIGN KEY (`email`) REFERENCES `user` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `userquestion`
--
ALTER TABLE `userquestion`
  ADD CONSTRAINT `userquestion_ibfk_2` FOREIGN KEY (`questionID`) REFERENCES `question` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `userquestion_ibfk_1` FOREIGN KEY (`email`) REFERENCES `user` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
