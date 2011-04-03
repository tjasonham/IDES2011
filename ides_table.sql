-- phpMyAdmin SQL Dump
-- version 3.2.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 30, 2011 at 02:11 PM
-- Server version: 5.1.44
-- PHP Version: 5.2.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `ides_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `groupTable`
--

CREATE TABLE `groupTable` (
  `grp_id` int(5) NOT NULL AUTO_INCREMENT,
  `grp_name` varchar(255) NOT NULL,
  `grp_website` varchar(255) NOT NULL,
  `grp_abstract` varchar(255) NOT NULL,
  PRIMARY KEY (`grp_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `groupTable`
--

INSERT INTO `groupTable` VALUES(1, 'RIM', 'http://www.rim.ca', 'we create shit for RIM');

-- --------------------------------------------------------

--
-- Table structure for table `photoTable`
--

CREATE TABLE `photoTable` (
  `studentID` int(5) NOT NULL,
  `headshot` varchar(255) CHARACTER SET latin1 NOT NULL,
  `prjOne` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `prjTwo` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `prjThree` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  UNIQUE KEY `studentID` (`studentID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `photoTable`
--


-- --------------------------------------------------------

--
-- Table structure for table `studentTable`
--

CREATE TABLE `studentTable` (
  `stu_id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_fname` varchar(255) NOT NULL,
  `std_lname` varchar(255) NOT NULL,
  `stu_web` varchar(255) NOT NULL,
  `stu_email` varchar(255) NOT NULL,
  `stu_hometown` varchar(255) NOT NULL,
  `grp_title` varchar(255) NOT NULL,
  `grp_name` varchar(255) NOT NULL,
  `grp_id` int(11) NOT NULL,
  `instructor` varchar(255) NOT NULL,
  `quesOne` longtext NOT NULL COMMENT '1.  Project Abstract (100 words)',
  `quesTwo` longtext NOT NULL COMMENT '2.  How does design define/refine/redefine the way we live?',
  `quesThree` longtext NOT NULL COMMENT '3.  What inspires you to design?',
  `quesFour` longtext NOT NULL COMMENT '4.  What is your favourite book on design?',
  `quesFive` longtext NOT NULL COMMENT '5. Who is your favourite designer?',
  `quesSix` longtext NOT NULL COMMENT '6.  What do you enjoy most about design?',
  PRIMARY KEY (`stu_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `studentTable`
--

--
--Group ID 1 Adaptive Sports
--
INSERT INTO `studentTable` VALUES(1, 'Dao', 'Minh', 'http://minhdao.ca', 'design@minhdao.ca', 'Kanata, ON', 'Wheelchair Trainer', 'CPC: Adaptive Sports', 1, 'Stephen Field', 'abstract', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', '');
INSERT INTO `studentTable` VALUES(2, 'Healy', 'Joseph', 'n/a', 'n/a', 'Ottawa, ON', 'Paraplegic Sailboat Simulator', 'CPC: Adaptive Sports', 1, 'Stephen Field', 'abstract', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', '');
INSERT INTO `studentTable` VALUES(3, 'Jewell', 'Erin', 'http', '@', 'Ottawa', 'title', 'CPC: Adaptive Sports', 1, 'Stephen Field', 'abstract', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', '');
INSERT INTO `studentTable` VALUES(4, 'Lowe', 'Andrew', 'http', '@', 'Ottawa', 'title', 'CPC: Adaptive Sports', 1, 'Stephen Field', 'abstract', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', '');
INSERT INTO `studentTable` VALUES(5, 'Morgan', 'Kevin', 'http', '@', 'Ottawa', 'title', 'CPC: Adaptive Sports', 1, 'Stephen Field', 'abstract', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', '');

--
--Group ID 2 Workspace Next
--
INSERT INTO `studentTable` VALUES(6, 'Doiron', 'Charles', 'http://www.coroflot.com/doiron', 'charles.andre.doiron@gmail.com', 'Ottawa, ON', 'Satellite | Standing Workstation for the Shared Office', 'Teknion: Workspace Next', 2, 'Stephen Field', 'abstract', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', '');
INSERT INTO `studentTable` VALUES(7, 'Guerra Gunzel', 'Emmanuel', 'http', '@', 'Ottawa', 'title', 'Teknion: Workspace Next', 2, 'Stephen Field', 'abstract', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', '');
INSERT INTO `studentTable` VALUES(8, 'Kong', 'Claire', 'http', 'claire_kong@hotmail.com', 'Oshawa, ON', 'Shroudsystem for Personal Space', 'Teknion: Workspace Next', 2, 'Stephen Field', 'abstract', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', '');
INSERT INTO `studentTable` VALUES(9, 'Lau', 'William', 'http', '@', 'Ottawa', 'title', 'Teknion: Workspace Next', 2, 'Stephen Field', 'abstract', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', '');
INSERT INTO `studentTable` VALUES(10, 'Lee', 'Thomas', 'http', '@', 'Ottawa', 'title', 'Teknion: Workspace Next', 2, 'Stephen Field', 'abstract', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', '');
INSERT INTO `studentTable` VALUES(11, 'Zhang', 'Cynthia', 'http', '@', 'Ottawa', 'title', 'Teknion: Workspace Next', 2, 'Stephen Field', 'abstract', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', '');

--
--Group ID 3 Firetactics
--
INSERT INTO `studentTable` VALUES(12, 'Fromow', 'Mark', 'http', 'mfromow@gmail.com', 'Calgary, AB', 'Portable Work Shelter', 'OMNR: Firetactics', 3, 'Stephen Field', 'abstract', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', '');
INSERT INTO `studentTable` VALUES(13, 'Ho', 'Ruby', 'http', '@', 'Ottawa', 'title', 'OMNR: Firetactics', 3, 'Stephen Field', 'abstract', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', '');
INSERT INTO `studentTable` VALUES(14, 'Oddy', 'Lee', 'http', '@', 'Ottawa', 'title', 'OMNR: Firetactics', 3, 'Stephen Field', 'abstract', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', '');
INSERT INTO `studentTable` VALUES(15, 'Palmer', 'Jordan', 'http', '@', 'Ottawa', 'title', 'OMNR: Firetactics', 3, 'Stephen Field', 'abstract', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', '');
INSERT INTO `studentTable` VALUES(16, 'Pityk', 'Eugene', 'http', '@', 'Ottawa', 'title', 'OMNR: Firetactics', 3, 'Stephen Field', 'abstract', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', '');
INSERT INTO `studentTable` VALUES(17, 'Viol', 'Brandon', 'http', '@', 'Ottawa', 'title', 'OMNR: Firetactics', 3, 'Stephen Field', 'abstract', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', '');

--
--Group ID 4 Lota Renovacion
--
INSERT INTO `studentTable` VALUES(18, 'Bhimani', 'Rahim', 'http', '@', 'Ottawa', 'title', 'OCE: Lora Renovacion', 4, 'Lois Frankel', 'abstract', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', '');
INSERT INTO `studentTable` VALUES(19, 'Bussin', 'Rachel', 'http', '@', 'Ottawa', 'title', 'OCE: Lora Renovacion', 4, 'Lois Frankel', 'abstract', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', '');
INSERT INTO `studentTable` VALUES(20, 'Iouguina', 'Alena', 'http', '@', 'Ottawa', 'title', 'OCE: Lora Renovacion', 4, 'Lois Frankel', 'abstract', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', '');
INSERT INTO `studentTable` VALUES(21, 'Marusaik', 'Jane', 'http', '@', 'Ottawa', 'title', 'OCE: Lora Renovacion', 4, 'Lois Frankel', 'abstract', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', '');
INSERT INTO `studentTable` VALUES(22, 'Serrer', 'Samantha', 'http', '@', 'Ottawa', 'title', 'OCE: Lora Renovacion', 4, 'Lois Frankel', 'abstract', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', '');
INSERT INTO `studentTable` VALUES(23, 'Sheri', 'Yasaman', 'http', '@', 'Ottawa', 'title', 'OCE: Lora Renovacion', 4, 'Lois Frankel', 'abstract', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', '');

--
--Group ID 5 Mobile Life
--
INSERT INTO `studentTable` VALUES(24, 'Hill', 'Caleb', 'http', '@', 'Ottawa', 'title', 'RIM: Mobile Life', 5, 'Lois Frankel', 'abstract', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', '');
INSERT INTO `studentTable` VALUES(25, 'Lorsignol', 'Felix', 'http', '@', 'Ottawa', 'title', 'RIM: Mobile Life', 5, 'Lois Frankel', 'abstract', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', '');
INSERT INTO `studentTable` VALUES(26, 'Luong', 'Teddy', 'http', '@', 'Ottawa', 'title', 'RIM: Mobile Life', 5, 'Lois Frankel', 'abstract', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', '');
INSERT INTO `studentTable` VALUES(27, 'Mullins', 'Torrin', 'http', '@', 'Ottawa', 'title', 'RIM: Mobile Life', 5, 'Lois Frankel', 'abstract', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', '');
INSERT INTO `studentTable` VALUES(28, 'Tang', 'Sisi', 'http', '@', 'Ottawa', 'title', 'RIM: Mobile Life', 5, 'Lois Frankel', 'abstract', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', '');
INSERT INTO `studentTable` VALUES(29, 'Toros', 'Ece', 'http', '@', 'Ottawa', 'title', 'RIM: Mobile Life', 5, 'Lois Frankel', 'abstract', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', '');
INSERT INTO `studentTable` VALUES(30, 'Yuzbasioglu', 'Mehmet', 'http', '@', 'Ottawa', 'title', 'RIM: Mobile Life', 5, 'Lois Frankel', 'abstract', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', '');

--
--Group ID 6 ConnectED
--
INSERT INTO `studentTable` VALUES(31, 'Henderson', 'Lisa', 'http', '@', 'Ottawa', 'title', 'Smart: ConnectED', 6, 'Lois Frankel', 'abstract', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', '');
INSERT INTO `studentTable` VALUES(32, 'Marin', 'Megan', 'http', '@', 'Ottawa', 'title', 'Smart: ConnectED', 6, 'Lois Frankel', 'abstract', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', '');
INSERT INTO `studentTable` VALUES(33, 'McMahon', 'Cory', 'http', '@', 'Ottawa', 'title', 'Smart: ConnectED', 6, 'Lois Frankel', 'abstract', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', '');