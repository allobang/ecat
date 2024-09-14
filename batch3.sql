-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2024 at 01:48 AM
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
(1, NULL, 'English', NULL, 'The saccharine lady attracts many tourists in their hometown.', 'leave', 'sweet', 'arid', 'quit', 'sweet', NULL, 'assets/img/660efe0b0d8e6.png', '2024-03-21 19:46:40', '2024-04-04 19:22:51'),
(2, NULL, 'English', NULL, 'Gray’s children buy many gifts for present. They are pensive to their teacher and classmates.', 'oppressed', 'caged', 'thoughtful', 'happy', 'thoughtful', NULL, 'assets/img/660efe26ad438.png', '2024-03-21 19:46:40', '2024-04-04 19:23:18'),
(3, NULL, 'English', NULL, 'Our dogs went hiding because of stentorian fireworks on New Year’s Eve.', 'violent', 'misbegotten', 'loud', 'stealthy', 'loud', NULL, 'assets/img/660efe442eff4.png', '2024-03-21 19:46:40', '2024-04-04 19:23:48'),
(4, NULL, 'English', NULL, 'We are hoping that these herbal medicines will abate her excruciating body pain.', 'free', 'augment', 'provoke', 'wane', 'augment', NULL, 'assets/img/660efec3b78b4.png', '2024-03-21 19:46:40', '2024-04-04 22:38:47'),
(5, NULL, 'English', NULL, 'The case was dismissed because of dearth evidence presented to the court.', 'lack', 'poverty', 'abundance', 'foreign', 'lack', NULL, 'assets/img/660eff006fefb.png', '2024-03-21 19:46:40', '2024-04-04 19:26:56'),
(6, NULL, 'English', NULL, 'The teacher has introduced a motivational story which is germane to the topic.', 'irrelevant', 'indifferent', 'impartial', 'improvident', 'improvident', NULL, 'assets/img/660eff1ebf848.png', '2024-03-21 19:46:40', '2024-04-04 19:27:26'),
(7, NULL, 'English', NULL, 'I love to buy and read abridge dictionary because it has its complete details.', 'shorten', 'extend', 'stress', 'easy', 'extend', NULL, 'assets/img/660eff6d7cdf6.png', '2024-03-21 19:46:40', '2024-04-04 22:41:48'),
(8, NULL, 'English', NULL, 'Although his manner was perfectly amicable, I am still uncomfortable. The opposite meaning of the word \"amicable\" is ___________.', 'Pleasant', 'Friendly', 'Affable', 'Grumpy', 'Grumpy', NULL, NULL, '2024-03-21 19:46:40', '2024-03-21 19:46:40'),
(9, NULL, 'English', NULL, 'The new leader is a brash young man. Which word describes best the opposite meaning of the word \"brash\"?', 'Polite', 'Handsome', 'Arrogant', 'Cool', 'Polite', NULL, NULL, '2024-03-21 19:46:40', '2024-03-21 19:46:40'),
(10, NULL, 'English', NULL, 'Embrace your challenges, learn from them, and then take actions to improve your circumstances. Choose the word that is most opposite in meaning to the word “embrace”', 'Contradict', 'Face', 'Obscure', 'Reject', 'Reject', NULL, NULL, '2024-03-21 19:46:40', '2024-03-21 19:46:40'),
(11, NULL, 'English', NULL, 'Which of the following demonstrates the proper use of quotation marks?', 'The professor asked, “Did anyone take notes from the last lecture?”', '“I need to buy a new umbrella,” she said.', 'My brother says, “Hello.”', '“Stop!” shouted the security guard.', 'The professor asked, “Did anyone take notes from the last lecture?”', NULL, NULL, '2024-03-21 19:46:40', '2024-03-21 19:46:40'),
(12, NULL, 'English', NULL, 'Which of the following shows the incorrect use of \"who’s\"?', 'Who’s sandwich is this?', 'James composed a list of who’s attending the art class at the Activity Center.', 'Kyle, who’s going to Thailand in April, loves architecture.', 'Do you know who’s going to the concert tonight?', 'Who’s sandwich is this?', NULL, NULL, '2024-03-21 19:46:40', '2024-03-21 19:46:40'),
(13, '', 'English', 'Easy', 'According to the text, academic dishonesty means ________________.', 'Cheating', 'Lying', 'Deceiving', 'misconduct', 'Cheating', '', NULL, '2024-03-21 19:46:40', '2024-04-04 22:45:00'),
(14, NULL, 'English', NULL, 'Why do students commit academic dishonesty?', 'They want to get ahead of others', 'They feel they have the right to cheat', 'They like to receive high honors', 'They want to achieve a good record', 'They feel they have the right to cheat', NULL, NULL, '2024-03-21 19:46:40', '2024-03-21 19:46:40'),
(15, NULL, 'English', NULL, 'Which of the following statements can help students avoid academic dishonesty?', 'Be honest at all times', 'Paraphrase someone else’s idea', 'Tweak ideas to make it seem original', 'Recognize the idea of others', 'Be honest at all times', NULL, NULL, '2024-03-21 19:46:40', '2024-03-21 19:46:40'),
(16, NULL, 'English', NULL, 'As I think that I was never to get well, my illness began to recede. The word \"recede\" means ________.', 'Retreat', 'Forward', 'Move', 'Come', 'Retreat', NULL, NULL, '2024-03-21 19:46:40', '2024-03-21 19:46:40'),
(17, NULL, 'English', NULL, 'When Greg lost his job and became impoverished, the bank foreclosed on his home. Which word has the same meaning as impoverished?', 'Affluent', 'Indolent', 'Destitute', 'Inane', 'Destitute', NULL, NULL, '2024-03-21 19:46:40', '2024-03-21 19:46:40'),
(18, NULL, 'English', NULL, 'The cover-up lasts to this day, but its genesis is now coming to light. The correct synonym of the word \"genesis\" is _________.', 'Movement', 'Relevant', 'Style', 'Beginning', 'Beginning', NULL, NULL, '2024-03-21 19:46:40', '2024-03-21 19:46:40'),
(19, NULL, 'English', NULL, 'High school students are more loquacious than the college students in round-table discussions during the literary contest.', 'talkative', 'thirsty', 'beautiful', 'complicated', 'talkative', NULL, 'assets/img/660efd8267d2d.png', '2024-03-21 19:46:40', '2024-04-04 19:20:34'),
(20, NULL, 'English', NULL, 'Can you believe the student had the temerity to ask many questions from the terror teacher?', 'audacity', 'fearfulness', 'shyness', 'stupidity', 'audacity', NULL, 'assets/img/660efde1f3a97.png', '2024-03-21 19:46:40', '2024-04-04 19:22:10'),
(21, NULL, 'Science', NULL, 'A student conducted an experiment to see the effect of light intensity on the growth of a certain plant. Which could be the independent, dependent, and control variables of his experiment?', 'height of the plant, light intensity, weight of the plant', 'height of the plant, light intensity, color of light used', 'light intensity, height of the plant, the amount of nutrients the plant receives', 'light intensity, size of leaves, the size of flower pots used', 'light intensity, height of the plant, the amount of nutrients the plant receives', NULL, NULL, '2024-03-21 19:54:47', '2024-03-21 19:54:47'),
(22, NULL, 'Science', NULL, 'Which of the following levels of organization is arranged in the correct sequence from most to least inclusive?', 'ecosystem, community, population, individual', 'community, ecosystem, individual, population', 'individual, population, community, ecosystem', 'population, ecosystem, individual, community', 'ecosystem, community, population, individual', NULL, NULL, '2024-03-21 19:54:47', '2024-03-21 19:54:47'),
(23, NULL, 'Science', NULL, 'Which kind of relationship is exhibited by a lice and human?', 'Commensalism', 'Parasitism', 'Symbiosis', 'Competition', 'Parasitism', NULL, NULL, '2024-03-21 19:54:47', '2024-03-21 19:54:47'),
(24, '', 'Science', 'Easy', 'Important abiotic factors in ecosystems include which of the following?', 'I only', 'II only', 'I and II only', 'I, II, and III', 'I, II, and III', '', 'assets/img/660efb12d3171.png', '2024-03-21 19:54:47', '2024-04-04 19:17:41'),
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
(36, '', 'Science', 'Easy', 'Which of the following statements about vectors and scalars are TRUE?', 'I, III and IV', 'III and V', 'I, II, V', 'I, III and V', 'I, III and IV', '', 'assets/img/660effe9dea01.png', '2024-03-21 19:56:41', '2024-04-04 19:33:26'),
(37, NULL, 'Science', NULL, 'If a car has an acceleration of 0 m/s2 then one can be sure that the car is not ________.', 'changing its position', 'changing its velocity', 'moving', 'changing its parts.', 'changing its velocity', NULL, NULL, '2024-03-21 19:56:41', '2024-03-21 19:56:41'),
(38, '', 'Science', 'Easy', 'Which of the following statements is/are not TRUE about a free-falling object?', 'I and IV', 'III and IV', 'I, III and IV', 'II and III', 'III and IV', '', 'assets/img/660f003965457.png', '2024-03-21 19:56:41', '2024-04-04 19:34:38'),
(39, NULL, 'Science', NULL, 'An object weighs 600N on Earth. A second object weighs 100N on the moon. Which has a bigger mass? Note: The moon’s gravity is 1/6th of the Earth’s.', 'The object on the earth', 'The object on the moon', 'Both objects have the same mass', 'Cannot be determined', 'Both objects have the same mass', NULL, NULL, '2024-03-21 19:56:41', '2024-04-04 23:18:38'),
(40, NULL, 'Science', NULL, 'The ideal gas law summarizes the simple gas laws. Which of the following correctly states the relationship between the four conditions?', 'V=nRTP', 'T=nR/PV', 'P=nRT/V', 'T=R/PV', 'P=nRT/V', NULL, NULL, '2024-03-21 19:56:41', '2024-03-21 19:56:41'),
(51, NULL, 'Math', NULL, 'If 3/8 of the class are absent and there are only 20 who are present how many students are absent?', '9', '10', '12', '15', '12', NULL, NULL, '2024-03-21 20:06:17', '2024-03-21 20:06:17'),
(52, NULL, 'Math', NULL, 'A man has a certain amount of money. He used ¼ of his money to buy a book and used 80% of the remainder to pay his tuition fee. If the man has still Php 600.00 left, how much is the cost of the book?', 'Php 2500.00', 'Php 1500.00', 'Php 1000.00', 'Php 500.00', 'Php 1000.00', NULL, NULL, '2024-03-21 20:06:17', '2024-03-21 20:06:17'),
(53, NULL, 'Math', NULL, 'A box contains four white balls and five red balls. If three balls are drawn from the box, what is the probability that one ball is white?', '10/42', '10/21', '5/21', '25/42', '10/21', NULL, NULL, '2024-03-21 20:06:17', '2024-04-04 23:19:43'),
(54, '', 'Math', 'Easy', '', 'A', 'B', 'C', 'D', 'D', '', 'assets/img/660f02e92bb7d.png', '2024-03-21 20:06:17', '2024-04-04 19:43:37'),
(55, NULL, 'Math', NULL, 'Which of the following mathematical statements is/are TRUE?', 'I only', 'II only', 'I and III', 'I and II', 'II only', NULL, 'assets/img/660f03598951f.png', '2024-03-21 20:06:17', '2024-04-04 19:45:29'),
(56, NULL, 'Math', NULL, 'Out of fifty students, 34 are enrolled in College Algebra and 25 are enrolled in Statistics and Probability class. If 16 are both enrolled in the two subjects, how many students are not enrolled in neither subject?', '7', '9', '16', '18', '7', NULL, NULL, '2024-03-21 20:06:17', '2024-04-04 23:20:44'),
(57, NULL, 'Math', NULL, 'A 24-meter piece of wire is cut into two parts with unequal lengths. If the ratio of the shorter piece to the longer piece is 3:5, how long is the shorter piece?', '8 m', '9 m', '15 m', '16 m', '9 m', NULL, NULL, '2024-03-21 20:06:17', '2024-03-21 20:06:17'),
(58, NULL, 'Math', NULL, 'How many 60 cm square tiles will cover the floor of a living room with dimensions 4.8 meters and 5.4 meters?', '72', '82', '92', '102', '72', NULL, NULL, '2024-03-21 20:07:13', '2024-04-04 23:21:00'),
(59, NULL, 'Math', NULL, 'A flagpole 20 ft high cast a shadow of 12 ft at the same time a building cast a shadow of 42 ft. How high is the building?', '66 ft', '67 ft', '70 ft', '74 ft', '70 ft', NULL, NULL, '2024-03-21 20:07:13', '2024-03-21 20:07:13'),
(60, NULL, 'Math', NULL, 'Given the set of data 8, 10, 5, 9, 7, 8, 6, 8, 9, 5, which of the following is true?', 'mean ≤ median ≤ mode', 'median ≤ mean ≤ mode', 'median ≤ mode ≤ mean', 'mode ≤ mean ≤ median', 'mean ≤ median ≤ mode', NULL, NULL, '2024-03-21 20:07:13', '2024-04-04 23:21:29'),
(61, NULL, 'Math', NULL, 'Van fares are computed as follows: Php 30.00 for the first four kilometers and Php 2.50 for every additional kilometer. How much should you pay (in pesos) for a ride that covers 24 kilometers?', '50', '60', '70', '80', '80', NULL, NULL, '2024-03-21 20:07:13', '2024-03-21 20:07:13'),
(62, NULL, 'Math', NULL, 'Five less than twice a number is seven. What is the number?', '5', '6', '7', '8', '6', NULL, NULL, '2024-03-21 20:07:13', '2024-03-21 20:07:13'),
(63, NULL, 'Math', NULL, 'Bong is 3 kg heavier than his younger sister Bing, and he is 2 kg lighter than his older sister Beng? If the three siblings have a total weight of 155 kg, how heavy is Bing in kilograms?', '47', '49', '52', '48', '49', NULL, NULL, '2024-03-21 20:07:13', '2024-03-21 20:07:13'),
(64, NULL, 'Math', NULL, 'How many line segments can you form from 8 collinear points?', '7', '14', '21', '28', '28', NULL, NULL, '2024-03-21 20:07:13', '2024-03-21 20:07:13'),
(65, '', 'Math', 'Easy', 'What will be the value of the expression 3x^2 – 5y + 2z^3 when x = 3, y = -2, and z = -1?', '15', '19', '35', '19', '35', '', NULL, '2024-03-21 20:07:13', '2024-04-04 17:44:40'),
(66, NULL, 'Math', NULL, 'There are 1800 college freshmen at a certain university. If the ratio of the male student to the female student is 5:7, how many male students are there?', '750', '1050', '1200', '1250', '750', NULL, NULL, '2024-03-21 20:07:13', '2024-03-21 20:07:13'),
(67, NULL, 'Math', NULL, 'The total number of ducks and pigs in a farm is 18. The total number of legs among them is 56. Assuming each duck has exactly two legs and each pig has exactly four legs, determine how many pigs are in the field?', '6', '8', '9', '10', '10', NULL, NULL, '2024-03-21 20:07:13', '2024-03-21 20:07:13'),
(68, NULL, 'Math', NULL, 'Patrick is 6 years older than Mark, and Mark is 5 years older than Michael. If the total of their ages is 61, then how old is Michael?', '10', '15', '20', '26', '15', NULL, NULL, '2024-03-21 20:07:13', '2024-04-04 23:23:10'),
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
(80, NULL, 'Social Science', NULL, 'Social Pathology explains that deviant behavior is caused by actual physical and mental illness, malfunctions, or deformities. Which of the following is the best solution in controlling this problem caused by actual physical and mental illness, malfunctions, or deformities?', 'Education', 'Capital punishment', 'Hospitalization', 'Rehabilitation', 'Rehabilitation', NULL, NULL, '2024-03-21 20:11:49', '2024-04-04 23:24:55'),
(81, NULL, 'Social Science', NULL, 'These are the reason why we need to study the society EXCEPT:', 'To understand the world where we live in and the intricate realities of group interactions and social processes', 'To explain and understand human behavior in the society', 'To determine the existence of animals, their functions, nature, and characteristics', 'To understand how and why human beings act the way that they do', 'To determine the existence of animals, their functions, nature, and characteristics', NULL, NULL, '2024-03-21 20:13:11', '2024-03-21 20:13:11'),
(82, NULL, 'Social Science', NULL, 'According to Herbert Mead, our concept of self is product of which of the following term?', 'Social Process', 'Culture', 'Socialization', 'Social Experience', 'Socialization', NULL, NULL, '2024-03-21 20:13:11', '2024-04-04 23:25:27'),
(83, NULL, 'Social Science', NULL, 'Buying Gucci, Christian Dior, and Prada bags is an example of what kinds of culture?', 'Popular Culture', 'Subculture', 'Counter Culture', 'High Culture', 'High Culture', NULL, NULL, '2024-03-21 20:13:11', '2024-03-21 20:13:11'),
(84, NULL, 'Social Science', NULL, 'Which term refers to the established language, religion, values, rituals, and social customs which are often the norm for society as a whole.', 'Popular culture', 'Counter culture', 'Mainstream culture', 'Subculture', 'Popular culture', NULL, NULL, '2024-03-21 20:13:11', '2024-04-04 23:25:43'),
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
(106, NULL, 'Filipino', NULL, 'Ito ay magkasunod na patinig at malapatinig sa iisang pantig sa loob ng isang salita.', 'Klaster', 'Diptonggo', 'Malapatinig', 'Alibata', 'Klaster', NULL, NULL, '2024-03-21 21:08:30', '2024-04-04 23:30:05'),
(107, NULL, 'Filipino', NULL, 'Ano ang tawag sa dalawang salitang magkaiba ang kahulugan ngunit magkatulad na magkatulad ang bigkas maliban sa isang ponema?', 'Pares-nominal', 'Pares-minimal', 'Pares-ponema', 'Pares-tunog', 'Pares-minimal', NULL, NULL, '2024-03-21 21:08:30', '2024-03-21 21:08:30'),
(108, NULL, 'Filipino', NULL, 'Tumutukoy sa magkasunod na tunog katinig sa iisang pantig ng isang salita.', 'Klaster', 'Diptonggo', 'Malapatinig', 'Alibata', 'Diptonggo', NULL, NULL, '2024-03-21 21:08:30', '2024-04-04 23:30:23'),
(109, NULL, 'Filipino', NULL, 'Anong uri ng aktong ilokusyonaryo ang pahayag na nagpapakita ng sinseridad ng nagsasalita?', 'Assertiv', 'Expresiv', 'Komisiv', 'Deklarativ', 'Komisiv', NULL, NULL, '2024-03-21 21:08:30', '2024-04-04 23:30:56'),
(110, NULL, 'Filipino', NULL, 'Kinindatan ni Dustin si Jerick dahil mayroon silang lihim na ayaw ipaalam sa kanilang mga magulang. Ang pagkindat ay isang halimbawa ng anong uri ng di-berbal na komunikasyon?', 'Paralanguage', 'Proksemiks', 'Kronemiks', 'Oculesic', 'Oculesic', NULL, NULL, '2024-03-21 21:08:30', '2024-03-21 21:08:30'),
(111, '', 'ABSTRACT REASONING', 'Easy', '', '', '', '', '', '5', '', 'assets/img/660ee7f804dd3.png', '2024-04-04 17:48:15', '2024-04-04 17:48:40'),
(112, '', 'ABSTRACT REASONING', 'Easy', '', '', '', '', '', '1', '', 'assets/img/660eed48e22e9.png', '2024-04-04 18:11:13', '2024-04-04 18:11:20'),
(113, '', 'ABSTRACT REASONING', 'Easy', '', '', '', '', '', '7', '', 'assets/img/660ef150500d2.png', '2024-04-04 18:28:23', '2024-04-04 18:28:32'),
(114, '', 'ABSTRACT REASONING', 'Easy', '', '', '', '', '', '4', '', 'assets/img/660ef16062972.png', '2024-04-04 18:28:39', '2024-04-04 18:28:48'),
(115, '', 'ABSTRACT REASONING', 'Easy', '', '', '', '', '', '3', '', 'assets/img/660ef17710ade.png', '2024-04-04 18:28:56', '2024-04-04 18:29:11'),
(116, '', 'ABSTRACT REASONING', 'Easy', '', '', '', '', '', '1', '', 'assets/img/660ef1f87109b.png', '2024-04-04 18:31:12', '2024-04-04 18:31:20'),
(117, '', 'ABSTRACT REASONING', 'Easy', '', '', '', '', '', '6', '', 'assets/img/660ef209339cc.png', '2024-04-04 18:31:29', '2024-04-04 18:31:37'),
(118, '', 'ABSTRACT REASONING', 'Easy', '', '', '', '', '', '1', '', 'assets/img/660ef215c3e5d.png', '2024-04-04 18:31:44', '2024-04-04 18:31:49'),
(119, '', 'ABSTRACT REASONING', 'Easy', '', '', '', '', '', '8', '', 'assets/img/660ef222d2e95.png', '2024-04-04 18:31:57', '2024-04-04 18:32:02'),
(120, '', 'ABSTRACT REASONING', 'Easy', '', '', '', '', '', '4', '', 'assets/img/660ef235b992d.png', '2024-04-04 18:32:16', '2024-04-04 18:32:21'),
(121, '', 'ABSTRACT REASONING', 'Easy', '', '', '', '', '', '5', '', 'assets/img/660ef24713ab0.png', '2024-04-04 18:32:31', '2024-04-04 18:32:39'),
(122, '', 'ABSTRACT REASONING', 'Easy', '', '', '', '', '', '6', '', 'assets/img/660ef25c4e972.png', '2024-04-04 18:32:49', '2024-04-04 18:33:00'),
(123, '', 'ABSTRACT REASONING', 'Easy', '', '', '', '', '', '2', '', 'assets/img/660ef26a5c87a.png', '2024-04-04 18:33:07', '2024-04-04 18:33:14'),
(124, '', 'ABSTRACT REASONING', 'Easy', '', '', '', '', '', '1', '', 'assets/img/660ef277bab6c.png', '2024-04-04 18:33:21', '2024-04-04 18:33:27'),
(125, '', 'ABSTRACT REASONING', 'Easy', '', '', '', '', '', '2', '', 'assets/img/660ef2870e3f2.png', '2024-04-04 18:33:36', '2024-04-04 18:33:43'),
(126, '', 'ABSTRACT REASONING', 'Easy', '', '', '', '', '', '4', '', 'assets/img/660ef2949bd0d.png', '2024-04-04 18:33:50', '2024-04-04 18:33:56'),
(127, '', 'ABSTRACT REASONING', 'Easy', '', '', '', '', '', '6', '', 'assets/img/660ef2a532037.png', '2024-04-04 18:34:04', '2024-04-04 18:34:13'),
(128, '', 'ABSTRACT REASONING', 'Easy', '', '', '', '', '', '7', '', 'assets/img/660ef2b4934cc.png', '2024-04-04 18:34:22', '2024-04-04 18:34:28'),
(129, '', 'ABSTRACT REASONING', 'Easy', '', '', '', '', '', '3', '', 'assets/img/660ef2cc973ef.png', '2024-04-04 18:34:45', '2024-04-04 18:34:52'),
(130, '', 'ABSTRACT REASONING', 'Easy', '', '', '', '', '', '8', '', 'assets/img/660ef2de6f7f0.png', '2024-04-04 18:35:01', '2024-04-04 18:35:10');

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
(1, 'ACOB, ANGEL PIMENTEL      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0721'),
(2, 'ACOSTA, ADELFA ANTONIO      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0722'),
(3, 'ACOSTA, SKYLHER ANDRES   ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0723'),
(4, 'AGLIAM, NATHANIEL ENGLATERA     ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0724'),
(5, 'AGOYAOY, LAURENCE POLICARPIO      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0725'),
(6, 'ALEJO, BENISER MAGONGOY    ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0726'),
(7, 'ALLAUIGAN, JELLYMAE BALABBO', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0727'),
(8, 'ALONZO, KEANNA MAY MIGUEL    ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0728'),
(9, 'ARANDA, JOHNLLOYD BALOBAR', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0729'),
(10, 'ARINDAYEN, RHEA JOY ABAN     ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0730'),
(11, 'ASUNCION, CZARINA EUGENIO', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0731'),
(12, 'AVECILLA, RENZ LIRA      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0732'),
(13, 'BACULI, BRYAN REYES', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0733'),
(14, 'BACUYAG, JANILA DOROTHY GWEN DUMAGUING  ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0734'),
(15, 'BALA, EMERSON MODELO   ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0735'),
(16, 'BALBIN, PRINCESS NICOLE GUANZON      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0736'),
(17, 'BALLONOS, JAN ANGELO BANTAT      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0737'),
(18, 'BALUCANAG, JHUMARI BINLAYAN      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0738'),
(19, 'BATO, ERNESTO JACINTO      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0739'),
(20, 'BECARME, SHERRY ANN RANJO     ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0740'),
(21, 'BILOG, JAYSON RENIEDO      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0741'),
(22, 'BORJA, NOUVELL AZI SABRIDO   ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0742'),
(23, 'BUENO, ANGELICA VELASCO      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0743'),
(24, 'BUGUINA, CHERRY LOU DOMINGO      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0744'),
(25, 'BUGUINA, FERLIE DUPO      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0745'),
(26, 'BULAUAN, JEREMIAS DUQUE    ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0746'),
(27, 'CABUYADAO, EDEN JOY SAGUN      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0747'),
(28, 'CACESOLA, RUBILYN CAROLINO      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0748'),
(29, 'CAINGAT, MICHELLE OA?A', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0749'),
(30, 'CALLAO, CRISSA MAE BUENCAMINO     ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0750'),
(31, 'CARAMAYRAMAY, JULIOS POTESTAS      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0751'),
(32, 'CARILLO, AJ NICK CALLE    ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0752'),
(33, 'CASTICON, GRACE MATA      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0753'),
(34, 'CLOPINO, JOCELYN REYES      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0754'),
(35, 'CONSOLTA, GEMMALYN ALAVA   ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0755'),
(36, 'CORCUERA, RONEL BAGGUATAN      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0756'),
(37, 'CORDOVA, JOHN RAE RAMOS   ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0757'),
(38, 'CORPUZ, PRINCE NATHANIEL AGBAYANI   ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0758'),
(39, 'CUARESMA, NHELLIE ELLAINE HERMANO      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0759'),
(40, 'CUIZON, JANDENZEL CORNEL', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0760'),
(41, 'DE FIESTA, CHRISTINE JOY DOMINGO', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0761'),
(42, 'DE QUIROZ, ROSEMARIE MAWIRAT     ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0762'),
(43, 'DELOS SANTOS, MARK JOSEF FORONDA   ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0763'),
(44, 'DENIZ, ORHAN PATIAG   ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0764'),
(45, 'DIAMPOC, JACKSON ALEJANDRO     ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0765'),
(46, 'DIONICIO, ANGELO CONCEPCION', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0766'),
(47, 'DIOSO, CRISTEL DOMINGO      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0767'),
(48, 'DIZON, EPIFFANIE VALDEZ      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0768'),
(49, 'DOMINGO, ANN COLLADO      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0769'),
(50, 'DOMINGO, JOJO DE GUZMAN   ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0770'),
(51, 'EGAR, ROBERT JADE CABUDOL      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0771'),
(52, 'ESCA?O, PRINCESS ANGEL ALONZO     ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0772'),
(53, 'ESPERANZA, JOHN CARLO CALANTOC      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0773'),
(54, 'ESPIRITU, BLESSY GRACE TOMAS     ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0774'),
(55, 'ESTELA, JILLIAN TAVARES', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0775'),
(56, 'FELICIANO, ELAIZA GAMENG      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0776'),
(57, 'FRANADA, JERWIN BRENT       ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0777'),
(58, 'FUERTE, DELMAR NAVA', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0778'),
(59, 'GALEON, ANGELICA GALEA   ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0779'),
(60, 'GALIMA, MARIBETH MORALES       ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0780'),
(61, 'GALLESTRE, VRANDONLIE QEDDENG   ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0781'),
(62, 'GALUT, RACHEL MAE TEJADA', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0782'),
(63, 'GAMAL, KATHLYN ALMAZAN    ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0783'),
(64, 'GAPASIN, MIKAELA AIRA LOZANO     ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0784'),
(65, 'GARCIA, ERROL BLENN AQUINO   ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0785'),
(66, 'GARCIA, MA. KATRINA     ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0786'),
(67, 'GAURAN, BENNYMAR GALASI      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0787'),
(68, 'GERARDO, DANNAH JANE AGNO     ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0788'),
(69, 'GONZALES, JOYCE ANN AGUSTIN     ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0789'),
(70, 'GONZALES, MARJORIE DE LEON     ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0790'),
(71, 'GOROSPE, LARILENE BUTED     ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0791'),
(72, 'GRAGASIN, CRISTINE CHLOA VALENTON      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0792'),
(73, 'GUILLERMO, JENZEL ALEJO    ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0793'),
(74, 'GUTIEREZ, ALAIZA PALUMANI      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0794'),
(75, 'HERRERA, KAYCEE CABARLES      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0795'),
(76, 'IGNACIO, ORLANDO APOLONIO      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0796'),
(77, 'JIMENEZ, YUAN JAMES PINPIN       ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0797'),
(78, 'LACADEN, ARON JAY GADDAWON', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0798'),
(79, 'LACADEN, ARON JAY GADDAWON      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0799'),
(80, 'LACERNA, IAN JOSE', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0800'),
(81, 'LAGUTAO, CHERRY-FAYE PASCUA      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0801'),
(82, 'LIMON, ELLA MIRANDA      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0802'),
(83, 'LIWAG, MILLARD JAMES MAYO      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0803'),
(84, 'LOPEZ, JINGGOY GUIYAB      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0804'),
(85, 'LORES, DANIEL MIKE BALDERAMOS   ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0805'),
(86, 'LUBO, BRYAN JAY CALAMASA      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0806'),
(87, 'LUMANAS, ANGEL ROSE CAYTO     ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0807'),
(88, 'MAGDANGAL, ALDWIN BUTCH ANGUSTIA      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0808'),
(89, 'MANANTAN, MHARWIN JADE DELOS SANTOS     ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0809'),
(90, 'MANGASER, CRISTINA NAVARRO', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0810'),
(91, 'MANZANO, SAY TINTERO', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0811'),
(92, 'MARIANO, CHRISTIAN KYLE ORING', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0812'),
(93, 'MARIANO, JASPHER VELASCO      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0813'),
(94, 'MARQUEZ, ROMELYN CACHO   ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0814'),
(95, 'MAUR, ANGELICA MAE VILLANUEVA     ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0815'),
(96, 'MEDRANO, CESAR GOMEZ      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0816'),
(97, 'MENOR, JERARD VALENTINO      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0817'),
(98, 'MORENO, IVAN JHON TORIO      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0818'),
(99, 'MOSQUITO, ANNA CASSANDRA DURWIN  ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0819'),
(100, 'NAVARETTE, JERISSA JOYCE ESCOSAR    ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0820'),
(101, 'NAVARETTE, TRISTAN JASPER ESCOSAR    ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0821'),
(102, 'NULLAGA, PRECIOUS APPLE MAG-AMPO       ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0822'),
(103, 'OLAMA, AMER HASSAN CRISTOBAL       ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0823'),
(104, 'OPE?A, VINCE IVAN DUCO   ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0824'),
(105, 'ORDONIO, MITCH NATIVIDAD      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0825'),
(106, 'ORTEGA, NIKKI-JANE ALLADO   ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0826'),
(107, 'PABLO, JONDREI CLYDE GOROSPE', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0827'),
(108, 'PABLO, JONDREI CLYDE GOROSPE      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0828'),
(109, 'PACLE, CLAIRE ANNE A      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0829'),
(110, 'PACULGUIN, KATHYRINE CARBONEL   ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0830'),
(111, 'PADRONES, SHEY ROLLEDA      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0831'),
(112, 'PAGULAYAN, PRINCESS JANE ASUNCION      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0832'),
(113, 'PAPA, JESSICA SALDIVAR', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0833'),
(114, 'PARDUA, PRETTY BOY DELA CRUZ     ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0834'),
(115, 'PASCARAN, LYKA MANAGUELOD     ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0835'),
(116, 'PASCUA, JEMYCAH CALICA   ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0836'),
(117, 'PASCUAL, ALYSA MAE VELASCO      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0837'),
(118, 'PASCUAL, PIOLO GREGORIO', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0838'),
(119, 'PASCUAL, RACHELLE SALVE     ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0839'),
(120, 'PEREZ, SEAN MICHAEL VERZOSA      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0840'),
(121, 'PERUCHO, MARK KEVIN SALTARIN', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0841'),
(122, 'PRANOSO, MARK WILSON RONQUILLO      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0842'),
(123, 'PRANOZO, KENSHIN ORDANEZ       ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0843'),
(124, 'RAMIL, PRINCESS DAISARIE CONCEPCION      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0844'),
(125, 'RAMOS, SHERYN VALIENTE       ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0845'),
(126, 'RANQUE, MA. LYN DOMINGO', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0846'),
(127, 'RAZALAN, JOSHUA ZINAI JACINTO      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0847'),
(128, 'RESPICIO, HAZELLE JOY TABALI      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0848'),
(129, 'RIVERA, ROLLY VILLANUEVA      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0849'),
(130, 'ROMERO, VICTOR PE?A      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0850'),
(131, 'ROSALAN, JIRAH MENDEZ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0851'),
(132, 'ROSQUETA, SHELLA JOY BUENA      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0852'),
(133, 'RUBEN, CABUYADAO BAUTISTA      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0853'),
(134, 'SABIANO, JAYSON PERITO   ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0854'),
(135, 'SAGUCIO, MHARIEL INGARAN', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0855'),
(136, 'SAGUN, JASREL ANN SERVANIA ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0856'),
(137, 'SAGUN, JUN JEROME SARMIENTO      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0857'),
(138, 'SAJONIA, JASMINE HERNANDEZ   ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0858'),
(139, 'SALACUP, EDDIE VINCENT ACUPIDO ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0859'),
(140, 'SALADINO, EDISON PARI?AS ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0860'),
(141, 'SALADINO, JAY SOTELO     ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0861'),
(142, 'SALAZAR, CHRISTIAN LOPEZ ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0862'),
(143, 'SALAZAR, JOHNLESHTER BARTOLOME ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0863'),
(144, 'SALCEDO, CHEZCA MAE CELIS  ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0864'),
(145, 'SALES, MARK JOEFFREY SALES   ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0865'),
(146, 'SALGADO, JAY-R RELLOSO   ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0866'),
(147, 'SALUCON, JESSIE VHER QUEROS  ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0867'),
(148, 'SALVADOR, DENNIS NATIVIDAD ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0868'),
(149, 'SALVADOR, MC LORENZ ORDINARIO ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0869'),
(150, 'SALVADOR, SHAN PAUL HALABASO ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0870'),
(151, 'SALVADOR, YVANE AGASER', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0871'),
(152, 'SAMBU, KHENZLEE DOMINGO      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0872'),
(153, 'SANTIAGO, ANALIZA AMBROCIO ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0873'),
(154, 'SANTIAGO, JAKE ANDREI PALADA ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0874'),
(155, 'SANTIAGO, MERIKEN SITDOGAN ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0875'),
(156, 'SANTILLAN, KRISTHA LIZA AGUINALDO ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0876'),
(157, 'SANTOS, ANGELO CASTICON  ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0877'),
(158, 'SANTOS, CHRISTIAN JOSEPH CARBILLON ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0878'),
(159, 'SANTOS, DIVINE GRACE IGNACIO ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0879'),
(160, 'SANTOS, JERICHO SIMON ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0880'),
(161, 'SARMIENTO, CHRISTOPHER PIMENTEL   ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0881'),
(162, 'SARMIENTO, IZZY PUOD ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0882'),
(163, 'SARMIENTO, JIMMY MAMARALLO ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0883'),
(164, 'SAWIT, JUDY ANN CASTILLO   ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0884'),
(165, 'SEBASTIAN, DEN-CHRIS LUMABI ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0885'),
(166, 'SEBASTIAN, JOY CADORNA  ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0886'),
(167, 'SEBASTIAN, VALERIE JOY TAJON ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0887'),
(168, 'SENTENTA, JOSELITO TEJEDO  ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0888'),
(169, 'SENTENTA, PAULINE CODERIAS ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0889'),
(170, 'SERNA, ALESSANDRA MALTU   ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0890'),
(171, 'SERO, MIKAELA VIDAL ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0891'),
(172, 'SEROMA, ANGIE RAMOS ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0892'),
(173, 'SERRANO, JILLIAN LAJO ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0893'),
(174, 'SERRANO, JOHNDEL ORDONIO  ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0894'),
(175, 'SERRANO, PRINCESS ELIZA MALBAS ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0895'),
(176, 'SETOZA, GRETEL MERIALES ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0896'),
(177, 'SIA, PHIA MENDOZA ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0897'),
(178, 'SIBUCAO, KYRIL MAUREI DELFIN ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0898'),
(179, 'SICAM, CHERYSHANE MANUEL ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0899'),
(180, 'SICAT, GIAN ALBERT TABUYO ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0900'),
(181, 'SIGANG, ARIELLE SALCEDO ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0901'),
(182, 'SILVA, ANGELIKA CADORNA ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0902'),
(183, 'SILVA, CRISTINA CATTIAN  ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0903'),
(184, 'SINAD, ALVIN JOHN IBARRA ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0904'),
(185, 'SINOGBUHAN, CRISTEL JOY SABADO  ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0905'),
(186, 'SINOTO, KATHLEEN BALA ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0906'),
(187, 'SOCAN, PETER OCAMPO ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0907'),
(188, 'SOLIMAN, GWYNARD OJEL  ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0908'),
(189, 'SOLIVEN, SHEERMAIN PATTAD ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0909'),
(190, 'SORIANO, ADICEL ZALUN  ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0910'),
(191, 'SUELEN, REDEN ALLAM ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0911'),
(192, 'SUSANO, ALLYZA JIMENEZ   ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0912'),
(193, 'TABALBAG, JOHN MICHAEL BARTOLOME ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0913'),
(194, 'TABISOLA, LOVELYN MARTINEZ ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0914'),
(195, 'TABLIGA, DANILO LAYUGAN ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0915'),
(196, 'TABOG, JOHN KENNETH LAZARO ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0916'),
(197, 'TABUNO, LEALEEN HERRERA ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0917'),
(198, 'TACOTACO, ANNIELE DIZON  ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0918'),
(199, 'TADEO, CHRISTINE MAE RAMOS ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0919'),
(200, 'TADEO, FRANZ ADRIAN BUGUINA ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0920'),
(201, 'TAGACA, SHARMAINE BATAN ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0921'),
(202, 'TAGTAG, QUEENCY PRINCESS DELA CRUZ  ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0922'),
(203, 'TAGUIMACON, MICCA JOY CRISTOBAL ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0923'),
(204, 'TAJON, CYRALE IRISH VALDEZ ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0924'),
(205, 'TAJON, FLORENCE VALENTON   ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0925'),
(206, 'TALAL, ALLIE SANCHEZ      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0926'),
(207, 'TALLEDO, JOAN BUNDAME  ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0927'),
(208, 'TALLEDO, JOY RAMOS  ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0928'),
(209, 'TALUGAN, REYSHALYN MAE VERGARA   ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0929'),
(210, 'TAMAYO, LAILA VALENCIA ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0930'),
(211, 'TAN, PRINCESS CLAIRE DUMENDENG ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0931'),
(212, 'TANDOC, SARAH JANE CADAVA ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0932'),
(213, 'TARUN, JENNY DELA CRUZ      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0933'),
(214, 'TAYDE, JILLIAN KAYE LAPE?A ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0934'),
(215, 'TEJO, WILSON VICARME ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0935'),
(216, 'TERRENAL, ROLAND CUBANGBANG ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0936'),
(217, 'TEXON, RIAN  ANGELA ESTELA ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0937'),
(218, 'THOMASON, PRINCESS MIKYLA JOSE ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0938'),
(219, 'TILIWIK, ERDRIAN JAMES CANAOAY    ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0939'),
(220, 'TOBIAS, JAMAICA VADA?A ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0940'),
(221, 'TOLENTINO, HAROLD PULIDO ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0941'),
(222, 'TOLENTINO, JESTONY DANGAO ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0942'),
(223, 'TOLENTINO, TRISHA MAE VIDAL   ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0943'),
(224, 'TOLOSA, GLORY ANN RAMOS      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0944'),
(225, 'TOMAS, JEFERSON MADRIAGA ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0945'),
(226, 'TORRE, CHERRY ANN REAL ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0946'),
(227, 'TRANSFIGURACION, ILYN DIZON  ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0947'),
(228, 'TRANSFIGURACION, JEFREY ASUNCION ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0948'),
(229, 'TRANSFIGURACION, REGINE VALDEZ    ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0949'),
(230, 'TRANSFIGURCION, REGINE VALDEZ       ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0950'),
(231, 'TUGARE, MARK ANGELO ABOBO  ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0951'),
(232, 'TUGGAY, DIANA MAE T      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0952'),
(233, 'TUGGAY, DIANA MAE TUGGAY ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0953'),
(234, 'TULAY, DAVID KARL GUERRERO      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0954'),
(235, 'TULIAO, CLARENCE DONGLAY ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0955'),
(236, 'TUMAMAO, KRISZIELLE MAE VALDEZ ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0956'),
(237, 'TUMOC, EZEKIEL MALINIS ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0957'),
(238, 'TUMOLVA, SHERILYN AGOR  ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0958'),
(239, 'TUNGPALAN, VERONICA MATIAS ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0959'),
(240, 'TUQUIERO, ROCHEL PASCUA      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0960'),
(241, 'UBASA, JOHN PAUL BENITEZ   ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0961'),
(242, 'UBASA, LEA MAE BENITEZ  ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0962'),
(243, 'UEHATA, HIDEYUKI LEAL      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0963'),
(244, 'UMALLA, JOSHUA DUCO ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0964'),
(245, 'UMIPIG, FEMILYN ESPIRITU ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0965'),
(246, 'UMIPIG, JENIE ROSE VALDEZ ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0966'),
(247, 'UMIPIG, MARIVELA PABRO ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0967'),
(248, 'URMATAN, CHRISTINE BELLO ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0968'),
(249, 'URMATAN, MARRY GRACE COLE ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0969'),
(250, 'URMATAN, VINCE CLARENCE  ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0970'),
(251, 'UY, SHEILLA MAE CAUITAN  ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0971'),
(252, 'VALDEZ, DIMPLE FAYE SAQUING      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0972'),
(253, 'VALDEZ, KRISTOFF IVAN FAJARDO', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0973'),
(254, 'VALDEZ, MARCH STEVEN DOMINGUEZ ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0974'),
(255, 'VALDEZ, ROANN DORUELO ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0975'),
(256, 'VALDEZ, TRIXIE DIZON ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0976'),
(257, 'VALITE, MARK AMBIEN GARMA   ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0977'),
(258, 'VALLEJO, MARIEL NIEVA   ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0978'),
(259, 'VALLO, MARY ANN ILLANA ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0979'),
(260, 'VELASCO, JENNY ROSE CARBONEL ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0980'),
(261, 'VENDIOLA, ALVHIN CALDERON ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0981'),
(262, 'VERCELES, SHEREJA MAE  ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0982'),
(263, 'VERDADERO, RHAJA ANTONIO ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0983'),
(264, 'VERDADERO, ROSE ANN RAMOA', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0984'),
(265, 'VERGARA, PAUL KHENLER TALLEDO ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0985'),
(266, 'VIDAL, ALEXIS DENVER BAGNES ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0986'),
(267, 'VIDAL, CRIZJAY BOLA?OS ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0987'),
(268, 'VIDANIA, JOSHUA OLEGENIO  ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0988'),
(269, 'VIDUYA, ABIGAIL PALITAYAN ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0989'),
(270, 'VIERNES, CHERRY BERGONIA   ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0990'),
(271, 'VIERNES, MARK RENNIER PADIOS', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0991'),
(272, 'VIERNES, MARK SYREL TANGCA ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0992'),
(273, 'VILLA, VANESA PINTUCAN ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0993'),
(274, 'VILLACENTINO, ANGELIE ACOBA ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0994'),
(275, 'VILLAFLORES, JEREMY LLOYD AGUINALDO ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0995'),
(276, 'VILLAMAYOR, MARY GRACE TERISHA DESPUIG ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0996'),
(277, 'VILLASOTES, RUSSEL DAZ  ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0997'),
(278, 'VILLASPIR, RONALYN CARINGIAN ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0998'),
(279, 'VILLEGAS, JANE AGUSTIN ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '0999'),
(280, 'VILORIA, CATHLEA LINTAO ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '1000'),
(281, 'VILORIA, MISHELLE ANNE DORONIO  ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '1001'),
(282, 'VILUAN, HANELYN REPATO ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '1002'),
(283, 'VI?ALON, PRINCESS JANNAH MAE AGTARAP ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '1003'),
(284, 'VI?AR, VINCENT MIKE SAGUN      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '1004'),
(285, 'VINOYA, REGINE ARENAJO ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '1005'),
(286, 'VISTA, JAY LORD EUGENIO', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '1006'),
(287, 'WAMERGA, JOSHUA LABAUSA ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '1007'),
(288, 'YABUT, JUSTIN JAY CASILAN      ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '1008'),
(289, 'YANOS, NEKAYLA ESPIRITU   ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '1009'),
(290, 'YSMAEL, IRISH MAE ULEP ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '1010'),
(291, 'ZIPAGAN, PRINCESS DANNIELLE DEGUZMAN ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '1011'),
(292, 'ZIPAGAN, RONALD CHRISTIAN BAUTISTA ', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '1012'),
(293, '', '', NULL, '', '', NULL, '', '', '', NULL, NULL, '', '', 'Male', '0000-00-00', NULL, '', '');

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
  MODIFY `session_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quizquestions`
--
ALTER TABLE `quizquestions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `student_applications`
--
ALTER TABLE `student_applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=294;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
