-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2021 at 08:14 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_oms`
--

-- --------------------------------------------------------

--
-- Table structure for table `messagein`
--

CREATE TABLE `messagein` (
  `Id` int(11) NOT NULL,
  `SendTime` datetime DEFAULT NULL,
  `ReceiveTime` datetime DEFAULT NULL,
  `MessageFrom` varchar(80) DEFAULT NULL,
  `MessageTo` varchar(80) DEFAULT NULL,
  `SMSC` varchar(80) DEFAULT NULL,
  `MessageText` text DEFAULT NULL,
  `MessageType` varchar(80) DEFAULT NULL,
  `MessageParts` int(11) DEFAULT NULL,
  `MessagePDU` text DEFAULT NULL,
  `Gateway` varchar(80) DEFAULT NULL,
  `UserId` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `messagelog`
--

CREATE TABLE `messagelog` (
  `Id` int(11) NOT NULL,
  `SendTime` datetime DEFAULT NULL,
  `ReceiveTime` datetime DEFAULT NULL,
  `StatusCode` int(11) DEFAULT NULL,
  `StatusText` varchar(80) DEFAULT NULL,
  `MessageTo` varchar(80) DEFAULT NULL,
  `MessageFrom` varchar(80) DEFAULT NULL,
  `MessageText` text DEFAULT NULL,
  `MessageType` varchar(80) DEFAULT NULL,
  `MessageId` varchar(80) DEFAULT NULL,
  `ErrorCode` varchar(80) DEFAULT NULL,
  `ErrorText` varchar(80) DEFAULT NULL,
  `Gateway` varchar(80) DEFAULT NULL,
  `MessageParts` int(11) DEFAULT NULL,
  `MessagePDU` text DEFAULT NULL,
  `Connector` varchar(80) DEFAULT NULL,
  `UserId` varchar(80) DEFAULT NULL,
  `UserInfo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messagelog`
--

INSERT INTO `messagelog` (`Id`, `SendTime`, `ReceiveTime`, `StatusCode`, `StatusText`, `MessageTo`, `MessageFrom`, `MessageText`, `MessageType`, `MessageId`, `ErrorCode`, `ErrorText`, `Gateway`, `MessageParts`, `MessagePDU`, `Connector`, `UserId`, `UserInfo`) VALUES
(26, '2018-04-02 00:53:32', NULL, 200, NULL, '639956112920', 'Your code is', NULL, NULL, '1:639956112920:131', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, '2018-04-02 00:54:43', NULL, 200, NULL, '639956112920', 'Your code is 3407', NULL, NULL, '1:639956112920:132', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messageout`
--

CREATE TABLE `messageout` (
  `Id` int(11) NOT NULL,
  `MessageTo` varchar(80) DEFAULT NULL,
  `MessageFrom` varchar(80) DEFAULT NULL,
  `MessageText` text DEFAULT NULL,
  `MessageType` varchar(80) DEFAULT NULL,
  `Gateway` varchar(80) DEFAULT NULL,
  `UserId` varchar(80) DEFAULT NULL,
  `UserInfo` text DEFAULT NULL,
  `Priority` int(11) DEFAULT NULL,
  `Scheduled` datetime DEFAULT NULL,
  `ValidityPeriod` int(11) DEFAULT NULL,
  `IsSent` tinyint(1) NOT NULL DEFAULT 0,
  `IsRead` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblautonumber`
--

CREATE TABLE `tblautonumber` (
  `ID` int(11) NOT NULL,
  `AUTOSTART` varchar(11) NOT NULL,
  `AUTOINC` int(11) NOT NULL,
  `AUTOEND` int(11) NOT NULL,
  `AUTOKEY` varchar(12) NOT NULL,
  `AUTONUM` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblautonumber`
--

INSERT INTO `tblautonumber` (`ID`, `AUTOSTART`, `AUTOINC`, `AUTOEND`, `AUTOKEY`, `AUTONUM`) VALUES
(1, '2017', 1, 75, 'PROID', 10),
(2, '0', 1, 119, 'ordernumber', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `CATEGID` int(11) NOT NULL,
  `CATEGORIES` varchar(255) NOT NULL,
  `USERID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`CATEGID`, `CATEGORIES`, `USERID`) VALUES
(5, 'Pendant Lights', 0),
(11, 'Cluster Lights', 0),
(12, 'Hanging Lights', 0),
(13, 'Close-to-Ceiling Lights', 0),
(14, 'Chandeliers', 0),
(15, 'Kids Lamps', 0),
(16, 'Wall & Desks Lamps', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomer`
--

CREATE TABLE `tblcustomer` (
  `CUSTOMERID` int(11) NOT NULL,
  `FNAME` varchar(30) NOT NULL,
  `LNAME` varchar(30) NOT NULL,
  `MNAME` varchar(30) NOT NULL,
  `CUSHOMENUM` varchar(90) NOT NULL,
  `STREETADD` text NOT NULL,
  `BRGYADD` text NOT NULL,
  `CITYADD` text NOT NULL,
  `PROVINCE` varchar(80) NOT NULL,
  `COUNTRY` varchar(30) NOT NULL,
  `DBIRTH` date NOT NULL,
  `GENDER` varchar(10) NOT NULL,
  `PHONE` varchar(20) NOT NULL,
  `EMAILADD` varchar(40) NOT NULL,
  `ZIPCODE` int(6) NOT NULL,
  `CUSUNAME` varchar(20) NOT NULL,
  `CUSPASS` varchar(90) NOT NULL,
  `CUSPHOTO` varchar(255) NOT NULL,
  `TERMS` tinyint(4) NOT NULL,
  `DATEJOIN` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcustomer`
--

INSERT INTO `tblcustomer` (`CUSTOMERID`, `FNAME`, `LNAME`, `MNAME`, `CUSHOMENUM`, `STREETADD`, `BRGYADD`, `CITYADD`, `PROVINCE`, `COUNTRY`, `DBIRTH`, `GENDER`, `PHONE`, `EMAILADD`, `ZIPCODE`, `CUSUNAME`, `CUSPASS`, `CUSPHOTO`, `TERMS`, `DATEJOIN`) VALUES
(11, 'lakas', 'maharjan', '', '', '', '', '', '', '', '0000-00-00', 'Male', '45118455', '', 0, 'lakas', '6ac95a56da1c342aa07464b93239cdb00bd95f6e', '', 1, '2021-08-23'),
(12, 'samundra', 'sen', '', '', '', '', '', '', '', '0000-00-00', 'Male', '451183255', '', 0, 'samundra', '7ce0359f12857f2a90c7de465f40a95f01cb5da9', '', 1, '2021-08-24'),
(13, 'samundra', 'sen', '', '', '', '', '', '', '', '0000-00-00', 'Male', '4511144111', '', 0, 'samundra2', 'fbc67b52ff85309ad8b81ee69c882061407067df', '', 1, '2021-09-23'),
(14, 'laxman', 'oli', '', '', '', '', '', '', '', '0000-00-00', 'Male', '451178452', '', 0, 'laxman1', '6b6843bda6160e8a45c4d3891eca5631b126044b', '', 1, '2021-10-05'),
(15, 'oms', 'team', '', '', '', '', '', '', '', '0000-00-00', 'Male', '451147845', '', 0, 'oms1', '923e70a9c11b62b7be24e83df4cae422405ec928', '', 1, '2021-10-05');

-- --------------------------------------------------------

--
-- Table structure for table `tblorder`
--

CREATE TABLE `tblorder` (
  `ORDERID` int(11) NOT NULL,
  `PROID` int(11) NOT NULL,
  `ORDEREDQTY` int(11) NOT NULL,
  `ORDEREDPRICE` double NOT NULL,
  `ORDEREDNUM` int(11) NOT NULL,
  `USERID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblorder`
--

INSERT INTO `tblorder` (`ORDERID`, `PROID`, `ORDEREDQTY`, `ORDEREDPRICE`, `ORDEREDNUM`, `USERID`) VALUES
(8, 201744, 1, 45, 98, 0),
(9, 201746, 1, 50, 98, 0),
(10, 201746, 1, 50, 99, 0),
(11, 201746, 1, 50, 100, 0),
(12, 201746, 1, 50, 101, 0),
(13, 201747, 1, 80, 102, 0),
(14, 201752, 1, 78, 102, 0),
(15, 201751, 1, 78, 103, 0),
(16, 201754, 1, 200, 104, 0),
(17, 201749, 1, 110, 105, 0),
(18, 201746, 1, 50, 107, 0),
(19, 201747, 2, 160, 107, 0),
(20, 201746, 1, 50, 108, 0),
(21, 201747, 1, 80, 108, 0),
(22, 201748, 1, 75, 109, 0),
(23, 201754, 1, 200, 109, 0),
(24, 201751, 1, 78, 110, 0),
(25, 201753, 1, 110, 111, 0),
(26, 201748, 1, 75, 112, 0),
(27, 201750, 1, 58, 113, 0),
(28, 201748, 1, 75, 114, 0),
(29, 201746, 1, 50, 114, 0),
(30, 201772, 1, 30, 115, 0),
(31, 201746, 1, 50, 116, 0),
(32, 201746, 1, 50, 118, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblproduct`
--

CREATE TABLE `tblproduct` (
  `PROID` int(11) NOT NULL,
  `PRODESC` varchar(255) DEFAULT NULL,
  `PROQTY` int(11) DEFAULT NULL,
  `ORIGINALPRICE` double NOT NULL,
  `PROPRICE` double DEFAULT NULL,
  `CATEGID` int(11) DEFAULT NULL,
  `IMAGES` varchar(255) DEFAULT NULL,
  `PROSTATS` varchar(30) DEFAULT NULL,
  `OWNERNAME` varchar(90) NOT NULL,
  `OWNERPHONE` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblproduct`
--

INSERT INTO `tblproduct` (`PROID`, `PRODESC`, `PROQTY`, `ORIGINALPRICE`, `PROPRICE`, `CATEGID`, `IMAGES`, `PROSTATS`, `OWNERNAME`, `OWNERPHONE`) VALUES
(201746, 'Cluster Pendant Light                      ', 7, 50, 50, 5, 'uploaded_photos/1.jpg', 'NotAvailable', 'Lightosphere', '451183255'),
(201747, 'Large Pendant Lights    ', 0, 80, 80, 5, 'uploaded_photos/2.jpg', 'Available', 'Lightosphere', '451183255'),
(201748, 'Mini Pendant Light                ', 1, 75, 75, 5, 'uploaded_photos/3.jpg', 'Available', 'Lightosphere', '451183255'),
(201749, 'Row Pendant Light                     ', 2, 110, 110, 5, 'uploaded_photos/4.jpg', 'Available', 'Lightosphere', '451183255'),
(201750, 'Chrome Armed light                      ', 4, 58, 58, 11, 'uploaded_photos/5.jpg', 'Available', 'Lightosphere', '451183255'),
(201751, 'Bell Shaped Cluster Light', 0, 78, 78, 11, 'uploaded_photos/6.jpg', 'Available', 'Lightosphere', '451183255'),
(201752, 'Beach Shack feel Cluster Light', 6, 78, 78, 11, 'uploaded_photos/7.jpg', 'NotAvailable', 'Lightosphere', '451183255'),
(201753, 'Fan Shaped Like Cluster Light', 3, 110, 110, 11, 'uploaded_photos/8.jpg', 'Available', 'Lightosphere', '451183255'),
(201754, 'Concentric Crystal Rings Light', 8, 200, 200, 12, 'uploaded_photos/9.jpg', 'Available', 'Lightosphere', '451198553'),
(201755, 'Crystal Planet in universe Hanging Light', 3, 400, 400, 12, 'uploaded_photos/10.jpg', 'Available', 'Lightosphere', '451187544'),
(201756, 'Canopy Shaped light', 5, 320, 320, 12, 'uploaded_photos/11.jpg', 'Available', 'Lightosphere', '451183255'),
(201757, 'Cascading Crystal Droplet Water Hanging Light', 3, 600, 600, 12, 'uploaded_photos/12.jpg', 'Available', 'Lightosphere', '451183255'),
(201758, 'Crystal and Glass ceiling light', 6, 500, 500, 13, 'uploaded_photos/13.jpg', 'Available', 'Lightosphere', '451183255'),
(201759, 'Circular Glass and Crystal closer to ceiling light', 10, 300, 300, 13, 'uploaded_photos/14.jpg', 'Available', 'Lightosphere', '451183255'),
(201760, 'Acrylic Twelve panel light', 6, 400, 400, 13, 'uploaded_photos/15.jpg', 'Available', 'Lightosphere', '451183255'),
(201761, 'Crystal and glass petal light', 3, 700, 700, 13, 'uploaded_photos/16.jpg', 'Available', 'Lightosphere', '451183255'),
(201762, 'Classic Crystal Gold Chandelier', 5, 400, 400, 14, 'uploaded_photos/17.jpg', 'Available', 'Lightosphere', '451183255'),
(201763, 'Tiered Square and Glass Chandelier', 9, 500, 500, 14, 'uploaded_photos/18.jpg', 'Available', 'Lightosphere', '451183255'),
(201764, 'Tiered Decorative Crystal Chandelier', 3, 700, 700, 14, 'uploaded_photos/19.jpg', 'Available', 'Lightosphere', '451183255'),
(201765, 'Frosted Wine glass lamp', 5, 400, 400, 16, 'uploaded_photos/21.jpg', 'Available', 'Lightosphere', '451183255'),
(201766, 'Shiny Tinted Grey lamp', 6, 400, 400, 0, 'uploaded_photos/25.jpg', 'Available', 'Lightosphere', '451183255'),
(201767, 'Modern Desk Lamp', 15, 150, 150, 16, 'uploaded_photos/28.jpg', 'Available', 'Lightosphere', '451183255'),
(201768, 'Rustic Hemp Rope Light', 10, 300, 300, 16, 'uploaded_photos/27.jpg', 'Available', 'Lightosphere', '451183255'),
(201769, 'Aircraft Kids light', 18, 50, 50, 15, 'uploaded_photos/23.jpg', 'Available', 'Lightosphere', '451183255'),
(201770, 'Colorful Geometric Design Light ', 7, 40, 40, 15, 'uploaded_photos/22.jpg', 'Available', 'Lightosphere', '451183255'),
(201771, 'Nautical Sail Shaped light', 10, 100, 100, 15, 'uploaded_photos/24.jpg', 'Available', 'Lightosphere', '45118255'),
(201774, 'blue blub', 5, 70, 70, 15, 'uploaded_photos/blue.jpg', 'Available', 'Lightosphere', '455555');

-- --------------------------------------------------------

--
-- Table structure for table `tblpromopro`
--

CREATE TABLE `tblpromopro` (
  `PROMOID` int(11) NOT NULL,
  `PROID` int(11) NOT NULL,
  `PRODISCOUNT` double NOT NULL,
  `PRODISPRICE` double NOT NULL,
  `PROBANNER` tinyint(4) NOT NULL,
  `PRONEW` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpromopro`
--

INSERT INTO `tblpromopro` (`PROMOID`, `PROID`, `PRODISCOUNT`, `PRODISPRICE`, `PROBANNER`, `PRONEW`) VALUES
(10, 201746, 0, 50, 0, 0),
(11, 201747, 0, 80, 0, 0),
(12, 201748, 0, 75, 0, 0),
(13, 201749, 0, 110, 0, 0),
(14, 201750, 0, 58, 0, 0),
(15, 201751, 0, 78, 0, 0),
(16, 201752, 20, 62.4, 1, 0),
(17, 201753, 0, 110, 0, 0),
(18, 201754, 0, 200, 0, 0),
(19, 201755, 0, 400, 0, 0),
(20, 201756, 0, 320, 0, 0),
(21, 201757, 0, 600, 0, 0),
(22, 201758, 0, 500, 0, 0),
(23, 201759, 0, 300, 0, 0),
(24, 201760, 0, 400, 0, 0),
(25, 201761, 0, 700, 0, 0),
(26, 201762, 0, 400, 0, 0),
(27, 201763, 0, 500, 0, 0),
(28, 201764, 0, 700, 0, 0),
(29, 201765, 0, 400, 0, 0),
(30, 201766, 0, 400, 0, 0),
(31, 201767, 0, 150, 0, 0),
(32, 201768, 0, 300, 0, 0),
(33, 201769, 0, 50, 0, 0),
(34, 201770, 0, 40, 0, 0),
(35, 201771, 0, 100, 0, 0),
(38, 201774, 0, 70, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblsummary`
--

CREATE TABLE `tblsummary` (
  `SUMMARYID` int(11) NOT NULL,
  `ORDEREDDATE` datetime NOT NULL,
  `CUSTOMERID` int(11) NOT NULL,
  `ORDEREDNUM` int(11) NOT NULL,
  `DELFEE` double NOT NULL,
  `PAYMENT` double NOT NULL,
  `PAYMENTMETHOD` varchar(30) NOT NULL,
  `ORDEREDSTATS` varchar(30) NOT NULL,
  `ORDEREDREMARKS` varchar(125) NOT NULL,
  `CLAIMEDADTE` datetime NOT NULL,
  `HVIEW` tinyint(4) NOT NULL,
  `USERID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblsummary`
--

INSERT INTO `tblsummary` (`SUMMARYID`, `ORDEREDDATE`, `CUSTOMERID`, `ORDEREDNUM`, `DELFEE`, `PAYMENT`, `PAYMENTMETHOD`, `ORDEREDSTATS`, `ORDEREDREMARKS`, `CLAIMEDADTE`, `HVIEW`, `USERID`) VALUES
(6, '2021-08-23 02:48:46', 11, 96, 0, 165, 'Cash on Delivery', 'Confirmed', 'Your order has been confirmed.', '2021-08-23 00:00:00', 0, 0),
(7, '2021-08-23 03:02:01', 11, 97, 50, 55, 'Cash on Delivery', 'Confirmed', 'Your order has been confirmed.', '2021-09-23 00:00:00', 0, 0),
(8, '2021-08-24 12:41:41', 12, 98, 50, 50, 'Cash on Delivery', 'Confirmed', 'Your order has been confirmed.', '2021-08-24 00:00:00', 0, 0),
(10, '2021-08-26 11:09:01', 12, 99, 50, 50, 'Cash on Delivery', 'Confirmed', 'Your order has been confirmed.', '2021-09-23 00:00:00', 0, 0),
(11, '2021-09-23 08:15:58', 13, 100, 50, 50, 'Cash on Delivery', 'Confirmed', 'Your order has been confirmed.', '2021-09-23 00:00:00', 1, 0),
(12, '2021-09-23 08:27:01', 13, 101, 50, 50, 'Cash on Delivery', 'Confirmed', 'Your order has been confirmed.', '2021-09-23 00:00:00', 1, 0),
(13, '2021-09-23 08:50:18', 13, 102, 10, 158, 'Cash on Delivery', 'Confirmed', 'Your order has been confirmed.', '2021-09-23 00:00:00', 1, 0),
(15, '2021-09-23 09:45:39', 13, 103, 10, 78, 'Cash on Delivery', 'Confirmed', 'Your order has been confirmed.', '2021-09-23 00:00:00', 1, 0),
(16, '2021-09-23 12:52:57', 13, 104, 0, 200, 'Cash on Delivery', 'Confirmed', 'Your order has been confirmed.', '2021-10-01 00:00:00', 0, 0),
(17, '2021-09-23 01:22:30', 13, 105, 0, 110, 'Cash on Delivery', 'Confirmed', 'Your order has been confirmed.', '2021-10-01 00:00:00', 0, 0),
(18, '2021-09-30 11:05:38', 13, 107, 10, 210, 'Cash on Delivery', 'Confirmed', 'Your order has been confirmed.', '2021-10-01 00:00:00', 0, 0),
(20, '2021-10-01 01:23:56', 13, 108, 10, 130, 'Cash on Delivery', 'Confirmed', 'Your order has been confirmed.', '2021-10-01 00:00:00', 1, 0),
(22, '2021-10-05 01:22:40', 13, 109, 0, 275, 'Cash on Delivery', 'Confirmed', 'Your order has been confirmed.', '2021-10-05 00:00:00', 0, 0),
(24, '2021-10-05 01:34:54', 13, 110, 0, 78, 'Cash on Delivery', 'Confirmed', 'Your order has been confirmed.', '2021-10-05 00:00:00', 0, 0),
(25, '2021-10-05 01:36:38', 13, 111, 0, 110, 'Cash on Delivery', 'Confirmed', 'Your order has been confirmed.', '2021-10-05 00:00:00', 0, 0),
(26, '2021-10-05 01:38:28', 13, 112, 0, 75, 'Cash on Delivery', 'Confirmed', 'Your order has been confirmed.', '2021-10-05 00:00:00', 0, 0),
(27, '2021-10-05 03:04:34', 13, 113, 0, 58, 'Cash on Delivery', 'Pending', 'Your order is on process.', '0000-00-00 00:00:00', 1, 0),
(28, '2021-10-05 11:17:19', 15, 114, 0, 125, 'Cash on Delivery', 'Confirmed', 'Your order has been confirmed.', '2021-10-05 00:00:00', 1, 0),
(30, '2021-10-05 11:23:02', 15, 115, 0, 30, 'Cash on Delivery', 'Confirmed', 'Your order has been confirmed.', '2021-10-05 00:00:00', 0, 0),
(31, '2021-10-05 11:24:14', 15, 116, 0, 50, 'Cash on Delivery', 'Cancelled', 'Your order has been cancelled due to lack of communication and incomplete information.', '0000-00-00 00:00:00', 1, 0),
(32, '2021-10-07 07:33:23', 14, 118, 0, 50, 'Cash on Delivery', 'Confirmed', 'Your order has been confirmed.', '2021-10-07 00:00:00', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbluseraccount`
--

CREATE TABLE `tbluseraccount` (
  `USERID` int(11) NOT NULL,
  `U_NAME` varchar(122) NOT NULL,
  `U_USERNAME` varchar(122) NOT NULL,
  `U_PASS` varchar(122) NOT NULL,
  `U_ROLE` varchar(30) NOT NULL,
  `USERIMAGE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluseraccount`
--

INSERT INTO `tbluseraccount` (`USERID`, `U_NAME`, `U_USERNAME`, `U_PASS`, `U_ROLE`, `USERIMAGE`) VALUES
(124, 'lakas', 'lakas', '81fe8bfe87576c3ecb22426f8e57847382917acf', 'Administrator', 'photos/COC-war-base-design.jpg'),
(126, 'admin', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator', 'photos/1111.jpg'),
(127, 'gaurab', 'gaurab', '81fe8bfe87576c3ecb22426f8e57847382917acf', 'Administrator', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblwishlist`
--

CREATE TABLE `tblwishlist` (
  `id` int(11) NOT NULL,
  `CUSID` int(11) NOT NULL,
  `PROID` int(11) NOT NULL,
  `WISHDATE` date NOT NULL,
  `WISHSTATS` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblwishlist`
--

INSERT INTO `tblwishlist` (`id`, `CUSID`, `PROID`, `WISHDATE`, `WISHSTATS`) VALUES
(2, 9, 201742, '2019-08-21', '0'),
(3, 13, 201746, '2021-09-23', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messagein`
--
ALTER TABLE `messagein`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `messagelog`
--
ALTER TABLE `messagelog`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IDX_MessageId` (`MessageId`,`SendTime`);

--
-- Indexes for table `messageout`
--
ALTER TABLE `messageout`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IDX_IsRead` (`IsRead`);

--
-- Indexes for table `tblautonumber`
--
ALTER TABLE `tblautonumber`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`CATEGID`);

--
-- Indexes for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  ADD PRIMARY KEY (`CUSTOMERID`);

--
-- Indexes for table `tblorder`
--
ALTER TABLE `tblorder`
  ADD PRIMARY KEY (`ORDERID`),
  ADD KEY `USERID` (`USERID`),
  ADD KEY `PROID` (`PROID`),
  ADD KEY `ORDEREDNUM` (`ORDEREDNUM`);

--
-- Indexes for table `tblproduct`
--
ALTER TABLE `tblproduct`
  ADD PRIMARY KEY (`PROID`),
  ADD KEY `CATEGID` (`CATEGID`);

--
-- Indexes for table `tblpromopro`
--
ALTER TABLE `tblpromopro`
  ADD PRIMARY KEY (`PROMOID`),
  ADD UNIQUE KEY `PROID` (`PROID`);

--
-- Indexes for table `tblsummary`
--
ALTER TABLE `tblsummary`
  ADD PRIMARY KEY (`SUMMARYID`),
  ADD UNIQUE KEY `ORDEREDNUM` (`ORDEREDNUM`),
  ADD KEY `CUSTOMERID` (`CUSTOMERID`),
  ADD KEY `USERID` (`USERID`);

--
-- Indexes for table `tbluseraccount`
--
ALTER TABLE `tbluseraccount`
  ADD PRIMARY KEY (`USERID`);

--
-- Indexes for table `tblwishlist`
--
ALTER TABLE `tblwishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messagein`
--
ALTER TABLE `messagein`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `messagelog`
--
ALTER TABLE `messagelog`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `messageout`
--
ALTER TABLE `messageout`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblautonumber`
--
ALTER TABLE `tblautonumber`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `CATEGID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblcustomer`
--
ALTER TABLE `tblcustomer`
  MODIFY `CUSTOMERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblorder`
--
ALTER TABLE `tblorder`
  MODIFY `ORDERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tblpromopro`
--
ALTER TABLE `tblpromopro`
  MODIFY `PROMOID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tblsummary`
--
ALTER TABLE `tblsummary`
  MODIFY `SUMMARYID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tbluseraccount`
--
ALTER TABLE `tbluseraccount`
  MODIFY `USERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `tblwishlist`
--
ALTER TABLE `tblwishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
