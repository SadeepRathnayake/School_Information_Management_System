-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2024 at 11:47 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sims`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_logins`
--

CREATE TABLE `admin_logins` (
  `Username` varchar(10) NOT NULL,
  `Password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_logins`
--

INSERT INTO `admin_logins` (`Username`, `Password`) VALUES
('admin', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `Class_ID` int(10) NOT NULL,
  `Class_Name` varchar(10) NOT NULL,
  `No_of_Students` int(5) NOT NULL,
  `Class_Room_No` varchar(5) NOT NULL,
  `Class_Medium` varchar(10) NOT NULL,
  `Class_Teacher` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`Class_ID`, `Class_Name`, `No_of_Students`, `Class_Room_No`, `Class_Medium`, `Class_Teacher`) VALUES
(1, '11A', 35, 'A102', 'Sinhala', 'Ms. Ramani'),
(2, '13E', 50, 'B302', 'English', 'Mr. Nimal'),
(3, '1B', 45, 'A202', 'Sinhala', 'Mr. Sunil'),
(4, '1C', 34, 'A203', 'English', 'Ms. Samanalee'),
(5, '10G', 38, 'C201', 'Tamil', 'Ms. Zahira'),
(6, '13B', 47, 'C302', 'Sinhala', 'Mr. Ariyarathne');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `Student_ID` int(10) NOT NULL,
  `First_Name` varchar(20) NOT NULL,
  `Last_Name` varchar(20) NOT NULL,
  `Date_of_Birth` date NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Contact_No` varchar(10) NOT NULL,
  `Class_Name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`Student_ID`, `First_Name`, `Last_Name`, `Date_of_Birth`, `Gender`, `Contact_No`, `Class_Name`) VALUES
(1, 'Sadeep', 'Rathnayake', '2002-07-26', 'Male', '0702044138', '13A'),
(2, 'Imaya', 'Samarakoon', '2002-11-05', 'Female', '0701483389', '13B'),
(3, 'Sasinda', 'Prabhath', '2001-12-24', 'Male', '0702913137', '11G'),
(4, 'Ayesha', 'Bandara', '2001-08-26', 'Female', '0712345432', '13G'),
(5, 'Namal', 'Wikesh', '2000-12-31', 'Male', '0112345678', '1A'),
(6, 'Deelaka', 'Samaraweera', '2003-10-01', 'Male', '0711234567', '13F');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `Subject_ID` int(10) NOT NULL,
  `Subject_Name` varchar(20) NOT NULL,
  `Subject_Description` varchar(100) NOT NULL,
  `Credit_Point` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`Subject_ID`, `Subject_Name`, `Subject_Description`, `Credit_Point`) VALUES
(1, 'Science', 'Theory, Practicals, Papers', '4'),
(2, 'English', 'Grammer, Theory, Papers', '4'),
(3, 'History', 'Theory, Papers', '3'),
(4, 'Mathematics', 'Theory, Papers', '4'),
(5, 'Sinhala', 'Grammer, Theory, Papers', '3'),
(6, 'Buddhism', 'Theory, Papers', '3');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `Teacher_ID` int(10) NOT NULL,
  `First_Name` varchar(20) NOT NULL,
  `Last_Name` varchar(20) NOT NULL,
  `Date_of_Birth` date NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Contact_No` varchar(14) NOT NULL,
  `Subject` varchar(20) NOT NULL,
  `Class_Name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`Teacher_ID`, `First_Name`, `Last_Name`, `Date_of_Birth`, `Gender`, `Contact_No`, `Subject`, `Class_Name`) VALUES
(1, 'Nimal', 'Athukorala', '1971-06-07', 'Male', '0713214323', 'English', '12E'),
(2, 'Ramani', 'Wimalarathne', '1969-10-15', 'Female', '0774352437', 'History', '12A'),
(3, 'Archana', 'Jayasooriya', '1985-03-04', 'Male', '0765647234', 'Mathematics', '12H'),
(4, 'Jayani', 'Samanalee', '1990-12-25', 'Female', '0713456789', 'Sinhala', '9E'),
(5, 'Kasuni', 'Rajapakshe', '1970-01-05', 'Female', '0776543212', 'Buddhism', '11A'),
(6, 'Sujith', 'Karunarathne', '1990-04-24', 'Male', '0776547219', 'Science', '12G');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`Class_ID`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`Student_ID`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`Subject_ID`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`Teacher_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `Class_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `Student_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `Subject_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `Teacher_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
