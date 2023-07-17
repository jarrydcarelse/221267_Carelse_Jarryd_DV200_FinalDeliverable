-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 17, 2023 at 09:08 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dentist_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `appointments_id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `surname` varchar(25) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time` time(6) NOT NULL,
  `dentist_id` int(11) NOT NULL,
  `receptionist_id` int(11) NOT NULL,
  `medicaid_number` varchar(25) NOT NULL,
  `medicalfund` varchar(25) NOT NULL,
  `description` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dentist`
--

CREATE TABLE `dentist` (
  `dentist_id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `surename` varchar(25) NOT NULL,
  `age` varchar(25) NOT NULL,
  `gender` varchar(25) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `email` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `specialisation` varchar(25) NOT NULL,
  `room_number` varchar(25) NOT NULL,
  `profile_image` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patients_id`
--

CREATE TABLE `patients_id` (
  `patient_id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `surename` varchar(25) NOT NULL,
  `age` varchar(25) NOT NULL,
  `gender` varchar(25) NOT NULL,
  `phone_number` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `medicaid_number` varchar(25) NOT NULL,
  `previous-appointments` date NOT NULL,
  `profile_image` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `receptionist`
--

CREATE TABLE `receptionist` (
  `receptionist_id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `surename` varchar(25) NOT NULL,
  `age` varchar(25) NOT NULL,
  `gender` varchar(25) NOT NULL,
  `phone_number` varchar(25) NOT NULL,
  `email` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `rank` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`appointments_id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `dentist_id` (`dentist_id`),
  ADD KEY `receptionist_id` (`receptionist_id`);

--
-- Indexes for table `dentist`
--
ALTER TABLE `dentist`
  ADD PRIMARY KEY (`dentist_id`);

--
-- Indexes for table `patients_id`
--
ALTER TABLE `patients_id`
  ADD PRIMARY KEY (`patient_id`),
  ADD KEY `patient_id` (`patient_id`);

--
-- Indexes for table `receptionist`
--
ALTER TABLE `receptionist`
  ADD PRIMARY KEY (`receptionist_id`),
  ADD KEY `receptionist_id` (`receptionist_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `appointments_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dentist`
--
ALTER TABLE `dentist`
  MODIFY `dentist_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `patients_id`
--
ALTER TABLE `patients_id`
  MODIFY `patient_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `receptionist`
--
ALTER TABLE `receptionist`
  MODIFY `receptionist_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`dentist_id`) REFERENCES `dentist` (`dentist_id`);

--
-- Constraints for table `patients_id`
--
ALTER TABLE `patients_id`
  ADD CONSTRAINT `patients_id_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `appointments` (`patient_id`);

--
-- Constraints for table `receptionist`
--
ALTER TABLE `receptionist`
  ADD CONSTRAINT `receptionist_ibfk_1` FOREIGN KEY (`receptionist_id`) REFERENCES `appointments` (`receptionist_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
