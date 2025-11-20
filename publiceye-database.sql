-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2025 at 07:20 AM
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
-- Database: `publiceye`
--

-- --------------------------------------------------------

--
-- Table structure for table `post_comments`
--

CREATE TABLE `post_comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `tender_user_id` int(11) NOT NULL,
  `comment_text` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post_comments`
--

INSERT INTO `post_comments` (`id`, `post_id`, `user_id`, `tender_user_id`, `comment_text`, `created_at`) VALUES
(3, 3, 8, 4, 'Much-needed upgrade! This will definitely help reduce traffic congestion during peak hours. Hope it’s completed on time', '2025-08-02 03:34:36'),
(7, 3, 10, 4, 'good job by smantar nirman sewa pvt', '2025-08-02 06:02:11');

-- --------------------------------------------------------

--
-- Table structure for table `post_likes`
--

CREATE TABLE `post_likes` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `tender_user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post_likes`
--

INSERT INTO `post_likes` (`id`, `post_id`, `user_id`, `tender_user_id`, `created_at`) VALUES
(7, 2, 8, 3, '2025-08-02 04:32:06'),
(8, 3, 8, 4, '2025-08-02 04:50:34'),
(9, 4, 8, 6, '2025-08-02 05:38:02');

-- --------------------------------------------------------

--
-- Table structure for table `reporting`
--

CREATE TABLE `reporting` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `report_text` text NOT NULL,
  `report_image` varchar(255) DEFAULT NULL,
  `report_video` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reporting`
--

INSERT INTO `reporting` (`id`, `user_id`, `report_text`, `report_image`, `report_video`, `created_at`) VALUES
(7, 8, 'Despite high expectations, the ongoing road extension project in Chakrapath is raising serious concerns among locals and commuters. While the project’s objective is appreciated, the current execution lacks efficiency, planning, and consideration for the daily lives of the people in the area.', 'uploads/img_688d88963e913.png', NULL, '2025-08-02 03:40:06'),
(8, NULL, 'Subject: Unplanned Construction Causing Daily Disruption in Chakrapath\r\nThe road extension work underway in Chakrapath, while long overdue, is being carried out with little consideration for the daily lives of residents, commuters, and local businesses. The lack of proper planning and public coordination is causing more disruption than development at this stage.', 'uploads/img_688d890716a41.png', NULL, '2025-08-02 03:41:59');

-- --------------------------------------------------------

--
-- Table structure for table `tender_custom_fields`
--

CREATE TABLE `tender_custom_fields` (
  `id` int(11) NOT NULL,
  `tender_user_id` int(11) NOT NULL,
  `field_label` varchar(255) NOT NULL,
  `field_value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tender_custom_fields`
--

INSERT INTO `tender_custom_fields` (`id`, `tender_user_id`, `field_label`, `field_value`) VALUES
(4, 3, 'Category', ''),
(5, 4, 'Category', ''),
(6, 4, 'Project Descriptioin', ''),
(8, 6, 'Funding', ''),
(9, 6, 'Project Descriptioin', ''),
(11, 10, 'f', '');

-- --------------------------------------------------------

--
-- Table structure for table `tender_form_data`
--

CREATE TABLE `tender_form_data` (
  `id` int(11) NOT NULL,
  `tender_user_id` int(11) NOT NULL,
  `field_label` varchar(255) NOT NULL,
  `field_value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tender_form_data`
--

INSERT INTO `tender_form_data` (`id`, `tender_user_id`, `field_label`, `field_value`) VALUES
(9, 3, 'Contractor Name', 'China Railway 18th Bureau Group Co.Ltd'),
(10, 3, 'Contact Number', '9659949077'),
(11, 3, 'Contact Email', 'chaina@gmail.com'),
(12, 3, 'Budget', '1500000000'),
(13, 3, 'Project Location', 'Chakrapath'),
(14, 3, 'Start Date', '2023-12-07'),
(15, 3, 'Expected End Date', '2024-12-06'),
(16, 3, 'Category', 'Road'),
(17, 4, 'Contractor Name', 'Samantar Nirman Sewa Pvt'),
(18, 4, 'Contact Number', '9774599918'),
(19, 4, 'Contact Email', 'info@samantagroup.com'),
(20, 4, 'Budget', '5198632577.33'),
(21, 4, 'Project Location', 'Ramshapath'),
(22, 4, 'Start Date', '2021-01-04'),
(23, 4, 'Expected End Date', '2024-01-04'),
(24, 4, 'Category', 'Construction'),
(25, 4, 'Project Descriptioin', 'New Construction project of Supreme Court Building Complex'),
(26, 6, 'Contractor Name', 'Hazama Ando Corporation'),
(27, 6, 'Contact Number', '0122968544'),
(28, 6, 'Contact Email', 'hazama@gmail.com'),
(29, 6, 'Budget', '22000000000'),
(30, 6, 'Project Location', 'Nagdhunga'),
(31, 6, 'Start Date', '2019-02-19'),
(32, 6, 'Expected End Date', '2025-01-09'),
(33, 6, 'Funding', 'Japanese Government and Nepali government'),
(34, 6, 'Project Descriptioin', 'Construction of Nagdhunga Tunnel to improve east-west connectivity and reduce traffic congestion at Kathmandu’s western entry point');

-- --------------------------------------------------------

--
-- Table structure for table `tender_project_posts`
--

CREATE TABLE `tender_project_posts` (
  `id` int(11) NOT NULL,
  `tender_user_id` int(11) NOT NULL,
  `post_text` text NOT NULL,
  `post_image` varchar(255) DEFAULT NULL,
  `post_video` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tender_project_posts`
--

INSERT INTO `tender_project_posts` (`id`, `tender_user_id`, `post_text`, `post_image`, `post_video`, `created_at`) VALUES
(2, 3, 'Project Initiated: Ring Road Extention – Chakrapath Area\r\n\r\nWe are pleased to announce the commencement of a major infrastructure project in the Chakrapath area. This initiative aims to improve road quality, traffic flow, and pedestrian safety along one of Kathmandu&#039;s most vital ring road corridors.', 'post_img_688d804ba30c4.png', NULL, '2025-08-02 03:04:43'),
(3, 4, 'The construction is on the way', 'post_img_688d8425520c4.jpg', NULL, '2025-08-02 03:21:09'),
(4, 6, 'Project Commenced: Nagdhunga Tunnel Construction\r\n\r\nWe are excited to announce the official start of the Nagdhunga Tunnel Project, a transformative infrastructure initiative aimed at easing traffic congestion at Kathmandu’s western gateway and enhancing east-west connectivity across Nepal.', 'post_img_688d86aac0650.jpg', NULL, '2025-08-02 03:31:54');

-- --------------------------------------------------------

--
-- Table structure for table `tender_users`
--

CREATE TABLE `tender_users` (
  `id` int(11) NOT NULL,
  `project_name` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(50) DEFAULT 'Ongoing',
  `form_filled` tinyint(1) DEFAULT 0,
  `picture` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tender_users`
--

INSERT INTO `tender_users` (`id`, `project_name`, `username`, `password`, `status`, `form_filled`, `picture`, `created_at`) VALUES
(3, 'Chakrapath Service Track (Ring Road Extention)', 'chakra', '$2y$10$FRhQavbeYpBmzJ8a54NM2uswpBZQh1bRavlceGnikIlZTZHAJc7rq', 'Ongoing', 1, 'pic_688d7fb23ecbf.png', '2025-08-02 02:37:21'),
(4, 'Construction project of Supreme Court Building Complex', 'supreme', '$2y$10$FQeYjlSLXTshQGhx20Dx4O3bPEFSGMeMqAkPO4rSKpjhSq/yrJ1H6', 'Completed', 1, 'pic_688d83df2ce6d.png', '2025-08-02 02:42:03'),
(6, 'Nagdhunga Tunnel construction', 'nagdhunga', '$2y$10$fE9mIlFc9PyCxFjV3xREC.VjB26WUEq1x4tbfRx9i/6NB2Lnu58zm', 'Ongoing', 1, 'pic_688d865e45ee5.png', '2025-08-02 03:26:50'),
(10, 'dsfds', 'a', '$2y$10$nmCEpDzGbyLgkI2gc7EoR.cQqW3QIm3Vf2ZeUafi2B5do2m.CFh6q', 'Ongoing', 0, NULL, '2025-08-02 05:52:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `phone`, `address`, `profile_picture`, `username`, `password`, `created_at`) VALUES
(8, 'Pujan', 'Shakya', 'pujanshakya124@gmail.com', '+9779767410477', 'Kathmandu', 'profile_688d819030e0d8.09397492.jpg', 'pujan', '$2y$10$OVzpz7ZU.DWoSKEfaNkLG.XOhIIgEAyI5lFH3ZEGAWvm7iM8pFc8e', '2025-08-02 03:10:08'),
(9, 'Sumina', 'Gurung', 'grgsumina41@gmail.com', '+9779876543234', 'Kathmandu', 'profile_688d81ccd51d31.04973104.jpg', 'sumina', '$2y$10$9kRMaDCU7km4mYiF0am11ukIakqsSJcUkYpmTLBa2RxgSX45qPFOi', '2025-08-02 03:11:08'),
(10, 'Amit', 'Karki', 'amit@gmail.com', '+977987654321', 'Kathmandu', 'profile_688d81fdac8989.98968815.jpg', 'amit', '$2y$10$LbpOxacnpyRfZWOLNZlfTu3/cArKQ/5YFQRrYxUIDw4bXQkl12yry', '2025-08-02 03:11:57'),
(11, 'Usha', 'Pandey', 'usha@gmail.com', '+97798765432', 'Kathmandu', 'profile_688d822b2fa896.25019617.jpg', 'usha', '$2y$10$3rxa.w/eA9CH1Gynl0T7G.Gtj4U7sWlkWd8FBycu3lCFF7X2Q9iOq', '2025-08-02 03:12:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `tender_user_id` (`tender_user_id`);

--
-- Indexes for table `post_likes`
--
ALTER TABLE `post_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `tender_user_id` (`tender_user_id`);

--
-- Indexes for table `reporting`
--
ALTER TABLE `reporting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tender_custom_fields`
--
ALTER TABLE `tender_custom_fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tender_user_id` (`tender_user_id`);

--
-- Indexes for table `tender_form_data`
--
ALTER TABLE `tender_form_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tender_user_id` (`tender_user_id`);

--
-- Indexes for table `tender_project_posts`
--
ALTER TABLE `tender_project_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tender_user_id` (`tender_user_id`);

--
-- Indexes for table `tender_users`
--
ALTER TABLE `tender_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `post_comments`
--
ALTER TABLE `post_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `post_likes`
--
ALTER TABLE `post_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `reporting`
--
ALTER TABLE `reporting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tender_custom_fields`
--
ALTER TABLE `tender_custom_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tender_form_data`
--
ALTER TABLE `tender_form_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `tender_project_posts`
--
ALTER TABLE `tender_project_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tender_users`
--
ALTER TABLE `tender_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD CONSTRAINT `post_comments_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `tender_project_posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_comments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_comments_ibfk_3` FOREIGN KEY (`tender_user_id`) REFERENCES `tender_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_likes`
--
ALTER TABLE `post_likes`
  ADD CONSTRAINT `post_likes_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `tender_project_posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_likes_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `post_likes_ibfk_3` FOREIGN KEY (`tender_user_id`) REFERENCES `tender_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reporting`
--
ALTER TABLE `reporting`
  ADD CONSTRAINT `reporting_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `tender_custom_fields`
--
ALTER TABLE `tender_custom_fields`
  ADD CONSTRAINT `tender_custom_fields_ibfk_1` FOREIGN KEY (`tender_user_id`) REFERENCES `tender_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tender_form_data`
--
ALTER TABLE `tender_form_data`
  ADD CONSTRAINT `tender_form_data_ibfk_1` FOREIGN KEY (`tender_user_id`) REFERENCES `tender_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tender_project_posts`
--
ALTER TABLE `tender_project_posts`
  ADD CONSTRAINT `tender_project_posts_ibfk_1` FOREIGN KEY (`tender_user_id`) REFERENCES `tender_users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
