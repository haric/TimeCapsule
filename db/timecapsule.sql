-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 28, 2012 at 04:56 PM
-- Server version: 5.1.53
-- PHP Version: 5.3.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `timecapsule`
--

-- --------------------------------------------------------

--
-- Table structure for table `annotationtype`
--

CREATE TABLE IF NOT EXISTS `annotationtype` (
  `TypeID` int(10) unsigned NOT NULL,
  `TypeName` varchar(25) NOT NULL,
  PRIMARY KEY (`TypeID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `annotationtype`
--


-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE IF NOT EXISTS `authors` (
  `AuthorId` int(11) NOT NULL,
  `AuthorNAME` text NOT NULL,
  PRIMARY KEY (`AuthorId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authors`
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
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`MessageId`, `TimeStart`, `TimeEnd`, `Message`, `AuthorID`, `AnnotationType`, `TimeSubmitted`) VALUES
(1, '2012-07-28 12:43:42', '0000-00-00 00:00:00', 'test msg', 1, 2, '0000-00-00 00:00:00'),
(2, '2012-07-28 12:45:11', '0000-00-00 00:00:00', 'this is the real message', 2, 1, '0000-00-00 00:00:00');
