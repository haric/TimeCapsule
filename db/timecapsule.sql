-- phpMyAdmin SQL Dump
-- version 3.4.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 21, 2012 at 09:02 PM
-- Server version: 5.5.20
-- PHP Version: 5.3.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `timecapsule`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `MessageId` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `TimeStart` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `TimeEnd` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Message` varchar(255) NOT NULL,
  `AuthorID` int(11) NOT NULL,
  `AnnotationType` int(11) NOT NULL,
  `TimeSubmitted` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  UNIQUE KEY `MessageId` (`MessageId`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`MessageId`, `TimeStart`, `TimeEnd`, `Message`, `AuthorID`, `AnnotationType`, `TimeSubmitted`) VALUES
(1, '2012-08-21 20:43:08', '0000-00-00 00:00:00', 'Facts about bird feeders', 1, 2, '0000-00-00 00:00:00'),
(2, '2012-08-21 20:46:12', '0000-00-00 00:00:00', 'Most bird feeders supply seeds or bird food, such as Millet, Sunflower (Oil and Striped), Safflower, Niger seed, and rapeseed or canola seed to seed-eating birds.', 2, 2, '0000-00-00 00:00:00'),
(3, '2012-08-21 20:58:41', '0000-00-00 00:00:00', 'Bird feeders often are used for birdwatching and many people keep webcams trained on feeders where birds often congregate.', 1, 2, '0000-00-00 00:00:00'),
(4, '2012-08-21 21:00:48', '0000-00-00 00:00:00', ' People who feed wild birds often attempt to attract birds to suburban and domestic locations.', 1, 2, '0000-00-00 00:00:00'),
(5, '2012-08-21 21:01:19', '0000-00-00 00:00:00', 'James Fisher has written that the first person recorded as feeding wild birds was the 6th century monk Saint Serf of Fife who tamed a robin by feeding it. In the harsh winter of 1890-91 in Britain national newspapers asked people to put out food for birds', 0, 2, '0000-00-00 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
