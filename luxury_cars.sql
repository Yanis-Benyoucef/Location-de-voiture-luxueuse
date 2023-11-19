-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 19, 2023 at 09:34 PM
-- Server version: 5.7.39
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `luxury_cars`
--

-- --------------------------------------------------------

--
-- Table structure for table `Avis`
--

CREATE TABLE `Avis` (
  `id_avis` int(11) NOT NULL,
  `id_vehicle` int(11) NOT NULL,
  `id_customer` int(11) DEFAULT NULL,
  `note` int(1) NOT NULL,
  `commentaire` text,
  `photo` varchar(255) DEFAULT NULL,
  `date_avis` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Avis`
--

INSERT INTO `Avis` (`id_avis`, `id_vehicle`, `id_customer`, `note`, `commentaire`, `photo`, `date_avis`, `first_name`, `last_name`) VALUES
(1, 1, 4, 5, 'La m3 G80 c\'est un sacré bolide ', '655100f3c8749_m3luxurycars.jpeg', '2023-11-12 16:44:35', 'Khamzat', 'Benyoucef'),
(2, 2, 1, 5, 'La GT2 RS est une folie ', '655138fd135a8_gt2 rs.jpeg', '2023-11-12 20:43:41', 'Yanis', 'Benyoucef');

-- --------------------------------------------------------

--
-- Table structure for table `Brand`
--

CREATE TABLE `Brand` (
  `id_brand` int(11) NOT NULL,
  `brand` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Brand`
--

INSERT INTO `Brand` (`id_brand`, `brand`) VALUES
(2, 'BMW'),
(4, 'McLaren'),
(3, 'Porsche'),
(1, 'Range Rover');

-- --------------------------------------------------------

--
-- Table structure for table `Category`
--

CREATE TABLE `Category` (
  `id_category` int(11) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Category`
--

INSERT INTO `Category` (`id_category`, `category`) VALUES
(4, 'Berline'),
(2, 'Sportive'),
(3, 'Supercar'),
(1, 'SUV');

-- --------------------------------------------------------

--
-- Table structure for table `Color`
--

CREATE TABLE `Color` (
  `id_color` int(11) NOT NULL,
  `color` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Color`
--

INSERT INTO `Color` (`id_color`, `color`) VALUES
(3, 'Blanc'),
(1, 'Bleu'),
(2, 'Noir');

-- --------------------------------------------------------

--
-- Table structure for table `Color_Vehicle`
--

CREATE TABLE `Color_Vehicle` (
  `id_color_vehicle` int(11) NOT NULL,
  `id_vehicle` int(11) NOT NULL,
  `id_color` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Color_Vehicle`
--

INSERT INTO `Color_Vehicle` (`id_color_vehicle`, `id_vehicle`, `id_color`) VALUES
(1, 1, 1),
(2, 3, 3),
(3, 2, 2),
(4, 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `Customers`
--

CREATE TABLE `Customers` (
  `id` int(11) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `total_avis` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Customers`
--

INSERT INTO `Customers` (`id`, `last_name`, `first_name`, `email`, `password`, `picture`, `total_avis`) VALUES
(1, 'Benyoucef', 'Yanis', 'yanis@gmail.com', '$2y$10$Gdu9llICyBuR0KGS90GKCe/DdLq8WTxnq95UU28YSlcLKRcDG7aZC', 'uploads/IMG_6132.jpeg', 0),
(4, 'Chimaev', 'Khamzat', 'khamzat@gmail.com', '$2y$10$05UqCgaWkBqKKQV70k.Qj.l5mr6pOWaG.wekkN7gI8V9qIbcWj9kS', 'uploads/m3luxurycars.jpeg', 0),
(6, 'Test', 'test', 'test@gmail.com', '$2y$10$YxWhwk9gX6W/dA.kenp6guGs8yLO4y5WRZusXo0pXw.ufrjN/vPe.', 'uploads/gt2 rs.jpeg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `Fuel`
--

CREATE TABLE `Fuel` (
  `id_fuel` int(11) NOT NULL,
  `fuel` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Fuel`
--

INSERT INTO `Fuel` (`id_fuel`, `fuel`) VALUES
(1, 'Essence'),
(2, 'Gasoil');

-- --------------------------------------------------------

--
-- Table structure for table `Image`
--

CREATE TABLE `Image` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `id_vehicle` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Image`
--

INSERT INTO `Image` (`id`, `image`, `id_vehicle`) VALUES
(1, 'https://img.pistonheads.com/LargeSize/bmw/3-series/3-0-m3-competition-4d-503-bhp/bmw-3-series-3-0-m3-competition-4d-503-bhp-1074764673-3.jpg', 1),
(2, 'https://img.pistonheads.com/LargeSize/bmw/3-series/3-0-m3-competition-4d-503-bhp/bmw-3-series-3-0-m3-competition-4d-503-bhp-1074764673-6.jpg', 1),
(3, 'https://img.pistonheads.com/LargeSize/bmw/3-series/3-0-m3-competition-4d-503-bhp/bmw-3-series-3-0-m3-competition-4d-503-bhp-1074764673-58.jpg', 1),
(4, 'https://image-annonce.lacentrale.fr/1096x829/E113131236_STANDARD_1.jpg?version=1698923668', 3),
(5, 'https://image-annonce.lacentrale.fr/1096x829/E113131236_STANDARD_3.jpg?version=1698923668', 3),
(6, 'https://image-annonce.lacentrale.fr/1096x829/E113131236_STANDARD_26.jpg?version=1698923669', 3),
(7, 'https://image-annonce.lacentrale.fr/1096x829/W102787939_STANDARD_0.jpg?version=1697441650', 2),
(8, 'https://image-annonce.lacentrale.fr/1096x829/W102787939_STANDARD_4.jpg?version=1697441650', 2),
(9, 'https://image-annonce.lacentrale.fr/1096x829/W102787939_STANDARD_12.jpg?version=1697441650', 2),
(10, 'https://image-annonce.lacentrale.fr/1096x829/E113134510_STANDARD_0.jpg?version=1699004197', 4),
(11, 'https://image-annonce.lacentrale.fr/1096x829/E113134510_STANDARD_4.jpg?version=1699004197', 4),
(12, 'https://image-annonce.lacentrale.fr/1096x829/E113134510_STANDARD_14.jpg?version=1699004197', 4);

-- --------------------------------------------------------

--
-- Table structure for table `Model`
--

CREATE TABLE `Model` (
  `id_model` int(11) NOT NULL,
  `model` varchar(255) NOT NULL,
  `brand` int(11) NOT NULL,
  `category` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Model`
--

INSERT INTO `Model` (`id_model`, `model`, `brand`, `category`) VALUES
(1, 'GT2 RS', 3, 2),
(2, 'GLC', 1, 1),
(3, 'Serie 3', 2, 4),
(4, '720s', 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `Reservations`
--

CREATE TABLE `Reservations` (
  `id_reservation` int(11) NOT NULL,
  `id_vehicle` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Reservations`
--

INSERT INTO `Reservations` (`id_reservation`, `id_vehicle`, `start_date`, `end_date`) VALUES
(1, 2, '2023-11-11', '2023-11-12'),
(2, 2, '2023-11-11', '2023-11-12'),
(3, 2, '2023-11-18', '2023-11-19'),
(4, 1, '2023-11-02', '2023-11-03');

-- --------------------------------------------------------

--
-- Table structure for table `Vehicle`
--

CREATE TABLE `Vehicle` (
  `id` int(11) NOT NULL,
  `model` int(11) NOT NULL,
  `fuel_type` int(11) NOT NULL,
  `description` text NOT NULL,
  `year` year(4) NOT NULL,
  `name` varchar(255) NOT NULL,
  `note_moyenne` decimal(3,2) DEFAULT '0.00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Vehicle`
--

INSERT INTO `Vehicle` (`id`, `model`, `fuel_type`, `description`, `year`, `name`, `note_moyenne`) VALUES
(1, 3, 1, 'BMW M3 VII (G80) 3.0 510ch Competition M xDrive', 2021, 'BMW M3 G80', '0.00'),
(2, 1, 2, 'Porsche 911 GT2 RS 700 ch', 2017, 'Porsche 911 GT2 RS', '0.00'),
(3, 4, 1, 'McLaren 720S 4.0 V8 biturbo 720ch', 2017, 'McLaren 720S', '0.00'),
(4, 2, 2, 'RANGE ROVER SPORT II 525ch Acceleration 0/100km/h : 5.3sec ', 2018, 'RANGE ROVER SPORT II', '0.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Avis`
--
ALTER TABLE `Avis`
  ADD PRIMARY KEY (`id_avis`),
  ADD KEY `id_vehicle` (`id_vehicle`),
  ADD KEY `id_customer` (`id_customer`);

--
-- Indexes for table `Brand`
--
ALTER TABLE `Brand`
  ADD PRIMARY KEY (`id_brand`),
  ADD UNIQUE KEY `brand` (`brand`);

--
-- Indexes for table `Category`
--
ALTER TABLE `Category`
  ADD PRIMARY KEY (`id_category`),
  ADD UNIQUE KEY `category` (`category`);

--
-- Indexes for table `Color`
--
ALTER TABLE `Color`
  ADD PRIMARY KEY (`id_color`),
  ADD UNIQUE KEY `color` (`color`);

--
-- Indexes for table `Color_Vehicle`
--
ALTER TABLE `Color_Vehicle`
  ADD PRIMARY KEY (`id_color_vehicle`),
  ADD KEY `id_color` (`id_color`),
  ADD KEY `id_vehicle` (`id_vehicle`);

--
-- Indexes for table `Customers`
--
ALTER TABLE `Customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `Fuel`
--
ALTER TABLE `Fuel`
  ADD PRIMARY KEY (`id_fuel`),
  ADD UNIQUE KEY `fuel` (`fuel`);

--
-- Indexes for table `Image`
--
ALTER TABLE `Image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_vehicle` (`id_vehicle`);

--
-- Indexes for table `Model`
--
ALTER TABLE `Model`
  ADD PRIMARY KEY (`id_model`),
  ADD UNIQUE KEY `model` (`model`),
  ADD KEY `brand` (`brand`),
  ADD KEY `category` (`category`);

--
-- Indexes for table `Reservations`
--
ALTER TABLE `Reservations`
  ADD PRIMARY KEY (`id_reservation`),
  ADD KEY `id_vehicle` (`id_vehicle`);

--
-- Indexes for table `Vehicle`
--
ALTER TABLE `Vehicle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `model` (`model`),
  ADD KEY `fuel_type` (`fuel_type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Avis`
--
ALTER TABLE `Avis`
  MODIFY `id_avis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Brand`
--
ALTER TABLE `Brand`
  MODIFY `id_brand` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Category`
--
ALTER TABLE `Category`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Color`
--
ALTER TABLE `Color`
  MODIFY `id_color` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Color_Vehicle`
--
ALTER TABLE `Color_Vehicle`
  MODIFY `id_color_vehicle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Customers`
--
ALTER TABLE `Customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `Fuel`
--
ALTER TABLE `Fuel`
  MODIFY `id_fuel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `Image`
--
ALTER TABLE `Image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `Model`
--
ALTER TABLE `Model`
  MODIFY `id_model` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Reservations`
--
ALTER TABLE `Reservations`
  MODIFY `id_reservation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `Vehicle`
--
ALTER TABLE `Vehicle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Avis`
--
ALTER TABLE `Avis`
  ADD CONSTRAINT `avis_ibfk_1` FOREIGN KEY (`id_vehicle`) REFERENCES `Vehicle` (`id`),
  ADD CONSTRAINT `avis_ibfk_2` FOREIGN KEY (`id_customer`) REFERENCES `Customers` (`id`);

--
-- Constraints for table `Color_Vehicle`
--
ALTER TABLE `Color_Vehicle`
  ADD CONSTRAINT `color_vehicle_ibfk_1` FOREIGN KEY (`id_color`) REFERENCES `Color` (`id_color`),
  ADD CONSTRAINT `color_vehicle_ibfk_2` FOREIGN KEY (`id_vehicle`) REFERENCES `Vehicle` (`id`);

--
-- Constraints for table `Image`
--
ALTER TABLE `Image`
  ADD CONSTRAINT `image_ibfk_1` FOREIGN KEY (`id_vehicle`) REFERENCES `Vehicle` (`id`);

--
-- Constraints for table `Model`
--
ALTER TABLE `Model`
  ADD CONSTRAINT `model_ibfk_1` FOREIGN KEY (`brand`) REFERENCES `Brand` (`id_brand`),
  ADD CONSTRAINT `model_ibfk_2` FOREIGN KEY (`category`) REFERENCES `Category` (`id_category`);

--
-- Constraints for table `Reservations`
--
ALTER TABLE `Reservations`
  ADD CONSTRAINT `reservations_ibfk_1` FOREIGN KEY (`id_vehicle`) REFERENCES `Vehicle` (`id`);

--
-- Constraints for table `Vehicle`
--
ALTER TABLE `Vehicle`
  ADD CONSTRAINT `vehicle_ibfk_1` FOREIGN KEY (`model`) REFERENCES `Model` (`id_model`),
  ADD CONSTRAINT `vehicle_ibfk_2` FOREIGN KEY (`fuel_type`) REFERENCES `Fuel` (`id_fuel`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
