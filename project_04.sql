-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 28, 2022 at 05:58 AM
-- Server version: 8.0.21
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_04`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
CREATE TABLE IF NOT EXISTS `courses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `semester` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `name`, `code`, `credit`, `type`, `semester`) VALUES
(1, 'ACC', 'ACC 101', '3', 'theory', 1),
(2, 'ICS', 'CSE 110', '2', 'theory', 1),
(3, 'ElectCt-1', 'EEE 101', '3', 'theory', 1),
(4, 'ENG-1', 'ENG 101', '3', 'theory', 1),
(5, 'EM-1', 'MAT 105', '3', 'theory', 1),
(6, 'PHY-1', 'PHY 101', '3', 'theory', 1),
(7, 'DM', 'CSE 103', '3', 'theory', 2),
(8, 'SP', 'CSE 111', '2', 'theory', 2),
(9, 'Elect-1', 'EEE 211', '3', 'theory', 2),
(10, 'ENG-2', 'ENG 103', '2', 'theory', 2),
(11, 'EM-2', 'MAT 107', '3', 'theory', 2),
(12, 'PHY-2', 'PHY 103', '3', 'theory', 2),
(13, 'OOP', 'CSE 211', '3', 'theory', 3),
(14, 'DS', 'CSE 221', '3', 'theory', 3),
(15, 'ECO', 'ECO 201', '3', 'theory', 3),
(16, 'DE', 'EEE 311', '3', 'theory', 3),
(17, 'EM-3', 'MAT 201', '3', 'theory', 3),
(18, 'ADA', 'CSE 225', '3', 'theory', 4),
(19, 'DMS', 'CSE 237', '3', 'theory', 4),
(20, 'SS', 'EEE 201', '3', 'theory', 4),
(21, 'EM-4', 'MAT 203', '3', 'theory', 4),
(22, 'IBM', 'MGT 203', '3', 'theory', 4),
(23, 'MM', 'EEE 371', '3', 'theory', 5),
(24, 'SEISD', 'CSE 305', '4', 'theory', 5),
(25, 'CE', 'EEE 309', '3', 'theory', 5),
(26, 'OB', 'MGT 251', '3', 'theory', 5),
(27, 'CMEP', 'CSE 301', '3', 'theory', 5);

-- --------------------------------------------------------

--
-- Table structure for table `enrollment`
--

DROP TABLE IF EXISTS `enrollment`;
CREATE TABLE IF NOT EXISTS `enrollment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_id` int DEFAULT NULL,
  `course_id` int DEFAULT NULL,
  `type_id` int DEFAULT NULL,
  `section_id` int DEFAULT NULL,
  `teacher_id` int DEFAULT NULL,
  `session_id` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_id` (`student_id`),
  KEY `teacher_id` (`teacher_id`),
  KEY `course_id` (`course_id`),
  KEY `section_id` (`section_id`),
  KEY `session_id` (`session_id`),
  KEY `type_id` (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enrollment`
--

INSERT INTO `enrollment` (`id`, `student_id`, `course_id`, `type_id`, `section_id`, `teacher_id`, `session_id`, `status`) VALUES
(1, 25, 1, 1, 1, 2, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `marks_assign`
--

DROP TABLE IF EXISTS `marks_assign`;
CREATE TABLE IF NOT EXISTS `marks_assign` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_id` int DEFAULT NULL,
  `teacher_id` int DEFAULT NULL,
  `course_id` int DEFAULT NULL,
  `section_id` int DEFAULT NULL,
  `session_id` int DEFAULT NULL,
  `dist_id` int DEFAULT NULL,
  `marks` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `teacher_id` (`teacher_id`),
  KEY `session_id` (`session_id`),
  KEY `student_id` (`student_id`),
  KEY `course_id` (`course_id`),
  KEY `section_id` (`section_id`),
  KEY `dist_id` (`dist_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `marks_assign`
--

INSERT INTO `marks_assign` (`id`, `student_id`, `teacher_id`, `course_id`, `section_id`, `session_id`, `dist_id`, `marks`) VALUES
(1, 25, 2, 1, 1, 3, 157, 54),
(2, 25, 2, 1, 1, 3, 158, 30),
(3, 25, 2, 1, 1, 3, 159, 10);

-- --------------------------------------------------------

--
-- Table structure for table `num_dist`
--

DROP TABLE IF EXISTS `num_dist`;
CREATE TABLE IF NOT EXISTS `num_dist` (
  `id` int NOT NULL AUTO_INCREMENT,
  `course_id` int DEFAULT NULL,
  `teacher_id` int DEFAULT NULL,
  `section_id` int DEFAULT NULL,
  `session_id` int DEFAULT NULL,
  `catagory_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marks` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `teacher_id` (`teacher_id`),
  KEY `course_id` (`course_id`),
  KEY `section_id` (`section_id`),
  KEY `session_id` (`session_id`)
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `num_dist`
--

INSERT INTO `num_dist` (`id`, `course_id`, `teacher_id`, `section_id`, `session_id`, `catagory_name`, `marks`) VALUES
(1, 5, 3, 1, 7, 'ct-1', 5),
(2, 5, 3, 1, 7, 'ct-2', 5),
(3, 5, 3, 1, 7, 'attendance', 10),
(4, 5, 3, 1, 7, 'assignment', 10),
(5, 5, 3, 1, 7, 'mid', 20),
(6, 5, 3, 1, 7, 'final', 50),
(7, 11, 3, 4, 8, 'attendance', 10),
(8, 11, 3, 4, 8, 'assignment', 10),
(9, 11, 3, 4, 8, 'ct', 10),
(10, 11, 3, 4, 8, 'mid', 20),
(11, 11, 3, 4, 8, 'final', 50),
(12, 18, 12, 10, 2, 'attendance', 10),
(13, 18, 12, 10, 2, 'ct', 10),
(14, 18, 12, 10, 2, 'assignment', 10),
(15, 18, 12, 10, 2, 'mid', 20),
(16, 18, 12, 10, 2, 'final', 50),
(17, 21, 3, 10, 2, 'assignment', 20),
(18, 21, 3, 10, 2, 'mid', 30),
(19, 21, 3, 10, 2, 'final', 50),
(39, 24, 16, 14, 3, 'mid', 50),
(40, 24, 16, 14, 3, 'final', 50),
(41, 24, 16, 15, 3, 'mid', 50),
(42, 24, 16, 15, 3, 'final', 50),
(43, 24, 16, 13, 3, 'attendance', 10),
(44, 24, 16, 13, 3, 'assignment', 10),
(45, 24, 16, 13, 3, 'ct', 10),
(46, 24, 16, 13, 3, 'mid', 20),
(47, 24, 16, 13, 3, 'final', 50),
(48, 3, 2, 1, 7, 'attendance', 10),
(49, 3, 2, 1, 7, 'assignment ', 10),
(50, 3, 2, 1, 7, 'ct', 10),
(51, 3, 2, 1, 7, 'mid', 20),
(52, 3, 2, 1, 7, 'final', 50),
(62, 9, 9, 4, 8, 'attendance', 10),
(63, 9, 9, 4, 8, 'assignment', 10),
(64, 9, 9, 4, 8, 'ct-1', 5),
(65, 9, 9, 4, 8, 'ct-2', 5),
(66, 9, 9, 4, 8, 'mid', 20),
(67, 9, 9, 4, 8, 'final', 50),
(68, 20, 14, 10, 2, 'attendance', 10),
(69, 20, 14, 10, 2, 'assignment', 20),
(70, 20, 14, 10, 2, 'mid', 20),
(71, 20, 14, 10, 2, 'final', 50),
(72, 4, 6, 1, 7, 'attendance', 10),
(73, 4, 6, 1, 7, 'ct-1', 2),
(74, 4, 6, 1, 7, 'ct-2', 2),
(75, 4, 6, 1, 7, 'ct-3', 2),
(76, 4, 6, 1, 7, 'ct-4', 2),
(77, 4, 6, 1, 7, 'ct-5', 2),
(78, 4, 6, 1, 7, 'performance', 10),
(79, 4, 6, 1, 7, 'mid', 20),
(80, 4, 6, 1, 7, 'final', 50),
(81, 10, 6, 4, 8, 'attendance', 10),
(82, 10, 6, 4, 8, 'ct-1', 5),
(83, 10, 6, 4, 8, 'ct-2', 5),
(84, 10, 6, 4, 8, 'performance', 10),
(85, 10, 6, 4, 8, 'mid', 20),
(86, 10, 6, 4, 8, 'final', 50),
(87, 2, 5, 1, 7, 'attendance', 10),
(88, 2, 5, 1, 7, 'performance', 10),
(89, 2, 5, 1, 7, 'report', 10),
(90, 2, 5, 1, 7, 'test', 10),
(91, 2, 5, 1, 7, 'final', 60),
(92, 8, 8, 4, 8, 'attendance', 10),
(93, 8, 8, 4, 8, 'ct', 10),
(94, 8, 8, 4, 8, 'assignment', 10),
(95, 8, 8, 4, 8, 'mid', 20),
(96, 8, 8, 4, 8, 'final', 50),
(97, 6, 7, 1, 7, 'attendance', 10),
(98, 6, 7, 1, 7, 'assignment-1', 5),
(99, 6, 7, 1, 7, 'assignment-2', 5),
(100, 6, 7, 1, 7, 'ct', 10),
(101, 6, 7, 1, 7, 'mid', 20),
(102, 6, 7, 1, 7, 'final', 50),
(103, 13, 12, 7, 1, 'attendance', 10),
(104, 13, 12, 7, 1, 'ct-1', 5),
(105, 13, 12, 7, 1, 'ct-2', 5),
(106, 13, 12, 7, 1, 'assignment', 10),
(107, 13, 12, 7, 1, 'mid', 20),
(108, 13, 12, 7, 1, 'final', 50),
(109, 7, 12, 4, 3, 'attendance', 10),
(110, 7, 12, 4, 3, 'assignment-1', 5),
(111, 7, 12, 4, 3, 'assignment-2', 5),
(112, 7, 12, 4, 3, 'ct-1', 5),
(113, 7, 12, 4, 3, 'ct-2', 5),
(114, 7, 12, 4, 3, 'mid', 20),
(115, 7, 12, 4, 3, 'final', 50),
(116, 1, 4, 1, 7, 'attendance', 10),
(117, 1, 4, 1, 7, 'ct', 10),
(118, 1, 4, 1, 7, 'assignment', 10),
(119, 1, 4, 1, 7, 'mid', 20),
(120, 1, 4, 1, 7, 'final', 50),
(121, 17, 15, 7, 1, 'attendance', 10),
(122, 17, 15, 7, 1, 'ct-1', 5),
(123, 17, 15, 7, 1, 'ct-2', 5),
(124, 17, 15, 7, 1, 'assignment', 10),
(125, 17, 15, 7, 1, 'mid', 20),
(126, 17, 15, 7, 1, 'final', 50),
(127, 27, 15, 13, 3, 'attendance', 10),
(128, 27, 15, 13, 3, 'ct-1', 5),
(129, 27, 15, 13, 3, 'ct-2', 5),
(130, 27, 15, 13, 3, 'assignment-1', 5),
(131, 27, 15, 13, 3, 'assignment-2', 5),
(132, 27, 15, 13, 3, 'mid-2', 20),
(133, 27, 15, 13, 3, 'final', 50),
(134, 19, 13, 10, 2, 'attendance', 10),
(135, 19, 13, 10, 2, 'assignment', 10),
(136, 19, 13, 10, 2, 'ct', 5),
(137, 19, 13, 10, 2, 'oral test', 5),
(138, 19, 13, 10, 2, 'mid', 20),
(139, 19, 13, 10, 2, 'final', 50),
(140, 14, 11, 7, 1, 'attendance', 10),
(141, 14, 11, 7, 1, 'assignment', 10),
(142, 14, 11, 7, 1, 'ct', 10),
(143, 14, 11, 7, 1, 'mid', 20),
(144, 14, 11, 7, 1, 'final', 50),
(145, 23, 18, 13, 3, 'attendance', 10),
(146, 23, 18, 13, 3, 'ct-1', 5),
(147, 23, 18, 13, 3, 'ct-2', 5),
(148, 23, 18, 13, 3, 'assignment', 10),
(149, 23, 18, 13, 3, 'mid', 20),
(150, 23, 18, 13, 3, 'final', 50),
(151, 25, 17, 13, 3, 'attendance', 10),
(152, 25, 17, 13, 3, 'ct', 10),
(153, 25, 17, 13, 3, 'assignment-1', 5),
(154, 25, 17, 13, 3, 'assignment-2', 5),
(155, 25, 17, 13, 3, 'mid', 20),
(156, 25, 17, 13, 3, 'final', 50),
(157, 1, 2, 1, 3, 'External', 60),
(158, 1, 2, 1, 3, 'internal', 30),
(159, 1, 2, 1, 3, 'assignment', 10);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

DROP TABLE IF EXISTS `sections`;
CREATE TABLE IF NOT EXISTS `sections` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `semester` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `name`, `semester`) VALUES
(1, 'C1A', '1'),
(2, 'C1B', '1'),
(3, 'C1C', '1'),
(4, 'C2A', '2'),
(5, 'C2B', '2'),
(6, 'C2C', '2'),
(7, 'C3A', '3'),
(8, 'C3B', '3'),
(9, 'C3C', '3'),
(10, 'C4A', '4'),
(11, 'C4B', '4'),
(12, 'C4C', '4'),
(13, 'C5A', '5'),
(14, 'C5B', '5'),
(15, 'C5C', '5');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `name`, `status`) VALUES
(1, 'Spring 2019', 0),
(2, 'fall 2019', 0),
(3, 'Spring 2020', 1),
(4, 'fall 2020', 0),
(5, 'Spring 2021', 0),
(6, 'fall 2021', 0),
(7, 'spring 2018', 0),
(8, 'fall 2018', 0);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_assign`
--

DROP TABLE IF EXISTS `teacher_assign`;
CREATE TABLE IF NOT EXISTS `teacher_assign` (
  `id` int NOT NULL AUTO_INCREMENT,
  `teacher_id` int DEFAULT NULL,
  `section_id` int DEFAULT NULL,
  `course_id` int DEFAULT NULL,
  `session_id` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `teacher_id` (`teacher_id`),
  KEY `section_id` (`section_id`),
  KEY `course_id` (`course_id`),
  KEY `session_id` (`session_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teacher_assign`
--

INSERT INTO `teacher_assign` (`id`, `teacher_id`, `section_id`, `course_id`, `session_id`, `status`) VALUES
(1, 2, 1, 1, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
CREATE TABLE IF NOT EXISTS `type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`id`, `name`, `status`) VALUES
(1, 'Regular', 1),
(2, 'Retake', 0),
(3, 'Recourse', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`) VALUES
(1, 'admin', 'admin@gmail.com', '8b1a9953c4611296a827abf8c47804d7', 'admin'),
(2, 'Mohammad Arif ', 'arif@gmail.com', '8b1a9953c4611296a827abf8c47804d7', 'teacher'),
(3, 'Akramul Kabir Khan', 'akram@gmail.com', 'b0baee9d279d34fa1dfd71aadb908c3f', 'teacher'),
(4, 'Sumon Sen ', 'sumon@gmail.com', 'b0baee9d279d34fa1dfd71aadb908c3f', 'teacher'),
(5, 'Toufiq sayed', 'toufiq@gmail.com', 'b0baee9d279d34fa1dfd71aadb908c3f', 'teacher'),
(6, 'Iftekhar Khan', 'iftekhar@gmail.com', 'b0baee9d279d34fa1dfd71aadb908c3f', 'teacher'),
(7, 'Nusrat Shirin', 'nusrat@gmail.com', 'b0baee9d279d34fa1dfd71aadb908c3f', 'teacher'),
(8, 'Faisal ahmed', 'faisal@gmail.com', 'b0baee9d279d34fa1dfd71aadb908c3f', 'teacher'),
(9, 'KMH hamim', 'hamim@gmail.com', 'b0baee9d279d34fa1dfd71aadb908c3f', 'teacher'),
(10, 'Rukon Uddin', 'rukon@gmail.com', 'b0baee9d279d34fa1dfd71aadb908c3f', 'teacher'),
(11, 'Farhana shirin', 'shirin@gmail.com', 'b0baee9d279d34fa1dfd71aadb908c3f', 'teacher'),
(12, 'Minhaz hossen', 'minhaz@gmail.com', 'b0baee9d279d34fa1dfd71aadb908c3f', 'teacher'),
(13, 'Mehedi hassan', 'mehedi@gmail.com', 'b0baee9d279d34fa1dfd71aadb908c3f', 'teacher'),
(14, 'minhaz Rahat', 'rahat@gmail.com', 'b0baee9d279d34fa1dfd71aadb908c3f', 'teacher'),
(15, 'Tania noor', 'tania@gmail.com', 'b0baee9d279d34fa1dfd71aadb908c3f', 'teacher'),
(16, 'Anik sen', 'anik@gmail.com', 'b0baee9d279d34fa1dfd71aadb908c3f', 'teacher'),
(17, 'tanni Dhoom', 'tanni@gmail.com', 'b0baee9d279d34fa1dfd71aadb908c3f', 'teacher'),
(18, 'kingshuk dhar', 'king@gmail.com', 'b0baee9d279d34fa1dfd71aadb908c3f', 'teacher'),
(19, 'student1', 'std1@gmail.com', 'b0baee9d279d34fa1dfd71aadb908c3f', 'student'),
(20, 'student2', 'std2@gmail.com', 'b0baee9d279d34fa1dfd71aadb908c3f', 'student'),
(21, 'student3', 'std3@gmail.com', 'b0baee9d279d34fa1dfd71aadb908c3f', 'student'),
(22, 'student4', 'std4@gmail.com', 'b0baee9d279d34fa1dfd71aadb908c3f', 'student'),
(23, 'student5', 'std5@gmail.com', 'b0baee9d279d34fa1dfd71aadb908c3f', 'student'),
(24, 'Srabosthy Das Prama', 'srabosthy@gmail.com', 'b0baee9d279d34fa1dfd71aadb908c3f', 'student'),
(25, 'Mohsin Riad', 'srabosthy@gmail.com', '8b1a9953c4611296a827abf8c47804d7', 'student'),
(26, 'Tonmoy Barua', 'tonmoy@gmail.com', 'b0baee9d279d34fa1dfd71aadb908c3f', 'student');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD CONSTRAINT `enrollment_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `enrollment_ibfk_2` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `enrollment_ibfk_3` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `enrollment_ibfk_4` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`),
  ADD CONSTRAINT `enrollment_ibfk_5` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`),
  ADD CONSTRAINT `enrollment_ibfk_6` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`);

--
-- Constraints for table `marks_assign`
--
ALTER TABLE `marks_assign`
  ADD CONSTRAINT `marks_assign_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `marks_assign_ibfk_2` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`),
  ADD CONSTRAINT `marks_assign_ibfk_3` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `marks_assign_ibfk_4` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `marks_assign_ibfk_5` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`),
  ADD CONSTRAINT `marks_assign_ibfk_6` FOREIGN KEY (`dist_id`) REFERENCES `num_dist` (`id`);

--
-- Constraints for table `num_dist`
--
ALTER TABLE `num_dist`
  ADD CONSTRAINT `num_dist_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `num_dist_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `num_dist_ibfk_3` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`),
  ADD CONSTRAINT `num_dist_ibfk_4` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`);

--
-- Constraints for table `teacher_assign`
--
ALTER TABLE `teacher_assign`
  ADD CONSTRAINT `teacher_assign_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `teacher_assign_ibfk_2` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`),
  ADD CONSTRAINT `teacher_assign_ibfk_3` FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`),
  ADD CONSTRAINT `teacher_assign_ibfk_4` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
