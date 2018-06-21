-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2018 at 10:10 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `car_rent`
--

CREATE TABLE `car_rent` (
  `transactions` int(6) UNSIGNED NOT NULL,
  `fk_userId` int(11) NOT NULL,
  `fk_carId` int(11) NOT NULL,
  `rent_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `price_list`
--

CREATE TABLE `price_list` (
  `price_id` int(6) UNSIGNED NOT NULL,
  `price_value` int(10) NOT NULL,
  `fk_carId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(11) NOT NULL,
  `userName` varchar(30) NOT NULL,
  `userEmail` varchar(60) NOT NULL,
  `userPass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `userName`, `userEmail`, `userPass`) VALUES
(3, 'user one', 'user1@mail.com', '1e9d59ad9be1cb302e155d55b61c95b3b3db897da2ed9643b15f8802039ffc8c'),
(4, 'user two', 'user2@mail.com', 'f64c95e5e1f4537428da7ba9fd1ee87bd263091c38c52d52cefb8e2b408983e8'),
(5, 'user three', 'user3@mail.com', '3f296cc62af0268616473fb36fe5acbbeacec67525d457043161fdbd39f20d15'),
(6, 'test vier', 'test4@mail.com', '14315c45b6b88c54ff35fe69cbeb250e41f263d4a1dc9b8cec8b2d45f6ac288e');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(6) UNSIGNED NOT NULL,
  `car_model` varchar(30) NOT NULL,
  `car_class` varchar(30) NOT NULL,
  `car_manufacturer` varchar(30) NOT NULL,
  `car_regdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `car_model`, `car_class`, `car_manufacturer`, `car_regdate`) VALUES
(1, 'TLX', 'upper-range', 'Acura', '2018-09-12'),
(2, 'CR-V', 'compact SUV', 'Honda', '2017-03-04'),
(3, 'Ciaz', 'compact-car', 'Maruti Suzuki', '2015-05-06'),
(4, 'F-Pace', 'SUV', 'Jaguar', '2017-06-12'),
(5, 'Focus', 'compact-car', 'Ford', '2016-11-09'),
(6, 'Alto 800', 'mini', 'Maruti-Suzuku', '2016-12-05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car_rent`
--
ALTER TABLE `car_rent`
  ADD PRIMARY KEY (`transactions`);

--
-- Indexes for table `price_list`
--
ALTER TABLE `price_list`
  ADD PRIMARY KEY (`price_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`),
  ADD UNIQUE KEY `userEmail` (`userEmail`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `car_rent`
--
ALTER TABLE `car_rent`
  MODIFY `transactions` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `price_list`
--
ALTER TABLE `price_list`
  MODIFY `price_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
