-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2020 at 02:56 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `turnit`
--
DROP DATABASE IF EXISTS turnit;
CREATE DATABASE turnit;
USE turnit;
-- --------------------------------------------------------

--
-- Table structure for table `auctionplatform`
--

CREATE TABLE `auctionplatform` (
  `productid` varchar(10) NOT NULL,
  `webaddress` varchar(200) NOT NULL,
  `quantity` varchar(10) NOT NULL,
  `departmentid` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auctionplatform`
--

INSERT INTO `auctionplatform` (`productid`, `webaddress`, `quantity`, `departmentid`) VALUES
('0TO518', 'www.turnitus.com/0TO518', '20', '1'),
('0VY490', 'www.turnitus.com/0VY490', '11', '4'),
('1JH860', 'www.turnitus.com/1JH860', '12', '5'),
('1OM925', 'www.turnitus.com/1OM925', '4', '4'),
('3NM639', 'www.turnitus.com/3NM639', '2', '4'),
('3ZA006', 'www.turnitus.com/3ZA006', '9', '4'),
('4VN600', 'www.turnitus.com/4VN600', '5', '1'),
('4YM792', 'www.turnitus.com/4YM792', '7', '4'),
('5UP551', 'www.turnitus.com/5UP551', '2', '4'),
('6TF598', 'www.turnitus.com/6TF598', '12', '2'),
('7DO295', 'www.turnitus.com/7DO295', '1', '2'),
('7HE473', 'www.turnitus.com/7HE473', '5', '5'),
('7JE087', 'www.turnitus.com/7JE087', '2', '4'),
('8OP598', 'www.turnitus.com/8OP598', '6', '1');

-- --------------------------------------------------------

--
-- Table structure for table `bulkreceiving`
--

CREATE TABLE `bulkreceiving` (
  `centerid` varchar(10) NOT NULL,
  `accountid` varchar(10) NOT NULL,
  `rdate` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bulkreceiving`
--

INSERT INTO `bulkreceiving` (`centerid`, `accountid`, `rdate`) VALUES
('E03', 'CT996', '9/20/2019'),
('G49', 'FG342', '8/16/2019'),
('G60', 'VA713', '8/15/2019'),
('K70', 'ON349', '9/7/2019'),
('M72', 'JW233', '10/5/2019'),
('M79', 'XE819', '5/15/2019'),
('N93', 'HD505', '6/21/2019'),
('O49', 'WC713', '10/28/2019'),
('T09', 'HL847', '4/1/2020'),
('U01', 'CC374', '8/5/2019'),
('W20', 'HB217', '7/1/2019'),
('X04', 'VB548', '7/27/2019'),
('X43', 'RR988', '9/16/2019'),
('Y65', 'BV878', '5/18/2019');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `departmentid` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`departmentid`) VALUES
('1'),
('2'),
('3'),
('4'),
('5');

-- --------------------------------------------------------

--
-- Table structure for table `dependent`
--

CREATE TABLE `dependent` (
  `essn` char(11) NOT NULL,
  `name` varchar(15) NOT NULL,
  `sex` char(1) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `relationship` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dependent`
--

INSERT INTO `dependent` (`essn`, `name`, `sex`, `dob`, `relationship`) VALUES
('165-68-6476', 'Hana Yurasov', 'F', '1980-09-12', 'Brother-'),
('229-46-3860', 'Emlyn Eatttok', 'F', '1981-07-26', 'Cousin'),
('256-13-6622', 'Bronny Woltman', 'M', '1987-11-22', 'Daughter'),
('298-55-8575', 'Audy Scouler', 'F', '1996-07-20', 'Brother-'),
('345-33-3392', 'Johnnie Spada', 'M', '2003-03-20', 'Sister'),
('434-44-2601', 'Saba Beese', 'F', '2004-01-31', 'Spouse'),
('515-25-5922', 'Paule Playfair', 'F', '1992-09-20', 'Sister-I'),
('656-04-6405', 'Lorita Mattsson', 'F', '2006-08-10', 'Nephew'),
('824-09-4354', 'Noami Tiner', 'F', '1997-07-30', 'Spouse'),
('858-13-6444', 'Rutledge Millmo', 'M', '1991-06-29', 'Brother');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `ssn` char(11) NOT NULL,
  `fname` varchar(10) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `eaddress` varchar(30) DEFAULT NULL,
  `salary` decimal(5,0) DEFAULT NULL,
  `sex` char(1) DEFAULT NULL,
  `departmentnum` varchar(10) NOT NULL,
  `super_ssn` char(11) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`ssn`, `fname`, `lname`, `eaddress`, `salary`, `sex`, `departmentnum`, `super_ssn`, `username`, `password`) VALUES
('165-68-6476', 'Agatha', 'Pharoah', '77104 Oak Court', '65256', 'F', '1', '515-25-5922', 'apharoah5', 'FkZ6L2Zk2'),
('229-46-3860', 'Bendix', 'Houselee', '3 Laurel Drive', '58255', 'M', '1', '515-25-5922', 'bhouselee3', 'qeAFxwUhyNm'),
('251-43-9976', 'Chris', 'Scawn', '6 Dayton Place', '69917', 'M', '1', '515-25-5922', 'cscawna', 'Hp5164Qpw'),
('256-13-6622', 'Starr', 'Segrave', '65 Hanover Pass', '41595', 'F', '4', '229-46-3860', 'ssegrave1', 'WId6rwwOu'),
('298-55-8575', 'Mary', 'Maylour', '8 Sundown Junction', '60008', 'F', '1', '515-25-5922', 'mmaylour2', '9NxGWn8vGPsL'),
('304-83-7179', 'Neel', 'Troni', '4290 Florence Court', '46367', 'M', '3', '298-55-8575', 'ntronic', 'H4PQzuAG'),
('345-33-3392', 'Zsa zsa', 'Corten', '735 Nobel Place', '40020', 'F', '4', '229-46-3860', 'zcorten7', 'q4oDWv'),
('434-44-2601', 'Jerry', 'Hallifax', '74756 Stephen Lane', '45304', 'F', '5', '434-44-2601', 'jhallifax4', 'ihBMS1'),
('515-25-5922', 'Bar', 'Southerill', '44 Monterey Center', '60491', 'M', '1', '515-25-5922', 'bsoutherill0', '3S7PiP'),
('617-06-0181', 'Orelia', 'Chatenier', '4185 Mccormick Terrace', '42436', 'F', '1', '515-25-5922', 'ochatenierb', 'GvVsjlyJJ'),
('656-04-6405', 'Rosita', 'Catmull', '0979 Delladonna Street', '48338', 'F', '2', '256-13-6622', 'rcatmull8', '196CH8D'),
('728-95-7687', 'Rafaelia', 'Gazzard', '729 Stuart Trail', '46063', 'F', '1', '515-25-5922', 'rgazzardd', 'JmQ4kN8M'),
('802-42-3544', 'Denis', 'Matthewson', '753 South Avenue', '55339', 'M', '1', '515-25-5922', 'dmatthewsone', 'gepLzibvMK'),
('824-09-4354', 'Yank', 'Keele', '19 Bayside Lane', '40627', 'M', '2', '256-13-6622', 'ykeele6', 'jHLec6n3kEZK'),
('858-13-6444', 'Steven', 'Vasilchikov', '74 Bunting Point', '60242', 'M', '1', '515-25-5922', 'svasilchikov9', '0OHqPLyH');

-- --------------------------------------------------------

--
-- Table structure for table `organization`
--

CREATE TABLE `organization` (
  `organizationid` varchar(10) NOT NULL,
  `oname` varchar(10) NOT NULL,
  `oaddress` varchar(30) NOT NULL,
  `otype` varchar(10) NOT NULL,
  `ocontacts` varchar(10) NOT NULL,
  `productid` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `organization`
--

INSERT INTO `organization` (`organizationid`, `oname`, `oaddress`, `otype`, `ocontacts`, `productid`) VALUES
('AS72061', 'Corkery LL', '5 Packers Point', 'Art', '122-260-86', '8ZE564'),
('GD39866', 'Windler In', '44540 Carpenter Street', 'DisasterRe', '572-712-09', '3UI559'),
('KV62103', 'Feeney, Ru', '8 Green Point', 'DisasterRe', '944-103-62', '3UI559'),
('MX72133', 'Gaylord, H', '9 Waubesa Place', 'DisasterRe', '997-251-40', '9NC910'),
('NI43035', 'Wilkinson-', '5 Raven Lane', 'Environmen', '148-641-75', '5DZ468'),
('QO78281', 'Heathcote,', '2 Shelley Avenue', 'Homeless', '381-218-69', '5DZ468'),
('RM97095', 'Gislason I', '1 Oneill Terrace', 'Internatio', '354-812-19', '7OE551'),
('SD65416', 'Vandervort', '45384 Tomscot Terrace', 'Environmen', '764-332-33', '3UI559'),
('SJ02300', 'Blick-Krei', '62 Coolidge Court', 'Internatio', '534-666-03', '7OE551'),
('TS41772', 'Balistreri', '4188 Bunker Hill Avenue', 'Environmen', '766-844-70', '8HS712'),
('WZ61123', 'Sanford-Bo', '65516 Anthes Alley', 'Internatio', '899-598-31', '6RK895'),
('XT54458', 'Kunze-Mora', '37521 Caliangt Hill', 'DisasterRe', '756-569-65', '0GV607');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productid` varchar(10) NOT NULL,
  `pname` varchar(20) NOT NULL,
  `color` varchar(20) NOT NULL,
  `size` varchar(20) NOT NULL,
  `ptype` varchar(20) NOT NULL,
  `baseprice` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productid`, `pname`, `color`, `size`, `ptype`, `baseprice`) VALUES
('0GV607', 'Whiskey Papa', 'Aquamarine', 'XS', 'Socks', '$35.44'),
('0TO518', 'Quebec Whiskey Hotel', 'Crimson', 'XS', 'Pants', '$31.50'),
('0VY490', 'Victor Mike', 'Blue', '2XL', 'Shoes', '$19.32'),
('1BI665', 'Tango Alfa Mike', 'Turquoise', '2XL', 'Gloves', '$24.42'),
('1JH860', 'Lima Yankee November', 'Turquoise', '2XL', 'T-Shirt', '$40.92'),
('1OM925', 'Charlie Romeo', 'Fuscia', '3XL', 'Shoes', '$39.93'),
('2PM050', 'Oscar Uniform Sierra', 'Crimson', 'M', 'Suits', '$30.12'),
('3HK683', 'Kilo Whiskey', 'Crimson', 'S', 'Shirts', '$9.65'),
('3HQ754', 'Mike Whiskey', 'Blue', 'M', 'Shirts', '$42.48'),
('3NM639', 'Alfa Echo', 'Puce', 'S', 'Sweater', '$43.28'),
('3UI559', 'November Echo', 'Green', 'XL', 'Shirts', '$18.82'),
('3ZA006', 'Echo Victor Papa', 'Purple', 'S', 'Sweater', '$15.58'),
('4VN600', 'Sierra Papa', 'Goldenrod', '3XL', 'Pants', '$42.85'),
('4YM792', 'November Hotel', 'Crimson', 'S', 'Sweater', '$11.09'),
('5DZ468', 'Uniform Papa Romeo', 'Fuscia', '2XL', 'T-Shirt', '$9.77'),
('5UP551', 'Tango Papa November', 'Red', 'M', 'Hat', '$9.81'),
('6ED483', 'Echo Juliett', 'Orange', '2XL', 'Shoes', '$40.23'),
('6RK895', 'India November Unifo', 'Violet', 'L', 'Socks', '$5.95'),
('6TF598', 'X-ray Echo', 'Orange', 'XL', 'Sweater', '$30.52'),
('7CT688', 'Charlie Victor Delta', 'Yellow', '2XL', 'T-Shirt', '$13.33'),
('7DO295', 'X-ray Sierra Romeo', 'Fuscia', 'L', 'T-Shirt', '$18.60'),
('7HE473', 'Victor Mike India', 'Red', 'S', 'T-Shirt', '$20.35'),
('7JE087', 'Foxtrot Zulu Romeo', 'Crimson', 'M', 'Gloves', '$13.72'),
('7OE551', 'Alfa Delta', 'Orange', 'XS', 'Pants', '$6.48'),
('8DI350', 'Mike Victor', 'Green', '3XL', 'T-Shirt', '$35.31'),
('8HS712', 'Victor Sierra', 'Blue', 'L', 'T-Shirt', '$16.57'),
('8OP598', 'X-ray Mike', 'Maroon', 'XL', 'Shoes', '$35.43'),
('8ZE564', 'Papa Echo', 'Blue', 'M', 'T-Shirt', '$45.12'),
('9GO522', 'Kilo Echo Juliett', 'Puce', 'M', 'Sweater', '$22.65'),
('9NC910', 'Hotel November', 'Blue', 'M', 'T-Shirt', '$38.83');

-- --------------------------------------------------------

--
-- Table structure for table `receivingcenter`
--

CREATE TABLE `receivingcenter` (
  `centerid` varchar(10) NOT NULL,
  `rcaddress` varchar(10) NOT NULL,
  `departmentid` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `receivingcenter`
--

INSERT INTO `receivingcenter` (`centerid`, `rcaddress`, `departmentid`) VALUES
('A23', '65 Harper ', '1'),
('B68', '4384 Dotti', '5'),
('D70', '9313 Nevad', '2'),
('E03', '2340 Schme', '2'),
('G04', '3 Westridg', '1'),
('G49', '7 Heath Pl', '5'),
('G60', '261 Oak Va', '1'),
('H90', '79 Loomis ', '1'),
('I58', '53 Judy Av', '1'),
('K04', '18527 Stou', '3'),
('K70', '20772 Rona', '4'),
('M72', '5 Memorial', '3'),
('M79', '55436 Mont', '1'),
('M94', '237 Twin P', '4'),
('N02', '483 Karste', '5'),
('N93', '66 Memoria', '1'),
('O49', '2 Cardinal', '5'),
('Q97', '4 Hagan Ci', '2'),
('R91', '68 Eggenda', '1'),
('T09', '92 Farwell', '4'),
('U01', '2524 Buena', '2'),
('W20', '6 Village ', '1'),
('W64', '48628 Glen', '2'),
('X04', '61 Piersto', '4'),
('X43', '510 Rieder', '3'),
('X51', '0 Armistic', '4'),
('X64', '65 Menomon', '2'),
('Y65', '47021 Nort', '1'),
('Z16', '15822 Walt', '4'),
('Z44', '11 Jay Pla', '1');

-- --------------------------------------------------------

--
-- Table structure for table `retailer`
--

CREATE TABLE `retailer` (
  `accountid` varchar(10) NOT NULL,
  `rname` varchar(20) NOT NULL,
  `clothestype` varchar(20) NOT NULL,
  `raddress` varchar(20) NOT NULL,
  `rcontacts` varchar(20) NOT NULL,
  `centerid` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `retailer`
--

INSERT INTO `retailer` (`accountid`, `rname`, `clothestype`, `raddress`, `rcontacts`, `centerid`) VALUES
('BV878', 'Connelly, Quitzon an', 'Pants', '5083 Maryland Center', '853-844-5081', 'Y65'),
('CC374', 'Osinski, Runte and R', 'Hat', '7 Red Cloud Drive', '239-110-1005', 'U01'),
('CT996', 'Yundt and Sons', 'Sweater', '30 Walton Way', '804-346-1754', 'E03'),
('FG342', 'Labadie, Auer and Or', 'Shirts', '6 Carpenter Trail', '443-362-6325', 'G49'),
('HB217', 'Brakus, Runte and Vo', 'Pants', '59237 Grasskamp Park', '582-533-4235', 'W20'),
('HD505', 'Osinski Group', 'Shoes', '25410 Loomis Place', '236-422-2888', 'N93'),
('HL847', 'Ward-Jacobson', 'Pants', '02 Old Gate Plaza', '612-459-5237', 'T09'),
('JW233', 'Ullrich-Stehr', 'Socks', '6727 Maple Wood Poin', '638-166-5538', 'M72'),
('ON349', 'Muller-Homenick', 'T-Shirt', '5 Paget Circle', '659-719-5886', 'K70'),
('RR988', 'Ankunding Inc', 'Socks', '41 Homewood Plaza', '576-114-8527', 'X43'),
('VA713', 'Ortiz LLC', 'Sweater', '7 Dapin Plaza', '502-684-2493', 'G60'),
('VB548', 'Mayer, Brakus and Cr', 'Suits', '2 Hayes Place', '399-945-1809', 'X04'),
('WC713', 'Price, Kozey and Bar', 'Suits', '62 Dawn Parkway', '673-252-5680', 'O49'),
('XE819', 'Tillman and Sons', 'Suits', '74 Commercial Way', '408-891-4245', 'M79');

-- --------------------------------------------------------

--
-- Table structure for table `sellable`
--

CREATE TABLE `sellable` (
  `productid` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sellable`
--

INSERT INTO `sellable` (`productid`) VALUES
('0TO518'),
('0VY490'),
('1JH860'),
('1OM925'),
('3NM639'),
('3ZA006'),
('4VN600'),
('4YM792'),
('5UP551'),
('6TF598'),
('7DO295'),
('7HE473'),
('7JE087'),
('8OP598');

-- --------------------------------------------------------

--
-- Table structure for table `sold`
--

CREATE TABLE `sold` (
  `userid` varchar(10) NOT NULL,
  `price` varchar(10) NOT NULL,
  `quantity` varchar(10) NOT NULL,
  `productid` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sold`
--

INSERT INTO `sold` (`userid`, `price`, `quantity`, `productid`) VALUES
('10-5152722', '30.49', '9', '5UP551'),
('26-1809605', '35.60', '5', '7JE087'),
('32-8106301', '71.90', '2', '1OM925'),
('55-3167094', '56.93', '1', '4YM792'),
('56-6777567', '55.57', '9', '3NM639'),
('61-4359200', '38.27', '7', '3ZA006'),
('71-9598247', '62.95', '5', '0VY490'),
('93-3892105', '40.39', '3', '4VN600');

-- --------------------------------------------------------

--
-- Table structure for table `unsellable`
--

CREATE TABLE `unsellable` (
  `productid` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `unsellable`
--

INSERT INTO `unsellable` (`productid`) VALUES
('0GV607'),
('1BI665'),
('2PM050'),
('3HQ754'),
('3UI559'),
('5DZ468'),
('6ED483'),
('6RK895'),
('7CT688'),
('7OE551'),
('8DI350'),
('8HS712'),
('8ZE564'),
('9GO522'),
('9NC910');

-- --------------------------------------------------------

--
-- Table structure for table `unsold`
--

CREATE TABLE `unsold` (
  `organizationid` varchar(10) NOT NULL,
  `price` varchar(10) NOT NULL,
  `quantity` varchar(10) NOT NULL,
  `productid` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `unsold`
--

INSERT INTO `unsold` (`organizationid`, `price`, `quantity`, `productid`) VALUES
('AS72061', '52.76', '5', '7HE473'),
('QO78281', '32.94', '5', '1JH860'),
('RM97095', '93.04', '8', '6TF598'),
('SD65416', '25.90', '3', '8OP598'),
('SJ02300', '48.01', '6', '7DO295'),
('TS41772', '93.62', '9', '0TO518');

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE `userinfo` (
  `userid` varchar(10) NOT NULL,
  `fname` varchar(10) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `shippingaddress` varchar(30) NOT NULL,
  `paymentmethod` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `mobileno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`userid`, `fname`, `lname`, `email`, `address`, `shippingaddress`, `paymentmethod`, `password`, `mobileno`) VALUES
('00-8828365', 'Godard', 'Knightsbridge', 'gknightsbridgel@github.io', '8 Banding Point', '919 Karstens Road', 'Paypal', '65cDD9T', 289),
('02-0643100', 'Clint', 'Maciunas', 'cmaciunasa@shareasale.com', '9 Weeping Birch Lane', '83 Graceland Terrace', 'Paypal', 'UDiGqzfWWxZt', 391),
('10-5152722', 'Flossi', 'Murton', 'fmurton4@unblog.fr', '1 Eagle Crest Court', '3 Moulton Point', 'Paypal', 'brOeNuyRA', 314),
('14-7679318', 'Valencia', 'Morigan', 'vmoriganj@berkeley.edu', '074 Eagle Crest Terrace', '090 Messerschmidt Drive', 'Debit Card', '91dEf0HQjHwY', 215),
('18-3811613', 'Melita', 'Blint', 'mblinte@nature.com', '784 Mesta Hill', '6 Algoma Way', 'Cash', 'vcEuD2VAh', 485),
('25-2082703', 'Bertha', 'Darington', 'bdaringtonb@discuz.net', '1102 Texas Street', '908 Mccormick Trail', 'Cash', '0zrrK3', 502),
('26-1809605', 'Mella', 'Adamowicz', 'madamowicz0@washingtonpost.com', '64 Carioca Junction', '3 Merrick Parkway', 'Credit Card', 'SVvaVj8bOkP', 123),
('27-5378495', 'Elfrida', 'Brimicombe', 'ebrimicombeg@a8.net', '7 Fairfield Way', '74 Morning Trail', 'Cash', '7UelLzXDO', 366),
('30-6780623', 'Ruthy', 'Salkild', 'rsalkilds@seattletimes.com', '77 Blue Bill Park Court', '749 Sauthoff Center', 'Credit Card', '92XE4l4NzhC', 585),
('30-6961832', 'Genni', 'Whitlock', 'gwhitlockc@apple.com', '3319 Monica Street', '384 Thackeray Junction', 'Paypal', 'uSTZLXzOJ', 879),
('32-8106301', 'Duane', 'Seabrocke', 'dseabrocke2@yolasite.com', '2662 Esch Court', '1904 Garrison Center', 'Credit Card', 'sbjKR62', 731),
('37-5635183', 'Cliff', 'St. Queintain', 'cstqueintainp@addtoany.com', '2 Golf View Trail', '08 Morningstar Road', 'Debit Card', '8MrmTZJ', 174),
('37-9819027', 'Brook', 'Sinton', 'bsintonf@infoseek.co.jp', '390 Sutherland Place', '8851 Schlimgen Place', 'Credit Card', 'XQ9Q6aPcS', 673),
('43-9154657', 'Niles', 'Carmichael', 'ncarmichaelm@eepurl.com', '55576 Merrick Lane', '62683 Johnson Crossing', 'Debit Card', 'LrVjvGYD', 978),
('44-7752234', 'Pearl', 'Deboy', 'pdeboyk@cocolog-nifty.com', '96 Loeprich Avenue', '622 Mccormick Pass', 'Paypal', 'DivCh4SH', 553),
('53-0312458', 'Lamond', 'Waleworke', 'lwaleworker@gravatar.com', '388 Comanche Avenue', '898 Stuart Terrace', 'Debit Card', '9kcX84GEvO', 599),
('55-3167094', 'Tarrance', 'St. Clair', 'tstclair6@reverbnation.com', '07982 Basil Terrace', '27 Hallows Terrace', 'Paypal', 'wt0KZ6RTAJ', 368),
('56-6777567', 'Eleanore', 'Thom', 'ethom7@seesaa.net', '1 Ronald Regan Circle', '4270 Morning Road', 'Debit Card', 'ZZzKzrTzYTIH', 223),
('61-4359200', 'Correna', 'Boni', 'cboni3@studiopress.com', '1 Grayhawk Parkway', '93 Moose Circle', 'Cash', 'VFN6HlTY0O', 227),
('61-9801860', 'Birdie', 'Behnke', 'bbehnken@opensource.org', '63 Graceland Pass', '30977 Superior Junction', 'Paypal', 'mtbFMnW', 298),
('63-7218578', 'Eilis', 'Berends', 'eberendst@mayoclinic.com', '044 Service Court', '9 Redwing Drive', 'Cash', 'O92OysAa2yaG', 444),
('71-9598247', 'Cloe', 'Reynalds', 'creynalds5@yale.edu', '87386 Caliangt Lane', '9 Vermont Drive', 'Paypal', 'q2TNYnUZz', 533),
('73-2886325', 'Genvieve', 'Wayvill', 'gwayvill9@harvard.edu', '95 Sullivan Center', '545 Dwight Trail', 'Cash', 'jy06ZrRaTg', 430),
('77-6837228', 'Lolita', 'Maycock', 'lmaycockd@furl.net', '03 Canary Crossing', '60 Butternut Terrace', 'Cash', 'XBqeg2BM', 289),
('80-4448380', 'Alvy', 'Philpault', 'aphilpaulti@un.org', '24864 Lotheville Way', '35 Stoughton Parkway', 'Cash', 'NGg6JklXko', 702),
('90-4740873', 'Rog', 'Leahair', 'rleahairh@amazon.co.uk', '015 Shoshone Avenue', '7493 Hollow Ridge Lane', 'Paypal', '5ZfvC5CZH', 936),
('92-0897068', 'Hope', 'Mulcock', 'hmulcocko@over-blog.com', '166 Jenna Junction', '1 Packers Plaza', 'Credit Card', 'swdaZ7sJ1N', 251),
('93-3892105', 'Claire', 'Boyett', 'cboyett1@irs.gov', '473 Comanche Center', '9 Mccormick Plaza', 'Credit Card', '4UxJWMC', 439),
('94-5439250', 'Lynn', 'Tosh', 'ltosh8@exblog.jp', '57 Fairview Center', '67865 Briar Crest Avenue', 'Credit Card', 'n7iWBnsAV7l', 781),
('98-3445739', 'Moselle', 'Bolzmann', 'mbolzmannq@tuttocitta.it', '88 Kedzie Plaza', '7 Waubesa Center', 'Credit Card', 'UsNFXBEwY4', 394);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auctionplatform`
--
ALTER TABLE `auctionplatform`
  ADD PRIMARY KEY (`webaddress`,`productid`,`departmentid`),
  ADD KEY `productid` (`productid`),
  ADD KEY `departmentid` (`departmentid`);

--
-- Indexes for table `bulkreceiving`
--
ALTER TABLE `bulkreceiving`
  ADD PRIMARY KEY (`centerid`,`accountid`),
  ADD KEY `accountid` (`accountid`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`departmentid`);

--
-- Indexes for table `dependent`
--
ALTER TABLE `dependent`
  ADD PRIMARY KEY (`essn`,`name`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`ssn`),
  ADD KEY `departmentnum` (`departmentnum`);

--
-- Indexes for table `organization`
--
ALTER TABLE `organization`
  ADD PRIMARY KEY (`organizationid`,`productid`),
  ADD KEY `productid` (`productid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productid`);

--
-- Indexes for table `receivingcenter`
--
ALTER TABLE `receivingcenter`
  ADD PRIMARY KEY (`centerid`,`departmentid`),
  ADD KEY `departmentid` (`departmentid`);

--
-- Indexes for table `retailer`
--
ALTER TABLE `retailer`
  ADD PRIMARY KEY (`accountid`,`centerid`),
  ADD KEY `centerid` (`centerid`);

--
-- Indexes for table `sellable`
--
ALTER TABLE `sellable`
  ADD PRIMARY KEY (`productid`);

--
-- Indexes for table `sold`
--
ALTER TABLE `sold`
  ADD PRIMARY KEY (`userid`,`productid`),
  ADD KEY `productid` (`productid`);

--
-- Indexes for table `unsellable`
--
ALTER TABLE `unsellable`
  ADD PRIMARY KEY (`productid`);

--
-- Indexes for table `unsold`
--
ALTER TABLE `unsold`
  ADD PRIMARY KEY (`organizationid`,`productid`),
  ADD KEY `productid` (`productid`);

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
  ADD PRIMARY KEY (`userid`,`mobileno`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auctionplatform`
--
ALTER TABLE `auctionplatform`
  ADD CONSTRAINT `auctionplatform_ibfk_1` FOREIGN KEY (`productid`) REFERENCES `sellable` (`productid`),
  ADD CONSTRAINT `auctionplatform_ibfk_2` FOREIGN KEY (`departmentid`) REFERENCES `departments` (`departmentid`);

--
-- Constraints for table `bulkreceiving`
--
ALTER TABLE `bulkreceiving`
  ADD CONSTRAINT `bulkreceiving_ibfk_1` FOREIGN KEY (`centerid`) REFERENCES `receivingcenter` (`centerid`),
  ADD CONSTRAINT `bulkreceiving_ibfk_2` FOREIGN KEY (`accountid`) REFERENCES `retailer` (`accountid`);

--
-- Constraints for table `dependent`
--
ALTER TABLE `dependent`
  ADD CONSTRAINT `dependent_ibfk_1` FOREIGN KEY (`essn`) REFERENCES `employee` (`ssn`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`departmentnum`) REFERENCES `departments` (`departmentid`);

--
-- Constraints for table `organization`
--
ALTER TABLE `organization`
  ADD CONSTRAINT `organization_ibfk_1` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`);

--
-- Constraints for table `receivingcenter`
--
ALTER TABLE `receivingcenter`
  ADD CONSTRAINT `receivingcenter_ibfk_1` FOREIGN KEY (`departmentid`) REFERENCES `departments` (`departmentid`);

--
-- Constraints for table `retailer`
--
ALTER TABLE `retailer`
  ADD CONSTRAINT `retailer_ibfk_1` FOREIGN KEY (`centerid`) REFERENCES `receivingcenter` (`centerid`);

--
-- Constraints for table `sellable`
--
ALTER TABLE `sellable`
  ADD CONSTRAINT `sellable_ibfk_1` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`);

--
-- Constraints for table `sold`
--
ALTER TABLE `sold`
  ADD CONSTRAINT `sold_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `userinfo` (`userid`),
  ADD CONSTRAINT `sold_ibfk_2` FOREIGN KEY (`productid`) REFERENCES `auctionplatform` (`productid`);

--
-- Constraints for table `unsellable`
--
ALTER TABLE `unsellable`
  ADD CONSTRAINT `unsellable_ibfk_1` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`);

--
-- Constraints for table `unsold`
--
ALTER TABLE `unsold`
  ADD CONSTRAINT `unsold_ibfk_1` FOREIGN KEY (`organizationid`) REFERENCES `organization` (`organizationid`),
  ADD CONSTRAINT `unsold_ibfk_2` FOREIGN KEY (`productid`) REFERENCES `auctionplatform` (`productid`);
COMMIT;



create view INFO
AS Select p.productid 'PID', p.pname 'PName', p.color 'Color', p.size 'Size',p.ptype 'Type', p.baseprice 'Price',a.quantity 'Quantity'
FROM product p, auctionplatform a
WHERE p.productid = a.productid;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
