-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 10, 2018 at 08:42 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(4) UNSIGNED NOT NULL,
  `product_img` varchar(150) CHARACTER SET utf8 NOT NULL,
  `product_type` varchar(20) CHARACTER SET utf8 NOT NULL,
  `product_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_img`, `product_type`, `product_price`) VALUES
(1, 'https://images-eu.ssl-images-amazon.com/images/I/51LTfjlNbVL._AC_US218_FMwebp_QL70_.jpg', 'tc', 150),
(2, 'https://images-eu.ssl-images-amazon.com/images/I/51JSlS4fB3L._AC_US218_FMwebp_QL70_.jpg', 'tc', 150),
(3, 'https://images-eu.ssl-images-amazon.com/images/I/41Nr+-l0zXL._AC_US218_FMwebp_QL70_.jpg', 'tc', 150),
(4, 'https://images-eu.ssl-images-amazon.com/images/I/51C9Qwag3nL._AC_US218_FMwebp_QL70_.jpg', 'tc', 150),
(5, 'https://images-eu.ssl-images-amazon.com/images/I/51LTfjlNbVL._AC_US218_FMwebp_QL70_.jpg', 'tc', 150),
(6, 'https://images-eu.ssl-images-amazon.com/images/I/41tz5U-rkJL._AC_US218_FMwebp_QL70_.jpg', 'tc', 150),
(7, 'https://images-eu.ssl-images-amazon.com/images/I/411i9c0klRL._AC_US218_FMwebp_QL70_.jpg', 'tc', 150),
(8, 'https://images-eu.ssl-images-amazon.com/images/I/41lUx2p3--L._AC_US218_FMwebp_QL70_.jpg', 'tc', 150),
(9, 'https://images-eu.ssl-images-amazon.com/images/I/51pLR23PWcL._AC_US218_FMwebp_QL70_.jpg', 'tc', 150),
(10, 'https://images-eu.ssl-images-amazon.com/images/I/41m266jqI6L._AC_US218_FMwebp_QL70_.jpg', 'tc', 150),
(11, 'https://images-eu.ssl-images-amazon.com/images/I/51f3XX2NPsL._AC_US218_FMwebp_QL70_.jpg', 'tc', 150),
(12, 'https://images-eu.ssl-images-amazon.com/images/I/41C1a8+dNNL._AC_US218_FMwebp_QL70_.jpg', 'tc', 150),
(13, 'https://images-eu.ssl-images-amazon.com/images/I/51q5r9FC-7L._AC_US218_FMwebp_QL70_.jpg', 'tc', 150),
(14, 'https://images-eu.ssl-images-amazon.com/images/I/512SzTf27HL._AC_US218_FMwebp_QL70_.jpg', 'tc', 150),
(15, 'https://images-eu.ssl-images-amazon.com/images/I/51LhFZYZBOL._AC_US218_FMwebp_QL70_.jpg', 'tc', 150),
(16, 'https://images-eu.ssl-images-amazon.com/images/I/510aHPQ4oiL._AC_US218_FMwebp_QL70_.jpg', 'tc', 150),
(17, 'https://images-eu.ssl-images-amazon.com/images/I/41kHynkpA3L._AC_US218_FMwebp_QL70_.jpg', 'tc', 150),
(18, 'https://images-eu.ssl-images-amazon.com/images/I/31-yph4xfvL._AC_US218_FMwebp_QL70_.jpg', 'tc', 150),
(19, 'https://images-eu.ssl-images-amazon.com/images/I/51FShp7Z0tL._AC_US218_FMwebp_QL70_.jpg', 'tc', 150),
(20, 'https://images-eu.ssl-images-amazon.com/images/I/51FhPfNKGEL._AC_US218_FMwebp_QL70_.jpg', 'tc', 150),
(21, 'https://images-eu.ssl-images-amazon.com/images/I/41-sn6WRKXL._AC_US160_.jpg', 'bw', 80),
(22, 'https://images-eu.ssl-images-amazon.com/images/I/51xXIZpvyyL._AC_US160_.jpg', 'bw', 80),
(23, 'https://images-eu.ssl-images-amazon.com/images/I/41fbXIX7VoL._AC_US160_.jpg', 'bw', 80),
(24, 'https://images-eu.ssl-images-amazon.com/images/I/41H5dibiLeL._AC_US160_.jpg', 'bw', 80),
(25, 'https://images-eu.ssl-images-amazon.com/images/I/41dyrDoJirL._AC_US160_.jpg', 'bw', 80),
(26, 'https://images-eu.ssl-images-amazon.com/images/I/51BhiLeUfFL._AC_US160_.jpg', 'bw', 80),
(27, 'https://images-eu.ssl-images-amazon.com/images/I/41jjko6tF+L._AC_US160_.jpg', 'bw', 80),
(28, 'https://images-eu.ssl-images-amazon.com/images/I/51VVxlAnaNL._AC_US160_.jpg', 'bw', 80),
(29, 'https://images-eu.ssl-images-amazon.com/images/I/410HGNPRQNL._AC_US160_.jpg', 'bw', 80),
(30, 'https://images-eu.ssl-images-amazon.com/images/I/41S7m4jFAEL._AC_US160_.jpg', 'bw', 80),
(31, 'https://images-eu.ssl-images-amazon.com/images/I/41N3N+A2xQL._AC_US160_.jpg', 'bw', 80),
(32, 'https://images-eu.ssl-images-amazon.com/images/I/31pNbpRo8yL._AC_US160_.jpg', 'bw', 80),
(33, 'https://images-eu.ssl-images-amazon.com/images/I/41pSUgzv4pL._AC_US160_.jpg', 'bw', 80),
(34, 'https://images-eu.ssl-images-amazon.com/images/I/41NB3b5oDvL._AC_US160_.jpg', 'bw', 80),
(35, 'https://images-eu.ssl-images-amazon.com/images/I/51nkzKEUl8L._AC_US160_.jpg', 'bw', 80),
(36, 'https://images-eu.ssl-images-amazon.com/images/I/41NB3b5oDvL._AC_US160_.jpg', 'bw', 80),
(37, 'https://images-eu.ssl-images-amazon.com/images/I/417N4IcQbaL._AC_US160_.jpg', 'bw', 80),
(38, 'https://images-eu.ssl-images-amazon.com/images/I/51Px6ZMkcAL._AC_US160_.jpg', 'bw', 80),
(39, 'https://images-eu.ssl-images-amazon.com/images/I/51mkYn1LUcL._AC_US160_.jpg', 'bw', 80),
(40, 'https://images-eu.ssl-images-amazon.com/images/I/51TEfnGSIhL._AC_US160_.jpg', 'bw', 80),
(41, 'https://images-eu.ssl-images-amazon.com/images/I/41BdwzJB78L._AC_US160_.jpg', 'bw', 80),
(42, 'https://images-eu.ssl-images-amazon.com/images/I/41Y9T36ZolL._AC_US160_.jpg', 'bw', 80),
(43, 'https://images-eu.ssl-images-amazon.com/images/I/417amihDXEL._AC_US160_.jpg', 'bw', 80),
(44, 'https://images-eu.ssl-images-amazon.com/images/I/51m8XA8tiaL._AC_US160_.jpg', 'bw', 80),
(45, 'https://images-eu.ssl-images-amazon.com/images/I/41NfE979fTL._AC_US160_.jpg', 'bw', 80),
(46, 'https://images-eu.ssl-images-amazon.com/images/I/41FNQL9JbuL._AC_US160_.jpg', 'bw', 80),
(47, 'https://images-eu.ssl-images-amazon.com/images/I/514KO09-vlL._AC_US160_.jpg', 'bw', 80),
(48, 'https://images-eu.ssl-images-amazon.com/images/I/51bOtR8fXVL._AC_US160_.jpg', 'ut', 120),
(49, 'https://images-eu.ssl-images-amazon.com/images/I/41ychlGzRrL._AC_US160_.jpg', 'ut', 200),
(50, 'https://images-eu.ssl-images-amazon.com/images/I/41NcoRvIziL._AC_US160_.jpg', 'ut', 150),
(51, 'https://images-eu.ssl-images-amazon.com/images/I/41jGmEPHDTL._AC_US160_.jpg', 'ut', 50),
(52, 'https://images-eu.ssl-images-amazon.com/images/I/41CMw527IBL._AC_US160_.jpg', 'ut', 200),
(53, 'https://images-eu.ssl-images-amazon.com/images/I/516Jt662ADL._AC_US160_.jpg', 'ut', 200),
(54, 'https://images-eu.ssl-images-amazon.com/images/I/4146ML05fIL._AC_US160_.jpg', 'ut', 80),
(55, 'https://images-eu.ssl-images-amazon.com/images/I/41qRC7KoTLL._AC_US160_.jpg', 'ut', 80),
(56, 'https://images-eu.ssl-images-amazon.com/images/I/41DnPGemfDL._AC_US160_.jpg', 'ut', 180),
(57, 'https://images-eu.ssl-images-amazon.com/images/I/41xalUc8eKL._AC_US160_.jpg', 'ut', 180),
(58, 'https://images-eu.ssl-images-amazon.com/images/I/41lSeCkJokL._AC_US160_.jpg', 'ut', 150),
(59, 'https://images-eu.ssl-images-amazon.com/images/I/51LaGoUWv8L._AC_US160_.jpg', 'ut', 200),
(60, 'https://images-eu.ssl-images-amazon.com/images/I/41ji0loeqrL._AC_US160_.jpg', 'ut', 150),
(61, 'https://images-eu.ssl-images-amazon.com/images/I/315MJ5-XhfL._AC_US160_.jpg', 'ut', 180),
(62, 'https://images-eu.ssl-images-amazon.com/images/I/51ZkmPdJm-L._AC_US160_.jpg', 'ut', 50),
(63, 'https://images-eu.ssl-images-amazon.com/images/I/41A0UZv-JSL._AC_US160_.jpg', 'ut', 80),
(64, 'https://images-eu.ssl-images-amazon.com/images/I/4191eCaSIgL._AC_US160_.jpg', 'ut', 120),
(65, 'https://images-eu.ssl-images-amazon.com/images/I/511+HE3rH3L._AC_US160_.jpg', 'ut', 120),
(66, 'https://images-eu.ssl-images-amazon.com/images/I/51uHMO2JemL._AC_US160_.jpg', 'ut', 80),
(67, 'https://images-eu.ssl-images-amazon.com/images/I/418ih0tRa-L._AC_US160_.jpg', 'ut', 50),
(68, 'https://images-eu.ssl-images-amazon.com/images/I/51bEcseHBYL._AC_US160_.jpg', 'ut', 100),
(69, 'https://images-eu.ssl-images-amazon.com/images/I/41ulYVWWK2L._AC_US160_.jpg', 'ut', 150),
(70, 'https://images-eu.ssl-images-amazon.com/images/I/41DJQ6PTkVL._AC_US160_.jpg', 'ut', 120),
(71, 'https://images-eu.ssl-images-amazon.com/images/I/41TghO8C+YL._AC_US160_.jpg', 'ut', 50),
(72, 'https://images-eu.ssl-images-amazon.com/images/I/412-RS7j2oL._AC_US160_.jpg', 'ut', 200),
(73, 'https://images-eu.ssl-images-amazon.com/images/I/419eOFa6HUL._AC_US160_.jpg', 'ut', 180),
(74, 'https://images-eu.ssl-images-amazon.com/images/I/512aw5LcolL._AC_US160_.jpg', 'co', 100),
(75, 'https://images-eu.ssl-images-amazon.com/images/I/41+ksisZqyL._AC_US160_.jpg', 'co', 200),
(76, 'https://images-eu.ssl-images-amazon.com/images/I/51j0V-XDVIL._AC_US160_.jpg', 'co', 180),
(77, 'https://images-eu.ssl-images-amazon.com/images/I/51hNbumDizL._AC_US160_.jpg', 'co', 50),
(78, 'https://images-eu.ssl-images-amazon.com/images/I/51Ebs9RXDNL._AC_US160_.jpg', 'co', 120),
(79, 'https://images-eu.ssl-images-amazon.com/images/I/51OMc-eYaIL._AC_US160_.jpg', 'co', 200),
(80, 'https://images-eu.ssl-images-amazon.com/images/I/514aZtsnBAL._AC_US160_.jpg', 'co', 150),
(81, 'https://images-eu.ssl-images-amazon.com/images/I/51Jr4u3CyLL._AC_US160_.jpg', 'co', 150),
(82, 'https://images-eu.ssl-images-amazon.com/images/I/51uvnzvk-RL._AC_US160_.jpg', 'co', 120),
(83, 'https://images-eu.ssl-images-amazon.com/images/I/51OMc-eYaIL._AC_US160_.jpg', 'co', 50),
(84, 'https://images-eu.ssl-images-amazon.com/images/I/51rTBWPgnaL._AC_US160_.jpg', 'co', 80),
(85, 'https://images-eu.ssl-images-amazon.com/images/I/51Fs0JW0vML._AC_US160_.jpg', 'co', 120),
(86, 'https://images-eu.ssl-images-amazon.com/images/I/41hXqf+q5mL._AC_US160_.jpg', 'co', 200),
(87, 'https://images-eu.ssl-images-amazon.com/images/I/41uYfPG8WsL._AC_US160_.jpg', 'co', 200),
(88, 'https://images-eu.ssl-images-amazon.com/images/I/41Ih2PMgT+L._AC_US160_.jpg', 'co', 100),
(89, 'https://images-eu.ssl-images-amazon.com/images/I/41RmB+dZQhL._AC_US160_.jpg', 'co', 80),
(90, 'https://images-eu.ssl-images-amazon.com/images/I/51WxbMpwYdL._AC_US160_.jpg', 'co', 150),
(91, 'https://images-eu.ssl-images-amazon.com/images/I/51l61t6HrWL._AC_US160_.jpg', 'co', 80),
(92, 'https://images-eu.ssl-images-amazon.com/images/I/512fks2XDlL._AC_US160_.jpg', 'co', 150),
(93, 'https://images-eu.ssl-images-amazon.com/images/I/51LKANaldyL._AC_US160_.jpg', 'co', 80),
(94, 'https://images-eu.ssl-images-amazon.com/images/I/51SB64ZvhfL._AC_US160_.jpg', 'co', 120),
(95, 'https://images-eu.ssl-images-amazon.com/images/I/514V2+nbGhL._AC_US160_.jpg', 'co', 200),
(96, 'https://images-eu.ssl-images-amazon.com/images/I/41+UzZlt90L._AC_US160_.jpg', 'co', 150),
(97, 'https://images-eu.ssl-images-amazon.com/images/I/51yGr8MWIJL._AC_US160_.jpg', 'co', 200),
(98, 'https://images-eu.ssl-images-amazon.com/images/I/418hr5zemQL._AC_US160_.jpg', 'co', 200),
(99, 'https://images-eu.ssl-images-amazon.com/images/I/41uRpqYbx+L._AC_US160_.jpg', 'co', 180),
(100, 'https://images-eu.ssl-images-amazon.com/images/I/41MKs7VDU6L._AC_US160_.jpg', 'co', 180),
(101, 'https://images-eu.ssl-images-amazon.com/images/I/41KB4dLl0oL._AC_US160_.jpg', 'ge', 80),
(102, 'https://images-eu.ssl-images-amazon.com/images/I/51UAOH6iRuL._AC_US160_.jpg', 'ge', 100),
(103, 'https://images-eu.ssl-images-amazon.com/images/I/51GjvzbiyhL._AC_US160_.jpg', 'ge', 100),
(104, 'https://images-eu.ssl-images-amazon.com/images/I/51fnA6ArM+L._AC_US160_.jpg', 'ge', 150),
(105, 'https://images-eu.ssl-images-amazon.com/images/I/51yRkNcnqJL._AC_US160_.jpg', 'ge', 120),
(106, 'https://images-eu.ssl-images-amazon.com/images/I/513MyAnohlL._AC_US160_.jpg', 'ge', 150),
(107, 'https://images-eu.ssl-images-amazon.com/images/I/31R5YnpLalL._AC_US160_.jpg', 'ge', 180),
(108, 'https://images-eu.ssl-images-amazon.com/images/I/41UIYtjB-dL._AC_US160_.jpg', 'ge', 180),
(109, 'https://images-eu.ssl-images-amazon.com/images/I/31jIt8wn5VL._AC_US160_.jpg', 'ge', 150),
(110, 'https://images-eu.ssl-images-amazon.com/images/I/41Rnd53Z2fL._AC_US160_.jpg', 'ge', 120),
(111, 'https://images-eu.ssl-images-amazon.com/images/I/51UxjAp0GFL._AC_US160_.jpg', 'ge', 50),
(112, 'https://images-eu.ssl-images-amazon.com/images/I/41VoayvjEWL._AC_US160_.jpg', 'ge', 120),
(113, 'https://images-eu.ssl-images-amazon.com/images/I/41O+qhkQk5L._AC_US160_.jpg', 'ge', 50),
(114, 'https://images-eu.ssl-images-amazon.com/images/I/41PBe56UC-L._AC_US160_.jpg', 'ge', 100),
(115, 'https://images-eu.ssl-images-amazon.com/images/I/41r12LWH5OL._AC_US160_.jpg', 'ge', 180),
(116, 'https://images-eu.ssl-images-amazon.com/images/I/31XiUfZQ0xL._AC_US160_.jpg', 'ge', 50),
(117, 'https://images-eu.ssl-images-amazon.com/images/I/41n6VOLshCL._AC_US160_.jpg', 'ge', 80),
(118, 'https://images-eu.ssl-images-amazon.com/images/I/51kTSyyDhRL._AC_US160_.jpg', 'ge', 50),
(119, 'https://images-eu.ssl-images-amazon.com/images/I/31HHOgu6sFL._AC_US160_.jpg', 'ge', 150),
(120, 'https://images-eu.ssl-images-amazon.com/images/I/31af6zl6EtL._AC_US160_.jpg', 'ge', 200),
(121, 'https://images-eu.ssl-images-amazon.com/images/I/61MzZw1HcNL._AC_US160_.jpg', 'ge', 150),
(122, 'https://images-eu.ssl-images-amazon.com/images/I/51V2514HlYL._AC_US160_.jpg', 'ge', 50),
(123, 'https://images-eu.ssl-images-amazon.com/images/I/41OHz0AaVEL._AC_US160_.jpg', 'ge', 100),
(124, 'https://images-eu.ssl-images-amazon.com/images/I/51++3ufwURL._AC_US160_.jpg', 'ge', 200),
(125, 'https://images-eu.ssl-images-amazon.com/images/I/51VgTzgNVOL._AC_US160_.jpg', 'ge', 200),
(126, 'https://images-eu.ssl-images-amazon.com/images/I/51nrRwUD46L._AC_US160_.jpg', 'ge', 200),
(127, 'https://images-eu.ssl-images-amazon.com/images/I/41U2c2Qe5-L._AC_US160_.jpg', 'ge', 80);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(4) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
