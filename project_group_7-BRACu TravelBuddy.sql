-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2024 at 11:39 PM
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
-- Database: `bracu_travel_buddy`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `g_suite` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `special_code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `g_suite`, `password`, `special_code`) VALUES
(19, 'Mahmudul Hasan Tamal', 'mahmudul.hasan.tamal@g.bracu.ac.bd', '$2y$10$LDCv/q59s.oAu.JSC5dHEeloVLeKWPDKoD6nNY85wRRSzHtS71g/2', ''),
(20, 'Sahat Hossain', 'sahat.hossain@g.bracu.ac.bd', '$2y$10$rTLWhMLgIwDpJwAq5XqgvuUlZ8yPYje0d0mO.JhIVMx/GVuUGFVN.', ''),
(21, 'Priyankan Biswas', 'priyankan.biswas@g.bracu.ac.bd', '$2y$10$hd1SM8F1GnGGfvQoW2VQvO8QjkRq7kSyNDEhES2X1M8IAxKGh.DwO', ''),
(22, 'Siam Abdullah', 'siam.abdullah@g.bracu.ac.bd', '$2y$10$EMSWyBUPFmUWs3s/SQBdYedHNwqu12aPmuJasocrRsePHD9XuWN4a', '');

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

CREATE TABLE `area` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `zip_code` varchar(10) NOT NULL,
  `street_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`id`, `name`, `zip_code`, `street_name`, `created_at`) VALUES
(1, 'BRAC University', '1205', 'Road 27', '2024-09-15 09:36:18'),
(2, 'Gulshan', '1212', 'Gulshan Avenue', '2024-09-15 09:36:18'),
(3, 'Banani', '1213', 'Kamini Kaushik Road', '2024-09-15 09:36:18'),
(4, 'Baridhara', '1212', 'Park Road', '2024-09-15 09:36:18'),
(5, 'Uttara', '1230', 'Sector 4', '2024-09-15 09:36:18'),
(6, 'Mirpur', '1216', 'Mirpur 10', '2024-09-15 09:36:18'),
(7, 'Mohammadpur', '1207', 'Shyamoli', '2024-09-15 09:36:18'),
(8, 'Bashundhara', '1229', 'Block C', '2024-09-15 09:36:18'),
(9, 'Tejgaon', '1215', 'Tejgaon Industrial Area', '2024-09-15 09:36:18'),
(10, 'Motijheel', '1000', 'Dilkusha', '2024-09-15 09:36:18'),
(11, 'Paltan', '1000', 'Bijoynagar', '2024-09-15 09:36:18'),
(12, 'Khilgaon', '1219', 'Tilpapara', '2024-09-15 09:36:18'),
(13, 'Badda', '1212', 'Middle Badda', '2024-09-15 09:36:18'),
(14, 'Rampura', '1219', 'East Rampura', '2024-09-15 09:36:18'),
(15, 'Shantinagar', '1217', 'Shantinagar Road', '2024-09-15 09:36:18'),
(16, 'Malibagh', '1217', 'Malibagh Chowdhury Para', '2024-09-15 09:36:18'),
(17, 'Moghbazar', '1217', 'Moghbazar Wireless', '2024-09-15 09:36:18'),
(18, 'Kakrail', '1000', 'Kakrail Road', '2024-09-15 09:36:18'),
(19, 'Shahbagh', '1000', 'Shahbagh Road', '2024-09-15 09:36:18'),
(20, 'Farmgate', '1215', 'Kazi Nazrul Islam Avenue', '2024-09-15 09:36:18'),
(21, 'Panthapath', '1215', 'Panthapath Road', '2024-09-15 09:36:18'),
(22, 'Green Road', '1205', 'Green Road', '2024-09-15 09:36:18'),
(23, 'Kalabagan', '1205', 'Kalabagan Road', '2024-09-15 09:36:18'),
(24, 'Lalmatia', '1207', 'Lalmatia Block C', '2024-09-15 09:36:18'),
(25, 'Shyamoli', '1207', 'Shyamoli Ring Road', '2024-09-15 09:36:18'),
(26, 'Kallyanpur', '1216', 'Kallyanpur Main Road', '2024-09-15 09:36:18'),
(27, 'Agargaon', '1207', 'Agargaon Road', '2024-09-15 09:36:18'),
(28, 'Bijoy Sarani', '1215', 'Bijoy Sarani Road', '2024-09-15 09:36:18'),
(29, 'Cantonment', '1206', 'Cantonment Road', '2024-09-15 09:36:18'),
(30, 'Jatrabari', '1236', 'Jatrabari Main Road', '2024-09-15 09:36:18'),
(31, 'BRAC University', '', '', '2024-09-18 23:09:47');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `description` text NOT NULL,
  `start_area` int(11) NOT NULL,
  `end_area` int(11) NOT NULL,
  `travel_time` time NOT NULL,
  `travel_date` date DEFAULT NULL,
  `vehicle` int(11) DEFAULT NULL,
  `gender_preference` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `responses`
--

CREATE TABLE `responses` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `interested_user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `g_suite` varchar(100) NOT NULL,
  `university_sID` varchar(50) NOT NULL,
  `gender` enum('Male','Female','Other') NOT NULL,
  `dob` date NOT NULL,
  `semester_done` int(11) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `contact_profile_link` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `area_id` int(11) DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `vehicle_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`vehicle_id`, `name`, `created_at`) VALUES
(1, 'CNG', '2024-09-19 21:11:09'),
(2, 'Rickshaw', '2024-09-19 21:11:09'),
(3, 'Bus', '2024-09-19 21:11:09'),
(4, 'Private Car', '2024-09-19 21:11:09'),
(5, 'Uber/Pathao', '2024-09-19 21:11:09'),
(6, 'Others', '2024-09-19 21:11:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `g_suite` (`g_suite`);

--
-- Indexes for table `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sender_id` (`sender_id`),
  ADD KEY `receiver_id` (`receiver_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_ibfk_1` (`user_id`);

--
-- Indexes for table `responses`
--
ALTER TABLE `responses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `interested_user_id` (`interested_user_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `g_suite` (`g_suite`),
  ADD UNIQUE KEY `university_sID` (`university_sID`),
  ADD KEY `area_id` (`area_id`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`vehicle_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `area`
--
ALTER TABLE `area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `responses`
--
ALTER TABLE `responses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `vehicle_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`sender_id`) REFERENCES `student` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`receiver_id`) REFERENCES `student` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `messages_ibfk_3` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `student` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `responses`
--
ALTER TABLE `responses`
  ADD CONSTRAINT `responses_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `responses_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `student` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `responses_ibfk_3` FOREIGN KEY (`interested_user_id`) REFERENCES `student` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`area_id`) REFERENCES `area` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
