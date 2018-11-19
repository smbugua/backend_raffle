-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 19, 2018 at 06:51 AM
-- Server version: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `drawgift`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tel` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `tel`) VALUES
(1, '0728944815');

-- --------------------------------------------------------

--
-- Table structure for table `campaign`
--

DROP TABLE IF EXISTS `campaign`;
CREATE TABLE IF NOT EXISTS `campaign` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `year` int(4) NOT NULL,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `campaign`
--

INSERT INTO `campaign` (`id`, `name`, `year`, `startdate`, `enddate`, `status`) VALUES
(1, 'Christmas Special Draw 2016', 2016, '2016-10-01', '2017-01-07', 0),
(2, 'Easter Draw 2016', 2016, '2016-08-01', '2016-09-30', 0),
(3, 'Valentine Campaign 2017', 2017, '2017-02-05', '2017-02-18', 0);

-- --------------------------------------------------------

--
-- Table structure for table `collections`
--

DROP TABLE IF EXISTS `collections`;
CREATE TABLE IF NOT EXISTS `collections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `prize` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `idno` varchar(45) NOT NULL,
  `raffleno` varchar(45) NOT NULL,
  `tel` varchar(45) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `gender` varchar(30) DEFAULT 'Male',
  `raffleno` varchar(50) DEFAULT 'new ',
  `address` varchar(45) DEFAULT NULL,
  `idno` varchar(45) DEFAULT NULL,
  `dob` date NOT NULL DEFAULT '2000-01-01',
  `tel` varchar(45) NOT NULL,
  `email` varchar(45) DEFAULT 'N/A',
  `passport` varchar(30) DEFAULT 'N/A',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=838 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `gender`, `raffleno`, `address`, `idno`, `dob`, `tel`, `email`, `passport`) VALUES
(29, 'PHILLIP', 'Male', 'new ', 'KAREN', '13750286', '1990-01-01', '+254720321384', 'N/A', 'N/A'),
(31, 'Sebastian Okech', 'Male', 'new ', 'karen', '0642488', '1990-01-01', '+254722705965', 'N/A', 'N/A'),
(32, 'Nimira', 'Male', 'new ', 'karen', '1242920', '1990-01-01', '+254700045613', 'N/A', 'A049483'),
(33, 'Catherine Juston', 'Male', 'new ', 'karen', 'A1651286', '1990-01-01', '+254722713760', 'N/A', 'N/A'),
(34, 'Tatyana Mesopin', 'Male', 'new ', 'langata', '12763525', '1990-01-01', '+254733827809', 'tmesopin@gmail.com', 'N/A'),
(35, 'Robert Omwando', 'Male', 'new ', 'Lavington', '27235086', '1990-01-01', '+254722667029', 'N/A', 'N/A'),
(36, 'Nemasa kiereini', 'Male', 'new ', 'karen', '22476291', '1990-01-01', '+254722361123', 'N/A', 'N/A'),
(37, 'Joash Wambua', 'Male', 'new ', 'karen', '0917843', '1990-01-01', '+254703394399', 'N/A', 'N/A'),
(38, 'Mary Luiza Kariuki', 'Male', 'new ', 'Karen', '11178192', '1990-01-01', '+254722522075', 'maryluizakariuki@gmail.com', 'N/A'),
(39, 'Patricia Malaki', 'Male', 'new ', 'Madaraka', '22520487', '1990-01-01', '+254721515569', 'N/A', 'N/A'),
(40, 'Hirani Kalpana', 'Male', 'new ', 'Langata', '34762063', '1990-01-01', '+254724314545', 'N/A', 'N/A'),
(41, 'Andrew Waujie', 'Male', 'new ', 'langata', '14543823', '1990-01-01', '+254700326727', 'awaujie@gmail.com', 'N/A'),
(42, 'Lucy w. Kimani', 'Male', 'new ', 'Lavington', '5598477', '1990-01-01', '+254712098887', 'N/A', 'N/A'),
(43, 'Jeremiah Irungu', 'Male', 'new ', 'Ngong', '22949449', '1990-01-01', '+254726849929', 'jerryirungu@yahoo.com', 'N/A'),
(44, 'Eunice Mwiti', 'Male', 'new ', 'karen', '2525119', '1990-01-01', '+254737272300', 'N/A', 'N/A'),
(45, 'Angela Gaiti', 'Male', 'new ', 'karen', '28113145', '1990-01-01', '+254701311347', 'N/A', 'N/A'),
(46, 'Zechariah Nganga', 'Male', 'new ', 'karen', '22136544', '1990-01-01', '+254714642396', 'N/A', 'N/A'),
(47, 'Maxine Brunner', 'Male', 'new ', 'Langata', '9195562', '1990-01-01', '+254733602823', 'N/A', 'N/A'),
(48, 'Sandra Musoga', 'Male', 'new ', 'karen', '21982825', '1990-01-01', '+261227666409', 'smusoga@yahoo.com', 'N/A'),
(49, 'John Wamiri', 'Male', 'new ', 'karen', '8443938', '1990-01-01', '+254720290433', 'N/A', 'N/A'),
(50, 'Koki Mutungi', 'Male', 'new ', 'karen', '13429303', '1990-01-01', '+254722776602', 'Irenemutungi@yahoo.com', 'N/A'),
(51, 'Neesha Bhullar', 'Male', 'new ', 'Langata', '20925742', '1990-01-01', '+254719701663', 'N/A', 'N/A'),
(52, 'Charles', 'Male', 'new ', 'karen', '4544635', '1990-01-01', '+254722570400', 'N/A', 'N/A'),
(53, 'Jaswinder Kaur', 'Male', 'new ', 'karen', '192816', '1990-01-01', '+254722987957', 'N/A', 'N/A'),
(54, 'Esther M. Nyagah', 'Male', 'new ', 'Langata', '27381940', '1990-01-01', '+254722736307', 'nyagaestah@gmail.com', 'N/A'),
(55, 'Gill Allison', 'Male', 'new ', 'langata', 'cr 002478', '1990-01-01', '+254733777040', 'N/A', 'N/A'),
(56, 'Samuel Omollo ', 'Male', 'new ', 'karen', '10126878', '1990-01-01', '+254721577589', 'N/A', 'N/A'),
(57, 'Maria Asiema', 'Male', 'new ', 'karen ', '7113100', '1990-01-01', '+254728607099', 'maria.asiema@hotmail.com', 'N/A'),
(58, 'Catherine Othieno', 'Male', 'new ', 'karen', '5912704', '1990-01-01', '+254722704536', 'ojkii@yahoo.co.ke', 'N/A'),
(59, 'Amina Kubar', 'Male', 'new ', 'Nairobi', '510955695', '1990-01-01', '+254727542517', 'amenahk52@yahoo.com', 'N/A'),
(61, 'Jennifer Ngetich', 'Male', 'new ', 'Langata', '22485257', '1990-01-01', '+254722892793', 'jenngetichm@gmail.com', 'N/A'),
(62, 'moljamiedema', 'Male', 'new ', 'Nairobi', '699604', '1990-01-01', '+254719506383', 'N/A', 'BCF4749F9'),
(63, 'Bhau', 'Male', 'new ', 'karen', '698278', '1990-01-01', '+254787900184', 'N/A', 'N/A'),
(64, 'margaret mwaura', 'Male', 'new ', 'rongai', '14503727', '1990-01-01', '+254722464955', 'N/A', 'N/A'),
(65, 'Peter Mbiti', 'Male', 'new ', '', '21987920', '1990-01-01', '+254722979551', 'pmbiti@gmail.com', 'N/A'),
(66, 'Catherine kihuyu', 'Male', 'new ', 'Rongai', '22176671', '1990-01-01', '+254722482762', 'ckihuyu@gmail.com', 'N/A'),
(67, 'Wangai', 'Male', 'new ', 'Langata', '8823505', '1990-01-01', '+254722670367', 'jgwangai@gmail.com', 'N/A'),
(68, 'rosebell mweya', 'Male', 'new ', 'kisembe road', '22202250', '1990-01-01', '+254720438443', 'wacukarobia@gmail.com', 'N/A'),
(69, 'Janet Kirui', 'Male', 'new ', 'Nairobi', '0735034', '1990-01-01', '+254715371172', 'N/A', 'N/A'),
(70, 'Fabian Kelian', 'Male', 'new ', 'Karen', '22663103', '1990-01-01', '+254721342509', 'fabiankelian@gmail.com', 'N/A'),
(71, 'May Schalch', 'Male', 'new ', 'Langata', '33097345', '1990-01-01', '+254721923616', 'N/A', 'N/A'),
(72, 'Geofrey', 'Male', 'new ', 'Karen', '13502713', '1990-01-01', '+254021345016', 'N/A', 'N/A'),
(73, 'Nathan Mbugua', 'Male', 'new ', 'Kileleshwa', '20533053', '1990-01-01', '+254720246246', 'nmbugua@gmail.com', 'N/A'),
(74, 'Kimani Chege', 'Male', 'new ', 'kiserian', '8383980', '1990-01-01', '+254722236345', 'kimanichege@gmail.com', 'N/A'),
(75, 'Catherine Gitau', 'Male', 'new ', 'South B', '23583633', '1990-01-01', '+254723330338', 'N/A', 'N/A'),
(76, 'Paul Ngamau', 'Male', 'new ', 'Rongai', '10874909', '1990-01-01', '+254722247805', 'paul.ngamau@gmail.com', 'N/A'),
(77, 'Peter Odongo', 'Male', 'new ', 'Rongai', '23575335', '1990-01-01', '+254722707933', 'podongocw@gmail.com', 'N/A'),
(78, 'Phyllis Wambugu', 'Male', 'new ', 'Nairobi', 'A1838513', '1990-01-01', '+254710386284', 'N/A', 'N/A'),
(79, 'abigael Kioko', 'Male', 'new ', 'Rongai', '29538471', '1990-01-01', '+254703763044', 'abbymatei12@gmail.com', 'N/A'),
(80, 'Lucas Mbugua', 'Male', 'new ', 'Ngong', '25410975', '1990-01-01', '+254725396398', 'lucas.mbugua.ndungu@gmail.com', 'N/A'),
(81, 'Judith Ngethe', 'Male', 'new ', 'lANGATA', '13500210', '1990-01-01', '+254722769294', 'N/A', 'N/A'),
(82, 'JOHN kIPCHUMBA', 'Male', 'new ', 'Rongai', '7157027', '1990-01-01', '+254722750148', 'N/A', 'N/A'),
(83, 'Jennifer Duncan', 'Male', 'new ', 'Maasai West', '4858540', '1990-01-01', '+254722601161', 'N/A', 'N/A'),
(84, 'Sister Nigisti zeray', 'Male', 'new ', 'Langata', '213385', '1990-01-01', '+254724053616', 'N/A', 'N/A'),
(85, 'Macharia Kamau', 'Male', 'new ', 'Langata', '4827306', '1990-01-01', '+254701060061', 'N/A', 'N/A'),
(86, 'Fatema Tus Sugra', 'Male', 'new ', 'Karen', '25058606', '1990-01-01', '+254733732744', 'N/A', 'N/A'),
(87, 'Fatema Tus Sugra', 'Male', 'new ', 'Karen', '25058606', '1990-01-01', '+254733732744', 'N/A', 'N/A'),
(88, 'Fenwick Ooko', 'Male', 'new ', 'Nyayo', '21662557', '1990-01-01', '+254720863076', 'N/A', 'N/A'),
(89, 'Rashida Kezerali', 'Male', 'new ', 'Karen', '22782406', '1990-01-01', '+254722676667', 'N/A', 'N/A'),
(90, 'Eujene Wanjiku', 'Male', 'new ', 'Rongai', '32518989', '1990-01-01', '+254704088148', 'N/A', 'N/A'),
(91, 'Anne Kingori', 'Male', 'new ', 'Langata', '10474570', '1990-01-01', '+254736802802', 'N/A', 'N/A'),
(92, 'Joy Kariuki', 'Male', 'new ', 'Karen', '31533262', '1990-01-01', '+254722514559', 'N/A', 'N/A'),
(93, 'Mwenda nchebere', 'Male', 'new ', 'Langata', '23865818', '1990-01-01', '+254722577380', 'N/A', 'N/A'),
(94, 'Joseph kivanguli', 'Male', 'new ', 'Langata', '22448468', '1990-01-01', '+254722357669', 'N/A', 'N/A'),
(95, 'dj flipwiz', 'Male', 'new ', 'rongai2', '29967431', '1990-01-01', '+254708608181', 'N/A', 'N/A'),
(96, 'Nancy Moinde', 'Male', 'new ', 'Karen', '10645638', '1990-01-01', '+254716333300', 'N/A', 'N/A'),
(97, 'Hilda Gikunda', 'Male', 'new ', 'Langata', '22682075', '1990-01-01', '+254722757163', 'N/A', 'N/A'),
(98, 'Mahesh Sethi', 'Male', 'new ', 'Mombasa Road', '13237000', '1990-01-01', '+254722207118', 'N/A', 'N/A'),
(99, 'Mustafa A Hussein bhai', 'Male', 'new ', 'Langata', '21958931', '1990-01-01', '+254720933345', 'N/A', 'N/A'),
(100, 'Quresh Mustafa', 'Male', 'new ', 'Karen Hadi', '12878273', '1990-01-01', '+254721752021', 'N/A', 'N/A'),
(101, 'Iqbal Hussein', 'Male', 'new ', 'Karen', '3348714', '1990-01-01', '+254734142713', 'N/A', 'N/A'),
(102, 'Victor wanjala', 'Male', 'new ', 'Karen', '27030431', '1990-01-01', '+254712019554', 'N/A', 'N/A'),
(103, 'Gurvinder Singh', 'Male', 'new ', 'Nairobi West', '27724592', '1990-01-01', '+254722266108', 'N/A', 'N/A'),
(104, 'Wamaitha Mwaniki', 'Male', 'new ', 'Karen', '23245139', '1990-01-01', '+261227333192', 'N/A', 'N/A'),
(105, 'Martin Kivuva', 'Male', 'new ', 'Rongai', '10818331', '1990-01-01', '+254726265656', 'N/A', 'N/A'),
(106, 'Simon Mbugua', 'System.Windows.Forms.ComboBox,', 'new ', 'Nairobi', '29907209', '2000-01-01', '+254728944815', 'smbugua11@gmail.com', 'ADB12345'),
(107, 'Wallace', 'Male', 'new ', 'KAREN', 'A1982843', '2000-01-01', '+254705979824', 'N/A', 'N/A'),
(108, 'JONEZ A.S.', 'Male', 'new ', 'LANGATA', '761235546', '2000-01-01', '+254722357246', 'N/A', 'N/A'),
(109, 'Habill Nyasio', 'Male', 'new ', 'Kileleshwa', '6894597', '2000-01-01', '+254722874662', 'N/A', 'N/A'),
(110, 'GRAGEDA TEODORO', 'Male', 'new ', 'SOUTH C NBI', '245894', '2000-01-01', '+254718021042', 'N/A', 'N/A'),
(111, 'MICHEAL', 'Male', 'new ', 'lANGATA', '23078898', '2000-01-01', '+254722926375', 'N/A', 'N/A'),
(112, 'Jacqueline Kimani', 'Female', 'new ', 'Langata', '21976954', '2000-01-01', '+254721747064', 'N/A', 'N/A'),
(113, 'Jabir Khalfan', 'Male', 'new ', 'KAREN', '1261195', '2000-01-01', '+254733770725', 'khalfan.Jabir@acc.or.ke', 'N/A'),
(114, 'D. Smith', 'Male', 'new ', 'KAREN', '29444022', '2000-01-01', '+254721405522', 'N/A', 'N/A'),
(115, 'Tatyana Mesopin', 'Male', 'new ', 'langata', '12763525', '2000-01-01', '+508733827809', 'tmesopin@gmail.com', 'N/A'),
(116, 'David Feldmaw', 'Male', 'new ', '', '729871', '2000-01-01', '+254728260298', 'N/A', 'N/A'),
(117, 'Joseph Lokor', 'Male', 'new ', 'Ngong rd', '7401743', '2000-01-01', '+254722916946', 'N/A', 'N/A'),
(118, 'Mostaq Mustafa', 'Male', 'new ', 'Langata', '10031700', '2000-01-01', '+254720911599', 'mraghib52@yahoo.com', 'N/A'),
(119, 'Pauline Njeri', 'Female', 'new ', 'Thika', 'B187035', '2000-01-01', '+254728944815', 'paunguda@yahoo.com', 'ADB12345'),
(120, 'Captain Ondadu', 'Male', 'new ', 'Karen', 'B082032', '2000-01-01', '+254726228658', 'N/A', 'N/A'),
(121, 'ANN NYAWIRA', 'Female', 'new ', 'KAREN', '13540800', '2000-01-01', '+254722818962', 'N/A', 'N/A'),
(122, 'JASWINDER KAUR MURBAH', 'Female', 'new ', 'MBAGATHI WAY', '4418167', '2000-01-01', '+254738785748', 'N/A', 'N/A'),
(123, 'PAUL MWANGI', 'Male', 'new ', 'KAREN', '13213069', '2000-01-01', '+254723342661', 'N/A', 'N/A'),
(124, 'JENNIFER HEWETT', 'Female', 'new ', 'KAREN', '10043459', '2000-01-01', '+254721300243', 'N/A', 'N/A'),
(125, 'NELSON NGENO', 'Female', 'new ', 'LANGATA WEST', '23659915', '2000-01-01', '+254714946050', 'N/A', 'N/A'),
(126, 'RUBBEN PETER MWITA', 'Male', 'new ', 'RONGAI', '29842800', '2000-01-01', '+254728219404', 'N/A', 'N/A'),
(127, 'ANTOINE THERESA', 'Female', 'new ', 'MBOGANI RD', '190486', '2000-01-01', '+254733842847', 'N/A', 'N/A'),
(128, 'WISLEY KOSGEI', 'Male', 'new ', 'KAREN HARDY', '24673363', '2000-01-01', '+254727938660', 'N/A', 'N/A'),
(129, 'ESTHER WANJOHI', 'Female', 'new ', 'KAREN', '4829548', '2000-01-01', '+254722789122', 'N/A', 'N/A'),
(130, 'ANDREW KARUGA', 'Male', 'new ', 'LANGATA', '12926640', '2000-01-01', '+254722527656', 'N/A', 'N/A'),
(131, 'ENOCH INJAGA', 'Male', 'new ', 'MOMBASA RD', '75447152', '2000-01-01', '+254727105636', 'N/A', 'N/A'),
(132, 'ENOCH INJAGA', 'Male', 'new ', 'MOMBASA RD', '75447152', '2000-01-01', '+254727105636', 'N/A', 'N/A'),
(133, 'ENOCH INJAGA', 'Male', 'new ', 'MOMBASA RD', '75447152', '2000-01-01', '+254727105636', 'N/A', 'N/A'),
(134, 'S. FAKHRUDDIN. G.', 'Male', 'new ', 'SAIFEE. PARK            HOUSES  NO.K2', '4574692', '2000-01-01', '+254725609598', 'N/A', 'N/A'),
(135, 'FLORENCE NJAGI', 'Female', 'new ', 'RONGAI', '11143558', '2000-01-01', '+254721419473', 'N/A', 'N/A'),
(136, 'VICTOR TANUI', 'Male', 'new ', 'EMBAKASI', '24786454', '2000-01-01', '+254713036346', 'N/A', 'N/A'),
(137, 'MWIKALI MATU', 'Female', 'new ', 'KAREN', '10474688', '2000-01-01', '+254722705727', 'N/A', 'N/A'),
(138, 'PILHA MAINA', 'Female', 'new ', 'LANGATA', '11443049', '2000-01-01', '+254722891647', 'N/A', 'N/A'),
(139, 'CHRISTABELL MUGASA', 'Female', 'new ', 'KAREN', '10730601', '2000-01-01', '+254717163169', 'N/A', 'N/A'),
(140, 'BRAO. MARCELINO', 'Male', 'new ', 'BOMAS CONSOLATA', 'AD359573', '2000-01-01', '+254718848069', 'N/A', 'N/A'),
(141, 'JOSEPH GITHUKA', 'Male', 'new ', 'KAREN', '8485832', '2000-01-01', '+261219032511', 'N/A', 'N/A'),
(142, 'ANN DERASO', 'Female', 'new ', 'KISEMBE ', '22826270', '2000-01-01', '+254721356190', 'N/A', 'N/A'),
(143, 'SALMA MUSA', 'Female', 'new ', 'NAIROBI', '11458987', '2000-01-01', '+254723511494', 'N/A', 'N/A'),
(144, 'ROSEMARY ANN', 'Female', 'new ', 'LANGATA', '4843459', '2000-01-01', '+254722291725', 'N/A', 'N/A'),
(145, 'KAREL SWINGS', 'Male', 'new ', 'KAREN', '280545', '2000-01-01', '+254722700412', 'N/A', 'N/A'),
(146, 'BRAO. MARCELINO', 'Male', 'new ', 'BOMAS CONSOLATA', 'AD359573', '2000-01-01', '+508718848069', 'N/A', 'N/A'),
(147, 'BETH MENGO', 'Female', 'new ', 'KAREN', '23635876', '2000-01-01', '+254720780257', 'N/A', 'N/A'),
(148, 'ANN NYAWIRA', 'Female', 'new ', 'KAREN', '13540800', '2000-01-01', '+508722818962', 'N/A', 'N/A'),
(149, 'ROSS HAMILTON', 'Male', 'new ', 'KAREN', '20486987', '2000-01-01', '+254725666866', 'N/A', 'N/A'),
(150, 'Nimira', 'Male', 'new ', 'karen', '1242920', '2000-01-01', '+508700045613', 'N/A', 'A049483'),
(151, 'MARTENS GUY', 'Male', 'new ', 'KAREN', '327732', '2000-01-01', '+254736250100', 'N/A', 'N/A'),
(152, 'KYALO M KILELE', 'Male', 'new ', 'LANGATA', '7868205', '2000-01-01', '+254722326268', 'N/A', 'N/A'),
(153, 'SAMUEL BEDIJO', 'Male', 'new ', 'BOMAS', '519787', '2000-01-01', '+254712208795', 'N/A', 'N/A'),
(154, 'IRENE KABAGAMBE KABUGHO', 'Female', 'new ', 'NGUMO', 'B1245471', '2000-01-01', '+254725656652', 'N/A', 'N/A'),
(155, 'EDDAH WAKAPA', 'Female', 'new ', 'RONGAI', '13673010', '2000-01-01', '+254706074074', 'N/A', 'N/A'),
(156, 'LINNET MWENDE', 'Female', 'new ', 'UMOJA', '30598005', '2000-01-01', '+254714226449', 'N/A', 'N/A'),
(157, 'RICHARD OCHIENG', 'Male', 'new ', 'BOMAS', '12505184', '2000-01-01', '+254720322679', 'N/A', 'N/A'),
(158, 'JACK SHAKA', 'Male', 'new ', 'KAREN', '22213960', '2000-01-01', '+254708848095', 'N/A', 'N/A'),
(159, 'OTIENO AGIRO', 'Male', 'new ', 'AKILA 1', '3326490', '2000-01-01', '+254722527434', 'N/A', 'N/A'),
(160, 'CHANTALLE OKONDO', 'Female', 'new ', 'KAREN', '24791110', '2000-01-01', '+254712268125', 'N/A', 'N/A'),
(161, 'CATHERINE GICHUNGU', 'Female', 'new ', '', '10709619', '2000-01-01', '+254722722086', 'N/A', 'N/A'),
(162, 'ANN WANJIRU', 'Female', 'new ', 'LANGATA', '11591944', '2000-01-01', '+254726885771', 'N/A', 'N/A'),
(163, 'SYAN JASNEER', 'Female', 'new ', 'KAREN', '1689991', '2000-01-01', '+254733603388', 'N/A', 'N/A'),
(164, 'NARAN ARJAN', 'Male', 'new ', 'LANGATA', '11351028', '2000-01-01', '+254736445513', 'N/A', 'N/A'),
(165, 'MICHUKI RAYMONDI', 'Male', 'new ', 'KAREN', '3094454', '2000-01-01', '+254722724852', 'N/A', 'N/A'),
(166, 'MOHAMED ABDI', 'Male', 'new ', 'MOMBASA', '28822592', '2000-01-01', '+254721845798', 'N/A', 'N/A'),
(167, 'JENTI RABABIYA', 'Male', 'new ', 'NGARA', '287947', '2000-01-01', '+254725463777', 'N/A', 'N/A'),
(168, 'AOKO OTIENO', 'Female', 'new ', 'MALINDI', '13707281', '2000-01-01', '+254703377766', 'N/A', 'N/A'),
(169, 'CELINA NYANJUI', 'Female', 'new ', 'LANGATA', '11443709', '2000-01-01', '+254733776610', 'N/A', 'N/A'),
(170, 'WAELKENS', 'Male', 'new ', 'KAREN', 'NREM140810', '2000-01-01', '+254737457848', 'N/A', 'N/A'),
(171, 'JOHN LIMB', 'Male', 'new ', 'KAREN', 'B010737', '2000-01-01', '+254733339000', 'N/A', 'N/A'),
(172, 'YULY', 'Male', 'new ', 'KAREN', '304006414', '2000-01-01', '+254716503455', 'N/A', 'N/A'),
(173, 'HUZEIFA NOOR BHAI DOSSAJEE', 'Male', 'new ', 'KAREN', '26288428', '2000-01-01', '+254721968975', 'HUZDOS52@GMAIL.COM', 'N/A'),
(174, 'MICHAEL DSOUZA', 'Male', 'new ', 'RONGAI', '14545616', '2000-01-01', '+254725589255', 'N/A', 'N/A'),
(175, 'JITESH KANADE', 'Male', 'new ', 'NAIROBI WEST', '31780623', '2000-01-01', '+254733758782', 'N/A', 'N/A'),
(176, 'ANNE ONSONGO', 'Female', 'new ', 'LANGATA', '23585753', '2000-01-01', '+254701379791', 'N/A', 'N/A'),
(177, 'SUTHAR REWATRAM', 'Male', 'new ', 'KAREN', '835022', '2000-01-01', '+254738260301', 'N/A', 'N/A'),
(178, 'Samuel Omollo ', 'Male', 'new ', 'karen', '10126878', '2000-01-01', '+508721577589', 'N/A', 'N/A'),
(179, 'TERRY CHARMAINE', 'Female', 'new ', 'LANGATA', '216612', '2000-01-01', '+254722786838', 'N/A', 'N/A'),
(180, 'WNNIE CHEROP', 'Female', 'new ', 'KAREN', '21074056', '2000-01-01', '+254715974478', 'N/A', 'N/A'),
(181, 'ALLAN WICKHAM', 'Male', 'new ', 'KAREN', '297392', '2000-01-01', '+254716887663', 'N/A', 'N/A'),
(182, 'CATHERINE NJOGU', 'Female', 'new ', 'BOMAS', '20862583', '2000-01-01', '+254722463245', 'N/A', 'N/A'),
(183, 'HENRY NYAGA', 'Male', 'new ', 'JAMUHURI', '9621778', '2000-01-01', '+254722793923', 'N/A', 'N/A'),
(184, 'JULIAH EGESSA', 'Female', 'new ', 'ONGATA RONGAI', '14495514', '2000-01-01', '+254722446516', 'N/A', 'N/A'),
(185, 'STEPHEN NGUGI', 'Male', 'new ', 'LANGATA', '27359682', '2000-01-01', '+254722551517', 'N/A', 'N/A'),
(186, 'KULSUMBAI HASSANALI', 'Female', 'new ', 'LANGATA', '3348234', '2000-01-01', '+254734560744', 'N/A', 'N/A'),
(187, 'WAHU CHEGE', 'Female', 'new ', 'KAREN', '22557305', '2000-01-01', '+254720570088', 'N/A', 'N/A'),
(188, 'STANLEY KAMAU', 'Male', 'new ', 'ONGATA RONGAI', '32819491', '2000-01-01', '+254710421595', 'N/A', 'N/A'),
(189, 'EVELYN MAKORI', 'Female', 'new ', 'BURUBURU', '27158043', '2000-01-01', '+254722993589', 'N/A', 'N/A'),
(190, 'ERASTO MWADIME', 'Male', 'new ', 'LANGATA', '23909158', '2000-01-01', '+254721265120', 'N/A', 'N/A'),
(191, 'MILDRED OBARE', 'Female', 'new ', 'LANGATA', '11767518', '2000-01-01', '+254723299848', 'N/A', 'N/A'),
(192, 'JOHN MURIITHI', 'Male', 'new ', 'ONGATA RONGAI', '8797504', '2000-01-01', '+254722524702', 'N/A', 'N/A'),
(193, 'GEORGE NDEGWA', 'Male', 'new ', 'LANGATA', '13428041', '2000-01-01', '+254722709385', 'N/A', 'N/A'),
(194, 'ELIZABETH OTIENO', 'Female', 'new ', 'KAREN', '21396439', '2000-01-01', '+254722719113', 'N/A', 'N/A'),
(195, 'FELIX KOECH', 'Male', 'new ', 'KIBERA', '33216435', '2000-01-01', '+254726908032', 'N/A', 'N/A'),
(196, 'ANTONY KATHITU', 'Male', 'new ', 'KAREN', '1869748', '2000-01-01', '+254721494223', 'N/A', 'N/A'),
(197, 'SALIM MWADIMA', 'Male', 'new ', 'KAREN', '13631498', '2000-01-01', '+254702595988', 'N/A', 'N/A'),
(198, 'DAVID HEWETT', 'Male', 'new ', 'LANGATA', '13449763', '2000-01-01', '+254722277160', 'N/A', 'N/A'),
(199, 'FRANCIS KIPRONO', 'Male', 'new ', 'RONGAI', '11339043', '2000-01-01', '+254729855422', 'N/A', 'N/A'),
(200, 'MILKA ODONGO', 'Male', 'new ', 'KAREN', '7164435', '2000-01-01', '+254711112213', 'N/A', 'N/A'),
(201, 'DIXON MARENDE', 'Male', 'new ', 'LANGATA', '13828133', '2000-01-01', '+254724348908', 'N/A', 'N/A'),
(202, 'GULAM FATMA IQBAL', 'Female', 'new ', 'KAREN', '11127776', '2000-01-01', '+254713136650', 'N/A', 'N/A'),
(203, 'JEREMIAH NYAMBINYA', 'Male', 'new ', 'LANGATA', '13689107', '2000-01-01', '+254711911113', 'N/A', 'N/A'),
(204, 'DONALD NYADWE', 'Male', 'new ', 'LANGATA', 'A1001538', '2000-01-01', '+254722519811', 'N/A', 'N/A'),
(205, 'CHRISTOPHER KARUGU', 'Male', 'new ', 'KAREN', '31563122', '2000-01-01', '+254705244273', 'N/A', 'N/A'),
(206, 'RAHILA YAKUB', 'Female', 'new ', 'ONGATA RONGAI', '0976792', '2000-01-01', '+254711777384', 'N/A', 'N/A'),
(207, 'MWAURA JOSEPH', 'Male', 'new ', 'HARDY', '25943414', '2000-01-01', '+254719198478', 'N/A', 'N/A'),
(208, 'JANE KATIKU', 'Female', 'new ', 'RONGAI', '20697221', '2000-01-01', '+254724518520', 'N/A', 'N/A'),
(209, 'LEONIDA KWAMBOKA', 'Male', 'new ', 'LANGATA', '8533740', '2000-01-01', '+254720860533', 'N/A', 'N/A'),
(210, 'ANDREW KARUGA', 'Male', 'new ', 'LANGATA', '12926640', '2000-01-01', '+508722527656', 'N/A', 'N/A'),
(211, 'ERIC BOERA', 'Male', 'new ', 'RONGAI', '23830839', '2000-01-01', '+254720087242', 'N/A', 'N/A'),
(212, 'KENNETH OMONDI AROKA', 'Male', 'new ', 'RONGAI', '31634016', '2000-01-01', '+254701863654', 'N/A', 'N/A'),
(213, 'BAUWA ZAITUN', 'Female', 'new ', 'LANGATA', '11061767', '2000-01-01', '+254702888971', 'N/A', 'N/A'),
(214, 'HILARY CLARE', 'Female', 'new ', 'KAREN', '908/2016', '2000-01-01', '+254701038242', 'N/A', 'N/A'),
(215, 'TAMBIRAI JANDA', 'Female', 'new ', 'KAREN', '23298306', '2000-01-01', '+254712167613', 'N/A', 'N/A'),
(216, 'EGGER MIRKA', 'Female', 'new ', 'KAREN', '420612', '2000-01-01', '+254724230359', 'N/A', 'N/A'),
(217, 'JENNIFER LINDSAY', 'Female', 'new ', 'MUKOMA', '3933044', '2000-01-01', '+254721242348', 'N/A', 'N/A'),
(218, 'David Feldmaw', 'Male', 'new ', '', '729871', '2000-01-01', '+508728260298', 'N/A', 'N/A'),
(219, 'Bhau', 'Male', 'new ', 'karen', '698278', '2000-01-01', '+508787900184', 'N/A', 'N/A'),
(220, 'EMMANUEL MATHEKA', 'Male', 'new ', 'KAREN', '7347072', '2000-01-01', '+254717649032', 'N/A', 'N/A'),
(221, 'HIDA GITHINJI', 'Female', 'new ', 'LANGATA', '20561848', '2000-01-01', '+254725719002', 'N/A', 'N/A'),
(222, 'VIOLET TERRY', 'Female', 'new ', 'KAREN', '11584298', '2000-01-01', '+254724685186', 'N/A', 'N/A'),
(223, 'JOSEPH BIRUNDU', 'Male', 'new ', 'KAREN', '11207218', '2000-01-01', '+254723535193', 'N/A', 'N/A'),
(224, 'EVERLYN LUHOMBO', 'Female', 'new ', 'SOUTH CN', '10298764', '2000-01-01', '+254714215587', 'N/A', 'N/A'),
(225, 'MARIYA HUZEFA', 'Female', 'new ', 'LANGATA', '22366684', '2000-01-01', '+254724082310', 'N/A', 'N/A'),
(226, 'JAMES ODHIAMBO', 'Male', 'new ', 'LANGATA', '24048827', '2000-01-01', '+254724429345', 'N/A', 'N/A'),
(227, 'POOJA PANESAR', 'Female', 'new ', 'KAREN', '25988808', '2000-01-01', '+254736600510', 'N/A', 'N/A'),
(228, 'HUZEIFA NOOR BHAI DOSAJEE', 'Male', 'new ', 'KAREN', '2203614', '2000-01-01', '+254721968975', 'dosla52@hotmail.com', 'N/A'),
(229, 'BEAVAN CHERUIYOT', 'Male', 'new ', 'LANGATA', '33129461', '2000-01-01', '+254723041699', 'N/A', 'N/A'),
(230, 'JACKLINE NYAKEO', 'Female', 'new ', 'KAREN', '31288468', '2000-01-01', '+254708106110', 'N/A', 'N/A'),
(231, 'GLADYCE MUNYOKI', 'Female', 'new ', 'LANGATA', '22824672', '2000-01-01', '+254722690172', 'N/A', 'N/A'),
(232, 'ANITA NOAH STANLY', 'Female', 'new ', 'SALAMA', '20296009', '2000-01-01', '+254722732547', 'N/A', 'N/A'),
(233, 'RAMESH VALJI HIRANI', 'Male', 'new ', 'LANGATA', '22603876', '2000-01-01', '+254722957808', 'N/A', 'N/A'),
(234, 'PAULINE WANJIRU', 'Female', 'new ', 'KARENN', '11222073', '2000-01-01', '+254722372912', 'N/A', 'N/A'),
(235, 'AZIZ MOIZ', 'Male', 'new ', 'KAREN', '22798690', '2000-01-01', '+254735777735', 'N/A', 'N/A'),
(236, 'TAYABALI ABIZAR', 'Male', 'new ', 'LANGATA', '3905255', '2000-01-01', '+254722202016', 'N/A', 'N/A'),
(237, 'MILLICENT MWANGI', 'Female', 'new ', 'KAREN', 'A2374218', '2000-01-01', '+254722778569', 'N/A', 'N/A'),
(238, 'MURTAZA GULAMHUSSEIN', 'Male', 'new ', 'KAREN', '13430099', '2000-01-01', '+254711437452', 'N/A', 'N/A'),
(239, 'ZENUDIN MOHAMEDBHAI', 'Male', 'new ', 'KAREN', '4618072', '2000-01-01', '+254738933396', 'N/A', 'N/A'),
(240, 'BURHANUDDIN FIDA', 'Male', 'new ', 'LANGATA', '3348666', '2000-01-01', '+254735999166', 'N/A', 'N/A'),
(241, 'wendy mckittrick', 'Female', 'new ', 'LANGATA', '3327943', '2000-01-01', '+254722530616', 'N/A', 'N/A'),
(242, 'ANGELA MNGOLE', 'Female', 'new ', 'KAREN', '13429341', '2000-01-01', '+254724113118', 'N/A', 'N/A'),
(243, 'Nimira', 'Male', 'new ', 'karen', '1242920', '2000-01-01', '+508700045613', 'N/A', 'A049483'),
(246, 'Nadia Yakub', 'Male', 'new ', 'KAREN', '674075', '2000-01-01', '+254733528777', 'N/A', 'AP6332842'),
(247, 'SANGEEGA SOLANKI', 'Female', 'new ', 'KAREN', '8389592', '2000-01-01', '+254733990232', 'N/A', 'N/A'),
(248, 'louis alvis', 'Male', 'new ', 'karen', '32921291', '2000-01-01', '+254723774069', 'N/A', 'N/A'),
(249, 'MAURICE MBOWO', 'Male', 'new ', 'RONGAI', '24740609', '2000-01-01', '+254720094049', 'N/A', 'N/A'),
(250, 'ZOREEN ', 'Female', 'new ', 'KAREN', 'A2423276', '2000-01-01', '+254723461053', 'N/A', 'N/A'),
(251, 'BINDIA SETHI', 'Female', 'new ', 'MOMBASA RD', '329953', '2000-01-01', '+254720544445', 'N/A', 'N/A'),
(252, 'ABDALLA IBRAHIM', 'Male', 'new ', 'KIBERA', '14546907', '2000-01-01', '+254723449496', 'N/A', 'N/A'),
(253, 'MONICA BARRERA', 'Female', 'new ', 'KAREN', 'GA384657', '2000-01-01', '+254724700259', 'N/A', 'GA384657'),
(254, 'VINCENT', 'Male', 'new ', 'LANGATA', '20928407', '2000-01-01', '+254721445011', 'N/A', 'N/A'),
(255, 'JUDY ', 'Male', 'new ', 'LANGATA', '431183', '2000-01-01', '+254722820603', 'N/A', 'N/A'),
(256, 'MARY OKOTH', 'Female', 'new ', 'LANGATA', '4157265', '2000-01-01', '+254722741353', 'N/A', 'N/A'),
(257, 'JOSEPH OJWANG', 'Male', 'new ', 'KAREN', '0680866', '2000-01-01', '+254721405189', 'N/A', 'N/A'),
(258, 'CAROLINE M', 'Female', 'new ', 'KAREN', '11222742', '2000-01-01', '+254728826201', 'N/A', 'N/A'),
(259, 'GEORGE LYNSKEY', 'Male', 'new ', 'KAREN', '1879804', '2000-01-01', '+254722712816', 'N/A', 'N/A'),
(260, 'STEPHANIE BOY', 'Female', 'new ', 'LANGATA', '25573568', '2000-01-01', '+254721837615', 'N/A', 'N/A'),
(261, 'DAVID KIRIGUA', 'Female', 'new ', 'LANGATA', '24395083', '2000-01-01', '+254710347004', 'N/A', 'N/A'),
(262, '', 'Female', 'new ', '', '9724815', '2000-01-01', '+254722734582', 'N/A', 'N/A'),
(263, 'RUTH MBOGO', 'Male', 'new ', 'NGONG RD', '10862572', '2000-01-01', '+254706289865', 'N/A', 'N/A'),
(264, '  JARED RATEMO', 'Male', 'new ', 'SOUTH B', '21045906', '2000-01-01', '+254725351393', 'N/A', 'N/A'),
(265, 'WAMAITHA MWANIKI', 'Female', 'new ', 'KAREN', '23245139', '2000-01-01', '+254722733192', 'N/A', 'N/A'),
(266, 'ANNET BULMAN', 'Female', 'new ', 'LANGATA', '220171', '2000-01-01', '+254721585269', 'N/A', 'N/A'),
(267, 'BELINDA', 'Female', 'new ', 'ONGATA RONGAI', '20699213', '2000-01-01', '+254722665686', 'N/A', 'N/A'),
(268, 'RAYMOND GOES', 'Male', 'new ', 'SOTH C', '7802823', '2000-01-01', '+254733723422', 'N/A', 'N/A'),
(269, 'KENNETH NTHIWA', 'Male', 'new ', 'LANGATA', '6883129', '2000-01-01', '+254721452631', 'N/A', 'N/A'),
(270, 'ANNOLD NYAKUNDI', 'Male', 'new ', 'LANGATA', '24374622', '2000-01-01', '+254720409206', 'N/A', 'N/A'),
(271, 'EDDAH WANGECI', 'Female', 'new ', 'MOMBASA RD', '23222196', '2000-01-01', '+254722702990', 'N/A', 'N/A'),
(272, 'JUNIOR MWATHI', 'Male', 'new ', 'KISERIAN', '29288674', '2000-01-01', '+254726993576', 'N/A', 'N/A'),
(273, 'LUCY GITONGA', 'Female', 'new ', 'RONGAI', '8745101', '2000-01-01', '+254721513725', 'N/A', 'N/A'),
(274, 'EUGINE NDUNGU', 'Male', 'new ', 'LANGATA', '24045153', '2000-01-01', '+254722499369', 'N/A', 'N/A'),
(275, 'CECILIA RAHAB RAMTU-OWITI', 'Female', 'new ', 'ONGATA RONGAI', '3082245', '2000-01-01', '+254723761424', 'N/A', 'N/A'),
(276, 'ANN TAIETH', 'Female', 'new ', 'KAREN', '186780', '2000-01-01', '+254728270289', 'N/A', 'N/A'),
(277, 'ABDUL AMIN', 'Male', 'new ', 'KAREN', '1689112', '2000-01-01', '+254722520660', 'N/A', 'N/A'),
(278, 'Samuel Omollo ', 'Male', 'new ', 'karen', '10126878', '2000-01-01', '+508721577589', 'N/A', 'N/A'),
(279, 'TABITHA CHERONO', 'Female', 'new ', 'LANGATA', '29784853', '2000-01-01', '+254722455276', 'N/A', 'N/A'),
(280, 'LORNA JEPCHUMBA', 'Female', 'new ', 'KAREN', '10940500', '2000-01-01', '+254722460266', 'N/A', 'N/A'),
(281, 'MACDONALD CATHRINE', 'Female', 'new ', 'MILITONI', '814907', '2000-01-01', '+254719871928', 'N/A', 'N/A'),
(282, 'SHALEEN KESHAVJEE', 'Female', 'new ', 'KILIMANI', '10366245', '2000-01-01', '+254733614342', 'N/A', 'N/A'),
(283, 'IBRAHIM NGANGA', 'Female', 'new ', 'KAREN', '4409263', '2000-01-01', '+254721583409', 'N/A', 'N/A'),
(284, 'DIVYESH GHAGHADA', 'Male', 'new ', 'LANGATA', '523404', '2000-01-01', '+254714131132', 'N/A', 'N/A'),
(285, 'MARIA SIRANGA', 'Female', 'new ', 'MBAGATHI WAY', '13405176', '2000-01-01', '+254713798983', 'N/A', 'N/A'),
(286, 'JENNIFER HEWETT', 'Female', 'new ', 'KAREN', '10043459', '2000-01-01', '+508721300243', 'N/A', 'N/A'),
(287, 'LAMBERT GINETTE', 'Female', 'new ', '', '251757', '2000-01-01', '+254733641604', 'N/A', 'N/A'),
(288, 'CHRISTABEL OJUOK', 'Male', 'new ', 'LANGATA', '27400794', '2000-01-01', '+254726034283', 'N/A', 'N/A'),
(289, 'ROBERT KYFFIN', 'Male', 'new ', 'LANGATA/KARENN', '500612670', '2000-01-01', '+254733608505', 'N/A', 'N/A'),
(290, 'KENNETH PELAGATTI', 'Male', 'new ', 'LANGATA', '10516155', '2000-01-01', '+254722233954', 'N/A', 'N/A'),
(291, 'CHARLES MURIITHI', 'Male', 'new ', 'KAREN', '12925963', '2000-01-01', '+254724916600', 'N/A', 'N/A'),
(292, 'JASMEER SIDHU', 'Female', 'new ', 'LANGATA', '268196', '2000-01-01', '+254721762898', 'N/A', 'N/A'),
(293, 'ZENUDIN MOHAMEDBHAI', 'Female', 'new ', 'KAREN', '4618072', '2000-01-01', '+254728933396', 'N/A', 'N/A'),
(294, 'YUSUF NAJMI', 'Female', 'new ', 'KAREN', '20050060', '2000-01-01', '+254722340840', 'N/A', 'N/A'),
(295, 'MAHENDRA BHUDIA', 'Male', 'new ', 'LANGATA', '21877659', '2000-01-01', '+254722519770', 'N/A', 'N/A'),
(296, 'MUSSAJEE EZZI', 'Male', 'new ', 'KAREN', '11248460', '2000-01-01', '+254702832925', 'N/A', 'N/A'),
(297, 'STEPHEN KIVINDO', 'Male', 'new ', 'KAREN', '12585807', '2000-01-01', '+254721603477', 'N/A', 'N/A'),
(298, 'PHYLLIS OKWENGU', 'Male', 'new ', 'LANGATA', '13663621', '2000-01-01', '+254724365576', 'N/A', 'N/A'),
(299, 'TAYABALI ABIZAR', 'Male', 'new ', 'LANGATA', '3905255', '2000-01-01', '+508722202016', 'N/A', 'N/A'),
(300, 'KULSUMBAI HASSANALI', 'Male', 'new ', 'LANGATA', '3348234', '2000-01-01', '+254733779583', 'N/A', 'N/A'),
(301, 'ZOEB HEBATULLAH', 'Male', 'new ', 'LANGATA', '8932421', '2000-01-01', '+254722871519', 'N/A', 'N/A'),
(302, 'KENDI MBERIA', 'Female', 'new ', 'LANGATA', '28557952', '2000-01-01', '+254711964082', 'N/A', 'N/A'),
(303, 'DANIEL GATHIRA', 'Female', 'new ', 'SOUTH C', '20064000', '2000-01-01', '+254722756124', 'N/A', 'N/A'),
(304, 'JOY KULOLA', 'Female', 'new ', 'LANGATA', '423586188', '2000-01-01', '+254722295118', 'N/A', 'N/A'),
(305, 'JAMES NJUGUNA', 'Male', 'new ', 'ONGATA RONGAI', '34617291', '2000-01-01', '+254718685975', 'N/A', 'N/A'),
(306, 'CATHERINE MUNUHE', 'Female', 'new ', 'LANGATA', '7657325', '2000-01-01', '+254722342108', 'N/A', 'N/A'),
(307, 'CHARLES KIMARI', 'Male', 'new ', 'LANGATA', '14571620', '2000-01-01', '+254722494265', 'N/A', 'N/A'),
(308, 'A KHAN ', 'Male', 'new ', '.KILIMANI', '11443681', '2000-01-01', '+254724602917', 'N/A', 'N/A'),
(309, 'KAVITA RABADIA', 'Male', 'new ', 'LANGATA', 'P1754482', '2000-01-01', '+254728031723', 'N/A', 'N/A'),
(310, 'HARRIETTE SANDE', 'Male', 'new ', 'LANGATA', '21973106', '2000-01-01', '+254722551185', 'N/A', 'N/A'),
(311, 'DOREEN ZIEGLER', 'Female', 'new ', 'KAREN', '429130', '2000-01-01', '+254703508196', 'N/A', 'N/A'),
(312, 'KAREN MCLEAN', 'Female', 'new ', 'KAREN', '10626672', '2000-01-01', '+254722389259', 'N/A', 'N/A'),
(313, 'ARWA KAPACEE', 'Female', 'new ', 'KAREN', '27412305', '2000-01-01', '+254733770050', 'N/A', 'N/A'),
(314, 'JOHN NYOIKE', 'Male', 'new ', 'KAREN', '13803486', '2000-01-01', '+254721699758', 'N/A', 'N/A'),
(315, 'JEDIDA WANJA', 'Female', 'new ', 'ONGATA RONGAI', '25983106', '2000-01-01', '+254725575631', 'N/A', 'N/A'),
(316, 'BHAVESH PATEL', 'Female', 'new ', 'WESTLANDS', '23605799', '2000-01-01', '+254722835106', 'N/A', 'N/A'),
(317, 'ANNE KIMANI', 'Female', 'new ', 'ONGATA RONGAI', '333340678', '2000-01-01', '+254704698094', 'N/A', 'N/A'),
(318, 'SAKINA HAKIMUDIN', 'Female', 'new ', 'LANGATA', '29891440', '2000-01-01', '+254728946496', 'N/A', 'N/A'),
(319, 'LORNA ONYANGO', 'Male', 'new ', 'KAREN', '28157592', '2000-01-01', '+254723167328', 'N/A', 'N/A'),
(320, 'GLADYS MWITA', 'Female', 'new ', 'LANGATA', '24757472', '2000-01-01', '+254723116927', 'N/A', 'N/A'),
(321, 'MARTIN MUTISYA', 'Male', 'new ', 'NRB WEST', '9290332', '2000-01-01', '+254722232648', 'N/A', 'N/A'),
(322, 'CYNTHIA FALCONER', 'Female', 'new ', 'KAREN', '194643', '2000-01-01', '+254722620314', 'N/A', 'N/A'),
(323, 'ANJA WEBER', 'Female', 'new ', 'ONGATA RONGAI', 'C4J66FMG7', '2000-01-01', '+254735672970', 'N/A', 'N/A'),
(324, 'NDLOVU SINIKIWE', 'Female', 'new ', 'KAREN', '690416', '2000-01-01', '+254705788209', 'N/A', 'N/A'),
(325, 'JANET OKETCH', 'Female', 'new ', 'LANGATA', '21446395', '2000-01-01', '+254723511930', 'N/A', 'N/A'),
(326, 'VINCENT MUMO', 'Male', 'new ', 'LANGATA', '22544644', '2000-01-01', '+254777867905', 'N/A', 'N/A'),
(327, 'ERNEST MUCHOKI', 'Male', 'new ', 'LANGATA', '3425775', '2000-01-01', '+254722706730', 'N/A', 'N/A'),
(328, 'BERNARD KHABULE', 'Male', 'new ', 'RIMPA', '24398133', '2000-01-01', '+254726176087', 'N/A', 'N/A'),
(329, 'NASIM YAKUB', 'Female', 'new ', 'KAREN', '16001697', '2000-01-01', '+254722203240', 'N/A', 'N/A'),
(330, 'DORIS ', 'Female', 'new ', 'KAREN', '13086582', '2000-01-01', '+254722764198', 'N/A', 'A2594828'),
(331, 'DORIS ', 'Female', 'new ', 'KAREN', '13086582', '2000-01-01', '+254722764198', 'N/A', 'A2594828'),
(332, 'JUDITH OPIYO', 'Female', 'new ', 'NGONG', '9660243', '2000-01-01', '+254726797813', 'N/A', 'N/A'),
(333, 'ROBERT K. MBAYA', 'Male', 'new ', 'ONGATA RONGAI', '22490629', '2000-01-01', '+254720173526', 'N/A', 'N/A'),
(334, 'STEPHEN MOGAKA', 'Male', 'new ', 'MUIRI LANE BOMAS', '21091539', '2000-01-01', '+254712914382', 'N/A', 'N/A'),
(335, 'ALPHAS KISHOYIANI', 'Female', 'new ', 'KASARANI', '31061508', '2000-01-01', '+254729683939', 'N/A', 'N/A'),
(336, 'ZEIRE MBITHE', 'Male', 'new ', 'LANGATA', '22325142', '2000-01-01', '+254722740063', 'N/A', 'N/A'),
(337, 'Mr Young', 'Male', 'new ', 'Karen', '4815239', '2000-01-01', '+254723365965', 'N/A', 'N/A'),
(338, 'Hellen Maleche', 'Male', 'new ', '', '10088489', '2000-01-01', '+254722851308', 'N/A', 'N/A'),
(339, 'Carol Njeri Mwangi', 'Female', 'new ', 'Karen', '21962892', '2000-01-01', '+254720326446', 'N/A', 'N/A'),
(340, 'ARFA YAKUB', 'Female', 'new ', 'ONGATA RONGAI', '0977046', '2000-01-01', '+254722513474', 'N/A', 'N/A'),
(341, 'Shahnaz Kurban', 'Female', 'new ', 'Ngong', '10645528', '2000-01-01', '+254720613612', 'N/A', 'N/A'),
(342, 'Eric Joe Munene', 'Male', 'new ', 'Karen', '20200628', '2000-01-01', '+254721207414', 'N/A', 'N/A'),
(343, 'Jutta Johanna Quade', 'Female', 'new ', 'Karen', 'C47CK6F1R', '2000-01-01', '+254733735105', 'N/A', 'N/A'),
(344, 'Jutta Johanna Quade', 'Female', 'new ', 'Karen', 'C47CK6F1R', '2000-01-01', '+254733735105', 'N/A', 'N/A'),
(345, 'Jutta Johanna Quade', 'Female', 'new ', 'Karen', 'C47CK6F1R', '2000-01-01', '+254733735105', 'N/A', 'N/A'),
(346, 'Bernadette Theuri', 'Female', 'new ', 'Langata', '0987308', '2000-01-01', '+254727985205', 'N/A', 'N/A'),
(347, 'Joseph Githuka', 'Male', 'new ', 'Karen', '8485832', '2000-01-01', '+254721908511', 'N/A', 'N/A'),
(348, 'Amina Kubar', 'Male', 'new ', 'Nairobi', '510955695', '2000-01-01', '+508727542517', 'amenahk52@yahoo.com', 'N/A'),
(349, 'Christine Leonard', 'Female', 'new ', 'Karen', '6894251', '2000-01-01', '+254724255451', 'N/A', 'N/A'),
(350, 'MUNIRA EZZY', 'Female', 'new ', 'KAREN', '22998958', '2000-01-01', '+254721752396', 'N/A', 'N/A'),
(351, 'GLADYS OKACH', 'Female', 'new ', 'KAREN', '21437782', '2000-01-01', '+254726492119', 'N/A', 'N/A'),
(352, 'DOROTHY WANDAGWA', 'Female', 'new ', 'KAREN', '8717875', '2000-01-01', '+254720344469', 'N/A', 'N/A'),
(353, 'JOSPHAT MUTINDA', 'Male', 'new ', 'KAREN', '29258918', '2000-01-01', '+254715276914', 'N/A', 'N/A'),
(354, 'MARIA TOROREY', 'Female', 'new ', 'ONGATA RONGAI', '22058320', '2000-01-01', '+254722654949', 'N/A', 'N/A'),
(355, 'JENNIFER STANLEY', 'Female', 'new ', 'KAREN', '13630041', '2000-01-01', '+254736540554', 'N/A', 'N/A'),
(356, 'MUSSAJEE EZZI', 'Male', 'new ', 'KAREN', '11248460', '2000-01-01', '+508702832925', 'N/A', 'N/A'),
(357, 'SAIFUDDIN FAKHRUDDIN', 'Male', 'new ', 'LANGATA', 'G9959704', '2000-01-01', '+254722954035', 'N/A', 'N/A'),
(358, 'SAIFUDDIN FAKHRUDDIN', 'Male', 'new ', 'LANGATA', 'G9959704', '2000-01-01', '+254722954035', 'N/A', 'N/A'),
(359, 'SAIFUDDIN FAKHRUDDIN', 'Male', 'new ', 'LANGATA', 'G9959704', '2000-01-01', '+508722954035', 'N/A', 'N/A'),
(360, 'MANSUR HAKIMI', '', 'new ', 'LANGATA', '6061081', '2000-01-01', '+254720788837', 'N/A', 'N/A'),
(361, 'HIRANI ARJAN', 'Male', 'new ', 'LANGATA', '220467', '2000-01-01', '+254723908800', 'N/A', 'N/A'),
(362, 'ALI ALI ASGHAR', 'Male', 'new ', 'LANGATA', '833198', '2000-01-01', '+254724626607', 'N/A', 'N/A'),
(363, 'CATHERINE MBEKE', 'Female', 'new ', 'NKOROI', '12948780', '2000-01-01', '+254722818941', 'N/A', 'N/A'),
(364, 'JARED OTIENO', 'Male', 'new ', 'EMBAKASI', '13686802', '2000-01-01', '+254712434312', 'N/A', 'N/A'),
(365, 'ESTHER WANJIKU', 'Female', 'new ', 'LANGATA', '23497237', '2000-01-01', '+254720854467', 'N/A', 'N/A'),
(366, 'MOSES KANENE', 'Male', 'new ', '', '11351538', '2000-01-01', '+254724095888', 'N/A', 'N/A'),
(367, 'EBRAHIM SHABBIR', 'Male', 'new ', 'LANGATA', '26822878', '2000-01-01', '+254713829199', 'N/A', 'N/A'),
(368, 'SARAH ABDULLA', 'Female', 'new ', 'LANGATA', '11873989', '2000-01-01', '+254725678524', 'N/A', 'N/A'),
(369, 'BRIJESH RABADIA', 'Male', 'new ', 'LANGATA', '28034801', '2000-01-01', '+254728031723', 'N/A', 'N/A'),
(370, 'FAITH MUSYOKA', 'Female', 'new ', 'THIKA ROAD', '29435399', '2000-01-01', '+254714693443', 'N/A', 'N/A'),
(371, 'JANE RANDALL', 'Female', 'new ', 'LANGATA', '8537306', '2000-01-01', '+254729984390', 'N/A', 'N/A'),
(372, 'SUSIE JAUSS', 'Female', 'new ', 'KAREN', '11084185', '2000-01-01', '+254796149945', 'N/A', 'N/A'),
(373, 'GEORGE KURIA', 'Male', 'new ', 'SOUTH C', '6404359', '2000-01-01', '+254722321054', 'N/A', 'N/A'),
(374, 'MERCY WAMBUI KURIA', 'Female', 'new ', 'SOUTH C', '7339332', '2000-01-01', '+254721355557', 'N/A', 'N/A'),
(375, 'AGNES MARIA', 'Female', 'new ', 'KAREN', 'NN25C7990', '2000-01-01', '+254701825154', 'N/A', 'N/A'),
(376, 'PHILLIPS PAUL ', 'Male', 'new ', 'KAREN', '669833', '2000-01-01', '+254708148540', 'N/A', 'N/A'),
(377, 'SHAIDAL HARIA', 'Female', 'new ', 'WESTLANDS', '20512789', '2000-01-01', '+254721991766', 'N/A', 'N/A'),
(378, 'ISAYA OMOKE', 'Male', 'new ', 'RONGAI', '21349798', '2000-01-01', '+254721142162', 'N/A', 'N/A'),
(379, 'JEAN ANTOINE', 'Male', 'new ', 'LANGATA', '1906047', '2000-01-01', '+254733759785', 'N/A', 'N/A'),
(380, 'KAMINI ', 'Female', 'new ', 'KAREN', '21380028', '2000-01-01', '+254722342872', 'N/A', 'N/A'),
(381, 'EDGAR YATICH', 'Male', 'new ', 'RONGAI', '27915206', '2000-01-01', '+254711579432', 'N/A', 'N/A'),
(382, 'SUSAN MOMANYI', 'Female', 'new ', 'LANGATA', '22360865', '2000-01-01', '+254721754703', 'N/A', 'N/A'),
(383, 'JULIET INDETIE', 'Female', 'new ', 'KAREN', '7868545', '2000-01-01', '+254714148408', 'N/A', 'N/A'),
(384, 'MUNIRA JANOOUUALA', 'Female', 'new ', 'LANGATA', '20054561', '2000-01-01', '+254722333480', 'N/A', 'N/A'),
(385, 'KHUZEIMA MOHSIN', 'Male', 'new ', 'KAREN', '10272427', '2000-01-01', '+254715645945', 'N/A', 'N/A'),
(386, 'TAHERA ALI HUSSEIN', 'Female', 'new ', 'KAREN', '220236', '2000-01-01', '+254733458051', 'N/A', 'N/A'),
(387, 'NICOLAS MUTUMA', 'Female', 'new ', 'NKOROI', '20194016', '2000-01-01', '+254721830592', 'N/A', 'N/A'),
(388, 'DORCAS MUNYIVA', 'Female', 'new ', 'ONGATA RONGAI', '20560083', '2000-01-01', '+254722862263', 'N/A', 'N/A'),
(389, 'CLEOPHAS', 'Female', 'new ', 'NAIROBI', '13416458', '2000-01-01', '+254708342243', 'N/A', 'N/A'),
(390, 'MOSES NGERURO', 'Male', 'new ', 'SYOKIMAU', '8642406', '2000-01-01', '+254721240880', 'N/A', 'N/A'),
(391, 'MOSES NGERURO', 'Male', 'new ', 'SYOKIMAU', '8642406', '2000-01-01', '+254721240880', 'N/A', 'N/A'),
(392, 'MOSES NGERURO', 'Male', 'new ', 'SYOKIMAU', '8642406', '2000-01-01', '+254721240880', 'N/A', 'N/A'),
(393, 'MOSES NGERURO', 'Male', 'new ', 'SYOKIMAU', '8642406', '2000-01-01', '+254721240880', 'N/A', 'N/A'),
(394, 'MARTIN MUNENE', 'Male', 'new ', 'ONGATA RONGAI', '33018847', '2000-01-01', '+254712935047', 'N/A', 'N/A'),
(395, 'NJOKI MWAURA', 'Female', 'new ', 'MOMBASA', '13163221', '2000-01-01', '+254700336265', 'N/A', 'N/A'),
(396, 'KRISTINE HAMMER', 'Female', 'new ', 'LANGATA', '39130032350', '2000-01-01', '+254796035032', 'N/A', 'N/A'),
(397, 'Maxine Brunner', 'Male', 'new ', 'Langata', '9195562', '2000-01-01', '+508733602823', 'N/A', 'N/A'),
(398, 'GATHONI NJOROGE', '', 'new ', 'KILIMANI', '13426381', '2000-01-01', '+254722563366', 'N/A', 'N/A'),
(399, 'SYLIA PWANA', 'Female', 'new ', 'LANGATA', '11705812', '2000-01-01', '+254722397250', 'N/A', 'N/A'),
(400, 'EDWIIN OMORI', 'Male', 'new ', 'UTAWALA', '11588677', '2000-01-01', '+254722366165', 'edwin.omori@gmail.com', 'N/A'),
(401, 'FIONA CHEBCHII', 'Female', 'new ', 'LANGATA', '28666126', '2000-01-01', '+254724165787', 'N/A', 'N/A'),
(402, 'FAKHRUDDIN JANOOWALLA', 'Male', 'new ', 'KAREN', '8486968', '2000-01-01', '+254722703901', 'N/A', 'N/A'),
(403, 'VINCENT MUMO', 'Male', 'new ', 'LANGATA', '22544644', '2000-01-01', '+508777867905', 'N/A', 'N/A'),
(404, 'BEATRICE ', 'Male', 'new ', 'KAREN', '27363125', '2000-01-01', '+254712533691', 'N/A', 'N/A'),
(405, 'ANN CLEOPATRA', 'Female', 'new ', 'LANGATA', '13577402', '2000-01-01', '+254722769979', 'N/A', 'N/A'),
(406, 'MEBO IDOR', 'Female', 'new ', 'KAREN', '5635797', '2000-01-01', '+254729791368', 'N/A', 'N/A'),
(407, 'JOHN KARIUKI', 'Male', 'new ', 'NGONG', '11127710', '2000-01-01', '+254722272562', 'N/A', 'N/A'),
(408, 'MICHAEL MUMA', 'Male', 'new ', 'SOUTH C', '33104548', '2000-01-01', '+254725289357', 'N/A', 'N/A'),
(409, 'NJOROGE KIMANI', 'Male', 'new ', 'KAREN', '1062840', '2000-01-01', '+254722704322', 'N/A', 'N/A'),
(410, 'DAN OBBANDA', 'Male', 'new ', 'LANGATA', '23303883', '2000-01-01', '+254728239929', 'N/A', 'N/A'),
(411, 'GRACE MURAGE', 'Female', 'new ', 'RUNDA', '5514436', '2000-01-01', '+254722780743', 'N/A', 'N/A'),
(412, 'THEODORY MWENDA', 'Male', 'new ', 'LANGATA', '765755', '2000-01-01', '+254717329069', 'N/A', 'N/A'),
(413, 'JOSEPH GACHIRI', 'Male', 'new ', 'TIGONIA', '13675604', '2000-01-01', '+254707112121', 'N/A', 'N/A'),
(414, 'BYRON BUYU', 'Male', 'new ', 'ONGATA RONGAI', '21686857', '2000-01-01', '+254700500378', 'N/A', 'N/A'),
(415, 'JOSPHINE NDUTA KARIUKI', 'Female', 'new ', 'KAREN', '1885005', '2000-01-01', '+254775099180', 'N/A', 'N/A'),
(416, 'ANTHONY ANJURE', '', 'new ', 'KAREN', '10895784', '2000-01-01', '+254722644931', 'N/A', 'N/A'),
(417, 'ELIUD ODINGA SUMBA', 'Male', 'new ', 'LANGATA', '14660399', '2000-01-01', '+254725742738', 'N/A', 'N/A'),
(418, 'JAMES NAIBEI', 'Female', 'new ', 'BOMAS', '26025754', '2000-01-01', '+254725026484', 'N/A', 'N/A'),
(419, 'ROSE SHONKO', 'Female', 'new ', 'KAREN', '9022583', '2000-01-01', '+254722447724', 'N/A', 'N/A'),
(420, 'BEATRICE ', 'Male', 'new ', 'KAREN', '27363125', '2000-01-01', '+508712533691', 'N/A', 'N/A'),
(421, 'ANN WANJIRU', 'Male', 'new ', 'LANGATA', '9830555', '2000-01-01', '+254725222988', 'N/A', 'N/A'),
(422, 'DR. WAMBUI', 'Female', 'new ', 'KAREN', '3490024', '2000-01-01', '+254720767994', 'N/A', 'N/A'),
(423, 'FARIDA HASSAN ALI', 'Female', 'new ', 'KAREN', '20069688', '2000-01-01', '+254721424241', 'N/A', 'N/A'),
(424, 'DAVIE', 'Male', 'new ', 'ONGATA RONGAI', '24115043', '2000-01-01', '+254720461005', 'N/A', 'N/A'),
(425, 'NANCY ADHIAMBO', 'Female', 'new ', 'LANGATA', '22336562', '2000-01-01', '+254727707433', 'N/A', 'N/A'),
(426, 'MOHAMMED ALI', 'Male', 'new ', 'LANGATA', '8468764', '2000-01-01', '+254721752348', 'N/A', 'N/A'),
(427, 'ELIZABETH OTIENO', 'Female', 'new ', 'LANGATA', '10366608', '2000-01-01', '+254721499980', 'N/A', 'N/A'),
(428, 'MARGARET OTIENO', 'Female', 'new ', 'KAREN', '7803644', '2000-01-01', '+254721372338', 'N/A', 'N/A'),
(429, 'DAVID WAIYAKI', 'Male', 'new ', 'KIKUYU', '25138364', '2000-01-01', '+254726292559', 'N/A', 'N/A'),
(430, 'NICHOLAS KANYARATI', 'Male', 'new ', 'KAREN', '21964495', '2000-01-01', '+254721745281', 'N/A', 'N/A'),
(431, 'SARAH JANE', 'Female', 'new ', 'KAREN', '11444284', '2000-01-01', '+254716885980', 'N/A', 'N/A'),
(432, 'LILIAN KADENGE', 'Female', 'new ', 'KAREN', 'A103805', '2000-01-01', '+254791695465', 'N/A', 'N/A'),
(433, 'TERESIA NZUKI', 'Female', 'new ', 'EMBAKASI', '10323233', '2000-01-01', '+254720407538', 'N/A', 'N/A'),
(434, 'PURITY NZUKI', 'Female', 'new ', 'KAREN', '13591741', '2000-01-01', '+254722750015', 'N/A', 'N/A'),
(435, 'ALEXANDER NJOROGE', 'Male', 'new ', 'RONGAI', '0134491', '2000-01-01', '+254722702385', 'N/A', 'N/A'),
(436, 'RICHARD THANDE', 'Male', 'new ', 'KAREN', '13687685', '2000-01-01', '+254722306605', 'N/A', 'N/A'),
(437, 'joy omulupi', 'Female', 'new ', 'SOUTH B', '10366444', '2000-01-01', '+254722722685', 'N/A', 'A1526258'),
(438, 'JOHN LESLIE', 'Male', 'new ', 'ISINYA', '23942178', '2000-01-01', '+254729224047', 'N/A', 'N/A'),
(439, 'DAMARIS KERUBO', 'Female', 'new ', 'KILELESHWA', '22756673', '2000-01-01', '+254722278308', 'N/A', 'N/A'),
(440, 'CHAO MAYE', 'Female', 'new ', 'LORESHO', '9988703', '2000-01-01', '+254705139149', 'N/A', 'N/A'),
(441, 'JOHN MUGENDI ', 'Male', 'new ', 'JUNCTION ', '21963513', '2000-01-01', '+254720717080', 'N/A', 'N/A'),
(442, 'TIMOTHY NDEGWA', 'Male', 'new ', 'ONGATA RONGAI', '14697644', '2000-01-01', '+254721812862', 'N/A', 'N/A'),
(443, 'JACKSON K SAMPELE', 'Male', 'new ', 'BOMAS', '11385670', '2000-01-01', '+254704305540', 'N/A', 'N/A'),
(444, 'MOSES JAUDI', 'Male', 'new ', 'BOMAS', '20239280', '2000-01-01', '+254720946963', 'N/A', 'N/A'),
(445, 'BAKIRALI NOORDIN', 'Male', 'new ', 'SAFEE PARK', '3348552', '2000-01-01', '+254724558069', 'N/A', 'N/A'),
(446, 'HUSSEIN SAIFUDDIN', 'Male', 'new ', 'LANGATA', '3348547', '2000-01-01', '+254721670639', 'N/A', 'N/A'),
(447, 'ALIASGHER ZAKIR', 'Male', 'new ', 'KAREN', '13429291', '2000-01-01', '+254722952052', 'N/A', 'N/A'),
(448, 'MOHAMMED MUSTAFA', 'Male', 'new ', 'KAREN', 'A1131668', '2000-01-01', '+254729863667', 'N/A', 'N/A'),
(449, 'GEORGE OTIENO', 'Male', 'new ', 'LANGATA', '13039683', '2000-01-01', '+254722975140', 'N/A', 'N/A'),
(450, 'SAMUEL MBOTE', 'Male', 'new ', 'LANGATA', '24435309', '2000-01-01', '+254724684368', 'N/A', 'N/A'),
(451, 'ARANGANAYAGAM G', 'Male', 'new ', 'SOUTH C', '801689', '2000-01-01', '+254736138856', 'N/A', 'N/A'),
(452, 'CATHERINE MUMBUA', 'Female', 'new ', 'KAREN C', '20718468', '2000-01-01', '+254721480205', 'N/A', 'N/A'),
(453, 'PAULINA LANCO', 'Female', 'new ', 'KAREN', '12761285', '2000-01-01', '+254722895505', 'N/A', 'N/A'),
(454, 'PARMEET SINGH', 'Male', 'new ', 'NRB WEST', '3450030', '2000-01-01', '+254710391187', 'N/A', 'N/A'),
(456, 'Fuche Claude', 'Male', 'new ', 'Karen', '835799', '2000-01-01', '+254715958351', 'N/A', 'N/A'),
(457, 'VENUGOPAN VARANASA', 'Male', 'new ', 'BROOKSIDE', '258688', '2000-01-01', '+254715357999', 'N/A', 'N/A'),
(458, 'HUSSEIN ANJARWALLA', 'Male', 'new ', 'KAREN', '22092280', '2000-01-01', '+254725824797', 'N/A', 'N/A'),
(459, 'KARIM JAN', 'Male', 'new ', 'LANGATA', '221674', '2000-01-01', '+254722750750', 'N/A', 'N/A'),
(460, 'Nyokabi Mwangi', 'Female', 'new ', 'Karen', '10551869', '2000-01-01', '+254722521406', 'N/A', 'N/A'),
(461, 'PETER MACHARIA', 'Male', 'new ', 'RONGAI', '1113731', '2000-01-01', '+254721424845', 'N/A', 'N/A'),
(462, 'ANDREW MALAVU', 'Male', 'new ', 'LANGATA', '10330923', '2000-01-01', '+254722731100', 'N/A', 'N/A'),
(463, 'Alison Ebrahim', 'Male', 'new ', 'Karen', '10577014', '2000-01-01', '+254722207795', 'N/A', 'N/A'),
(464, 'Sanjay Halai', 'Male', 'new ', 'Karen', '11448866', '2000-01-01', '+254715526057', 'N/A', 'N/A'),
(465, 'HENRY MACHIRA', 'Male', 'new ', 'KAREN', '10845520', '2000-01-01', '+254722524360', 'N/A', 'N/A'),
(466, 'George Mathenge', 'Male', 'new ', 'Rongai', '22567999', '2000-01-01', '+254716780035', 'N/A', 'N/A'),
(467, 'CHAO MWALUMA', 'Female', 'new ', 'NGONG RD', '3484629', '2000-01-01', '+254722706621', 'N/A', 'N/A'),
(468, 'JANE NYOIKE', 'Female', 'new ', 'KIAMBU', '3088998', '2000-01-01', '+254722526637', 'N/A', 'N/A'),
(469, 'Eric Matthew Njogu', 'Male', 'new ', 'Karen', '29548730', '2000-01-01', '+254726795590', 'N/A', 'N/A'),
(470, 'SCOLASTICA OWONDO', 'Female', 'new ', 'KAREN', '8706496', '2000-01-01', '+254721636181', 'N/A', 'N/A'),
(471, 'Antony Kipingoi', 'Male', 'new ', 'Langata', '21982520', '2000-01-01', '+254720321222', 'N/A', 'N/A'),
(472, 'Mohamed Mustafa', 'Male', 'new ', 'Nairobi', '22621058', '2000-01-01', '+254717696254', 'N/A', 'N/A'),
(473, 'Naomi Gatura', 'Female', 'new ', 'Karen', '26087523', '2000-01-01', '+254721942098', 'N/A', 'N/A'),
(474, 'MOSES AGUMBA', 'Male', 'new ', 'KAREN', '8821869', '2000-01-01', '+254720584940', 'N/A', 'N/A'),
(475, 'Salome Matayo', 'Female', 'new ', 'Langata', '9559568', '2000-01-01', '+254722754400', 'N/A', 'N/A'),
(476, 'Patrick Owuori', 'Male', 'new ', 'Starehe', '10089530', '2000-01-01', '+254738426987', 'N/A', 'N/A'),
(477, 'MILLA GICHANA', 'Male', 'new ', 'LANGATA', '25165657', '2000-01-01', '+254738434964', 'N/A', 'N/A'),
(478, 'AZIZ DIDARALI', 'Male', 'new ', 'KAREN', '21868039', '2000-01-01', '+254728996465', 'N/A', 'N/A'),
(479, 'Huzefa Adamali', 'Male', 'new ', 'Karen', '26284981', '2000-01-01', '+254720970910', 'N/A', 'N/A'),
(480, 'Risper Oeri', 'Female', 'new ', 'Rongai', '11439573', '2000-01-01', '+254725633507', 'N/A', 'N/A'),
(481, 'Ann Njeri Mwangi', 'Female', 'new ', 'Karen', '0715367', '2000-01-01', '+254722247839', 'N/A', 'N/A'),
(482, 'NOREEN WAMBUGU', 'Female', 'new ', 'LAVINGTON', '24153803', '2000-01-01', '+254720367856', 'N/A', 'N/A'),
(483, 'Joseph Kamau', 'Male', 'new ', 'Rongai', '22007146', '2000-01-01', '+254722485998', 'N/A', 'N/A'),
(484, 'Janet Naisiae', 'Female', 'new ', 'Rongai', '22516359', '2000-01-01', '+254721758875', 'N/A', 'N/A'),
(485, 'HELEN MUGURE MURIGA', 'Female', 'new ', 'LANGATA', '1241406', '2000-01-01', '+254723108004', 'N/A', 'N/A'),
(486, 'Shakir Umaima', 'Female', 'new ', 'Karen', '807719', '2000-01-01', '+254700936986', 'N/A', 'N/A'),
(487, 'ROSE KURIA', 'Female', 'new ', 'LANGATA', '14417647', '2000-01-01', '+254722945712', 'N/A', 'N/A'),
(488, 'VIOLET MWANGI', 'Female', 'new ', 'LANGATA', '24535985', '2000-01-01', '+254721489648', 'N/A', 'N/A'),
(489, 'Virginia Muturi', 'Female', 'new ', 'Magadi Rd', '21386858', '2000-01-01', '+254722478060', 'N/A', 'N/A'),
(490, 'Victor Munyinyi', 'Male', 'new ', 'Embakasi', '24158346', '2000-01-01', '+254772169746', 'N/A', 'N/A'),
(491, 'HABIBA ALI ADAN', 'Female', 'new ', 'KAREN', '25777757', '2000-01-01', '+254780932870', 'N/A', 'N/A'),
(492, 'GEORGE MURIUKI', 'Male', 'new ', 'NGONG', '11317198', '2000-01-01', '+254722707446', 'N/A', 'N/A'),
(493, 'JOSEPHINE WANJIKU', 'Female', 'new ', 'LANGATA', '3577561', '2000-01-01', '+254722365367', 'N/A', 'N/A'),
(494, 'BHIMJI DEVJI', 'Male', 'new ', 'LANGATA', '24425859', '2000-01-01', '+254722359531', 'N/A', 'N/A'),
(495, 'IRENE NDIRANGU', 'Female', 'new ', 'RONGAI', '188880784', '2000-01-01', '+254723511439', 'N/A', 'N/A'),
(496, 'Richard ', 'Male', 'new ', 'Karen', '24488428', '2000-01-01', '+254721822359', 'N/A', 'N/A');
INSERT INTO `customer` (`id`, `name`, `gender`, `raffleno`, `address`, `idno`, `dob`, `tel`, `email`, `passport`) VALUES
(498, 'Vinay', 'Male', 'new ', 'Karen', '693355', '2000-01-01', '+254735540148', 'N/A', 'N/A'),
(499, 'HANSABEN BHIMJI', 'Female', 'new ', '', '27992919', '2000-01-01', '+254789707702', 'N/A', 'N/A'),
(500, 'MURTAZA HUSAMUBEEA', 'Male', 'new ', 'KAREN', '14419532', '2000-01-01', '+254722786852', 'N/A', 'N/A'),
(501, 'EDMUND CONGO', 'Male', 'new ', 'LANGATA', '27909722', '2000-01-01', '+254720768577', 'N/A', 'N/A'),
(502, 'Hassan Abdi', 'Male', 'new ', 'Karen', '22533675', '2000-01-01', '+254720290341', 'N/A', 'N/A'),
(503, 'RAVI SHAH', 'Male', 'new ', 'HIGH RIDGE', '261140', '2000-01-01', '+254735388172', 'N/A', 'N/A'),
(504, 'moljamiedema', 'Male', 'new ', 'Nairobi', '699604', '2000-01-01', '+508719506383', 'N/A', 'BCF4749F9'),
(505, 'Victor Oloo', 'Male', 'new ', 'Karen', '28265554', '2000-01-01', '+254718003538', 'N/A', 'N/A'),
(506, 'MILKA ODONGO', 'Male', 'new ', 'KAREN', '7164435', '2000-01-01', '+508711112213', 'N/A', 'N/A'),
(507, 'BINDIA SETHI', 'Female', 'new ', 'MOMBASA RD', '329953', '2000-01-01', '+508720544445', 'N/A', 'N/A'),
(508, 'Stella Mukhaye', 'Female', 'new ', 'Karen', '22086044', '2000-01-01', '+254721333527', 'N/A', 'N/A'),
(509, 'Stephen Muia', 'Male', 'new ', 'Langata', '7272528', '2000-01-01', '+254722394610', 'N/A', 'N/A'),
(510, 'Judith Ngethe', 'Male', 'new ', 'lANGATA', '13500210', '2000-01-01', '+508722769294', 'N/A', 'N/A'),
(511, 'Joseph Lokor', 'Male', 'new ', 'Ngong rd', '7401743', '2000-01-01', '+508722916946', 'N/A', 'N/A'),
(512, 'HUZEIFA NOOR BHAI DOSSAJEE', 'Male', 'new ', 'KAREN', '26288428', '2000-01-01', '+508721968975', 'HUZDOS52@GMAIL.COM', 'N/A'),
(513, 'Irene Wangari Kariuki', 'Female', 'new ', 'Karen', '10224849', '2000-01-01', '+254722723642', 'N/A', 'N/A'),
(514, 'JENNIFER HEWETT', 'Female', 'new ', 'KAREN', '10043459', '2000-01-01', '+508721300243', 'N/A', 'N/A'),
(515, 'Lucy Wambui Njoroge', 'Female', 'new ', 'Karen', '22281609', '2000-01-01', '+254721994341', 'N/A', 'N/A'),
(516, 'MARGRET THANDE', 'Female', 'new ', 'KAREN', '4313714', '2000-01-01', '+254722240360', 'N/A', 'N/A'),
(517, 'Judith Ngethe', 'Male', 'new ', 'lANGATA', '13500210', '2000-01-01', '+508722769294', 'N/A', 'N/A'),
(518, 'James Mawinyi', 'Male', 'new ', 'Langata', '22856758', '2000-01-01', '+254723996017', 'N/A', 'N/A'),
(519, 'Ladysella Makotsi', 'Female', 'new ', 'Karen', '31849062', '2000-01-01', '+254723697512', 'N/A', 'N/A'),
(520, 'Maureen Bosire', 'Female', 'new ', 'Karen', '28200690', '2000-01-01', '+254726496844', 'N/A', 'N/A'),
(521, 'Said Osman', 'Male', 'new ', 'Karen', '14422317', '2000-01-01', '+254724229670', 'N/A', 'N/A'),
(522, 'JENS ANDREAS', 'Male', 'new ', 'RONGAI', 'c712mzlj', '2000-01-01', '+254727637310', 'N/A', 'N/A'),
(523, 'ZOREEN ', 'Female', 'new ', 'KAREN', 'A2423276', '2000-01-01', '+508723461053', 'N/A', 'N/A'),
(524, 'Geoffrey Ndungu', 'Male', 'new ', 'Langata', '11409534', '2000-01-01', '+254707179540', 'N/A', 'N/A'),
(525, 'RAMESH VALJI HIRANI', 'Male', 'new ', 'LANGATA', '22603876', '2000-01-01', '+508722957808', 'N/A', 'N/A'),
(526, 'Vinay', 'Male', 'new ', 'Karen', '693355', '2000-01-01', '+254735541482', 'N/A', 'N/A'),
(527, 'Daniel Kubasu', 'Male', 'new ', 'Langata', '9194326', '2000-01-01', '+254722285000', 'N/A', 'N/A'),
(528, 'Timothy Oloo', 'Male', 'new ', 'Langata', '8620744', '2000-01-01', '+254722743102', 'N/A', 'N/A'),
(529, 'Tony Munene', 'Male', 'new ', 'Thika', '3052926', '2000-01-01', '+254722281969', 'N/A', 'N/A'),
(530, 'Nilesh', '', 'new ', 'Westlands', '160789', '2000-01-01', '+254720970392', 'N/A', 'N/A'),
(531, 'Jane Githinji', 'Female', 'new ', 'Karen', '3335933', '2000-01-01', '+254722469352', 'N/A', 'N/A'),
(532, 'WAKESHO MWAMBINGU', 'Male', 'new ', 'SOUTH C', '22965564', '2000-01-01', '+254721925957', 'N/A', 'N/A'),
(533, 'margaret mwaura', 'Male', 'new ', 'rongai', '14503727', '2000-01-01', '+508722464955', 'N/A', 'N/A'),
(534, 'Rose Rotich', 'Female', 'new ', 'Karen', '23122537', '2000-01-01', '+254721419969', 'N/A', 'N/A'),
(535, 'DINESH VEKARIA', 'Male', 'new ', 'LANGATA', '134229', '2000-01-01', '+254722225014', 'N/A', 'N/A'),
(536, 'Samuel Kamau', 'Male', 'new ', 'Parklands', '21789394', '2000-01-01', '+254723746548', 'N/A', 'N/A'),
(537, 'Joseph Lokor', 'Male', 'new ', 'Ngong rd', '7401743', '2000-01-01', '+508722916946', 'N/A', 'N/A'),
(538, 'STEPHEN KIONDO KAMAU', 'Female', 'new ', 'KAREN', '5197575', '2000-01-01', '+254734733615', 'N/A', 'N/A'),
(539, 'EVELYN KIAMBA', 'Female', 'new ', 'LANGATA', '24246918', '2000-01-01', '+254721907650', 'N/A', 'N/A'),
(540, 'Rashida Sulemanji', 'Female', 'new ', 'Karen', '3348600', '2000-01-01', '+254725609598', 'N/A', 'N/A'),
(541, 'Catherine Juston', 'Male', 'new ', 'karen', 'A1651286', '2000-01-01', '+508722713760', 'N/A', 'N/A'),
(542, 'VINCENT MUMO', 'Male', 'new ', 'LANGATA', '22544644', '2000-01-01', '+254721867905', 'N/A', 'N/A'),
(543, 'Daniel Okech', 'Male', 'new ', 'Karen', '24209963', '2000-01-01', '+254722820705', 'N/A', 'N/A'),
(544, 'MILLICENT MUTURI', 'Female', 'new ', 'KAREN', '16107877', '2000-01-01', '+254722519004', 'N/A', 'N/A'),
(545, 'JOYCE THEURI', 'Female', 'new ', 'KAREN', '13675570', '2000-01-01', '+254722524601', 'N/A', 'N/A'),
(546, 'Peter Opilo', 'Male', 'new ', 'Karen', '23650900', '2000-01-01', '+254723883183', 'N/A', ''),
(547, 'Ann Ogoti', 'Female', 'new ', 'Karen', '4878600', '2000-01-01', '+254720633356', 'N/A', ''),
(548, 'MARGRET SAFARI', 'Female', 'new ', 'KAREN', '0969579', '2000-01-01', '+254722863275', 'N/A', ''),
(549, 'Esther Thairu', 'Female', 'new ', 'Karen', '4860651', '2000-01-01', '+254719484588', 'N/A', ''),
(550, 'MICHEAL MASAI WAFULA', '', 'new ', 'LANGATA', '10961217', '2000-01-01', '+254708333165', 'N/A', ''),
(551, 'Daniel Okech', 'Male', 'new ', 'Karen', '24209963', '2000-01-01', '+508722820705', 'N/A', 'N/A'),
(552, 'VIVIAN LOOREMETA', 'Female', 'new ', 'KAREN', '21515895', '2000-01-01', '+254722775006', 'N/A', ''),
(553, 'YELMA MAKHANDIA', 'Female', 'new ', 'KAREN', '24798026', '2000-01-01', '+254721530939', 'N/A', ''),
(554, 'SCHOFIELD', 'Male', 'new ', 'KAREN', '696010', '2000-01-01', '+254727100621', 'N/A', ''),
(555, 'Thomas Junne klaudia', 'Female', 'new ', 'KAREN', '6420266', '2000-01-01', '+254704168756', 'N/A', ''),
(556, 'GEORGE KURIA', 'Male', 'new ', 'SOUTH C', '6404359', '2000-01-01', '+508722321054', 'N/A', 'N/A'),
(557, 'Alexandra Ogaye', 'Female', 'new ', 'Langata', '10894076', '2000-01-01', '+254714255676', 'N/A', ''),
(558, 'Christine Irungu', 'Female', 'new ', 'Langata', '21963841', '2000-01-01', '+254722391409', 'N/A', ''),
(559, 'HAZEL WAMUYU', 'Male', 'new ', 'KAREN', '36586929', '2000-01-01', '+254706259184', 'N/A', ''),
(560, 'KENNETH MURIUKI', 'Male', 'new ', 'SOUTH B', '11035742', '2000-01-01', '+254722767835', 'N/A', ''),
(561, 'RUPY MUDHER', 'Female', 'new ', 'SOUTH C', '10331706', '2000-01-01', '+254722672282', 'N/A', ''),
(562, 'EVELEENS ILONA', 'Female', 'new ', 'LANGATA', '232457', '2000-01-01', '+254733841698', 'N/A', ''),
(563, 'PERE SILOMA', 'Female', 'new ', 'NGONG', '11384460', '2000-01-01', '+254721268213', 'N/A', ''),
(564, 'May Schalch', 'Male', 'new ', 'Langata', '33097345', '2000-01-01', '+508721923616', 'N/A', 'N/A'),
(565, 'ARWA KAPACEE', 'Female', 'new ', 'KAREN', '24748245', '2000-01-01', '+254727722255', 'N/A', ''),
(566, 'DELTON IMBUKI', 'Male', 'new ', 'KASARANI', '25186636', '2000-01-01', '+254724396773', 'N/A', ''),
(567, 'MARIA ROSMAN', 'Female', 'new ', 'KAREN', '317464349', '2000-01-01', '+254716503444', 'N/A', ''),
(568, 'Susan Mungiiria', 'Female', 'new ', 'Karen', '0444391', '2000-01-01', '+254722654987', 'N/A', ''),
(570, 'Raziyah Hassanali', 'Female', 'new ', 'Bogani', '8744421', '2000-01-01', '+254722794231', 'N/A', 'C038971'),
(571, 'ISAYA OMOKE', 'Male', 'new ', 'RONGAI', '21349798', '2000-01-01', '+508721142162', 'N/A', 'N/A'),
(572, 'PEGGY WAMBUA', 'Female', 'new ', 'NAIROBI WEST', '25531377', '2000-01-01', '+254712347066', 'N/A', ''),
(573, 'PEGGY WAMBUA', 'Female', 'new ', 'NAIROBI WEST', '25531377', '2000-01-01', '+508712347066', 'N/A', ''),
(574, 'ANTONY DAVID', 'Male', 'new ', 'LANGATA', '22402031', '2000-01-01', '+254721211113', 'N/A', ''),
(575, 'JAMALY SHAIKH MUSTAFA', 'Male', 'new ', 'SOUTH LANGATA', 'Z3487636', '2000-01-01', '+254729915300', 'N/A', 'Z3487636'),
(577, 'PATRICK MANYARA', 'Male', 'new ', 'LANGATA', '21687787', '2000-01-01', '+254721236051', 'N/A', ''),
(578, 'ZOYA VERJEE', 'Male', 'new ', '', 'A1593032', '2000-01-01', '+254707091591', 'N/A', ''),
(579, 'MARGARET MUMBI GIKUHI', 'Female', 'new ', 'KAREN', '3137277', '2000-01-01', '+254722352629', 'N/A', ''),
(580, 'ESTER KUNGUH', 'Male', 'new ', 'LANGATA', '20218748', '2000-01-01', '+254718052811', 'N/A', ''),
(581, 'MARIA MWANGOLA', 'Female', 'new ', 'LANGATA', '11311102', '2000-01-01', '+254720128571', 'N/A', ''),
(582, 'CLARA NASAYE', 'Female', 'new ', 'LANGATA', '24712746', '2000-01-01', '+254728816891', 'N/A', ''),
(583, 'GLORIA TURERE', 'Female', 'new ', 'NGONG', '21069479', '2000-01-01', '+254721854249', 'N/A', ''),
(584, 'DOMINIC MUNDIA', 'Male', 'new ', 'KAREN', '23486455', '2000-01-01', '+254724201433', 'N/A', ''),
(585, 'MARIA MWANGOLA', 'Female', 'new ', 'LANGATA', '11311102', '2000-01-01', '+508720128571', 'N/A', ''),
(586, 'Bernard Dulo', 'Male', 'new ', 'Langata', '9610034', '2000-01-01', '+254716430231', 'N/A', ''),
(587, 'TIM', 'Male', 'new ', 'KAREN', '720312', '2000-01-01', '+254738712143', 'N/A', 'M005010'),
(588, 'JAMES MWANGI', 'Male', 'new ', 'KAREN', '22438659', '2000-01-01', '+254722319274', 'N/A', ''),
(589, 'NELSON MISEDA', 'Male', 'new ', 'LANGATA', '10843699', '2000-01-01', '+254725888692', 'N/A', ''),
(590, 'IRENE ONDIMU', 'Female', 'new ', 'KAREN', '10693935', '2000-01-01', '+254722850533', 'N/A', ''),
(591, 'MARK MWANIKI', '', 'new ', 'HARDY', '23594718', '2000-01-01', '+254720959291', 'N/A', ''),
(592, 'RAVI KUMAR ANDUGULA', '', 'new ', 'LANGATA', '727606', '2000-01-01', '+254731525333', 'N/A', ''),
(593, 'PAUL MASINDE', '', 'new ', 'LANGATAN', '24704592', '2000-01-01', '+254721993335', 'N/A', ''),
(594, 'Hamilton Juma', 'Male', 'new ', 'Karen', '23945025', '2000-01-01', '+254721421169', 'N/A', 'CO45822'),
(595, 'ROSEMARY NYAWIRA', 'Female', 'new ', 'VILLA FRANKA', '24950728', '2000-01-01', '+254729776864', 'N/A', ''),
(596, 'Sophia Murage', 'Female', 'new ', 'Karen', '26910167', '2000-01-01', '+254721200014', 'N/A', ''),
(597, 'James Githendu', 'Male', 'new ', 'Karen', '21794397', '2000-01-01', '+254737622312', 'N/A', ''),
(598, 'ZJIMIE MJENI', 'Male', 'new ', 'KAREN', '32338193', '2000-01-01', '+254727361653', 'N/A', ''),
(599, 'CRISPINO C OCHIENG', 'Female', 'new ', 'LANGATA', '0246162', '2000-01-01', '+254722725282', 'N/A', ''),
(600, 'John Paul', 'Male', 'new ', 'Kabete', '2354432', '2000-01-01', '+254720150640', 'N/A', 'N/A'),
(601, 'Dominic', 'Male', 'new ', 'Ruaka', '25771993', '2000-01-01', '+329567899900', 'N/A', 'A24535363'),
(602, 'Atieno Dorothy Okech', '', 'new ', '', '3506632', '2000-01-01', '+254722709386', NULL, ''),
(604, 'Ann iminza', 'Female', 'new ', '', '27004864', '2000-01-01', '+254704761118', NULL, ''),
(605, 'kelvin', 'Male', 'new ', '', '35614008', '2000-01-01', '+254790517101', NULL, ''),
(606, 'Mrs Mwangi', 'Female', 'new ', '', '5380632', '2000-01-01', '+254722778569', NULL, ''),
(607, 'Freshia irungu', '', 'new ', '', '23861601', '2000-01-01', '+254720357386', NULL, ''),
(608, 'Mercy Nyakio', 'Female', 'new ', '', '23019272', '2000-01-01', '+254721775070', NULL, ''),
(609, 'Craig antony', 'Male', 'new ', '', '23611101', '2000-01-01', '+254722205828', NULL, ''),
(610, 'George Mogaka', 'Male', 'new ', 'Ongata Rongai', '13819039', '2000-01-01', '+254722677115', NULL, ''),
(611, 'Suleiman Mohamed', 'Male', 'new ', '', '5357204', '2000-01-01', '+254722206700', NULL, ''),
(612, 'Suleiman Mohamed', 'Male', 'new ', '', '5357204', '2000-01-01', '+254722206700', NULL, ''),
(613, 'Suleiman Mohamed', 'Male', 'new ', '', '5357204', '2000-01-01', '+254722206700', NULL, ''),
(614, 'Suleiman Mohamed', 'Male', 'new ', '', '5357204', '2000-01-01', '+254722206700', NULL, ''),
(615, 'Suleiman Mohamed', 'Male', 'new ', '', '5357204', '2000-01-01', '+254722206700', NULL, ''),
(616, 'Suleiman Mohamed', 'Male', 'new ', '', '5357204', '2000-01-01', '+254722206700', NULL, ''),
(617, 'harriet muthoni', 'Female', 'new ', 'rongai', ' 29216493', '2000-01-01', '+254708424221', NULL, ''),
(618, 'steve okiri', 'Male', 'new ', 'magadi', '22403569', '2000-01-01', '+254722890890', NULL, ''),
(619, 'vibhanshu sharma', 'Female', 'new ', 'langata', '22337845', '2000-01-01', '+254733813922', NULL, ''),
(620, 'margaret karungaru', 'Female', 'new ', 'karen', '3463479', '2000-01-01', '+254724627986', NULL, ''),
(621, 'Elvis Mugambi', 'Male', 'new ', 'Karen Bomas', '33124944', '2000-01-01', '+254711983653', NULL, ''),
(622, 'dorothy marami', 'Female', 'new ', 'karen', '1444819', '2000-01-01', '+254722514419', NULL, ''),
(623, 'daniel kamanka', 'Male', 'new ', 'kiserian', '23006551', '2000-01-01', '+254721738321', NULL, ''),
(624, 'linda cockerill', 'Female', 'new ', 'karen', '001985124', '2000-01-01', '+254710529255', NULL, ''),
(625, 'Alfred', 'Male', 'new ', '', '20057046', '2000-01-01', '+254722671233', NULL, ''),
(626, 'scholastica kanini', 'Female', 'new ', 'kenol', '26071067', '2000-01-01', '+254715229611', NULL, ''),
(627, 'William Kibet', 'Male', 'new ', '', '10895042', '2000-01-01', '+254710521122', NULL, ''),
(628, 'njooro karanja', 'Male', 'new ', 'rongai', '22846738', '2000-01-01', '+254725693305', NULL, ''),
(629, 'george keango', 'Male', 'new ', 'langata', '10661440', '2000-01-01', '+254722413383', NULL, ''),
(630, 'waweru kimani', 'Male', 'new ', 'karen', '6288280', '2000-01-01', '+254722706014', NULL, ''),
(631, 'johnson ondieki', 'Male', 'new ', 'nairobi', '5819600', '2000-01-01', '+254720743668', NULL, ''),
(632, 'tompoi keiwua', 'Male', 'new ', 'embakasi', '11223402', '2000-01-01', '+254721904401', NULL, ''),
(634, 'dorcas kananu', 'Female', 'new ', 'karen', '13835040', '2000-01-01', '+254706384309', NULL, ''),
(635, 'Abigail mwaka', 'Male', 'new ', '', 'ZN417929', '2000-01-01', '+254755848536', NULL, ''),
(636, 'Jacqueline karebe', 'Female', 'new ', '', '11595076', '2000-01-01', '+254722856451', NULL, ''),
(637, 'Helen Wacera', 'Female', 'new ', '', '22077373', '2000-01-01', '+254722357752', NULL, ''),
(638, 'Tor Frost', 'Female', 'new ', '', '3040527', '2000-01-01', '+254711734273', NULL, ''),
(639, 'Jack Rono', 'Male', 'new ', '', '10886115', '2000-01-01', '+254713333090', NULL, ''),
(640, 'Beatrice nganga', 'Male', 'new ', '', '13060079', '2000-01-01', '+254724351329', NULL, ''),
(641, 'Jonathan Mashala', 'Male', 'new ', '', 'OB0811850', '2000-01-01', '+254733313471', NULL, ''),
(642, 'juliet gitau', 'Female', 'new ', 'langata', '13749557', '2000-01-01', '+254733841408', NULL, ''),
(643, 'Sood Vimi', 'Female', 'new ', '', '186294', '2000-01-01', '+254733623064', NULL, ''),
(644, 'Masiga Bernard', 'Male', 'new ', '', '6010462', '2000-01-01', '+254724163746', NULL, ''),
(645, 'Salome Warige', 'Female', 'new ', 'Lavington', '21471768', '2000-01-01', '+254720241829', NULL, ''),
(646, 'Elizabeth Mbuvi', 'Female', 'new ', 'Ngong', '22502798', '2000-01-01', '+254721715636', NULL, ''),
(647, 'Joseph Musyoki', 'Male', 'new ', 'Ngong', '22764188', '2000-01-01', '+254720925267', NULL, ''),
(648, 'Caroline Nakaya', 'Female', 'new ', '', '13300185', '2000-01-01', '+254722767491', NULL, ''),
(649, 'David Kinyanjui', 'Male', 'new ', 'Karen', '9209426', '2000-01-01', '+254722857091', NULL, ''),
(650, 'Maria Bella', 'Female', 'new ', '', '78691728', '2000-01-01', '+254799676958', NULL, ''),
(651, 'Mercy Baraza', 'Female', 'new ', 'Ongata Rongai', 'AB792564', '2000-01-01', '+254722732827', NULL, ''),
(652, 'David Kariuki Mwangi', 'Male', 'new ', 'Ongata Rongai', '28416829', '2000-01-01', '+254703321936', NULL, ''),
(653, 'Teresia Arendse', 'Female', 'new ', 'Karen', '856589', '2000-01-01', '+254700218038', NULL, ''),
(654, 'Mwikali Mutua', 'Female', 'new ', 'Karen', '25075306', '2000-01-01', '+254721970546', NULL, ''),
(655, 'Caroline Were', 'Female', 'new ', 'Langata', '13529235', '2000-01-01', '+254722830436', NULL, ''),
(656, 'Raymond Mwaniki', 'Male', 'new ', 'Langata', '21767725', '2000-01-01', '+254722736924', NULL, ''),
(657, 'Diana Wanjiru', 'Female', 'new ', 'Karen', '20074485', '2000-01-01', '+254729267733', NULL, ''),
(658, 'Rose Mwango', 'Female', 'new ', 'Ongata Rongai', '13622123', '2000-01-01', '+254726675911', NULL, ''),
(659, 'Violet Kimama', 'Female', 'new ', 'Karen', '8340735', '2000-01-01', '+254722529921', NULL, ''),
(660, 'Alexnder Jane', 'Female', 'new ', 'Karen', '873970', '2000-01-01', '+254729874429', NULL, ''),
(661, 'mutia mwanzia', 'Male', 'new ', 'komarok', '11209583', '2000-01-01', '+254722841148', NULL, ''),
(662, 'John Macharia', 'Male', 'new ', '', '22350363', '2000-01-01', '+254722831993', NULL, ''),
(663, 'Mercy Nyakwa', 'Female', 'new ', 'Langata', '23263900', '2000-01-01', '+254726250007', NULL, ''),
(664, 'Isabella Tenai', 'Female', 'new ', '', '22912406', '2000-01-01', '+254720763190', NULL, ''),
(665, 'william kuyo', 'Female', 'new ', 'karen', '20198713', '2000-01-01', '+254722731627', NULL, ''),
(666, 'leah wanjiru', 'Female', 'new ', 'south b', '23425826', '2000-01-01', '+254722387356', NULL, ''),
(667, 'Sara Piet', 'Female', 'new ', '', '33596930', '2000-01-01', '+254729754984', NULL, ''),
(668, 'Edward Gichuru', 'Male', 'new ', 'Langata', '24240228', '2000-01-01', '+254729787454', NULL, ''),
(669, 'Wendy Mutila', 'Female', 'new ', 'Langata', '33232666', '2000-01-01', '+254722326268', NULL, ''),
(670, 'harris muirurii', 'Male', 'new ', '', '7981461', '2000-01-01', '+254722831684', NULL, ''),
(671, 'Margaret Mwembe', 'Female', 'new ', '', '9901417', '2000-01-01', '+254722821079', NULL, ''),
(672, 'priscilla keter', 'Female', 'new ', 'karen', '10991889', '2000-01-01', '+254722755285', NULL, ''),
(673, 'Abdi Hassan', 'Male', 'new ', '', '23705966', '2000-01-01', '+254722222283', NULL, ''),
(674, 'slyvyn kwamboka', 'Female', 'new ', '', '35688518', '2000-01-01', '+254725356804', NULL, ''),
(675, 'elisha o patel', 'Male', 'new ', '', '26052553', '2000-01-01', '+254726387335', NULL, ''),
(676, 'Justus Olielo', 'Male', 'new ', '', '8820406', '2000-01-01', '+254722823436', NULL, ''),
(677, 'Tara', 'Female', 'new ', '', '25050543', '2000-01-01', '+254705243251', NULL, ''),
(678, 'Edward Mugo', 'Male', 'new ', '', '8536451', '2000-01-01', '+254722522651', NULL, ''),
(679, 'Angela mokaya', 'Female', 'new ', 'Ongata rongai', '21963756', '2000-01-01', '+254722455576', NULL, ''),
(680, 'Paul Otieno', 'Male', 'new ', 'Ngong', '25966381', '2000-01-01', '+254728086628', NULL, ''),
(681, 'Mercy Macharia', 'Female', 'new ', 'Ongata Rongai', '22311895', '2000-01-01', '+254721598963', NULL, ''),
(682, 'Carolyne A Opiyo', 'Female', 'new ', 'Langata', '20659644', '2000-01-01', '+254723122747', NULL, ''),
(683, 'kangethe waihmbu', 'Male', 'new ', 'kitengelamm', '13086953', '2000-01-01', '+254722634150', NULL, ''),
(684, 'lydiah mayieka', 'Female', 'new ', 'langata', '30255009', '2000-01-01', '+254703150394', NULL, ''),
(685, 'muthama muli', 'Male', 'new ', 'syokimau', '21938456', '2000-01-01', '+254775082211', NULL, ''),
(686, 'catherine jadeyo', 'Female', 'new ', 'south b', '22536346', '2000-01-01', '+254722924041', NULL, ''),
(687, 'Jackton Otieno', 'Male', 'new ', 'Syokimau', '29635326', '2000-01-01', '+254712991501', NULL, ''),
(688, 'Jackline Kimari', 'Female', 'new ', 'Karen', '27499017', '2000-01-01', '+254724160826', NULL, ''),
(689, 'Jaspreet Kaur', 'Female', 'new ', '', '36812259', '2000-01-01', '+254721532575', NULL, ''),
(690, 'Kimani Waweru', 'Male', 'new ', '', '6228880', '2000-01-01', '+254722706014', NULL, ''),
(691, 'Boaz', 'Male', 'new ', '', '13809662', '2000-01-01', '+254727850005', NULL, ''),
(692, 'catherine kimathi', 'Female', 'new ', 'karen', '10795708', '2000-01-01', '+254723347444', NULL, ''),
(693, 'purity wanjie', 'Female', 'new ', 'forest view', '10331807', '2000-01-01', '+254722344063', NULL, ''),
(694, 'elizabeth karanja', 'Female', 'new ', 'karen', '14656616', '2000-01-01', '+254722824360', NULL, ''),
(695, 'wanjiru kago', 'Female', 'new ', 'kutus', '8796326', '2000-01-01', '+254722522619', NULL, ''),
(696, 'stephen muriuki', 'Male', 'new ', 'kasarani', '27379328', '2000-01-01', '+254723950715', NULL, ''),
(697, 'jacqueline koki', 'Female', 'new ', 'syokimau', '22288474', '2000-01-01', '+254726695768', NULL, ''),
(698, 'diana muthoni', 'Female', 'new ', 'kilimani', '11240589', '2000-01-01', '+254722801775', NULL, ''),
(699, 'diana muthoni', 'Female', 'new ', 'kilimani', '11240589', '2000-01-01', '+254722801775', NULL, ''),
(700, 'diana muthoni', 'Female', 'new ', 'kilimani', '11240589', '2000-01-01', '+254722801775', NULL, ''),
(701, 'diana muthoni', 'Female', 'new ', 'kilimani', '11240589', '2000-01-01', '+254722801775', NULL, ''),
(702, 'andreas p', 'Male', 'new ', 'karen', '252920', '2000-01-01', '+254722201254', NULL, ''),
(703, 'diana muthoni', 'Female', 'new ', 'kilimani', '11240589', '2000-01-01', '+254722801775', NULL, ''),
(704, 'diana muthoni', 'Female', 'new ', 'kilimani', '11240589', '2000-01-01', '+254722801775', NULL, ''),
(705, 'diana muthoni', 'Female', 'new ', 'kilimani', '11240589', '2000-01-01', '+508722801775', NULL, ''),
(706, 'salim', 'Male', 'new ', 'south c', '26979059', '2000-01-01', '+254713306237', NULL, ''),
(707, 'gerson misumi', 'Male', 'new ', 'caren', '4436684', '2000-01-01', '+254722731164', NULL, ''),
(708, 'billy baltarz', 'Male', 'new ', 'ngong', '22440730', '2000-01-01', '+254720884084', NULL, ''),
(709, 'agnes wiraka', 'Female', 'new ', 'rongai', '9624888', '2000-01-01', '+254720725063', NULL, ''),
(710, 'benson ochieng', 'Female', 'new ', 'donholme', '10024276', '2000-01-01', '+254721149880', NULL, ''),
(711, 'hellen wanjiko', 'Female', 'new ', 'nairobi west', '28477955', '2000-01-01', '+254712293352', NULL, ''),
(712, 'joyce kaumbutho', 'Female', 'new ', 'karen', '11325808', '2000-01-01', '+254722748666', NULL, ''),
(713, 'rosemary maitha', 'Female', 'new ', 'karen', '8894436', '2000-01-01', '+254722504405', NULL, ''),
(714, 'emilly wanjira', 'Female', 'new ', 'karen', '0639156', '2000-01-01', '+254722319306', NULL, ''),
(715, 'Maureen Bosire', 'Female', 'new ', 'Karen', '28200690', '2000-01-01', '+508726496844', NULL, 'N/A'),
(716, 'grace hunja', 'Female', 'new ', 'nkoroi', '22614446', '2000-01-01', '+254724782656', NULL, ''),
(717, 'anthony kigomo', 'Female', 'new ', 'langata', '28349117', '2000-01-01', '+254728104178', NULL, ''),
(718, 'adam kinuthia', 'Male', 'new ', 'southb', '29595935', '2000-01-01', '+254723531181', NULL, ''),
(719, 'joyce alusa', 'Female', 'new ', 'langata', '24298899', '2000-01-01', '+254720532643', NULL, ''),
(720, 'bryan makali', 'Male', 'new ', 'langata', '27073623', '2000-01-01', '+254710623652', NULL, ''),
(721, 'mark muthama', 'Male', 'new ', 'karen', '29620272', '2000-01-01', '+254705979850', NULL, ''),
(722, 'jacqueline oloo', 'Female', 'new ', 'rongai', '20787526', '2000-01-01', '+254722240152', NULL, ''),
(723, 'robert keter', 'Male', 'new ', 'karen', '3835977', '2000-01-01', '+254722530466', NULL, ''),
(724, 'dan kiptoon', 'Male', 'new ', 'langata', '11117640', '2000-01-01', '+254722702716', NULL, ''),
(725, 'isac aringa', 'Male', 'new ', 'kino', '20886506', '2000-01-01', '+254724039422', NULL, ''),
(726, 'suzanne hadwell', 'Female', 'new ', 'karen', '332650', '2000-01-01', '+254710270909', NULL, ''),
(727, 'steve gitau', 'Male', 'new ', 'rongai', '21399304', '2000-01-01', '+254722625506', NULL, ''),
(728, 'raila johns', 'Female', 'new ', 'karen', '188465', '2000-01-01', '+254722514715', NULL, ''),
(729, 'edward sekento', 'Male', 'new ', 'langata', '13299762', '2000-01-01', '+254722493450', NULL, ''),
(730, 'rose gitonga', 'Female', 'new ', 'rongai', '22363985', '2000-01-01', '+254718923186', NULL, ''),
(731, 'meshack ouma', 'Male', 'new ', 'rongai', '8607465', '2000-01-01', '+254722308830', NULL, ''),
(732, 'billy baltarz', 'Male', 'new ', 'ngong', '22440730', '2000-01-01', '+508720884084', NULL, ''),
(733, 'ida wambui', 'Female', 'new ', 'langata', '24130066', '2000-01-01', '+254721573855', NULL, ''),
(734, 'christine kitiku', 'Female', 'new ', 'langata', '33082496', '2000-01-01', '+254723036806', NULL, ''),
(735, 'mark danga', 'Male', 'new ', 'langata', '8537768', '2000-01-01', '+254722382822', NULL, ''),
(736, 'elizabeth karungai', 'Female', 'new ', 'karen', '3495573', '2000-01-01', '+254722823165', NULL, ''),
(737, 'Esther Nyambura', 'Female', 'new ', 'langata', '25155915', '2000-01-01', '+254721778496', NULL, ''),
(738, 'Catherine Kiguru', 'Female', 'new ', 'karen', '24808936', '2000-01-01', '+254723775422', NULL, ''),
(739, 'Samuel Ochieng', 'Male', 'new ', 'Racescos', '24545224', '2000-01-01', '+254725439164', NULL, ''),
(740, 'Jane Wamboi', 'Female', 'new ', 'South c', '5951424', '2000-01-01', '+254722726713', NULL, ''),
(741, 'mark mackenzie', 'Male', 'new ', 'south b', '32334242', '2000-01-01', '+254700116394', NULL, ''),
(742, 'oscar bernard', 'Male', 'new ', 'nairobi', '30072223', '2000-01-01', '+254715820919', NULL, ''),
(743, 'grace kibuthu', 'Female', 'new ', 'kilimani', '20472849', '2000-01-01', '+254728607004', NULL, ''),
(744, 'Maurice Itebete', 'Male', 'new ', 'karen', '3357463', '2000-01-01', '+254722389367', NULL, ''),
(745, 'zakiudin Anjarwalla', 'Male', 'new ', 'karen', '1805598', '2000-01-01', '+254733830736', NULL, ''),
(746, 'Grace Kiraguri', 'Female', 'new ', 'langata', '11449073', '2000-01-01', '+254722857676', NULL, ''),
(747, 'ibrahim ahmed', 'Male', 'new ', 'rongai', '13611897', '2000-01-01', '+254722913915', NULL, ''),
(748, 'Anold Chiaji', 'Male', 'new ', 'Buruburu', '22139704', '2000-01-01', '+254722749726', NULL, ''),
(749, 'Georgina Mutethia', 'Female', 'new ', 'ongata rongai', '23584567', '2000-01-01', '+254705363190', NULL, ''),
(750, 'karimi mbae', 'Female', 'new ', 'embakasi', '22155264', '2000-01-01', '+254720575410', NULL, ''),
(751, 'Robert', 'Male', 'new ', 'langata', '10627885', '2000-01-01', '+254728081083', NULL, ''),
(752, 'Alex Karuru', 'Male', 'new ', 'kikuyu', '20477199', '2000-01-01', '+254722827243', NULL, ''),
(753, 'raymond tanui', 'Male', 'new ', 'karen', '20133871', '2000-01-01', '+254723376933', NULL, ''),
(754, 'Ruth Musyoki', 'Female', 'new ', 'Rongai', '10421386', '2000-01-01', '+254702962365', NULL, ''),
(755, 'Florance Kongani', 'Female', 'new ', 'Rongai', '20130732', '2000-01-01', '+254726527944', NULL, ''),
(756, 'Cosmas Kiora', 'Male', 'new ', 'karen c', '25585298', '2000-01-01', '+254722104316', NULL, ''),
(757, 'gladys gichuhi', 'Female', 'new ', 'langata', '13795021', '2000-01-01', '+254721543236', NULL, ''),
(758, 'Eunice Wanjiru', 'Female', 'new ', 'langata', '30082382', '2000-01-01', '+254711520790', NULL, ''),
(759, 'cornelius kiprop', 'Male', 'new ', 'rongai', '22142747', '2000-01-01', '+254721395721', NULL, ''),
(760, 'Kamal ', 'Male', 'new ', 'Nairobi', '10432825', '2000-01-01', '+254717997268', NULL, ''),
(761, 'Caroline Nguku', 'Female', 'new ', 'karen', '1122150', '2000-01-01', '+254722711232', NULL, ''),
(762, 'Mehul Sutar', 'Female', 'new ', 'Nairobi west', '27199927', '2000-01-01', '+254725591911', NULL, ''),
(763, 'Hellen Njeru', 'Female', 'new ', 'Ngong', '22051388', '2000-01-01', '+254721843188', NULL, ''),
(764, 'Nicholas Ongaga', 'Male', 'new ', 'Athiriver', '10225630', '2000-01-01', '+254741222051', NULL, ''),
(765, 'Charles Koech', 'Male', 'new ', 'langata', '12834985', '2000-01-01', '+254722540658', NULL, ''),
(766, 'Kepha Ombasho', 'Male', 'new ', 'Muiri', '6894287', '2000-01-01', '+254721264965', NULL, ''),
(767, 'Melody Okioma', 'Female', 'new ', 'langata', '27275234', '2000-01-01', '+254711269434', NULL, ''),
(768, 'Fatma Abdul', 'Female', 'new ', 'loresho', '21129238', '2000-01-01', '+254720536786', NULL, ''),
(769, 'Lydia Murimi', 'Female', 'new ', 'Ngong', '13622399', '2000-01-01', '+254722213771', NULL, ''),
(770, 'joy m. pere', 'Female', 'new ', 'langata', '23652811', '2000-01-01', '+254720570960', NULL, ''),
(771, 'kalpesh ', 'Male', 'new ', 'south c', '13299467', '2000-01-01', '+254722357316', NULL, ''),
(772, 'mwangi doreth', 'Female', 'new ', 'rongai', '13241489', '2000-01-01', '+254722635595', NULL, ''),
(773, 'George Onyango', 'Male', 'new ', 'Nairobi', '612711086', '2000-01-01', '+254721244297', NULL, ''),
(774, 'Linda Brown', 'Female', 'new ', 'Njoro', '1867911', '2000-01-01', '+254722415869', NULL, ''),
(775, 'Victoria Kiplagat', 'Female', 'new ', 'Hardy', '20708908', '2000-01-01', '+254722420590', NULL, ''),
(776, 'abigael mkambure', 'Female', 'new ', 'rongai', '23270784', '2000-01-01', '+254727314512', NULL, ''),
(777, 'david githanga', 'Male', 'new ', 'madaraka', '21582738', '2000-01-01', '+254720458213', NULL, ''),
(778, 'emma olang', 'Female', 'new ', 'ngong road', '24046972', '2000-01-01', '+254721423195', NULL, ''),
(779, 'CATHERINE NJOGU', 'Female', 'new ', 'BOMAS', '20862583', '2000-01-01', '+508722463245', NULL, 'N/A'),
(780, 'ellaine wanjiru', 'Female', 'new ', 'madaraka', '25650057', '2000-01-01', '+254720853500', NULL, ''),
(781, 'Barbra Obuya', 'Female', 'new ', 'Karen', '36644079', '2000-01-01', '+254729920213', NULL, ''),
(782, 'Catherine Omondi', 'Female', 'new ', 'Embakasi', '13074381', '2000-01-01', '+254733823670', NULL, ''),
(783, 'George Martin', 'Male', 'new ', 'Ngong', '11871711', '2000-01-01', '+254722464293', NULL, ''),
(784, 'Anne Mureithi', 'Female', 'new ', 'Karen', '10474183', '2000-01-01', '+254712257746', NULL, ''),
(785, 'Nicholas Gachiri', 'Male', 'new ', 'Karen', '24490948', '2000-01-01', '+254722617933', NULL, ''),
(786, 'jason bowers', 'Male', 'new ', 'karen', '807765', '2000-01-01', '+254727738333', NULL, ''),
(787, 'Jackson Owino', 'Male', 'new ', 'SouthB', '13374778', '2000-01-01', '+254713587006', NULL, ''),
(788, 'canaan owuor', 'Male', 'new ', 'karen', '34456865', '2000-01-01', '+254705749998', NULL, ''),
(789, 'philomena chenangat', 'Female', 'new ', 'langata', '29490711', '2000-01-01', '+254702440655', NULL, ''),
(790, 'julliet kiguta', 'Female', 'new ', 'langata', '22337899', '2000-01-01', '+254721556254', NULL, ''),
(791, 'Chacha Wimani', 'Male', 'new ', 'southB', '10034171', '2000-01-01', '+254733602442', NULL, ''),
(792, 'christine mtangili mueni', 'Female', 'new ', 'south B', '14615760', '2000-01-01', '+254700345400', NULL, ''),
(793, 'Davina', 'Female', 'new ', 'Karen', '29517938', '2000-01-01', '+254790486760', 'N/A', ''),
(794, 'Joseph Edebe', 'Male', 'new ', 'Nairobi', '10225768', '2000-01-01', '+254721491085', 'N/A', ''),
(795, 'Judith Omolo', 'Female', 'new ', 'langata', '22056119', '2000-01-01', '+254722798631', 'N/A', ''),
(796, 'Joseph Omondi', 'Male', 'new ', 'karen', '30232595', '2000-01-01', '+254715537296', 'N/A', ''),
(797, 'Catherine Nyaga', 'Female', 'new ', 'Ruaka', '7679797', '2000-01-01', '+254721332287', 'N/A', ''),
(798, 'Derek Abisha', 'Male', 'new ', 'langata', '8612174', '2000-01-01', '+254731677379', 'N/A', ''),
(799, 'kasujaa onyonyi', 'Male', 'new ', 'langata', '11485878', '2000-01-01', '+254722834914', 'N/A', ''),
(800, 'Jaswinder Kaur', 'Male', 'new ', 'karen', '192816', '2000-01-01', '+508722987957', 'N/A', 'N/A'),
(801, 'joyce mawira', 'Female', 'new ', 'karen', '14647250', '2000-01-01', '+254728427398', 'N/A', ''),
(802, 'jillo gababo', 'Male', 'new ', 'south c', '0027836', '2000-01-01', '+254715937915', 'N/A', ''),
(803, 'edith gatehi', 'Female', 'new ', 'sunview ', '5781654', '2000-01-01', '+254727249148', 'N/A', ''),
(804, 'pauline odete', 'Female', 'new ', 'nairobi west', '10081453', '2000-01-01', '+254716430297', 'N/A', ''),
(805, 'jolene wangui', 'Female', 'new ', 'rongai', '11022826', '2000-01-01', '+254721295169', 'N/A', ''),
(806, 'james wakiaga', 'Male', 'new ', 'langata', '10024831', '2000-01-01', '+254711741879', 'N/A', ''),
(807, 'caroline omingo', 'Female', 'new ', 'buruburu', '13296023', '2000-01-01', '+254720825979', 'N/A', ''),
(808, 'gladys nasieku', 'Female', 'new ', 'karen', '1344871', '2000-01-01', '+254710255888', 'N/A', ''),
(809, 'catherine simayo', 'Female', 'new ', 'karen', '25653146', '2000-01-01', '+254705094489', 'N/A', ''),
(810, 'Joseph.k Arithi ', 'Male', 'new ', 'KAREN', '7677838', '2000-01-01', '+254722527004', 'N/A', ''),
(811, 'mary akinyi', 'Female', 'new ', 'langata', '20850439', '2000-01-01', '+254723128318', 'N/A', ''),
(812, 'millicent gitonga', 'Female', 'new ', 'langata', '13554222', '2000-01-01', '+254722879166', 'N/A', ''),
(813, 'peninah wahome', 'Female', 'new ', 'kasarani', '24027344', '2000-01-01', '+254721240535', 'N/A', ''),
(814, 'roseann kimathi', 'Female', 'new ', 'nkoroi', '9908744', '2000-01-01', '+254722874819', 'N/A', ''),
(815, 'kelvin mukuura', 'Male', 'new ', 'royal park', '23029805', '2000-01-01', '+254724538546', 'N/A', ''),
(816, 'brendan keya', 'Male', 'new ', 'south b', 'brendan keya', '2000-01-01', '+254721467251', 'N/A', ''),
(817, 'moses muthuka', 'Male', 'new ', 'karen', '33308077', '2000-01-01', '+254771290217', 'N/A', ''),
(818, 'jackson saropa', 'Male', 'new ', 'kitengela', '25726685', '2000-01-01', '+254725733801', 'N/A', ''),
(819, 'edith wasike', 'Female', 'new ', 'bomas', '22558383', '2000-01-01', '+254728290038', 'N/A', ''),
(820, 'justin', 'Male', 'new ', '', '0poo99883', '2000-01-01', '+254796577628', 'N/A', ''),
(821, 'joseph masibo', 'Male', 'new ', 'ngong', '2095226', '2000-01-01', '+254726607199', 'N/A', ''),
(822, 'chrisstine john', 'Female', 'new ', 'karen', 'b1196704', '2000-01-01', '+254704689980', 'N/A', ''),
(823, 'patriciah otieno', 'Female', 'new ', 'langata', '13440278', '2000-01-01', '+254701397711', 'N/A', ''),
(824, 'esther ondiek', 'Female', 'new ', 'langatap', '23334588', '2000-01-01', '+254722420626', 'N/A', ''),
(825, 'jeremiah kariuki', 'Male', 'new ', 'rongai', '1321957', '2000-01-01', '+254721928657', 'N/A', ''),
(826, 'monica gathera', 'Female', 'new ', 'langata', '22606529', '2000-01-01', '+254721485512', 'N/A', ''),
(827, 'priscilla tembo', 'Female', 'new ', 'karen', 'ma044206', '2000-01-01', '+254712507855', 'N/A', ''),
(828, 'speakman david', 'Male', 'new ', 'hardy', '771062', '2000-01-01', '+254718654253', 'N/A', ''),
(829, 'anastasia wambui', 'Female', 'new ', 'karen', '10183730', '2000-01-01', '+254723715246', 'N/A', ''),
(830, 'christine karimi', 'Female', 'new ', 'langata', '22410480', '2000-01-01', '+254722843187', 'N/A', ''),
(831, 'chrisstine john', 'Female', 'new ', 'karen', 'b1196704', '2000-01-01', '+508704689980', 'N/A', ''),
(832, 'Christine Manyara', 'Female', 'new ', 'langata', '5380629', '2000-01-01', '+254722766505', 'N/A', ''),
(833, 'Brian Noreh', 'Male', 'new ', 'naivasha road', '25080494', '2000-01-01', '+254723389848', 'N/A', ''),
(834, 'martin kibati', 'Male', 'new ', 'karen', '21963132', '2000-01-01', '+254720299423', 'N/A', ''),
(835, 'betty wanyoike', 'Female', 'new ', '', '4927040', '2000-01-01', '+254722510338', 'N/A', ''),
(836, 'robert gitau', 'Male', 'new ', 'karen', '7199403', '2000-01-01', '+254720346091', 'N/A', ''),
(837, 'MAURINE MURIITHI', 'Female', 'new ', 'LANGATA', '2235822', '2000-01-01', '+254721783308', 'N/A', '');

-- --------------------------------------------------------

--
-- Table structure for table `draw`
--

DROP TABLE IF EXISTS `draw`;
CREATE TABLE IF NOT EXISTS `draw` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `enddate` date NOT NULL,
  `prize` varchar(200) NOT NULL,
  `datescheduled` date NOT NULL,
  `quantity` double NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `draw`
--

INSERT INTO `draw` (`id`, `name`, `enddate`, `prize`, `datescheduled`, `quantity`, `status`) VALUES
(1, 'DRAW ONE', '2018-03-17', '97344', '2018-01-15', 1, 0),
(2, 'DRAW TWO', '2018-03-17', '97344', '2018-01-15', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `drawsettings`
--

DROP TABLE IF EXISTS `drawsettings`;
CREATE TABLE IF NOT EXISTS `drawsettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` double NOT NULL,
  `points` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drawsettings`
--

INSERT INTO `drawsettings` (`id`, `amount`, `points`) VALUES
(1, 1000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `drawwinners`
--

DROP TABLE IF EXISTS `drawwinners`;
CREATE TABLE IF NOT EXISTS `drawwinners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `drawname` varchar(100) NOT NULL,
  `winner` varchar(100) NOT NULL,
  `prizeawarded` double NOT NULL,
  `daterun` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `entries`
--

DROP TABLE IF EXISTS `entries`;
CREATE TABLE IF NOT EXISTS `entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customername` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `passport` varchar(30) NOT NULL DEFAULT 'N/A',
  `tel` varchar(50) NOT NULL,
  `address` varchar(50) DEFAULT 'n/a',
  `idno` varchar(50) DEFAULT 'n/a',
  `raffleno` varchar(50) NOT NULL,
  `shop` varchar(50) NOT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `points` double NOT NULL DEFAULT '0',
  `recordedby` varchar(45) DEFAULT 'system',
  `dateadded` date NOT NULL,
  `datemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `msg` int(11) NOT NULL DEFAULT '0',
  `promo` varchar(45) NOT NULL DEFAULT 'CHRISTMASPROMO2016',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `entries`
--

INSERT INTO `entries` (`id`, `customername`, `email`, `passport`, `tel`, `address`, `idno`, `raffleno`, `shop`, `amount`, `points`, `recordedby`, `dateadded`, `datemodified`, `msg`, `promo`) VALUES
(3, 'joyce mawira', NULL, '', '+254728427398', 'karen', '14647250', 'GALLERIA-EASTER-3', 'MR PRICE', 3000, 3, 'system', '2018-03-18', '2018-05-02 08:22:20', 1, 'GALLERIA-EASTER-3'),
(4, 'jillo gababo', NULL, '', '+254715937915', 'south c', '0027836', 'GALLERIA-EASTER-4', 'SAMSUNG', 8999, 8, 'system', '2018-03-18', '2018-05-02 08:22:20', 1, 'GALLERIA-EASTER-4'),
(5, 'jillo gababo', NULL, '', '+254715937915', 'south c', '0027836', 'GALLERIA-EASTER-5', 'SAMSUNG', 1000, 1, 'system', '2018-03-18', '2018-05-02 08:22:20', 1, 'GALLERIA-EASTER-5'),
(6, 'edith gatehi', NULL, '', '+254727249148', 'sunview ', '5781654', 'GALLERIA-EASTER-6', 'SAMSUNG', 186000, 186, 'system', '2018-03-18', '2018-05-02 08:22:20', 1, 'GALLERIA-EASTER-6'),
(7, 'pauline odete', NULL, '', '+254716430297', 'nairobi west', '10081453', 'GALLERIA-EASTER-7', 'TEXT BOOK CENTRE', 4989, 4, 'system', '2018-03-18', '2018-05-02 08:22:21', 1, 'GALLERIA-EASTER-7'),
(8, 'jolene wangui', NULL, '', '+254721295169', 'rongai', '11022826', 'GALLERIA-EASTER-8', 'TEXT BOOK CENTRE', 1645, 1, 'system', '2018-03-18', '2018-05-02 08:22:21', 1, 'GALLERIA-EASTER-8'),
(9, 'james wakiaga', NULL, '', '+254711741879', 'langata', '10024831', 'GALLERIA-EASTER-9', 'HEALTHYU', 3375, 3, 'system', '2018-03-18', '2018-05-02 08:22:21', 1, 'GALLERIA-EASTER-9'),
(10, 'Mustafa A Hussein bhai', NULL, 'N/A', '+254720933345', 'Langata', '21958931', 'GALLERIA-EASTER-10', 'TEXT BOOK CENTRE', 1040, 1, 'system', '2018-03-18', '2018-05-02 08:22:21', 1, 'GALLERIA-EASTER-10'),
(11, 'TAYABALI ABIZAR', NULL, 'N/A', '+254722202016', 'LANGATA', '3905255', 'GALLERIA-EASTER-11', 'NAKUMATT', 6815, 6, 'system', '2018-03-18', '2018-05-02 08:22:21', 1, 'GALLERIA-EASTER-11'),
(12, 'caroline omingo', NULL, '', '+254720825979', 'buruburu', '13296023', 'GALLERIA-EASTER-12', 'FRAGRANCE LOUNGE ', 9600, 9, 'system', '2018-03-18', '2018-05-02 08:22:21', 1, 'GALLERIA-EASTER-12'),
(13, 'gladys nasieku', NULL, '', '+254710255888', 'karen', '1344871', 'GALLERIA-EASTER-13', 'PHARMART GALLERIA', 1820, 1, 'system', '2018-03-18', '2018-05-02 08:22:21', 1, 'GALLERIA-EASTER-13'),
(14, 'catherine simayo', NULL, '', '+254705094489', 'karen', '25653146', 'GALLERIA-EASTER-14', 'ARTCAFFE', 1550, 1, 'system', '2018-03-18', '2018-05-02 08:22:21', 1, 'GALLERIA-EASTER-14'),
(15, 'catherine simayo', NULL, '', '+254705094489', 'karen', '25653146', 'GALLERIA-EASTER-15', 'LINTONS', 4350, 4, 'system', '2018-03-18', '2018-05-02 08:22:21', 1, 'GALLERIA-EASTER-15'),
(16, 'Joseph.k Arithi ', NULL, '', '+254722527004', 'KAREN', '7677838', 'GALLERIA-EASTER-16', 'FRAGRANCE LOUNGE ', 13000, 13, 'system', '2018-03-19', '2018-05-02 08:22:21', 1, 'GALLERIA-EASTER-16'),
(17, 'mary akinyi', NULL, '', '+254723128318', 'langata', '20850439', 'GALLERIA-EASTER-17', 'WOOLWORTHS', 2200, 2, 'system', '2018-03-21', '2018-05-02 08:22:21', 1, 'GALLERIA-EASTER-17'),
(18, 'millicent gitonga', NULL, '', '+254722879166', 'langata', '13554222', 'GALLERIA-EASTER-18', 'WOOLWORTHS', 12630, 12, 'system', '2018-03-21', '2018-05-02 08:22:21', 1, 'GALLERIA-EASTER-18'),
(19, 'millicent gitonga', NULL, '', '+254722879166', 'langata', '13554222', 'GALLERIA-EASTER-19', 'HEALTHYU', 10035, 10, 'system', '2018-03-21', '2018-05-02 08:22:21', 1, 'GALLERIA-EASTER-19'),
(20, 'millicent gitonga', NULL, '', '+254722879166', 'langata', '13554222', 'GALLERIA-EASTER-20', 'WOOLWORTHS', 2500, 2, 'system', '2018-03-21', '2018-05-02 08:22:21', 1, 'GALLERIA-EASTER-20'),
(21, 'millicent gitonga', NULL, '', '+254722879166', 'langata', '13554222', 'GALLERIA-EASTER-21', 'NAKUMATT', 2840, 2, 'system', '2018-03-21', '2018-05-02 08:22:21', 1, 'GALLERIA-EASTER-21'),
(22, 'peninah wahome', NULL, '', '+254721240535', 'kasarani', '24027344', 'GALLERIA-EASTER-22', 'NAKUMATT', 3469, 3, 'system', '2018-03-21', '2018-05-02 08:22:21', 1, 'GALLERIA-EASTER-22'),
(23, 'roseann kimathi', NULL, '', '+254722874819', 'nkoroi', '9908744', 'GALLERIA-EASTER-23', 'WOOLWORTHS', 8000, 8, 'system', '2018-03-21', '2018-05-02 08:22:21', 1, 'GALLERIA-EASTER-23'),
(24, 'kelvin mukuura', NULL, '', '+254724538546', 'royal park', '23029805', 'GALLERIA-EASTER-24', 'TEXT BOOK CENTRE', 1500, 1, 'system', '2018-03-21', '2018-05-02 08:22:21', 1, 'GALLERIA-EASTER-24'),
(25, 'brendan keya', NULL, '', '+254721467251', 'south b', 'brendan keya', 'GALLERIA-EASTER-25', 'HEALTHYU', 4274, 4, 'system', '2018-03-22', '2018-05-02 08:22:21', 1, 'GALLERIA-EASTER-25'),
(26, 'ellaine wanjiru', NULL, '', '+254720853500', 'madaraka', '25650057', 'GALLERIA-EASTER-26', 'WOOLWORTHS', 2880, 2, 'system', '2018-03-22', '2018-05-02 08:22:21', 1, 'GALLERIA-EASTER-26'),
(27, 'moses muthuka', NULL, '', '+254771290217', 'karen', '33308077', 'GALLERIA-EASTER-27', 'URBAN BURGER', 3060, 3, 'system', '2018-03-22', '2018-05-02 08:22:21', 1, 'GALLERIA-EASTER-27'),
(28, 'jackson saropa', NULL, '', '+254725733801', 'kitengela', '25726685', 'GALLERIA-EASTER-28', 'TEXT BOOK CENTRE', 1860, 1, 'system', '2018-03-22', '2018-05-02 08:22:21', 1, 'GALLERIA-EASTER-28'),
(29, 'edith wasike', NULL, '', '+254728290038', 'bomas', '22558383', 'GALLERIA-EASTER-29', 'NAKUMATT', 27028, 27, 'system', '2018-03-22', '2018-05-02 08:22:21', 1, 'GALLERIA-EASTER-29'),
(30, 'justin', NULL, '', '+254796577628', '', '0poo99883', 'GALLERIA-EASTER-30', 'NAKUMATT', 5093, 5, 'system', '2018-03-22', '2018-05-02 08:22:21', 1, 'GALLERIA-EASTER-30'),
(31, 'joseph masibo', NULL, '', '+254726607199', 'ngong', '2095226', 'GALLERIA-EASTER-31', 'HEALTHYU', 2395, 2, 'system', '2018-03-22', '2018-05-02 08:22:21', 1, 'GALLERIA-EASTER-31'),
(32, 'POOJA PANESAR', NULL, 'N/A', '+254736600510', 'KAREN', '25988808', 'GALLERIA-EASTER-32', 'NAKUMATT', 9724, 9, 'system', '2018-03-22', '2018-05-02 08:22:22', 1, 'GALLERIA-EASTER-32'),
(33, 'POOJA PANESAR', NULL, 'N/A', '+254736600510', 'KAREN', '25988808', 'GALLERIA-EASTER-33', 'THE WHISKY SHOP mega wines & spirits ltd', 6500, 6, 'system', '2018-03-22', '2018-05-02 08:22:22', 1, 'GALLERIA-EASTER-33'),
(34, 'chrisstine john', NULL, '', '+254704689980', 'karen', 'b1196704', 'GALLERIA-EASTER-34', 'SAMSUNG', 9000, 9, 'system', '2018-03-23', '2018-05-02 08:22:22', 1, 'GALLERIA-EASTER-34'),
(35, 'patriciah otieno', NULL, '', '+254701397711', 'langata', '13440278', 'GALLERIA-EASTER-35', 'PHARMART GALLERIA', 4599, 4, 'system', '2018-03-23', '2018-05-02 08:22:22', 1, 'GALLERIA-EASTER-35'),
(36, 'esther ondiek', NULL, '', '+254722420626', 'langatap', '23334588', 'GALLERIA-EASTER-36', 'PHARMART GALLERIA', 1570, 1, 'system', '2018-03-23', '2018-05-02 08:22:22', 1, 'GALLERIA-EASTER-36'),
(37, 'jeremiah kariuki', NULL, '', '+254721928657', 'rongai', '1321957', 'GALLERIA-EASTER-37', 'THE WHISKY SHOP mega wines & spirits ltd', 1800, 1, 'system', '2018-03-23', '2018-05-02 08:22:22', 1, 'GALLERIA-EASTER-37'),
(38, 'jeremiah kariuki', NULL, '', '+254721928657', 'rongai', '1321957', 'GALLERIA-EASTER-38', 'FRAGRANCE LOUNGE ', 4300, 4, 'system', '2018-03-23', '2018-05-02 08:22:22', 1, 'GALLERIA-EASTER-38'),
(39, 'monica gathera', NULL, '', '+254721485512', 'langata', '22606529', 'GALLERIA-EASTER-39', 'PHARMART GALLERIA', 2500, 2, 'system', '2018-03-23', '2018-05-02 08:22:22', 1, 'GALLERIA-EASTER-39'),
(40, 'Tatyana Mesopin', NULL, 'N/A', '+254733827809', 'langata', '12763525', 'GALLERIA-EASTER-40', 'NAKUMATT', 1879, 1, 'system', '2018-03-23', '2018-05-02 08:22:22', 1, 'GALLERIA-EASTER-40'),
(41, 'Tatyana Mesopin', NULL, 'N/A', '+254733827809', 'langata', '12763525', 'GALLERIA-EASTER-41', 'PHARMART GALLERIA', 2100, 2, 'system', '2018-03-23', '2018-05-02 08:22:22', 1, 'GALLERIA-EASTER-41'),
(42, 'priscilla tembo', NULL, '', '+254712507855', 'karen', 'ma044206', 'GALLERIA-EASTER-42', 'PHARMART GALLERIA', 2220, 2, 'system', '2018-03-23', '2018-05-02 08:22:22', 1, 'GALLERIA-EASTER-42'),
(43, 'speakman david', NULL, '', '+254718654253', 'hardy', '771062', 'GALLERIA-EASTER-43', 'PHARMART GALLERIA', 9280, 9, 'system', '2018-03-23', '2018-05-02 08:22:22', 1, 'GALLERIA-EASTER-43'),
(44, 'speakman david', NULL, '', '+254718654253', 'hardy', '771062', 'GALLERIA-EASTER-44', 'THE WHISKY SHOP mega wines & spirits ltd', 3150, 3, 'system', '2018-03-23', '2018-05-02 08:22:22', 1, 'GALLERIA-EASTER-44'),
(45, 'anastasia wambui', NULL, '', '+254723715246', 'karen', '10183730', 'GALLERIA-EASTER-45', 'PHARMART GALLERIA', 2250, 2, 'system', '2018-03-23', '2018-05-02 08:22:22', 1, 'GALLERIA-EASTER-45'),
(46, 'anastasia wambui', NULL, '', '+254723715246', 'karen', '10183730', 'GALLERIA-EASTER-46', 'PHARMART GALLERIA', 2150, 2, 'system', '2018-03-23', '2018-05-02 08:22:22', 1, 'GALLERIA-EASTER-46'),
(47, 'anastasia wambui', NULL, '', '+254723715246', 'karen', '10183730', 'GALLERIA-EASTER-47', 'PHARMART GALLERIA', 9000, 9, 'system', '2018-03-23', '2018-05-02 08:22:22', 1, 'GALLERIA-EASTER-47'),
(48, 'christine karimi', NULL, '', '+254722843187', 'langata', '22410480', 'GALLERIA-EASTER-48', 'NAKUMATT', 1770, 1, 'system', '2018-03-24', '2018-05-02 08:22:22', 1, 'GALLERIA-EASTER-48'),
(49, 'chrisstine john', NULL, '', '+508704689980', 'karen', 'b1196704', 'GALLERIA-EASTER-49', 'AIRTEL', 41990, 41, 'system', '2018-03-24', '2018-05-02 08:22:22', 1, 'GALLERIA-EASTER-49'),
(50, 'chrisstine john', NULL, '', '+254704689980', 'karen', 'b1196704', 'GALLERIA-EASTER-50', 'AIRTEL', 41990, 41, 'system', '2018-03-24', '2018-05-02 08:22:22', 1, 'GALLERIA-EASTER-50'),
(51, 'Christine Manyara', NULL, '', '+254722766505', 'langata', '5380629', 'GALLERIA-EASTER-51', 'WOOLWORTHS', 2200, 2, 'system', '2018-03-24', '2018-05-02 08:22:22', 1, 'GALLERIA-EASTER-51'),
(52, 'Christine Manyara', NULL, '', '+254722766505', 'langata', '5380629', 'GALLERIA-EASTER-52', 'PHARMART GALLERIA', 5850, 5, 'system', '2018-03-24', '2018-05-02 08:22:22', 1, 'GALLERIA-EASTER-52'),
(53, 'Brian Noreh', NULL, '', '+254723389848', 'naivasha road', '25080494', 'GALLERIA-EASTER-53', 'SAMSUNG', 28498, 28, 'system', '2018-03-25', '2018-05-02 08:22:22', 1, 'GALLERIA-EASTER-53'),
(54, 'Christine Manyara', NULL, '', '+254722766505', 'langata', '5380629', 'GALLERIA-EASTER-54', 'PHARMART GALLERIA', 2600, 2, 'system', '2018-03-25', '2018-05-02 08:22:22', 1, 'GALLERIA-EASTER-54'),
(55, 'martin kibati', NULL, '', '+254720299423', 'karen', '21963132', 'GALLERIA-EASTER-55', 'NAKUMATT', 1067, 1, 'system', '2018-03-25', '2018-05-02 08:22:22', 1, 'GALLERIA-EASTER-55'),
(56, 'betty wanyoike', NULL, '', '+254722510338', '', '4927040', 'GALLERIA-EASTER-56', 'PHARMART GALLERIA', 7680, 7, 'system', '2018-03-25', '2018-05-02 08:22:22', 1, 'GALLERIA-EASTER-56'),
(57, 'betty wanyoike', NULL, '', '+254722510338', '', '4927040', 'GALLERIA-EASTER-57', 'PHARMART GALLERIA', 4000, 4, 'system', '2018-03-25', '2018-05-02 08:22:22', 1, 'GALLERIA-EASTER-57'),
(58, 'JOYCE THEURI', NULL, 'N/A', '+254722524601', 'KAREN', '13675570', 'GALLERIA-EASTER-58', 'NAKUMATT', 5515, 5, 'system', '2018-03-27', '2018-05-02 08:22:22', 1, 'GALLERIA-EASTER-58'),
(59, 'EGGER MIRKA', NULL, 'N/A', '+254724230359', 'KAREN', '420612', 'GALLERIA-EASTER-59', 'NAIROBI HOSPITAL', 12030, 12, 'system', '2018-03-28', '2018-05-02 08:22:23', 1, 'GALLERIA-EASTER-59'),
(60, 'EGGER MIRKA', NULL, 'N/A', '+254724230359', 'KAREN', '420612', 'GALLERIA-EASTER-60', 'PHARMART GALLERIA', 2300, 2, 'system', '2018-03-28', '2018-05-02 08:22:23', 1, 'GALLERIA-EASTER-60'),
(61, 'EGGER MIRKA', NULL, 'N/A', '+254724230359', 'KAREN', '420612', 'GALLERIA-EASTER-61', 'NAIROBI HOSPITAL', 6657, 6, 'system', '2018-03-28', '2018-05-02 08:22:23', 1, 'GALLERIA-EASTER-61'),
(62, 'robert gitau', NULL, '', '+254720346091', 'karen', '7199403', 'GALLERIA-EASTER-62', 'TEXT BOOK CENTRE', 132000, 132, 'system', '2018-03-28', '2018-05-02 08:22:23', 1, 'GALLERIA-EASTER-62'),
(63, 'Tatyana Mesopin', NULL, 'N/A', '+254733827809', 'langata', '12763525', 'GALLERIA-EASTER-63', 'FIELD FRESH ', 1518, 1, 'system', '2018-03-29', '2018-05-02 08:22:23', 1, 'GALLERIA-EASTER-63'),
(64, 'Tatyana Mesopin', NULL, 'N/A', '+254733827809', 'langata', '12763525', 'GALLERIA-EASTER-64', 'NAKUMATT', 2551, 2, 'system', '2018-03-29', '2018-05-02 08:22:23', 1, 'GALLERIA-EASTER-64'),
(65, 'MAURINE MURIITHI', NULL, '', '+254721783308', 'LANGATA', '2235822', 'GALLERIA-EASTER-65', 'ARTCAFFE', 2900, 2, 'system', '2018-03-30', '2018-05-02 08:22:23', 1, 'GALLERIA-EASTER-65'),
(66, 'MAURINE MURIITHI', NULL, '', '+254721783308', 'LANGATA', '2235822', 'GALLERIA-EASTER-66', 'PHARMART GALLERIA', 3500, 3, 'system', '2018-03-30', '2018-05-02 08:22:23', 1, 'GALLERIA-EASTER-66'),
(67, 'MAURINE MURIITHI', NULL, '', '+254721783308', 'LANGATA', '2235822', 'GALLERIA-EASTER-67', 'KFC', 4600, 4, 'system', '2018-03-30', '2018-05-02 08:22:23', 1, 'GALLERIA-EASTER-67'),
(68, 'MAURINE MURIITHI', NULL, '', '+254721783308', 'LANGATA', '2235822', 'GALLERIA-EASTER-68', 'WOOLWORTHS', 11680, 11, 'system', '2018-03-30', '2018-05-02 08:22:23', 1, 'GALLERIA-EASTER-68'),
(69, 'MAURINE MURIITHI', NULL, '', '+254721783308', 'LANGATA', '2235822', 'GALLERIA-EASTER-69', 'WOOLWORTHS', 8820, 8, 'system', '2018-03-30', '2018-05-02 08:22:23', 1, 'GALLERIA-EASTER-69'),
(70, 'karimi mbae', NULL, '', '+254720575410', 'embakasi', '22155264', 'GALLERIA-EASTER-70', 'WOOLWORTHS', 18300, 18, 'system', '2018-03-30', '2018-05-02 08:22:23', 1, 'GALLERIA-EASTER-70'),
(71, 'karimi mbae', NULL, '', '+254720575410', 'embakasi', '22155264', 'GALLERIA-EASTER-71', 'BATA', 5227, 5, 'system', '2018-03-30', '2018-05-02 08:22:23', 1, 'GALLERIA-EASTER-71'),
(72, 'Simon Mbugua', NULL, 'ADB12345', '+508728944815', 'Nairobi', '29907209', 'GALLERIA-70', 'NAKUMATT', 200, 0, 'system', '2018-11-19', '2018-11-19 06:47:22', 0, 'CHRISTMASPROMO2016'),
(73, 'Simon Mbugua', NULL, 'ADB12345', '+508728944815', 'Nairobi', '29907209', 'GALLERIA-70', 'BATA', 2330, 2, 'system', '2018-11-19', '2018-11-19 06:47:22', 0, 'CHRISTMASPROMO2016');

-- --------------------------------------------------------

--
-- Table structure for table `main_raffle`
--

DROP TABLE IF EXISTS `main_raffle`;
CREATE TABLE IF NOT EXISTS `main_raffle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `raffleno` varchar(50) NOT NULL,
  `totalpoints` double NOT NULL,
  `totalamount` double NOT NULL,
  `campaign` varchar(100) NOT NULL,
  `year` int(4) NOT NULL,
  `datemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `noofentries` int(11) NOT NULL,
  `weekly` int(11) NOT NULL DEFAULT '0',
  `monthly` int(11) NOT NULL DEFAULT '0',
  `grand` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(200) NOT NULL,
  `msgsub` varchar(100) DEFAULT NULL,
  `touser` varchar(250) NOT NULL,
  `msg` text NOT NULL,
  `datesent` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

DROP TABLE IF EXISTS `requests`;
CREATE TABLE IF NOT EXISTS `requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `dategen` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `expire` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `code`, `status`, `dategen`, `expire`) VALUES
(1, 4027, 1, '2016-11-21 12:04:25', '2016-11-21'),
(2, 1071, 1, '2016-11-21 12:15:06', '2016-11-21'),
(3, 4513, 0, '2016-11-25 10:06:26', '2016-11-25'),
(4, 6170, 0, '2016-11-25 10:56:54', '2016-11-25'),
(5, 6308, 0, '2016-11-25 10:56:57', '2016-11-25'),
(6, 9947, 0, '2016-12-14 07:39:28', '2016-12-14'),
(7, 7144, 0, '2017-01-05 15:58:59', '2017-01-05'),
(8, 7090, 0, '2017-02-20 12:45:01', '2017-02-20'),
(9, 7285, 0, '2017-02-20 12:45:42', '2017-02-20');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) NOT NULL,
  `main_name` varchar(200) NOT NULL,
  `main_location` varchar(200) NOT NULL,
  `main_tel` varchar(200) NOT NULL,
  `main_address` varchar(200) DEFAULT NULL,
  `dateadded` date NOT NULL,
  `datemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `main_name`, `main_location`, `main_tel`, `main_address`, `dateadded`, `datemodified`) VALUES
(1, 'GALLERIA SHOPPING MALL', 'Langata Road ', '0928944815', 'Galleria Mall Karen', '2016-09-05', '2016-10-08 12:14:07');

-- --------------------------------------------------------

--
-- Table structure for table `shop`
--

DROP TABLE IF EXISTS `shop`;
CREATE TABLE IF NOT EXISTS `shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `cname` varchar(400) NOT NULL,
  `shopno` varchar(50) NOT NULL DEFAULT 'GALLERIA',
  `shopcode` varchar(50) NOT NULL DEFAULT 'GALLERIA',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop`
--

INSERT INTO `shop` (`id`, `name`, `cname`, `shopno`, `shopcode`) VALUES
(102, 'Nakumatt Galleria', 'NAKUMATT', 'GALLERIA', 'GALLERIA'),
(103, 'Star Optics Ltd.', 'STAR OPTICS', 'GALLERIA', 'GALLERIA'),
(104, 'HealthyU 2000 Ltd', 'HEALTHYU', 'GALLERIA', 'GALLERIA'),
(105, 'MRP RETAIL KENYA LTD', 'MR PRICE', 'GALLERIA', 'GALLERIA'),
(106, 'Woolworths Kenya PTY ltd. ', 'WOOLWORTHS', 'GALLERIA', 'GALLERIA'),
(107, 'Airtel Galleria Karen', 'AIRTEL', 'GALLERIA', 'GALLERIA'),
(108, 'SALUTEIWORLD', 'SALUTEIWORLD', 'GALLERIA', 'GALLERIA'),
(109, 'THE WHISKY SHOP mega wines & spirits ltd', 'THE WHISKY SHOP mega wines & spirits ltd', 'GALLERIA', 'GALLERIA'),
(110, 'JEWELEX jewelex Ltd.', 'JEWELEX jewelex Ltd.', 'GALLERIA', 'GALLERIA'),
(111, 'Text Book Centre Ltd', 'TEXT BOOK CENTRE', 'GALLERIA', 'GALLERIA'),
(112, 'Bata Shoe Co. Kenya Ltd', 'BATA', 'GALLERIA', 'GALLERIA'),
(113, 'PLANET YOGURT planet yogurt Galleria ', 'PLANET YOGURT planet yogurt Galleria ', 'GALLERIA', 'GALLERIA'),
(114, 'Kuku Foods Kenya Ltd KFC Galleria', 'KFC', 'GALLERIA', 'GALLERIA'),
(115, 'Nairobi Java House Ltd Java Galleria', 'NAIROBI JAVA HOUSE', 'GALLERIA', 'GALLERIA'),
(116, ' Artcaffe Coffee & bakery Ltd', 'ARTCAFFE', 'GALLERIA', 'GALLERIA'),
(117, 'Mindquest Ltd Accessorize with Style Galleria Shop', 'ACCESSORIZE', 'GALLERIA', 'GALLERIA'),
(118, 'Inspirations Africa Ltd.', 'FRAGRANCE LOUNGE ', 'GALLERIA', 'GALLERIA'),
(119, 'Samsung Galleria Mall langata road. ', 'SAMSUNG', 'GALLERIA', 'GALLERIA'),
(120, 'Sona Shoppe Ltd. Langata road, Galleria Mall.', 'SONA SHOPPE', 'GALLERIA', 'GALLERIA'),
(121, 'Pharmart Galleria Chemist.', 'PHARMART GALLERIA', 'GALLERIA', 'GALLERIA'),
(122, 'Bikes and Sports Limited.', 'BIKES&SPORTS', 'GALLERIA', 'GALLERIA'),
(123, 'Trevina Limited', 'TREVINA', 'GALLERIA', 'GALLERIA'),
(124, 'The Uniform Store EA.', 'THE UNIFORM STORE ', 'GALLERIA', 'GALLERIA'),
(125, 'Lornah Sports Limited', 'LORNAHSPORTS ', 'GALLERIA', 'GALLERIA'),
(126, 'Chapa Copy Limited', 'CHAPA COPY', 'GALLERIA', 'GALLERIA'),
(127, 'Styling Studio Limited', 'XTREME STYLING', 'GALLERIA', 'GALLERIA'),
(128, 'Micos Drycleaners Ltd ', 'MICOS DRYCLEANERS ', 'GALLERIA', 'GALLERIA'),
(129, 'STEPS', 'STEPS', 'GALLERIA', 'GALLERIA'),
(130, 'Armario Collections Ltd', 'ARMARIO', 'GALLERIA', 'GALLERIA'),
(131, 'H&CLONDON Single Steps Investments', 'H&CLONDON', 'GALLERIA', 'GALLERIA'),
(132, 'LINTONS BEAUTY ', 'LINTONS', 'GALLERIA', 'GALLERIA'),
(133, 'DISOCUNT TYRE', 'DISCOUNT TYRE', 'GALLERIA', 'GALLERIA'),
(134, 'Vivo Activewear Ltd', 'VIVO', 'GALLERIA', 'GALLERIA'),
(135, 'TELKOM KENYA', 'TELKOM', 'GALLERIA', 'GALLERIA'),
(136, 'STONE ARTS', 'STONE ARTS', 'GALLERIA', 'GALLERIA'),
(137, 'URBAN BURGER', 'URBAN BURGER', 'GALLERIA', 'GALLERIA'),
(138, 'KLOZET WEAR LIMITED', 'BIANCO NERO', 'GALLERIA', 'GALLERIA'),
(140, 'Indian Khazanah Ltd', 'INDIANKHAZANAH', 'GALLERIA', 'GALLERIA'),
(142, 'CHAKA-plain cash sale receipt with stamp.', 'CHAKA', 'GALLERIA', 'GALLERIA'),
(143, 'PRECISE BATH AND BODY PARLOUR', 'BATH AND BODY WORKS', 'GALLERIA', 'GALLERIA'),
(144, 'African Lily Enterprises', 'AFRICAN LILY', 'GALLERIA', 'GALLERIA'),
(145, 'Yilmaz Co.Ltd', 'FLOMAR', 'GALLERIA', 'GALLERIA'),
(146, 'SWEET KIOSK', 'SWEET KIOSK', 'GALLERIA', 'GALLERIA'),
(147, 'Universal Smart Planet Systems ', 'SMART PLANET', 'GALLERIA', 'GALLERIA'),
(148, 'Field Fresh Vegetables', 'FIELD FRESH ', 'GALLERIA', 'GALLERIA'),
(149, 'SAFARICOM LTD', 'SAFARICOM', 'GALLERIA', 'GALLERIA'),
(151, 'Nairobi Hospital Pharmacy', 'NAIROBI HOSPITAL', 'GALLERIA', 'GALLERIA'),
(153, 'THE BIG FIVE BREWERIES', 'BREW BISTRO', 'GALLERIA', 'GALLERIA'),
(154, 'LIBERTY EAGLE LTD', 'PIZZA HUT', 'GALLERIA', 'GALLERIA'),
(155, 'FEAST LTD', 'SUBWAY', 'GALLERIA', 'GALLERIA'),
(156, 'INZU FURNITURE', 'INZU', 'GALLERIA', 'GALLERIA');

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

DROP TABLE IF EXISTS `shops`;
CREATE TABLE IF NOT EXISTS `shops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `name`) VALUES
(2, 'NAKUMATT'),
(3, 'STAR OPTICS'),
(4, 'HEALTHYU'),
(5, 'MR PRICE'),
(6, 'WOOLWORTHS'),
(7, 'AIRTEL'),
(8, 'SALUTEIWORLD'),
(9, 'THE WHISKY SHOP mega wines & spirits ltd'),
(10, 'JEWELEX jewelex Ltd.'),
(11, 'TEXT BOOK CENTRE'),
(12, 'BATA'),
(13, 'PLANET YOGURT planet yogurt Galleria '),
(14, 'KFC'),
(15, 'NAIROBI JAVA HOUSE'),
(16, 'ARTCAFFE'),
(17, 'ACCESSORIZE'),
(18, 'FRAGRANCE LOUNGE '),
(19, 'SAMSUNG'),
(20, 'SONA SHOPPE'),
(21, 'PHARMART'),
(22, 'BIKES&SPORTS'),
(23, 'TREVINA'),
(24, 'THE UNIFORM STORE '),
(25, 'LORNAHSPORTS '),
(26, 'CHAPA COPY'),
(27, 'XTREME STYLING'),
(28, 'MICOS DRYCLEANERS '),
(29, 'STEPS'),
(30, 'ARMARIO'),
(31, 'H&CLONDON'),
(32, 'BOMB COSMETICS'),
(33, 'DISCOUNT STORE'),
(34, 'VIVO'),
(35, 'MACKEES'),
(36, 'KINGCROCS'),
(37, 'DOUBLEDRAGON'),
(38, 'MAMBOITALIA'),
(39, 'WING IT'),
(40, 'INDIANKHAZANAH'),
(41, 'TWIGA'),
(42, 'CHAKA'),
(43, 'TAUSI'),
(44, 'AFRICAN LILY'),
(45, 'FLOMAR'),
(46, 'SWEET KIOSK'),
(47, 'SMART PLANET'),
(48, 'FIELD FRESH '),
(49, 'Nairobi Hospital');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) NOT NULL,
  `fullname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `account_type` int(20) NOT NULL DEFAULT '0' COMMENT '0 for active 3 for front desk 5 for inactive',
  `status` varchar(45) NOT NULL DEFAULT 'active',
  `datemodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`,`email`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `fullname`, `email`, `password`, `account_type`, `status`, `datemodified`) VALUES
(1, 'smbugua', 'Simon Mbugua', 'smbugua11@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 0, 'active', '2017-01-10 07:09:09'),
(8, 'Salma', 'Salma Cherono', 'Salma.cherono@gmail.com', 'bad6498396127295db813b230f513b21', 0, 'active', '2016-11-18 10:44:50'),
(24, 'kez', 'Keziah Njoki', 'wakibuna@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 0, 'active', '2018-03-16 11:13:52'),
(25, 'baby', 'angela ingado', 'angela.ingado8417@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 0, 'active', '2018-03-16 11:13:44');

-- --------------------------------------------------------

--
-- Table structure for table `verify`
--

DROP TABLE IF EXISTS `verify`;
CREATE TABLE IF NOT EXISTS `verify` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` int(4) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `verify`
--

INSERT INTO `verify` (`id`, `code`, `status`) VALUES
(1, 5529, 1),
(2, 9181, 1),
(3, 8851, 1),
(4, 1280, 1),
(5, 3113, 1),
(6, 1988, 1),
(7, 1681, 1),
(8, 9373, 1),
(9, 8906, 1),
(10, 1411, 1),
(11, 9409, 0),
(12, 6366, 0);

-- --------------------------------------------------------

--
-- Table structure for table `winner`
--

DROP TABLE IF EXISTS `winner`;
CREATE TABLE IF NOT EXISTS `winner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `campaign` varchar(110) NOT NULL,
  `entryid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `tel` varchar(50) NOT NULL,
  `idno` varchar(50) NOT NULL,
  `raffleno` varchar(110) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `datedrawn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `prize` varchar(400) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `winner`
--

INSERT INTO `winner` (`id`, `campaign`, `entryid`, `name`, `tel`, `idno`, `raffleno`, `status`, `datedrawn`, `prize`) VALUES
(1, 'DRAW ONE', 23, 'roseann kimathi', '+254722874819', '9908744', 'GALLERIA-EASTER-23', 0, '2018-05-02 08:43:37', '97344'),
(2, 'DRAW TWO', 4, 'jillo gababo', '+254715937915', '0027836', 'GALLERIA-EASTER-4', 0, '2018-05-02 08:43:43', '97344');

-- --------------------------------------------------------

--
-- Table structure for table `winnervalentines`
--

DROP TABLE IF EXISTS `winnervalentines`;
CREATE TABLE IF NOT EXISTS `winnervalentines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `campaign` varchar(110) NOT NULL,
  `entryid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `tel` varchar(50) NOT NULL,
  `idno` varchar(50) NOT NULL,
  `raffleno` varchar(110) NOT NULL,
  `weeklylevel` int(11) NOT NULL,
  `grandlevel` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `datedrawn` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `prize` varchar(400) NOT NULL,
  `sponsor` varchar(200) NOT NULL,
  `prizetype` int(11) NOT NULL,
  `issued` varchar(250) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
