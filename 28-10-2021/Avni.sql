-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 28, 2021 at 02:39 PM
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
-- Database: `Avni`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(20) NOT NULL,
  `course_duration` varchar(10) NOT NULL,
  `course_fees` int(10) NOT NULL,
  `couse_country` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `course_duration`, `course_fees`, `couse_country`) VALUES
(1, 'Java', '3', 30000, 'India'),
(2, 'Android', '6', 23000, 'Usa'),
(3, 'Ios', '8', 50000, 'India'),
(4, 'React Native', '3', 30000, 'India'),
(5, 'Node', '6', 21000, 'Usa'),
(6, 'Php', '3', 10000, 'India'),
(7, 'Angular', '2', 20000, 'Usa'),
(8, 'Python', '3', 35000, 'India'),
(9, 'Big Data', '3', 20000, 'Usa'),
(10, 'Rubi', '3', 10000, 'India');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_fname` varchar(20) NOT NULL,
  `customer_lname` varchar(20) NOT NULL,
  `customer_city` varchar(20) NOT NULL,
  `customer_state` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_fname`, `customer_lname`, `customer_city`, `customer_state`) VALUES
(1, 'Milan', 'Sangani', 'Rajkot', 'Gujrat'),
(2, 'Siya', 'Agarwal', 'Ahmedabad', 'Gujrat'),
(3, 'Diya', 'Patel', 'Delhi', 'Uttar Pradesh'),
(4, 'Jonish', 'Ahuja', 'Baroda', 'Gujrat'),
(5, 'Shreyanshi', 'Vekariya', 'Ahmedabad', 'Gujrat'),
(6, 'Meet', 'Arora', 'Jamnagar', 'Gujrat'),
(7, 'Anjani', 'Patel', 'Jaipur', 'Rajasthan'),
(8, 'Vivan', 'Patel', 'Ahmedabad', 'Gujrat'),
(9, 'Kajal', 'Panchal', 'Rajkot', 'Gujrat'),
(10, 'Anushka', 'Sharma', 'mumbai', 'Maharashtra');

-- --------------------------------------------------------

--
-- Table structure for table `doctordetail`
--

CREATE TABLE `doctordetail` (
  `d_id` int(11) NOT NULL,
  `d_fname` varchar(20) NOT NULL,
  `d_lname` varchar(20) NOT NULL,
  `d_contact` varchar(10) NOT NULL,
  `d_field` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctordetail`
--

INSERT INTO `doctordetail` (`d_id`, `d_fname`, `d_lname`, `d_contact`, `d_field`) VALUES
(1, 'Avni', 'Sangani', '7265569595', 'Physician'),
(2, 'Shriya', 'Patel', '8265569589', 'Dentist'),
(3, 'Akhil', 'Arora', '9945398765', 'Cardiologist'),
(4, 'Abhi', 'Banerjee', '9965569595', 'Dentist'),
(5, 'Riya', 'Kansagra', '9965569589', 'Dermatologist'),
(6, 'Piyush', 'Sangani', '9945398760', 'Gynecologist'),
(7, 'Vivan', 'Patel', '9845398765', 'Physician'),
(8, 'Kajal', 'Panchal', '8865569578', 'General Surgeon'),
(9, 'Anjani', 'Patel', '9965569589', 'Physician'),
(10, 'Shreyanshi', 'Patel', '9745398765', 'Gynecologist');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` int(11) NOT NULL,
  `emp_firstname` varchar(20) NOT NULL,
  `emp_lastname` varchar(20) NOT NULL,
  `emp_email` varchar(30) NOT NULL,
  `emp_contact` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `emp_firstname`, `emp_lastname`, `emp_email`, `emp_contact`) VALUES
(1, 'Avni', 'Sangani', 'avani@gmail.com', '9265569595'),
(2, 'Anjani', 'Patel', 'anjani@gmail.com', '9265569585'),
(3, 'Shriya', 'Patel', 'shriya@gmail.com', '8264569595'),
(4, 'Riya', 'Kansagra', 'riya@gmail.com', '9965569580'),
(5, 'Shreyanshi', 'Vekariya', 'shreyanshi@gmail.com', '7265569085'),
(6, 'Kajal', 'Panchal', 'kajal@gmail.com', '8264789595'),
(7, 'Piyush', 'Patel', 'piyush@gmail.com', '8265560585'),
(8, 'Vishv', 'Sangani', 'vishv@gmail.com', '9965589580'),
(9, 'Vrinda', 'Usadadiya', 'vrinda@gmail.com', '7265569795'),
(10, 'Khyati', 'Dadhaniya', 'khyati@gmail.com', '8264569597');

-- --------------------------------------------------------

--
-- Table structure for table `facultyDetail`
--

CREATE TABLE `facultyDetail` (
  `f_id` int(11) NOT NULL,
  `f_fname` varchar(20) NOT NULL,
  `f_lname` varchar(20) NOT NULL,
  `f_city` varchar(20) NOT NULL,
  `f_course` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `facultyDetail`
--

INSERT INTO `facultyDetail` (`f_id`, `f_fname`, `f_lname`, `f_city`, `f_course`) VALUES
(1, 'Avni', 'Sangani', 'Ahmedabad', 'React Native'),
(2, 'Shiya ', 'Patel', 'Ahmedabad', 'Php'),
(3, 'Kajal ', 'Panchal', 'Ahmedabad', 'Java'),
(4, 'Anjani', 'Patel', 'Delhi', 'Android'),
(5, 'Shreyanshi', 'Vekariya', 'Ahmedabad', 'Ios'),
(6, 'Viraj', 'Ahuja', 'Rajkot', 'Javascript'),
(7, 'Piyush', 'Sangani', 'Delhi', 'Ios'),
(8, 'Diya', 'Sangani', 'Rajkot', 'React Js'),
(9, 'Siya', 'Patel', 'Ahmedabad', 'Angular'),
(10, 'Piya', 'Patel', 'Delhi', 'Php');

-- --------------------------------------------------------

--
-- Table structure for table `moviedetail`
--

CREATE TABLE `moviedetail` (
  `movie_id` int(11) NOT NULL,
  `movie_name` varchar(50) NOT NULL,
  `movie_actor_name` varchar(50) NOT NULL,
  `movie_actress_name` varchar(50) NOT NULL,
  `movie_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `moviedetail`
--

INSERT INTO `moviedetail` (`movie_id`, `movie_name`, `movie_actor_name`, `movie_actress_name`, `movie_type`) VALUES
(1, 'Shershaah', 'Sidharth Malhotra', 'Kiara Advani', 'Biographical'),
(2, 'Bhuj', '‎Ajay Devgn', ' Sonakshi Sinha', 'War Film'),
(3, 'Mimi', 'Pankaj Tripathi', ' ‎Kriti Sanon', 'Comedy Drama'),
(4, 'Bell Bottom', 'Akshay Kumar', 'Vaani Kapoor', 'Thriller'),
(5, 'Roohi', 'Rajkummar Rao', 'Janhvi Kapoor', 'Comedy Horror'),
(6, 'Laxmii', 'Akshay Kumar', 'Kiara Advani', 'horror comedy'),
(7, 'Kabir Singh', 'Shahid Kapoor', 'Kiara Advani', ' Romantic Drama '),
(8, 'Tanhaji', 'Ajay Devgan', 'Kajol', 'Warrior'),
(9, 'War', 'Hrithik Roshan', 'Karina Kapoor', 'War Film'),
(10, 'Baaghi 3', 'Tiger Shroff', 'Shraddha Kapoor', 'Action Film');

-- --------------------------------------------------------

--
-- Table structure for table `patientdetail`
--

CREATE TABLE `patientdetail` (
  `p_id` int(11) NOT NULL,
  `p_fname` varchar(20) NOT NULL,
  `p_lname` varchar(20) NOT NULL,
  `p_city` varchar(20) NOT NULL,
  `p_contact` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patientdetail`
--

INSERT INTO `patientdetail` (`p_id`, `p_fname`, `p_lname`, `p_city`, `p_contact`) VALUES
(1, 'Avni', 'Sangani', 'Rajkot', '9265569495'),
(2, 'Kajal', 'Panchal', 'Ahmedabad', '9265569489'),
(3, 'Shriya', 'Patel', 'Baroda', '7265061787'),
(4, 'Viraj', 'Ahuja', 'Rajkot', '9965569489'),
(5, 'Arun', 'Reddy', 'Ahmedabad', '7265061767'),
(6, 'Riya', 'Kansagra', 'Jamnagar', '9765569489'),
(7, 'Vrinda', 'Usadadiya', 'Mumbai', '9968769489'),
(8, 'Swati', 'Arora', 'Delhi', '9265569490'),
(9, 'Krisha', 'Patel', 'Rajkot', '9265599490'),
(10, 'Priya', 'Sangani', 'Ahmedabad', '9968969489');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(20) NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_quantity` int(50) NOT NULL,
  `Product_categories` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_price`, `product_quantity`, `Product_categories`) VALUES
(1, 'Wings Of Fire', 500, 2, 'Books and Stationery'),
(2, 'moisturizer ', 900, 1, 'Beauty Products'),
(3, 'Hair Straightener', 2000, 1, 'Consumer Electronics'),
(4, 'Bracelet ', 1500, 3, 'Fashion Accessories'),
(5, 'Fear Not: Be Strong', 1200, 5, 'Books and Stationery'),
(6, 'Handmade Table ', 5000, 1, 'Furniture'),
(7, 'Foundation', 2500, 2, 'Beauty Products'),
(8, 'Necklace', 6000, 2, 'Jewellery'),
(9, 'Believe in Yourself', 1500, 1, 'Books and Stationery'),
(10, 'Hair Dryer', 3000, 1, 'Consumer Electronics');

-- --------------------------------------------------------

--
-- Table structure for table `salaryDetail`
--

CREATE TABLE `salaryDetail` (
  `s_id` int(11) NOT NULL,
  `emp_id` int(20) NOT NULL,
  `emp_name` varchar(20) NOT NULL,
  `emp_city` varchar(20) NOT NULL,
  `salary` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `salaryDetail`
--

INSERT INTO `salaryDetail` (`s_id`, `emp_id`, `emp_name`, `emp_city`, `salary`) VALUES
(1, 1, 'Avni', 'Rajkot', 25000),
(2, 2, 'Kajal ', 'Ahmedabad', 30000),
(3, 3, 'Shriya', 'Ahmedabad', 20000),
(4, 4, 'Pinky', 'Delhi', 15000),
(5, 5, 'Piyush', 'Ahmedabad', 22000),
(6, 6, 'Viraj', 'Ahmedabad', 30000),
(7, 7, 'pooja', 'Baroda', 35000),
(8, 8, 'Meet', 'Ahmedabad', 30000),
(9, 9, 'Siya', 'Delhi', 22000),
(10, 10, 'Diya', 'Mumbai', 22000);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stud_id` int(11) NOT NULL,
  `stud_firstname` varchar(20) NOT NULL,
  `stud_lastname` varchar(20) NOT NULL,
  `stud_city` varchar(20) NOT NULL,
  `stud_contact` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stud_id`, `stud_firstname`, `stud_lastname`, `stud_city`, `stud_contact`) VALUES
(1, 'Shriya', 'Patel', 'Ahmedabad', '9878675467'),
(2, 'Riya', 'Kansagra', 'Chittorgarh', '8978685467'),
(3, 'Abhimanyu', 'Arora', 'Mumbai', '8978685478'),
(4, 'Avni', 'Patel', 'Rajkot', '7265061787'),
(5, 'Kajal ', 'Panchal', 'Ahmedabad', '7265061788'),
(6, 'Misti', 'Arora', 'Delhi', '9978685476'),
(7, 'Viraj', 'Sangani', 'Junagadh', '8970685476'),
(8, 'Diya', 'Patel', 'bengaluru', '9988776655'),
(9, 'Khyati', 'Dadhaniya', 'Rajkot', '9878675469'),
(10, 'Archana', 'Ranpariya', 'bengaluru', '8767549945');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `doctordetail`
--
ALTER TABLE `doctordetail`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`);

--
-- Indexes for table `facultyDetail`
--
ALTER TABLE `facultyDetail`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `moviedetail`
--
ALTER TABLE `moviedetail`
  ADD PRIMARY KEY (`movie_id`);

--
-- Indexes for table `patientdetail`
--
ALTER TABLE `patientdetail`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `salaryDetail`
--
ALTER TABLE `salaryDetail`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stud_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `doctordetail`
--
ALTER TABLE `doctordetail`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `emp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `facultyDetail`
--
ALTER TABLE `facultyDetail`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `moviedetail`
--
ALTER TABLE `moviedetail`
  MODIFY `movie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `patientdetail`
--
ALTER TABLE `patientdetail`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `salaryDetail`
--
ALTER TABLE `salaryDetail`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `stud_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
