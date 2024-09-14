-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2024 at 03:11 AM
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
-- Database: `entranceexam`
--

-- --------------------------------------------------------

--
-- Table structure for table `answer_attempts`
--

CREATE TABLE `answer_attempts` (
  `attempt_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `selected_answer` varchar(255) NOT NULL,
  `is_correct` tinyint(1) NOT NULL,
  `attempt_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `answer_attempts`
--

INSERT INTO `answer_attempts` (`attempt_id`, `session_id`, `question_id`, `selected_answer`, `is_correct`, `attempt_time`) VALUES
(0, 4, 68, '15', 0, '2024-03-22 01:48:33'),
(0, 1, 54, '(frac{1}{3})', 1, '2024-03-22 01:48:42'),
(0, 9, 64, '28', 1, '2024-03-22 01:48:43'),
(0, 7, 108, 'Diptonggo', 0, '2024-03-22 01:48:44'),
(0, 14, 106, 'Malapatinig', 0, '2024-03-22 01:48:55'),
(0, 4, 52, 'Php 1500.00', 0, '2024-03-22 01:49:01'),
(0, 10, 95, 'Matipid', 0, '2024-03-22 01:49:04'),
(0, 14, 91, 'KKPK', 1, '2024-03-22 01:49:05'),
(0, 4, 54, '(frac{1}{3})', 1, '2024-03-22 01:49:11'),
(0, 5, 105, 'Akademik', 0, '2024-03-22 01:49:18'),
(0, 14, 92, 'Abogado', 0, '2024-03-22 01:49:18'),
(0, 4, 60, 'median ≤ mean ≤ mode', 0, '2024-03-22 01:49:20'),
(0, 2, 99, 'Nagpapabata sa kutis ang pulbos na Clinique.', 1, '2024-03-22 01:49:20'),
(0, 11, 102, 'kawikaan', 0, '2024-03-22 01:49:21'),
(0, 3, 9, 'Arrogant', 0, '2024-03-22 01:49:29'),
(0, 14, 93, 'Kagaganap', 0, '2024-03-22 01:49:38'),
(0, 4, 69, '85', 0, '2024-03-22 01:49:46'),
(0, 3, 15, 'Be honest at all times', 1, '2024-03-22 01:49:48'),
(0, 6, 105, 'Akademik', 0, '2024-03-22 01:49:51'),
(0, 11, 101, 'Nanliligaw', 1, '2024-03-22 01:49:52'),
(0, 8, 39, 'The object on the earth', 0, '2024-03-22 01:49:52'),
(0, 10, 102, 'kasabihan', 0, '2024-03-22 01:49:53'),
(0, 5, 102, 'salawikain', 1, '2024-03-22 01:49:57'),
(0, 4, 70, '16', 1, '2024-03-22 01:50:01'),
(0, 1, 58, '92', 1, '2024-03-22 01:50:06'),
(0, 9, 53, '5/21', 1, '2024-03-22 01:50:08'),
(0, 4, 65, '35', 0, '2024-03-22 01:50:10'),
(0, 6, 97, 'Teknikal', 0, '2024-03-22 01:50:13'),
(0, 5, 92, 'Abogado', 0, '2024-03-22 01:50:14'),
(0, 11, 109, 'Expresiv', 1, '2024-03-22 01:50:19'),
(0, 8, 23, 'Parasitism', 1, '2024-03-22 01:50:22'),
(0, 14, 96, 'Walang magaling', 0, '2024-03-22 01:50:22'),
(0, 2, 110, 'Paralanguage', 0, '2024-03-22 01:50:27'),
(0, 5, 107, 'Pares-ponema', 0, '2024-03-22 01:50:28'),
(0, 4, 66, '1200', 0, '2024-03-22 01:50:28'),
(0, 7, 104, 'Pagsulat', 1, '2024-03-22 01:50:30'),
(0, 3, 4, 'augment', 1, '2024-03-22 01:50:32'),
(0, 5, 108, 'Malapatinig', 0, '2024-03-22 01:50:35'),
(0, 14, 107, 'Pares-nominal', 0, '2024-03-22 01:50:38'),
(0, 4, 62, '7', 0, '2024-03-22 01:50:42'),
(0, 2, 91, 'KKPPKK', 0, '2024-03-22 01:50:44'),
(0, 7, 101, 'Nanliligaw', 1, '2024-03-22 01:50:48'),
(0, 5, 101, 'Nanliligaw', 1, '2024-03-22 01:50:49'),
(0, 14, 108, 'Diptonggo', 0, '2024-03-22 01:50:54'),
(0, 3, 3, 'loud', 1, '2024-03-22 01:50:56'),
(0, 1, 64, '28', 1, '2024-03-22 01:50:56'),
(0, 7, 106, 'Malapatinig', 0, '2024-03-22 01:51:05'),
(0, 11, 95, 'Praktikal', 1, '2024-03-22 01:51:09'),
(0, 14, 99, 'Nagpapabata ng mukha sa kutis ang pulbos na Clinique.', 0, '2024-03-22 01:51:16'),
(0, 5, 109, 'Expresiv', 1, '2024-03-22 01:51:18'),
(0, 4, 64, '21', 0, '2024-03-22 01:51:21'),
(0, 3, 16, 'Forward', 0, '2024-03-22 01:51:21'),
(0, 7, 100, 'May', 1, '2024-03-22 01:51:22'),
(0, 5, 93, 'Kagaganap', 0, '2024-03-22 01:51:28'),
(0, 4, 61, '60', 0, '2024-03-22 01:51:29'),
(0, 6, 96, 'Walang mapili', 0, '2024-03-22 01:51:30'),
(0, 4, 58, '102', 0, '2024-03-22 01:51:33'),
(0, 9, 67, '9', 0, '2024-03-22 01:51:34'),
(0, 14, 97, 'Jornalistik', 0, '2024-03-22 01:51:35'),
(0, 11, 100, 'May', 1, '2024-03-22 01:51:39'),
(0, 10, 93, 'Kontemplatibo', 0, '2024-03-22 01:51:40'),
(0, 2, 103, 'Kumpas', 1, '2024-03-22 01:51:50'),
(0, 14, 103, 'Kumpas', 1, '2024-03-22 01:51:55'),
(0, 4, 57, '9 m', 1, '2024-03-22 01:51:59'),
(0, 11, 94, 'duwag', 1, '2024-03-22 01:52:04'),
(0, 4, 59, '67 ft', 0, '2024-03-22 01:52:05'),
(0, 8, 33, '100J', 1, '2024-03-22 01:52:07'),
(0, 4, 55, 'I and III', 0, '2024-03-22 01:52:09'),
(0, 6, 93, 'Perpektibo', 1, '2024-03-22 01:52:09'),
(0, 2, 101, 'Nanliligaw', 1, '2024-03-22 01:52:10'),
(0, 3, 2, 'thoughtful', 1, '2024-03-22 01:52:11'),
(0, 5, 98, 'Pagbasa', 1, '2024-03-22 01:52:13'),
(0, 4, 67, '8', 0, '2024-03-22 01:52:13'),
(0, 7, 98, 'Pagbasa', 1, '2024-03-22 01:52:15'),
(0, 1, 65, '15', 0, '2024-03-22 01:52:15'),
(0, 14, 101, 'Nanliligaw', 1, '2024-03-22 01:52:17'),
(0, 11, 107, 'Pares-tunog', 0, '2024-03-22 01:52:21'),
(0, 5, 106, 'Klaster', 0, '2024-03-22 01:52:24'),
(0, 7, 96, 'Pawang magagaling', 1, '2024-03-22 01:52:33'),
(0, 2, 92, 'Abogado', 0, '2024-03-22 01:52:33'),
(0, 5, 94, 'duwag', 1, '2024-03-22 01:52:39'),
(0, 6, 103, 'Kumpas', 1, '2024-03-22 01:52:43'),
(0, 11, 96, 'Walang mapili', 0, '2024-03-22 01:52:43'),
(0, 10, 107, 'Pares-nominal', 0, '2024-03-22 01:52:52'),
(0, 8, 24, 'water', 0, '2024-03-22 01:52:55'),
(0, 7, 103, 'Tindig', 0, '2024-03-22 01:53:00'),
(0, 5, 104, 'Pagsulat', 1, '2024-03-22 01:53:00'),
(0, 2, 94, 'traydor', 0, '2024-03-22 01:53:01'),
(0, 3, 6, 'irrelevant', 0, '2024-03-22 01:53:03'),
(0, 14, 95, 'Praktikal', 1, '2024-03-22 01:53:05'),
(0, 6, 109, 'Assertiv', 0, '2024-03-22 01:53:08'),
(0, 5, 100, 'May', 1, '2024-03-22 01:53:10'),
(0, 10, 97, 'Akademiko', 1, '2024-03-22 01:53:16'),
(0, 9, 57, '8 m', 0, '2024-03-22 01:53:23'),
(0, 3, 5, 'lack', 1, '2024-03-22 01:53:24'),
(0, 11, 91, 'KKP', 0, '2024-03-22 01:53:25'),
(0, 3, 14, 'They want to achieve a good record', 0, '2024-03-22 01:53:26'),
(0, 8, 32, 'Interference', 0, '2024-03-22 01:53:26'),
(0, 1, 68, '26', 0, '2024-03-22 01:53:27'),
(0, 2, 100, 'May', 1, '2024-03-22 01:53:27'),
(0, 14, 100, 'May', 1, '2024-03-22 01:53:28'),
(0, 3, 8, 'Affable', 0, '2024-03-22 01:53:28'),
(0, 4, 51, '15', 0, '2024-03-22 01:53:29'),
(0, 7, 107, 'Pares-tunog', 0, '2024-03-22 01:53:32'),
(0, 3, 17, 'Affluent', 0, '2024-03-22 01:53:32'),
(0, 3, 19, 'thirsty', 0, '2024-03-22 01:53:34'),
(0, 3, 18, 'Beginning', 1, '2024-03-22 01:53:37'),
(0, 7, 91, 'KKPPKK', 0, '2024-03-22 01:53:42'),
(0, 4, 53, '10/42', 0, '2024-03-22 01:53:42'),
(0, 8, 30, 'Rapid melting of glacial ice on nearly every continent', 1, '2024-03-22 01:53:45'),
(0, 10, 96, 'Walang mapili', 0, '2024-03-22 01:53:53'),
(0, 5, 95, 'Praktikal', 1, '2024-03-22 01:53:57'),
(0, 14, 102, 'kasabihan', 0, '2024-03-22 01:53:58'),
(0, 8, 27, 'Earth takes 365 ¼ days to revolve', 1, '2024-03-22 01:54:00'),
(0, 14, 109, 'Expresiv', 1, '2024-03-22 01:54:08'),
(0, 1, 60, 'mean ≤ median ≤ mode', 0, '2024-03-22 01:54:12'),
(0, 7, 97, 'Akademiko', 1, '2024-03-22 01:54:21'),
(0, 14, 94, 'traydor', 0, '2024-03-22 01:54:21'),
(0, 4, 56, '16', 0, '2024-03-22 01:54:21'),
(0, 15, 3, 'stealthy', 0, '2024-03-22 01:54:22'),
(0, 15, 1, 'sweet', 1, '2024-03-22 01:54:23'),
(0, 15, 18, 'Movement', 0, '2024-03-22 01:54:25'),
(0, 11, 99, 'Nagpapabata ang pulbos sa kutis na Clinique.', 0, '2024-03-22 01:54:25'),
(0, 4, 63, '48', 0, '2024-03-22 01:54:28'),
(0, 2, 98, 'Pagbasa', 1, '2024-03-22 01:54:29'),
(0, 6, 94, 'traydor', 0, '2024-03-22 01:54:31'),
(0, 4, 31, 'Voltage', 0, '2024-03-22 01:54:31'),
(0, 14, 110, 'Paralanguage', 0, '2024-03-22 01:54:35'),
(0, 15, 7, 'stress', 0, '2024-03-22 01:54:43'),
(0, 2, 105, 'Malikhain', 0, '2024-03-22 01:54:45'),
(0, 8, 37, 'changing its velocity', 1, '2024-03-22 01:54:46'),
(0, 9, 68, '15', 0, '2024-03-22 01:54:48'),
(0, 4, 40, 'V=nRTP', 0, '2024-03-22 01:54:50'),
(0, 7, 94, 'duwag', 1, '2024-03-22 01:54:53'),
(0, 15, 13, 'Cheating', 0, '2024-03-22 01:54:55'),
(0, 14, 98, 'Pagsulat', 0, '2024-03-22 01:54:57'),
(0, 10, 98, 'Pagbasa', 1, '2024-03-22 01:55:01'),
(0, 8, 26, 'The equator is closer to the Sun than the North Pole.', 0, '2024-03-22 01:55:02'),
(0, 4, 27, 'Earth takes 365 ¼ days to revolve', 1, '2024-03-22 01:55:02'),
(0, 14, 104, 'Pagsulat', 1, '2024-03-22 01:55:06'),
(0, 6, 107, 'Pares-tunog', 0, '2024-03-22 01:55:09'),
(0, 5, 97, 'Akademiko', 1, '2024-03-22 01:55:10'),
(0, 4, 36, 'Vector quantities are always bigger than scalar quantities.', 0, '2024-03-22 01:55:12'),
(0, 14, 105, 'Profesyunal', 1, '2024-03-22 01:55:13'),
(0, 11, 110, 'Paralanguage', 0, '2024-03-22 01:55:16'),
(0, 8, 31, 'Circuit', 1, '2024-03-22 01:55:18'),
(0, 14, 57, '9 m', 1, '2024-03-22 01:55:22'),
(0, 14, 60, 'median ≤ mean ≤ mode', 0, '2024-03-22 01:55:24'),
(0, 9, 58, '102', 0, '2024-03-22 01:55:24'),
(0, 14, 64, '7', 0, '2024-03-22 01:55:26'),
(0, 1, 61, '80', 1, '2024-03-22 01:55:26'),
(0, 6, 110, 'Proksemiks', 0, '2024-03-22 01:55:28'),
(0, 14, 53, '25/42', 0, '2024-03-22 01:55:29'),
(0, 7, 109, 'Assertiv', 0, '2024-03-22 01:55:31'),
(0, 14, 56, '7', 0, '2024-03-22 01:55:33'),
(0, 4, 39, 'The object on the earth', 0, '2024-03-22 01:55:38'),
(0, 6, 92, 'Mongol', 1, '2024-03-22 01:55:44'),
(0, 14, 58, '102', 0, '2024-03-22 01:55:46'),
(0, 4, 24, 'wind', 0, '2024-03-22 01:55:50'),
(0, 9, 65, '36', 0, '2024-03-22 01:55:50'),
(0, 2, 106, 'Diptonggo', 1, '2024-03-22 01:55:54'),
(0, 14, 59, '74 ft', 0, '2024-03-22 01:55:57'),
(0, 6, 108, 'Malapatinig', 0, '2024-03-22 01:56:01'),
(0, 7, 92, 'Abogado', 0, '2024-03-22 01:56:01'),
(0, 8, 35, 'solar system → galaxy → planet → universe', 0, '2024-03-22 01:56:01'),
(0, 2, 108, 'Malapatinig', 0, '2024-03-22 01:56:02'),
(0, 4, 28, 'Warming of the atmosphere', 1, '2024-03-22 01:56:10'),
(0, 5, 99, 'Nagpapabata sa kutis ng mukha ang pulbos na Clinique.', 0, '2024-03-22 01:56:21'),
(0, 6, 95, 'Praktikal', 1, '2024-03-22 01:56:22'),
(0, 2, 104, 'Pagbasa', 0, '2024-03-22 01:56:29'),
(0, 7, 110, 'Proksemiks', 0, '2024-03-22 01:56:31'),
(0, 8, 34, 'Stained tiles soaked in hydrochloric acid', 1, '2024-03-22 01:56:35'),
(0, 11, 103, 'Kumpas', 1, '2024-03-22 01:56:37'),
(0, 3, 10, 'Reject', 1, '2024-03-22 01:56:39'),
(0, 4, 25, 'smallest and basic unit of life', 1, '2024-03-22 01:56:45'),
(0, 6, 100, 'May', 1, '2024-03-22 01:56:51'),
(0, 7, 95, 'Praktikal', 1, '2024-03-22 01:56:52'),
(0, 10, 99, 'Nagpapabata ang pulbos sa kutis na Clinique.', 0, '2024-03-22 01:56:55'),
(0, 5, 103, 'Kumpas', 1, '2024-03-22 01:56:57'),
(0, 4, 32, 'Interference', 0, '2024-03-22 01:57:00'),
(0, 4, 33, '100J', 1, '2024-03-22 01:57:07'),
(0, 1, 63, '52', 0, '2024-03-22 01:57:11'),
(0, 10, 110, 'Paralanguage', 0, '2024-03-22 01:57:13'),
(0, 11, 108, 'Diptonggo', 0, '2024-03-22 01:57:13'),
(0, 6, 102, 'kasabihan', 0, '2024-03-22 01:57:14'),
(0, 14, 63, '52', 0, '2024-03-22 01:57:14'),
(0, 2, 95, 'Praktikal', 1, '2024-03-22 01:57:15'),
(0, 14, 65, '35', 0, '2024-03-22 01:57:19'),
(0, 5, 96, 'Walang magaling', 0, '2024-03-22 01:57:20'),
(0, 14, 66, '1200', 0, '2024-03-22 01:57:21'),
(0, 4, 22, 'community, ecosystem, individual, population', 0, '2024-03-22 01:57:21'),
(0, 14, 69, '85', 0, '2024-03-22 01:57:24'),
(0, 9, 69, '90', 0, '2024-03-22 01:57:24'),
(0, 14, 55, 'I only', 0, '2024-03-22 01:57:25'),
(0, 2, 93, 'Kontemplatibo', 0, '2024-03-22 01:57:25'),
(0, 14, 70, '18', 0, '2024-03-22 01:57:27'),
(0, 14, 52, 'Php 2500.00', 0, '2024-03-22 01:57:30'),
(0, 4, 30, 'Rapid melting of glacial ice on nearly every continent', 1, '2024-03-22 01:57:31'),
(0, 3, 1, 'arid', 0, '2024-03-22 01:57:33'),
(0, 14, 51, '9', 0, '2024-03-22 01:57:33'),
(0, 4, 35, 'universe → galaxy → solar system → planet', 0, '2024-03-22 01:57:34'),
(0, 14, 62, '5', 0, '2024-03-22 01:57:37'),
(0, 4, 38, 'An object under free fall has a constant negative acceleration.', 0, '2024-03-22 01:57:39'),
(0, 14, 67, '8', 0, '2024-03-22 01:57:39'),
(0, 5, 110, 'Proksemiks', 0, '2024-03-22 01:57:43'),
(0, 10, 103, 'Kumpas', 1, '2024-03-22 01:57:45'),
(0, 7, 102, 'kasabihan', 0, '2024-03-22 01:57:46'),
(0, 4, 29, 'RA 9003', 1, '2024-03-22 01:57:48'),
(0, 5, 91, 'KKPPKK', 0, '2024-03-22 01:57:54'),
(0, 2, 96, 'Walang mapili', 0, '2024-03-22 01:57:54'),
(0, 4, 26, 'The equator receives more direct sunlight than the North Pole.', 1, '2024-03-22 01:57:55'),
(0, 3, 7, 'extend', 0, '2024-03-22 01:57:59'),
(0, 2, 102, 'salawikain', 1, '2024-03-22 01:58:02'),
(0, 7, 105, 'Profesyunal', 1, '2024-03-22 01:58:03'),
(0, 6, 52, 'Php 500.00', 0, '2024-03-22 01:58:04'),
(0, 15, 15, 'Be honest at all times', 1, '2024-03-22 01:58:05'),
(0, 11, 105, 'Profesyunal', 1, '2024-03-22 01:58:06'),
(0, 5, 20, 'audacity', 1, '2024-03-22 01:58:10'),
(0, 2, 109, 'Expresiv', 1, '2024-03-22 01:58:14'),
(0, 6, 65, '19', 1, '2024-03-22 01:58:15'),
(0, 3, 12, 'Kyle, who’s going to Thailand in April, loves architecture.', 0, '2024-03-22 01:58:15'),
(0, 7, 93, 'Kontemplatibo', 0, '2024-03-22 01:58:23'),
(0, 9, 70, '9', 0, '2024-03-22 01:58:23'),
(0, 10, 106, 'Malapatinig', 0, '2024-03-22 01:58:27'),
(0, 15, 11, 'The professor asked, “Did anyone take notes from the last lecture?”', 1, '2024-03-22 01:58:27'),
(0, 2, 107, 'Pares-nominal', 0, '2024-03-22 01:58:28'),
(0, 1, 70, '16', 1, '2024-03-22 01:58:28'),
(0, 5, 18, 'Beginning', 1, '2024-03-22 01:58:31'),
(0, 6, 53, '10/21', 0, '2024-03-22 01:58:31'),
(0, 7, 99, 'Nagpapabata ang pulbos sa kutis na Clinique.', 0, '2024-03-22 01:58:32'),
(0, 10, 100, 'May', 1, '2024-03-22 01:58:41'),
(0, 5, 16, 'Retreat', 1, '2024-03-22 01:58:43'),
(0, 14, 61, '60', 0, '2024-03-22 01:58:46'),
(0, 2, 97, 'Jornalistik', 0, '2024-03-22 01:58:49'),
(0, 7, 10, 'Obscure', 0, '2024-03-22 01:58:49'),
(0, 14, 68, '26', 0, '2024-03-22 01:58:52'),
(0, 15, 14, 'They feel they have the right to cheat', 1, '2024-03-22 01:58:55'),
(0, 2, 90, 'John Locke', 1, '2024-03-22 01:58:58'),
(0, 10, 94, 'duwag', 1, '2024-03-22 01:59:01'),
(0, 1, 66, '750', 1, '2024-03-22 01:59:04'),
(0, 7, 16, 'Retreat', 1, '2024-03-22 01:59:04'),
(0, 3, 11, '“I need to buy a new umbrella,” she said.', 0, '2024-03-22 01:59:05'),
(0, 14, 81, 'To determine the existence of animals, their functions, nature, and characteristics', 1, '2024-03-22 01:59:05'),
(0, 5, 12, 'Who’s sandwich is this?', 1, '2024-03-22 01:59:15'),
(0, 10, 91, 'KPKK', 0, '2024-03-22 01:59:17'),
(0, 2, 87, 'The \"sword and cross\" because they had to make sure that colonization was accomplished.', 1, '2024-03-22 01:59:20'),
(0, 9, 61, '70', 0, '2024-03-22 01:59:26'),
(0, 7, 5, 'lack', 1, '2024-03-22 01:59:27'),
(0, 2, 72, 'Culture', 1, '2024-03-22 01:59:29'),
(0, 14, 80, 'Hospitalization', 1, '2024-03-22 01:59:31'),
(0, 3, 20, 'shyness', 0, '2024-03-22 01:59:34'),
(0, 11, 93, 'Perpektibo', 1, '2024-03-22 01:59:36'),
(0, 4, 34, 'Sugar mixes with sodium chloride', 0, '2024-03-22 01:59:36'),
(0, 8, 22, 'ecosystem, community, population, individual', 1, '2024-03-22 01:59:36'),
(0, 10, 101, 'Nanliligaw', 1, '2024-03-22 01:59:36'),
(0, 6, 68, '10', 0, '2024-03-22 01:59:36'),
(0, 7, 8, 'Pleasant', 0, '2024-03-22 01:59:37'),
(0, 4, 37, 'changing its position', 0, '2024-03-22 01:59:40'),
(0, 15, 19, 'talkative', 1, '2024-03-22 01:59:40'),
(0, 1, 59, '74 ft', 0, '2024-03-22 01:59:42'),
(0, 14, 75, 'Laws - are informal rules that are met with positive sanctions', 1, '2024-03-22 01:59:42'),
(0, 3, 13, 'Cheating', 0, '2024-03-22 01:59:44'),
(0, 5, 6, 'indifferent', 0, '2024-03-22 01:59:48'),
(0, 7, 6, 'irrelevant', 0, '2024-03-22 01:59:49'),
(0, 11, 97, 'Akademiko', 1, '2024-03-22 01:59:50'),
(0, 4, 89, '6 years', 1, '2024-03-22 01:59:50'),
(0, 6, 61, '60', 0, '2024-03-22 01:59:52'),
(0, 10, 92, 'Abogado', 0, '2024-03-22 01:59:56'),
(0, 14, 78, 'Cultural relativism', 1, '2024-03-22 01:59:59'),
(0, 8, 40, 'P=nRT/V', 1, '2024-03-22 02:00:04'),
(0, 4, 75, 'Informal sanctions are gossip, unfavorable and favorable public opinion, giving or withdrawing of affection, love or friendship; verbal admiration or criticism, reprimands, or verbal commendations', 0, '2024-03-22 02:00:04'),
(0, 5, 2, 'thoughtful', 1, '2024-03-22 02:00:09'),
(0, 7, 4, 'free', 0, '2024-03-22 02:00:17'),
(0, 10, 27, 'The moon takes 29.5 days to orbit.', 0, '2024-03-22 02:00:19'),
(0, 4, 77, 'Singing Lupang Hinirang', 1, '2024-03-22 02:00:23'),
(0, 11, 106, 'Klaster', 0, '2024-03-22 02:00:23'),
(0, 5, 15, 'Be honest at all times', 1, '2024-03-22 02:00:23'),
(0, 7, 2, 'thoughtful', 1, '2024-03-22 02:00:30'),
(0, 3, 98, 'Pakikinig', 0, '2024-03-22 02:00:36'),
(0, 1, 67, '8', 0, '2024-03-22 02:00:37'),
(0, 6, 69, '85', 0, '2024-03-22 02:00:38'),
(0, 2, 75, 'Laws - are informal rules that are met with positive sanctions', 1, '2024-03-22 02:00:40'),
(0, 5, 8, 'Pleasant', 0, '2024-03-22 02:00:41'),
(0, 11, 92, 'Relo', 0, '2024-03-22 02:00:42'),
(0, 10, 105, 'Akademik', 0, '2024-03-22 02:00:42'),
(0, 14, 74, 'Socialization is an effective tool to understand cultural differences.', 0, '2024-03-22 02:00:44'),
(0, 7, 7, 'shorten', 1, '2024-03-22 02:00:44'),
(0, 6, 64, '7', 0, '2024-03-22 02:00:46'),
(0, 14, 87, 'The \"sword and cross\" because they had to make sure that colonization was accomplished.', 1, '2024-03-22 02:00:53'),
(0, 10, 109, 'Expresiv', 1, '2024-03-22 02:00:53'),
(0, 4, 84, 'Popular culture', 0, '2024-03-22 02:00:58'),
(0, 10, 108, 'Malapatinig', 0, '2024-03-22 02:01:00'),
(0, 11, 98, 'Pagbasa', 1, '2024-03-22 02:01:03'),
(0, 7, 13, 'Deceiving', 0, '2024-03-22 02:01:11'),
(0, 6, 54, '(frac{1}{3})', 1, '2024-03-22 02:01:14'),
(0, 14, 88, 'Democratic and Republican', 1, '2024-03-22 02:01:15'),
(0, 3, 103, 'Tindig', 0, '2024-03-22 02:01:18'),
(0, 9, 59, '70 ft', 1, '2024-03-22 02:01:21'),
(0, 5, 17, 'Indolent', 0, '2024-03-22 02:01:22'),
(0, 7, 20, 'audacity', 1, '2024-03-22 02:01:28'),
(0, 11, 70, '16', 1, '2024-03-22 02:01:32'),
(0, 2, 89, '6 years', 1, '2024-03-22 02:01:36'),
(0, 7, 3, 'loud', 1, '2024-03-22 02:01:40'),
(0, 14, 71, 'Culture shock', 1, '2024-03-22 02:01:41'),
(0, 7, 14, 'They want to achieve a good record', 0, '2024-03-22 02:01:52'),
(0, 9, 62, '6', 1, '2024-03-22 02:02:03'),
(0, 3, 96, 'Walang magaling', 0, '2024-03-22 02:02:03'),
(0, 10, 104, 'Pagsulat', 1, '2024-03-22 02:02:05'),
(0, 2, 74, 'Undergoing constant socialization enables an individual to fully develop in physical, emotional, and mental aspects.', 1, '2024-03-22 02:02:12'),
(0, 14, 77, 'Singing Lupang Hinirang', 1, '2024-03-22 02:02:13'),
(0, 3, 100, 'May', 1, '2024-03-22 02:02:15'),
(0, 11, 61, '80', 1, '2024-03-22 02:02:16'),
(0, 7, 17, 'Affluent', 0, '2024-03-22 02:02:21'),
(0, 14, 90, 'John Locke', 1, '2024-03-22 02:02:26'),
(0, 15, 16, 'Retreat', 1, '2024-03-22 02:02:31'),
(0, 10, 24, 'water', 0, '2024-03-22 02:02:33'),
(0, 9, 55, 'I and II', 0, '2024-03-22 02:02:34'),
(0, 8, 21, 'height of the plant, light intensity, weight of the plant', 0, '2024-03-22 02:02:36'),
(0, 7, 15, 'Be honest at all times', 1, '2024-03-22 02:02:38'),
(0, 14, 83, 'High Culture', 1, '2024-03-22 02:02:39'),
(0, 1, 51, '12', 1, '2024-03-22 02:02:41'),
(0, 14, 72, 'Culture', 1, '2024-03-22 02:02:43'),
(0, 4, 88, 'Federal and Republican', 0, '2024-03-22 02:02:48'),
(0, 6, 66, '750', 1, '2024-03-22 02:02:52'),
(0, 10, 29, 'RA 9003', 1, '2024-03-22 02:02:53'),
(0, 7, 18, 'Beginning', 1, '2024-03-22 02:02:54'),
(0, 4, 81, 'To understand how and why human beings act the way that they do', 0, '2024-03-22 02:02:54'),
(0, 3, 104, 'Pagsulat', 1, '2024-03-22 02:02:55'),
(0, 2, 86, 'The Filipinos had the full support of the clergy to whom Filipinos obeyed because of fear.', 0, '2024-03-22 02:02:55'),
(0, 11, 62, '8', 0, '2024-03-22 02:02:59'),
(0, 3, 110, 'Proksemiks', 0, '2024-03-22 02:03:00'),
(0, 5, 14, 'They want to achieve a good record', 0, '2024-03-22 02:03:00'),
(0, 4, 73, 'Church', 1, '2024-03-22 02:03:02'),
(0, 3, 107, 'Pares-nominal', 0, '2024-03-22 02:03:03'),
(0, 4, 80, 'Education', 0, '2024-03-22 02:03:06'),
(0, 3, 97, 'Teknikal', 0, '2024-03-22 02:03:07'),
(0, 6, 51, '9', 0, '2024-03-22 02:03:07'),
(0, 3, 102, 'kawikaan', 0, '2024-03-22 02:03:09'),
(0, 3, 105, 'Akademik', 0, '2024-03-22 02:03:12'),
(0, 4, 76, 'Disease', 0, '2024-03-22 02:03:13'),
(0, 3, 106, 'Diptonggo', 1, '2024-03-22 02:03:14'),
(0, 11, 60, 'mean ≤ median ≤ mode', 0, '2024-03-22 02:03:17'),
(0, 3, 93, 'Kagaganap', 0, '2024-03-22 02:03:17'),
(0, 7, 12, 'Who’s sandwich is this?', 1, '2024-03-22 02:03:18'),
(0, 3, 91, 'KPKK', 0, '2024-03-22 02:03:19'),
(0, 3, 108, 'Diptonggo', 0, '2024-03-22 02:03:22'),
(0, 3, 99, 'Nagpapabata sa kutis ng mukha ang pulbos na Clinique.', 0, '2024-03-22 02:03:24'),
(0, 7, 1, 'arid', 0, '2024-03-22 02:03:25'),
(0, 14, 85, 'It was established to to strengthen the colonial government.', 0, '2024-03-22 02:03:26'),
(0, 1, 53, '25/42', 0, '2024-03-22 02:03:26'),
(0, 3, 95, 'Praktikal', 1, '2024-03-22 02:03:27'),
(0, 3, 101, 'Kumakanta', 0, '2024-03-22 02:03:29'),
(0, 3, 109, 'Deklarativ', 0, '2024-03-22 02:03:31'),
(0, 4, 82, 'Social Process', 0, '2024-03-22 02:03:31'),
(0, 6, 59, '74 ft', 0, '2024-03-22 02:03:32'),
(0, 3, 92, 'Mongol', 1, '2024-03-22 02:03:34'),
(0, 10, 34, 'Sugar mixes with sodium chloride', 0, '2024-03-22 02:03:34'),
(0, 4, 85, 'It was a movement that wanted reforms from Spain.', 0, '2024-03-22 02:03:37'),
(0, 5, 7, 'extend', 0, '2024-03-22 02:03:37'),
(0, 4, 71, 'Cultural diversity', 0, '2024-03-22 02:03:42'),
(0, 8, 29, 'RA 9003', 1, '2024-03-22 02:03:48'),
(0, 11, 63, '49', 1, '2024-03-22 02:03:49'),
(0, 7, 9, 'Arrogant', 0, '2024-03-22 02:03:51'),
(0, 15, 8, 'Friendly', 0, '2024-03-22 02:03:51'),
(0, 14, 89, '6 years', 1, '2024-03-22 02:03:53'),
(0, 5, 1, 'sweet', 1, '2024-03-22 02:03:54'),
(0, 10, 28, 'Warming of the atmosphere', 1, '2024-03-22 02:03:59'),
(0, 8, 36, 'A scalar quantity depends only on the initial and final values of the quantity while a vector quantity does not.', 0, '2024-03-22 02:04:00'),
(0, 5, 9, 'Polite', 1, '2024-03-22 02:04:06'),
(0, 6, 62, '5', 0, '2024-03-22 02:04:06'),
(0, 7, 11, 'The professor asked, “Did anyone take notes from the last lecture?”', 1, '2024-03-22 02:04:12'),
(0, 1, 69, '89', 1, '2024-03-22 02:04:14'),
(0, 3, 66, '750', 1, '2024-03-22 02:04:16'),
(0, 2, 80, 'Hospitalization', 1, '2024-03-22 02:04:18'),
(0, 10, 38, 'An object under free fall has a constant negative acceleration.', 0, '2024-03-22 02:04:20'),
(0, 6, 70, '32', 0, '2024-03-22 02:04:21'),
(0, 7, 19, 'talkative', 1, '2024-03-22 02:04:22'),
(0, 6, 56, '16', 0, '2024-03-22 02:04:37'),
(0, 9, 56, '18', 0, '2024-03-22 02:04:40'),
(0, 11, 68, '20', 1, '2024-03-22 02:04:42'),
(0, 6, 63, '49', 1, '2024-03-22 02:04:45'),
(0, 7, 54, '320', 0, '2024-03-22 02:04:46'),
(0, 14, 76, 'Mental issue', 0, '2024-03-22 02:05:08'),
(0, 15, 12, 'Who’s sandwich is this?', 1, '2024-03-22 02:05:09'),
(0, 5, 4, 'augment', 1, '2024-03-22 02:05:16'),
(0, 8, 28, 'Warming of the atmosphere', 1, '2024-03-22 02:05:20'),
(0, 4, 90, 'Auguste Comte', 0, '2024-03-22 02:05:21'),
(0, 4, 86, 'The Filipinos had the full support of the clergy to whom Filipinos obeyed because of fear.', 0, '2024-03-22 02:05:25'),
(0, 11, 56, '9', 1, '2024-03-22 02:05:26'),
(0, 4, 74, 'Socialization is an effective tool to understand cultural differences.', 0, '2024-03-22 02:05:28'),
(0, 5, 10, 'Face', 0, '2024-03-22 02:05:29'),
(0, 4, 72, 'Society', 0, '2024-03-22 02:05:30'),
(0, 6, 67, '9', 0, '2024-03-22 02:05:31'),
(0, 7, 53, '5/21', 1, '2024-03-22 02:05:35'),
(0, 4, 87, 'The \"cross\" because of the conversion by the clergy of pagan Filipinos to Christianity', 0, '2024-03-22 02:05:35'),
(0, 2, 73, 'Community', 0, '2024-03-22 02:05:36'),
(0, 4, 83, 'Popular Culture', 0, '2024-03-22 02:05:38'),
(0, 4, 78, 'Ethnocentrism', 0, '2024-03-22 02:05:41'),
(0, 4, 79, 'Written Constitution', 1, '2024-03-22 02:05:44'),
(0, 9, 51, '15', 0, '2024-03-22 02:05:45'),
(0, 3, 62, '6', 1, '2024-03-22 02:05:47'),
(0, 8, 25, 'smallest and basic unit of life', 1, '2024-03-22 02:05:52'),
(0, 14, 86, 'The lack of unity and leadership which failed to sensitize the people to a common identity and purpose.', 1, '2024-03-22 02:05:54'),
(0, 2, 82, 'Social Experience', 1, '2024-03-22 02:05:59'),
(0, 8, 5, 'poverty', 0, '2024-03-22 02:05:59'),
(0, 2, 88, 'Democratic and Republican', 1, '2024-03-22 02:06:06'),
(0, 8, 10, 'Contradict', 0, '2024-03-22 02:06:07'),
(0, 9, 54, '(frac{1}{3})', 1, '2024-03-22 02:06:09'),
(0, 4, 98, 'Pagsulat', 0, '2024-03-22 02:06:09'),
(0, 15, 9, 'Polite', 1, '2024-03-22 02:06:13'),
(0, 14, 73, 'Church', 1, '2024-03-22 02:06:17'),
(0, 10, 21, 'light intensity, size of leaves, the size of flower pots used', 0, '2024-03-22 02:06:19'),
(0, 2, 85, 'It was established to to strengthen the colonial government.', 0, '2024-03-22 02:06:22'),
(0, 5, 11, '“Stop!” shouted the security guard.', 0, '2024-03-22 02:06:23'),
(0, 8, 3, 'loud', 1, '2024-03-22 02:06:25'),
(0, 5, 13, 'Cheating', 0, '2024-03-22 02:06:28'),
(0, 7, 52, 'Php 1000.00', 1, '2024-03-22 02:06:30'),
(0, 6, 57, '15 m', 0, '2024-03-22 02:06:35'),
(0, 8, 15, 'Recognize the idea of others', 0, '2024-03-22 02:06:43'),
(0, 14, 79, 'Fundamental law', 0, '2024-03-22 02:06:45'),
(0, 2, 79, 'Fundamental law', 0, '2024-03-22 02:06:49'),
(0, 4, 102, 'kawikaan', 0, '2024-03-22 02:06:54'),
(0, 1, 55, 'I only', 0, '2024-03-22 02:06:54'),
(0, 3, 57, '8 m', 0, '2024-03-22 02:06:59'),
(0, 10, 37, 'moving', 0, '2024-03-22 02:07:06'),
(0, 7, 55, 'I and III', 0, '2024-03-22 02:07:14'),
(0, 8, 13, 'Lying', 0, '2024-03-22 02:07:15'),
(0, 4, 99, 'Nagpapabata ang pulbos sa kutis na Clinique.', 0, '2024-03-22 02:07:23'),
(0, 15, 10, 'Reject', 1, '2024-03-22 02:07:28'),
(0, 6, 55, 'I and II', 0, '2024-03-22 02:07:30'),
(0, 1, 56, '18', 0, '2024-03-22 02:07:30'),
(0, 11, 51, '9', 0, '2024-03-22 02:07:33'),
(0, 6, 60, 'mode ≤ mean ≤ median', 1, '2024-03-22 02:07:37'),
(0, 4, 104, 'Pagsasalita', 0, '2024-03-22 02:07:50'),
(0, 15, 5, 'lack', 1, '2024-03-22 02:07:51'),
(0, 4, 105, 'Teknikal', 0, '2024-03-22 02:07:53'),
(0, 14, 82, 'Social Experience', 1, '2024-03-22 02:07:57'),
(0, 4, 100, 'Mayroon', 0, '2024-03-22 02:07:57'),
(0, 8, 9, 'Polite', 1, '2024-03-22 02:07:58'),
(0, 1, 57, '9 m', 1, '2024-03-22 02:07:59'),
(0, 4, 97, 'Referensyal', 0, '2024-03-22 02:08:01'),
(0, 8, 17, 'Indolent', 0, '2024-03-22 02:08:03'),
(0, 6, 39, 'Cannot be determined', 1, '2024-03-22 02:08:03'),
(0, 16, 5, 'lack', 1, '2024-03-22 02:08:03'),
(0, 16, 3, 'loud', 1, '2024-03-22 02:08:10'),
(0, 4, 106, 'Klaster', 0, '2024-03-22 02:08:10'),
(0, 6, 38, 'An object under free-fall moves at a constant speed of 9.8 m/s.', 0, '2024-03-22 02:08:10'),
(0, 4, 103, 'Kumpas', 1, '2024-03-22 02:08:14'),
(0, 14, 84, 'Mainstream culture', 1, '2024-03-22 02:08:15'),
(0, 10, 26, 'The equator has more hours of daylight per year than the North Pole.', 0, '2024-03-22 02:08:18'),
(0, 4, 94, 'kuripot', 0, '2024-03-22 02:08:19'),
(0, 2, 77, 'Wearing K-Pop fashion styles', 0, '2024-03-22 02:08:20'),
(0, 16, 19, 'talkative', 1, '2024-03-22 02:08:20'),
(0, 4, 95, 'Kuripot', 0, '2024-03-22 02:08:21'),
(0, 4, 101, 'Nagpapakasal', 0, '2024-03-22 02:08:27'),
(0, 4, 110, 'Paralanguage', 0, '2024-03-22 02:08:29'),
(0, 8, 16, 'Come', 0, '2024-03-22 02:08:29'),
(0, 16, 79, 'Written Constitution', 1, '2024-03-22 02:08:30'),
(0, 14, 6, 'indifferent', 0, '2024-03-22 02:08:30'),
(0, 11, 54, '320', 0, '2024-03-22 02:08:31'),
(0, 6, 36, 'The acceleration due to gravity 9.8m/s2 is a vector quantity.', 0, '2024-03-22 02:08:34'),
(0, 4, 108, 'Klaster', 1, '2024-03-22 02:08:37'),
(0, 8, 1, 'leave', 0, '2024-03-22 02:08:37'),
(0, 4, 109, 'Assertiv', 0, '2024-03-22 02:08:38'),
(0, 1, 62, '7', 0, '2024-03-22 02:08:39'),
(0, 6, 24, 'I, II and III', 1, '2024-03-22 02:08:42'),
(0, 8, 6, 'impartial', 0, '2024-03-22 02:08:44'),
(0, 4, 96, 'Walang magaling', 0, '2024-03-22 02:08:44'),
(0, 4, 107, 'Pares-nominal', 0, '2024-03-22 02:08:45'),
(0, 16, 82, 'Socialization', 0, '2024-03-22 02:08:45'),
(0, 6, 26, 'The equator has a larger area than the North Pole', 0, '2024-03-22 02:08:50'),
(0, 4, 93, 'Perpektibo', 1, '2024-03-22 02:08:52'),
(0, 4, 92, 'Mongol', 1, '2024-03-22 02:08:53'),
(0, 16, 75, 'Laws - are informal rules that are met with positive sanctions', 1, '2024-03-22 02:08:56'),
(0, 14, 8, 'Pleasant', 0, '2024-03-22 02:08:59'),
(0, 10, 30, 'The increase in drought in agricultural areas', 0, '2024-03-22 02:09:00'),
(0, 8, 18, 'Beginning', 1, '2024-03-22 02:09:06'),
(0, 16, 87, 'The \"cross\" because of the conversion by the clergy of pagan Filipinos to Christianity', 0, '2024-03-22 02:09:06'),
(0, 14, 3, 'loud', 1, '2024-03-22 02:09:10'),
(0, 15, 6, 'irrelevant', 0, '2024-03-22 02:09:11'),
(0, 10, 23, 'Competition', 0, '2024-03-22 02:09:23'),
(0, 16, 73, 'Church', 1, '2024-03-22 02:09:24'),
(0, 11, 65, '36', 0, '2024-03-22 02:09:24'),
(0, 3, 59, '70 ft', 1, '2024-03-22 02:09:25'),
(0, 7, 68, '15', 0, '2024-03-22 02:09:27'),
(0, 7, 65, '19', 1, '2024-03-22 02:09:33'),
(0, 9, 52, 'Php 500.00', 0, '2024-03-22 02:09:36'),
(0, 14, 18, 'Beginning', 1, '2024-03-22 02:09:41'),
(0, 8, 19, 'talkative', 1, '2024-03-22 02:09:41'),
(0, 3, 60, 'median ≤ mean ≤ mode', 0, '2024-03-22 02:09:43'),
(0, 1, 52, 'Php 2500.00', 0, '2024-03-22 02:09:48'),
(0, 3, 54, '(frac{1}{2})', 0, '2024-03-22 02:09:48'),
(0, 2, 71, 'Cultural diversity', 0, '2024-03-22 02:09:56'),
(0, 16, 80, 'Rehabilitation', 0, '2024-03-22 02:10:04'),
(0, 1, 25, 'smallest and basic unit of life', 1, '2024-03-22 02:10:04'),
(0, 8, 12, 'Who’s sandwich is this?', 1, '2024-03-22 02:10:05'),
(0, 14, 11, '“Stop!” shouted the security guard.', 0, '2024-03-22 02:10:07'),
(0, 7, 70, '16', 1, '2024-03-22 02:10:08'),
(0, 10, 35, 'galaxy → solar system → universe → planet', 0, '2024-03-22 02:10:17'),
(0, 7, 58, '82', 0, '2024-03-22 02:10:19'),
(0, 4, 91, 'KKP', 0, '2024-03-22 02:10:32'),
(0, 4, 16, 'Retreat', 1, '2024-03-22 02:10:37'),
(0, 2, 76, 'Mental issue', 0, '2024-03-22 02:10:39'),
(0, 10, 40, 'V=nRTP', 0, '2024-03-22 02:10:41'),
(0, 11, 69, '89', 1, '2024-03-22 02:10:42'),
(0, 8, 11, '“Stop!” shouted the security guard.', 0, '2024-03-22 02:10:42'),
(0, 2, 83, 'Counter Culture', 0, '2024-03-22 02:10:50'),
(0, 4, 13, 'Lying', 0, '2024-03-22 02:10:50'),
(0, 6, 33, '100J', 1, '2024-03-22 02:10:51'),
(0, 16, 74, 'Undergoing constant socialization enables an individual to fully develop in physical, emotional, and mental aspects.', 1, '2024-03-22 02:10:51'),
(0, 4, 1, 'leave', 0, '2024-03-22 02:10:51'),
(0, 14, 16, 'Move', 0, '2024-03-22 02:10:55'),
(0, 16, 83, 'High Culture', 1, '2024-03-22 02:10:57'),
(0, 10, 39, 'The object on the moon', 0, '2024-03-22 02:11:02'),
(0, 2, 84, 'Subculture', 0, '2024-03-22 02:11:06'),
(0, 8, 20, 'fearfulness', 0, '2024-03-22 02:11:07'),
(0, 9, 66, '1050', 0, '2024-03-22 02:11:10'),
(0, 16, 72, 'Culture', 1, '2024-03-22 02:11:11'),
(0, 11, 58, '82', 0, '2024-03-22 02:11:11'),
(0, 7, 60, 'median ≤ mean ≤ mode', 0, '2024-03-22 02:11:14'),
(0, 14, 4, 'augment', 1, '2024-03-22 02:11:14'),
(0, 1, 21, 'height of the plant, light intensity, weight of the plant', 0, '2024-03-22 02:11:15'),
(0, 6, 21, 'height of the plant, light intensity, color of light used', 0, '2024-03-22 02:11:16'),
(0, 9, 63, '48', 0, '2024-03-22 02:11:20'),
(0, 16, 76, 'Mental issue', 0, '2024-03-22 02:11:20'),
(0, 14, 20, 'fearfulness', 0, '2024-03-22 02:11:24'),
(0, 8, 4, 'provoke', 0, '2024-03-22 02:11:26'),
(0, 7, 51, '9', 0, '2024-03-22 02:11:28'),
(0, 2, 78, 'Ethnocentrism', 0, '2024-03-22 02:11:31'),
(0, 16, 84, 'Mainstream culture', 1, '2024-03-22 02:11:32');

-- --------------------------------------------------------

--
-- Table structure for table `player_sessions`
--

CREATE TABLE `player_sessions` (
  `session_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `score` int(11) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `duration` int(11) GENERATED ALWAYS AS (timestampdiff(SECOND,`start_time`,`end_time`)) VIRTUAL,
  `correct_answers` int(11) DEFAULT NULL,
  `total_questions` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `player_sessions`
--

INSERT INTO `player_sessions` (`session_id`, `user_id`, `score`, `start_time`, `end_time`, `correct_answers`, `total_questions`, `created_at`, `updated_at`) VALUES
(1, 13, NULL, '2024-03-22 09:48:03', NULL, NULL, 100, '2024-03-22 01:48:03', '2024-03-22 01:48:03'),
(2, 11, NULL, '2024-03-22 09:48:03', NULL, NULL, 100, '2024-03-22 01:48:03', '2024-03-22 01:48:03'),
(3, 4, NULL, '2024-03-22 09:48:04', NULL, NULL, 100, '2024-03-22 01:48:04', '2024-03-22 01:48:04'),
(4, 2, NULL, '2024-03-22 09:48:04', NULL, NULL, 100, '2024-03-22 01:48:04', '2024-03-22 01:48:04'),
(5, 9, NULL, '2024-03-22 09:48:04', NULL, NULL, 100, '2024-03-22 01:48:04', '2024-03-22 01:48:04'),
(6, 8, NULL, '2024-03-22 09:48:04', NULL, NULL, 100, '2024-03-22 01:48:04', '2024-03-22 01:48:04'),
(7, 5, NULL, '2024-03-22 09:48:04', NULL, NULL, 100, '2024-03-22 01:48:04', '2024-03-22 01:48:04'),
(8, 3, NULL, '2024-03-22 09:48:04', NULL, NULL, 100, '2024-03-22 01:48:04', '2024-03-22 01:48:04'),
(9, 15, NULL, '2024-03-22 09:48:04', NULL, NULL, 100, '2024-03-22 01:48:04', '2024-03-22 01:48:04'),
(10, 10, NULL, '2024-03-22 09:48:04', NULL, NULL, 100, '2024-03-22 01:48:04', '2024-03-22 01:48:04'),
(11, 6, NULL, '2024-03-22 09:48:04', NULL, NULL, 100, '2024-03-22 01:48:04', '2024-03-22 01:48:04'),
(12, 7, NULL, '2024-03-22 09:48:04', NULL, NULL, 100, '2024-03-22 01:48:04', '2024-03-22 01:48:04'),
(13, 1, NULL, '2024-03-22 09:48:04', NULL, NULL, 100, '2024-03-22 01:48:04', '2024-03-22 01:48:04'),
(14, 12, NULL, '2024-03-22 09:48:04', NULL, NULL, 100, '2024-03-22 01:48:04', '2024-03-22 01:48:04'),
(15, 14, NULL, '2024-03-22 09:48:04', NULL, NULL, 100, '2024-03-22 01:48:04', '2024-03-22 01:48:04'),
(16, 9, NULL, '2024-03-22 10:07:23', NULL, NULL, 100, '2024-03-22 02:07:23', '2024-03-22 02:07:23');

-- --------------------------------------------------------

--
-- Table structure for table `quizquestions`
--

CREATE TABLE `quizquestions` (
  `id` int(11) NOT NULL,
  `grade` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `difficulty` enum('Easy','Medium','Hard') DEFAULT NULL,
  `question` text DEFAULT NULL,
  `choice1` varchar(255) DEFAULT NULL,
  `choice2` varchar(255) DEFAULT NULL,
  `choice3` varchar(255) DEFAULT NULL,
  `choice4` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `explanation` text DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quizquestions`
--

INSERT INTO `quizquestions` (`id`, `grade`, `subject`, `difficulty`, `question`, `choice1`, `choice2`, `choice3`, `choice4`, `answer`, `explanation`, `image_url`, `created_at`, `updated_at`) VALUES
(1, NULL, 'English', NULL, 'The saccharine lady attracts many tourists in their hometown.', 'leave', 'sweet', 'arid', 'quit', 'sweet', NULL, NULL, '2024-03-21 19:46:40', '2024-03-21 19:46:40'),
(2, NULL, 'English', NULL, 'Gray’s children buy many gifts for present. They are pensive to their teacher and classmates.', 'oppressed', 'caged', 'thoughtful', 'happy', 'thoughtful', NULL, NULL, '2024-03-21 19:46:40', '2024-03-21 19:46:40'),
(3, NULL, 'English', NULL, 'Our dogs went hiding because of stentorian fireworks on New Year’s Eve.', 'violent', 'misbegotten', 'loud', 'stealthy', 'loud', NULL, NULL, '2024-03-21 19:46:40', '2024-03-21 19:46:40'),
(4, NULL, 'English', NULL, 'We are hoping that these herbal medicines will augment her excruciating body pain.', 'free', 'augment', 'provoke', 'wane', 'augment', NULL, NULL, '2024-03-21 19:46:40', '2024-03-21 19:46:40'),
(5, NULL, 'English', NULL, 'The case was dismissed because of dearth evidence presented to the court.', 'lack', 'poverty', 'abundance', 'foreign', 'lack', NULL, NULL, '2024-03-21 19:46:40', '2024-03-21 19:46:40'),
(6, NULL, 'English', NULL, 'The teacher has introduced a motivational story which is germane to the topic.', 'irrelevant', 'indifferent', 'impartial', 'improvident', 'improvident', NULL, NULL, '2024-03-21 19:46:40', '2024-03-21 19:46:40'),
(7, NULL, 'English', NULL, 'I love to buy and read a bridge dictionary because it has its complete details.', 'shorten', 'extend', 'stress', 'easy', 'shorten', NULL, NULL, '2024-03-21 19:46:40', '2024-03-21 19:46:40'),
(8, NULL, 'English', NULL, 'Although his manner was perfectly amicable, I am still uncomfortable. The opposite meaning of the word \"amicable\" is ___________.', 'Pleasant', 'Friendly', 'Affable', 'Grumpy', 'Grumpy', NULL, NULL, '2024-03-21 19:46:40', '2024-03-21 19:46:40'),
(9, NULL, 'English', NULL, 'The new leader is a brash young man. Which word describes best the opposite meaning of the word \"brash\"?', 'Polite', 'Handsome', 'Arrogant', 'Cool', 'Polite', NULL, NULL, '2024-03-21 19:46:40', '2024-03-21 19:46:40'),
(10, NULL, 'English', NULL, 'Embrace your challenges, learn from them, and then take actions to improve your circumstances. Choose the word that is most opposite in meaning to the word “embrace”', 'Contradict', 'Face', 'Obscure', 'Reject', 'Reject', NULL, NULL, '2024-03-21 19:46:40', '2024-03-21 19:46:40'),
(11, NULL, 'English', NULL, 'Which of the following demonstrates the proper use of quotation marks?', 'The professor asked, “Did anyone take notes from the last lecture?”', '“I need to buy a new umbrella,” she said.', 'My brother says, “Hello.”', '“Stop!” shouted the security guard.', 'The professor asked, “Did anyone take notes from the last lecture?”', NULL, NULL, '2024-03-21 19:46:40', '2024-03-21 19:46:40'),
(12, NULL, 'English', NULL, 'Which of the following shows the incorrect use of \"who’s\"?', 'Who’s sandwich is this?', 'James composed a list of who’s attending the art class at the Activity Center.', 'Kyle, who’s going to Thailand in April, loves architecture.', 'Do you know who’s going to the concert tonight?', 'Who’s sandwich is this?', NULL, NULL, '2024-03-21 19:46:40', '2024-03-21 19:46:40'),
(13, NULL, 'English', NULL, 'According to the text, academic dishonesty means ________________.', 'Cheating', 'Lying', 'Deceiving', 'misconduct', 'misconduct', NULL, NULL, '2024-03-21 19:46:40', '2024-03-21 19:46:40'),
(14, NULL, 'English', NULL, 'Why do students commit academic dishonesty?', 'They want to get ahead of others', 'They feel they have the right to cheat', 'They like to receive high honors', 'They want to achieve a good record', 'They feel they have the right to cheat', NULL, NULL, '2024-03-21 19:46:40', '2024-03-21 19:46:40'),
(15, NULL, 'English', NULL, 'Which of the following statements can help students avoid academic dishonesty?', 'Be honest at all times', 'Paraphrase someone else’s idea', 'Tweak ideas to make it seem original', 'Recognize the idea of others', 'Be honest at all times', NULL, NULL, '2024-03-21 19:46:40', '2024-03-21 19:46:40'),
(16, NULL, 'English', NULL, 'As I think that I was never to get well, my illness began to recede. The word \"recede\" means ________.', 'Retreat', 'Forward', 'Move', 'Come', 'Retreat', NULL, NULL, '2024-03-21 19:46:40', '2024-03-21 19:46:40'),
(17, NULL, 'English', NULL, 'When Greg lost his job and became impoverished, the bank foreclosed on his home. Which word has the same meaning as impoverished?', 'Affluent', 'Indolent', 'Destitute', 'Inane', 'Destitute', NULL, NULL, '2024-03-21 19:46:40', '2024-03-21 19:46:40'),
(18, NULL, 'English', NULL, 'The cover-up lasts to this day, but its genesis is now coming to light. The correct synonym of the word \"genesis\" is _________.', 'Movement', 'Relevant', 'Style', 'Beginning', 'Beginning', NULL, NULL, '2024-03-21 19:46:40', '2024-03-21 19:46:40'),
(19, NULL, 'English', NULL, 'High school students are more loquacious than the college students in round-table discussions during the literary contest.', 'talkative', 'thirsty', 'beautiful', 'complicated', 'talkative', NULL, NULL, '2024-03-21 19:46:40', '2024-03-21 19:46:40'),
(20, NULL, 'English', NULL, 'Can you believe the student had the temerity to ask many questions from the terror teacher?', 'audacity', 'fearfulness', 'shyness', 'stupidity', 'audacity', NULL, NULL, '2024-03-21 19:46:40', '2024-03-21 19:46:40'),
(21, NULL, 'Science', NULL, 'A student conducted an experiment to see the effect of light intensity on the growth of a certain plant. Which could be the independent, dependent, and control variables of his experiment?', 'height of the plant, light intensity, weight of the plant', 'height of the plant, light intensity, color of light used', 'light intensity, height of the plant, the amount of nutrients the plant receives', 'light intensity, size of leaves, the size of flower pots used', 'light intensity, height of the plant, the amount of nutrients the plant receives', NULL, NULL, '2024-03-21 19:54:47', '2024-03-21 19:54:47'),
(22, NULL, 'Science', NULL, 'Which of the following levels of organization is arranged in the correct sequence from most to least inclusive?', 'ecosystem, community, population, individual', 'community, ecosystem, individual, population', 'individual, population, community, ecosystem', 'population, ecosystem, individual, community', 'ecosystem, community, population, individual', NULL, NULL, '2024-03-21 19:54:47', '2024-03-21 19:54:47'),
(23, NULL, 'Science', NULL, 'Which kind of relationship is exhibited by a lice and human?', 'Commensalism', 'Parasitism', 'Symbiosis', 'Competition', 'Parasitism', NULL, NULL, '2024-03-21 19:54:47', '2024-03-21 19:54:47'),
(24, NULL, 'Science', NULL, 'Important abiotic factors in ecosystems include which of the following?', 'temperature', 'water', 'wind', 'I, II and III', 'I, II and III', NULL, NULL, '2024-03-21 19:54:47', '2024-03-21 19:54:47'),
(25, NULL, 'Science', NULL, 'What is a cell?', 'smallest and advanced unit of life', 'smallest and basic unit of life', 'largest and basic unit of life', 'largest and advanced unit of life', 'smallest and basic unit of life', NULL, NULL, '2024-03-21 19:54:47', '2024-03-21 19:54:47'),
(26, NULL, 'Science', NULL, 'Which of the following statements best explains why it is warmer at the equator than at the North Pole?', 'The equator has a larger area than the North Pole', 'The equator is closer to the Sun than the North Pole.', 'The equator receives more direct sunlight than the North Pole.', 'The equator has more hours of daylight per year than the North Pole.', 'The equator receives more direct sunlight than the North Pole.', NULL, NULL, '2024-03-21 19:54:47', '2024-03-21 19:54:47'),
(27, NULL, 'Science', NULL, 'During a “leap year”, we add an extra day to our calendar because:', 'Earth takes 24 hours to rotate', 'The moon takes 27.3 days to orbit', 'Earth takes 365 ¼ days to revolve', 'The moon takes 29.5 days to orbit.', 'Earth takes 365 ¼ days to revolve', NULL, NULL, '2024-03-21 19:54:47', '2024-03-21 19:54:47'),
(28, NULL, 'Science', NULL, 'Which of the following would be the effect of a rise on carbon dioxide in the atmosphere?', 'Cooling of the atmosphere', 'Increases in the solar radiation', 'Darkening of the air', 'Warming of the atmosphere', 'Warming of the atmosphere', NULL, NULL, '2024-03-21 19:54:47', '2024-03-21 19:54:47'),
(29, NULL, 'Science', NULL, 'A government existing law also known as Ecological Solid Waste Management of Act of 2000', 'RA 9003', 'RA 2000', 'RA 9007', 'RA 2001', 'RA 9003', NULL, NULL, '2024-03-21 19:54:47', '2024-03-21 19:54:47'),
(30, NULL, 'Science', NULL, 'The most visually striking evidence of global warming is ____________?', 'The increased precipitation in the gulf coast of countries', 'The increase in drought in agricultural areas', 'Rapid melting of glacial ice on nearly every continent', 'temperature fluctuations during winter months', 'Rapid melting of glacial ice on nearly every continent', NULL, NULL, '2024-03-21 19:54:47', '2024-03-21 19:54:47'),
(31, NULL, 'Science', NULL, 'What do you call a closed continuous path through which electrons can flow?', 'Circuit', 'Charge', 'Voltage', 'Resistor', 'Circuit', NULL, NULL, '2024-03-21 19:56:41', '2024-03-21 19:56:41'),
(32, NULL, 'Science', NULL, 'What wave property can best explain the apparent bending of a pencil when it is dipped into a glass of water?', 'Reflection', 'Refraction', 'Diffraction', 'Interference', 'Refraction', NULL, NULL, '2024-03-21 19:56:41', '2024-03-21 19:56:41'),
(33, NULL, 'Science', NULL, 'What is the total mechanical energy of the system?', '34J', '66J', '100J', '0J', '100J', NULL, NULL, '2024-03-21 19:56:41', '2024-03-21 19:56:41'),
(34, NULL, 'Science', NULL, 'Matter changes in composition and/or state depending on conditions. Which of the following describes matter undergoing a chemical change?', 'Sugar mixes with sodium chloride', 'Stained tiles soaked in hydrochloric acid', 'Solid ice melting into water', 'Sheets of paper were shredded to pieces', 'Stained tiles soaked in hydrochloric acid', NULL, NULL, '2024-03-21 19:56:41', '2024-03-21 19:56:41'),
(35, NULL, 'Science', NULL, 'In which list are celestial features correctly shown in order of increasing size?', 'galaxy → solar system → universe → planet', 'solar system → galaxy → planet → universe', 'planet → solar system → galaxy → universe', 'universe → galaxy → solar system → planet', 'planet → solar system → galaxy → universe', NULL, NULL, '2024-03-21 19:56:41', '2024-03-21 19:56:41'),
(36, NULL, 'Science', NULL, 'Which of the following statements about vectors and scalars are TRUE?', 'A scalar quantity depends only on the initial and final values of the quantity while a vector quantity does not.', 'Vector quantities are always bigger than scalar quantities.', 'Scalar quantities are path dependent quantities while vector quantities are not.', 'The acceleration due to gravity 9.8m/s2 is a vector quantity.', 'I, III and IV', NULL, NULL, '2024-03-21 19:56:41', '2024-03-21 19:56:41'),
(37, NULL, 'Science', NULL, 'If a car has an acceleration of 0 m/s2 then one can be sure that the car is not ________.', 'changing its position', 'changing its velocity', 'moving', 'changing its parts.', 'changing its velocity', NULL, NULL, '2024-03-21 19:56:41', '2024-03-21 19:56:41'),
(38, NULL, 'Science', NULL, 'Which of the following statements is/are not TRUE about a free-falling object?', 'An object under free-fall moves at an acceleration of 9.8m/s2', 'An object under free-fall moves at a constant speed of 9.8 m/s.', 'An object under free-fall falls downward solely due to gravity.', 'An object under free fall has a constant negative acceleration.', 'II and III', NULL, NULL, '2024-03-21 19:56:41', '2024-03-21 19:56:41'),
(39, NULL, 'Science', NULL, 'An object weighs 600N on Earth. A second object weighs 100N on the moon. Which has a bigger mass? Note: The moon’s gravity is 1/6th of the Earth’s.', 'The object on the earth', 'The object on the moon', 'Both objects have the same mass', 'Cannot be determined', 'Cannot be determined', NULL, NULL, '2024-03-21 19:56:41', '2024-03-21 19:56:41'),
(40, NULL, 'Science', NULL, 'The ideal gas law summarizes the simple gas laws. Which of the following correctly states the relationship between the four conditions?', 'V=nRTP', 'T=nR/PV', 'P=nRT/V', 'T=R/PV', 'P=nRT/V', NULL, NULL, '2024-03-21 19:56:41', '2024-03-21 19:56:41'),
(51, NULL, 'Math', NULL, 'If 3/8 of the class are absent and there are only 20 who are present how many students are absent?', '9', '10', '12', '15', '12', NULL, NULL, '2024-03-21 20:06:17', '2024-03-21 20:06:17'),
(52, NULL, 'Math', NULL, 'A man has a certain amount of money. He used ¼ of his money to buy a book and used 80% of the remainder to pay his tuition fee. If the man has still Php 600.00 left, how much is the cost of the book?', 'Php 2500.00', 'Php 1500.00', 'Php 1000.00', 'Php 500.00', 'Php 1000.00', NULL, NULL, '2024-03-21 20:06:17', '2024-03-21 20:06:17'),
(53, NULL, 'Math', NULL, 'A box contains four white balls and five red balls. If three balls are drawn from the box, what is the probability that one ball is white?', '10/42', '10/21', '5/21', '25/42', '5/21', NULL, NULL, '2024-03-21 20:06:17', '2024-03-21 20:06:17'),
(54, NULL, 'Math', NULL, 'What is the simplified form of (frac{20}{60} div frac{20}{20})?', '(frac{1}{3})', '320', '(frac{1}{2})', '(frac{1}{20})', '(frac{1}{3})', NULL, NULL, '2024-03-21 20:06:17', '2024-03-21 20:06:17'),
(55, NULL, 'Math', NULL, 'Which of the following mathematical statements is/are TRUE?', 'I only', 'II only', 'I and III', 'I and II', 'II only', NULL, NULL, '2024-03-21 20:06:17', '2024-03-21 20:06:17'),
(56, NULL, 'Math', NULL, 'Out of fifty students, 34 are enrolled in College Algebra and 25 are enrolled in Statistics and Probability class. If 16 are both enrolled in the two subjects, how many students are not enrolled in neither subject?', '7', '9', '16', '18', '9', NULL, NULL, '2024-03-21 20:06:17', '2024-03-21 20:06:17'),
(57, NULL, 'Math', NULL, 'A 24-meter piece of wire is cut into two parts with unequal lengths. If the ratio of the shorter piece to the longer piece is 3:5, how long is the shorter piece?', '8 m', '9 m', '15 m', '16 m', '9 m', NULL, NULL, '2024-03-21 20:06:17', '2024-03-21 20:06:17'),
(58, NULL, 'Math', NULL, 'How many 60 cm square tiles will cover the floor of a living room with dimensions 4.8 meters and 5.4 meters?', '72', '82', '92', '102', '92', NULL, NULL, '2024-03-21 20:07:13', '2024-03-21 20:07:13'),
(59, NULL, 'Math', NULL, 'A flagpole 20 ft high cast a shadow of 12 ft at the same time a building cast a shadow of 42 ft. How high is the building?', '66 ft', '67 ft', '70 ft', '74 ft', '70 ft', NULL, NULL, '2024-03-21 20:07:13', '2024-03-21 20:07:13'),
(60, NULL, 'Math', NULL, 'Given the set of data 8, 10, 5, 9, 7, 8, 6, 8, 9, 5, which of the following is true?', 'mean ≤ median ≤ mode', 'median ≤ mean ≤ mode', 'median ≤ mode ≤ mean', 'mode ≤ mean ≤ median', 'mode ≤ mean ≤ median', NULL, NULL, '2024-03-21 20:07:13', '2024-03-21 20:07:13'),
(61, NULL, 'Math', NULL, 'Van fares are computed as follows: Php 30.00 for the first four kilometers and Php 2.50 for every additional kilometer. How much should you pay (in pesos) for a ride that covers 24 kilometers?', '50', '60', '70', '80', '80', NULL, NULL, '2024-03-21 20:07:13', '2024-03-21 20:07:13'),
(62, NULL, 'Math', NULL, 'Five less than twice a number is seven. What is the number?', '5', '6', '7', '8', '6', NULL, NULL, '2024-03-21 20:07:13', '2024-03-21 20:07:13'),
(63, NULL, 'Math', NULL, 'Bong is 3 kg heavier than his younger sister Bing, and he is 2 kg lighter than his older sister Beng? If the three siblings have a total weight of 155 kg, how heavy is Bing in kilograms?', '47', '49', '52', '48', '49', NULL, NULL, '2024-03-21 20:07:13', '2024-03-21 20:07:13'),
(64, NULL, 'Math', NULL, 'How many line segments can you form from 8 collinear points?', '7', '14', '21', '28', '28', NULL, NULL, '2024-03-21 20:07:13', '2024-03-21 20:07:13'),
(65, NULL, 'Math', NULL, 'What will be the value of the expression 3x^2 – 5y + 2z^3 when x = 3, y = -2, and z = -1?', '15', '19', '35', '36', '19', NULL, NULL, '2024-03-21 20:07:13', '2024-03-21 20:07:13'),
(66, NULL, 'Math', NULL, 'There are 1800 college freshmen at a certain university. If the ratio of the male student to the female student is 5:7, how many male students are there?', '750', '1050', '1200', '1250', '750', NULL, NULL, '2024-03-21 20:07:13', '2024-03-21 20:07:13'),
(67, NULL, 'Math', NULL, 'The total number of ducks and pigs in a farm is 18. The total number of legs among them is 56. Assuming each duck has exactly two legs and each pig has exactly four legs, determine how many pigs are in the field?', '6', '8', '9', '10', '10', NULL, NULL, '2024-03-21 20:07:13', '2024-03-21 20:07:13'),
(68, NULL, 'Math', NULL, 'Patrick is 6 years older than Mark, and Mark is 5 years older than Michael. If the total of their ages is 61, then how old is Michael?', '10', '15', '20', '26', '20', NULL, NULL, '2024-03-21 20:07:13', '2024-03-21 20:07:13'),
(69, NULL, 'Math', NULL, 'Peter has 4 exams in his algebra subject. His scores in the first three exams were 80, 78, and 73. What score does Peter need to get on his fourth exam in order to have an average of 80?', '85', '87', '89', '90', '89', NULL, NULL, '2024-03-21 20:07:13', '2024-03-21 20:07:13'),
(70, NULL, 'Math', NULL, 'If a certain task can be completed by 8 men in 12 days, how many men can be assigned to do the same task to finish it in 6 days?', '9', '16', '18', '32', '16', NULL, NULL, '2024-03-21 20:07:13', '2024-03-21 20:07:13'),
(71, NULL, 'Social Science', NULL, 'You are an overseas Filipino worker who went to Japan for the first time. During the first few days of your stay, you are disoriented and frustrated due to your exposure to a very strange culture. What does this situation signify?', 'Cultural diversity', 'Cultural relativism', 'Culture shock', 'Fear of culture', 'Culture shock', NULL, NULL, '2024-03-21 20:11:49', '2024-03-21 20:11:49'),
(72, NULL, 'Social Science', NULL, 'Which of the following refers to the “way of life” of individuals in a community?', 'Society', 'Culture', 'Manner', 'Organization', 'Culture', NULL, NULL, '2024-03-21 20:11:49', '2024-03-21 20:11:49'),
(73, NULL, 'Social Science', NULL, 'Aside from teaching morality and reverence to our Creator, this institution also instills cultural appreciation and cultural values that would shape the personality of a child. What is this institution?', 'Church', 'Government', 'Community', 'Social media', 'Church', NULL, NULL, '2024-03-21 20:11:49', '2024-03-21 20:11:49'),
(74, NULL, 'Social Science', NULL, 'Socialization is an important social activity in the development of a person. How does socialization affect the development of an individual?', 'Socialization is an effective tool to understand cultural differences.', 'Socialization helps an individual become better than anyone else.', 'Socialization process is necessary to meet the demands of the society.', 'Undergoing constant socialization enables an individual to fully develop in physical, emotional, and mental aspects.', 'Undergoing constant socialization enables an individual to fully develop in physical, emotional, and mental aspects.', NULL, NULL, '2024-03-21 20:11:49', '2024-03-21 20:11:49'),
(75, NULL, 'Social Science', NULL, 'Which of the following statements below is NOT TRUE?', 'Informal sanctions are gossip, unfavorable and favorable public opinion, giving or withdrawing of affection, love or friendship; verbal admiration or criticism, reprimands, or verbal commendations', 'Labelling theory states how members of society label others whether they are deviant or not', 'Laws - are informal rules that are met with positive sanctions', 'Sanctions refers to systems of reward and punishment in order to ensure that norms are followed and expectations met', 'Laws - are informal rules that are met with positive sanctions', NULL, NULL, '2024-03-21 20:11:49', '2024-03-21 20:11:49'),
(76, NULL, 'Social Science', NULL, 'In 1973, the American Psychiatric Association (APA) declassified homosexuality as what?', 'Disease', 'Mental health', 'Mental disorder', 'Mental issue', 'Mental disorder', NULL, NULL, '2024-03-21 20:11:49', '2024-03-21 20:11:49'),
(77, NULL, 'Social Science', NULL, 'School is one of the different institutions in the society that help in the foundation and development of a person. Students are learning by example from their teacher and their fellow students. Which is an example of enculturation in school?', 'Singing Lupang Hinirang', 'Playing computer games', 'Wearing K-Pop fashion styles', 'Washing the clothes and the dishes', 'Singing Lupang Hinirang', NULL, NULL, '2024-03-21 20:11:49', '2024-03-21 20:11:49'),
(78, NULL, 'Social Science', NULL, 'Having more than one wife is not bad from a Muslim point of view. In relation, people must see this custom within the context of Muslims’ problems and opportunities. What kind of view is illustrated here?', 'Ethnocentrism', 'Cultural relativism', 'Barbarism', 'Egocentrism', 'Cultural relativism', NULL, NULL, '2024-03-21 20:11:49', '2024-03-21 20:11:49'),
(79, NULL, 'Social Science', NULL, 'The 1987 Philippine Constitution is an example of what kind of constitution?', 'Written Constitution', 'Unwritten Constitution', 'Fundamental law', 'Statute law', 'Written Constitution', NULL, NULL, '2024-03-21 20:11:49', '2024-03-21 20:11:49'),
(80, NULL, 'Social Science', NULL, 'Social Pathology explains that deviant behavior is caused by actual physical and mental illness, malfunctions, or deformities. Which of the following is the best solution in controlling this problem caused by actual physical and mental illness, malfunctions, or deformities?', 'Education', 'Capital punishment', 'Hospitalization', 'Rehabilitation', 'Hospitalization', NULL, NULL, '2024-03-21 20:11:49', '2024-03-21 20:11:49'),
(81, NULL, 'Social Science', NULL, 'These are the reason why we need to study the society EXCEPT:', 'To understand the world where we live in and the intricate realities of group interactions and social processes', 'To explain and understand human behavior in the society', 'To determine the existence of animals, their functions, nature, and characteristics', 'To understand how and why human beings act the way that they do', 'To determine the existence of animals, their functions, nature, and characteristics', NULL, NULL, '2024-03-21 20:13:11', '2024-03-21 20:13:11'),
(82, NULL, 'Social Science', NULL, 'According to Herbert Mead, our concept of self is product of which of the following term?', 'Social Process', 'Culture', 'Socialization', 'Social Experience', 'Social Experience', NULL, NULL, '2024-03-21 20:13:11', '2024-03-21 20:13:11'),
(83, NULL, 'Social Science', NULL, 'Buying Gucci, Christian Dior, and Prada bags is an example of what kinds of culture?', 'Popular Culture', 'Subculture', 'Counter Culture', 'High Culture', 'High Culture', NULL, NULL, '2024-03-21 20:13:11', '2024-03-21 20:13:11'),
(84, NULL, 'Social Science', NULL, 'Which term refers to the established language, religion, values, rituals, and social customs which are often the norm for society as a whole.', 'Popular culture', 'Counter culture', 'Mainstream culture', 'Subculture', 'Mainstream culture', NULL, NULL, '2024-03-21 20:13:11', '2024-03-21 20:13:11'),
(85, NULL, 'Social Science', NULL, 'Which of the following statements BEST described the Katipunan?', 'It was a movement which aimed for the separation of the Philippines through force.', 'It was a movement that wanted reforms from Spain.', 'It was established to make the Philippines as the Province of Spain.', 'It was established to to strengthen the colonial government.', 'It was a movement which aimed for the separation of the Philippines through force.', NULL, NULL, '2024-03-21 20:13:11', '2024-03-21 20:13:11'),
(86, NULL, 'Social Science', NULL, 'The early Filipino revolts were considered a failure. Which of the following is the most important explanation for such failure?', 'The Filipinos had the full support of the clergy to whom Filipinos obeyed because of fear.', 'The Spaniard had an advanced weapon and well-trained military.', 'The revolts were limited in scope.', 'The lack of unity and leadership which failed to sensitize the people to a common identity and purpose.', 'The lack of unity and leadership which failed to sensitize the people to a common identity and purpose.', NULL, NULL, '2024-03-21 20:13:11', '2024-03-21 20:13:11'),
(87, NULL, 'Social Science', NULL, 'Colonization of the Philippines by Spain is best described as done through:', 'The \"cross\" because of the conversion by the clergy of pagan Filipinos to Christianity', 'The \"cross\" because Magellan planted the first cross on Philippine soil', 'The \"sword\" because the soldiers forcibly made Filipinos accept the Spanish rule', 'The \"sword and cross\" because they had to make sure that colonization was accomplished.', 'The \"sword and cross\" because they had to make sure that colonization was accomplished.', NULL, NULL, '2024-03-21 20:13:11', '2024-03-21 20:13:11'),
(88, NULL, 'Social Science', NULL, 'According to the 1987 Constitution, what kind of state is the Philippines?', 'Federal and Republican', 'Democratic and Federal', 'Federal and Authoritarian', 'Democratic and Republican', 'Democratic and Republican', NULL, NULL, '2024-03-21 20:13:11', '2024-03-21 20:13:11'),
(89, NULL, 'Social Science', NULL, 'How many years does a President of the country serve in the Philippines?', '3 years', '6 years', '9 years', '12 years', '6 years', NULL, NULL, '2024-03-21 20:13:11', '2024-03-21 20:13:11'),
(90, NULL, 'Social Science', NULL, 'Who is the proponent of the idea that each newly born individual is a tabula rasa or clean slate?', 'Auguste Comte', 'Karl Marx', 'John Locke', 'Thomas Hobbes', 'John Locke', NULL, NULL, '2024-03-21 20:13:11', '2024-03-21 20:13:11'),
(91, NULL, 'Filipino', NULL, 'Anong pormasyon ng pantig ang salitang trumpeta?', 'KPKK', 'KKPPKK', 'KKPK', 'KKP', 'KKPK', NULL, NULL, '2024-03-21 21:08:30', '2024-03-21 21:08:30'),
(92, NULL, 'Filipino', NULL, 'Alin sa mga sumusunod ang pangngalang pantangi?', 'Mongol', 'Relo', 'Abogado', 'Bata', 'Mongol', NULL, NULL, '2024-03-21 21:08:30', '2024-03-21 21:08:30'),
(93, NULL, 'Filipino', NULL, 'Anong aspeto ng pandiwa ang salitang yumuko?', 'Perpektibo', 'Imperpektibo', 'Kontemplatibo', 'Kagaganap', 'Perpektibo', NULL, NULL, '2024-03-21 21:08:30', '2024-03-21 21:08:30'),
(94, NULL, 'Filipino', NULL, 'Ipinagmalaki mo siya BAHAG naman pala ANG kaniyang BUNTOT. Ang ibig sabihin ng may malalaking letra ay ____________.', 'kuripot', 'duwag', 'mahiyain', 'traydor', 'duwag', NULL, NULL, '2024-03-21 21:08:30', '2024-03-21 21:08:30'),
(95, NULL, 'Filipino', NULL, 'Kabaliwan at paglulustay ang inyong ginagawa taun-taon. Higit na marami ang maralitang nangangailangan ng salapi at dunong. Ang nagsasalita ay ___________.', 'Kuripot', 'Praktikal', 'Maramot', 'Matipid', 'Praktikal', NULL, NULL, '2024-03-21 21:08:30', '2024-03-21 21:08:30'),
(96, NULL, 'Filipino', NULL, 'Ang mga kalahok ay “walang itulak kabigin”. Ano ang ibig-sabihin ng talatang ito?', 'Walang magaling', 'May napili na', 'Pawang magagaling', 'Walang mapili', 'Pawang magagaling', NULL, NULL, '2024-03-21 21:08:30', '2024-03-21 21:08:30'),
(97, NULL, 'Filipino', NULL, 'Pagsulat ng anumang pumapaloob sa paaralan ay nauuri sa anong pagsulat?', 'Jornalistik', 'Akademiko', 'Teknikal', 'Referensyal', 'Akademiko', NULL, NULL, '2024-03-21 21:08:30', '2024-03-21 21:08:30'),
(98, NULL, 'Filipino', NULL, 'Alin sa mga sumusunod ang pagtanggap ng mensahe sa pamamagitan ng pagtugon sa damdamin at kaisipan sa mga titik at simbolong nakalimbag sa pahina?', 'Pagsulat', 'Pakikinig', 'Pagsasalita', 'Pagbasa', 'Pagbasa', NULL, NULL, '2024-03-21 21:08:30', '2024-03-21 21:08:30'),
(99, NULL, 'Filipino', NULL, 'Alin sa mga sumusunod ang pinakatamang pangungusap?', 'Nagpapabata ang pulbos sa kutis na Clinique.', 'Nagpapabata sa kutis ang pulbos na Clinique.', 'Nagpapabata ng mukha sa kutis ang pulbos na Clinique.', 'Nagpapabata sa kutis ng mukha ang pulbos na Clinique.', 'Nagpapabata sa kutis ang pulbos na Clinique.', NULL, NULL, '2024-03-21 21:08:30', '2024-03-21 21:08:30'),
(100, NULL, 'Filipino', NULL, 'Alin ang wastong salitang naayon sa pahayag: “__________ pag-asa pa ba ako?', 'May', 'Mayroon', 'Magka', 'Nagka', 'May', NULL, NULL, '2024-03-21 21:08:30', '2024-03-21 21:08:30'),
(101, NULL, 'Filipino', NULL, '“Naniningalang pugad” Ang idyomatikong pahayag na ito ay nangangahulugang?', 'Nagpapakasal', 'Nanliligaw', 'Nagsasayaw', 'Kumakanta', 'Nanliligaw', NULL, NULL, '2024-03-21 21:08:30', '2024-03-21 21:08:30'),
(102, NULL, 'Filipino', NULL, 'Aanhin pa ang bahay na bato kung ang nakatira’y kwago, mabuti pa ang kubo na ang nakatira’y tao.” Ito ay isang halimbawa ng _________________.', 'sawikain', 'salawikain', 'kasabihan', 'kawikaan', 'salawikain', NULL, NULL, '2024-03-21 21:08:30', '2024-03-21 21:08:30'),
(103, NULL, 'Filipino', NULL, 'Sa pagsasalita, kinakailangang maging natural ang galaw ng kamay, nakatutulong ito upang mas maging kanais-nais at kahikahikayat ang pagsasalita. Anong sangkap ng pagsasalita ang kailangang gamitin?', 'Kumpas', 'Tindig', 'Tinig', 'Boses', 'Kumpas', NULL, NULL, '2024-03-21 21:08:30', '2024-03-21 21:08:30'),
(104, NULL, 'Filipino', NULL, 'Isang paglalarawan ng wika sa tekstwal na tagapamagitan sa pamamagitan ng paggamit ng isang pangkat ng mga tanda, simbolo ay makikita sa anong makrong kasanayan?', 'Pagsasalita', 'Pakikinig', 'Pagbasa', 'Pagsulat', 'Pagsulat', NULL, NULL, '2024-03-21 21:08:30', '2024-03-21 21:08:30'),
(105, NULL, 'Filipino', NULL, 'Isang uri ng pagsulat na may kinalaman sa isang partikular na propesyon.', 'Teknikal', 'Akademik', 'Profesyunal', 'Malikhain', 'Profesyunal', NULL, NULL, '2024-03-21 21:08:30', '2024-03-21 21:08:30'),
(106, NULL, 'Filipino', NULL, 'Ito ay magkasunod na patinig at malapatinig sa iisang pantig sa loob ng isang salita.', 'Klaster', 'Diptonggo', 'Malapatinig', 'Alibata', 'Diptonggo', NULL, NULL, '2024-03-21 21:08:30', '2024-03-21 21:08:30'),
(107, NULL, 'Filipino', NULL, 'Ano ang tawag sa dalawang salitang magkaiba ang kahulugan ngunit magkatulad na magkatulad ang bigkas maliban sa isang ponema?', 'Pares-nominal', 'Pares-minimal', 'Pares-ponema', 'Pares-tunog', 'Pares-minimal', NULL, NULL, '2024-03-21 21:08:30', '2024-03-21 21:08:30'),
(108, NULL, 'Filipino', NULL, 'Tumutukoy sa magkasunod na tunog katinig sa iisang pantig ng isang salita.', 'Klaster', 'Diptonggo', 'Malapatinig', 'Alibata', 'Klaster', NULL, NULL, '2024-03-21 21:08:30', '2024-03-21 21:08:30'),
(109, NULL, 'Filipino', NULL, 'Anong uri ng aktong ilokusyonaryo ang pahayag na nagpapakita ng sinseridad ng nagsasalita?', 'Assertiv', 'Expresiv', 'Komisiv', 'Deklarativ', 'Expresiv', NULL, NULL, '2024-03-21 21:08:30', '2024-03-21 21:08:30'),
(110, NULL, 'Filipino', NULL, 'Kinindatan ni Dustin si Jerick dahil mayroon silang lihim na ayaw ipaalam sa kanilang mga magulang. Ang pagkindat ay isang halimbawa ng anong uri ng di-berbal na komunikasyon?', 'Paralanguage', 'Proksemiks', 'Kronemiks', 'Oculesic', 'Oculesic', NULL, NULL, '2024-03-21 21:08:30', '2024-03-21 21:08:30');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_settings`
--

CREATE TABLE `quiz_settings` (
  `setting_id` int(11) NOT NULL,
  `setting_name` varchar(255) NOT NULL,
  `setting_value` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quiz_settings`
--

INSERT INTO `quiz_settings` (`setting_id`, `setting_name`, `setting_value`, `description`, `created_at`, `updated_at`) VALUES
(4, 'quiz_duration', '120', 'Default quiz duration in minutes', '2024-03-18 17:47:35', '2024-03-18 17:47:35'),
(0, 'quiz_duration', '120', 'Default quiz duration in minutes', '2024-03-21 21:12:02', '2024-03-21 21:12:02');

-- --------------------------------------------------------

--
-- Table structure for table `student_applications`
--

CREATE TABLE `student_applications` (
  `id` int(11) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `middlename` varchar(255) DEFAULT NULL,
  `course_first_preference` varchar(255) NOT NULL,
  `course_second_preference` varchar(255) NOT NULL,
  `track_strand_taken` varchar(255) DEFAULT NULL,
  `enrollment_status` varchar(255) NOT NULL,
  `school_last_attended` varchar(255) NOT NULL,
  `school_address` text NOT NULL,
  `learners_reference_number` varchar(255) DEFAULT NULL,
  `GWA` decimal(3,2) DEFAULT NULL,
  `home_address` text NOT NULL,
  `zip_code` varchar(10) NOT NULL,
  `sex` enum('Male','Female','Other') NOT NULL,
  `birthday` date NOT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `contact_number` varchar(20) NOT NULL,
  `exam_pass_code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_applications`
--

INSERT INTO `student_applications` (`id`, `lastname`, `firstname`, `middlename`, `course_first_preference`, `course_second_preference`, `track_strand_taken`, `enrollment_status`, `school_last_attended`, `school_address`, `learners_reference_number`, `GWA`, `home_address`, `zip_code`, `sex`, `birthday`, `email_address`, `contact_number`, `exam_pass_code`) VALUES
(1, 'Rodriguez', 'James', NULL, 'Psychology', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '700EM0BO'),
(2, 'Martinez', 'Patricia', NULL, 'Architecture', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '00AR1SHQ'),
(3, 'Rodriguez', 'Mary', NULL, 'Education', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', 'T0X6VIBN'),
(4, 'Brown', 'Patricia', NULL, 'Pharmacy', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', 'YUJUYUO1'),
(5, 'Brown', 'Robert', NULL, 'Arts', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '629G17SW'),
(6, 'Brown', 'Robert', NULL, 'Education', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', 'THS8E53U'),
(7, 'Rodriguez', 'Robert', NULL, 'Business Administration', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', 'DAH0DBG1'),
(8, 'Garcia', 'Robert', NULL, 'Accountancy', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', 'DZI5GWIJ'),
(9, 'Williams', 'Michael', NULL, 'Architecture', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', 'WWAH9OQQ'),
(10, 'Jones', 'William', NULL, 'Computer Science', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', 'PFAA16C3'),
(11, 'Johnson', 'William', NULL, 'Pharmacy', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '9B6GD07T'),
(12, 'Jones', 'William', NULL, 'Arts', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', 'YWZDB9X9'),
(13, 'Martinez', 'William', NULL, 'Nursing', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', 'JV52T40M'),
(14, 'Johnson', 'Robert', NULL, 'Business Administration', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', 'VYJC9LXQ'),
(15, 'Smith', 'James', NULL, 'Accountancy', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', 'WPIZHSYH'),
(16, 'Jones', 'William', NULL, 'Pharmacy', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '5BLFUGH7'),
(17, 'Rodriguez', 'Patricia', NULL, 'Nursing', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', 'AFY7CQS2'),
(18, 'Davis', 'William', NULL, 'Education', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', 'GKT6VLFL'),
(19, 'Smith', 'William', NULL, 'Computer Science', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', 'VTY9YA2L'),
(20, 'Johnson', 'Patricia', NULL, 'Computer Science', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '2EL5CBEU');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','student','other') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(1, 'admin', 'ISU_roXas_1978', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `player_sessions`
--
ALTER TABLE `player_sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `quizquestions`
--
ALTER TABLE `quizquestions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_applications`
--
ALTER TABLE `student_applications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `learners_reference_number` (`learners_reference_number`),
  ADD UNIQUE KEY `email_address` (`email_address`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `player_sessions`
--
ALTER TABLE `player_sessions`
  MODIFY `session_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `quizquestions`
--
ALTER TABLE `quizquestions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `student_applications`
--
ALTER TABLE `student_applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
