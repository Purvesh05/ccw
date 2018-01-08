-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2018 at 02:13 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ccw`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `staff_id` int(10) NOT NULL,
  `name` varchar(32) NOT NULL,
  `designation` varchar(32) NOT NULL,
  `authorities` varchar(32) NOT NULL,
  `project_as` varchar(250) NOT NULL,
  `pro_supervision` varchar(250) NOT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `contractors`
--

CREATE TABLE IF NOT EXISTS `contractors` (
  `form_id` int(10) NOT NULL,
  `project_domain` varchar(250) NOT NULL,
  `details_contractors` varchar(250) NOT NULL,
  `bugget` int(10) NOT NULL,
  `platform` varchar(250) NOT NULL,
  `requirements` varchar(250) NOT NULL,
  `tent_deadline` date NOT NULL,
  `date_meet` date NOT NULL,
  PRIMARY KEY (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `core_members`
--

CREATE TABLE IF NOT EXISTS `core_members` (
  `member_id` int(10) NOT NULL,
  `name` varchar(32) NOT NULL,
  `branch` varchar(10) NOT NULL,
  `year` int(10) NOT NULL,
  `contact_no` int(12) NOT NULL,
  `email_id` int(32) NOT NULL,
  `photo` blob NOT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `new_memberagnel`
--

CREATE TABLE IF NOT EXISTS `new_memberagnel` (
  `member_id` int(10) NOT NULL,
  `name` varchar(32) NOT NULL,
  `contact_no` int(10) NOT NULL,
  `email_id` varchar(32) NOT NULL,
  `branch` varchar(12) NOT NULL,
  `experience` varchar(250) NOT NULL,
  `specialization` varchar(250) NOT NULL,
  `photo` blob NOT NULL,
  `id_photo` blob NOT NULL,
  `progress` varchar(250) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `dob` date NOT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `new_memberother`
--

CREATE TABLE IF NOT EXISTS `new_memberother` (
  `member_id` int(10) NOT NULL,
  `name` varchar(32) NOT NULL,
  `contact_no` int(12) NOT NULL,
  `email_id` varchar(32) NOT NULL,
  `branch` varchar(12) NOT NULL,
  `college_name` varchar(40) NOT NULL,
  `experience` varchar(250) NOT NULL,
  `specialization` varchar(250) NOT NULL,
  `photo` blob NOT NULL,
  `id_photo` blob NOT NULL,
  `progress` varchar(250) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `dob` date NOT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `project_table`
--

CREATE TABLE IF NOT EXISTS `project_table` (
  `project_id` int(32) NOT NULL,
  `contractor_id` int(32) NOT NULL,
  `project_domain` varchar(40) NOT NULL,
  `description` varchar(250) NOT NULL,
  `cost` int(12) NOT NULL,
  `team_work` varchar(250) NOT NULL,
  `assigned_date` date NOT NULL,
  `last_date` date NOT NULL,
  `current_status` varchar(250) NOT NULL,
  `milestone` varchar(250) NOT NULL,
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

CREATE TABLE IF NOT EXISTS `user_profile` (
  `member_id` int(10) NOT NULL,
  `current_project` varchar(250) NOT NULL,
  `credit_point` int(10) NOT NULL,
  `task_assign` varchar(250) NOT NULL,
  `progress` varchar(250) NOT NULL,
  `domain` varchar(250) NOT NULL,
  PRIMARY KEY (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
