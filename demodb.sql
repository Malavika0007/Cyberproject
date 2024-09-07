-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 27, 2024 at 11:00 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demodb`
--

-- --------------------------------------------------------

--
-- Table structure for table `amberdb`
--

CREATE TABLE `amberdb` (
  `event_date` date DEFAULT NULL,
  `source_ip` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `amberdb`
--

INSERT INTO `amberdb` (`event_date`, `source_ip`) VALUES
('2024-05-20', '192.168.1.5'),
('2024-05-30', '192.168.1.7'),
('2024-06-05', '192.168.1.8'),
('2024-06-10', '192.168.1.9'),
('2024-06-15', '192.168.1.10'),
('2024-06-20', '192.168.1.11'),
('2024-06-25', '192.168.1.12'),
('2024-07-01', '192.168.1.13'),
('2024-07-23', '192.168.1.63'),
('2024-07-23', 'hosst6.example.'),
('2024-07-23', '192.168.1.73'),
('2024-07-23', 'hosst7.example.'),
('2024-07-23', '192.168.1.83'),
('2024-07-23', 'hosst8.example.'),
('2024-07-23', '192.168.1.93'),
('2024-07-23', 'hosst9.example.'),
('2024-07-23', '192.168.1.103'),
('2024-07-23', 'hosst10.example'),
('2024-07-23', '192.168.1.112'),
('2024-07-23', 'hosst11.example'),
('2024-07-23', '192.168.1.123'),
('2024-07-23', 'hosst12.example'),
('2024-07-23', '192.168.1.133'),
('2024-07-23', 'hosst13.example'),
('2024-07-23', '192.168.1.143'),
('2024-07-23', 'hosst14.example'),
('2024-07-23', '192.168.1.153'),
('2024-07-23', 'hosst15.example'),
('2024-07-23', '8.8.8.8'),
('2024-07-23', 'google-public-d'),
('2024-07-23', '8.8.4.4'),
('2024-07-23', 'google-public-d'),
('2024-07-23', '1.1.1.1'),
('2024-07-23', 'one.one.one.one'),
('2024-07-23', '1.0.0.1'),
('2024-07-23', '208.67.222.222'),
('2024-07-23', 'resolver1.opend'),
('2024-07-23', '208.67.220.220'),
('2024-07-23', 'resolver2.opend'),
('2024-07-23', '64.233.177.138'),
('2024-07-23', 'google.com'),
('2024-07-23', '142.250.190.78'),
('2024-07-23', 'youtube.com'),
('2024-07-23', '172.217.0.46'),
('2024-07-23', 'gmail.com'),
('2024-07-25', '2024-05-10'),
('2024-07-25', '2024-05-15'),
('2024-07-25', '2024-05-20'),
('2024-07-25', '2024-06-25'),
('2024-07-25', '2024-07-01'),
('2024-07-25', '0.0.0.0'),
('2024-07-25', 'host55.example.'),
('2024-07-25', 'host255.example'),
('2024-07-27', '4.4.4.4'),
('2024-07-27', 'google.com'),
('2024-07-27', 'facebook.com'),
('2024-07-27', 'instagram.com'),
('2024-07-27', '55.55.55.55');

-- --------------------------------------------------------

--
-- Table structure for table `amberdb_archive`
--

CREATE TABLE `amberdb_archive` (
  `event_date` date DEFAULT NULL,
  `source_ip` varchar(15) DEFAULT NULL,
  `deleted_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `archived_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `amberdb_archive`
--

INSERT INTO `amberdb_archive` (`event_date`, `source_ip`, `deleted_at`, `archived_date`) VALUES
('2024-05-10', '192.168.1.3', '2024-07-18 05:52:40', '2024-07-18 11:22:40'),
('2024-05-15', '192.168.1.4', '2024-07-18 05:52:40', '2024-07-18 11:22:40'),
('2024-05-01', '192.168.1.12', '2024-07-18 05:52:40', '2024-07-18 11:22:40'),
('2024-04-25', '192.168.1.13', '2024-07-18 05:52:40', '2024-07-18 11:22:40'),
('2024-04-20', '192.168.1.14', '2024-07-18 05:52:40', '2024-07-18 11:22:40'),
('2024-04-15', '192.168.1.15', '2024-07-18 05:52:40', '2024-07-18 11:22:40'),
('2024-04-10', '192.168.1.16', '2024-07-18 05:52:40', '2024-07-18 11:22:40'),
('2024-04-05', '192.168.1.17', '2024-07-18 05:52:40', '2024-07-18 11:22:40'),
('2024-04-01', '192.168.1.18', '2024-07-18 05:52:40', '2024-07-18 11:22:40'),
('2024-03-25', '192.168.1.19', '2024-07-18 05:52:40', '2024-07-18 11:22:40'),
('2024-03-20', '192.168.1.20', '2024-07-18 05:52:40', '2024-07-18 11:22:40'),
('2024-03-15', '192.168.1.21', '2024-07-18 05:52:40', '2024-07-18 11:22:40');

-- --------------------------------------------------------

--
-- Table structure for table `contact_form`
--

CREATE TABLE `contact_form` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_form`
--

INSERT INTO `contact_form` (`id`, `name`, `email`, `subject`, `message`, `created_at`) VALUES
(1, 'malavika', 'helloworld@gmail.com', 'delay', 'the packets arent been displayed on time', '2024-07-20 05:24:15'),
(2, 'malavika', 'malzz@gmail.com', 'delay', 'the packets are not getting captured', '2024-07-22 04:08:19'),
(3, 'karen johnson', 'karenrjohnson@gmail.com', 'Uploading files', 'How do I upload the file on the database?', '2024-07-25 05:00:17'),
(4, 'Johnson', 'Johnson@gmai.com', 'Unable to upload file', 'How do I upload a file into a database?', '2024-07-27 08:27:11');

-- --------------------------------------------------------

--
-- Table structure for table `greendb`
--

CREATE TABLE `greendb` (
  `event_date` date DEFAULT NULL,
  `source_ip` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `greendb`
--

INSERT INTO `greendb` (`event_date`, `source_ip`) VALUES
('2024-06-20', '192.168.2.5'),
('2024-06-25', '192.168.2.6'),
('2024-06-30', '192.168.2.7'),
('2024-07-01', '192.168.2.8'),
('2024-07-05', '192.168.2.9'),
('2024-07-10', '192.168.2.10'),
('2024-07-15', '192.168.2.11'),
('2024-07-20', '192.168.2.12'),
('2024-07-27', '192.168.1.100'),
('2024-07-27', 'example.com'),
('2024-07-27', '56.6.35.40'),
('2024-07-27', '57.6.18.133'),
('2024-07-27', '57.6.38.143'),
('2024-07-27', '56.6.23.188'),
('2024-07-27', '55.6.179.19'),
('2024-07-27', '53.6.26.118'),
('2024-07-27', '56.6.99.219'),
('2024-07-27', '56.6.183.41'),
('2024-07-27', '57.6.17.133'),
('2024-07-27', '55.6.119.136'),
('2024-07-27', '54.6.5.116'),
('2024-07-27', '56.6.30.40'),
('2024-07-27', '55.6.216.11'),
('2024-07-27', '57.6.37.143'),
('2024-07-27', '56.6.81.122'),
('2024-07-27', '53.6.46.118'),
('2024-07-27', '55.6.141.39'),
('2024-07-27', '57.6.16.133'),
('2024-07-27', '56.6.24.115'),
('2024-07-27', '56.6.97.83'),
('2024-07-27', '57.6.36.143'),
('2024-07-27', '55.6.124.48'),
('2024-07-27', '56.6.22.188'),
('2024-07-27', '57.6.15.133'),
('2024-07-27', '55.6.153.115'),
('2024-07-27', '56.6.34.40'),
('2024-07-27', '63.6.9.208'),
('2024-07-27', '57.6.35.143'),
('2024-07-27', '57.6.14.133'),
('2024-07-27', '55.6.212.195'),
('2024-07-27', '55.6.179.115'),
('2024-07-27', '53.6.106.117'),
('2024-07-27', '56.6.182.41'),
('2024-07-27', '56.6.96.115'),
('2024-07-27', '56.6.29.40'),
('2024-07-27', '53.6.108.22'),
('2024-07-27', '57.6.13.133'),
('2024-07-27', '56.6.23.115'),
('2024-07-27', '55.6.123.48'),
('2024-07-27', '4.4.4.4'),
('2024-07-27', 'google.com'),
('2024-07-27', 'facebook.com'),
('2024-07-27', 'instagram.com'),
('2024-07-27', '55.55.55.55');

-- --------------------------------------------------------

--
-- Table structure for table `greendb_archive`
--

CREATE TABLE `greendb_archive` (
  `event_date` date DEFAULT NULL,
  `source_ip` varchar(15) DEFAULT NULL,
  `deleted_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `archived_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reddb`
--

CREATE TABLE `reddb` (
  `event_date` date DEFAULT NULL,
  `source_ip` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reddb`
--

INSERT INTO `reddb` (`event_date`, `source_ip`) VALUES
('2023-07-15', '192.168.0.4'),
('2023-08-10', '192.168.0.5'),
('2023-09-20', '192.168.0.6'),
('2023-10-05', '192.168.0.7'),
('2023-11-25', '192.168.0.8'),
('2023-12-15', '192.168.0.9'),
('2024-01-10', '192.168.0.10'),
('2024-02-05', '192.168.0.11'),
('2024-03-01', '192.168.0.12'),
('2024-04-20', '192.168.0.13'),
('2024-05-15', '192.168.0.14'),
('2024-06-10', '192.168.0.15'),
('2024-06-20', '192.168.0.16'),
('2024-06-25', '192.168.0.17'),
('2024-06-30', '192.168.0.18'),
('2024-07-01', '192.168.0.19'),
('2024-07-23', '192.168.1.63'),
('2024-07-23', 'hosst6.example.'),
('2024-07-23', '192.168.1.73'),
('2024-07-23', 'hosst7.example.'),
('2024-07-23', '192.168.1.83'),
('2024-07-23', 'hosst8.example.'),
('2024-07-23', '192.168.1.93'),
('2024-07-23', 'hosst9.example.'),
('2024-07-23', '192.168.1.103'),
('2024-07-23', 'hosst10.example'),
('2024-07-23', '192.168.1.112'),
('2024-07-23', 'hosst11.example'),
('2024-07-23', '192.168.1.123'),
('2024-07-23', 'hosst12.example'),
('2024-07-23', '192.168.1.133'),
('2024-07-23', 'hosst13.example'),
('2024-07-23', '192.168.1.143'),
('2024-07-23', 'hosst14.example'),
('2024-07-23', '192.168.1.153'),
('2024-07-23', 'hosst15.example'),
('2024-07-25', '8.8.8.8'),
('2024-07-25', 'google-public-d'),
('2024-07-25', '8.8.4.4'),
('2024-07-25', 'google-public-d'),
('2024-07-25', '1.1.1.1'),
('2024-07-25', 'one.one.one.one'),
('2024-07-25', '1.0.0.1'),
('2024-07-25', '208.67.222.222'),
('2024-07-25', 'resolver1.opend'),
('2024-07-25', '208.67.220.220'),
('2024-07-25', 'resolver2.opend'),
('2024-07-25', '64.233.177.138'),
('2024-07-25', 'google.com'),
('2024-07-25', '142.250.190.78'),
('2024-07-25', 'youtube.com'),
('2024-07-25', '172.217.0.46'),
('2024-07-25', 'gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_form`
--
ALTER TABLE `contact_form`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_form`
--
ALTER TABLE `contact_form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

DELIMITER $$
--
-- Events
--
CREATE DEFINER=`root`@`localhost` EVENT `delete_old_amberdb_records` ON SCHEDULE EVERY 1 DAY STARTS '2024-07-17 14:18:56' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
  INSERT INTO AMBERDB_ARCHIVE (id, event_date, source_ip, destination_ip, destination_host, protocol, packet_length, destination_port)
  SELECT id, event_date, source_ip, destination_ip, destination_host, protocol, packet_length, destination_port
  FROM AMBERDB
  WHERE event_date < CURDATE() - INTERVAL 2 MONTH;
  
  DELETE FROM AMBERDB WHERE event_date < CURDATE() - INTERVAL 2 MONTH;
END$$

CREATE DEFINER=`root`@`localhost` EVENT `delete_old_greendb_records` ON SCHEDULE EVERY 1 DAY STARTS '2024-07-17 14:19:43' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
  INSERT INTO GREENDB_ARCHIVE (id, event_date, source_ip, destination_ip, destination_host, protocol, packet_length, destination_port)
  SELECT id, event_date, source_ip, destination_ip, destination_host, protocol, packet_length, destination_port
  FROM GREENDB
  WHERE event_date < CURDATE() - INTERVAL 1 MONTH;
  
  DELETE FROM GREENDB WHERE event_date < CURDATE() - INTERVAL 1 MONTH;
END$$

DELIMITER ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
