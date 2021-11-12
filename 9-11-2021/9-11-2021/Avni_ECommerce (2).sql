-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 12, 2021 at 02:15 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Avni_ECommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` bigint(10) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_email`, `admin_password`) VALUES
(1, 'Avni', 'avani@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `c_id` bigint(20) NOT NULL,
  `c_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`c_id`, `c_name`) VALUES
(1, 'women'),
(2, 'men'),
(3, 'kids');

-- --------------------------------------------------------

--
-- Table structure for table `product_detail`
--

CREATE TABLE `product_detail` (
  `p_id` bigint(20) NOT NULL,
  `p_name` varchar(70) NOT NULL,
  `p_price` bigint(20) NOT NULL,
  `p_description` text NOT NULL,
  `p_image` varchar(100) NOT NULL,
  `c_name` varchar(100) NOT NULL,
  `is_active` bigint(10) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_detail`
--

INSERT INTO `product_detail` (`p_id`, `p_name`, `p_price`, `p_description`, `p_image`, `c_name`, `is_active`) VALUES
(1, 'Buttons tweed blazer', 59, 'Tweed fabric. Fabric with cotton. Double button design. Straight design. Lapel-collar V-neck collar. Lapel with notch. Long sleeve. Two pockets with flaps on the front. Inner lining. Button fastening on the front section.', 'images/product-2.jpg', 'men', 1),
(2, 'Floral print dress', 50, 'Committed Collection. Flowy fabric. Sheer fabric. Midi design. Flared design. V-neck. Long sleeve with buttoned cuffs. Elastic panel. Zip and button fastening. Lined buttons.\r\n\r\nThe garments labelled as Committed are products that have been produced using sustainable fibres or processes, reducing their environmental impact. ', 'images/product-1.jpg', 'women', 1),
(3, 'Tropical Printed Dress', 70, 'Committed Collection. Flowy fabric. Sheer fabric. Midi design. Flared design. V-neck. Long sleeve with buttoned cuffs. Elastic panel. Zip and button fastening. Lined buttons.\r\n\r\nThe garments labelled as Committed are products that have been produced using sustainable fibres or processes, reducing their environmental impact. ', 'images/offshoulderdress.jpg', 'women', 1),
(4, ' Georgette A-Line Dress', 60, 'Flowy fabric. Satin finish. Straight design. Short design. Rounded neck. Long buttoned sleeve. Drawstring waist. One button fastening.\r\n\r\nThe garments labelled as Committed are products that have been produced using sustainable fibres or processes, reducing their environmental impact.', 'images/minidress.jpg', 'women', 1),
(5, 'Wool suit blazer', 100, 'Viscose fabric. Fabric with wool. Structured. Straight design. Short design. Lapel-collar V-neck collar. Long sleeve. Two pockets with flaps. One button fastening. Inner lining. Total look.\r\n\r\nThe garments labelled as Committed are products that have been produced using sustainable fibres or processes, reducing their environmental impact.', 'images/blazerwomen.jpg', 'women', 1),
(6, 'Double-breasted wool coat', 250, 'Committed Collection. Wool mix fabric. Double button design. Long design. Lapel-collar V-neck collar. Lapel with notch. Long sleeve with buttoned cuffs. Two pockets with flaps on the front. Back-slit hem. Inner lining. Button fastening on the front section', 'images/Doublebreastedwoolcoat.jpg', 'women', 1),
(7, 'Denim crop dungarees', 150, '100% Cotton. Denim fabric. Cropped design. Straight design. Straight neck. Wide straps. Adjustable straps. Chest pocket. Side pockets. Cuffed hem. Contrasting seams.\r\n\r\nThe garments labelled as Committed are products that have been produced using sustainable fibres or processes, reducing their environmental impact.', 'images/dungarees.jpg', 'women', 1),
(8, 'Long Sleeve Stylish Tops', 120, 'Light fabric. Straight design. Rounded neck. Long sleeve.\r\n\r\nThe garments labelled as Committed are products that have been produced using sustainable fibres or processes, reducing their environmental impact.', 'images/westerntop.jpg', 'women', 1),
(10, 'Floral Girls Party Wear Dress', 50, 'A Fail Safe Embellished Party Dress For Your Cute Little Fashionista. A Shimmery Embellished Yoke Being The Highlight Of This Sleeveless One-Piece Dress, The High Neck And Fit And Flare Design Are Too Good To Miss. Style With Some Fancy Hairpins And Shoes To Finish Her Look.', 'images/kid1.jpg_1088Wx1632H', 'kids', 1),
(11, 'Gold Plated Pearl Choker', 200, 'contains : 1 necklace + 1 pair of earring\r\ndimension : necklace pendant length - 65 cm, necklace width - 25 cm, earring length - 3 cm, earring width - 3 cm\r\nsuperior quality & skin friendly: high quality as per international standards it has been made from toxic free materials anti-allergic and safe for skin it can be worn over long time periods without any complains of ach and swelling', 'images/access1.jpg', 'access', 1),
(12, 'mkdclw', 89, 'dnckwdmc v', 'images/rp-4.jpg', 'men', 1),
(13, 'mvjkefnm ', 20, 'mdckwdmvw vwm jnwkv kjw', 'images/product-7.jpg', 'women', 1),
(14, 'njknm', 78, 'ihjnjnn', 'images/product-3.jpg', 'women', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `product_detail`
--
ALTER TABLE `product_detail`
  ADD PRIMARY KEY (`p_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `c_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product_detail`
--
ALTER TABLE `product_detail`
  MODIFY `p_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
