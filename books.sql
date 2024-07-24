-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2024 at 04:59 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `published_year` int(11) NOT NULL,
  `genre` varchar(100) NOT NULL,
  `available` tinyint(1) NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `published_year`, `genre`, `available`, `created_at`, `updated_at`) VALUES
(1, 'The Great Gatsby', 'F. Scott Fitzgerald', 1925, 'Novel', 1, 0, '2024-07-24'),
(2, 'To Kill a Mockingbird', 'Harper Lee', 1960, 'Fiction', 1, 0, '2024-07-24'),
(3, '1984', 'George Orwell', 1949, 'Dystopian', 1, 0, '2024-07-24'),
(4, 'Pride and Prejudice', 'Jane Austen', 1813, 'Romance', 0, 0, '2024-07-24'),
(5, 'The Catcher in the Rye', 'J.D. Salinger', 1951, 'Fiction', 1, 0, '2024-07-24'),
(6, 'Moby-Dick', 'Herman Melville', 1851, 'Adventure', 0, 0, '2024-07-24'),
(7, 'War and Peace', 'Leo Tolstoy', 1869, 'Historical', 1, 0, '2024-07-24'),
(8, 'The Great Gatsby', 'F.Scott Fitzgerald', 1925, 'Novel', 0, 2147483647, '2024-07-24'),
(9, 'The Great Gatsby', 'F.Scott Fitzgerald', 1926, 'Novel', 0, 2147483647, '2024-07-24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
