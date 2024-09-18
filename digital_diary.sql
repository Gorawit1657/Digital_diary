-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 20, 2023 at 03:22 PM
-- Server version: 5.7.24
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `digital_diary`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `diary_id` int(11) NOT NULL,
  `comment_date` date NOT NULL,
  `comment_content` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comment_id`, `diary_id`, `comment_date`, `comment_content`) VALUES
(1, 1, '2023-11-14', 'This is a comment'),
(2, 1, '2023-11-15', 'This is a second comment'),
(3, 1, '2023-11-19', 'This is a third comment'),
(4, 2, '2023-11-19', 'Hello'),
(5, 3, '2023-11-19', 'Hello'),
(6, 5, '2023-11-20', 'Hello');

-- --------------------------------------------------------

--
-- Table structure for table `diary`
--

CREATE TABLE `diary` (
  `diary_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `diary_title` varchar(30) NOT NULL,
  `diary_date` varchar(30) NOT NULL,
  `diary_content` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `diary`
--

INSERT INTO `diary` (`diary_id`, `user_id`, `diary_title`, `diary_date`, `diary_content`) VALUES
(1, 1, 'fas', '2023-11-28', 'asdfadads'),
(2, 1, 'dsfasd', '2023-11-02', 'vasd'),
(3, 1, 'This is a demo', '2023-11-08', 'Hello , my name is  james, i like to code, i love database lab, i am very happy.'),
(4, 3, 'asdf', '2023-10-31', 'asdfasdfsddfsasasdfdasfknadscm,nxskcnasdkjlchds'),
(5, 45, 'asfasd', '2023-10-31', 'kjadshflaksdj');

-- --------------------------------------------------------

--
-- Table structure for table `goal`
--

CREATE TABLE `goal` (
  `goal_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `goal_title` varchar(30) NOT NULL,
  `goal_description` varchar(30) NOT NULL,
  `goal_date` varchar(30) NOT NULL,
  `goal_start_time` varchar(30) NOT NULL,
  `goal_end_time` varchar(30) NOT NULL,
  `goal_complete` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `goal`
--

INSERT INTO `goal` (`goal_id`, `user_id`, `goal_title`, `goal_description`, `goal_date`, `goal_start_time`, `goal_end_time`, `goal_complete`) VALUES
(5, 1, 'T', 'dfwsafdw', '2023-11-24', '14:06', '19:05', 1),
(6, 1, 'adsfas', 'fasdds', '2023-11-08', '14:20', '20:22', 0);

-- --------------------------------------------------------

--
-- Table structure for table `log_in`
--

CREATE TABLE `log_in` (
  `user_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `log_in`
--

INSERT INTO `log_in` (`user_id`, `username`, `password`, `email`) VALUES
(1, 'sophie.p', '123', 'sophie.p@gmail.com'),
(2, 'MichaelRamirez', '456', 'MichaelRamirez@gmail.com'),
(3, 'Emma Johnson', '999', 'Emma@gmail.com'),
(40, 'gsdfgds', 'asfsa', ''),
(42, 'fds', 'asdfg', 'saf'),
(45, 'DD', 'DD', 'DD'),
(46, 'Demo', 'ZmtVSlBIYUtXRTUvRENRSlRiMkJYQT09OjpnJw4ctejFi3rc9LCz7ZkN', '@gmail'),
(47, '123', 'LzQwNW5iMG5tYThDVVlGMWZIWDlJUT09OjoNMcV8wFIx3mQYXnUBcJFp', ''),
(48, 'DemoAccount', 'VUVzOTROR2F2d2RpcUlKZDJJTlhaZz09OjohiVGaI+JBpiNr7Q18kHzI', ''),
(49, 'asdf', 'TmRHUVB0SnJiN25ENmY2S3U5R25aQT09OjqrsLuy+CngxsGa7kwpgejq', ''),
(50, 'ddddddd', 'OFNUZDNqM0MwaHdxUzdQeERCdVEwUT09OjqgX37hJedEMwPmr7U6vwUr', ''),
(51, 'AnotherDemo', 'MHVGR3pvaklZY2h1NGI2TDlUNVhzdz09Ojre4btb4ulpoCUYQqxilfdd', 'das'),
(52, 'newdemo', '$2y$10$hATxJZsx7iXzrAQl8rQwq../Nihx89fYiML418u0wgzgec0jUnSge', 'newdemo');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `f_name` varchar(30) NOT NULL,
  `l_name` varchar(30) NOT NULL,
  `font` varchar(30) NOT NULL,
  `theme` varchar(30) NOT NULL,
  `pad_style` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `f_name`, `l_name`, `font`, `theme`, `pad_style`) VALUES
(1, 'Sophie', 'Patel', '1', '2', '3'),
(2, 'Michael', 'Ramirez', '3', '2', '1'),
(3, 'Emma', 'Johnson', '1', '3', '2'),
(45, 'DD', 'DD', '3', '2', '2'),
(51, 'asd', 'asd', '1', '1', '1'),
(52, 'newdemo', 'newdemo', '1', '1', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `diary_id` (`diary_id`);

--
-- Indexes for table `diary`
--
ALTER TABLE `diary`
  ADD PRIMARY KEY (`diary_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `goal`
--
ALTER TABLE `goal`
  ADD PRIMARY KEY (`goal_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `log_in`
--
ALTER TABLE `log_in`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `diary`
--
ALTER TABLE `diary`
  MODIFY `diary_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `goal`
--
ALTER TABLE `goal`
  MODIFY `goal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `log_in`
--
ALTER TABLE `log_in`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`diary_id`) REFERENCES `diary` (`diary_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `diary`
--
ALTER TABLE `diary`
  ADD CONSTRAINT `diary_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `log_in` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `goal`
--
ALTER TABLE `goal`
  ADD CONSTRAINT `goal_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `log_in` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `log_in` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
