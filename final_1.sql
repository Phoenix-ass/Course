-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 30, 2024 at 11:10 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `Exp` text NOT NULL,
  `description` text NOT NULL,
  `description1` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `page_link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `title`, `Exp`, `description`, `description1`, `image`, `page_link`) VALUES
(1, 'Data Science', ' * 2 years including on-the-job training/internship.', ' * Data science is a multidisciplinary field that uses statistical and computational methods to extract insights and knowledge from data.', ' * Knowledge from various fields such as statistics, computer science, mathematics, and domain expertise.', 'data science.jpeg', 'science.html'),
(2, 'Data Analyst', ' * 2 years including on-the-job training/internship.', ' * Our Data Analyst with Python career track covers everything you need to know about the process and will teach you how to analyze data from scratch.', ' * Technical skills form the backbone of a data analyst\'s expertise.', 'DA.png', 'analyst.html'),
(3, 'Java', ' * 2 years including on-the-job training/internship.', ' * The intention of using this language is to give relief to the developers from writing codes for every platform. The term WORA, write once and run everywhere, is often associated with this language.', ' * Java is an object-oriented, class-based programming language.', 'javaT.PNG', 'java.html'),
(4, 'Web Development', ' * 2 years including on-the-job training/internship.', ' * Creating, building, and maintaining websites. It includes aspects such as web design, web publishing, web programming, and database management.', ' * Web development focuses on creating user-friendly interfaces and robust backend systems.', 'Web-Development.jpg', 'Web.html'),
(5, 'UI/UX Design', ' * 2 years including on-the-job training/internship.', ' * UI refers to the screens and other visual elements you interact with when using a website, app, or other electronic device.', ' * UX refers to the entire interaction you have with a product, including how you feel about the interaction.', 'ui-ux.jpeg', 'ui design.html'),
(6, 'Software Testing', ' * 2 years including on-the-job training/internship.', ' * Software Testing is a method to assess the functionality of the software program.', ' * The process checks whether the actual software matches the expected requirements and ensures the software is bug-free.', 'testing.png', 'Testing.html');

-- --------------------------------------------------------

--
-- Table structure for table `instructors`
--

CREATE TABLE `instructors` (
  `id` int(11) NOT NULL,
  `names` varchar(255) DEFAULT NULL,
  `pictures` varchar(255) DEFAULT NULL,
  `expertise` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instructors`
--

INSERT INTO `instructors` (`id`, `names`, `pictures`, `expertise`) VALUES
(1, 'John Doe', 'hero-banner-2.jpg', 'Data Science Expert'),
(2, 'Jane Smith', 'hero-banner-2.jpg', 'Web Development Specialist'),
(3, 'Mike Johnson', 'hero-banner-2.jpg', 'AI and Machine Learning Guru');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `content` text NOT NULL,
  `content2` text NOT NULL,
  `author` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `content`, `content2`, `author`) VALUES
(1, 'This platform has been amazing for my learning journey.', 'I have gained so much knowledge in web development.', 'John Doe'),
(2, 'The instructors are highly experienced and helpful.', 'Their teaching methods are interactive and engaging.', 'Jane Smith'),
(3, 'I highly recommend this platform to anyone looking to upskill.', 'The courses are well-structured and easy to follow.', 'Mike Johnson');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instructors`
--
ALTER TABLE `instructors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `instructors`
--
ALTER TABLE `instructors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
