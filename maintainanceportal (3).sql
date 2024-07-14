-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2024 at 06:52 PM
-- Server version: 5.5.39
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `maintainanceportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `adddep`
--

CREATE TABLE IF NOT EXISTS `adddep` (
  `demail` varchar(50) NOT NULL,
  `dpassword` varchar(50) NOT NULL,
  `dname` varchar(50) NOT NULL,
  `taluka` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adddep`
--

INSERT INTO `adddep` (`demail`, `dpassword`, `dname`, `taluka`, `district`, `address`, `mobile`) VALUES
('water@gmail.com', '174', 'water', 'dhule', 'dhule', 'malagaonr d', '7896325410'),
('light@gmail.com', '123456', 'light', 'Pune', 'Pune', 'pune road', '1245873690');

-- --------------------------------------------------------

--
-- Table structure for table `complain`
--

CREATE TABLE IF NOT EXISTS `complain` (
  `title` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `department` varchar(20) NOT NULL,
  `date` varchar(50) NOT NULL,
  `pendingtask` varchar(50) NOT NULL,
  `completetask` varchar(50) NOT NULL,
  `uemail` varchar(50) NOT NULL,
  `demail` varchar(50) NOT NULL,
  `comment` varchar(60) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'disapproved',
  `reply` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complain`
--

INSERT INTO `complain` (`title`, `description`, `department`, `date`, `pendingtask`, `completetask`, `uemail`, `demail`, `comment`, `status`, `reply`) VALUES
('shortage of water', 'very much shortage of water', 'water', '2022-08-17', 'no', 'yes', 'shubham@gmail.com', '', '', 'aproved', 'it wil take some time'),
('', '', '', '', '', '', '', 'water@gmail.com', '', '', ''),
('water', 'dirty Water', 'water', '2022-08-16', 'yes', 'no', 'jay@gmail.com', 'water@gmail.com', 'bad', 'aproved', 'ok dont worry'),
('Light', 'light is always loe', 'light', '2022-08-20', 'yes', 'not completed', 'jay@gmail.com', 'light@gmail.com', 'bad', 'disaproved', 'asd'),
('', '', '', '', '', '', '', '', '', 'disapproved', ''),
('Water', 'Water', 'water', '2022-08-17', 'yes', 'no', 'jay@gmail.com', 'water@gmail.com', 'bad', 'aproved', 'ok dont worry'),
('road is damage', 'very bad road', 'road', '2022-08-25', 'yes', 'no', 'jay@gmail.com', 'road@gmail.com', '', 'aproved', 'sorry for our services');

-- --------------------------------------------------------

--
-- Table structure for table `help`
--

CREATE TABLE IF NOT EXISTS `help` (
  `name` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `help`
--

INSERT INTO `help` (`name`, `contact`) VALUES
('police', '100'),
('Ambulance', '102');

-- --------------------------------------------------------

--
-- Table structure for table `helplineno`
--

CREATE TABLE IF NOT EXISTS `helplineno` (
  `name` varchar(40) NOT NULL,
  `contact` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `roadmain`
--

CREATE TABLE IF NOT EXISTS `roadmain` (
  `roadname` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `departname` varchar(50) NOT NULL,
  `deadlinedate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roadmain`
--

INSERT INTO `roadmain` (`roadname`, `location`, `departname`, `deadlinedate`) VALUES
('dsasd', 'adfadsacas', 'asdasd', '2022-08-26'),
('abc', 'asd', 'light', '2022-08-25'),
('Dmart Road', 'Dhule', 'road', '2022-08-17'),
('', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `userdet`
--

CREATE TABLE IF NOT EXISTS `userdet` (
  `uemail` varchar(50) NOT NULL,
  `upassword` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userdet`
--

INSERT INTO `userdet` (`uemail`, `upassword`, `name`, `mobile`, `address`) VALUES
('0', '123456', '0', '0', '0'),
('0', '112233', '0', '789654123', '0'),
('shubham@gmail.com', '112233', 'shubham', '7896541230', 'dhule'),
('jay@gmail.com', '174', 'jay', '9875642310', '`Mumbai');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
