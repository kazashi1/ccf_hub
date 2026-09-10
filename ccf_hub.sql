-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2025 at 08:28 AM
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
-- Database: `ccf_hub`
--

-- --------------------------------------------------------

--
-- Table structure for table `present_students`
--

CREATE TABLE `present_students` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `in_time` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `present_students`
--

INSERT INTO `present_students` (`id`, `student_id`, `in_time`) VALUES
(2, 24, '2025-09-23 06:22:54'),
(3, 23, '2025-09-23 06:23:11');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `year_level` enum('1st Year','2nd Year','3rd Year','4th Year') NOT NULL,
  `course` enum('BS Accountancy','BS Information Tech','BS Education','BS Business Ad','BS Entrepreneurship') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `firstname`, `lastname`, `year_level`, `course`) VALUES
(3, 'Shyra Adrielle', 'Salamida', '3rd Year', 'BS Accountancy'),
(4, 'Marjorie', 'Guarino', '3rd Year', 'BS Accountancy'),
(5, 'Richmond', 'Manaog', '3rd Year', 'BS Accountancy'),
(6, 'Clyde', 'Garcia', '3rd Year', 'BS Accountancy'),
(7, 'Chollo', 'Valerozo', '1st Year', 'BS Accountancy'),
(8, 'Ronnie', 'Villar', '1st Year', 'BS Accountancy'),
(9, 'John Christopher', 'Dela Cruz', '1st Year', 'BS Accountancy'),
(10, 'Craig yuan', 'Herrera', '1st Year', 'BS Accountancy'),
(11, 'Zedric', 'Consulta', '1st Year', 'BS Accountancy'),
(12, 'Regine', 'Bargatin', '1st Year', 'BS Accountancy'),
(13, 'Jaine', 'Pataroque', '1st Year', 'BS Accountancy'),
(14, 'Daniel', 'Damos', '1st Year', 'BS Accountancy'),
(15, 'Lilibeth', 'Oledan', '1st Year', 'BS Accountancy'),
(16, 'Jadeverick', 'Lova', '1st Year', 'BS Accountancy'),
(17, 'Andrea Mae', 'Albretch', '1st Year', 'BS Accountancy'),
(18, 'Winnimel', 'Palermo', '1st Year', 'BS Accountancy'),
(19, 'Hennessy', 'Basuan', '1st Year', 'BS Accountancy'),
(20, 'Marian', 'Perez', '1st Year', 'BS Accountancy'),
(21, 'Maria Elena', 'Pilapil', '1st Year', 'BS Education'),
(22, 'Jhamailah', 'Estabello', '1st Year', 'BS Education'),
(23, 'Patrick Ivan', 'Carasig', '2nd Year', 'BS Information Tech'),
(24, 'John Castro', 'Castro', '2nd Year', 'BS Information Tech'),
(25, 'Mickyla Joyce', 'Pre', '1st Year', 'BS Education'),
(26, 'Leomilla', 'Garcia', '1st Year', 'BS Education'),
(27, 'Asheley', 'Trinidad', '1st Year', 'BS Education'),
(28, 'Jullaine', 'Escultura', '1st Year', 'BS Education'),
(29, 'Angelica', 'Anobling', '1st Year', 'BS Education'),
(30, 'Ma. Elizabeth', 'Raymundo', '1st Year', 'BS Education'),
(31, 'Michelle', 'Pabillo', '1st Year', 'BS Education'),
(33, 'Eric', 'Valeriano', '1st Year', 'BS Education'),
(34, 'Jessieca', 'Conde', '1st Year', 'BS Education'),
(35, 'Darwin', 'Nebres', '1st Year', 'BS Education'),
(36, 'Rhylie Jay', 'Alfamte', '1st Year', 'BS Education'),
(37, 'Jeneca', 'Lopez', '1st Year', 'BS Business Ad'),
(38, 'Pat', 'Diono', '3rd Year', 'BS Business Ad'),
(39, 'Mary Princess', 'Janohan', '3rd Year', 'BS Business Ad'),
(40, 'Stephanie', 'Galot', '3rd Year', 'BS Business Ad'),
(41, 'Paul Dever', 'Ramos', '2nd Year', 'BS Information Tech'),
(42, 'Angel', 'Benitez', '2nd Year', 'BS Information Tech'),
(43, 'Ryan Yael', 'Bojos', '1st Year', 'BS Information Tech'),
(44, 'Karla Mae', 'Juan', '2nd Year', 'BS Information Tech'),
(45, 'Kate Shannon', 'Labiano', '2nd Year', 'BS Information Tech'),
(46, 'Carlos Jori', 'Ferrer', '3rd Year', 'BS Business Ad'),
(47, 'Rhodora', 'Selorio', '3rd Year', 'BS Business Ad'),
(48, 'Edmon', 'Tenorio', '3rd Year', 'BS Business Ad'),
(49, 'Ma. Nica', 'Ortega', '3rd Year', 'BS Business Ad'),
(50, 'Ryan Chester', 'Magleo', '1st Year', 'BS Information Tech'),
(51, 'Michelle', 'Falible', '1st Year', 'BS Information Tech'),
(52, 'Joannah Nicole', 'Siervo', '1st Year', 'BS Information Tech'),
(53, 'Kimberly', 'Bajet', '1st Year', 'BS Information Tech'),
(54, 'Melco', 'Bermudez', '1st Year', 'BS Information Tech'),
(55, 'Eurie', 'Cordiz', '1st Year', 'BS Information Tech'),
(56, 'John Mark', 'Trigo', '1st Year', 'BS Entrepreneurship'),
(57, 'Genesis Grace Joy', 'De Guia', '1st Year', 'BS Business Ad'),
(59, 'Jade Zyrhelle', 'Susi', '3rd Year', 'BS Information Tech'),
(60, 'Jojit Rhey', 'Iray', '3rd Year', 'BS Information Tech'),
(61, 'Oliver', 'Dulatre', '3rd Year', 'BS Information Tech'),
(62, 'Ramil Jr.', 'Mercado', '3rd Year', 'BS Information Tech'),
(63, 'Ronaldo', 'Nuñez', '1st Year', 'BS Information Tech'),
(64, 'Nelmar', 'Dizon', '1st Year', 'BS Information Tech'),
(65, 'Reymart', 'Jumadiao', '1st Year', 'BS Information Tech'),
(66, 'Joshua', 'Cagear', '1st Year', 'BS Information Tech'),
(67, 'Jhon Miguel', 'Nero', '1st Year', 'BS Information Tech'),
(68, 'Ashlee', 'Peralta', '1st Year', 'BS Business Ad'),
(69, 'Shane', 'Sayco', '1st Year', 'BS Business Ad'),
(70, 'Anna marrie', 'Solomon', '1st Year', 'BS Business Ad'),
(71, 'Ehrell Dane', 'Alfonso', '1st Year', 'BS Business Ad'),
(72, 'Lorraine Joy', 'Flor', '1st Year', 'BS Business Ad'),
(73, 'Cyrel', 'Cardiente', '1st Year', 'BS Business Ad'),
(74, 'Hajiemie', 'Benday', '1st Year', 'BS Business Ad'),
(75, 'Aisa', 'Doon', '1st Year', 'BS Business Ad'),
(76, 'Allexha', 'Gache', '1st Year', 'BS Business Ad'),
(77, 'Allexha', 'Gache', '1st Year', 'BS Business Ad'),
(78, 'Angeline', 'Ramos', '1st Year', 'BS Business Ad'),
(80, 'Kenneth', 'Montana', '1st Year', 'BS Business Ad'),
(81, 'Piona', 'Mula', '1st Year', 'BS Business Ad'),
(82, 'Edmarie', 'Siega', '1st Year', 'BS Business Ad'),
(83, 'Benny', 'Boniol', '1st Year', 'BS Business Ad'),
(84, 'Justine Nicole', 'Lining', '1st Year', 'BS Business Ad'),
(85, 'Janel', 'Etoc', '1st Year', 'BS Business Ad'),
(86, 'Gerlyn', 'Buendia', '1st Year', 'BS Business Ad'),
(87, 'Cynthia', 'Mondragon', '1st Year', 'BS Business Ad'),
(88, 'Cynthia', 'Mondragon', '1st Year', 'BS Business Ad'),
(89, 'Mark Kian', 'Apostol', '1st Year', 'BS Business Ad'),
(90, 'John Arian', 'Del Rosario', '1st Year', 'BS Business Ad'),
(91, 'Junie Azhley', 'Samelo', '1st Year', 'BS Business Ad'),
(92, 'Junie Azhley', 'Samelo', '1st Year', 'BS Business Ad'),
(93, 'Princess', 'Zoilo', '1st Year', 'BS Education'),
(94, 'Angelica', 'Garcia', '1st Year', 'BS Education'),
(95, 'Gospel', 'San Antonio', '1st Year', 'BS Education'),
(96, 'Jocelyn', 'Adrid', '1st Year', 'BS Education'),
(97, 'Rona Mae', 'Nicor', '1st Year', 'BS Education'),
(98, 'Angelo', 'Villarmor', '1st Year', 'BS Information Tech'),
(99, 'Cedrick Raevin', 'Serrado', '1st Year', 'BS Information Tech'),
(100, 'John Rick Ivan', 'Jubilo', '1st Year', 'BS Information Tech'),
(101, 'David Bentley', 'Sulayao', '1st Year', 'BS Information Tech'),
(102, 'Mark Angelo', 'Ani', '1st Year', 'BS Information Tech'),
(103, 'Romar', 'Bernabe', '2nd Year', 'BS Information Tech'),
(104, 'Rheymond', 'Sanchez', '2nd Year', 'BS Information Tech'),
(105, 'King Freidrich', 'Barcelona', '2nd Year', 'BS Information Tech'),
(107, 'Mulberry', 'Acedera', '2nd Year', 'BS Education'),
(108, 'Jonalyn', 'Ramos', '2nd Year', 'BS Education'),
(109, 'Jonalyn', 'Ramos', '2nd Year', 'BS Education'),
(110, 'Jienalyn', 'Tamayo', '2nd Year', 'BS Education'),
(111, 'Jerald', 'Cresencio', '2nd Year', 'BS Information Tech'),
(112, 'Renz Pio', 'Valenzuela', '2nd Year', 'BS Information Tech'),
(113, 'Bernard Joseph', 'Sagon', '2nd Year', 'BS Information Tech'),
(115, 'Mark Joseph', 'Soriano', '2nd Year', 'BS Information Tech'),
(116, 'Dominic', 'Dulatre', '2nd Year', 'BS Information Tech'),
(117, 'Jolem Anthony', 'Valencia', '2nd Year', 'BS Information Tech'),
(118, 'Cassandra', 'Gamao', '1st Year', 'BS Education'),
(119, 'Ariane Lou', 'Abrenica', '1st Year', 'BS Education'),
(120, 'Angeline', 'Ganancias', '1st Year', 'BS Education'),
(121, 'Glydel', 'Francisco', '1st Year', 'BS Education'),
(122, 'Meshack James', 'Paras', '3rd Year', 'BS Information Tech'),
(123, 'Meshack James', 'Paras', '3rd Year', 'BS Information Tech'),
(124, 'Nathaniel Aron', 'Ababat', '3rd Year', 'BS Information Tech'),
(125, 'Victorino', 'Vargas', '3rd Year', 'BS Information Tech'),
(126, 'Keith Ashley', 'Relos', '1st Year', 'BS Education'),
(127, 'Jennyrose', 'Panzo', '1st Year', 'BS Education'),
(128, 'Mary Rose', 'Roque', '1st Year', 'BS Education'),
(129, 'Jenny', 'Lopez', '1st Year', 'BS Education'),
(130, 'Clarence', 'Dacallos', '1st Year', 'BS Information Tech'),
(131, 'Rein Justine', 'Montebon', '1st Year', 'BS Information Tech'),
(132, 'Carl Lawrence', 'Maceda', '1st Year', 'BS Information Tech'),
(133, 'John Lloyd', 'Miray', '1st Year', 'BS Information Tech'),
(134, 'John Lloyd', 'Miray', '1st Year', 'BS Information Tech'),
(135, 'John Rhagie', 'Deita', '1st Year', 'BS Information Tech'),
(136, 'John Rhagie', 'Deita', '1st Year', 'BS Information Tech'),
(137, 'Maria Lita', 'Morales', '1st Year', 'BS Education'),
(138, 'Jonalyn', 'Orsal', '1st Year', 'BS Education'),
(139, 'Alexa Jade', 'Pascua', '1st Year', 'BS Education'),
(140, 'Alexa Jade', 'Pascua', '1st Year', 'BS Education');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `present_students`
--
ALTER TABLE `present_students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `present_students`
--
ALTER TABLE `present_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `present_students`
--
ALTER TABLE `present_students`
  ADD CONSTRAINT `present_students_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
