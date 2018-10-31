-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 26, 2018 at 03:58 PM
-- Server version: 5.5.25a
-- PHP Version: 5.4.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `atmdatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `clientid` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `birthday` int(11) NOT NULL,
  `contactnumber` int(11) NOT NULL,
  `securityquestion` varchar(200) NOT NULL,
  PRIMARY KEY (`adminid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`clientid`, `adminid`, `username`, `password`, `name`, `address`, `birthday`, `contactnumber`, `securityquestion`) VALUES
(789, 0, 'donts09', 192, 'donna mae pineda', 'las pinas', 0, 914567678, 'ronalyn'),
(7585, 89, 'kity', 89790, 'jkhk', 'kjh', 97, 987, 'loi'),
(234, 2423, 'Kathrina', 1234, 'kathy', 'dksjfk', 7812381, 72368, 'live'),
(123, 2018001, 'qweqwe', 192, 'qweqwe', 'qweqweqwe', 123123, 123123123, 'qweqweqwe'),
(6575, 2018002, 'kathy', 9876, 'cristine', 'kdak', 785, 879, 'lois');

-- --------------------------------------------------------

--
-- Table structure for table `clientinformation`
--

CREATE TABLE IF NOT EXISTS `clientinformation` (
  `clientid` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `accountno` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `birthday` int(11) NOT NULL,
  `contactnumber` int(11) NOT NULL,
  `securityquestion` varchar(50) NOT NULL,
  PRIMARY KEY (`accountno`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5018004 ;

--
-- Dumping data for table `clientinformation`
--

INSERT INTO `clientinformation` (`clientid`, `adminid`, `accountno`, `name`, `Username`, `Password`, `address`, `birthday`, `contactnumber`, `securityquestion`) VALUES
(235332, 2423, 1, 'katherine', 'kat', 1234, 'balayan', 6757, 78587, 'love'),
(2423, 2423, 2, 'kityy', 'ka', 7654, 'kashdl', 8768, 788, 'lo'),
(904820935, 2423, 3, 'cristina', 'tina', 9876, 'jkgk', 899, 768, 'loves'),
(6712, 2018002, 5018002, 'Donna Mae Pineda', 'donts', 1234567, 'Las Pinas City', 7, 2147483647, 'Ronalyn'),
(2367, 2018002, 5018003, '', 'kts9719', 987, 'cavite', 10, 1928716, 'riza');

-- --------------------------------------------------------

--
-- Table structure for table `clienttransaction`
--

CREATE TABLE IF NOT EXISTS `clienttransaction` (
  `date` varchar(50) NOT NULL,
  `clientid` int(11) NOT NULL,
  `accountno` int(11) NOT NULL,
  `recipientaccntno` int(11) NOT NULL,
  `amounttransferred` int(11) NOT NULL,
  `deposit` int(11) NOT NULL,
  `withdrawal` int(11) NOT NULL,
  `availablebalance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clienttransaction`
--

INSERT INTO `clienttransaction` (`date`, `clientid`, `accountno`, `recipientaccntno`, `amounttransferred`, `deposit`, `withdrawal`, `availablebalance`) VALUES
('', 235332, 0, 0, 0, 0, 0, 1000),
('', 2423, 0, 0, 0, 0, 0, 700),
('', 904820935, 0, 0, 0, 0, 0, 6000),
('2018-11-24', 0, 0, 0, 0, 500, 0, 0),
('', 3423, 0, 0, 0, 0, 0, 20000),
('2018-25-24', 0, 0, 0, 0, 1000, 0, 0),
('', 0, 0, 0, 0, 0, 2000, 0),
('', 0, 0, 0, 0, 0, 2000, 0),
('2018-51-24', 0, 0, 0, 0, 2000, 0, 0),
('', 0, 0, 0, 0, 0, 5000, 0),
('', 0, 0, 3543, 0, 0, 0, 0),
('', 0, 0, 0, 1000, 0, 0, 0),
('', 0, 0, 1000, 0, 0, 0, 0),
('', 0, 0, 0, 0, 0, 1000, 0),
('2018-47-24', 3423, 0, 0, 0, 2000, 0, 20000),
('', 0, 0, 1000, 0, 0, 0, 0),
('', 3423, 0, 0, 0, 0, 0, 20000),
('2018-10-24', 3423, 0, 0, 0, 0, 1000, 20000),
('', 3423, 0, 100034, 0, 0, 0, 20000),
('2018-10-24', 3423, 0, 0, 1000, 0, 0, 20000),
('2018-10-24', 3423, 0, 0, 0, 0, 2000, 20000),
('2018-10-24', 3423, 0, 0, 0, 0, 20000, 20000),
('2018-10-24', 3423, 0, 0, 0, 0, 20000, 20000),
('2018-10-24', 3423, 0, 0, 0, 0, 20000, 20000),
('2018-10-24', 3423, 0, 0, 0, 0, 20000, 20000),
('2018-10-24', 3423, 0, 0, 0, 0, 20000, 20000),
('2018-10-24', 3423, 0, 0, 0, 0, 20000, 20000),
('2018-10-24', 3423, 0, 0, 0, 0, 20000, 20000),
('2018-10-24', 3423, 0, 0, 0, 0, 20000, 20000),
('2018-10-25', 3423, 0, 0, 0, 15000, 0, 20000),
('2018-10-25', 3423, 0, 0, 0, 0, 5000, 0),
('2018-10-25', 3423, 0, 0, 0, 0, 11000, 0),
('2018-10-25', 3423, 0, 0, 0, 0, 11000, 0),
('2018-10-25', 3423, 0, 0, 0, 0, 5000, 0),
('2018-10-25', 3423, 0, 0, 0, 0, 9000, 0),
('', 3423, 0, 67576, 0, 0, 0, 0),
('', 3423, 0, 76767, 0, 0, 0, 0),
('2018-10-25', 3423, 0, 0, 5000, 0, 0, 0),
('', 6712, 0, 0, 0, 0, 0, 10000),
('', 2367, 0, 0, 0, 0, 0, 10000),
('2018-10-26', 904820935, 0, 0, 0, 100, 0, 6000),
('2018-10-26', 904820935, 0, 0, 0, 1000, 0, 6000),
('2018-10-26', 904820935, 0, 0, 5000, 0, 0, 6000),
('', 904820935, 0, 2, 0, 0, 0, 6000);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
