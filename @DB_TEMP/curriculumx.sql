-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 01, 2025 at 08:29 AM
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
-- Database: `curriculumx`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `full_name`, `email`, `username`, `password`) VALUES
(56125, 'System Admin', 'admin@edupulse.com', 'admin', '$2y$10$pZBCcBKYObRYXfxAchPPe.qgNQvgs3g0vJXD.dOeqvSS72lJeyQIm');

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `announcement`
--

INSERT INTO `announcement` (`id`, `fname`, `file_path`, `uploaded_at`) VALUES
(1, 'Semester Wise CSE (Tabular form)-new.pdf', 'announcements/2_Semester Wise CSE (Tabular form)-new.pdf', '2024-12-24 15:46:48'),
(2, 'Untitled document.pdf', 'announcements/1_Untitled document.pdf', '2024-12-24 16:03:19'),
(3, '3_-_Lecture_3__Chapter4_.pdf', 'announcements/3_-_Lecture_3__Chapter4_.pdf', '2024-12-24 16:05:52'),
(4, '4_-_Lecture_4__Chapter5_.pdf', 'announcements/4_-_Lecture_4__Chapter5_.pdf', '2024-12-24 16:06:33');

-- --------------------------------------------------------

--
-- Table structure for table `certificate`
--

CREATE TABLE `certificate` (
  `certificate_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `issue_date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `certificate`
--

INSERT INTO `certificate` (`certificate_id`, `course_id`, `student_id`, `issue_date`) VALUES
(134536, 1, 1, '2024-02-03'),
(134537, 19, 1, '2024-02-03'),
(134538, 19, 2, '2024-02-03');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `title` varchar(1023) NOT NULL,
  `description` varchar(1023) NOT NULL,
  `instructor_id` int(11) NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp(),
  `status` enum('Public','Private') NOT NULL DEFAULT 'Public',
  `cover` varchar(255) NOT NULL DEFAULT 'default_course.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `title`, `description`, `instructor_id`, `created_at`, `status`, `cover`) VALUES
(1, 'Data Science Tutorial\n', 'Data Science is about data gathering, analysis and decision-making.\n\nData Science is about finding patterns in data, through analysis, and make future predictions.\n\nBy using Data Science, companies are able to make:\n\nBetter decisions (should we choose A or B)\nPredictive analysis (what will happen next?)\nPattern discoveries (find pattern, or maybe hidden information in the data)', 1, '2024-01-15', 'Public', 'default_course.jpg'),
(3, 'Introduction to Computer Science', 'This course covers the fundamental concepts of computer science. Students will learn about algorithms, data structures, software engineering, and computer architecture. Additionally, they will gain practical programming skills in languages such as Python and Java. Emphasis will be placed on problem-solving and critical thinking, providing a strong foundation for further studies in computer science and related fields. By the end of this course, students will be equipped with the essential knowledge and skills required to tackle more advanced topics and real-world challenges in computing.', 1, '2024-01-15', 'Public', 'intro_cs.jpg'),
(7, 'Advanced Mathematics', 'Delve into advanced mathematical concepts, including calculus, linear algebra, and differential equations. This course is designed to provide a deep understanding of mathematical theories and their applications in real-world scenarios. Students will explore topics such as multivariable calculus, eigenvalues, eigenvectors, and systems of linear equations. Ideal for those pursuing engineering, physics, or higher studies in mathematics, this course will enhance problem-solving abilities and analytical thinking. Through rigorous exercises and practical examples, students will develop a comprehensive understanding of advanced mathematical principles.', 2, '2024-02-01', 'Private', 'advanced_math.jpg'),
(8, 'Introduction to Philosophy', 'A comprehensive introduction to the major themes and concepts in philosophy. This course explores the works of great philosophers, ethical theories, metaphysics, and epistemology. Students will engage in critical thinking and discussions, enhancing their understanding of philosophical questions and ideas. Topics include the nature of reality, the existence of God, free will, and the foundation of morality. Through reading and analysis of philosophical texts, students will develop their reasoning and argumentation skills, preparing them for further philosophical inquiry or related fields.', 2, '2024-05-20', 'Public', 'intro_philosophy.jpg'),
(13, 'Creative Writing', 'Explore the art of creative writing through various genres such as fiction, poetry, and non-fiction. This course encourages students to develop their unique voice and style while providing techniques and exercises to enhance their writing skills. Students will engage in workshops, peer reviews, and discussions to refine their craft. Topics include character development, plot structure, and literary devices. Perfect for aspiring authors and writers, this course will help students to express their creativity and effectively convey their ideas through the written word.', 3, '2024-03-10', 'Private', 'creative_writing.jpg'),
(19, 'PHP', 'PHP is a server scripting language, and a powerful tool for making dynamic and interactive Web pages.\n\nPHP is a widely-used, free, and efficient alternative to competitors such as Microsoft\'s ASP. PHP is an amazing and popular language!\n\nIt is powerful enough to be at the core of the biggest blogging system on the web (WordPress)!\nIt is deep enough to run large social networks!\nIt is also easy enough to be a beginner\'s first server side language!', 1, '2024-02-03', 'Public', 'COVER-65be586036a403.96711861.jpg'),
(22, 'Digital Marketing', 'Learn the strategies and tools needed to succeed in digital marketing. This course covers essential topics such as search engine optimization (SEO), social media marketing, content marketing, and email marketing. Students will gain hands-on experience with real-world projects and case studies. The course also explores data analytics, pay-per-click advertising, and the latest trends in digital marketing. By the end of the course, students will have a solid understanding of how to create and execute effective digital marketing campaigns to reach and engage their target audience.', 1, '2024-04-05', 'Public', 'digital_marketing.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `coursesmaterial`
--

CREATE TABLE `coursesmaterial` (
  `material_id` int(11) NOT NULL,
  `URL` varchar(1023) NOT NULL,
  `type` varchar(127) NOT NULL,
  `instructor_id` int(11) NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coursesmaterial`
--

INSERT INTO `coursesmaterial` (`material_id`, `URL`, `type`, `instructor_id`, `created_at`) VALUES
(1, '../Upload/CoursesMaterials/Material-Picture65bd601d923bd5.70209892.png', 'Picture', 1, '2024-02-01'),
(2, '../Upload/CoursesMaterials/Picture/Material-Picture65bd6982a056f9.83452659.png', 'Picture', 1, '2024-02-03'),
(3, '../Upload/CoursesMaterials/Video/Material-Video65bd699c3c8795.08098210.mp4', 'Video', 1, '2024-02-03'),
(4, '../Upload/CoursesMaterials/DOCS/Material-DOCS65bd6a0dc132d2.01910569.docx', 'DOCS', 1, '2024-02-03'),
(5, '../Upload/CoursesMaterials/DOCS/Material-DOCS65bd6aafa862d2.47497421.docx', 'DOCS', 1, '2024-02-03'),
(6, '../Upload/CoursesMaterials/DOCS/Material-DOCS65bd6aba7ac1d9.77990583.pptx', 'DOCS', 1, '2024-02-03'),
(7, '../Upload/CoursesMaterials/Picture/Material-Picture65be7c1f7faa63.87703640.png', 'Picture', 1, '2024-02-03'),
(8, '../Upload/CoursesMaterials/PDF/Material-PDF6769148fd345c5.20572158.pdf', 'PDF', 2, '2024-12-23');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `department_name`) VALUES
(1, 'CSE'),
(2, 'BBA'),
(3, 'EEE');

-- --------------------------------------------------------

--
-- Table structure for table `enrolled_student`
--

CREATE TABLE `enrolled_student` (
  `enrolled_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `enrolled_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `enrolled_student`
--

INSERT INTO `enrolled_student` (`enrolled_id`, `course_id`, `student_id`, `enrolled_at`) VALUES
(10, 1, 1, '2024-02-03'),
(11, 19, 1, '2024-02-03'),
(12, 19, 2, '2024-02-03'),
(13, 7, 1, '2024-12-26');

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE `instructor` (
  `instructor_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(1023) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `date_of_joined` date NOT NULL,
  `status` enum('Active','Not Active') NOT NULL DEFAULT 'Active',
  `profile_img` varchar(255) NOT NULL DEFAULT 'default.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `instructor`
--

INSERT INTO `instructor` (`instructor_id`, `username`, `password`, `first_name`, `last_name`, `email`, `date_of_birth`, `date_of_joined`, `status`, `profile_img`) VALUES
(1, 'anika002', '$2y$10$pZBCcBKYObRYXfxAchPPe.qgNQvgs3g0vJXD.dOeqvSS72lJeyQIm', 'Anika', 'Tahsin', 'anikatahsin@bracu.ac.bd', '1998-07-05', '2024-01-15', 'Not Active', 'Anika.jpg'),
(2, 'arafat001', '$2y$10$pZBCcBKYObRYXfxAchPPe.qgNQvgs3g0vJXD.dOeqvSS72lJeyQIm', 'Arafat', 'Biswas', 'arafat.haque.biswas@g.bracu.ac.bd', '2014-01-01', '2022-07-12', 'Not Active', 'Arafat.jpg'),
(3, 'badhon003', '$2y$10$pZBCcBKYObRYXfxAchPPe.qgNQvgs3g0vJXD.dOeqvSS72lJeyQIm', 'Badhon', 'Nandi', 'badhon@bracu.com', '2024-01-19', '0000-00-00', 'Not Active', 'badhon003676c167feb1053.88824413.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(1023) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `date_of_joined` date NOT NULL DEFAULT current_timestamp(),
  `status` enum('Active','Not Active') NOT NULL DEFAULT 'Active',
  `profile_img` varchar(255) NOT NULL DEFAULT 'default.jpg',
  `department_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `username`, `password`, `first_name`, `last_name`, `email`, `date_of_birth`, `date_of_joined`, `status`, `profile_img`, `department_id`) VALUES
(1, 'johnc', '$2y$10$pZBCcBKYObRYXfxAchPPe.qgNQvgs3g0vJXD.dOeqvSS72lJeyQIm', 'John', 'Chena', 'johnChena.wwe@gmail.com', '2000-05-06', '2024-01-14', 'Active', 'johnc.jpg', 3),
(2, 'sunny', '$2y$10$Zye7SP.JPXk6y9TVrwgmuOzUiTRwsvjHhsvPVwsleDUgJS8EjfOCe', 'Sunny', 'Deol', 'sunny@gmail.com', '1998-05-12', '2024-01-14', 'Active', 'chillGirl.jpg', 1),
(101, 'arif23', '$2y$10$pZBCcBKYObRYXfxAchPPe.qgNQvgs3g0vJXD.dOeqvSS72lJeyQIm', 'Arif', 'Hossain', 'arif.hossain@example.com', '2000-01-15', '2024-01-15', 'Active', 'default.jpg', 1),
(102, 'naimur45', '$2y$10$pZBCcBKYObRYXfxAchPPe.qgNQvgs3g0vJXD.dOeqvSS72lJeyQIm', 'Naimur', 'Rahman', 'naimur.rahman@example.com', '1999-04-20', '2024-02-01', 'Active', 'default.jpg', 1),
(103, 'kamal67', '$2y$10$pZBCcBKYObRYXfxAchPPe.qgNQvgs3g0vJXD.dOeqvSS72lJeyQIm', 'Kamal', 'Ahmed', 'kamal.ahmed@example.com', '2001-03-10', '2024-03-10', 'Not Active', 'default.jpg', 1),
(104, 'aminul89', '$2y$10$pZBCcBKYObRYXfxAchPPe.qgNQvgs3g0vJXD.dOeqvSS72lJeyQIm', 'Aminul', 'Islam', 'aminul.islam@example.com', '1998-06-05', '2024-04-05', 'Active', 'default.jpg', 1),
(105, 'rafiq12', '$2y$10$pZBCcBKYObRYXfxAchPPe.qgNQvgs3g0vJXD.dOeqvSS72lJeyQIm', 'Rafiq', 'Chowdhury', 'rafiq.chowdhury@example.com', '2002-07-25', '2024-05-20', 'Active', 'default.jpg', 2),
(106, 'sabina34', '$2y$10$pZBCcBKYObRYXfxAchPPe.qgNQvgs3g0vJXD.dOeqvSS72lJeyQIm', 'Sabina', 'Yasmin', 'sabina.yasmin@example.com', '1997-09-10', '2024-06-15', 'Not Active', 'chillGirl.jpg', 2),
(107, 'rina56', '$2y$10$pZBCcBKYObRYXfxAchPPe.qgNQvgs3g0vJXD.dOeqvSS72lJeyQIm', 'Rina', 'Akter', 'rina.akter@example.com', '2003-02-14', '2024-07-22', 'Active', 'chillGirl.jpg', 2),
(108, 'shamima78', '$2y$10$pZBCcBKYObRYXfxAchPPe.qgNQvgs3g0vJXD.dOeqvSS72lJeyQIm', 'Shamima', 'Sultana', 'shamima.sultana@example.com', '1996-11-30', '2024-08-10', 'Active', 'chillGirl.jpg', 3),
(109, 'nusrat90', '$2y$10$pZBCcBKYObRYXfxAchPPe.qgNQvgs3g0vJXD.dOeqvSS72lJeyQIm', 'Nusrat', 'Jahan', 'nusrat.jahan@example.com', '2004-12-05', '2024-09-25', 'Active', 'chillGirl.jpg', 2),
(110, 'mala12', '$2y$10$pZBCcBKYObRYXfxAchPPe.qgNQvgs3g0vJXD.dOeqvSS72lJeyQIm', 'Mala', 'Khatun', 'mala.khatun@example.com', '1995-05-19', '2024-10-15', 'Not Active', 'chillGirl.jpg', 3),
(654348, 'rafsan07', '$2y$10$WEwR3hERHM.BLmWQYCu1OOqDVmyN0dtlWk9LV3mLsKre9f3xlFdj2', 'Rafsan', 'The Motu', 'rafsanthemotubhai@gmail.com', '2015-03-19', '2024-12-28', 'Active', 'rafsan.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `student_progress`
--

CREATE TABLE `student_progress` (
  `progress_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `progress` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_progress`
--

INSERT INTO `student_progress` (`progress_id`, `course_id`, `student_id`, `progress`) VALUES
(13, 1, 1, 100),
(14, 19, 1, 100),
(15, 19, 2, 100),
(16, 7, 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certificate`
--
ALTER TABLE `certificate`
  ADD PRIMARY KEY (`certificate_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `instructor_id` (`instructor_id`);

--
-- Indexes for table `coursesmaterial`
--
ALTER TABLE `coursesmaterial`
  ADD PRIMARY KEY (`material_id`),
  ADD KEY `instructor_id` (`instructor_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `enrolled_student`
--
ALTER TABLE `enrolled_student`
  ADD PRIMARY KEY (`enrolled_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`instructor_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `student_progress`
--
ALTER TABLE `student_progress`
  ADD PRIMARY KEY (`progress_id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `student_id` (`student_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `certificate`
--
ALTER TABLE `certificate`
  MODIFY `certificate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134539;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `coursesmaterial`
--
ALTER TABLE `coursesmaterial`
  MODIFY `material_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `enrolled_student`
--
ALTER TABLE `enrolled_student`
  MODIFY `enrolled_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `instructor`
--
ALTER TABLE `instructor`
  MODIFY `instructor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=654349;

--
-- AUTO_INCREMENT for table `student_progress`
--
ALTER TABLE `student_progress`
  MODIFY `progress_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `certificate`
--
ALTER TABLE `certificate`
  ADD CONSTRAINT `certificate_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`),
  ADD CONSTRAINT `certificate_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`);

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`instructor_id`) REFERENCES `instructor` (`instructor_id`);

--
-- Constraints for table `coursesmaterial`
--
ALTER TABLE `coursesmaterial`
  ADD CONSTRAINT `coursesmaterial_ibfk_1` FOREIGN KEY (`instructor_id`) REFERENCES `instructor` (`instructor_id`);

--
-- Constraints for table `enrolled_student`
--
ALTER TABLE `enrolled_student`
  ADD CONSTRAINT `enrolled_student_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`),
  ADD CONSTRAINT `enrolled_student_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`);

--
-- Constraints for table `student_progress`
--
ALTER TABLE `student_progress`
  ADD CONSTRAINT `student_progress_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`),
  ADD CONSTRAINT `student_progress_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



-- contents
-- topic id, topic title
-- video link
-- course_id foregin key
-- uploaded_at

CREATE TABLE contents(
  topic_id int(5) AUTO_INCREMENT PRIMARY KEY,
  topic_title varchar(255) NOT NULL,
  thumbnail varchar(255) NOT NULL,
  course_id int(11) NOT NULL,
  uploaded_at timestamp NOT NULL DEFAULT current_timestamp(),
  FOREIGN KEY (course_id) REFERENCES course(course_id)
);

DROP TABLE contents;

ALTER TABLE contents ADD COLUMN descriptions varchar(255);

ALTER TABLE contents MODIFY thumbnail varchar(255);



INSERT INTO contents (topic_title, thumbnail, course_id, descriptions)
VALUES 
('Introduction to Course 1', 'thumbnail1.jpg', 1, 'Overview of Course 1 basics and fundamentals.'),
('Advanced Topics in Course 1', 'thumbnail2.jpg', 1, 'In-depth exploration of advanced topics in Course 1.'),
('Course 3 Overview', 'thumbnail3.jpg', 3, 'Comprehensive introduction to Course 3 key concepts.'),
('Course 3 Deep Dive', 'thumbnail4.jpg', 3, 'Detailed analysis of core topics in Course 3.'),
('Course 7 Basics', 'thumbnail5.jpg', 7, 'Fundamental principles and basics of Course 7.'),
('Course 7 Advanced Concepts', 'thumbnail6.jpg', 7, 'Advanced concepts and topics in Course 7.'),
('Getting Started with Course 8', 'thumbnail7.jpg', 8, 'Introduction and getting started with Course 8.'),
('Course 8 Intermediate Topics', 'thumbnail8.jpg', 8, 'Intermediate topics and concepts in Course 8.'),
('Course 13 Introduction', 'thumbnail9.jpg', 13, 'Introduction to Course 13 fundamental principles.'),
('Course 13 in Detail', 'thumbnail10.jpg', 13, 'Detailed study of topics in Course 13.'),
('Course 19 Essentials', 'thumbnail11.jpg', 19, 'Essential concepts and principles of Course 19.'),
('Course 19 Mastery', 'thumbnail12.jpg', 19, 'Mastery of advanced topics in Course 19.'),
('Course 22 Basics', 'thumbnail13.jpg', 22, 'Basic introduction to the principles of Course 22.'),
('Course 22 Advanced Topics', 'thumbnail14.jpg', 22, 'Exploration of advanced topics in Course 22.');


INSERT INTO contents (topic_title, thumbnail, course_id, descriptions) VALUES ('Course 1 Overview', 'thumbnail17.jpg', 1, 'A brief introduction to the objectives of Course 1.'), 
('Course 1 Key Learnings', 'thumbnail18.jpg', 1, 'Key takeaways and learnings from Course 1.'),
('Exploring Course 3', 'thumbnail19.jpg', 3, 'A detailed exploration of Course 3 topics.');

ALTER TABLE contents ADD video_link varchar(255);