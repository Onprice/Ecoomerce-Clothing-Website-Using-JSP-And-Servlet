-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2020 at 07:44 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `featured` varchar(50) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `price`, `category`, `featured`, `image`) VALUES
(1, 'Kids Wear', '600', 'kids_5', 'no', 'img/6eee33dfdac733199dcb6d1c3d33f0c1.jpg'),
(2, 'Kids Wear', '1000', 'kids_5', 'no', 'img/1368028_969d8820-6dda-4712-9bd8-851ade4f65e1_800_800.jpg'),
(4, 'Kids Wear', '2000', 'kids_5', 'no', 'images/60.jpg'),
(5, 'Kids Wear', '2500', 'kids_5', 'no', 'images/56.jpg'),
(6, 'kids Wear', '2000', 'kids_5', 'no', 'img/61Q+KpL9QIL._AC_UL320_.jpg'),
(7, 'Kids Wear', '2000', 'kids_10', 'yes', 'img/93dc8de7ad2458b0020f9f25ec3bd8ea.jpg'),
(8, 'Kids Wear', '2500', 'kids_10', 'yes', 'img/61Q+KpL9QIL._AC_UL320_.jpg'),
(9, 'Kids Wear', '750', 'kids_10', 'no', 'img/3345085a.jpg'),
(10, 'Kids Wear', '2000', 'kids_10', 'yes', 'img/7fc582995a0cf5a212834432a6dded3b_350x350.jpg'),
(11, 'Kids Wear', '2000', 'kids_10', 'no', 'img/images.jpg'),
(12, 'Kids Wear', '1000', 'kids_10', 'no', 'img/6355c718d6201dbb3707b1e63a62539c_350x350.jpg'),
(13, 'Kids Wear', '1200', 'sweater', 'no', 'img/images (1).jpg'),
(18, 'Kids Wear', '2500', 'sweater', 'no', 'img/kids-sweater-250x250.jpg'),
(19, 'Kids Wear', '2200', 'sweater', 'no', 'img/product-image-1113720642.jpg'),
(20, 'Kids Wear', '1000', 'sweater', 'no', 'img/504929_41160_41.jpg'),
(21, 'Woman Ethnic ', '2000', 'w_ethnic', 'yes', 'images/r9.jpg'),
(23, 'Woman Ethnic', '3000', 'w_ethnic', 'yes', 'images/r6.jpg'),
(24, 'Woman Ethnic', '5000', 'w_ethnic', 'no', 'images/r2.jpg'),
(25, 'Woman Ethnic', '2500', 'w_ethnic', 'no', 'images/r1.jpg'),
(26, 'Woman Ethnic', '4000', 'w_ethnic', 'no', 'images/r5.jpg'),
(27, 'Woman Ethnic', '3500', 'w_ethnic', 'no', 'images/r8.jpg'),
(28, 'Woman Western', '2000', 'w_west', 'yes', 'images/53.jpg'),
(29, 'Woman Western', '4000', 'w_west', 'no', 'images/37.jpg'),
(30, 'Woman Western', '6000', 'w_west', 'no', 'images/42.jpg'),
(31, 'Woman Western', '4900', 'w_west', 'no', 'images/38.jpg'),
(32, 'Woman Western', '5000', 'w_west', 'no', 'images/41.jpg'),
(33, 'Woman Western', '6000', 'w_west', 'no', 'images/27.jpg'),
(35, 'Woman Shrugs', '4000', 'w_sh', 'no', 'img/61rTOI7b-aL._UY606_.jpg'),
(37, 'Woman Shrugs ', '5000', 'w_sh', 'no', 'img/l-darzi-9695-darzi-original-imafb8zwrshfnh8s.jpeg'),
(39, 'Woman Shrugs', '6000', 'w_sh', 'no', 'img/l-1969-blk-buynewtrend-original-imaffrnzf6rcvh68.jpeg'),
(40, 'Woman Shrugs', '6000', 'w_sh', 'no', 'img/m-256085berry-rust-forever-21-original-imafbm6fp84mnayd.jpeg'),
(42, 'Woman Shrugs', '5000', 'w_sh', 'no', 'img/s-la2594-blackrl-sera-original-imafbvbxacyzarbg.jpeg'),
(43, 'Woman Party Wears', '4000', 'w_p', 'no', 'images/39.jpg'),
(44, 'Woman Party Wears', '4000', 'w_p', 'no', 'images/37.jpg'),
(45, 'Woman Party Wears', '7000', 'w_p', 'no', 'images/35.jpg'),
(48, 'Men Ethnic Wear', '5000', 'm_e', 'yes', 'img/11_Top_Men_s_Ethnic_Wear_Trends_ethnicwear_traditionalwear_mensfashion.png'),
(50, 'Mens Ethinc Wear', '5000', 'm_e', 'yes', 'img/images (2).jpg'),
(51, 'Mens Ethinc Wear', '9000', 'm_e', 'no', 'img/images (4).jpg'),
(52, 'Mens Ethinc Wear', '4900', 'm_e', 'no', 'img/images (5).jpg'),
(54, 'Mens Ethinc Wear', '6000', 'm_e', 'no', 'img/d90810627d91f1fcfb5e72650d8f97c5.jpg'),
(55, 'Mens Casuals', '6000', 'm_c', 'no', 'img/The-Wholesale-Mens-Dress-Shirts-Models-with-Mens-Casual-Shirts-Men-Wash-and-Wear.jpg'),
(56, 'Mens Casuals', '7000', 'm_c', 'no', 'img/images (6).jpg'),
(57, 'Mens Casuals', '8000', 'm_c', 'yes', 'img/c4785734-48ef-44c8-b79c-16316338a8061553516761739-WROGN-Men-Shirts-4651553516760860-3.jpg'),
(58, 'Mens Casuals', '4000', 'm_c', 'no', 'img/images (7).jpg'),
(59, 'Mens Casuals', '6000', 'm_c', 'no', 'img/images (2).jpg'),
(60, 'Mens Jeans', '2400', 'm_j', 'no', 'img/jeans.jpg'),
(61, 'Mens Jeans', '4555', 'm_j', 'no', 'img/266309main1414734589.jpg'),
(62, 'Mens Jeans', '4999', 'm_j', 'no', 'img/images (8).jpg'),
(63, 'Mens Formals', '9000', 'm_f', 'no', 'img/Formal_outfit_ideas_for_men_21.jpg'),
(64, 'Mens Formals', '9999', 'm_f', 'no', 'img/64a704038ddde05a027917d988efb67b.jpg'),
(65, 'Mens Formals', '8888', 'm_f', 'no', 'img/33e6ee167543f55eebb71b4f9c31fab5.jpg'),
(66, 'Kids Wear', '2000', 'sweater', 'no', 'img/HTB1NYRLLpXXXXXuXpXXq6xXFXXXT.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `address`, `email`, `username`, `password`) VALUES
(24, 'Jhon Doe', 'New Yark', 'jhondoe@gmail.com', 'jhon', '1234567');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
