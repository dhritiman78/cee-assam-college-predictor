-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql112.infinityfree.com
-- Generation Time: Jun 24, 2024 at 02:41 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `if0_36741158_college_predictor`
--

-- --------------------------------------------------------

--
-- Table structure for table `collegelist`
--

CREATE TABLE `collegelist` (
  `Sl no.` int(11) NOT NULL,
  `coll` varchar(100) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `caste` varchar(50) NOT NULL,
  `r1` int(11) NOT NULL,
  `r2` int(11) NOT NULL DEFAULT 0,
  `r3` int(11) NOT NULL DEFAULT 0,
  `r4` int(11) NOT NULL DEFAULT 0,
  `r5` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `collegelist`
--

INSERT INTO `collegelist` (`Sl no.`, `coll`, `branch`, `caste`, `r1`, `r2`, `r3`, `r4`, `r5`) VALUES
(1, 'Assam Engineering College', 'Computer Science and Engineering', 'UR', 53, 86, 109, 109, 109),
(2, 'Assam Engineering College', 'Computer Science and Engineering', 'EWS', 71, 71, 71, 71, 71),
(3, 'Assam Engineering College', 'Computer Science and Engineering', 'ST(P)', 302, 516, 516, 516, 516),
(4, 'Assam Engineering College', 'Computer Science and Engineering', 'ST(H)', 805, 805, 805, 805, 805),
(6, 'Assam Engineering College', 'Electronics and Telecommunication Engineering', 'UR', 222, 374, 377, 377, 377),
(7, 'Assam Engineering College', 'Electronics and Telecommunication Engineering', 'EWS', 440, 440, 440, 440, 440),
(8, 'Assam Engineering College', 'Electronics and Telecommunication Engineering', 'OBC/MOBC', 812, 997, 997, 997, 997),
(9, 'Assam Engineering College', 'Electronics and Telecommunication Engineering', 'ST(P)', 516, 1891, 1891, 1891, 1891),
(10, 'Assam Engineering College', 'Electronics and Telecommunication Engineering', 'ST(H)', 840, 5952, 6582, 6582, 6582),
(11, 'Assam Engineering College', 'Electrical Engineering', 'UR', 345, 469, 469, 469, 469),
(12, 'Assam Engineering College', 'Electrical Engineering', 'EWS', 487, 531, 531, 531, 531),
(13, 'Assam Engineering College', 'Electrical Engineering', 'OBC/MOBC', 700, 968, 968, 968, 968),
(14, 'Assam Engineering College', 'Electrical Engineering', 'ST(P)', 1328, 1763, 1763, 1763, 1763),
(15, 'Assam Engineering College', 'Electrical Engineering', 'ST(H)', 3882, 3882, 3882, 3882, 3882),
(16, 'Assam Engineering College', 'CHEMICAL ENGINEERING', 'UR', 509, 822, 822, 822, 822),
(17, 'Assam Engineering College', 'CHEMICAL ENGINEERING', 'EWS', 682, 973, 973, 973, 973),
(18, 'Assam Engineering College', 'CHEMICAL ENGINEERING', 'OBC/MOBC', 1184, 1385, 1385, 1385, 1385),
(19, 'Assam Engineering College', 'CHEMICAL ENGINEERING', 'ST(P)', 1665, 2154, 2286, 2286, 2286),
(20, 'Assam Engineering College', 'CHEMICAL ENGINEERING', 'ST(H)', 5956, 5956, 5956, 5956, 5956),
(21, 'Assam Engineering College', 'Civil Engineering', 'UR', 386, 534, 534, 534, 534),
(22, 'Assam Engineering College', 'Civil Engineering', 'EWS', 651, 745, 745, 745, 745),
(23, 'Assam Engineering College', 'Civil Engineering', 'OBC/MOBC', 872, 1076, 1076, 1076, 1076),
(24, 'Assam Engineering College', 'Civil Engineering', 'ST(P)', 1332, 1332, 1332, 1332, 1332),
(25, 'Assam Engineering College', 'Civil Engineering', 'ST(H)', 3158, 3454, 3454, 3454, 3454),
(26, 'Assam Engineering College', 'Industrial and Production Engineering', 'UR', 775, 1072, 1072, 1072, 1072),
(27, 'Assam Engineering College', 'Industrial and Production Engineering', 'EWS', 823, 1144, 1144, 1144, 1144),
(30, 'Jorhat Engineering College', 'Computer Science and Engineering', 'UR', 205, 341, 341, 341, 341),
(31, 'Assam Engineering College', 'Industrial and Production Engineering', 'OBC/MOBC', 1191, 1679, 1679, 1679, 1679),
(32, 'Assam Engineering College', 'Industrial and Production Engineering', 'SC', 1272, 2164, 2164, 2164, 2164),
(33, 'Assam Engineering College', 'Industrial and Production Engineering', 'ST(P)', 1724, 2483, 2483, 2483, 2483),
(34, 'Assam Engineering College', 'Mechanical Engineering', 'UR', 347, 506, 506, 506, 506),
(35, 'Assam Engineering College', 'Mechanical Engineering', 'EWS', 618, 653, 653, 653, 653),
(36, 'Assam Engineering College', 'Mechanical Engineering', 'OBC/MOBC', 937, 1161, 1161, 1161, 1161),
(37, 'Assam Engineering College', 'Mechanical Engineering', 'SC', 1173, 1443, 1608, 1608, 1608),
(38, 'Assam Engineering College', 'Mechanical Engineering', 'ST(P)', 1049, 1962, 1962, 1962, 1962),
(39, 'Assam Engineering College', 'Mechanical Engineering', 'ST(H)', 5847, 5847, 5847, 5847, 5847),
(40, 'Jorhat Engineering College', 'Electrical Engineering', 'UR', 537, 728, 728, 728, 728),
(41, 'Assam Engineering College', 'Instrumentation Engineering', 'UR', 453, 697, 697, 697, 697),
(42, 'Assam Engineering College', 'Instrumentation Engineering', 'EWS', 737, 854, 854, 854, 854),
(43, 'Assam Engineering College', 'Instrumentation Engineering', 'OBC/MOBC', 1104, 1543, 1543, 1543, 1543),
(44, 'Assam Engineering College', 'Instrumentation Engineering', 'SC', 1415, 1794, 1794, 1794, 1794),
(45, 'Assam Engineering College', 'Instrumentation Engineering', 'ST(H)', 5952, 5952, 5952, 5952, 5952),
(46, 'Assam Engineering College', 'Instrumentation Engineering', 'ST(P)', 1839, 2286, 2450, 2450, 2450),
(47, 'Jorhat Engineering College', 'Civil Engineering', 'UR', 688, 888, 888, 888, 888),
(48, 'Jorhat Engineering College', 'Mechanical Engineering', 'UR', 695, 950, 950, 950, 950),
(49, 'Jorhat Engineering College', 'Instrumentation Engineering', 'UR', 885, 1133, 1133, 1133, 1133),
(50, 'Jorhat Institute of Science and Technology', 'Electronics and Telecommunication Engineering', 'UR', 870, 1259, 1259, 1259, 1259),
(51, 'Jorhat Institute of Science and Technology', 'Electronics and Telecommunication Engineering', 'EWS', 1154, 1343, 1440, 1440, 1440),
(52, 'Jorhat Institute of Science and Technology', 'Electronics and Telecommunication Engineering', 'OBC/MOBC', 1509, 1907, 1933, 1933, 1933),
(53, 'Jorhat Institute of Science and Technology', 'Electronics and Telecommunication Engineering', 'SC', 1608, 2536, 2618, 2618, 2618),
(54, 'Barak Valley Engineering College', 'Computer Science and Engineering', 'UR', 1109, 1673, 1692, 1692, 1692),
(55, 'Jorhat Engineering College', 'Computer Science and Engineering', 'EWS', 426, 452, 452, 452, 452),
(56, 'Jorhat Institute of Science and Technology', 'Electronics and Telecommunication Engineering', 'ST(P)', 2281, 2975, 2975, 2975, 2975),
(57, 'Jorhat Engineering College', 'Electrical Engineering', 'EWS', 612, 735, 735, 735, 735),
(58, 'Jorhat Engineering College', 'Civil Engineering', 'EWS', 996, 1082, 1082, 1082, 1082),
(59, 'Jorhat Engineering College', 'Mechanical Engineering', 'EWS', 927, 1074, 1074, 1074, 1074),
(60, 'Jorhat Institute of Science and Technology', 'Civil Engineering', 'UR', 1085, 1317, 1317, 1317, 1317),
(61, 'Jorhat Institute of Science and Technology', 'Civil Engineering', 'EWS', 1204, 1404, 1404, 1404, 1404),
(62, 'Jorhat Institute of Science and Technology', 'Civil Engineering', 'OBC/MOBC', 1536, 1923, 1923, 1923, 1923),
(63, 'Jorhat Institute of Science and Technology', 'Civil Engineering', 'SC', 1884, 2445, 2785, 2785, 2785),
(64, 'Jorhat Institute of Science and Technology', 'Civil Engineering', 'ST(H)', 7074, 7074, 7074, 7074, 7074),
(65, 'Jorhat Institute of Science and Technology', 'Civil Engineering', 'ST(P)', 2189, 2450, 2455, 2455, 2455),
(66, 'Jorhat Engineering College', 'Instrumentation Engineering', 'EWS', 1132, 1166, 1170, 1170, 1170),
(67, 'Jorhat Engineering College', 'Computer Science and Engineering', 'OBC/MOBC', 507, 754, 768, 768, 768),
(68, 'Jorhat Engineering College', 'Electrical Engineering', 'OBC/MOBC', 881, 1222, 1224, 1224, 1224),
(69, 'Jorhat Engineering College', 'Civil Engineering', 'OBC/MOBC', 1051, 1225, 1225, 1225, 1225),
(70, 'Jorhat Engineering College', 'Mechanical Engineering', 'OBC/MOBC', 1305, 1519, 1519, 1519, 1519),
(71, 'Jorhat Engineering College', 'Instrumentation Engineering', 'OBC/MOBC', 1532, 1738, 1738, 1738, 1738),
(72, 'Jorhat Engineering College', 'Computer Science and Engineering', 'SC', 864, 1119, 1398, 1398, 1398),
(73, 'Jorhat Engineering College', 'Electrical Engineering', 'SC', 1119, 1599, 2029, 2029, 2029),
(74, 'Jorhat Engineering College', 'Civil Engineering', 'SC', 1325, 1548, 1884, 1884, 1884),
(75, 'Jorhat Engineering College', 'Mechanical Engineering', 'SC', 1491, 1876, 2335, 2335, 2335),
(76, 'Jorhat Engineering College', 'Instrumentation Engineering', 'SC', 1771, 2400, 2589, 2589, 2589),
(77, 'Jorhat Engineering College', 'Computer Science and Engineering', 'ST(H)', 2591, 2591, 2591, 2591, 2591),
(78, 'Jorhat Engineering College', 'Electrical Engineering', 'ST(H)', 4257, 4257, 4257, 4257, 4257),
(79, 'Jorhat Engineering College', 'Civil Engineering', 'ST(H)', 4095, 4095, 4095, 4095, 4095),
(80, 'Jorhat Engineering College', 'Mechanical Engineering', 'ST(H)', 6027, 6027, 6027, 6027, 6027),
(81, 'Jorhat Engineering College', 'Computer Science and Engineering', 'ST(P)', 913, 1063, 1063, 1063, 1063),
(82, 'Jorhat Engineering College', 'Electrical Engineering', 'ST(P)', 1721, 2053, 2053, 2053, 2053),
(83, 'Jorhat Engineering College', 'Civil Engineering', 'ST(P)', 1626, 1918, 1918, 1918, 1918),
(84, 'Jorhat Engineering College', 'Mechanical Engineering', 'ST(P)', 1934, 2281, 2281, 2281, 2281),
(85, 'Jorhat Engineering College', 'Instrumentation Engineering', 'ST(P)', 2033, 2721, 2721, 2721, 2721),
(86, 'Barak Valley Engineering College', 'Civil Engineering', 'UR', 2170, 3231, 3541, 3541, 3836),
(87, 'Barak Valley Engineering College', 'Mechanical Engineering', 'UR', 2396, 3667, 3966, 3966, 4884),
(88, 'Barak Valley Engineering College', 'Computer Science and Engineering', 'EWS', 1538, 1789, 1789, 1789, 1789),
(89, 'Barak Valley Engineering College', 'Civil Engineering', 'EWS', 2586, 3227, 3723, 3723, 3723),
(90, 'Barak Valley Engineering College', 'Mechanical Engineering', 'EWS', 2607, 3825, 4201, 4201, 5184),
(91, 'Barak Valley Engineering College', 'Computer Science and Engineering', 'OBC/MOBC', 1610, 2713, 2816, 2816, 2816),
(92, 'Barak Valley Engineering College', 'Civil Engineering', 'OBC/MOBC', 3306, 4047, 4540, 4540, 6214),
(93, 'Barak Valley Engineering College', 'Mechanical Engineering', 'OBC/MOBC', 3336, 4296, 4931, 4931, 6226),
(94, 'Barak Valley Engineering College', 'Computer Science and Engineering', 'SC', 1818, 1881, 2106, 2106, 2106),
(95, 'Barak Valley Engineering College', 'Mechanical Engineering', 'SC', 2994, 3800, 4479, 4479, 5492),
(97, 'Barak Valley Engineering College', 'Computer Science and Engineering', 'ST(H)', 5118, 5118, 5118, 5118, 5118),
(98, 'Barak Valley Engineering College', 'Civil Engineering', 'ST(H)', 4741, 4741, 4741, 4741, 4741),
(99, 'Barak Valley Engineering College', 'Computer Science and Engineering', 'ST(P)', 2989, 3523, 3896, 3896, 4870),
(100, 'Barak Valley Engineering College', 'Civil Engineering', 'ST(P)', 3793, 4271, 4949, 4949, 4949),
(101, 'Barak Valley Engineering College', 'Mechanical Engineering', 'ST(P)', 3983, 4971, 5242, 5242, 5650),
(102, 'Jorhat Institute of Science and Technology', 'Power Electronics and Instrumentation Engineering', 'UR', 1294, 1723, 1723, 1723, 1832),
(103, 'Jorhat Institute of Science and Technology', 'Power Electronics and Instrumentation Engineering', 'EWS', 1539, 1855, 1855, 1855, 1855),
(104, 'Jorhat Institute of Science and Technology', 'Power Electronics and Instrumentation Engineering', 'OBC/MOBC', 1813, 2630, 2725, 2725, 2906),
(105, 'Jorhat Institute of Science and Technology', 'Power Electronics and Instrumentation Engineering', 'SC', 2029, 2826, 3168, 3168, 3168),
(106, 'Jorhat Institute of Science and Technology', 'Power Electronics and Instrumentation Engineering', 'ST(P)', 2505, 3432, 3520, 3520, 3520),
(107, 'Jorhat Institute of Science and Technology', 'Mechanical Engineering', 'UR', 1146, 1517, 1524, 1524, 1524),
(108, 'Jorhat Institute of Science and Technology', 'Mechanical Engineering', 'EWS', 1317, 1572, 1572, 1572, 1572),
(109, 'Jorhat Institute of Science and Technology', 'Mechanical Engineering', 'OBC/MOBC', 1668, 2019, 2212, 2212, 2212),
(110, 'Jorhat Institute of Science and Technology', 'Mechanical Engineering', 'SC', 2235, 2618, 2994, 2994, 2994),
(111, 'Jorhat Institute of Science and Technology', 'Mechanical Engineering', 'ST(P)', 2441, 3122, 3122, 3122, 3122),
(112, 'Golaghat Engineering College', 'Civil Engineering', 'UR', 1709, 2040, 2098, 2098, 2211),
(113, 'Golaghat Engineering College', 'Civil Engineering', 'EWS', 2043, 2453, 2453, 2453, 2453),
(114, 'Golaghat Engineering College', 'Civil Engineering', 'OBC/MOBC', 2255, 2769, 2979, 2979, 3172),
(115, 'Golaghat Engineering College', 'Civil Engineering', 'SC', 2542, 2824, 3573, 3573, 3573),
(116, 'Golaghat Engineering College', 'Civil Engineering', 'ST(P)', 3274, 3928, 3928, 3928, 3928),
(117, 'Golaghat Engineering College', 'Mechanical Engineering', 'UR', 2038, 2558, 2558, 2558, 2727),
(118, 'Golaghat Engineering College', 'Mechanical Engineering', 'EWS', 2343, 3441, 3519, 3519, 3519),
(119, 'Golaghat Engineering College', 'Mechanical Engineering', 'OBC/MOBC', 2397, 2934, 2410, 2410, 2410),
(120, 'Golaghat Engineering College', 'Mechanical Engineering', 'SC', 2798, 3218, 3325, 3325, 3325),
(121, 'Golaghat Engineering College', 'Mechanical Engineering', 'ST(P)', 3492, 4181, 4181, 4181, 4181),
(122, 'Golaghat Engineering College', 'CHEMICAL ENGINEERING', 'UR', 2162, 3108, 3357, 3357, 3718),
(123, 'Golaghat Engineering College', 'CHEMICAL ENGINEERING', 'EWS', 2399, 3465, 3616, 3616, 3616),
(124, 'Golaghat Engineering College', 'CHEMICAL ENGINEERING', 'OBC/MOBC', 2485, 3407, 3716, 3716, 4239),
(125, 'Golaghat Engineering College', 'CHEMICAL ENGINEERING', 'SC', 3109, 3765, 3765, 3765, 3765),
(126, 'Golaghat Engineering College', 'CHEMICAL ENGINEERING', 'ST(P)', 3428, 4387, 4569, 4569, 4569),
(127, 'Dhemaji Engineering College', 'Computer Science and Engineering', 'UR', 1555, 2119, 2208, 2208, 2688),
(128, 'Dhemaji Engineering College', 'Computer Science and Engineering', 'EWS', 2145, 2370, 2490, 2490, 3137),
(129, 'Dhemaji Engineering College', 'Computer Science and Engineering', 'OBC/MOBC', 1927, 2863, 3250, 3250, 3600),
(130, 'Dhemaji Engineering College', 'Computer Science and Engineering', 'SC', 2442, 2919, 2993, 2993, 4060),
(131, 'Dhemaji Engineering College', 'Computer Science and Engineering', 'ST(P)', 3122, 3244, 4054, 4054, 4954),
(132, 'Dhemaji Engineering College', 'Civil Engineering', 'UR', 2502, 3928, 3928, 3928, 4662),
(133, 'Dhemaji Engineering College', 'Civil Engineering', 'EWS', 2671, 3578, 3952, 3952, 3952),
(134, 'Dhemaji Engineering College', 'Civil Engineering', 'OBC/MOBC', 3162, 3827, 4249, 4249, 4931),
(135, 'Dhemaji Engineering College', 'Civil Engineering', 'SC', 3341, 3845, 4330, 4330, 5290),
(137, 'Dhemaji Engineering College', 'Civil Engineering', 'ST(P)', 3347, 3895, 3991, 3991, 3991),
(138, 'Dhemaji Engineering College', 'Mechanical Engineering', 'UR', 2706, 3582, 3973, 3973, 4868),
(139, 'Dhemaji Engineering College', 'Mechanical Engineering', 'EWS', 2763, 3839, 4198, 4198, 5028),
(140, 'Dhemaji Engineering College', 'Mechanical Engineering', 'OBC/MOBC', 3220, 3871, 4384, 4384, 5115),
(141, 'Dhemaji Engineering College', 'Mechanical Engineering', 'SC', 3325, 3730, 4523, 4523, 5520),
(142, 'Dhemaji Engineering College', 'Mechanical Engineering', 'ST(P)', 3929, 4468, 4902, 4902, 5465),
(143, 'Bineswar Brahma Engineering College', 'Chemical Engineering', 'UR', 2013, 2728, 3043, 3043, 3600),
(144, 'Bineswar Brahma Engineering College', 'Electrical Engineering', 'UR', 1550, 2175, 2175, 2175, 2175),
(145, 'Bineswar Brahma Engineering College', 'Civil Engineering', 'UR', 1413, 1879, 1879, 1879, 1879),
(146, 'Bineswar Brahma Engineering College', 'Mechanical Engineering', 'UR', 1817, 2691, 2872, 2872, 2872),
(147, 'Bineswar Brahma Engineering College', 'Chemical Engineering', 'EWS', 2247, 3195, 3423, 3423, 3423),
(148, 'Bineswar Brahma Engineering College', 'Electrical Engineering', 'EWS', 1803, 2490, 2758, 2758, 2758),
(149, 'Bineswar Brahma Engineering College', 'Civil Engineering', 'EWS', 1711, 2081, 2081, 2081, 2081),
(150, 'Bineswar Brahma Engineering College', 'Mechanical Engineering', 'EWS', 2077, 3083, 3245, 3245, 3245),
(151, 'Bineswar Brahma Engineering College', 'Chemical Engineering', 'OBC/MOBC', 2407, 3697, 4296, 4296, 4845),
(152, 'Bineswar Brahma Engineering College', 'Electrical Engineering', 'OBC/MOBC', 1929, 2725, 3061, 3061, 3315),
(153, 'Bineswar Brahma Engineering College', 'Civil Engineering', 'OBC/MOBC', 2177, 3306, 3401, 3401, 3401),
(154, 'Bineswar Brahma Engineering College', 'Mechanical Engineering', 'OBC/MOBC', 2676, 3545, 3936, 3936, 4699),
(155, 'Bineswar Brahma Engineering College', 'Chemical Engineering', 'SC', 2696, 3341, 4151, 4151, 5098),
(156, 'Bineswar Brahma Engineering College', 'Electrical Engineering', 'SC', 2521, 3025, 3248, 3248, 3248),
(157, 'Bineswar Brahma Engineering College', 'Civil Engineering', 'SC', 2546, 2696, 2696, 2696, 2696),
(158, 'Bineswar Brahma Engineering College', 'Mechanical Engineering', 'SC', 2359, 3386, 3855, 3855, 3855),
(159, 'Bineswar Brahma Engineering College', 'Chemical Engineering', 'ST(H)', 0, 0, 0, 0, 0),
(160, 'Bineswar Brahma Engineering College', 'Electrical Engineering', 'ST(H)', 6096, 6096, 6096, 6096, 6096),
(161, 'Bineswar Brahma Engineering College', 'Civil Engineering', 'ST(H)', 6891, 6891, 6891, 6891, 6891),
(162, 'Bineswar Brahma Engineering College', 'Mechanical Engineering', 'ST(H)', 0, 0, 0, 0, 0),
(163, 'Bineswar Brahma Engineering College', 'Chemical Engineering', 'ST(P)', 3217, 4326, 4326, 4326, 4326),
(164, 'Bineswar Brahma Engineering College', 'Electrical Engineering', 'ST(P)', 2721, 3439, 3439, 3439, 3439),
(165, 'Bineswar Brahma Engineering College', 'Civil Engineering', 'ST(P)', 2337, 2493, 2948, 2948, 2948),
(166, 'Bineswar Brahma Engineering College', 'Mechanical Engineering', 'ST(P)', 3032, 3997, 3997, 3997, 3997),
(167, 'Assam Engineering College', 'Computer Science and Engineering', 'OBC/MOBC', 150, 150, 150, 150, 150),
(168, 'Assam Engineering College', 'Civil Engineering', 'SC', 666, 961, 961, 961, 961),
(169, 'Assam Engineering College', 'Computer Science and Engineering', 'SC', 409, 409, 409, 409, 409),
(170, 'Assam Engineering College', 'Electrical Engineering', 'SC', 961, 1393, 1393, 1393, 1393),
(171, 'Assam Engineering College', 'CHEMICAL ENGINEERING', 'SC', 1314, 1503, 1522, 1522, 1522),
(172, 'Assam Engineering College', 'Electronics and Telecommunication Engineering', 'SC', 577, 1314, 1314, 1314, 1314);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `collegelist`
--
ALTER TABLE `collegelist`
  ADD PRIMARY KEY (`Sl no.`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `collegelist`
--
ALTER TABLE `collegelist`
  MODIFY `Sl no.` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
