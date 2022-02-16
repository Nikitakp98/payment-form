-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2022 at 10:49 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reso`
--

-- --------------------------------------------------------

--
-- Table structure for table `resodetail`
--

CREATE TABLE `resodetail` (
  `name` varchar(50) NOT NULL,
  `phoneno` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` enum('m','f','0') NOT NULL,
  `amount` int(20) NOT NULL,
  `gst` enum('withgst','woutgst') NOT NULL,
  `totalamount` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `resodetail`
--

INSERT INTO `resodetail` (`name`, `phoneno`, `email`, `gender`, `amount`, `gst`, `totalamount`) VALUES
('Nikita', 1234567800, 'nikita@gmail.com', 'f', 8900, 'woutgst', 8900),
('Nikita', 8765432190, 'niki@gmail.com', 'f', 8900, 'woutgst', 8900),
('Nikita', 2147483647, 'nikitapatil18@vit.edu', 'f', 2000, 'withgst', 2360),
('Prathmesh Patil', 2147483647, 'PrathamP@gmail.com', 'm', 3000, 'withgst', 3540);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
