-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 15, 2016 at 11:45 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coleman_connection`
--

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `short_name` varchar(10) DEFAULT NULL,
  `long_name` varchar(45) DEFAULT NULL,
  `groupID` tinyint(2) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`id`, `short_name`, `long_name`, `groupID`, `active`) VALUES
(1, 'CHLT', 'Certified Prevention Specialist', 3, 1),
(2, 'LCDC', 'Chemical Dependency Certificate', 3, 1),
(3, 'CMHW', 'Community Health Worker', 3, 1),
(4, 'CTMT', 'Computed Tomography', 2, 1),
(5, 'DNTA', 'Dental Assisting', 1, 1),
(6, 'DHYG', 'Dental Hygiene', 1, 1),
(7, 'DMSO', 'Diagnostic Medical Sonography', 2, 1),
(8, 'HCCA', 'Heatlh Care Academy', 5, 1),
(9, 'HITT', 'Health Information Technology', 3, 1),
(10, 'HTEC', 'Histology Technician', 2, 1),
(11, 'HUST', 'Human Service Technology', 3, 1),
(12, 'MDCA', 'Medical Assistant', 5, 1),
(13, 'MLAB', 'Medical Laboratory Tehcnician', 2, 1),
(14, 'MDSC', 'Medical Scribe', 5, 1),
(15, 'NMIT', 'Nuclear Medicine Technologist', 2, 1),
(16, 'RNSG', 'Nursing Registered Nursing', 4, 1),
(17, 'VNSG', 'Nursing Vocational Nursing', 4, 1),
(18, 'OTHA', 'Occupational Therapy Assistant', 6, 1),
(19, 'PHRA', 'Pharmacy Technician', 3, 1),
(20, 'PTHA', 'Physical Therapist Assistant', 6, 1),
(21, 'RADR', 'Radiography', 2, 1),
(22, 'RSPT', 'Respiratory Therapist', 6, 1),
(23, 'SRGT', 'Surgical Technology', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `program_groups`
--

CREATE TABLE `program_groups` (
  `id` tinyint(2) UNSIGNED NOT NULL,
  `name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `program_groups`
--

INSERT INTO `program_groups` (`id`, `name`) VALUES
(1, 'Dental Services'),
(2, 'Diagnostic Services'),
(3, 'Health Care & Administration'),
(4, 'Nursing'),
(5, 'Patient Care Services'),
(6, 'Therapeutic Services');

-- --------------------------------------------------------

--
-- Table structure for table `registered_sessions`
--

CREATE TABLE `registered_sessions` (
  `stuID` varchar(20) NOT NULL,
  `sessionID` int(10) UNSIGNED DEFAULT NULL,
  `programID` tinyint(3) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` tinyint(2) UNSIGNED NOT NULL,
  `type` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `type`) VALUES
(1, 'admin'),
(2, 'dean'),
(3, 'program director'),
(4, 'counselor'),
(5, 'staff'),
(6, 'secretary'),
(7, 'student'),
(8, 'guest');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(10) UNSIGNED NOT NULL,
  `start_date` datetime DEFAULT NULL,
  `programID` tinyint(3) UNSIGNED DEFAULT NULL,
  `programName` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `stuID` varchar(20) NOT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `sessionID` int(10) UNSIGNED DEFAULT NULL,
  `created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`stuID`, `firstname`, `lastname`, `email`, `password`, `active`, `sessionID`, `created`) VALUES
('1000', 'Octavius', 'Little', 'mauris.rhoncus.id@aauctor.com', 'YJH83YIN2LQ', 1, 0, '2016-04-15'),
('10322', 'Randall', 'Ward', 'Aliquam@orciPhasellus.co.uk', 'YPN77NKW2MC', 1, 0, '2016-04-15'),
('10460', 'Len', 'Bolton', 'a@nislQuisquefringilla.ca', 'FKA44LAL6CM', 1, 0, '2016-04-15'),
('10656', 'Zahir', 'Hawkins', 'lacus.Ut.nec@aliquetPhasellus.edu', 'CHS60MMT5YD', 0, 0, '2016-04-15'),
('11176', 'Boris', 'Vaughan', 'iaculis.aliquet@mus.edu', 'GQE73QJT2SN', 0, 0, '2016-04-15'),
('1159', 'Finn', 'Norris', 'dui.Cum@Suspendissealiquet.edu', 'LNB79YEE8QU', 0, 0, '2016-04-15'),
('1174', 'Chandler', 'Carver', 'tellus.Suspendisse@aliquet.com', 'HWV05JVK0TL', 0, 0, '2016-04-15'),
('1176', 'Elijah', 'Mason', 'adipiscing.elit@tellusSuspendisse.co.uk', 'SBT01OGC0WH', 1, 0, '2016-04-15'),
('12345', 'Richard', 'Peterson', 'rpetersonhcc@gmail.com', '$2y$10$p.o8qFtcZ1yrCF4dA0hbKuN1BcvtPfP7bDvxX6fTvyFu0O/Ha/q3O', 1, NULL, '2016-04-15'),
('1241', 'Rahim', 'Burch', 'suscipit.est.ac@ornare.ca', 'JYB02AIB4NW', 0, 0, '2016-04-15'),
('1270', 'Brent', 'Martinez', 'eu.accumsan.sed@turpisIncondimentum.net', 'YWN79UZS2GC', 1, 0, '2016-04-15'),
('1283', 'Nigel', 'Austin', 'nunc@euenimEtiam.co.uk', 'SUJ36OZF3LU', 1, 0, '2016-04-15'),
('13688', 'Hu', 'Meyers', 'pellentesque.eget@vel.edu', 'PUC19UJR8AX', 1, 0, '2016-04-15'),
('1386', 'Joshua', 'Mccullough', 'euismod.mauris@cursus.ca', 'JWX78PMM9RP', 1, 0, '2016-04-15'),
('14250', 'Neil', 'Macdonald', 'libero.et.tristique@vitae.net', 'LAK19VQU0DE', 0, 0, '2016-04-15'),
('15079', 'Ali', 'Williamson', 'consectetuer.mauris@purusNullamscelerisque.co', 'WIM31YBD8CE', 0, 0, '2016-04-15'),
('1534', 'Allen', 'Harmon', 'orci@Phasellusornare.com', 'KZT41DOJ9ZX', 0, 0, '2016-04-15'),
('1549', 'Troy', 'Ward', 'dolor@velvenenatis.ca', 'NNE49JAC9WA', 1, 0, '2016-04-15'),
('1563', 'Brody', 'Craft', 'Quisque.tincidunt.pede@Nullam.ca', 'XIN02EOB9PY', 0, 0, '2016-04-15'),
('1592', 'Hammett', 'Mays', 'pellentesque.eget@Nuncsollicitudincommodo.edu', 'PNY79QKJ7MH', 1, 0, '2016-04-15'),
('1597', 'Jamal', 'Wheeler', 'volutpat.Nulla.dignissim@faucibuslectusa.ca', 'YBN49QWS6NF', 0, 0, '2016-04-15'),
('16032', 'Benjamin', 'Waters', 'Quisque.varius.Nam@feugiattellus.ca', 'PFO00QNE4GJ', 0, 0, '2016-04-15'),
('16072', 'Rafael', 'Tate', 'sem.semper@pellentesquea.edu', 'UPV26KLG1EE', 1, 0, '2016-04-15'),
('16145', 'Jared', 'Graves', 'id.enim.Curabitur@eu.net', 'TOM12XIJ3OQ', 0, 0, '2016-04-15'),
('16382', 'Ishmael', 'Cleveland', 'imperdiet.erat@Quisquevarius.edu', 'TXJ35MWK3RT', 0, 0, '2016-04-15'),
('1643', 'Chaney', 'Morse', 'mi.tempor@quis.org', 'BNT44TQV9GC', 0, 0, '2016-04-15'),
('1662', 'Hayden', 'Jacobs', 'erat@euodioPhasellus.ca', 'RRQ68EJY0XJ', 0, 0, '2016-04-15'),
('1728', 'Vance', 'Bowers', 'auctor.velit@id.net', 'EGE30JIN1SL', 0, 0, '2016-04-15'),
('17296', 'Lewis', 'Moses', 'feugiat@variusNamporttitor.edu', 'XHP55GDS5GG', 0, 0, '2016-04-15'),
('17324', 'Hilel', 'Bowers', 'sem@magnaatortor.edu', 'DNG02ITX6YH', 0, 0, '2016-04-15'),
('17685', 'Acton', 'Sandoval', 'Phasellus.nulla.Integer@Cumsociisnatoque.edu', 'TSV38YYV3DU', 0, 0, '2016-04-15'),
('1790', 'Steven', 'Mccarthy', 'non@mi.org', 'JFF66DKT1NV', 1, 0, '2016-04-15'),
('1803', 'Anthony', 'Chavez', 'sit@nibhAliquamornare.org', 'GVO61OQP8DV', 1, 0, '2016-04-15'),
('1824', 'Addison', 'Preston', 'montes@ideratEtiam.com', 'ZRC27YUC4DE', 0, 0, '2016-04-15'),
('1827', 'Nehru', 'Flores', 'tellus.sem@eros.com', 'ROR96EGY2CY', 1, 0, '2016-04-15'),
('18996', 'Hector', 'Griffin', 'Cras.dictum.ultricies@libero.net', 'DUD65COX4MK', 1, 0, '2016-04-15'),
('19152', 'Evan', 'Kinney', 'justo@vitaealiquameros.co.uk', 'ZHY89HHP6ZU', 0, 0, '2016-04-15'),
('1931', 'Wade', 'Michael', 'fringilla.Donec@acmetusvitae.net', 'SIU58EVM6IW', 0, 0, '2016-04-15'),
('19552', 'Nathaniel', 'Snyder', 'ac.orci@aliquetvelvulputate.ca', 'OKU40IKH3UE', 1, 0, '2016-04-15'),
('1957', 'Amery', 'Sargent', 'vulputate.eu@interdum.net', 'FIK47AXN0LX', 1, 0, '2016-04-15'),
('1978', 'Oliver', 'Weeks', 'semper.auctor@Ut.edu', 'OWA06GYW2NX', 1, 0, '2016-04-15'),
('1985', 'Flynn', 'Key', 'Sed.auctor@adipiscingfringillaporttitor.co.uk', 'ULA69BCT5VU', 1, 0, '2016-04-15'),
('19877', 'Macaulay', 'Wynn', 'ipsum.dolor.sit@elitpretium.co.uk', 'KRS27DKQ3HR', 1, 0, '2016-04-15'),
('2011', 'Neil', 'Potts', 'montes@dictumplacerataugue.edu', 'KJU95KFP0VS', 1, 0, '2016-04-15'),
('2072', 'Drew', 'Rowland', 'velit@Proin.com', 'WMI51PGU2QB', 1, 0, '2016-04-15'),
('2114', 'Ulric', 'Duke', 'adipiscing.enim.mi@quismassaMauris.co.uk', 'IEK40BBG2CE', 0, 0, '2016-04-15'),
('2208', 'Raymond', 'Shepherd', 'Proin.vel.arcu@nisisemsemper.com', 'ZWS54FHK3WJ', 1, 0, '2016-04-15'),
('22607', 'Reuben', 'Morrison', 'Nunc@ut.ca', 'AEJ48CMM0JJ', 0, 0, '2016-04-15'),
('2293', 'Kermit', 'Patel', 'nec@Phaselluselit.org', 'YQR23LTF2US', 1, 0, '2016-04-15'),
('23814', 'Ulric', 'Levy', 'urna.convallis@molestie.edu', 'CZP07ETH7GQ', 1, 0, '2016-04-15'),
('2395', 'Akeem', 'Garza', 'Quisque.libero.lacus@tristiquesenectus.ca', 'LSU97IWP5II', 1, 0, '2016-04-15'),
('2399', 'Elmo', 'Adkins', 'sed@Nunccommodoauctor.co.uk', 'OAR45TSK7SN', 1, 0, '2016-04-15'),
('24008', 'Jesse', 'Hewitt', 'nisi.sem.semper@justonecante.edu', 'CWB14FTI9XB', 1, 0, '2016-04-15'),
('24053', 'Brett', 'Doyle', 'amet.consectetuer@ornarelectus.org', 'GLN51YWU7DX', 1, 0, '2016-04-15'),
('2415', 'Gray', 'Vasquez', 'Pellentesque.habitant.morbi@ipsumdolorsit.ca', 'LJV91API1MU', 0, 0, '2016-04-15'),
('2419', 'Louis', 'Mccoy', 'velit.eu.sem@Donecsollicitudinadipiscing.org', 'FJH42MEC9IL', 0, 0, '2016-04-15'),
('2428', 'Isaac', 'Morin', 'dui.in@volutpatNullafacilisis.co.uk', 'GCG16SVE2JV', 0, 0, '2016-04-15'),
('2500', 'Ulysses', 'Haley', 'tempus.risus@nonlobortisquis.edu', 'GXS60XLS2CI', 1, 0, '2016-04-15'),
('25061', 'Forrest', 'Mayo', 'ultricies@arcu.ca', 'LSK84OPZ4FD', 1, 0, '2016-04-15'),
('25155', 'Tate', 'Acevedo', 'In@Quisqueimperdieterat.ca', 'POQ06IMO3RB', 1, 0, '2016-04-15'),
('2568', 'Wallace', 'Sloan', 'parturient@ipsum.net', 'EUA24XVF1NC', 1, 0, '2016-04-15'),
('25889', 'Theodore', 'Ruiz', 'Sed.id@orciluctuset.net', 'ZIU67RRB9WG', 1, 0, '2016-04-15'),
('2597', 'Hu', 'Yates', 'diam.lorem@mi.edu', 'ZTX63SJX8OC', 1, 0, '2016-04-15'),
('26009', 'Gray', 'Beasley', 'dolor@Nullafacilisis.com', 'COX27HPT8HC', 1, 0, '2016-04-15'),
('2657', 'Brady', 'Bean', 'Vivamus@interdumenim.edu', 'YGG44RVS3RE', 0, 0, '2016-04-15'),
('26934', 'Tobias', 'Eaton', 'sed.tortor.Integer@pharetrafelis.com', 'WNI68DHX8FT', 1, 0, '2016-04-15'),
('2726', 'Rudyard', 'Steele', 'Donec.nibh.Quisque@pharetraNam.co.uk', 'CXQ24HHU0KJ', 1, 0, '2016-04-15'),
('2728', 'Stephen', 'Hernandez', 'et.pede.Nunc@magna.edu', 'UAR92XXG7ZD', 0, 0, '2016-04-15'),
('2736', 'Jonas', 'Collier', 'urna@aliquam.com', 'EQP38LKG8VI', 1, 0, '2016-04-15'),
('2742', 'Kirk', 'Rush', 'et.lacinia.vitae@loremluctus.co.uk', 'IKD69OFB6TJ', 1, 0, '2016-04-15'),
('2758', 'Colby', 'Giles', 'placerat@risus.edu', 'DTN48DCR4PV', 1, 0, '2016-04-15'),
('27826', 'Fulton', 'Finley', 'non.cursus.non@parturientmontesnascetur.org', 'UJM35JIZ6BU', 1, 0, '2016-04-15'),
('2875', 'Josiah', 'Richards', 'Aliquam@facilisiSed.com', 'MDL55NCX2YO', 0, 0, '2016-04-15'),
('29159', 'Damon', 'Bray', 'tempor.erat.neque@Proin.com', 'ZFI45KVU0NC', 0, 0, '2016-04-15'),
('2948', 'Edward', 'Rivers', 'Pellentesque.ut@feugiattellus.net', 'HQS04EIJ9GL', 0, 0, '2016-04-15'),
('29502', 'Melvin', 'Jacobson', 'felis.ullamcorper.viverra@euaugueporttitor.co', 'ZNI66JRH2VA', 0, 0, '2016-04-15'),
('2982', 'Octavius', 'Petersen', 'sem.elit@facilisismagnatellus.com', 'EDV19ZYK0HN', 1, 0, '2016-04-15'),
('3015', 'Clayton', 'Simpson', 'quam@arcuimperdiet.ca', 'RXW26RJD8QV', 1, 0, '2016-04-15'),
('3080', 'Chester', 'May', 'commodo.tincidunt@vitaesemper.org', 'DSG66OKH4RY', 0, 0, '2016-04-15'),
('31450', 'Philip', 'Dickson', 'lacus.Nulla@Sedneque.ca', 'FRQ31PCE6LQ', 1, 0, '2016-04-15'),
('31498', 'Isaiah', 'Cooley', 'semper.et.lacinia@tellus.ca', 'SKH85VEK9UL', 0, 0, '2016-04-15'),
('3188', 'Josiah', 'Humphrey', 'Nullam.feugiat@semperegestas.co.uk', 'ASL69AXX9TA', 1, 0, '2016-04-15'),
('32188', 'Palmer', 'Chan', 'tempus@enim.co.uk', 'GIU20WZF3JW', 1, 0, '2016-04-15'),
('32671', 'Orlando', 'Parsons', 'massa@non.ca', 'THQ81EDX8XU', 0, 0, '2016-04-15'),
('3270', 'Emery', 'Potter', 'vel.arcu@imperdiet.net', 'BMF32GEO3GL', 1, 0, '2016-04-15'),
('32927', 'Timothy', 'Hobbs', 'taciti.sociosqu@egetvolutpatornare.co.uk', 'ENS32OVE1RB', 0, 0, '2016-04-15'),
('33017', 'Elliott', 'Mccoy', 'arcu.Sed@velnislQuisque.edu', 'BGM83JDO0XQ', 1, 0, '2016-04-15'),
('3373', 'Dillon', 'Webster', 'nisl.sem@Maecenasornareegestas.net', 'ETY90RQD5YW', 0, 0, '2016-04-15'),
('3408', 'Emmanuel', 'Shepard', 'ac.risus@nec.org', 'RHI07SVS9HW', 0, 0, '2016-04-15'),
('34164', 'Dalton', 'Wilcox', 'netus.et.malesuada@InfaucibusMorbi.com', 'FEL92RWX4QJ', 0, 0, '2016-04-15'),
('35114', 'Plato', 'Whitaker', 'turpis.Aliquam@Naminterdumenim.co.uk', 'MTG59HUU3KU', 0, 0, '2016-04-15'),
('3543', 'Deacon', 'Duncan', 'sit.amet.diam@nulla.org', 'PJP69PUJ7NM', 0, 0, '2016-04-15'),
('36813', 'Orlando', 'Burks', 'sit.amet@Morbiquis.co.uk', 'QFD24NRY3TE', 0, 0, '2016-04-15'),
('37189', 'Ryder', 'Graham', 'ac.tellus.Suspendisse@nuncest.com', 'SKF12NEE3UJ', 0, 0, '2016-04-15'),
('3720', 'Otto', 'Tucker', 'nibh.lacinia@nullaIn.org', 'WHH90TZG2ZD', 0, 0, '2016-04-15'),
('3812', 'Ulysses', 'Heath', 'Fusce.fermentum.fermentum@eleifendnon.co.uk', 'CYJ86SQR8IO', 0, 0, '2016-04-15'),
('3854', 'Kane', 'Medina', 'Phasellus.dolor@pharetrafelis.ca', 'MHY80HYO3XD', 1, 0, '2016-04-15'),
('3930', 'Axel', 'Salas', 'lobortis@necenim.org', 'KJR57JBS9AH', 0, 0, '2016-04-15'),
('3956', 'Logan', 'Albert', 'Nunc.lectus@sedestNunc.edu', 'GUN45CTF2EQ', 0, 0, '2016-04-15'),
('3972', 'Asher', 'Goodman', 'mi.felis.adipiscing@aliquet.net', 'YHL08CMM5TN', 0, 0, '2016-04-15'),
('3986', 'Amery', 'Wood', 'scelerisque@maurissapiencursus.org', 'QIW22EQB4XY', 1, 0, '2016-04-15'),
('4025', 'Nigel', 'Tyson', 'risus.quis@ametmetus.net', 'REG15SHT5IQ', 0, 0, '2016-04-15'),
('4033', 'Dominic', 'Petty', 'nulla.Cras@congueaaliquet.co.uk', 'AEK53LSY5KQ', 1, 0, '2016-04-15'),
('4049', 'Cadman', 'Christensen', 'Integer@et.co.uk', 'MRP74EQW3NV', 0, 0, '2016-04-15'),
('4050', 'Zachery', 'Ray', 'risus@nibhlaciniaorci.co.uk', 'UNY92LLG4HA', 0, 0, '2016-04-15'),
('40515', 'Patrick', 'Cameron', 'ultrices.Vivamus.rhoncus@felisNullatempor.org', 'NQL54TQL0WI', 1, 0, '2016-04-15'),
('4054', 'Leo', 'Bell', 'Sed.eget@eusemPellentesque.org', 'DNS81SIP1RQ', 0, 0, '2016-04-15'),
('4065', 'Colby', 'Hartman', 'diam.vel@nequeMorbiquis.org', 'RKN76VFC0JO', 1, 0, '2016-04-15'),
('4073', 'Justin', 'Gomez', 'sed@Donec.edu', 'WCX87UXY0AA', 1, 0, '2016-04-15'),
('4089', 'Hunter', 'Sutton', 'pharetra@maurisut.com', 'YZO02NXO0HK', 1, 0, '2016-04-15'),
('41148', 'William', 'Garza', 'tempus.scelerisque@montesnascetur.co.uk', 'HXD15UVT4VP', 0, 0, '2016-04-15'),
('4152', 'Cyrus', 'Nixon', 'magna@Proin.net', 'ORK93SCM2BC', 1, 0, '2016-04-15'),
('4205', 'Abbot', 'Salas', 'ut@eu.edu', 'QTW20RLK7SC', 1, 0, '2016-04-15'),
('4246', 'Marvin', 'Wood', 'tempor.diam.dictum@lectusNullam.com', 'FRU66TOP9TY', 1, 0, '2016-04-15'),
('4261', 'Brendan', 'Hendricks', 'ultrices@ProinmiAliquam.co.uk', 'WLK36JWM8AJ', 1, 0, '2016-04-15'),
('4334', 'Robert', 'Banks', 'aliquet.diam@magnaPraesent.org', 'ODL96OSZ8PR', 0, 0, '2016-04-15'),
('4372', 'Benedict', 'Medina', 'ornare.egestas@libero.ca', 'ZTZ07WOM3DK', 1, 0, '2016-04-15'),
('4378', 'Hasad', 'Dawson', 'convallis.in@estarcu.net', 'BEV04QAM0XC', 0, 0, '2016-04-15'),
('4380', 'Ali', 'Mccoy', 'feugiat.tellus@estarcuac.ca', 'WXI45IVT6NX', 0, 0, '2016-04-15'),
('4414', 'Solomon', 'James', 'luctus.lobortis.Class@ut.edu', 'GRU77NLS0KV', 1, 0, '2016-04-15'),
('4415', 'Brent', 'Diaz', 'ultrices.iaculis.odio@gravida.net', 'OGM75LBU7XI', 1, 0, '2016-04-15'),
('4420', 'Vladimir', 'Roberson', 'quis@CuraePhasellus.org', 'FQN73DAR0JC', 0, 0, '2016-04-15'),
('4456', 'Anthony', 'Noble', 'purus.ac.tellus@tristiquenequevenenatis.co.uk', 'WCC82YHR8PK', 0, 0, '2016-04-15'),
('4463', 'Benjamin', 'Olson', 'purus.accumsan.interdum@orci.ca', 'IKT92NAN9HE', 0, 0, '2016-04-15'),
('4486', 'Galvin', 'Harper', 'eleifend.vitae.erat@euaccumsansed.edu', 'SCY73BXL0DH', 1, 0, '2016-04-15'),
('45151', 'David', 'Herman', 'nunc.id.enim@nec.co.uk', 'PBY68SAP6EB', 1, 0, '2016-04-15'),
('4562', 'Louis', 'Schwartz', 'in.tempus@dictum.edu', 'KYN94MYQ0NW', 0, 0, '2016-04-15'),
('4584', 'Brendan', 'Downs', 'libero.at@etmalesuada.org', 'FIV53QNF3OW', 1, 0, '2016-04-15'),
('45943', 'Lance', 'Stuart', 'erat.vel@auctorullamcorper.co.uk', 'JYH28WVA8LG', 0, 0, '2016-04-15'),
('46111', 'Asher', 'Dalton', 'Pellentesque.ut@Suspendisse.edu', 'NIJ02KAH9TO', 1, 0, '2016-04-15'),
('46316', 'Theodore', 'Price', 'sem@habitant.org', 'FYW80GBG2AQ', 1, 0, '2016-04-15'),
('4639', 'Matthew', 'Hess', 'lobortis@ametorciUt.co.uk', 'SQS49JKN7HU', 0, 0, '2016-04-15'),
('46587', 'Lester', 'Levy', 'sodales.Mauris@quamquis.com', 'OTD60YUC1HJ', 0, 0, '2016-04-15'),
('47055', 'Lamar', 'Burnett', 'quis.diam.luctus@molestie.co.uk', 'HQA52NCH0SB', 0, 0, '2016-04-15'),
('4779', 'Ciaran', 'Deleon', 'non.sapien@Praesenteu.org', 'BLE69GLL6AK', 0, 0, '2016-04-15'),
('4841', 'Dante', 'Quinn', 'malesuada.malesuada@mollislectuspede.edu', 'UQE29IAF7TK', 1, 0, '2016-04-15'),
('4877', 'Octavius', 'Shields', 'nulla.ante@eros.edu', 'FDB79HDN0FL', 1, 0, '2016-04-15'),
('4926', 'Chester', 'Bryan', 'pede.nec.ante@porttitor.com', 'AUE68IIZ0FV', 0, 0, '2016-04-15'),
('4966', 'Owen', 'Whitehead', 'aliquet.molestie.tellus@accumsan.com', 'EON29YHE1XS', 0, 0, '2016-04-15'),
('50250', 'Kareem', 'Singleton', 'Nam.tempor@Curae.com', 'MUW63HDQ3QH', 1, 0, '2016-04-15'),
('5033', 'Kermit', 'Rollins', 'id.risus.quis@Loremipsum.co.uk', 'CPZ62ANA5IT', 1, 0, '2016-04-15'),
('51623', 'Knox', 'Wheeler', 'arcu.imperdiet.ullamcorper@penatibusetmagnis.', 'JSZ25GGB6US', 1, 0, '2016-04-15'),
('5176', 'Dennis', 'Arnold', 'Fusce.dolor.quam@sodalesat.co.uk', 'CXJ88WDI3SO', 1, 0, '2016-04-15'),
('51829', 'Rafael', 'Mcmillan', 'ullamcorper.velit.in@etmalesuada.com', 'RUS33DMX3VN', 1, 0, '2016-04-15'),
('5207', 'Magee', 'Craig', 'parturient.montes@utsem.org', 'EHZ41GQD8NV', 0, 0, '2016-04-15'),
('5221', 'Cameron', 'Valdez', 'Aenean@consequatenim.co.uk', 'FXE87FAH0RM', 0, 0, '2016-04-15'),
('5225', 'Galvin', 'Knowles', 'nec@tempor.edu', 'XTB73DMW1UF', 1, 0, '2016-04-15'),
('5226', 'Hamilton', 'Porter', 'vel.venenatis@mauris.com', 'RVE66FHS2OI', 1, 0, '2016-04-15'),
('52368', 'Zahir', 'Beard', 'et.magnis@a.co.uk', 'SSG53VWZ2ZJ', 0, 0, '2016-04-15'),
('5266', 'Christian', 'Burt', 'In.tincidunt@nulla.org', 'MFT33III7MW', 1, 0, '2016-04-15'),
('5320', 'Alfonso', 'Small', 'eget.massa@ornare.org', 'JMT90FWT8RG', 0, 0, '2016-04-15'),
('5323', 'Russell', 'Estes', 'mi.pede@posuerevulputate.edu', 'SYN92UNG8HA', 0, 0, '2016-04-15'),
('5352', 'Finn', 'Robertson', 'mauris@aliquet.ca', 'OZB51PDA6CV', 0, 0, '2016-04-15'),
('5372', 'Marvin', 'Griffin', 'augue.id@malesuada.ca', 'IEU99ZIA8FD', 1, 0, '2016-04-15'),
('5376', 'Griffith', 'Delacruz', 'Vivamus.nisi@pulvinararcu.net', 'WTA12SVW6TY', 1, 0, '2016-04-15'),
('5437', 'Wade', 'Webb', 'Cras.pellentesque.Sed@eunullaat.org', 'YKK41SEN6ZX', 0, 0, '2016-04-15'),
('5526', 'Gareth', 'Harper', 'enim.nec@ligulaNullam.net', 'GKM43DFH8YG', 1, 0, '2016-04-15'),
('55279', 'Castor', 'Salinas', 'Pellentesque.habitant@nibhlacinia.edu', 'VID38FSL6VY', 0, 0, '2016-04-15'),
('5555', 'Grady', 'Gibbs', 'eu@Aliquameratvolutpat.net', 'BYW47WQH8NO', 0, 0, '2016-04-15'),
('5559', 'Gregory', 'Combs', 'cursus.et.magna@temporbibendum.co.uk', 'DNC19PWT5EO', 0, 0, '2016-04-15'),
('5598', 'Hayes', 'Bush', 'Nulla.tempor.augue@lacus.edu', 'HDN27VGY9JX', 1, 0, '2016-04-15'),
('5649', 'Emery', 'Britt', 'consequat.enim@doloregestasrhoncus.edu', 'XEP16RNZ5WB', 0, 0, '2016-04-15'),
('56658', 'Zachery', 'Waller', 'Phasellus.ornare.Fusce@at.edu', 'BOL00PXL9DS', 1, 0, '2016-04-15'),
('5715', 'Charles', 'Shannon', 'quam.Pellentesque.habitant@Etiamimperdiet.edu', 'OHZ24VIK3SZ', 0, 0, '2016-04-15'),
('5720', 'Dale', 'Bradford', 'non.luctus.sit@aceleifend.edu', 'HMA06EPO1YS', 0, 0, '2016-04-15'),
('5767', 'Fritz', 'Snow', 'id.blandit.at@Craseu.net', 'YBG31QMV4EK', 1, 0, '2016-04-15'),
('5787', 'Lev', 'Blackburn', 'Nulla@ipsumdolorsit.ca', 'IJO38QHW2TE', 1, 0, '2016-04-15'),
('5867', 'Omar', 'Lamb', 'porttitor.eros@eratin.com', 'NQH21TSJ0RG', 1, 0, '2016-04-15'),
('58898', 'Roth', 'Mooney', 'rhoncus.Donec@lacusQuisque.net', 'VEZ80ASO0ME', 0, 0, '2016-04-15'),
('5913', 'Simon', 'Black', 'metus.Aliquam.erat@justo.edu', 'RJF46AEX8TI', 0, 0, '2016-04-15'),
('6007', 'Rafael', 'Conway', 'non.arcu@sedfacilisisvitae.edu', 'NZU09EFH0UH', 1, 0, '2016-04-15'),
('6009', 'Joshua', 'Salazar', 'ipsum.cursus.vestibulum@euneque.org', 'DPQ27OEV2RA', 0, 0, '2016-04-15'),
('6010', 'Emerson', 'Byrd', 'aliquam.iaculis.lacus@variusultricesmauris.ca', 'MEN02FPG5EJ', 0, 0, '2016-04-15'),
('6082', 'Raymond', 'Sweeney', 'Cras@odio.net', 'CDK19HOV4BP', 1, 0, '2016-04-15'),
('6162', 'Murphy', 'Collins', 'lacus@erosNam.com', 'EEA81KHG9KH', 0, 0, '2016-04-15'),
('61743', 'Lane', 'Moses', 'aliquam.enim.nec@Namligulaelit.edu', 'XOT24FTM8XH', 0, 0, '2016-04-15'),
('61999', 'Amery', 'Rasmussen', 'Sed@tellusid.ca', 'KSE15ZRY6DL', 1, 0, '2016-04-15'),
('6258', 'Thor', 'Landry', 'vel@cursus.org', 'NDY62WWC2WK', 1, 0, '2016-04-15'),
('6422', 'Ulric', 'Frost', 'hendrerit@fringillaornare.co.uk', 'LLV01YBB9RT', 1, 0, '2016-04-15'),
('64778', 'Ali', 'Morin', 'Etiam.laoreet.libero@tellusSuspendisse.org', 'OSN64GNS6AK', 0, 0, '2016-04-15'),
('6568', 'Chaney', 'Lucas', 'ullamcorper.Duis@facilisis.net', 'QMS71IMH8EV', 1, 0, '2016-04-15'),
('6638', 'Chadwick', 'Prince', 'eget.mollis@sagittis.co.uk', 'SQQ67DQL8EG', 1, 0, '2016-04-15'),
('6666', 'Zeph', 'Dillon', 'Donec.porttitor.tellus@aliquamiaculis.org', 'VXU48MUG4BG', 1, 0, '2016-04-15'),
('6667', 'Flynn', 'Graves', 'orci.lobortis.augue@rhoncus.com', 'ISN54XGU9FL', 0, 0, '2016-04-15'),
('66904', 'Blaze', 'Owen', 'nunc.id.enim@dictum.ca', 'QHV10UQC5VK', 1, 0, '2016-04-15'),
('6712', 'Richard', 'Blair', 'semper.et.lacinia@eu.co.uk', 'XXJ14VTD0ZS', 0, 0, '2016-04-15'),
('6727', 'Paki', 'Burch', 'at.lacus@tristiquepharetra.co.uk', 'TND97CWA0XV', 1, 0, '2016-04-15'),
('67458', 'Alan', 'Savage', 'aliquam@estac.edu', 'HGU47EDT4WL', 1, 0, '2016-04-15'),
('6970', 'Otto', 'Barry', 'morbi.tristique@dictum.ca', 'TJY35XND3GF', 1, 0, '2016-04-15'),
('6998', 'Zeph', 'Finch', 'Morbi.metus.Vivamus@sapienAeneanmassa.ca', 'RDB38FZF2GT', 0, 0, '2016-04-15'),
('70124', 'Ali', 'Browning', 'lacus@neque.net', 'AUK02HTT7PC', 1, 0, '2016-04-15'),
('7039', 'Omar', 'Carrillo', 'turpis.egestas.Fusce@Pellentesquetincidunt.ed', 'CRG14IGA2DQ', 0, 0, '2016-04-15'),
('7060', 'Reese', 'Durham', 'semper.rutrum.Fusce@acorciUt.co.uk', 'TUG46NNC8DM', 0, 0, '2016-04-15'),
('70925', 'Fuller', 'French', 'Aliquam@Nuncmauris.org', 'PDU48MBO1HV', 1, 0, '2016-04-15'),
('7121', 'Christopher', 'Flynn', 'gravida.mauris.ut@ipsum.co.uk', 'VQP82IYZ7LY', 0, 0, '2016-04-15'),
('71351', 'Dante', 'Hunt', 'Phasellus@luctuslobortisClass.edu', 'IPO09VZG1FD', 0, 0, '2016-04-15'),
('7153', 'Jin', 'Martin', 'vitae@tempusrisusDonec.com', 'MFT25VQT5TB', 1, 0, '2016-04-15'),
('7157', 'Stone', 'Hernandez', 'Integer@Curabitur.edu', 'ODG07BPI9OX', 0, 0, '2016-04-15'),
('7182', 'Yasir', 'Brennan', 'fermentum.risus.at@utaliquam.edu', 'OCG63URI1AP', 1, 0, '2016-04-15'),
('72674', 'Moses', 'Mercer', 'consectetuer.adipiscing.elit@dictum.ca', 'SXN73JTU0OD', 1, 0, '2016-04-15'),
('7308', 'Plato', 'Dennis', 'Nam.interdum@a.com', 'OVU04KAA4XO', 0, 0, '2016-04-15'),
('73221', 'Yardley', 'Carrillo', 'quam.Curabitur@neque.edu', 'QEU53CWP9KO', 1, 0, '2016-04-15'),
('73941', 'Dieter', 'Dale', 'dictum@Donec.edu', 'IBQ87VGH3ML', 0, 0, '2016-04-15'),
('7453', 'Davis', 'Stanton', 'aliquet@liberoProin.org', 'NOI56PRF2IZ', 0, 0, '2016-04-15'),
('74672', 'Warren', 'Spears', 'urna@sitamet.com', 'LHM06BWE7QO', 1, 0, '2016-04-15'),
('74810', 'Fuller', 'White', 'Suspendisse@variuset.org', 'UVL54OTI6SH', 0, 0, '2016-04-15'),
('7558', 'Hamilton', 'Mccall', 'aliquam@nec.co.uk', 'KGD96XSH3VP', 1, 0, '2016-04-15'),
('7567', 'Phillip', 'Moore', 'blandit.congue.In@tristiquepharetraQuisque.ed', 'RUQ25UXY4JY', 1, 0, '2016-04-15'),
('76025', 'Rogan', 'Owen', 'scelerisque.mollis@velit.com', 'OZD70CVU5TJ', 0, 0, '2016-04-15'),
('7620', 'Harrison', 'Lynch', 'eros@acmattisornare.co.uk', 'CCB32ZTV5NM', 1, 0, '2016-04-15'),
('76200', 'Robert', 'Kent', 'venenatis.vel@a.edu', 'QLA39RYT3VP', 1, 0, '2016-04-15'),
('7686', 'Brandon', 'Norris', 'vel.pede@massa.org', 'VRH97UBG4HS', 0, 0, '2016-04-15'),
('7720', 'Kareem', 'Roy', 'et.eros.Proin@Nuncut.ca', 'MTW18NAD0KV', 0, 0, '2016-04-15'),
('7741', 'Craig', 'Gill', 'dictum.cursus.Nunc@Crasdolordolor.com', 'PCZ67RKI0QM', 1, 0, '2016-04-15'),
('7761', 'Moses', 'Bradford', 'velit.egestas.lacinia@urnaVivamus.ca', 'SLQ40KBF2LC', 1, 0, '2016-04-15'),
('7771', 'Murphy', 'Willis', 'id@Quisqueornaretortor.com', 'KPR96PIR7PC', 1, 0, '2016-04-15'),
('7773', 'Jerome', 'Thomas', 'litora.torquent.per@elitafeugiat.org', 'RZS21ZVR8XT', 0, 0, '2016-04-15'),
('77803', 'August', 'Calhoun', 'vulputate@eu.org', 'YTM61XFK2UD', 1, 0, '2016-04-15'),
('7837', 'Barrett', 'Rodgers', 'eget.magna.Suspendisse@felisegetvarius.co.uk', 'KBY01SNM2IP', 0, 0, '2016-04-15'),
('7852', 'Levi', 'Pickett', 'Aliquam@scelerisqueneque.net', 'HOY57AED6MA', 0, 0, '2016-04-15'),
('78685', 'Colby', 'Becker', 'a.nunc@non.com', 'ETK55VSG0BB', 1, 0, '2016-04-15'),
('7875', 'Kasper', 'Riggs', 'Donec@sapiencursus.ca', 'OKW65YWF6EF', 1, 0, '2016-04-15'),
('7888', 'Graiden', 'Patton', 'senectus@seddolor.ca', 'HEB83MSR9UW', 1, 0, '2016-04-15'),
('7913', 'Matthew', 'Huff', 'Nam.ligula@Vestibulum.org', 'RGR36YXD6MQ', 0, 0, '2016-04-15'),
('8005', 'Porter', 'Jacobs', 'gravida@imperdieterat.edu', 'XLW02OZX5HA', 0, 0, '2016-04-15'),
('80611', 'Castor', 'Beasley', 'ultrices.posuere.cubilia@ametluctusvulputate.', 'XIK10ZFR1LB', 1, 0, '2016-04-15'),
('8106', 'Ahmed', 'Ayala', 'dapibus@augueid.edu', 'ZWL46TII3DU', 0, 0, '2016-04-15'),
('8118', 'Neil', 'Fisher', 'Phasellus.in.felis@eros.org', 'SNR28PPR4UX', 1, 0, '2016-04-15'),
('8129', 'Keane', 'Valdez', 'sem@nonjusto.co.uk', 'EOQ57QUB0QO', 0, 0, '2016-04-15'),
('8137', 'Damian', 'Serrano', 'elit@sedestNunc.edu', 'EQG16IVT2ZH', 0, 0, '2016-04-15'),
('82227', 'Ira', 'Hansen', 'ut.sem@montesnasceturridiculus.edu', 'SIC41ARS3OD', 0, 0, '2016-04-15'),
('8265', 'Derek', 'Cunningham', 'at.egestas.a@quis.com', 'TMS07YOH3QM', 0, 0, '2016-04-15'),
('83007', 'Colt', 'Conway', 'luctus.lobortis.Class@massaQuisqueporttitor.c', 'DHP12YLA4IP', 0, 0, '2016-04-15'),
('8351', 'Nero', 'Bates', 'sit.amet@VivamusnisiMauris.org', 'WUR50FXW5IQ', 1, 0, '2016-04-15'),
('8358', 'Tanner', 'Roberts', 'cursus.et.eros@utmiDuis.net', 'KZT94VWZ8TL', 0, 0, '2016-04-15'),
('8392', 'Valentine', 'Beck', 'imperdiet@malesuadafamesac.org', 'LJE32JIA0VA', 1, 0, '2016-04-15'),
('84177', 'Kirk', 'Sloan', 'penatibus.et.magnis@Vivamusnon.com', 'SPG28RDI3PS', 1, 0, '2016-04-15'),
('8439', 'Brennan', 'Mcdonald', 'turpis.nec.mauris@aclibero.co.uk', 'GLA46MCH5ES', 1, 0, '2016-04-15'),
('84601', 'Cody', 'Cain', 'tellus.imperdiet@eget.ca', 'CQG76TEK8ES', 0, 0, '2016-04-15'),
('8461', 'Keefe', 'Ward', 'tortor.at@cursusnonegestas.net', 'PLL49GTD5JO', 1, 0, '2016-04-15'),
('8470', 'Tobias', 'Cherry', 'Integer.aliquam.adipiscing@adlitoratorquent.c', 'PZY75MBT0AG', 0, 0, '2016-04-15'),
('8471', 'Levi', 'Fry', 'volutpat.ornare.facilisis@Aeneaneget.net', 'FDB58WTA6MH', 0, 0, '2016-04-15'),
('84804', 'Caldwell', 'Pierce', 'hendrerit.a@est.org', 'YGG47GPZ1NO', 0, 0, '2016-04-15'),
('84853', 'Hoyt', 'Bryant', 'sodales.purus@placeratorcilacus.co.uk', 'SUL03HPV2WB', 1, 0, '2016-04-15'),
('8504', 'Chadwick', 'Wallace', 'aliquet.vel.vulputate@risusIn.co.uk', 'DYZ62KKJ0AE', 0, 0, '2016-04-15'),
('8511', 'Quinn', 'Wilkerson', 'egestas@elitpedemalesuada.com', 'CQO03CSV2AF', 0, 0, '2016-04-15'),
('85418', 'Neville', 'Daugherty', 'aliquet@Aliquam.edu', 'JWN55RRH6XQ', 0, 0, '2016-04-15'),
('8546', 'Arsenio', 'Joyner', 'conubia.nostra@fermentumarcu.edu', 'JKQ90EFS7VC', 1, 0, '2016-04-15'),
('855', 'Ignatius', 'Schmidt', 'lacus.Etiam@amet.org', 'ZFJ55YEK6HO', 0, 0, '2016-04-15'),
('8588', 'Kenneth', 'Melendez', 'consequat@sociisnatoque.com', 'ULQ80IHL4CY', 1, 0, '2016-04-15'),
('8615', 'Keith', 'Pate', 'imperdiet.erat.nonummy@orciluctus.com', 'FVU23TAJ3VD', 1, 0, '2016-04-15'),
('8620', 'Cody', 'Mercer', 'eu@conubianostra.org', 'CIB88THJ2JE', 1, 0, '2016-04-15'),
('8632', 'Tyler', 'Mathis', 'vel@nisi.co.uk', 'JTV53LMZ7PC', 0, 0, '2016-04-15'),
('8633', 'Jonah', 'Buck', 'venenatis.vel.faucibus@Nulla.edu', 'UNX16OXO8PD', 1, 0, '2016-04-15'),
('8673', 'Fitzgerald', 'Vaughn', 'eleifend.Cras@molestiearcuSed.com', 'ULJ59LEY9CD', 1, 0, '2016-04-15'),
('8674', 'Thor', 'Gilbert', 'egestas.a@facilisi.ca', 'NCK33QGP9GG', 0, 0, '2016-04-15'),
('8709', 'Stone', 'Kirkland', 'dui.nec.urna@enim.edu', 'HMJ20WUT1AF', 0, 0, '2016-04-15'),
('8739', 'Ronan', 'Tran', 'molestie@euismodest.edu', 'LED23ECC7MO', 0, 0, '2016-04-15'),
('8748', 'Macon', 'Browning', 'at.risus@mi.ca', 'BZY04ZIK9US', 1, 0, '2016-04-15'),
('8755', 'Hilel', 'Tyler', 'dolor.elit.pellentesque@tacitisociosquad.com', 'FSJ15JQC8ME', 0, 0, '2016-04-15'),
('8761', 'Jackson', 'Small', 'egestas.nunc.sed@dapibusligula.net', 'ZKD81KGR6AM', 0, 0, '2016-04-15'),
('87650', 'Luke', 'Sawyer', 'dictum.Phasellus.in@semperauctor.ca', 'LSO08XYL2GU', 1, 0, '2016-04-15'),
('8770', 'Odysseus', 'Spencer', 'dignissim.lacus@feugiatnec.com', 'BLY40IPA7IQ', 1, 0, '2016-04-15'),
('8771', 'Kane', 'Stark', 'magna.Nam@pedeblanditcongue.com', 'FCF68NHJ4VL', 1, 0, '2016-04-15'),
('8884', 'Octavius', 'Orr', 'rhoncus.id.mollis@Curabiturconsequatlectus.ed', 'NCP87ITN5SV', 0, 0, '2016-04-15'),
('8886', 'Chadwick', 'Tran', 'accumsan@non.org', 'UIY37BHU6KA', 0, 0, '2016-04-15'),
('8889', 'Maxwell', 'Salazar', 'In.at.pede@Craseu.com', 'TTP55MTO0ZI', 1, 0, '2016-04-15'),
('88997', 'Kenneth', 'Duffy', 'molestie.arcu@elementumlorem.com', 'FBD85AJZ7SB', 0, 0, '2016-04-15'),
('8904', 'Clarke', 'Osborn', 'Fusce.aliquet.magna@Suspendisse.org', 'NSL69SFU0BX', 0, 0, '2016-04-15'),
('8906', 'Ferdinand', 'Bernard', 'scelerisque.lorem@molestie.co.uk', 'RPU01IYB3FK', 1, 0, '2016-04-15'),
('8909', 'Jeremy', 'Maynard', 'Suspendisse@rhoncusid.ca', 'EAE49OGW2PO', 1, 0, '2016-04-15'),
('8927', 'Nathan', 'Guy', 'ultrices@feugiat.co.uk', 'EOF86QLI4DX', 0, 0, '2016-04-15'),
('8939', 'Ralph', 'Hanson', 'ultrices.iaculis.odio@veliteu.com', 'CZU94ZHT0HE', 0, 0, '2016-04-15'),
('89524', 'Brody', 'Roman', 'Nulla@odioPhasellusat.edu', 'UXZ47JBX6FE', 0, 0, '2016-04-15'),
('8956', 'Gregory', 'Lloyd', 'imperdiet.ullamcorper.Duis@ligula.edu', 'VHJ92ZTA6XK', 0, 0, '2016-04-15'),
('89719', 'Thor', 'Barrett', 'turpis.egestas@ridiculus.com', 'IMJ31ZIU6NP', 0, 0, '2016-04-15'),
('91113', 'Hyatt', 'White', 'at@sagittissemperNam.org', 'HYG95FAT6OQ', 1, 0, '2016-04-15'),
('9188', 'Charles', 'Good', 'egestas.nunc.sed@risusodioauctor.edu', 'SQI53LUO5NI', 0, 0, '2016-04-15'),
('92467', 'Emerson', 'Glass', 'vel@Donecegestas.co.uk', 'KVQ94OTE2OJ', 0, 0, '2016-04-15'),
('9258', 'Stewart', 'Hayes', 'dui@interdumliberodui.co.uk', 'HBA73JEG4JY', 0, 0, '2016-04-15'),
('9270', 'Ulric', 'Pena', 'quis.massa@risusquis.ca', 'PDZ63JYU2EG', 0, 0, '2016-04-15'),
('92844', 'Oscar', 'Hale', 'et@lacinia.ca', 'AZU37IVY7XL', 1, 0, '2016-04-15'),
('9329', 'Erasmus', 'Hickman', 'Fusce@inconsectetuer.ca', 'IDN65MHM3AP', 0, 0, '2016-04-15'),
('93308', 'Zachary', 'Walls', 'nibh@felis.edu', 'OJC77YPB7DC', 1, 0, '2016-04-15'),
('9368', 'Dalton', 'Ruiz', 'vulputate.velit@porttitorinterdum.org', 'MBG96MRI8XG', 1, 0, '2016-04-15'),
('9431', 'Alexander', 'Hawkins', 'dui@cubiliaCuraePhasellus.ca', 'YQX36DGU1AO', 1, 0, '2016-04-15'),
('9544', 'Cadman', 'Walton', 'lectus.Cum@metussitamet.org', 'LPM85WYW1PO', 1, 0, '2016-04-15'),
('9606', 'Devin', 'Cervantes', 'nonummy@nislQuisquefringilla.ca', 'VAJ17UPK1VF', 1, 0, '2016-04-15'),
('9753', 'Clarke', 'Graves', 'at.arcu@Nuncmauris.org', 'EHJ48LYD7NK', 1, 0, '2016-04-15'),
('9773', 'Jonah', 'Greer', 'id@pede.ca', 'CBX99ANY5PM', 1, 0, '2016-04-15'),
('9782', 'Edan', 'Weiss', 'aliquet.diam@luctus.ca', 'GVL06NTL5TL', 1, 0, '2016-04-15'),
('9846', 'Jarrod', 'Fulton', 'nec.tellus@vehicularisusNulla.com', 'RUH98VSB4PD', 0, 0, '2016-04-15'),
('9858', 'Marshall', 'Park', 'dolor.Fusce@ipsumportaelit.com', 'OWP46QFS9KF', 0, 0, '2016-04-15'),
('9880', 'Dennis', 'Lowe', 'vel.nisl@volutpatornare.net', 'UMT66LEW3LM', 1, 0, '2016-04-15'),
('98980', 'Declan', 'Mendoza', 'eget.ipsum.Donec@lectus.com', 'BYU05DMO4RN', 1, 0, '2016-04-15'),
('9900', 'Cedric', 'Nelson', 'consectetuer@turpis.net', 'FBV35LQA8LP', 0, 0, '2016-04-15'),
('9929', 'Kevin', 'Mcdowell', 'turpis.vitae.purus@lacuspedesagittis.ca', 'YZE67ISY4YR', 0, 0, '2016-04-15'),
('99477', 'Warren', 'Potter', 'semper.cursus.Integer@ullamcorperDuis.ca', 'AIY11FBA8HM', 1, 0, '2016-04-15'),
('9953', 'Colby', 'Kirby', 'quam.dignissim@euismodurna.co.uk', 'ELT62PCV3DY', 1, 0, '2016-04-15'),
('9964', 'Amal', 'Cohen', 'ipsum.Phasellus.vitae@nec.net', 'WHL60CBQ1XF', 0, 0, '2016-04-15'),
('9995', 'Ivan', 'Burgess', 'nulla@odio.edu', 'NZX38MFC0TR', 1, 0, '2016-04-15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `roleType` tinyint(3) UNSIGNED DEFAULT NULL,
  `programID` tinyint(3) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `active`, `roleType`, `programID`) VALUES
(1, 'Rebecca', 'Franklin', 'rfranklin0@statcounter.com', 'UlQBrSaLn', 0, 3, 23),
(2, 'Harold', 'Perez', 'hperez1@census.gov', 'fkjm8O0fL', 0, 2, 16),
(3, 'Louis', 'Alexander', 'lalexander2@upenn.edu', 'uX9S3jYl0P6c', 0, 1, 22),
(4, 'Edward', 'Garza', 'egarza3@slashdot.org', '0SDb1N7ziaU', 1, 2, 21),
(5, 'Brian', 'Collins', 'bcollins4@desdev.cn', 'ycb1lyx', 0, 1, 21),
(6, 'Andrea', 'Franklin', 'afranklin5@php.net', 'umfOpv', 0, 6, 18),
(7, 'Henry', 'Lawrence', 'hlawrence6@cdbaby.com', 'Dx2UJEZw', 0, 4, 5),
(8, 'Willie', 'Coleman', 'wcoleman7@mayoclinic.com', 'RCIJI0vow0', 1, 1, 16),
(9, 'Jonathan', 'Allen', 'jallen8@admin.ch', 'Ielyy2RxF4KQ', 0, 1, 1),
(10, 'Juan', 'Medina', 'jmedina9@opera.com', 'wNbkuuoUKL', 0, 6, 5),
(11, 'Jason', 'Stone', 'jstonea@thetimes.co.uk', 't35npU0YQHYe', 0, 2, 6),
(12, 'Karen', 'Moreno', 'kmorenob@miitbeian.gov.cn', 'b52rJScPLWRC', 1, 6, 11),
(13, 'Jane', 'Schmidt', 'jschmidtc@bing.com', 'pve03vLeV', 0, 6, 9),
(14, 'Jessica', 'Stephens', 'jstephensd@usa.gov', 'jr2QM9G', 0, 3, 7),
(15, 'Lois', 'Johnson', 'ljohnsone@imdb.com', 'k8jVTgQKG55J', 0, 2, 13),
(16, 'Arthur', 'Owens', 'aowensf@t.co', 'vVhdrJ71jOTQ', 1, 1, 9),
(17, 'Judith', 'Hansen', 'jhanseng@wufoo.com', 'mlKxMBUFy', 1, 1, 5),
(18, 'Samuel', 'Little', 'slittleh@census.gov', '5D0QNJFg', 1, 1, 12),
(19, 'Mark', 'Marshall', 'mmarshalli@flickr.com', 'B8HoTdt', 1, 1, 15),
(20, 'Karen', 'Hawkins', 'khawkinsj@prlog.org', 'FwiK2iWDF2K5', 0, 3, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `program_groups`
--
ALTER TABLE `program_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`stuID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `programs`
--
ALTER TABLE `programs`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `program_groups`
--
ALTER TABLE `program_groups`
  MODIFY `id` tinyint(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` tinyint(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
