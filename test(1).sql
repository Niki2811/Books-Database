-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2024 at 08:35 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `birthdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`author_id`, `name`, `nationality`, `birthdate`) VALUES
(1, 'Blanka Lipinska', 'Polish', '1985-07-22'),
(2, 'Ilsa Madden-Mills', 'American', '1968-06-05'),
(3, 'E. L. James', 'American', '1963-03-07'),
(4, ' Sierra Simone', 'American', '1995-06-01'),
(5, 'William Peter Blatty', 'American', '1928-01-07'),
(6, 'Jane Doe', 'USA', '1980-05-15');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(150) NOT NULL,
  `genre` varchar(50) DEFAULT NULL,
  `publication_year` int(11) DEFAULT NULL,
  `author_id` bigint(11) UNSIGNED DEFAULT NULL,
  `publisher_id` bigint(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `title`, `genre`, `publication_year`, `author_id`, `publisher_id`) VALUES
(1, '365 Days', 'Romance novel, Fiction, Erotic literature', 2018, 1, 1),
(2, 'Dear Eva', 'Love-Romance', 2022, 2, 2),
(3, '50 Shades Of Gray', 'Erotic Drama', 2011, 3, 3),
(4, 'Priest', 'Love Romance', 2015, 4, 4),
(5, 'The Exorcist', 'Horror', 1971, 5, 5),
(6, 'A Journey to the Stars', 'Science Fiction', 2024, 6, 6);

-- --------------------------------------------------------

--
-- Table structure for table `publishers`
--

CREATE TABLE `publishers` (
  `publisher_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `contact_number` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `publishers`
--

INSERT INTO `publishers` (`publisher_id`, `name`, `address`, `contact_number`) VALUES
(1, 'Simon & Schuster', '1230 Avenue of the Americas, New York, NY, 10020-1513, USA', '212-698-7000'),
(2, 'Montlake', '123 New Address, Cityville', '1-888-280-4331'),
(3, 'Vintage Books', 'Penguin Random House\r\n1745 Broadway, New York, NY 10019, USA', '+1 (212) 782-90'),
(4, 'Sourcebooks', '1935 Brookdale Road, Suite 139, Naperville, IL 60563, USA', '(630) 961-3900'),
(5, 'Harper & Row', '195 Broadway\r\nNew York, NY 10007\r\nUSA', '+1 (212) 207-70'),
(6, 'Galaxy Publishers', '123 Star Lane, Space City', '+123456789');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` bigint(20) UNSIGNED NOT NULL,
  `book_id` bigint(11) UNSIGNED DEFAULT NULL,
  `review_text` text DEFAULT NULL,
  `rating` int(11) DEFAULT NULL
) ;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`review_id`, `book_id`, `review_text`, `rating`, `review_date`) VALUES
(1, 1, 'This novel by Blanka Lipińska is known for its controversial plot featuring an abduction-turned-love story between Laura, a young Polish woman, and Massimo, a Sicilian mafia boss. Many readers find the depiction of the book of power dynamics and obsession unsettling yet captivating. While the romance is steamy, the relationship’s dark undertones make it polarizing, often described as both dramatic and disturbing. Some critics note that the storyline is disjointed, likely due to translation from Polish', 3, '2020-12-25'),
(2, 2, 'This book by Ilsa Madden-Mills is a heartfelt romance that tackles heavy themes, including trauma and bullying. Readers appreciate the emotional depth and resilience of the main character, Ava. The novel is praised for its balance of a high school romance with healing, self-discovery, and forgiveness. However, some readers feel that certain plot elements could be better developed', 4, '2011-02-14'),
(4, 4, '\"Priest\" is a romance with religious undertones that has drawn both fans and critics. The protagonist, Father Bell, struggles with his faith and forbidden desires. Many readers praise the intensity of the writing and exploration of taboos, but others find the premise provocative or controversial. This book pushes boundaries, mixing religion with eroticism, which makes it a unique, though divisive, read', 4, '2022-12-20'),
(5, 5, 'This horror novel is renowned for its psychological depth and terrifying portrayal of demonic possession. Inspired by a real exorcism case, the story delves into themes of faith, innocence, and evil, centering on a young girl possessed by a demon. Many readers and critics regard it as a masterpiece of horror for its ability to frighten while probing profound questions of good versus evil. Its dark, intense narrative has left a lasting impact on horror literature', 4, '2023-09-26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`author_id`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `author_id_2` (`author_id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `author_id` (`author_id`),
  ADD KEY `publisher_id` (`publisher_id`);

--
-- Indexes for table `publishers`
--
ALTER TABLE `publishers`
  ADD PRIMARY KEY (`publisher_id`),
  ADD KEY `publisher_id` (`publisher_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `author_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `publishers`
--
ALTER TABLE `publishers`
  MODIFY `publisher_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`author_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `books_ibfk_2` FOREIGN KEY (`publisher_id`) REFERENCES `publishers` (`publisher_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
