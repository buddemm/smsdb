-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2021 at 06:08 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `billingdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `alumni_events`
--

CREATE TABLE `alumni_events` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `event_for` varchar(100) NOT NULL,
  `session_id` int(11) NOT NULL,
  `class_id` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `note` text NOT NULL,
  `photo` varchar(255) NOT NULL,
  `is_active` int(11) NOT NULL,
  `event_notification_message` text NOT NULL,
  `show_onwebsite` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `alumni_students`
--

CREATE TABLE `alumni_students` (
  `id` int(11) NOT NULL,
  `current_email` varchar(255) NOT NULL,
  `current_phone` varchar(255) NOT NULL,
  `occupation` text NOT NULL,
  `address` text NOT NULL,
  `student_id` int(11) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `attendence_type`
--

CREATE TABLE `attendence_type` (
  `id` int(11) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `key_value` varchar(50) NOT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attendence_type`
--

INSERT INTO `attendence_type` (`id`, `type`, `key_value`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Present', '<b class=\"text text-success\">P</b>', 'yes', '2016-06-23 11:11:37', '0000-00-00'),
(2, 'Late With Excuse', '<b class=\"text text-warning\">E</b>', 'no', '2018-05-29 01:19:48', '0000-00-00'),
(3, 'Late', '<b class=\"text text-warning\">L</b>', 'yes', '2016-06-23 11:12:28', '0000-00-00'),
(4, 'Absent', '<b class=\"text text-danger\">A</b>', 'yes', '2016-10-11 04:35:40', '0000-00-00'),
(5, 'Holiday', 'H', 'yes', '2016-10-11 04:35:01', '0000-00-00'),
(6, 'Half Day', '<b class=\"text text-warning\">F</b>', 'yes', '2016-06-23 11:12:28', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `book_title` varchar(100) NOT NULL,
  `book_no` varchar(50) NOT NULL,
  `isbn_no` varchar(100) NOT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `rack_no` varchar(100) NOT NULL,
  `publish` varchar(100) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `perunitcost` float(10,2) DEFAULT NULL,
  `postdate` date DEFAULT NULL,
  `description` text DEFAULT NULL,
  `available` varchar(10) DEFAULT 'yes',
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `book_title`, `book_no`, `isbn_no`, `subject`, `rack_no`, `publish`, `author`, `qty`, `perunitcost`, `postdate`, `description`, `available`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Basic Mathematics', '1', '', 'Basic Mathematics', '1', 'Dr. Paul Kirenga', 'Dr. Paul Kirenga', 20, 30000.00, '2021-07-19', 'Basic Mathematics', 'yes', 'no', '2021-07-21 09:33:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `book_issues`
--

CREATE TABLE `book_issues` (
  `id` int(11) UNSIGNED NOT NULL,
  `book_id` int(11) DEFAULT NULL,
  `duereturn_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `is_returned` int(11) DEFAULT 0,
  `member_id` int(11) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `book_issues`
--

INSERT INTO `book_issues` (`id`, `book_id`, `duereturn_date`, `return_date`, `issue_date`, `is_returned`, `member_id`, `is_active`, `created_at`) VALUES
(1, 1, '2021-07-22', NULL, '2021-07-21', 0, 1, 'no', '2021-07-21 09:55:06');

-- --------------------------------------------------------

--
-- Table structure for table `captcha`
--

CREATE TABLE `captcha` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `captcha`
--

INSERT INTO `captcha` (`id`, `name`, `status`, `created_at`) VALUES
(1, 'userlogin', 0, '2021-01-19 00:10:29'),
(2, 'login', 0, '2021-01-19 00:10:31'),
(3, 'admission', 0, '2021-01-18 20:48:11'),
(4, 'complain', 0, '2021-01-18 20:48:13'),
(5, 'contact_us', 0, '2021-01-18 20:48:15');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `id` int(11) NOT NULL,
  `certificate_name` varchar(100) NOT NULL,
  `certificate_text` text NOT NULL,
  `left_header` varchar(100) NOT NULL,
  `center_header` varchar(100) NOT NULL,
  `right_header` varchar(100) NOT NULL,
  `left_footer` varchar(100) NOT NULL,
  `right_footer` varchar(100) NOT NULL,
  `center_footer` varchar(100) NOT NULL,
  `background_image` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  `created_for` tinyint(1) NOT NULL COMMENT '1 = staff, 2 = students',
  `status` tinyint(1) NOT NULL,
  `header_height` int(11) NOT NULL,
  `content_height` int(11) NOT NULL,
  `footer_height` int(11) NOT NULL,
  `content_width` int(11) NOT NULL,
  `enable_student_image` tinyint(1) NOT NULL COMMENT '0=no,1=yes',
  `enable_image_height` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `certificates`
--

INSERT INTO `certificates` (`id`, `certificate_name`, `certificate_text`, `left_header`, `center_header`, `right_header`, `left_footer`, `right_footer`, `center_footer`, `background_image`, `created_at`, `updated_at`, `created_for`, `status`, `header_height`, `content_height`, `footer_height`, `content_width`, `enable_student_image`, `enable_image_height`) VALUES
(1, 'Microtelecomms Secondary School', 'This is certify that <b>[name]</b> has born on [dob]  <br> and have following details [present_address] [guardian] [created_at] [admission_no] [roll_no] [class] [section] [gender] [admission_date] [category] [cast] [father_name] [mother_name] [religion] [email] [phone] .<br>We wish best of luck for future endeavors.', 'Reff. No.....1111111.........', 'To Whomever It May Concern', 'Date: _10__/_10__/__2019__', '.................................<br>admin', '.................................<br>principal', '.................................<br>admin', 'sampletc121.png', '2021-07-21 09:30:02', '0000-00-00', 2, 1, 360, 400, 480, 810, 1, 230);

-- --------------------------------------------------------

--
-- Table structure for table `chat_connections`
--

CREATE TABLE `chat_connections` (
  `id` int(11) NOT NULL,
  `chat_user_one` int(11) NOT NULL,
  `chat_user_two` int(11) NOT NULL,
  `ip` varchar(30) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `chat_messages`
--

CREATE TABLE `chat_messages` (
  `id` int(11) NOT NULL,
  `message` text DEFAULT NULL,
  `chat_user_id` int(11) NOT NULL,
  `ip` varchar(30) NOT NULL,
  `time` int(11) NOT NULL,
  `is_first` int(1) DEFAULT 0,
  `is_read` int(1) NOT NULL DEFAULT 0,
  `chat_connection_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `chat_users`
--

CREATE TABLE `chat_users` (
  `id` int(11) NOT NULL,
  `user_type` varchar(20) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `create_staff_id` int(11) DEFAULT NULL,
  `create_student_id` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(11) NOT NULL,
  `class` varchar(60) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `class`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Class I', 'no', '2021-07-21 07:00:49', NULL),
(2, 'Form I', 'no', '2021-07-21 07:02:26', NULL),
(3, 'Computer Science and Engineering', 'no', '2021-07-23 06:37:06', NULL),
(4, 'Class VII', 'no', '2021-07-23 22:43:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `class_sections`
--

CREATE TABLE `class_sections` (
  `id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `class_sections`
--

INSERT INTO `class_sections` (`id`, `class_id`, `section_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'no', '2021-07-21 07:00:27', NULL),
(2, 2, 1, 'no', '2021-07-21 07:02:26', NULL),
(3, 3, 1, 'no', '2021-07-23 06:32:44', NULL),
(4, 4, 1, 'no', '2021-07-23 22:25:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `class_teacher`
--

CREATE TABLE `class_teacher` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `class_teacher`
--

INSERT INTO `class_teacher` (`id`, `class_id`, `staff_id`, `section_id`, `session_id`) VALUES
(1, 1, 2, 1, 16),
(2, 2, 2, 1, 16);

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

CREATE TABLE `complaint` (
  `id` int(11) NOT NULL,
  `complaint_type` varchar(255) NOT NULL,
  `source` varchar(15) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `email` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `description` text NOT NULL,
  `action_taken` varchar(200) NOT NULL,
  `assigned` varchar(50) NOT NULL,
  `note` text NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `complaint_type`
--

CREATE TABLE `complaint_type` (
  `id` int(11) NOT NULL,
  `complaint_type` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `is_public` varchar(10) DEFAULT 'No',
  `class_id` int(11) DEFAULT NULL,
  `cls_sec_id` int(10) NOT NULL,
  `file` varchar(250) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `note` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `title`, `type`, `is_public`, `class_id`, `cls_sec_id`, `file`, `created_by`, `note`, `is_active`, `created_at`, `updated_at`, `date`) VALUES
(1, 'Class I Week 1 (July) Test', 'assignments', 'No', 1, 1, 'uploads/school_content/material/1.pdf', 2, 'Class I Week 1 (July) Test', 'no', '2021-07-23 05:22:10', NULL, '2021-07-23'),
(2, 'Class I Home Study Material of July', 'study_material', 'No', 1, 1, 'uploads/school_content/material/2.pdf', 2, 'Class I Home Study Material of July', 'no', '2021-07-23 05:24:54', NULL, '2021-07-23');

-- --------------------------------------------------------

--
-- Table structure for table `content_for`
--

CREATE TABLE `content_for` (
  `id` int(11) NOT NULL,
  `role` varchar(50) DEFAULT NULL,
  `content_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `content_for`
--

INSERT INTO `content_for` (`id`, `role`, `content_id`, `user_id`, `created_at`) VALUES
(1, 'student', 1, NULL, '2021-07-23 05:22:10'),
(2, 'student', 2, NULL, '2021-07-23 05:24:54');

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `belong_to` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `bs_column` int(10) DEFAULT NULL,
  `validation` int(11) DEFAULT 0,
  `field_values` text DEFAULT NULL,
  `show_table` varchar(100) DEFAULT NULL,
  `visible_on_table` int(11) NOT NULL,
  `weight` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `custom_field_values`
--

CREATE TABLE `custom_field_values` (
  `id` int(11) NOT NULL,
  `belong_table_id` int(11) DEFAULT NULL,
  `custom_field_id` int(11) DEFAULT NULL,
  `field_value` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `department_name` varchar(200) NOT NULL,
  `is_active` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `department_name`, `is_active`) VALUES
(1, 'Teaching  Department', 'yes'),
(2, 'None Teaching Department', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `disable_reason`
--

CREATE TABLE `disable_reason` (
  `id` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dispatch_receive`
--

CREATE TABLE `dispatch_receive` (
  `id` int(11) NOT NULL,
  `reference_no` varchar(50) NOT NULL,
  `to_title` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `note` varchar(500) NOT NULL,
  `from_title` varchar(200) NOT NULL,
  `date` varchar(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_config`
--

CREATE TABLE `email_config` (
  `id` int(11) UNSIGNED NOT NULL,
  `email_type` varchar(100) DEFAULT NULL,
  `smtp_server` varchar(100) DEFAULT NULL,
  `smtp_port` varchar(100) DEFAULT NULL,
  `smtp_username` varchar(100) DEFAULT NULL,
  `smtp_password` varchar(100) DEFAULT NULL,
  `ssl_tls` varchar(100) DEFAULT NULL,
  `smtp_auth` varchar(10) NOT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_config`
--

INSERT INTO `email_config` (`id`, `email_type`, `smtp_server`, `smtp_port`, `smtp_username`, `smtp_password`, `ssl_tls`, `smtp_auth`, `is_active`, `created_at`) VALUES
(1, 'smtp', 'mail.schoolmanagement.co.tz', '25', 'info@schoolmanagement.co.tz', '@@info@@', '', 'false', 'yes', '2021-07-25 09:56:24');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `reference` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(500) NOT NULL,
  `follow_up_date` date NOT NULL,
  `note` text NOT NULL,
  `source` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `assigned` varchar(100) NOT NULL,
  `class` int(11) NOT NULL,
  `no_of_child` varchar(11) DEFAULT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_type`
--

CREATE TABLE `enquiry_type` (
  `id` int(11) NOT NULL,
  `enquiry_type` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `event_title` varchar(200) NOT NULL,
  `event_description` varchar(300) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `event_type` varchar(100) NOT NULL,
  `event_color` varchar(200) NOT NULL,
  `event_for` varchar(100) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `sesion_id` int(11) NOT NULL,
  `note` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exam_groups`
--

CREATE TABLE `exam_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `exam_type` varchar(250) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` int(11) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exam_groups`
--

INSERT INTO `exam_groups` (`id`, `name`, `exam_type`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Form I Exam Group', 'school_grade_system', 'Form I Exam Group', 0, '2021-10-05 18:38:50', NULL),
(2, 'Class I Exam Group', 'coll_grade_system', 'Class I Exam Group', 0, '2021-07-23 07:13:10', NULL),
(3, 'College Exam Grading Group', 'gpa', 'College Exam Grading Group', 0, '2021-07-23 07:03:56', NULL),
(4, 'Class VII Exam Group', 'school_grade_system', 'Class VII Exam Group', 0, '2021-07-23 22:35:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exam_group_class_batch_exams`
--

CREATE TABLE `exam_group_class_batch_exams` (
  `id` int(11) NOT NULL,
  `exam` varchar(250) DEFAULT NULL,
  `session_id` int(10) NOT NULL,
  `date_from` date DEFAULT NULL,
  `date_to` date DEFAULT NULL,
  `description` text DEFAULT NULL,
  `exam_group_id` int(11) DEFAULT NULL,
  `use_exam_roll_no` int(1) NOT NULL DEFAULT 1,
  `is_publish` int(1) DEFAULT 0,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exam_group_class_batch_exams`
--

INSERT INTO `exam_group_class_batch_exams` (`id`, `exam`, `session_id`, `date_from`, `date_to`, `description`, `exam_group_id`, `use_exam_roll_no`, `is_publish`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Form I (July) Test', 16, NULL, NULL, 'Form I (July) Test', 1, 0, 1, 1, '2021-07-21 08:03:31', NULL),
(2, 'Class I Monthly (July) Exam', 16, NULL, NULL, 'Class I Monthly (July) Exam ', 2, 0, 1, 1, '2021-07-22 23:25:43', NULL),
(3, '2nd Semester Exam', 16, NULL, NULL, '2nd Semester Exam ', 3, 0, 1, 1, '2021-07-23 06:40:50', NULL),
(4, 'Class VII Monthly (July) Test', 16, NULL, NULL, '', 4, 0, 1, 1, '2021-07-23 22:36:22', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exam_group_class_batch_exam_students`
--

CREATE TABLE `exam_group_class_batch_exam_students` (
  `id` int(11) NOT NULL,
  `exam_group_class_batch_exam_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_session_id` int(11) NOT NULL,
  `roll_no` int(6) NOT NULL DEFAULT 0,
  `teacher_remark` text DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exam_group_class_batch_exam_students`
--

INSERT INTO `exam_group_class_batch_exam_students` (`id`, `exam_group_class_batch_exam_id`, `student_id`, `student_session_id`, `roll_no`, `teacher_remark`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 0, 'Excellent Keep it up Mariam', 0, '2021-10-08 06:42:51', NULL),
(2, 1, 2, 2, 0, 'Excellent Keep it up Martha', 0, '2021-10-08 06:45:28', NULL),
(3, 2, 3, 3, 0, 'Excellent Keep it up!', 0, '2021-07-23 00:37:51', NULL),
(4, 2, 4, 4, 0, 'Excellent, but put more efforts on average subjects!', 0, '2021-07-23 00:37:51', NULL),
(5, 2, 5, 5, 0, 'Excellent Keep it up!', 0, '2021-07-25 09:31:08', NULL),
(6, 3, 6, 6, 0, 'Excellent Students . Keep it up', 0, '2021-10-07 08:54:52', NULL),
(7, 4, 7, 7, 0, NULL, 0, '2021-07-23 22:42:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exam_group_class_batch_exam_subjects`
--

CREATE TABLE `exam_group_class_batch_exam_subjects` (
  `id` int(11) NOT NULL,
  `exam_group_class_batch_exams_id` int(11) DEFAULT NULL,
  `subject_id` int(10) NOT NULL,
  `date_from` date NOT NULL,
  `time_from` time NOT NULL,
  `duration` varchar(50) NOT NULL,
  `room_no` varchar(100) DEFAULT NULL,
  `max_marks` float(10,2) DEFAULT NULL,
  `min_marks` float(10,2) DEFAULT NULL,
  `credit_hours` float(10,2) DEFAULT 0.00,
  `date_to` datetime DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exam_group_class_batch_exam_subjects`
--

INSERT INTO `exam_group_class_batch_exam_subjects` (`id`, `exam_group_class_batch_exams_id`, `subject_id`, `date_from`, `time_from`, `duration`, `room_no`, `max_marks`, `min_marks`, `credit_hours`, `date_to`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2021-07-21', '08:08:14', '60', '100', 100.00, 0.00, 0.00, NULL, 0, '2021-07-21 08:10:40', NULL),
(2, 1, 2, '2021-07-21', '18:08:22', '60', '200', 100.00, 0.00, 0.00, NULL, 0, '2021-07-21 08:10:40', NULL),
(3, 1, 3, '2021-07-21', '18:08:25', '60', '300', 100.00, 0.00, 0.00, NULL, 0, '2021-07-21 08:10:40', NULL),
(4, 1, 4, '2021-07-21', '18:08:28', '60', '400', 100.00, 0.00, 0.00, NULL, 0, '2021-07-21 08:10:40', NULL),
(7, 1, 7, '2021-07-21', '18:08:34', '60', '700', 100.00, 0.00, 0.00, NULL, 0, '2021-07-21 08:10:40', NULL),
(8, 1, 8, '2021-07-21', '18:08:36', '60', '800', 100.00, 0.00, 0.00, NULL, 0, '2021-07-21 08:10:40', NULL),
(9, 1, 9, '2021-07-21', '18:08:38', '60', '900', 100.00, 0.00, 0.00, NULL, 0, '2021-07-21 08:10:40', NULL),
(11, 2, 1, '2021-07-23', '10:04:35', '60', '100', 100.00, 0.00, 0.00, NULL, 0, '2021-07-23 00:13:25', NULL),
(12, 2, 2, '2021-07-23', '09:05:47', '60', '200', 100.00, 0.00, 0.00, NULL, 0, '2021-07-23 00:13:25', NULL),
(13, 2, 11, '2021-07-23', '10:06:04', '60', '300', 100.00, 0.00, 0.00, NULL, 0, '2021-07-23 00:13:25', NULL),
(14, 2, 12, '2021-07-23', '10:06:10', '60', '400', 100.00, 0.00, 0.00, NULL, 0, '2021-07-23 00:13:25', NULL),
(15, 2, 13, '2021-07-23', '10:06:23', '60', '500', 100.00, 0.00, 0.00, NULL, 0, '2021-07-23 00:13:25', NULL),
(16, 2, 14, '2021-07-23', '10:06:31', '60', '600', 100.00, 0.00, 0.00, NULL, 0, '2021-07-23 00:13:25', NULL),
(17, 2, 15, '2021-07-23', '10:06:35', '60', '700', 100.00, 0.00, 0.00, NULL, 0, '2021-07-23 00:13:25', NULL),
(18, 2, 16, '2021-07-23', '10:06:37', '60', '800', 100.00, 0.00, 0.00, NULL, 0, '2021-07-23 00:13:25', NULL),
(19, 2, 17, '2021-07-23', '10:04:14', '60', '900', 100.00, 0.00, 0.00, NULL, 0, '2021-07-23 00:13:25', NULL),
(20, 2, 18, '2021-07-23', '10:30:36', '60', '1000', 100.00, 0.00, 0.00, NULL, 0, '2021-07-23 00:13:25', NULL),
(21, 2, 19, '2021-07-23', '10:05:43', '60', '1001', 100.00, 0.00, 0.00, NULL, 0, '2021-07-23 00:13:25', NULL),
(22, 3, 20, '2021-07-23', '16:41:46', '60', '100', 100.00, 0.00, 1.00, NULL, 0, '2021-10-07 10:39:03', NULL),
(23, 3, 21, '2021-07-23', '16:41:50', '60', '200', 100.00, 0.00, 1.00, NULL, 0, '2021-10-07 10:39:03', NULL),
(24, 3, 22, '2021-07-23', '16:41:52', '60', '300', 100.00, 0.00, 1.00, NULL, 0, '2021-10-07 10:39:03', NULL),
(25, 3, 23, '2021-07-23', '16:41:53', '60', '400', 100.00, 0.00, 1.00, NULL, 0, '2021-10-07 10:39:03', NULL),
(26, 3, 24, '2021-07-23', '16:41:55', '60', '500', 100.00, 0.00, 1.00, NULL, 0, '2021-10-07 10:39:03', NULL),
(27, 3, 25, '2021-07-23', '16:41:57', '60', '600', 100.00, 0.00, 1.00, NULL, 0, '2021-10-07 10:39:03', NULL),
(28, 4, 1, '2021-07-24', '08:36:53', '60', '100', 50.00, 11.00, 0.00, NULL, 0, '2021-07-23 22:52:26', NULL),
(29, 4, 2, '2021-07-24', '08:36:57', '60', '200', 50.00, 11.00, 0.00, NULL, 0, '2021-07-23 22:52:26', NULL),
(30, 4, 29, '2021-07-24', '08:36:59', '60', '300', 50.00, 11.00, 0.00, NULL, 0, '2021-07-23 22:52:26', NULL),
(31, 4, 30, '2021-07-17', '08:51:54', '60', '400', 50.00, 11.00, 0.00, NULL, 0, '2021-07-23 22:52:26', NULL),
(32, 4, 31, '2021-07-24', '08:51:56', '60', '500', 50.00, 11.00, 0.00, NULL, 0, '2021-07-23 22:52:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exam_group_exam_connections`
--

CREATE TABLE `exam_group_exam_connections` (
  `id` int(11) NOT NULL,
  `exam_group_id` int(11) DEFAULT NULL,
  `exam_group_class_batch_exams_id` int(11) DEFAULT NULL,
  `exam_weightage` float(10,2) DEFAULT 0.00,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exam_group_exam_results`
--

CREATE TABLE `exam_group_exam_results` (
  `id` int(11) NOT NULL,
  `exam_group_class_batch_exam_student_id` int(11) NOT NULL,
  `exam_group_class_batch_exam_subject_id` int(11) DEFAULT NULL,
  `attendence` varchar(10) DEFAULT NULL,
  `get_marks` float(10,2) DEFAULT 0.00,
  `note` text DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  `exam_group_student_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exam_group_exam_results`
--

INSERT INTO `exam_group_exam_results` (`id`, `exam_group_class_batch_exam_student_id`, `exam_group_class_batch_exam_subject_id`, `attendence`, `get_marks`, `note`, `is_active`, `created_at`, `updated_at`, `exam_group_student_id`) VALUES
(1, 1, 1, 'present', 65.00, 'Excellent', 0, '2021-10-05 17:56:15', NULL, NULL),
(2, 1, 2, 'present', 55.00, 'Very Good', 0, '2021-10-05 17:56:34', NULL, NULL),
(3, 1, 3, 'present', 65.00, 'Good', 0, '2021-07-21 08:13:13', NULL, NULL),
(4, 1, 4, 'present', 70.00, 'Excellent', 0, '2021-10-05 17:56:59', NULL, NULL),
(7, 1, 7, 'present', 70.00, 'Very Good', 0, '2021-07-21 08:15:50', NULL, NULL),
(8, 1, 8, 'present', 55.00, 'Average', 0, '2021-07-21 08:16:31', NULL, NULL),
(9, 1, 9, 'present', 90.00, 'Excellent', 0, '2021-10-05 18:35:33', NULL, NULL),
(11, 2, 1, 'present', 90.00, 'Excellent', 0, '2021-07-21 09:13:20', NULL, NULL),
(12, 2, 2, 'present', 78.00, 'Very Good', 0, '2021-07-21 09:13:47', NULL, NULL),
(13, 2, 3, 'present', 80.00, 'Excellent', 0, '2021-07-21 09:14:20', NULL, NULL),
(14, 2, 4, 'present', 95.00, 'Excellent', 0, '2021-07-21 09:15:13', NULL, NULL),
(17, 2, 7, 'present', 80.00, 'Excellent', 0, '2021-07-21 09:16:41', NULL, NULL),
(18, 2, 8, 'present', 85.00, 'Excellent', 0, '2021-07-21 09:17:12', NULL, NULL),
(19, 2, 9, 'present', 90.00, 'Excellent', 0, '2021-10-05 18:35:33', NULL, NULL),
(21, 3, 11, 'present', 90.00, 'Excellent', 0, '2021-07-23 00:29:41', NULL, NULL),
(22, 4, 11, 'present', 68.00, 'Good', 0, '2021-07-23 00:29:41', NULL, NULL),
(23, 3, 12, 'present', 97.00, 'Excellent', 0, '2021-07-23 00:30:11', NULL, NULL),
(24, 4, 12, 'present', 97.00, 'Excellent', 0, '2021-07-23 00:30:11', NULL, NULL),
(25, 3, 13, 'present', 100.00, 'Excellent', 0, '2021-07-23 00:30:41', NULL, NULL),
(26, 4, 13, 'present', 96.00, 'Excellent', 0, '2021-07-23 00:30:41', NULL, NULL),
(27, 3, 14, 'present', 100.00, 'Excellent', 0, '2021-07-23 00:31:04', NULL, NULL),
(28, 4, 14, 'present', 100.00, 'Excellent', 0, '2021-07-23 00:31:04', NULL, NULL),
(29, 3, 15, 'present', 64.00, 'Good', 0, '2021-07-23 00:31:49', NULL, NULL),
(30, 4, 15, 'present', 20.00, 'Not Good', 0, '2021-07-23 00:31:49', NULL, NULL),
(31, 3, 16, 'present', 84.00, 'Excellent', 0, '2021-07-23 00:32:24', NULL, NULL),
(32, 4, 16, 'present', 92.00, 'Excellent', 0, '2021-07-23 00:32:24', NULL, NULL),
(33, 3, 17, 'present', 92.00, 'Excellent', 0, '2021-07-23 00:33:06', NULL, NULL),
(34, 4, 17, 'present', 64.00, 'Good', 0, '2021-07-23 00:33:06', NULL, NULL),
(35, 3, 18, 'present', 72.00, 'Very Good', 0, '2021-07-23 00:33:44', NULL, NULL),
(36, 4, 18, 'present', 44.00, 'Average', 0, '2021-07-23 00:33:44', NULL, NULL),
(37, 3, 19, 'present', 100.00, 'Excellent', 0, '2021-07-23 00:34:12', NULL, NULL),
(38, 4, 19, 'present', 98.00, 'Excellent', 0, '2021-07-23 00:34:12', NULL, NULL),
(39, 3, 20, 'present', 68.00, 'Good', 0, '2021-07-23 00:36:03', NULL, NULL),
(40, 4, 20, 'present', 40.00, 'Average', 0, '2021-07-23 00:36:03', NULL, NULL),
(41, 3, 21, 'present', 80.00, 'Excellent', 0, '2021-07-23 00:36:37', NULL, NULL),
(42, 4, 21, 'present', 66.00, 'Good', 0, '2021-07-23 00:36:37', NULL, NULL),
(43, 5, 11, 'present', 50.00, 'Average', 0, '2021-07-23 00:48:38', NULL, NULL),
(44, 5, 12, 'present', 45.00, 'Average', 0, '2021-07-23 00:48:56', NULL, NULL),
(45, 5, 13, 'present', 55.00, 'Average', 0, '2021-07-23 00:49:19', NULL, NULL),
(46, 5, 14, 'present', 41.00, 'Average', 0, '2021-07-23 00:49:42', NULL, NULL),
(47, 5, 15, 'present', 35.00, 'Average', 0, '2021-07-23 00:50:02', NULL, NULL),
(48, 5, 16, 'present', 46.00, 'Average', 0, '2021-07-23 00:50:22', NULL, NULL),
(49, 5, 17, 'present', 30.00, 'Average', 0, '2021-07-23 00:50:40', NULL, NULL),
(50, 5, 18, 'present', 42.00, 'Average', 0, '2021-07-23 00:50:55', NULL, NULL),
(51, 5, 19, 'present', 57.00, 'Average', 0, '2021-07-23 00:51:25', NULL, NULL),
(52, 5, 20, 'present', 38.00, 'Average', 0, '2021-07-23 00:51:42', NULL, NULL),
(53, 5, 21, 'present', 50.00, 'Average', 0, '2021-07-23 00:51:58', NULL, NULL),
(54, 6, 22, 'present', 75.00, 'Very Good', 0, '2021-07-23 06:57:40', NULL, NULL),
(55, 6, 23, 'present', 70.00, 'Good', 0, '2021-10-07 10:38:18', NULL, NULL),
(56, 6, 24, 'present', 65.00, 'Good', 0, '2021-07-23 06:58:23', NULL, NULL),
(57, 6, 26, 'present', 45.00, 'Average', 0, '2021-07-23 06:58:45', NULL, NULL),
(58, 6, 27, 'present', 70.00, 'Very Good', 0, '2021-07-23 06:59:12', NULL, NULL),
(59, 6, 25, 'present', 66.00, 'Good', 0, '2021-07-23 07:04:27', NULL, NULL),
(60, 7, 28, 'present', 40.00, 'Excellent', 0, '2021-07-23 22:56:19', NULL, NULL),
(61, 7, 29, 'present', 35.00, 'Very Good', 0, '2021-07-23 22:56:46', NULL, NULL),
(62, 7, 30, 'present', 25.00, 'Good', 0, '2021-07-23 22:57:04', NULL, NULL),
(63, 7, 32, 'present', 45.00, 'Excellent', 0, '2021-07-23 22:57:23', NULL, NULL),
(64, 7, 31, 'present', 30.00, 'Good', 0, '2021-07-23 22:57:39', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exam_group_students`
--

CREATE TABLE `exam_group_students` (
  `id` int(11) NOT NULL,
  `exam_group_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `student_session_id` int(10) DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exam_results`
--

CREATE TABLE `exam_results` (
  `id` int(11) NOT NULL,
  `attendence` varchar(10) NOT NULL,
  `exam_schedule_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `get_marks` float(10,2) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exam_schedules`
--

CREATE TABLE `exam_schedules` (
  `id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `teacher_subject_id` int(11) DEFAULT NULL,
  `date_of_exam` date DEFAULT NULL,
  `start_to` varchar(50) DEFAULT NULL,
  `end_from` varchar(50) DEFAULT NULL,
  `room_no` varchar(50) DEFAULT NULL,
  `full_marks` int(11) DEFAULT NULL,
  `passing_marks` int(11) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(11) NOT NULL,
  `exp_head_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `invoice_no` varchar(200) NOT NULL,
  `date` date DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `documents` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'yes',
  `is_deleted` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `expense_head`
--

CREATE TABLE `expense_head` (
  `id` int(11) NOT NULL,
  `exp_category` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'yes',
  `is_deleted` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `feecategory`
--

CREATE TABLE `feecategory` (
  `id` int(11) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `feemasters`
--

CREATE TABLE `feemasters` (
  `id` int(11) NOT NULL,
  `session_id` int(11) DEFAULT NULL,
  `feetype_id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fees_discounts`
--

CREATE TABLE `fees_discounts` (
  `id` int(11) NOT NULL,
  `session_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `code` varchar(100) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fees_reminder`
--

CREATE TABLE `fees_reminder` (
  `id` int(11) NOT NULL,
  `reminder_type` varchar(10) DEFAULT NULL,
  `day` int(2) DEFAULT NULL,
  `is_active` int(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fees_reminder`
--

INSERT INTO `fees_reminder` (`id`, `reminder_type`, `day`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'before', 2, 0, '2020-02-28 05:38:32', NULL),
(2, 'before', 5, 0, '2020-02-28 05:38:36', NULL),
(3, 'after', 2, 0, '2020-02-28 05:38:40', NULL),
(4, 'after', 5, 0, '2020-02-28 05:38:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `feetype`
--

CREATE TABLE `feetype` (
  `id` int(11) NOT NULL,
  `is_system` int(1) NOT NULL DEFAULT 0,
  `feecategory_id` int(11) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `code` varchar(100) NOT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feetype`
--

INSERT INTO `feetype` (`id`, `is_system`, `feecategory_id`, `type`, `code`, `is_active`, `created_at`, `updated_at`, `description`) VALUES
(1, 0, NULL, '3rd Term Secondary School Fee', '3rd Term Secondary School Fee', 'no', '2021-07-23 04:49:55', NULL, '3rd Term Secondary School Fee'),
(2, 0, NULL, '4th Term Secondary School Fee', '4th Term Secondary School Fee', 'no', '2021-07-23 04:50:20', NULL, '4th Term Secondary School Fee'),
(3, 0, NULL, '3rd Term Primary School Fee', '3rd Term Primary School Fee', 'no', '2021-07-23 04:49:15', NULL, '3rd Term Primary School Fee'),
(4, 0, NULL, '4th Term Primary School Fee', '4th Term Primary School Fee', 'no', '2021-07-23 04:49:32', NULL, '4th Term Primary School Fee');

-- --------------------------------------------------------

--
-- Table structure for table `fee_groups`
--

CREATE TABLE `fee_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `is_system` int(1) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fee_groups`
--

INSERT INTO `fee_groups` (`id`, `name`, `is_system`, `description`, `is_active`, `created_at`) VALUES
(1, 'Secondary School Fee Group', 0, 'Secondary School Fee Group', 'no', '2021-07-21 10:04:00'),
(2, 'Primary School Fee Group', 0, 'Primary School Fee Group', 'no', '2021-07-23 04:51:25');

-- --------------------------------------------------------

--
-- Table structure for table `fee_groups_feetype`
--

CREATE TABLE `fee_groups_feetype` (
  `id` int(11) NOT NULL,
  `fee_session_group_id` int(11) DEFAULT NULL,
  `fee_groups_id` int(11) DEFAULT NULL,
  `feetype_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `fine_type` varchar(50) NOT NULL DEFAULT 'none',
  `due_date` date DEFAULT NULL,
  `fine_percentage` float(10,2) NOT NULL DEFAULT 0.00,
  `fine_amount` float(10,2) NOT NULL DEFAULT 0.00,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fee_groups_feetype`
--

INSERT INTO `fee_groups_feetype` (`id`, `fee_session_group_id`, `fee_groups_id`, `feetype_id`, `session_id`, `amount`, `fine_type`, `due_date`, `fine_percentage`, `fine_amount`, `is_active`, `created_at`) VALUES
(1, 1, 1, 1, 16, '300000.00', 'none', '2021-07-31', 0.00, 0.00, 'no', '2021-07-21 10:06:42'),
(2, 1, 1, 2, 16, '300000.00', 'none', '2021-10-31', 0.00, 0.00, 'no', '2021-07-21 10:07:13'),
(3, 2, 2, 3, 16, '250000.00', 'none', '2021-07-31', 0.00, 0.00, 'no', '2021-07-23 04:52:07'),
(4, 2, 2, 4, 16, '250000.00', 'none', '2021-10-30', 0.00, 0.00, 'no', '2021-07-23 04:52:30');

-- --------------------------------------------------------

--
-- Table structure for table `fee_receipt_no`
--

CREATE TABLE `fee_receipt_no` (
  `id` int(11) NOT NULL,
  `payment` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fee_session_groups`
--

CREATE TABLE `fee_session_groups` (
  `id` int(11) NOT NULL,
  `fee_groups_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fee_session_groups`
--

INSERT INTO `fee_session_groups` (`id`, `fee_groups_id`, `session_id`, `is_active`, `created_at`) VALUES
(1, 1, 16, 'no', '2021-07-21 10:06:42'),
(2, 2, 16, 'no', '2021-07-23 04:52:07');

-- --------------------------------------------------------

--
-- Table structure for table `filetypes`
--

CREATE TABLE `filetypes` (
  `id` int(11) NOT NULL,
  `file_extension` text DEFAULT NULL,
  `file_mime` text DEFAULT NULL,
  `file_size` int(11) NOT NULL,
  `image_extension` text DEFAULT NULL,
  `image_mime` text DEFAULT NULL,
  `image_size` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `filetypes`
--

INSERT INTO `filetypes` (`id`, `file_extension`, `file_mime`, `file_size`, `image_extension`, `image_mime`, `image_size`, `created_at`) VALUES
(1, 'pdf, zip, jpg, jpeg, png, txt, 7z, gif, csv, docx, mp3, mp4, accdb, odt, ods, ppt, pptx, xlsx, wmv, jfif, apk, ppt, bmp, jpe, mdb, rar, xls, svg', 'application/pdf, image/zip, image/jpg, image/png, image/jpeg, text/plain, application/x-zip-compressed, application/zip, image/gif, text/csv, application/vnd.openxmlformats-officedocument.wordprocessingml.document, audio/mpeg, application/msaccess, application/vnd.oasis.opendocument.text, application/vnd.oasis.opendocument.spreadsheet, application/vnd.ms-powerpoint, application/vnd.openxmlformats-officedocument.presentationml.presentation, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet, video/x-ms-wmv, video/mp4, image/jpeg, application/vnd.android.package-archive, application/x-msdownload, application/vnd.ms-powerpoint, image/bmp, image/jpeg, application/msaccess, application/vnd.ms-excel, image/svg+xml', 100048576, 'jfif, png, jpe, jpeg, jpg, bmp, gif, svg', 'image/jpeg, image/png, image/jpeg, image/jpeg, image/bmp, image/gif, image/x-ms-bmp, image/svg+xml', 10048576, '2021-01-30 05:03:03');

-- --------------------------------------------------------

--
-- Table structure for table `follow_up`
--

CREATE TABLE `follow_up` (
  `id` int(11) NOT NULL,
  `enquiry_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `next_date` date NOT NULL,
  `response` text NOT NULL,
  `note` text NOT NULL,
  `followup_by` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_media_gallery`
--

CREATE TABLE `front_cms_media_gallery` (
  `id` int(11) NOT NULL,
  `image` varchar(300) DEFAULT NULL,
  `thumb_path` varchar(300) DEFAULT NULL,
  `dir_path` varchar(300) DEFAULT NULL,
  `img_name` varchar(300) DEFAULT NULL,
  `thumb_name` varchar(300) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `file_type` varchar(100) NOT NULL,
  `file_size` varchar(100) NOT NULL,
  `vid_url` text NOT NULL,
  `vid_title` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_menus`
--

CREATE TABLE `front_cms_menus` (
  `id` int(11) NOT NULL,
  `menu` varchar(100) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `open_new_tab` int(10) NOT NULL DEFAULT 0,
  `ext_url` text NOT NULL,
  `ext_url_link` text NOT NULL,
  `publish` int(11) NOT NULL DEFAULT 0,
  `content_type` varchar(10) NOT NULL DEFAULT 'manual',
  `is_active` varchar(10) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `front_cms_menus`
--

INSERT INTO `front_cms_menus` (`id`, `menu`, `slug`, `description`, `open_new_tab`, `ext_url`, `ext_url_link`, `publish`, `content_type`, `is_active`, `created_at`) VALUES
(1, 'Main Menu', 'main-menu', 'Main menu', 0, '', '', 0, 'default', 'no', '2018-04-20 07:54:49'),
(2, 'Bottom Menu', 'bottom-menu', 'Bottom Menu', 0, '', '', 0, 'default', 'no', '2018-04-20 07:54:55');

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_menu_items`
--

CREATE TABLE `front_cms_menu_items` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `menu` varchar(100) DEFAULT NULL,
  `page_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `ext_url` text DEFAULT NULL,
  `open_new_tab` int(11) DEFAULT 0,
  `ext_url_link` text DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `publish` int(11) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `is_active` varchar(10) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `front_cms_menu_items`
--

INSERT INTO `front_cms_menu_items` (`id`, `menu_id`, `menu`, `page_id`, `parent_id`, `ext_url`, `open_new_tab`, `ext_url_link`, `slug`, `weight`, `publish`, `description`, `is_active`, `created_at`) VALUES
(1, 1, 'Home', 1, 0, NULL, NULL, NULL, 'home', 1, 0, NULL, 'no', '2019-12-02 14:11:50'),
(2, 1, 'Contact Us', 76, 0, NULL, NULL, NULL, 'contact-us', 4, 0, NULL, 'no', '2019-12-02 14:11:52'),
(3, 1, 'Complain', 2, 0, NULL, NULL, NULL, 'complain', 3, 0, NULL, 'no', '2019-12-02 14:11:52'),
(4, 1, 'Online Admission', 0, 0, '1', NULL, 'http://yourschoolurl.com/online_admission', 'admssion', 2, 0, NULL, 'no', '2019-12-21 07:33:00');

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_pages`
--

CREATE TABLE `front_cms_pages` (
  `id` int(11) NOT NULL,
  `page_type` varchar(10) NOT NULL DEFAULT 'manual',
  `is_homepage` int(1) DEFAULT 0,
  `title` varchar(250) DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `meta_title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keyword` text DEFAULT NULL,
  `feature_image` varchar(200) NOT NULL,
  `description` longtext DEFAULT NULL,
  `publish_date` date NOT NULL,
  `publish` int(10) DEFAULT 0,
  `sidebar` int(10) DEFAULT 0,
  `is_active` varchar(10) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `front_cms_pages`
--

INSERT INTO `front_cms_pages` (`id`, `page_type`, `is_homepage`, `title`, `url`, `type`, `slug`, `meta_title`, `meta_description`, `meta_keyword`, `feature_image`, `description`, `publish_date`, `publish`, `sidebar`, `is_active`, `created_at`) VALUES
(1, 'default', 1, 'Home', 'page/home', 'page', 'home', '', '', '', '', '<p>home page</p>', '0000-00-00', 1, NULL, 'no', '2019-12-02 07:23:47'),
(2, 'default', 0, 'Complain', 'page/complain', 'page', 'complain', 'Complain form', '                                                                                                                                                                                    complain form                                                                                                                                                                                                                                ', 'complain form', '', '<p>[form-builder:complain]</p>', '0000-00-00', 1, NULL, 'no', '2019-11-13 02:16:36'),
(3, 'default', 0, '404 page', 'page/404-page', 'page', '404-page', '', '                                ', '', '', '<html>\r\n<head>\r\n <title></title>\r\n</head>\r\n<body>\r\n<p>404 page found</p>\r\n</body>\r\n</html>', '0000-00-00', 0, NULL, 'no', '2018-05-18 07:46:04'),
(4, 'default', 0, 'Contact us', 'page/contact-us', 'page', 'contact-us', '', '', '', '', '<section class=\"contact\">\r\n<div class=\"container\">\r\n<div class=\"row\">\r\n<h2 class=\"col-md-12 col-sm-12\">Send In Your Query</h2>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div class=\"col-md-12 col-sm-12\">[form-builder:contact_us]<!--./row--></div>\r\n<!--./col-md-12--></div>\r\n<!--./row--></div>\r\n<!--./container--></section>\r\n\r\n<div class=\"col-md-4 col-sm-4\">\r\n<div class=\"contact-item\"><img src=\"http://192.168.1.81/repos/smartschool/uploads/gallery/media/pin.svg\" />\r\n<h3>Our Location</h3>\r\n\r\n<p>350 Fifth Avenue, 34th floor New York NY 10118-3299 USA</p>\r\n</div>\r\n<!--./contact-item--></div>\r\n<!--./col-md-4-->\r\n\r\n<div class=\"col-md-4 col-sm-4\">\r\n<div class=\"contact-item\"><img src=\"http://192.168.1.81/repos/smartschool/uploads/gallery/media/phone.svg\" />\r\n<h3>CALL US</h3>\r\n\r\n<p>E-mail : info@abcschool.com</p>\r\n\r\n<p>Mobile : +91-9009987654</p>\r\n</div>\r\n<!--./contact-item--></div>\r\n<!--./col-md-4-->\r\n\r\n<div class=\"col-md-4 col-sm-4\">\r\n<div class=\"contact-item\"><img src=\"http://192.168.1.81/repos/smartschool/uploads/gallery/media/clock.svg\" />\r\n<h3>Working Hours</h3>\r\n\r\n<p>Mon-Fri : 9 am to 5 pm</p>\r\n\r\n<p>Sat : 9 am to 3 pm</p>\r\n</div>\r\n<!--./contact-item--></div>\r\n<!--./col-md-4-->\r\n\r\n<div class=\"col-md-12 col-sm-12\">\r\n<div class=\"mapWrapper fullwidth\"><iframe frameborder=\"0\" height=\"500\" marginheight=\"0\" marginwidth=\"0\" scrolling=\"no\" src=\"http://maps.google.com/maps?f=q&source=s_q&hl=EN&q=time+square&aq=&sll=40.716558,-73.931122&sspn=0.40438,1.056747&ie=UTF8&rq=1&ev=p&split=1&radius=33.22&hq=time+square&hnear=&ll=37.061753,-95.677185&spn=0.438347,0.769043&z=9&output=embed\" width=\"100%\"></iframe></div>\r\n</div>', '0000-00-00', 0, NULL, 'no', '2019-05-04 08:46:41');

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_page_contents`
--

CREATE TABLE `front_cms_page_contents` (
  `id` int(11) NOT NULL,
  `page_id` int(11) DEFAULT NULL,
  `content_type` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_programs`
--

CREATE TABLE `front_cms_programs` (
  `id` int(11) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `event_start` date DEFAULT NULL,
  `event_end` date DEFAULT NULL,
  `event_venue` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` varchar(10) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `meta_title` text NOT NULL,
  `meta_description` text NOT NULL,
  `meta_keyword` text NOT NULL,
  `feature_image` text NOT NULL,
  `publish_date` date NOT NULL,
  `publish` varchar(10) DEFAULT '0',
  `sidebar` int(10) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_program_photos`
--

CREATE TABLE `front_cms_program_photos` (
  `id` int(11) NOT NULL,
  `program_id` int(11) DEFAULT NULL,
  `media_gallery_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `front_cms_settings`
--

CREATE TABLE `front_cms_settings` (
  `id` int(11) NOT NULL,
  `theme` varchar(50) DEFAULT NULL,
  `is_active_rtl` int(10) DEFAULT 0,
  `is_active_front_cms` int(11) DEFAULT 0,
  `is_active_sidebar` int(1) DEFAULT 0,
  `logo` varchar(200) DEFAULT NULL,
  `contact_us_email` varchar(100) DEFAULT NULL,
  `complain_form_email` varchar(100) DEFAULT NULL,
  `sidebar_options` text NOT NULL,
  `whatsapp_url` varchar(255) NOT NULL,
  `fb_url` varchar(200) NOT NULL,
  `twitter_url` varchar(200) NOT NULL,
  `youtube_url` varchar(200) NOT NULL,
  `google_plus` varchar(200) NOT NULL,
  `instagram_url` varchar(200) NOT NULL,
  `pinterest_url` varchar(200) NOT NULL,
  `linkedin_url` varchar(200) NOT NULL,
  `google_analytics` text DEFAULT NULL,
  `footer_text` varchar(500) DEFAULT NULL,
  `cookie_consent` varchar(255) NOT NULL,
  `fav_icon` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `front_cms_settings`
--

INSERT INTO `front_cms_settings` (`id`, `theme`, `is_active_rtl`, `is_active_front_cms`, `is_active_sidebar`, `logo`, `contact_us_email`, `complain_form_email`, `sidebar_options`, `whatsapp_url`, `fb_url`, `twitter_url`, `youtube_url`, `google_plus`, `instagram_url`, `pinterest_url`, `linkedin_url`, `google_analytics`, `footer_text`, `cookie_consent`, `fav_icon`, `created_at`) VALUES
(1, 'material_pink', NULL, NULL, NULL, NULL, '', '', '[\"news\",\"complain\"]', '', '', '', '', '', '', '', '', '', '', '', '', '2020-02-28 05:48:32');

-- --------------------------------------------------------

--
-- Table structure for table `general_calls`
--

CREATE TABLE `general_calls` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact` varchar(12) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(500) NOT NULL,
  `follow_up_date` date NOT NULL,
  `call_dureation` varchar(50) NOT NULL,
  `note` text NOT NULL,
  `call_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` int(11) NOT NULL,
  `exam_type` varchar(250) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `point` float(10,1) DEFAULT NULL,
  `mark_from` float(10,2) DEFAULT NULL,
  `mark_upto` float(10,2) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `exam_type`, `name`, `point`, `mark_from`, `mark_upto`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'gpa', 'A', 8.0, 80.00, 75.00, '', 'no', '2021-10-07 10:35:42', NULL),
(3, 'gpa', 'B', 7.0, 59.00, 50.00, '', 'no', '2021-10-07 10:36:02', NULL),
(4, 'gpa', 'C', 6.0, 49.00, 40.00, '', 'no', '2021-10-07 10:36:13', NULL),
(5, 'gpa', 'D', 5.0, 39.00, 30.00, '', 'no', '2021-10-07 10:36:22', NULL),
(6, 'gpa', 'E', 4.0, 29.00, 0.00, '', 'no', '2021-10-07 10:36:32', NULL),
(7, 'coll_grade_system', 'A', 5.0, 100.00, 75.00, '', 'no', '2021-10-05 18:37:14', NULL),
(8, 'coll_grade_system', 'B', 4.0, 74.00, 65.00, '', 'no', '2021-10-05 18:37:35', NULL),
(9, 'coll_grade_system', 'C', 3.0, 64.00, 45.00, '', 'no', '2021-10-05 18:38:04', NULL),
(10, 'coll_grade_system', 'D', 2.0, 40.00, 21.00, '', 'no', '2021-07-23 07:15:25', NULL),
(11, 'coll_grade_system', 'F', 1.0, 20.00, 0.00, '', 'no', '2021-07-23 07:16:06', NULL),
(12, 'school_grade_system', 'A', 5.0, 100.00, 75.00, '', 'no', '2021-10-05 18:09:01', NULL),
(13, 'school_grade_system', 'B', 4.0, 74.00, 65.00, '', 'no', '2021-10-05 18:09:21', NULL),
(14, 'school_grade_system', 'C', 3.0, 45.00, 64.00, '', 'no', '2021-10-05 18:09:47', NULL),
(15, 'school_grade_system', 'D', 2.0, 30.00, 44.00, '', 'no', '2021-10-05 18:11:19', NULL),
(16, 'school_grade_system', 'F', 1.0, 29.00, 0.00, '', 'no', '2021-10-05 18:12:30', NULL),
(17, 'gpa', 'A+', 9.0, 100.00, 81.00, '', 'no', '2021-10-07 09:05:49', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `homework`
--

CREATE TABLE `homework` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `session_id` int(10) NOT NULL,
  `homework_date` date NOT NULL,
  `submit_date` date NOT NULL,
  `staff_id` int(11) NOT NULL,
  `subject_group_subject_id` int(11) DEFAULT NULL,
  `subject_id` int(11) NOT NULL,
  `description` text DEFAULT NULL,
  `create_date` date NOT NULL,
  `evaluation_date` date NOT NULL,
  `document` varchar(200) NOT NULL,
  `created_by` int(11) NOT NULL,
  `evaluated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `homework`
--

INSERT INTO `homework` (`id`, `class_id`, `section_id`, `session_id`, `homework_date`, `submit_date`, `staff_id`, `subject_group_subject_id`, `subject_id`, `description`, `create_date`, `evaluation_date`, `document`, `created_by`, `evaluated_by`) VALUES
(1, 1, 1, 16, '2021-07-24', '2021-07-26', 2, 12, 0, '<p>All homework must be submitted on Monday 26th July 2021</p>', '2021-07-23', '2021-07-23', '1.pdf', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `homework_evaluation`
--

CREATE TABLE `homework_evaluation` (
  `id` int(11) NOT NULL,
  `homework_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_session_id` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `homework_evaluation`
--

INSERT INTO `homework_evaluation` (`id`, `homework_id`, `student_id`, `student_session_id`, `date`, `status`) VALUES
(1, 1, 0, 3, '0000-00-00', 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `hostel`
--

CREATE TABLE `hostel` (
  `id` int(11) NOT NULL,
  `hostel_name` varchar(100) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `intake` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `hostel_rooms`
--

CREATE TABLE `hostel_rooms` (
  `id` int(11) NOT NULL,
  `hostel_id` int(11) DEFAULT NULL,
  `room_type_id` int(11) DEFAULT NULL,
  `room_no` varchar(200) DEFAULT NULL,
  `no_of_bed` int(11) DEFAULT NULL,
  `cost_per_bed` float(10,2) DEFAULT 0.00,
  `title` varchar(200) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `id_card`
--

CREATE TABLE `id_card` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `school_name` varchar(100) NOT NULL,
  `school_address` varchar(500) NOT NULL,
  `background` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `sign_image` varchar(100) NOT NULL,
  `enable_vertical_card` int(11) NOT NULL DEFAULT 0,
  `header_color` varchar(100) NOT NULL,
  `enable_admission_no` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_student_name` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_class` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_fathers_name` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_mothers_name` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_address` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_phone` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_dob` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_blood_group` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `status` tinyint(1) NOT NULL COMMENT '0=disable,1=enable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `id_card`
--

INSERT INTO `id_card` (`id`, `title`, `school_name`, `school_address`, `background`, `logo`, `sign_image`, `enable_vertical_card`, `header_color`, `enable_admission_no`, `enable_student_name`, `enable_class`, `enable_fathers_name`, `enable_mothers_name`, `enable_address`, `enable_phone`, `enable_dob`, `enable_blood_group`, `status`) VALUES
(1, 'Sample Student Identity Card Horizontal', 'Mount Carmel School', '110 Kings Street, CA  Phone: 456542 Email: mount@gmail.com', 'samplebackground12.png', 'samplelogo12.png', 'samplesign12.png', 0, '#595959', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1),
(2, 'Sample Student Identity Card Vertical', 'Mount Carmel School', '110 Kings Street, CA  Phone: 456542 Email: mount@gmail.com', 'samplebackground12.png', 'samplelogo12.png', 'samplesign12.png', 1, '#595959', 1, 1, 1, 1, 0, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

CREATE TABLE `income` (
  `id` int(11) NOT NULL,
  `inc_head_id` varchar(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `invoice_no` varchar(200) NOT NULL,
  `date` date DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `note` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'yes',
  `is_deleted` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  `documents` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `income`
--

INSERT INTO `income` (`id`, `inc_head_id`, `name`, `invoice_no`, `date`, `amount`, `note`, `is_active`, `is_deleted`, `created_at`, `updated_at`, `documents`) VALUES
(1, '1', 'Shirt', 'INV0001', '2021-07-26', 15000, 'School Uniform', 'yes', 'no', '2021-07-26 09:32:55', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `income_head`
--

CREATE TABLE `income_head` (
  `id` int(255) NOT NULL,
  `income_category` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_active` varchar(255) NOT NULL DEFAULT 'yes',
  `is_deleted` varchar(255) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `income_head`
--

INSERT INTO `income_head` (`id`, `income_category`, `description`, `is_active`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'Students\' Uniform', 'Students\' Uniform', 'yes', 'no', '2021-07-26 09:30:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL,
  `item_category_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `item_photo` varchar(225) DEFAULT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL,
  `item_store_id` int(11) DEFAULT NULL,
  `item_supplier_id` int(11) DEFAULT NULL,
  `quantity` int(100) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `item_category_id`, `name`, `unit`, `item_photo`, `description`, `created_at`, `updated_at`, `item_store_id`, `item_supplier_id`, `quantity`, `date`) VALUES
(1, 1, 'Tshirt (size 10)', '100', NULL, 'Tshirt (size 10)', '2021-07-26 09:21:39', NULL, NULL, NULL, 0, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `item_category`
--

CREATE TABLE `item_category` (
  `id` int(255) NOT NULL,
  `item_category` varchar(255) NOT NULL,
  `is_active` varchar(255) NOT NULL DEFAULT 'yes',
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item_category`
--

INSERT INTO `item_category` (`id`, `item_category`, `is_active`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Tshirts', 'yes', 'Tshirts', '2021-07-26 09:19:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `item_issue`
--

CREATE TABLE `item_issue` (
  `id` int(11) NOT NULL,
  `issue_type` varchar(15) DEFAULT NULL,
  `issue_to` varchar(100) DEFAULT NULL,
  `issue_by` varchar(100) DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `item_category_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `quantity` int(10) NOT NULL,
  `note` text NOT NULL,
  `is_returned` int(2) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_active` varchar(10) DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item_issue`
--

INSERT INTO `item_issue` (`id`, `issue_type`, `issue_to`, `issue_by`, `issue_date`, `return_date`, `item_category_id`, `item_id`, `quantity`, `note`, `is_returned`, `created_at`, `is_active`) VALUES
(1, '2', '2', 'Sherry Peter (ID/0005)', '2021-07-26', '2021-07-28', 1, 1, 3, '', 1, '2021-07-26 09:27:32', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `item_stock`
--

CREATE TABLE `item_stock` (
  `id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `symbol` varchar(10) NOT NULL DEFAULT '+',
  `store_id` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `purchase_price` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `attachment` varchar(250) DEFAULT NULL,
  `description` text NOT NULL,
  `is_active` varchar(10) DEFAULT 'yes',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item_stock`
--

INSERT INTO `item_stock` (`id`, `item_id`, `supplier_id`, `symbol`, `store_id`, `quantity`, `purchase_price`, `date`, `attachment`, `description`, `is_active`, `created_at`) VALUES
(1, 1, 1, '+', 1, 100, '15000', '2021-07-26', NULL, '', 'yes', '2021-07-26 09:25:06');

-- --------------------------------------------------------

--
-- Table structure for table `item_store`
--

CREATE TABLE `item_store` (
  `id` int(255) NOT NULL,
  `item_store` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item_store`
--

INSERT INTO `item_store` (`id`, `item_store`, `code`, `description`) VALUES
(1, 'Tshirt (size 10)', 'Tshirt (size 10)', 'Tshirt (size 10)');

-- --------------------------------------------------------

--
-- Table structure for table `item_supplier`
--

CREATE TABLE `item_supplier` (
  `id` int(255) NOT NULL,
  `item_supplier` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact_person_name` varchar(255) NOT NULL,
  `contact_person_phone` varchar(255) NOT NULL,
  `contact_person_email` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item_supplier`
--

INSERT INTO `item_supplier` (`id`, `item_supplier`, `phone`, `email`, `address`, `contact_person_name`, `contact_person_phone`, `contact_person_email`, `description`) VALUES
(1, 'DD SUPPLIER', '0712602202', 'budde@microtelecomms.com', 'P.O.Box 79307', 'Budde Maggidi', '0712602202', 'budde@microtelecomms.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `language` varchar(50) DEFAULT NULL,
  `short_code` varchar(255) NOT NULL,
  `country_code` varchar(255) NOT NULL,
  `is_deleted` varchar(10) NOT NULL DEFAULT 'yes',
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `language`, `short_code`, `country_code`, `is_deleted`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Azerbaijan', 'az', 'az', 'no', 'no', '2019-11-20 03:23:12', '0000-00-00'),
(2, 'Albanian', 'sq', 'al', 'no', 'no', '2019-11-20 03:42:42', '0000-00-00'),
(3, 'Amharic', 'am', 'am', 'no', 'no', '2019-11-20 03:24:23', '0000-00-00'),
(4, 'English', 'en', 'us', 'no', 'no', '2019-11-20 03:38:50', '0000-00-00'),
(5, 'Arabic', 'ar', 'sa', 'no', 'no', '2019-11-20 03:47:28', '0000-00-00'),
(7, 'Afrikaans', 'af', 'af', 'no', 'no', '2019-11-20 03:24:23', '0000-00-00'),
(8, 'Basque', 'eu', 'es', 'no', 'no', '2019-11-20 03:54:10', '0000-00-00'),
(11, 'Bengali', 'bn', 'in', 'no', 'no', '2019-11-20 03:41:53', '0000-00-00'),
(13, 'Bosnian', 'bs', 'bs', 'no', 'no', '2019-11-20 03:24:23', '0000-00-00'),
(14, 'Welsh', 'cy', 'cy', 'no', 'no', '2019-11-20 03:24:23', '0000-00-00'),
(15, 'Hungarian', 'hu', 'hu', 'no', 'no', '2019-11-20 03:24:23', '0000-00-00'),
(16, 'Vietnamese', 'vi', 'vi', 'no', 'no', '2019-11-20 03:24:23', '0000-00-00'),
(17, 'Haitian', 'ht', 'ht', 'no', 'no', '2021-01-22 23:09:32', '0000-00-00'),
(18, 'Galician', 'gl', 'gl', 'no', 'no', '2019-11-20 03:24:23', '0000-00-00'),
(19, 'Dutch', 'nl', 'nl', 'no', 'no', '2019-11-20 03:24:23', '0000-00-00'),
(21, 'Greek', 'el', 'gr', 'no', 'no', '2019-11-20 04:12:08', '0000-00-00'),
(22, 'Georgian', 'ka', 'ge', 'no', 'no', '2019-11-20 04:11:40', '0000-00-00'),
(23, 'Gujarati', 'gu', 'in', 'no', 'no', '2019-11-20 03:39:16', '0000-00-00'),
(24, 'Danish', 'da', 'dk', 'no', 'no', '2019-11-20 04:03:25', '0000-00-00'),
(25, 'Hebrew', 'he', 'il', 'no', 'no', '2019-11-20 04:13:50', '0000-00-00'),
(26, 'Yiddish', 'yi', 'il', 'no', 'no', '2019-11-20 04:25:33', '0000-00-00'),
(27, 'Indonesian', 'id', 'id', 'no', 'no', '2019-11-20 03:24:23', '0000-00-00'),
(28, 'Irish', 'ga', 'ga', 'no', 'no', '2019-11-20 03:24:23', '0000-00-00'),
(29, 'Italian', 'it', 'it', 'no', 'no', '2019-11-20 03:24:23', '0000-00-00'),
(30, 'Icelandic', 'is', 'is', 'no', 'no', '2019-11-20 03:24:23', '0000-00-00'),
(31, 'Spanish', 'es', 'es', 'no', 'no', '2019-11-20 03:24:23', '0000-00-00'),
(33, 'Kannada', 'kn', 'kn', 'no', 'no', '2019-11-20 03:24:23', '0000-00-00'),
(34, 'Catalan', 'ca', 'ca', 'no', 'no', '2019-11-20 03:24:23', '0000-00-00'),
(36, 'Chinese', 'zh', 'cn', 'no', 'no', '2019-11-20 04:01:48', '0000-00-00'),
(37, 'Korean', 'ko', 'kr', 'no', 'no', '2019-11-20 04:19:09', '0000-00-00'),
(38, 'Xhosa', 'xh', 'ls', 'no', 'no', '2019-11-20 04:24:39', '0000-00-00'),
(39, 'Latin', 'la', 'it', 'no', 'no', '2021-01-22 23:09:32', '0000-00-00'),
(40, 'Latvian', 'lv', 'lv', 'no', 'no', '2019-11-20 03:24:23', '0000-00-00'),
(41, 'Lithuanian', 'lt', 'lt', 'no', 'no', '2019-11-20 03:24:23', '0000-00-00'),
(43, 'Malagasy', 'mg', 'mg', 'no', 'no', '2019-11-20 03:24:23', '0000-00-00'),
(44, 'Malay', 'ms', 'ms', 'no', 'no', '2019-11-20 03:24:23', '0000-00-00'),
(45, 'Malayalam', 'ml', 'ml', 'no', 'no', '2019-11-20 03:24:23', '0000-00-00'),
(46, 'Maltese', 'mt', 'mt', 'no', 'no', '2019-11-20 03:24:23', '0000-00-00'),
(47, 'Macedonian', 'mk', 'mk', 'no', 'no', '2019-11-20 03:24:23', '0000-00-00'),
(48, 'Maori', 'mi', 'nz', 'no', 'no', '2019-11-20 04:20:27', '0000-00-00'),
(49, 'Marathi', 'mr', 'in', 'no', 'no', '2019-11-20 03:39:51', '0000-00-00'),
(51, 'Mongolian', 'mn', 'mn', 'no', 'no', '2019-11-20 03:24:23', '0000-00-00'),
(52, 'German', 'de', 'de', 'no', 'no', '2019-11-20 03:24:23', '0000-00-00'),
(53, 'Nepali', 'ne', 'ne', 'no', 'no', '2019-11-20 03:24:23', '0000-00-00'),
(54, 'Norwegian', 'no', 'no', 'no', 'no', '2019-11-20 03:24:23', '0000-00-00'),
(55, 'Punjabi', 'pa', 'in', 'no', 'no', '2019-11-20 03:40:16', '0000-00-00'),
(57, 'Persian', 'fa', 'ir', 'no', 'no', '2019-11-20 04:21:17', '0000-00-00'),
(59, 'Portuguese', 'pt', 'pt', 'no', 'no', '2019-11-20 03:24:23', '0000-00-00'),
(60, 'Romanian', 'ro', 'ro', 'no', 'no', '2019-11-20 03:24:23', '0000-00-00'),
(61, 'Russian', 'ru', 'ru', 'no', 'no', '2019-11-20 03:24:23', '0000-00-00'),
(62, 'Cebuano', 'ceb', 'ph', 'no', 'no', '2019-11-20 03:59:12', '0000-00-00'),
(64, 'Sinhala', 'si', 'lk ', 'no', 'no', '2021-01-22 23:09:32', '0000-00-00'),
(65, 'Slovakian', 'sk', 'sk', 'no', 'no', '2019-11-20 03:24:23', '0000-00-00'),
(66, 'Slovenian', 'sl', 'sl', 'no', 'no', '2019-11-20 03:24:23', '0000-00-00'),
(67, 'Swahili', 'sw', 'ke', 'no', 'no', '2019-11-20 04:21:57', '0000-00-00'),
(68, 'Sundanese', 'su', 'sd', 'no', 'no', '2019-12-03 03:06:57', '0000-00-00'),
(70, 'Thai', 'th', 'th', 'no', 'no', '2019-11-20 03:24:23', '0000-00-00'),
(71, 'Tagalog', 'tl', 'tl', 'no', 'no', '2019-11-20 03:24:23', '0000-00-00'),
(72, 'Tamil', 'ta', 'in', 'no', 'no', '2019-11-20 03:40:53', '0000-00-00'),
(74, 'Telugu', 'te', 'in', 'no', 'no', '2019-11-20 03:41:15', '0000-00-00'),
(75, 'Turkish', 'tr', 'tr', 'no', 'no', '2019-11-20 03:24:23', '0000-00-00'),
(77, 'Uzbek', 'uz', 'uz', 'no', 'no', '2019-11-20 03:24:23', '0000-00-00'),
(79, 'Urdu', 'ur', 'pk', 'no', 'no', '2019-11-20 04:23:57', '0000-00-00'),
(80, 'Finnish', 'fi', 'fi', 'no', 'no', '2019-11-20 03:24:23', '0000-00-00'),
(81, 'French', 'fr', 'fr', 'no', 'no', '2019-11-20 03:24:23', '0000-00-00'),
(82, 'Hindi', 'hi', 'in', 'no', 'no', '2019-11-20 03:36:34', '0000-00-00'),
(84, 'Czech', 'cs', 'cz', 'no', 'no', '2019-11-20 04:02:36', '0000-00-00'),
(85, 'Swedish', 'sv', 'sv', 'no', 'no', '2019-11-20 03:24:23', '0000-00-00'),
(86, 'Scottish', 'gd', 'gd', 'no', 'no', '2019-11-20 03:24:23', '0000-00-00'),
(87, 'Estonian', 'et', 'et', 'no', 'no', '2019-11-20 03:24:23', '0000-00-00'),
(88, 'Esperanto', 'eo', 'br', 'no', 'no', '2019-11-20 20:49:18', '0000-00-00'),
(89, 'Javanese', 'jv', 'id', 'no', 'no', '2019-11-20 04:18:29', '0000-00-00'),
(90, 'Japanese', 'ja', 'jp', 'no', 'no', '2019-11-20 04:14:39', '0000-00-00'),
(91, 'Polish', 'pl', 'pl', 'no', 'no', '2020-06-14 20:25:27', '0000-00-00'),
(92, 'Kurdish', 'ku', 'iq', 'no', 'no', '2020-12-20 16:15:31', '0000-00-00'),
(93, 'Lao', 'lo', 'la', 'no', 'no', '2020-12-20 16:15:36', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `leave_types`
--

CREATE TABLE `leave_types` (
  `id` int(11) NOT NULL,
  `type` varchar(200) NOT NULL,
  `is_active` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE `lesson` (
  `id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `subject_group_subject_id` int(11) NOT NULL,
  `subject_group_class_sections_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `libarary_members`
--

CREATE TABLE `libarary_members` (
  `id` int(11) UNSIGNED NOT NULL,
  `library_card_no` varchar(50) DEFAULT NULL,
  `member_type` varchar(50) DEFAULT NULL,
  `member_id` int(11) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `libarary_members`
--

INSERT INTO `libarary_members` (`id`, `library_card_no`, `member_type`, `member_id`, `is_active`, `created_at`) VALUES
(1, 'LIB/0001', 'student', 1, 'no', '2021-07-21 09:54:15'),
(2, 'LIB/0002', 'student', 2, 'no', '2021-07-21 09:54:28');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `message` text DEFAULT NULL,
  `record_id` text DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL,
  `ip_address` varchar(50) DEFAULT NULL,
  `platform` varchar(50) DEFAULT NULL,
  `agent` varchar(50) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES
(1, 'New Record inserted On sections id 1', '1', 1, 'Insert', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 10:59:00', NULL),
(2, 'New Record inserted On subject groups id 1', '1', 1, 'Insert', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 11:00:27', NULL),
(3, 'New Record inserted On subject groups id 2', '2', 1, 'Insert', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 11:02:26', NULL),
(4, 'New Record inserted On subjects id 1', '1', 1, 'Insert', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 11:03:58', NULL),
(5, 'New Record inserted On subjects id 2', '2', 1, 'Insert', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 11:04:15', NULL),
(6, 'New Record inserted On subjects id 3', '3', 1, 'Insert', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 11:04:29', NULL),
(7, 'New Record inserted On subjects id 4', '4', 1, 'Insert', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 11:04:43', NULL),
(8, 'New Record inserted On subjects id 5', '5', 1, 'Insert', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 11:04:55', NULL),
(9, 'New Record inserted On subjects id 6', '6', 1, 'Insert', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 11:05:17', NULL),
(10, 'New Record inserted On subjects id 7', '7', 1, 'Insert', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 11:05:28', NULL),
(11, 'New Record inserted On subjects id 8', '8', 1, 'Insert', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 11:06:08', NULL),
(12, 'New Record inserted On subjects id 9', '9', 1, 'Insert', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 11:06:19', NULL),
(13, 'New Record inserted On subjects id 10', '10', 1, 'Insert', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 11:06:32', NULL),
(14, 'New Record inserted On subject groups id 1', '1', 1, 'Insert', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 11:08:24', NULL),
(15, 'Record deleted On subject groups id 1', '1', 1, 'Delete', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 11:11:15', NULL),
(16, 'New Record inserted On  staff designation id 1', '1', 1, 'Insert', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 11:12:31', NULL),
(17, 'New Record inserted On  staff designation id 2', '2', 1, 'Insert', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 11:12:48', NULL),
(18, 'New Record inserted On department id 1', '1', 1, 'Insert', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 11:15:53', NULL),
(19, 'New Record inserted On department id 2', '2', 1, 'Insert', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 11:16:12', NULL),
(20, 'Record updated On staff id 2', '2', 1, 'Update', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 11:27:49', NULL),
(21, 'Record updated On staff id 2', '2', 1, 'Update', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 11:27:57', NULL),
(22, 'Record updated On settings id 1', '1', 1, 'Update', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 11:39:10', NULL),
(23, 'Record updated On settings id 1', '1', 1, 'Update', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 14:39:53', NULL),
(24, 'Record updated On settings id 1', '1', 1, 'Update', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 14:40:23', NULL),
(25, 'New Record inserted On students id 1', '1', 1, 'Insert', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 14:46:03', NULL),
(26, 'New Record inserted On  student session id 1', '1', 1, 'Insert', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 14:46:03', NULL),
(27, 'New Record inserted On users id 1', '1', 1, 'Insert', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 14:46:03', NULL),
(28, 'New Record inserted On users id 2', '2', 1, 'Insert', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 14:46:03', NULL),
(29, 'Record updated On students id 1', '1', 1, 'Update', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 14:46:03', NULL),
(30, 'Record updated On students id 1', '1', 1, 'Update', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 14:46:03', NULL),
(31, 'Record updated On students id 1', '1', 1, 'Update', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 14:46:03', NULL),
(32, 'Record updated On students id 1', '1', 1, 'Update', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 14:46:03', NULL),
(33, 'Record updated On students id 1', '1', 1, 'Update', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 14:46:03', NULL),
(34, 'Record updated On sessions id 15', '15', 1, 'Update', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 14:47:32', NULL),
(35, 'Record updated On sessions id 16', '16', 1, 'Update', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 14:47:56', NULL),
(36, 'Record updated On sessions id 18', '18', 1, 'Update', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 14:48:26', NULL),
(37, 'Record updated On settings id 1', '1', 1, 'Update', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 14:57:56', NULL),
(38, 'Record updated On settings id 1', '1', 1, 'Update', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 14:58:00', NULL),
(39, 'Record updated On settings id 1', '1', 1, 'Update', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 14:58:06', NULL),
(40, 'Record updated On settings id 1', '1', 1, 'Update', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 14:58:14', NULL),
(41, 'New Record inserted On exam groups id 1', '1', 1, 'Insert', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 15:01:57', NULL),
(42, 'New Record inserted On exam group exams name id 1', '1', 1, 'Insert', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 15:03:31', NULL),
(43, 'New Record inserted On roles id 8', '8', 1, 'Insert', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 15:22:44', NULL),
(44, 'Record deleted On roles id 8', '8', 1, 'Delete', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 15:25:27', NULL),
(45, 'New Record inserted On students id 2', '2', 1, 'Insert', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 15:59:38', NULL),
(46, 'New Record inserted On  student session id 2', '2', 1, 'Insert', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 15:59:38', NULL),
(47, 'New Record inserted On users id 3', '3', 1, 'Insert', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 15:59:38', NULL),
(48, 'New Record inserted On users id 4', '4', 1, 'Insert', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 15:59:38', NULL),
(49, 'Record updated On students id 2', '2', 1, 'Update', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 15:59:38', NULL),
(50, 'Record updated On students id 2', '2', 1, 'Update', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 15:59:38', NULL),
(51, 'Record updated On students id 2', '2', 1, 'Update', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 15:59:38', NULL),
(52, 'Record updated On students id 2', '2', 1, 'Update', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 15:59:38', NULL),
(53, 'Record updated On  certificates id 1', '1', 1, 'Update', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 16:30:02', NULL),
(54, 'New Record inserted On books id 1', '1', 1, 'Insert', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 16:33:21', NULL),
(55, 'Record updated On staff id 3', '3', 1, 'Update', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 16:36:06', NULL),
(56, 'Record updated On staff id 3', '3', 1, 'Update', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 16:36:06', NULL),
(57, 'Record updated On staff id 3', '3', 1, 'Update', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 16:39:03', NULL),
(58, 'Record updated On staff id 3', '3', 1, 'Update', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 16:39:03', NULL),
(59, 'New Record inserted On libarary members id 1', '1', 3, 'Insert', '156.157.148.225', 'Windows 10', 'Firefox 89.0', '2021-07-21 16:54:15', NULL),
(60, 'New Record inserted On libarary members id 2', '2', 3, 'Insert', '156.157.148.225', 'Windows 10', 'Firefox 89.0', '2021-07-21 16:54:28', NULL),
(61, 'New Record inserted On book issues id 1', '1', 3, 'Insert', '156.157.148.225', 'Windows 10', 'Firefox 89.0', '2021-07-21 16:55:06', NULL),
(62, 'Record updated On staff id 4', '4', 1, 'Update', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 16:59:54', NULL),
(63, 'Record updated On staff id 2', '2', 1, 'Update', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 17:00:40', NULL),
(64, 'Record updated On staff id 2', '2', 1, 'Update', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 17:00:40', NULL),
(65, 'New Record inserted On  fee group id 1', '1', 4, 'Insert', '156.157.148.225', 'Windows 10', 'Firefox 89.0', '2021-07-21 17:04:00', NULL),
(66, 'New Record inserted On  fee type id 1', '1', 4, 'Insert', '156.157.148.225', 'Windows 10', 'Firefox 89.0', '2021-07-21 17:04:50', NULL),
(67, 'New Record inserted On  fee type id 2', '2', 4, 'Insert', '156.157.148.225', 'Windows 10', 'Firefox 89.0', '2021-07-21 17:05:15', NULL),
(68, 'New Record inserted On  fee groups feetype id 1', '1', 4, 'Insert', '156.157.148.225', 'Windows 10', 'Firefox 89.0', '2021-07-21 17:06:42', NULL),
(69, 'New Record inserted On  fee groups feetype id 2', '2', 4, 'Insert', '156.157.148.225', 'Windows 10', 'Firefox 89.0', '2021-07-21 17:07:13', NULL),
(70, 'Record updated On staff id 5', '5', 1, 'Update', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 17:32:52', NULL),
(71, 'Record updated On staff id 5', '5', 1, 'Update', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 17:32:52', NULL),
(72, 'Record updated On staff id 5', '5', 1, 'Update', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 17:35:11', NULL),
(73, 'Record updated On staff id 5', '5', 1, 'Update', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 17:35:11', NULL),
(74, 'Record deleted On sessions id 7', '7', 1, 'Delete', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 17:39:07', NULL),
(75, 'Record deleted On sessions id 11', '11', 1, 'Delete', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 17:39:15', NULL),
(76, 'Record deleted On sessions id 13', '13', 1, 'Delete', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 17:39:25', NULL),
(77, 'Record deleted On sessions id 14', '14', 1, 'Delete', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 17:39:36', NULL),
(78, 'Record deleted On sessions id 15', '15', 1, 'Delete', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 17:39:48', NULL),
(79, 'Record updated On sessions id 19', '19', 1, 'Update', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 17:40:17', NULL),
(80, 'Record updated On sessions id 20', '20', 1, 'Update', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 17:40:33', NULL),
(81, 'Record updated On sessions id 21', '21', 1, 'Update', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 17:40:56', NULL),
(82, 'Record updated On sessions id 22', '22', 1, 'Update', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 17:41:26', NULL),
(83, 'Record updated On sessions id 23', '23', 1, 'Update', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 17:41:40', NULL),
(84, 'Record updated On sessions id 24', '24', 1, 'Update', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 17:41:54', NULL),
(85, 'Record updated On sessions id 25', '25', 1, 'Update', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 17:42:18', NULL),
(86, 'New Record inserted On sessions id 26', '26', 1, 'Insert', '156.157.148.225', 'Windows 10', 'Chrome 91.0.4472.124', '2021-07-21 17:42:25', NULL),
(87, 'New Record inserted On  student attendences id 1', '1', 2, 'Insert', '156.157.148.225', 'Android', 'Chrome 87.0.4280.141', '2021-07-22 08:05:52', NULL),
(88, 'New Record inserted On  student attendences id 2', '2', 2, 'Insert', '156.157.148.225', 'Android', 'Chrome 87.0.4280.141', '2021-07-22 08:05:52', NULL),
(89, 'Record updated On settings id 1', '1', 1, 'Update', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 06:18:20', NULL),
(90, 'Record updated On settings id 1', '1', 1, 'Update', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 06:19:19', NULL),
(91, 'Record updated On settings id 1', '1', 1, 'Update', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 06:19:41', NULL),
(92, 'New Record inserted On exam groups id 2', '2', 1, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 06:24:43', NULL),
(93, 'New Record inserted On exam group exams name id 2', '2', 1, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 06:25:43', NULL),
(94, 'New Record inserted On subjects id 11', '11', 1, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 06:28:00', NULL),
(95, 'New Record inserted On subjects id 12', '12', 1, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 06:28:15', NULL),
(96, 'New Record inserted On subjects id 13', '13', 1, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 06:28:35', NULL),
(97, 'New Record inserted On subjects id 14', '14', 1, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 06:28:52', NULL),
(98, 'New Record inserted On subjects id 15', '15', 1, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 06:29:12', NULL),
(99, 'New Record inserted On subjects id 16', '16', 1, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 06:29:39', NULL),
(100, 'New Record inserted On subjects id 17', '17', 1, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 06:30:01', NULL),
(101, 'New Record inserted On subjects id 18', '18', 1, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 06:46:12', NULL),
(102, 'New Record inserted On subjects id 19', '19', 1, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 06:46:54', NULL),
(103, 'New Record inserted On students id 3', '3', 1, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 06:57:24', NULL),
(104, 'New Record inserted On  student session id 3', '3', 1, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 06:57:24', NULL),
(105, 'New Record inserted On users id 5', '5', 1, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 06:57:24', NULL),
(106, 'New Record inserted On users id 6', '6', 1, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 06:57:24', NULL),
(107, 'Record updated On students id 3', '3', 1, 'Update', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 06:57:24', NULL),
(108, 'New Record inserted On students id 4', '4', 1, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 07:00:42', NULL),
(109, 'New Record inserted On  student session id 4', '4', 1, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 07:00:42', NULL),
(110, 'New Record inserted On users id 7', '7', 1, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 07:00:42', NULL),
(111, 'New Record inserted On users id 8', '8', 1, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 07:00:42', NULL),
(112, 'Record updated On students id 4', '4', 1, 'Update', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 07:00:42', NULL),
(113, 'New Record inserted On students id 5', '5', 1, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 07:47:17', NULL),
(114, 'New Record inserted On  student session id 5', '5', 1, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 07:47:17', NULL),
(115, 'New Record inserted On users id 9', '9', 1, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 07:47:17', NULL),
(116, 'New Record inserted On users id 10', '10', 1, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 07:47:17', NULL),
(117, 'Record updated On students id 5', '5', 1, 'Update', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 07:47:17', NULL),
(118, 'New Record inserted On  fee type id 3', '3', 1, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 11:49:15', NULL),
(119, 'New Record inserted On  fee type id 4', '4', 1, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 11:49:32', NULL),
(120, 'Record updated On  fee type id 1', '1', 1, 'Update', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 11:49:55', NULL),
(121, 'Record updated On  fee type id 2', '2', 1, 'Update', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 11:50:20', NULL),
(122, 'New Record inserted On  fee group id 2', '2', 1, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 11:51:25', NULL),
(123, 'New Record inserted On  fee groups feetype id 3', '3', 1, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 11:52:07', NULL),
(124, 'New Record inserted On  fee groups feetype id 4', '4', 1, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 11:52:30', NULL),
(125, 'New Record inserted On class teacher id 1', '1', 1, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 11:54:15', NULL),
(126, 'New Record inserted On class teacher id 2', '2', 1, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 11:54:25', NULL),
(127, 'New Record inserted On  student attendences id 3', '3', 2, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 11:56:41', NULL),
(128, 'New Record inserted On  student attendences id 4', '4', 2, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 11:56:41', NULL),
(129, 'New Record inserted On  student attendences id 5', '5', 2, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 11:56:41', NULL),
(130, 'New Record inserted On  student attendences id 6', '6', 2, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 11:58:59', NULL),
(131, 'New Record inserted On  student attendences id 7', '7', 2, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 11:58:59', NULL),
(132, 'New Record inserted On  student attendences id 8', '8', 2, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 11:58:59', NULL),
(133, 'New Record inserted On  student attendences id 9', '9', 2, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 11:59:24', NULL),
(134, 'New Record inserted On  student attendences id 10', '10', 2, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 11:59:24', NULL),
(135, 'New Record inserted On  student attendences id 11', '11', 2, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 11:59:24', NULL),
(136, 'New Record inserted On  student attendences id 12', '12', 2, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 11:59:46', NULL),
(137, 'New Record inserted On  student attendences id 13', '13', 2, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 11:59:46', NULL),
(138, 'New Record inserted On  student attendences id 14', '14', 2, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 11:59:46', NULL),
(139, 'New Record inserted On  student attendences id 15', '15', 2, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 12:00:09', NULL),
(140, 'New Record inserted On  student attendences id 16', '16', 2, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 12:00:09', NULL),
(141, 'New Record inserted On  student attendences id 17', '17', 2, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 12:00:09', NULL),
(142, 'New Record inserted On  student attendences id 18', '18', 2, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 12:00:32', NULL),
(143, 'New Record inserted On  student attendences id 19', '19', 2, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 12:00:32', NULL),
(144, 'New Record inserted On  student attendences id 20', '20', 2, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 12:00:32', NULL),
(145, 'New Record inserted On  student attendences id 21', '21', 2, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 12:00:53', NULL),
(146, 'New Record inserted On  student attendences id 22', '22', 2, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 12:00:53', NULL),
(147, 'New Record inserted On  student attendences id 23', '23', 2, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 12:00:53', NULL),
(148, 'New Record inserted On contents id 1', '1', 2, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 12:22:10', NULL),
(149, 'Record updated On  contents id 1', '1', 2, 'Update', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 12:22:10', NULL),
(150, 'New Record inserted On contents id 2', '2', 2, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 12:24:54', NULL),
(151, 'Record updated On  contents id 2', '2', 2, 'Update', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 12:24:54', NULL),
(152, 'New Record inserted On subject groups id 2', '2', 1, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 12:32:23', NULL),
(153, 'New Record inserted On homework id 1', '1', 2, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 12:37:46', NULL),
(154, 'Record updated On homework id 1', '1', 2, 'Update', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 12:37:46', NULL),
(155, 'Record updated On homework id 1', '1', 2, 'Update', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 12:38:48', NULL),
(156, 'New Record inserted On subject groups id 3', '3', 1, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 13:32:44', NULL),
(157, 'New Record inserted On subjects id 20', '20', 1, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 13:33:14', NULL),
(158, 'New Record inserted On subjects id 21', '21', 1, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 13:33:37', NULL),
(159, 'New Record inserted On subjects id 22', '22', 1, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 13:33:51', NULL),
(160, 'New Record inserted On subjects id 23', '23', 1, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 13:34:47', NULL),
(161, 'New Record inserted On subjects id 24', '24', 1, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 13:35:03', NULL),
(162, 'New Record inserted On subjects id 25', '25', 1, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 13:35:35', NULL),
(163, 'New Record inserted On subject groups id 3', '3', 1, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 13:39:05', NULL),
(164, 'New Record inserted On exam groups id 3', '3', 1, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 13:39:48', NULL),
(165, 'New Record inserted On exam group exams name id 3', '3', 1, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 13:40:50', NULL),
(166, 'New Record inserted On students id 6', '6', 1, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 13:46:33', NULL),
(167, 'New Record inserted On  student session id 6', '6', 1, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 13:46:33', NULL),
(168, 'New Record inserted On users id 11', '11', 1, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 13:46:33', NULL),
(169, 'New Record inserted On users id 12', '12', 1, 'Insert', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 13:46:33', NULL),
(170, 'Record updated On students id 6', '6', 1, 'Update', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 13:46:33', NULL),
(171, 'New Record inserted On grades id 1', '1', 1, 'Update', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 13:51:48', NULL),
(172, 'Record updated On grades id 1', '1', 1, 'Update', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 13:52:16', NULL),
(173, 'Record updated On grades id 1', '1', 1, 'Update', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 13:53:11', NULL),
(174, 'New Record inserted On grades id 2', '2', 1, 'Update', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 13:53:44', NULL),
(175, 'New Record inserted On grades id 3', '3', 1, 'Update', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 13:54:37', NULL),
(176, 'New Record inserted On grades id 4', '4', 1, 'Update', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 13:55:33', NULL),
(177, 'New Record inserted On grades id 5', '5', 1, 'Update', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 13:55:52', NULL),
(178, 'New Record inserted On grades id 6', '6', 1, 'Update', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 13:56:14', NULL),
(179, 'Record updated On grades id 1', '1', 1, 'Update', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 14:00:59', NULL),
(180, 'Record updated On grades id 2', '2', 1, 'Update', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 14:01:10', NULL),
(181, 'Record updated On grades id 3', '3', 1, 'Update', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 14:01:22', NULL),
(182, 'Record updated On grades id 4', '4', 1, 'Update', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 14:01:32', NULL),
(183, 'Record updated On grades id 5', '5', 1, 'Update', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 14:01:41', NULL),
(184, 'Record updated On grades id 6', '6', 1, 'Update', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 14:01:53', NULL),
(185, 'Record updated On  exam groups id 3', '3', 1, 'Update', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 14:03:56', NULL),
(186, 'New Record inserted On grades id 7', '7', 1, 'Update', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 14:09:30', NULL),
(187, 'Record updated On grades id 7', '7', 1, 'Update', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 14:09:51', NULL),
(188, 'Record updated On grades id 7', '7', 1, 'Update', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 14:11:37', NULL),
(189, 'Record updated On  exam groups id 1', '1', 1, 'Update', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 14:12:23', NULL),
(190, 'Record updated On  exam groups id 2', '2', 1, 'Update', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 14:13:10', NULL),
(191, 'New Record inserted On grades id 8', '8', 1, 'Update', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 14:14:27', NULL),
(192, 'Record updated On grades id 7', '7', 1, 'Update', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 14:14:40', NULL),
(193, 'New Record inserted On grades id 9', '9', 1, 'Update', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 14:15:04', NULL),
(194, 'New Record inserted On grades id 10', '10', 1, 'Update', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 14:15:25', NULL),
(195, 'Record updated On grades id 9', '9', 1, 'Update', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 14:15:36', NULL),
(196, 'New Record inserted On grades id 11', '11', 1, 'Update', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 14:16:06', NULL),
(197, 'Record updated On settings id 1', '1', 1, 'Update', '41.75.220.140', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-23 14:35:54', NULL),
(198, 'New Record inserted On  marksheets id 2', '2', 2, 'Insert', '197.250.194.211', 'Windows 10', 'Chrome 92.0.4515.107', '2021-07-23 14:44:23', NULL),
(199, 'New Record inserted On subject groups id 4', '4', 1, 'Insert', '197.186.29.54', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-24 05:25:45', NULL),
(200, 'New Record inserted On subjects id 26', '26', 1, 'Insert', '197.186.29.54', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-24 05:26:32', NULL),
(201, 'New Record inserted On subjects id 27', '27', 1, 'Insert', '197.186.29.54', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-24 05:27:17', NULL),
(202, 'New Record inserted On subjects id 28', '28', 1, 'Insert', '197.186.29.54', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-24 05:27:36', NULL),
(203, 'New Record inserted On subject groups id 4', '4', 1, 'Insert', '197.186.29.54', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-24 05:28:52', NULL),
(204, 'New Record inserted On grades id 12', '12', 1, 'Update', '197.186.29.54', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-24 05:31:33', NULL),
(205, 'Record updated On grades id 12', '12', 1, 'Update', '197.186.29.54', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-24 05:32:23', NULL),
(206, 'New Record inserted On grades id 13', '13', 1, 'Update', '197.186.29.54', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-24 05:32:49', NULL),
(207, 'New Record inserted On grades id 14', '14', 1, 'Update', '197.186.29.54', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-24 05:33:19', NULL),
(208, 'New Record inserted On grades id 15', '15', 1, 'Update', '197.186.29.54', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-24 05:33:47', NULL),
(209, 'New Record inserted On grades id 16', '16', 1, 'Update', '197.186.29.54', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-24 05:34:18', NULL),
(210, 'New Record inserted On exam groups id 4', '4', 1, 'Insert', '197.186.29.54', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-24 05:35:38', NULL),
(211, 'New Record inserted On exam group exams name id 4', '4', 1, 'Insert', '197.186.29.54', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-24 05:36:22', NULL),
(212, 'New Record inserted On students id 7', '7', 1, 'Insert', '197.186.29.54', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-24 05:41:24', NULL),
(213, 'New Record inserted On  student session id 7', '7', 1, 'Insert', '197.186.29.54', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-24 05:41:24', NULL),
(214, 'New Record inserted On users id 13', '13', 1, 'Insert', '197.186.29.54', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-24 05:41:24', NULL),
(215, 'New Record inserted On users id 14', '14', 1, 'Insert', '197.186.29.54', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-24 05:41:24', NULL),
(216, 'Record updated On students id 7', '7', 1, 'Update', '197.186.29.54', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-24 05:41:24', NULL),
(217, 'New Record inserted On subjects id 29', '29', 1, 'Insert', '197.186.29.54', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-24 05:48:07', NULL),
(218, 'New Record inserted On subjects id 30', '30', 1, 'Insert', '197.186.29.54', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-24 05:48:25', NULL),
(219, 'New Record inserted On subjects id 31', '31', 1, 'Insert', '197.186.29.54', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-24 05:48:50', NULL),
(220, 'Record updated On students id 3', '3', 1, 'Update', '197.186.29.54', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-24 08:38:39', NULL),
(221, 'Record updated On  student session id 3', '3', 1, 'Update', '197.186.29.54', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-24 08:38:39', NULL),
(222, 'New Record inserted On messages id 1', '1', 1, 'Insert', '156.159.61.125', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-25 16:41:01', NULL),
(223, 'New Record inserted On messages id 2', '2', 1, 'Insert', '156.159.61.125', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-25 16:44:17', NULL),
(224, 'Record updated On students id 5', '5', 1, 'Update', '156.159.61.125', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-25 16:47:13', NULL),
(225, 'Record updated On  student session id 5', '5', 1, 'Update', '156.159.61.125', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-25 16:47:13', NULL),
(226, 'New Record inserted On messages id 3', '3', 1, 'Insert', '156.159.61.125', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-25 16:48:48', NULL),
(227, 'Record updated On  email config id 1', '1', 1, 'Update', '156.159.61.125', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-25 16:56:24', NULL),
(228, 'New Record inserted On messages id 4', '4', 1, 'Insert', '156.159.61.125', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-25 16:57:56', NULL),
(229, 'New Record inserted On sms config id 1', '1', 1, 'Insert', '156.159.61.125', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-25 17:26:16', NULL),
(230, 'Record updated On students id 5', '5', 1, 'Update', '156.159.61.125', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-25 17:27:49', NULL),
(231, 'Record updated On  student session id 5', '5', 1, 'Update', '156.159.61.125', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-25 17:27:49', NULL),
(232, 'New Record inserted On messages id 5', '5', 1, 'Insert', '156.159.61.125', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-25 17:31:45', NULL),
(233, 'Record updated On sms config id nexmo', 'nexmo', 1, 'Update', '156.159.61.125', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-25 17:37:32', NULL),
(234, 'Record updated On sms config id nexmo', 'nexmo', 1, 'Update', '156.159.61.125', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-25 17:37:35', NULL),
(235, 'New Record inserted On messages id 6', '6', 1, 'Insert', '156.159.61.125', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-25 17:38:38', NULL),
(236, 'Record updated On staff id 1', '1', 0, 'Update', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-26 13:37:24', NULL),
(237, 'New Record inserted On  student attendences id 24', '24', 1, 'Insert', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-26 13:46:54', NULL),
(238, 'New Record inserted On  student attendences id 25', '25', 1, 'Insert', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-26 13:46:54', NULL),
(239, 'New Record inserted On  student attendences id 26', '26', 1, 'Insert', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-26 13:46:54', NULL),
(240, 'New Record inserted On  student attendences id 27', '27', 1, 'Insert', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-26 13:47:25', NULL),
(241, 'New Record inserted On  student attendences id 28', '28', 1, 'Insert', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-26 13:47:25', NULL),
(242, 'New Record inserted On  student attendences id 29', '29', 1, 'Insert', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-26 13:47:53', NULL),
(243, 'New Record inserted On staff payslip id 1', '1', 1, 'Insert', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-26 13:58:30', NULL),
(244, 'New Record inserted On payslip allowance id 1', '1', 1, 'Insert', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-26 13:58:30', NULL),
(245, 'New Record inserted On payslip allowance id 2', '2', 1, 'Insert', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-26 13:58:30', NULL),
(246, 'Record updated On staff id 4', '4', 1, 'Update', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-26 13:59:44', NULL),
(247, 'Record updated On staff id 4', '4', 1, 'Update', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-26 13:59:44', NULL),
(248, 'Record updated On staff id 4', '4', 1, 'Update', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-26 13:59:44', NULL),
(249, 'Record updated On staff id 1', '1', 1, 'Update', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-26 14:00:51', NULL),
(250, 'Record updated On staff id 1', '1', 1, 'Update', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-26 14:00:51', NULL),
(251, 'Record updated On staff id 1', '1', 1, 'Update', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-26 14:00:51', NULL),
(252, 'Record updated On  staff designation id 1', '1', 1, 'Update', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-26 14:03:09', NULL),
(253, 'Record updated On  staff designation id 2', '2', 1, 'Update', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-26 14:03:49', NULL),
(254, 'New Record inserted On  staff designation id 3', '3', 1, 'Insert', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-26 14:04:19', NULL),
(255, 'New Record inserted On  staff designation id 4', '4', 1, 'Insert', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-26 14:05:00', NULL),
(256, 'New Record inserted On transport route id 1', '1', 1, 'Insert', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-26 14:09:56', NULL),
(257, 'Record updated On  transport route id 1', '1', 1, 'Update', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-26 14:10:33', NULL),
(258, 'Record updated On  transport route id 1', '1', 1, 'Update', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-26 14:11:18', NULL),
(259, 'New Record inserted On vehicles id 1', '1', 1, 'Insert', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-26 14:13:28', NULL),
(260, 'New Record inserted On vehicle routes id 1', '1', 1, 'Insert', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-26 14:14:18', NULL),
(261, 'Record updated On students id 3', '3', 1, 'Update', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-26 14:15:41', NULL),
(262, 'Record updated On  student session id 3', '3', 1, 'Update', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-26 14:15:41', NULL),
(263, 'Record updated On students id 3', '3', 1, 'Update', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-26 14:20:23', NULL),
(264, 'Record updated On  student session id 3', '3', 1, 'Update', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-26 14:20:23', NULL),
(265, 'Record updated On students id 3', '3', 1, 'Update', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-26 14:20:23', NULL),
(266, 'Record updated On students id 3', '3', 1, 'Update', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-26 14:20:23', NULL),
(267, 'Record updated On students id 3', '3', 1, 'Update', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-26 14:20:23', NULL),
(268, 'Record updated On students id 3', '3', 1, 'Update', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-26 14:20:23', NULL),
(269, 'Record updated On  online_admission_fields id 1', '1', 1, 'Update', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-26 14:34:42', NULL),
(270, 'Record updated On  online_admission_fields id 4', '4', 1, 'Update', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-26 14:34:43', NULL),
(271, 'Record updated On  online_admission_fields id 8', '8', 1, 'Update', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-26 14:34:50', NULL),
(272, 'Record updated On  online_admission_fields id 9', '9', 1, 'Update', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-26 14:34:50', NULL),
(273, 'Record updated On  online_admission_fields id 37', '37', 1, 'Update', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-26 14:35:20', NULL),
(274, 'Record updated On  online_admission_fields id 11', '11', 1, 'Update', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-26 14:35:20', NULL),
(275, 'Record updated On  online_admission_fields id 12', '12', 1, 'Update', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-26 14:35:21', NULL),
(276, 'Record updated On  online_admission_fields id 13', '13', 1, 'Update', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-26 14:35:21', NULL),
(277, 'Record updated On  online_admission_fields id 14', '14', 1, 'Update', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-26 14:35:21', NULL),
(278, 'Record updated On  online_admission_fields id 10', '10', 1, 'Update', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-26 14:35:21', NULL),
(279, 'Record updated On settings id 1', '1', 1, 'Update', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-26 14:40:05', NULL),
(280, 'Record updated On settings id 1', '1', 1, 'Update', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-26 14:45:27', NULL),
(281, 'New Record inserted On item category id 1', '1', 1, 'Insert', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-26 16:19:57', NULL),
(282, 'New Record inserted On item id 1', '1', 1, 'Insert', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-26 16:21:39', NULL),
(283, 'New Record inserted On item store id 1', '1', 1, 'Insert', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-26 16:22:35', NULL),
(284, 'New Record inserted On item supplier id 1', '1', 1, 'Insert', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-26 16:23:39', NULL),
(285, 'New Record inserted On item stock id 1', '1', 1, 'Insert', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-26 16:25:06', NULL),
(286, 'New Record inserted On item issue id 1', '1', 1, 'Insert', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-26 16:27:32', NULL),
(287, 'New Record inserted On  income head   id 1', '1', 1, 'Insert', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-26 16:30:03', NULL),
(288, 'New Record inserted On  Income   id 1', '1', 1, 'Insert', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-26 16:31:08', NULL),
(289, 'Record updated On  Income   id 1', '1', 1, 'Update', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-26 16:32:13', NULL),
(290, 'Record updated On  Income   id 1', '1', 1, 'Update', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-26 16:32:55', NULL),
(291, 'Record updated On settings id 1', '1', 1, 'Update', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-27 08:51:56', NULL),
(292, 'Record updated On settings id 1', '1', 1, 'Update', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-27 08:52:12', NULL),
(293, 'Record updated On settings id 1', '1', 1, 'Update', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-27 08:52:21', NULL),
(294, 'Record updated On settings id 1', '1', 1, 'Update', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-27 08:52:34', NULL),
(295, 'Record updated On settings id 1', '1', 1, 'Update', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-27 08:52:43', NULL),
(296, 'Record updated On settings id 1', '1', 1, 'Update', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-27 09:01:08', NULL),
(297, 'Record updated On settings id 1', '1', 1, 'Update', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-27 09:01:17', NULL),
(298, 'Record updated On settings id 1', '1', 1, 'Update', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-27 09:02:38', NULL),
(299, 'Record updated On settings id 1', '1', 1, 'Update', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-27 09:02:46', NULL),
(300, 'Record updated On settings id 1', '1', 1, 'Update', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-27 09:03:26', NULL),
(301, 'Record updated On settings id 1', '1', 1, 'Update', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-27 09:03:35', NULL),
(302, 'Record updated On settings id 1', '1', 1, 'Update', '41.75.210.243', 'Windows 10', 'Chrome 91.0.4472.164', '2021-07-27 09:03:43', NULL),
(303, 'New Record inserted On student apply leave id 1', '1', 0, 'Insert', '41.75.210.243', 'Windows 10', 'Firefox 90.0', '2021-07-27 10:14:36', NULL),
(304, 'Record updated On  student apply leave id 1', '1', 0, 'Update', '41.75.210.243', 'Windows 10', 'Firefox 90.0', '2021-07-27 10:14:36', NULL),
(305, 'New Record inserted On messages id 7', '7', 3, 'Insert', '41.75.210.243', 'Windows 10', 'Firefox 90.0', '2021-07-27 10:45:04', NULL),
(306, 'Record updated On  exam groups id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.71', '2021-10-05 18:07:52', NULL),
(307, 'Record updated On grades id 12', '12', 1, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.71', '2021-10-05 18:09:01', NULL),
(308, 'Record updated On grades id 13', '13', 1, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.71', '2021-10-05 18:09:21', NULL),
(309, 'Record updated On grades id 14', '14', 1, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.71', '2021-10-05 18:09:47', NULL),
(310, 'Record updated On grades id 15', '15', 1, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.71', '2021-10-05 18:11:19', NULL),
(311, 'Record updated On grades id 16', '16', 1, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.71', '2021-10-05 18:12:30', NULL),
(312, 'Record updated On  exam groups id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.71', '2021-10-05 18:13:36', NULL),
(313, 'Record updated On  exam group exams name id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.71', '2021-10-05 18:20:27', NULL),
(314, 'Record updated On  exam groups id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.71', '2021-10-05 18:21:02', NULL),
(315, 'Record updated On  exam groups id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.71', '2021-10-05 18:24:38', NULL),
(316, 'Record updated On  exam groups id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.71', '2021-10-05 18:25:06', NULL),
(317, 'Record updated On  exam groups id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.71', '2021-10-05 18:36:27', NULL),
(318, 'Record updated On grades id 7', '7', 1, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.71', '2021-10-05 18:37:14', NULL),
(319, 'Record updated On grades id 8', '8', 1, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.71', '2021-10-05 18:37:35', NULL),
(320, 'Record updated On grades id 9', '9', 1, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.71', '2021-10-05 18:38:04', NULL),
(321, 'Record updated On  exam groups id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.71', '2021-10-05 18:38:50', NULL),
(322, 'Record updated On  exam group exams name id 3', '3', 1, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.71', '2021-10-07 08:54:16', NULL),
(323, 'New Record inserted On grades id 17', '17', 1, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.71', '2021-10-07 09:05:49', NULL),
(324, 'Record updated On grades id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.71', '2021-10-07 09:06:20', NULL),
(325, 'Record updated On grades id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.71', '2021-10-07 09:06:41', NULL),
(326, 'Record deleted On grades id 2', '2', 1, 'Delete', '::1', 'Windows 10', 'Chrome 94.0.4606.71', '2021-10-07 09:06:54', NULL),
(327, 'Record updated On grades id 3', '3', 1, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.71', '2021-10-07 09:07:18', NULL),
(328, 'Record updated On grades id 4', '4', 1, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.71', '2021-10-07 09:07:37', NULL),
(329, 'Record updated On grades id 5', '5', 1, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.71', '2021-10-07 09:08:02', NULL),
(330, 'Record updated On grades id 6', '6', 1, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.71', '2021-10-07 09:09:07', NULL),
(331, 'Record updated On grades id 6', '6', 1, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.71', '2021-10-07 10:35:21', NULL),
(332, 'Record updated On grades id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.71', '2021-10-07 10:35:42', NULL),
(333, 'Record updated On grades id 3', '3', 1, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.71', '2021-10-07 10:36:02', NULL),
(334, 'Record updated On grades id 4', '4', 1, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.71', '2021-10-07 10:36:13', NULL),
(335, 'Record updated On grades id 5', '5', 1, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.71', '2021-10-07 10:36:22', NULL),
(336, 'Record updated On grades id 6', '6', 1, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.71', '2021-10-07 10:36:32', NULL),
(337, 'Record updated On  exam group exams name id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.71', '2021-10-08 06:46:29', NULL),
(338, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.71', '2021-10-08 08:29:45', NULL),
(339, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.71', '2021-10-08 08:29:56', NULL),
(340, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.71', '2021-10-08 08:30:07', NULL);
INSERT INTO `logs` (`id`, `message`, `record_id`, `user_id`, `action`, `ip_address`, `platform`, `agent`, `time`, `created_at`) VALUES
(341, 'Record updated On settings id 1', '1', 1, 'Update', '::1', 'Windows 10', 'Chrome 94.0.4606.71', '2021-10-08 08:30:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `template_id` varchar(100) NOT NULL,
  `message` text DEFAULT NULL,
  `send_mail` varchar(10) DEFAULT '0',
  `send_sms` varchar(10) DEFAULT '0',
  `is_group` varchar(10) DEFAULT '0',
  `is_individual` varchar(10) DEFAULT '0',
  `is_class` int(10) NOT NULL DEFAULT 0,
  `group_list` text DEFAULT NULL,
  `user_list` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `title`, `template_id`, `message`, `send_mail`, `send_sms`, `is_group`, `is_individual`, `is_class`, `group_list`, `user_list`, `created_at`, `updated_at`) VALUES
(1, 'School Opening Date Notification', '', 'School Opening Date will be on 5th July 2021', '0', '1', '1', '0', 0, '[]', NULL, '2021-07-25 16:41:01', NULL),
(2, 'test', '', '<p>test</p>\r\n', '1', '0', '0', '1', 0, NULL, '[{\"category\":\"parent\",\"user_id\":\"1\",\"email\":\"parent@schoolmanagement.co.tz\",\"guardianEmail\":\"\",\"mobileno\":\"+255776745362\"}]', '2021-07-25 16:44:17', NULL),
(3, 'TEST EMAIL', '', '<p>TEST EMAIL</p>\r\n', '1', '0', '0', '1', 0, NULL, '[{\"category\":\"parent\",\"user_id\":\"5\",\"email\":\"budde@microtelecomms.com\",\"guardianEmail\":\"\",\"mobileno\":\"+255688098764\"}]', '2021-07-25 16:48:48', NULL),
(4, 'FINAL TEST', '', '<p>FINAL TEST</p>\r\n', '1', '0', '0', '1', 0, NULL, '[{\"category\":\"parent\",\"user_id\":\"5\",\"email\":\"budde@microtelecomms.com\",\"guardianEmail\":\"\",\"mobileno\":\"+255688098764\"}]', '2021-07-25 16:57:56', NULL),
(5, 'MAENDELO YA IKRA', '', 'Mzazi wa Ikra,\r\n\r\nJitahidi mwanao asome tuition aongeze uwezo wa akili\r\n\r\nTeacher Mupana', '0', '1', '0', '1', 0, NULL, '[{\"category\":\"parent\",\"user_id\":\"5\",\"email\":\"budde@microtelecomms.com\",\"guardianEmail\":\"\",\"mobileno\":\"+255689602202\",\"app_key\":null}]', '2021-07-25 17:31:45', NULL),
(6, 'SMS JARIBIO', '', 'SMS JARIBIO', '0', '1', '0', '1', 0, NULL, '[{\"category\":\"parent\",\"user_id\":\"5\",\"email\":\"budde@microtelecomms.com\",\"guardianEmail\":\"\",\"mobileno\":\"+255689602202\",\"app_key\":null}]', '2021-07-25 17:38:38', NULL),
(7, 'TEST', '', 'SAFASFASDFFSDFSDF', '0', '1', '1', '0', 0, '[]', NULL, '2021-07-27 10:45:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `multi_class_students`
--

CREATE TABLE `multi_class_students` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `student_session_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `notification_roles`
--

CREATE TABLE `notification_roles` (
  `id` int(11) NOT NULL,
  `send_notification_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `notification_setting`
--

CREATE TABLE `notification_setting` (
  `id` int(11) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `is_mail` varchar(10) DEFAULT '0',
  `is_sms` varchar(10) DEFAULT '0',
  `is_notification` int(11) NOT NULL DEFAULT 0,
  `display_notification` int(11) NOT NULL DEFAULT 0,
  `display_sms` int(11) NOT NULL DEFAULT 1,
  `subject` varchar(255) NOT NULL,
  `template_id` varchar(100) NOT NULL,
  `template` longtext NOT NULL,
  `variables` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `notification_setting`
--

INSERT INTO `notification_setting` (`id`, `type`, `is_mail`, `is_sms`, `is_notification`, `display_notification`, `display_sms`, `subject`, `template_id`, `template`, `variables`, `created_at`) VALUES
(1, 'student_admission', '1', '0', 0, 0, 1, 'Student Admission', '', 'Dear {{student_name}} your admission is confirm in Class: {{class}} Section:  {{section}} for Session: {{current_session_name}} for more \r\ndetail\r\n contact\r\n System\r\n Admin\r\n {{class}} {{section}} {{admission_no}} {{roll_no}} {{admission_date}} {{mobileno}} {{email}} {{dob}} {{guardian_name}} {{guardian_relation}} {{guardian_phone}} {{father_name}} {{father_phone}} {{blood_group}} {{mother_name}} {{gender}} {{guardian_email}}', '{{student_name}} {{class}}  {{section}}  {{admission_no}}  {{roll_no}}  {{admission_date}}   {{mobileno}}  {{email}}  {{dob}}  {{guardian_name}}  {{guardian_relation}}  {{guardian_phone}}  {{father_name}}  {{father_phone}}  {{blood_group}}  {{mother_name}}  {{gender}} {{guardian_email}} {{current_session_name}} ', '2021-06-02 01:43:30'),
(2, 'exam_result', '1', '0', 0, 1, 1, 'Exam Result', '', 'Dear {{student_name}} - {{exam_roll_no}}, your {{exam}} result has been published.', '{{student_name}} {{exam_roll_no}} {{exam}}', '2021-06-02 01:43:42'),
(3, 'fee_submission', '1', '0', 0, 1, 1, 'Fee Submission', '', 'Dear parents, we have received Fees Amount {{fee_amount}} for  {{student_name}}  by Your School Name \r\n{{class}} {{section}} {{fine_type}} {{fine_percentage}} {{fine_amount}} {{fee_group_name}} {{type}} {{code}} {{email}} {{contact_no}} {{invoice_id}} {{sub_invoice_id}} {{due_date}} {{amount}} {{fee_amount}}', '{{student_name}} {{class}} {{section}} {{fine_type}} {{fine_percentage}} {{fine_amount}} {{fee_group_name}} {{type}} {{code}} {{email}} {{contact_no}} {{invoice_id}} {{sub_invoice_id}} {{due_date}} {{amount}} {{fee_amount}}', '2021-06-02 01:44:01'),
(4, 'absent_attendence', '1', '0', 0, 1, 1, 'Absent Attendence', '', 'Absent Notice :{{student_name}}  was absent on date {{date}} in period {{subject_name}} {{subject_code}} {{subject_type}} from Your School Name', '{{student_name}} {{mobileno}} {{email}} {{father_name}} {{father_phone}} {{father_occupation}} {{mother_name}} {{mother_phone}} {{guardian_name}} {{guardian_phone}} {{guardian_occupation}} {{guardian_email}} {{date}} {{current_session_name}}             {{time_from}} {{time_to}} {{subject_name}} {{subject_code}} {{subject_type}}  ', '2021-06-02 01:44:14'),
(5, 'login_credential', '1', '0', 0, 0, 1, 'Login Credential', '', 'Hello {{display_name}} your login details for Url: {{url}} Username: {{username}}  Password: {{password}}', '{{url}} {{display_name}} {{username}} {{password}}', '2021-06-02 01:44:29'),
(6, 'homework', '1', '0', 0, 1, 1, 'Homework', '', 'New Homework has been created for \r\n{{student_name}} at\r\n\r\n\r\n\r\n{{homework_date}} for the class {{class}} {{section}} {{subject}}. kindly submit your\r\n\r\n\r\n homework before {{submit_date}} .Thank you', '{{homework_date}} {{submit_date}} {{class}} {{section}} {{subject}} {{student_name}}', '2021-06-02 01:44:39'),
(7, 'fees_reminder', '1', '0', 0, 1, 1, 'Fees Reminder', '', 'Dear parents, please pay fee amount Rs.{{due_amount}} of {{fee_type}} before {{due_date}} for {{student_name}}  from smart school (ignore if you already paid)', '{{fee_type}}{{fee_code}}{{due_date}}{{student_name}}{{school_name}}{{fee_amount}}{{due_amount}}{{deposit_amount}} ', '2021-06-02 01:44:54'),
(8, 'forgot_password', '1', '0', 0, 0, 0, 'Forgot Password', '', 'Dear  {{name}} , \r\n    Recently a request was submitted to reset password for your account. If you didn\'t make the request, just ignore this email. Otherwise you can reset your password using this link <a href=\'{{resetPassLink}}\'>Click here to reset your password</a>,\r\nif you\'re having trouble clicking the password reset button, copy and paste the URL below into your web browser. your username {{username}}\r\n{{resetPassLink}}\r\n Regards,\r\n {{school_name}}', '{{school_name}}{{name}}{{username}}{{resetPassLink}} ', '2021-06-02 01:45:08'),
(9, 'online_examination_publish_exam', '1', '0', 0, 1, 1, 'Online Examination Publish Exam', '', 'A new exam {{exam_title}} has been created for  duration: {{time_duration}} min, which will be available from:  {{exam_from}} to  {{exam_to}}.', '{{exam_title}} {{exam_from}} {{exam_to}} {{time_duration}} {{attempt}} {{passing_percentage}}', '2021-06-02 01:45:36'),
(10, 'online_examination_publish_result', '1', '0', 0, 1, 1, 'Online Examination Publish Result', '', 'Exam {{exam_title}} result has been declared which was conducted between  {{exam_from}} to   {{exam_to}}, for more details, please check your student portal.', '{{exam_title}} {{exam_from}} {{exam_to}} {{time_duration}} {{attempt}} {{passing_percentage}}', '2021-06-02 01:45:58'),
(11, 'online_admission_form_submission', '1', '0', 0, 1, 1, 'Online Admission Form Submission', '', 'Dear {{firstname}}  {{lastname}} your online admission form is Submitted successfully  on date {{date}}. Your Reference number is {{reference_no}}. Please remember your reference number for further process.', ' {{firstname}} {{lastname}} {{date}} {{reference_no}}', '2021-06-02 01:46:21'),
(12, 'online_admission_fees_submission', '0', '0', 0, 1, 1, 'Online Admission Fees Submission', '', 'Dear {{firstname}}  {{lastname}} your online admission form is Submitted successfully and the payment of {{paid_amount}} has recieved successfully on date {{date}}. Your Reference number is {{reference_no}}. Please remember your reference number for further process.', ' {{firstname}} {{lastname}} {{date}} {{paid_amount}} {{reference_no}}', '2021-06-02 01:46:46');

-- --------------------------------------------------------

--
-- Table structure for table `onlineexam`
--

CREATE TABLE `onlineexam` (
  `id` int(11) NOT NULL,
  `exam` text DEFAULT NULL,
  `attempt` int(11) NOT NULL,
  `exam_from` datetime DEFAULT NULL,
  `exam_to` datetime DEFAULT NULL,
  `is_quiz` int(11) NOT NULL DEFAULT 0,
  `auto_publish_date` datetime DEFAULT NULL,
  `time_from` time DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  `duration` time NOT NULL,
  `passing_percentage` float NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `publish_result` int(11) NOT NULL DEFAULT 0,
  `is_active` varchar(1) DEFAULT '0',
  `is_marks_display` int(11) NOT NULL DEFAULT 0,
  `is_neg_marking` int(11) NOT NULL DEFAULT 0,
  `is_random_question` int(11) NOT NULL DEFAULT 0,
  `is_rank_generated` int(1) NOT NULL DEFAULT 0,
  `publish_exam_notification` int(1) NOT NULL,
  `publish_result_notification` int(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `onlineexam_attempts`
--

CREATE TABLE `onlineexam_attempts` (
  `id` int(11) NOT NULL,
  `onlineexam_student_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `onlineexam_questions`
--

CREATE TABLE `onlineexam_questions` (
  `id` int(11) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `onlineexam_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `marks` float(10,2) NOT NULL DEFAULT 0.00,
  `neg_marks` float(10,2) DEFAULT 0.00,
  `is_active` varchar(1) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `onlineexam_students`
--

CREATE TABLE `onlineexam_students` (
  `id` int(11) NOT NULL,
  `onlineexam_id` int(11) DEFAULT NULL,
  `student_session_id` int(11) DEFAULT NULL,
  `is_attempted` int(1) NOT NULL DEFAULT 0,
  `rank` int(1) DEFAULT 0,
  `quiz_attempted` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `onlineexam_student_results`
--

CREATE TABLE `onlineexam_student_results` (
  `id` int(11) NOT NULL,
  `onlineexam_student_id` int(11) NOT NULL,
  `onlineexam_question_id` int(11) NOT NULL,
  `select_option` longtext DEFAULT NULL,
  `marks` float(10,2) NOT NULL DEFAULT 0.00,
  `remark` text DEFAULT NULL,
  `attachment_name` text DEFAULT NULL,
  `attachment_upload_name` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `online_admissions`
--

CREATE TABLE `online_admissions` (
  `id` int(11) NOT NULL,
  `admission_no` varchar(100) DEFAULT NULL,
  `roll_no` varchar(100) DEFAULT NULL,
  `reference_no` varchar(50) NOT NULL,
  `admission_date` date DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `middlename` varchar(255) NOT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `rte` varchar(20) NOT NULL DEFAULT 'No',
  `image` varchar(100) DEFAULT NULL,
  `mobileno` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `pincode` varchar(100) DEFAULT NULL,
  `religion` varchar(100) DEFAULT NULL,
  `cast` varchar(50) NOT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `current_address` text DEFAULT NULL,
  `permanent_address` text DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `class_section_id` int(11) DEFAULT NULL,
  `route_id` int(11) NOT NULL,
  `school_house_id` int(11) DEFAULT NULL,
  `blood_group` varchar(200) NOT NULL,
  `vehroute_id` int(11) NOT NULL,
  `hostel_room_id` int(11) NOT NULL,
  `adhar_no` varchar(100) DEFAULT NULL,
  `samagra_id` varchar(100) DEFAULT NULL,
  `bank_account_no` varchar(100) DEFAULT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `ifsc_code` varchar(100) DEFAULT NULL,
  `guardian_is` varchar(100) NOT NULL,
  `father_name` varchar(100) DEFAULT NULL,
  `father_phone` varchar(100) DEFAULT NULL,
  `father_occupation` varchar(100) DEFAULT NULL,
  `mother_name` varchar(100) DEFAULT NULL,
  `mother_phone` varchar(100) DEFAULT NULL,
  `mother_occupation` varchar(100) DEFAULT NULL,
  `guardian_name` varchar(100) DEFAULT NULL,
  `guardian_relation` varchar(100) DEFAULT NULL,
  `guardian_phone` varchar(100) DEFAULT NULL,
  `guardian_occupation` varchar(150) NOT NULL,
  `guardian_address` text DEFAULT NULL,
  `guardian_email` varchar(100) NOT NULL,
  `father_pic` varchar(200) NOT NULL,
  `mother_pic` varchar(200) NOT NULL,
  `guardian_pic` varchar(200) NOT NULL,
  `is_enroll` int(255) DEFAULT 0,
  `previous_school` text DEFAULT NULL,
  `height` varchar(100) NOT NULL,
  `weight` varchar(100) NOT NULL,
  `note` varchar(200) NOT NULL,
  `form_status` int(11) NOT NULL,
  `paid_status` int(11) NOT NULL,
  `measurement_date` date DEFAULT NULL,
  `app_key` text DEFAULT NULL,
  `document` text DEFAULT NULL,
  `disable_at` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `online_admission_fields`
--

CREATE TABLE `online_admission_fields` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `online_admission_fields`
--

INSERT INTO `online_admission_fields` (`id`, `name`, `status`, `created_at`) VALUES
(1, 'middlename', 1, '2021-07-26 07:34:42'),
(2, 'lastname', 1, '2021-06-01 21:49:19'),
(3, 'category', 0, '2021-06-01 21:48:35'),
(4, 'religion', 1, '2021-07-26 07:34:43'),
(5, 'cast', 0, '2021-06-01 21:48:35'),
(6, 'mobile_no', 1, '2021-06-01 21:50:24'),
(7, 'admission_date', 0, '2021-06-01 21:48:35'),
(8, 'student_photo', 1, '2021-07-26 07:34:50'),
(9, 'is_student_house', 1, '2021-07-26 07:34:50'),
(10, 'is_blood_group', 1, '2021-07-26 07:35:21'),
(11, 'student_height', 1, '2021-07-26 07:35:20'),
(12, 'student_weight', 1, '2021-07-26 07:35:21'),
(13, 'father_name', 1, '2021-07-26 07:35:21'),
(14, 'father_phone', 1, '2021-07-26 07:35:21'),
(15, 'father_occupation', 0, '2021-06-01 21:48:35'),
(16, 'father_pic', 0, '2021-06-01 21:48:35'),
(17, 'mother_name', 0, '2021-06-01 21:48:35'),
(18, 'mother_phone', 0, '2021-06-01 21:48:35'),
(19, 'mother_occupation', 0, '2021-06-01 21:48:35'),
(20, 'mother_pic', 0, '2021-06-01 21:48:35'),
(21, 'guardian_name', 1, '2021-06-01 21:50:54'),
(22, 'guardian_phone', 1, '2021-06-01 21:50:54'),
(23, 'if_guardian_is', 1, '2021-06-01 21:50:54'),
(24, 'guardian_relation', 1, '2021-06-01 21:50:54'),
(25, 'guardian_email', 1, '2021-06-01 21:51:35'),
(26, 'guardian_occupation', 1, '2021-06-01 21:51:26'),
(27, 'guardian_address', 1, '2021-06-01 21:51:31'),
(28, 'bank_account_no', 0, '2021-06-01 21:48:35'),
(29, 'bank_name', 0, '2021-06-01 21:48:35'),
(30, 'ifsc_code', 0, '2021-06-01 21:48:35'),
(31, 'national_identification_no', 0, '2021-06-01 21:48:35'),
(32, 'local_identification_no', 0, '2021-06-01 21:48:35'),
(33, 'rte', 0, '2021-06-01 21:48:35'),
(34, 'previous_school_details', 0, '2021-06-01 21:48:35'),
(35, 'guardian_photo', 1, '2021-06-01 21:51:29'),
(36, 'student_note', 0, '2021-06-01 21:55:08'),
(37, 'measurement_date', 1, '2021-07-26 07:35:20'),
(38, 'student_email', 1, '2021-06-01 21:49:38'),
(39, 'current_address', 0, '2021-06-01 21:48:35'),
(40, 'permanent_address', 0, '2021-06-01 21:48:35');

-- --------------------------------------------------------

--
-- Table structure for table `online_admission_payment`
--

CREATE TABLE `online_admission_payment` (
  `id` int(11) NOT NULL,
  `admission_id` int(11) NOT NULL,
  `paid_amount` float(10,2) NOT NULL,
  `payment_mode` varchar(50) NOT NULL,
  `payment_type` varchar(100) NOT NULL,
  `transaction_id` varchar(100) NOT NULL,
  `note` varchar(100) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payment_settings`
--

CREATE TABLE `payment_settings` (
  `id` int(11) NOT NULL,
  `payment_type` varchar(200) NOT NULL,
  `api_username` varchar(200) DEFAULT NULL,
  `api_secret_key` varchar(200) NOT NULL,
  `salt` varchar(200) NOT NULL,
  `api_publishable_key` varchar(200) NOT NULL,
  `api_password` varchar(200) DEFAULT NULL,
  `api_signature` varchar(200) DEFAULT NULL,
  `api_email` varchar(200) DEFAULT NULL,
  `paypal_demo` varchar(100) NOT NULL,
  `account_no` varchar(200) NOT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `gateway_mode` int(11) NOT NULL COMMENT '0 Testing, 1 live',
  `paytm_website` varchar(255) NOT NULL,
  `paytm_industrytype` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `payslip_allowance`
--

CREATE TABLE `payslip_allowance` (
  `id` int(11) NOT NULL,
  `payslip_id` int(11) NOT NULL,
  `allowance_type` varchar(200) NOT NULL,
  `amount` float NOT NULL,
  `staff_id` int(11) NOT NULL,
  `cal_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payslip_allowance`
--

INSERT INTO `payslip_allowance` (`id`, `payslip_id`, `allowance_type`, `amount`, `staff_id`, `cal_type`) VALUES
(1, 1, '', 0, 4, 'positive'),
(2, 1, '', 0, 4, 'negative');

-- --------------------------------------------------------

--
-- Table structure for table `permission_category`
--

CREATE TABLE `permission_category` (
  `id` int(11) NOT NULL,
  `perm_group_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `short_code` varchar(100) DEFAULT NULL,
  `enable_view` int(11) DEFAULT 0,
  `enable_add` int(11) DEFAULT 0,
  `enable_edit` int(11) DEFAULT 0,
  `enable_delete` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permission_category`
--

INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES
(1, 1, 'Student', 'student', 1, 1, 1, 1, '2019-10-23 22:42:03'),
(2, 1, 'Import Student', 'import_student', 1, 0, 0, 0, '2018-06-22 03:17:19'),
(3, 1, 'Student Categories', 'student_categories', 1, 1, 1, 1, '2018-06-22 03:17:36'),
(4, 1, 'Student Houses', 'student_houses', 1, 1, 1, 1, '2018-06-22 03:17:53'),
(5, 2, 'Collect Fees', 'collect_fees', 1, 1, 0, 1, '2018-06-22 03:21:03'),
(6, 2, 'Fees Carry Forward', 'fees_carry_forward', 1, 0, 0, 0, '2018-06-26 17:18:15'),
(7, 2, 'Fees Master', 'fees_master', 1, 1, 1, 1, '2018-06-26 17:18:57'),
(8, 2, 'Fees Group', 'fees_group', 1, 1, 1, 1, '2018-06-22 03:21:46'),
(9, 3, 'Income', 'income', 1, 1, 1, 1, '2018-06-22 03:23:21'),
(10, 3, 'Income Head', 'income_head', 1, 1, 1, 1, '2018-06-22 03:22:44'),
(11, 3, 'Search Income', 'search_income', 1, 0, 0, 0, '2018-06-22 03:23:00'),
(12, 4, 'Expense', 'expense', 1, 1, 1, 1, '2018-06-22 03:24:06'),
(13, 4, 'Expense Head', 'expense_head', 1, 1, 1, 1, '2018-06-22 03:23:47'),
(14, 4, 'Search Expense', 'search_expense', 1, 0, 0, 0, '2018-06-22 03:24:13'),
(15, 5, 'Student / Period Attendance', 'student_attendance', 1, 1, 1, 0, '2019-11-28 17:19:05'),
(20, 6, 'Marks Grade', 'marks_grade', 1, 1, 1, 1, '2018-06-22 03:25:25'),
(21, 7, 'Class Timetable', 'class_timetable', 1, 0, 1, 0, '2019-11-23 19:05:17'),
(23, 7, 'Subject', 'subject', 1, 1, 1, 1, '2018-06-22 03:32:17'),
(24, 7, 'Class', 'class', 1, 1, 1, 1, '2018-06-22 03:32:35'),
(25, 7, 'Section', 'section', 1, 1, 1, 1, '2018-06-22 03:31:10'),
(26, 7, 'Promote Student', 'promote_student', 1, 0, 0, 0, '2018-06-22 03:32:47'),
(27, 8, 'Upload Content', 'upload_content', 1, 1, 0, 1, '2018-06-22 03:33:19'),
(28, 9, 'Books List', 'books', 1, 1, 1, 1, '2019-11-23 16:37:12'),
(29, 9, 'Issue Return', 'issue_return', 1, 0, 0, 0, '2019-11-23 16:37:18'),
(30, 9, 'Add Staff Member', 'add_staff_member', 1, 0, 0, 0, '2018-07-02 04:37:00'),
(31, 10, 'Issue Item', 'issue_item', 1, 1, 1, 1, '2019-11-28 22:39:27'),
(32, 10, 'Add Item Stock', 'item_stock', 1, 1, 1, 1, '2019-11-23 16:39:17'),
(33, 10, 'Add Item', 'item', 1, 1, 1, 1, '2019-11-23 16:39:39'),
(34, 10, 'Item Store', 'store', 1, 1, 1, 1, '2019-11-23 16:40:41'),
(35, 10, 'Item Supplier', 'supplier', 1, 1, 1, 1, '2019-11-23 16:40:49'),
(37, 11, 'Routes', 'routes', 1, 1, 1, 1, '2018-06-22 03:39:17'),
(38, 11, 'Vehicle', 'vehicle', 1, 1, 1, 1, '2018-06-22 03:39:36'),
(39, 11, 'Assign Vehicle', 'assign_vehicle', 1, 1, 1, 1, '2018-06-26 21:39:20'),
(40, 12, 'Hostel', 'hostel', 1, 1, 1, 1, '2018-06-22 03:40:49'),
(41, 12, 'Room Type', 'room_type', 1, 1, 1, 1, '2018-06-22 03:40:27'),
(42, 12, 'Hostel Rooms', 'hostel_rooms', 1, 1, 1, 1, '2018-06-24 23:23:03'),
(43, 13, 'Notice Board', 'notice_board', 1, 1, 1, 1, '2018-06-22 03:41:17'),
(44, 13, 'Email', 'email', 1, 0, 0, 0, '2019-11-25 21:20:37'),
(46, 13, 'Email / SMS Log', 'email_sms_log', 1, 0, 0, 0, '2018-06-22 03:41:23'),
(53, 15, 'Languages', 'languages', 0, 1, 0, 1, '2021-01-22 23:09:32'),
(54, 15, 'General Setting', 'general_setting', 1, 0, 1, 0, '2018-07-05 02:08:35'),
(55, 15, 'Session Setting', 'session_setting', 1, 1, 1, 1, '2018-06-22 03:44:15'),
(56, 15, 'Notification Setting', 'notification_setting', 1, 0, 1, 0, '2018-07-05 02:08:41'),
(57, 15, 'SMS Setting', 'sms_setting', 1, 0, 1, 0, '2018-07-05 02:08:47'),
(58, 15, 'Email Setting', 'email_setting', 1, 0, 1, 0, '2018-07-05 02:08:51'),
(59, 15, 'Front CMS Setting', 'front_cms_setting', 1, 0, 1, 0, '2018-07-05 02:08:55'),
(60, 15, 'Payment Methods', 'payment_methods', 1, 0, 1, 0, '2018-07-05 02:08:59'),
(61, 16, 'Menus', 'menus', 1, 1, 0, 1, '2018-07-08 20:50:06'),
(62, 16, 'Media Manager', 'media_manager', 1, 1, 0, 1, '2018-07-08 20:50:26'),
(63, 16, 'Banner Images', 'banner_images', 1, 1, 0, 1, '2018-06-22 03:46:02'),
(64, 16, 'Pages', 'pages', 1, 1, 1, 1, '2018-06-22 03:46:21'),
(65, 16, 'Gallery', 'gallery', 1, 1, 1, 1, '2018-06-22 03:47:02'),
(66, 16, 'Event', 'event', 1, 1, 1, 1, '2018-06-22 03:47:20'),
(67, 16, 'News', 'notice', 1, 1, 1, 1, '2018-07-03 01:39:34'),
(68, 2, 'Fees Group Assign', 'fees_group_assign', 1, 0, 0, 0, '2018-06-22 03:20:42'),
(69, 2, 'Fees Type', 'fees_type', 1, 1, 1, 1, '2018-06-22 03:19:34'),
(70, 2, 'Fees Discount', 'fees_discount', 1, 1, 1, 1, '2018-06-22 03:20:10'),
(71, 2, 'Fees Discount Assign', 'fees_discount_assign', 1, 0, 0, 0, '2018-06-22 03:20:17'),
(73, 2, 'Search Fees Payment', 'search_fees_payment', 1, 0, 0, 0, '2018-06-22 03:20:27'),
(74, 2, 'Search Due Fees', 'search_due_fees', 1, 0, 0, 0, '2018-06-22 03:20:35'),
(77, 7, 'Assign Class Teacher', 'assign_class_teacher', 1, 1, 1, 1, '2018-06-22 03:30:52'),
(78, 17, 'Admission Enquiry', 'admission_enquiry', 1, 1, 1, 1, '2018-06-22 03:51:24'),
(79, 17, 'Follow Up Admission Enquiry', 'follow_up_admission_enquiry', 1, 1, 0, 1, '2018-06-22 03:51:39'),
(80, 17, 'Visitor Book', 'visitor_book', 1, 1, 1, 1, '2018-06-22 03:48:58'),
(81, 17, 'Phone Call Log', 'phone_call_log', 1, 1, 1, 1, '2018-06-22 03:50:57'),
(82, 17, 'Postal Dispatch', 'postal_dispatch', 1, 1, 1, 1, '2018-06-22 03:50:21'),
(83, 17, 'Postal Receive', 'postal_receive', 1, 1, 1, 1, '2018-06-22 03:50:04'),
(84, 17, 'Complain', 'complaint', 1, 1, 1, 1, '2018-07-03 01:40:55'),
(85, 17, 'Setup Font Office', 'setup_font_office', 1, 1, 1, 1, '2018-06-22 03:49:24'),
(86, 18, 'Staff', 'staff', 1, 1, 1, 1, '2018-06-22 03:53:31'),
(87, 18, 'Disable Staff', 'disable_staff', 1, 0, 0, 0, '2018-06-22 03:53:12'),
(88, 18, 'Staff Attendance', 'staff_attendance', 1, 1, 1, 0, '2018-06-22 03:53:10'),
(90, 18, 'Staff Payroll', 'staff_payroll', 1, 1, 0, 1, '2018-06-22 03:52:51'),
(93, 19, 'Homework', 'homework', 1, 1, 1, 1, '2018-06-22 03:53:50'),
(94, 19, 'Homework Evaluation', 'homework_evaluation', 1, 1, 0, 0, '2018-06-26 20:07:21'),
(96, 20, 'Student Certificate', 'student_certificate', 1, 1, 1, 1, '2018-07-06 03:41:07'),
(97, 20, 'Generate Certificate', 'generate_certificate', 1, 0, 0, 0, '2018-07-06 03:37:16'),
(98, 20, 'Student ID Card', 'student_id_card', 1, 1, 1, 1, '2018-07-06 03:41:28'),
(99, 20, 'Generate ID Card', 'generate_id_card', 1, 0, 0, 0, '2018-07-06 03:41:49'),
(102, 21, 'Calendar To Do List', 'calendar_to_do_list', 1, 1, 1, 1, '2018-06-22 03:54:41'),
(104, 10, 'Item Category', 'item_category', 1, 1, 1, 1, '2018-06-22 03:34:33'),
(106, 22, 'Quick Session Change', 'quick_session_change', 1, 0, 0, 0, '2018-06-22 03:54:45'),
(107, 1, 'Disable Student', 'disable_student', 1, 0, 0, 0, '2018-06-24 23:21:34'),
(108, 18, ' Approve Leave Request', 'approve_leave_request', 1, 0, 1, 1, '2020-10-05 01:56:27'),
(109, 18, 'Apply Leave', 'apply_leave', 1, 1, 0, 0, '2019-11-28 15:47:46'),
(110, 18, 'Leave Types ', 'leave_types', 1, 1, 1, 1, '2018-07-02 03:17:56'),
(111, 18, 'Department', 'department', 1, 1, 1, 1, '2018-06-25 20:57:07'),
(112, 18, 'Designation', 'designation', 1, 1, 1, 1, '2018-06-25 20:57:07'),
(113, 22, 'Fees Collection And Expense Monthly Chart', 'fees_collection_and_expense_monthly_chart', 1, 0, 0, 0, '2018-07-03 00:08:15'),
(114, 22, 'Fees Collection And Expense Yearly Chart', 'fees_collection_and_expense_yearly_chart', 1, 0, 0, 0, '2018-07-03 00:08:15'),
(115, 22, 'Monthly Fees Collection Widget', 'Monthly fees_collection_widget', 1, 0, 0, 0, '2018-07-03 00:13:35'),
(116, 22, 'Monthly Expense Widget', 'monthly_expense_widget', 1, 0, 0, 0, '2018-07-03 00:13:35'),
(117, 22, 'Student Count Widget', 'student_count_widget', 1, 0, 0, 0, '2018-07-03 00:13:35'),
(118, 22, 'Staff Role Count Widget', 'staff_role_count_widget', 1, 0, 0, 0, '2018-07-03 00:13:35'),
(122, 5, 'Attendance By Date', 'attendance_by_date', 1, 0, 0, 0, '2018-07-03 01:42:29'),
(123, 9, 'Add Student', 'add_student', 1, 0, 0, 0, '2018-07-03 01:42:29'),
(126, 15, 'User Status', 'user_status', 1, 0, 0, 0, '2018-07-03 01:42:29'),
(127, 18, 'Can See Other Users Profile', 'can_see_other_users_profile', 1, 0, 0, 0, '2018-07-03 01:42:29'),
(128, 1, 'Student Timeline', 'student_timeline', 0, 1, 0, 1, '2018-07-05 01:08:52'),
(129, 18, 'Staff Timeline', 'staff_timeline', 0, 1, 0, 1, '2018-07-05 01:08:52'),
(130, 15, 'Backup', 'backup', 1, 1, 0, 1, '2018-07-08 21:17:17'),
(131, 15, 'Restore', 'restore', 1, 0, 0, 0, '2018-07-08 21:17:17'),
(134, 1, 'Disable Reason', 'disable_reason', 1, 1, 1, 1, '2019-11-26 22:39:21'),
(135, 2, 'Fees Reminder', 'fees_reminder', 1, 0, 1, 0, '2019-10-24 17:39:49'),
(136, 5, 'Approve Leave', 'approve_leave', 1, 0, 0, 0, '2019-10-24 17:46:44'),
(137, 6, 'Exam Group', 'exam_group', 1, 1, 1, 1, '2019-10-24 18:02:34'),
(141, 6, 'Design Admit Card', 'design_admit_card', 1, 1, 1, 1, '2019-10-24 18:06:59'),
(142, 6, 'Print Admit Card', 'print_admit_card', 1, 0, 0, 0, '2019-11-23 15:57:51'),
(143, 6, 'Design Marksheet', 'design_marksheet', 1, 1, 1, 1, '2019-10-24 18:10:25'),
(144, 6, 'Print Marksheet', 'print_marksheet', 1, 0, 0, 0, '2019-10-24 18:11:02'),
(145, 7, 'Teachers Timetable', 'teachers_time_table', 1, 0, 0, 0, '2019-11-29 18:52:21'),
(146, 14, 'Student Report', 'student_report', 1, 0, 0, 0, '2019-10-24 18:27:00'),
(147, 14, 'Guardian Report', 'guardian_report', 1, 0, 0, 0, '2019-10-24 18:30:27'),
(148, 14, 'Student History', 'student_history', 1, 0, 0, 0, '2019-10-24 18:39:07'),
(149, 14, 'Student Login Credential Report', 'student_login_credential_report', 1, 0, 0, 0, '2019-10-24 18:39:07'),
(150, 14, 'Class Subject Report', 'class_subject_report', 1, 0, 0, 0, '2019-10-24 18:39:07'),
(151, 14, 'Admission Report', 'admission_report', 1, 0, 0, 0, '2019-10-24 18:39:07'),
(152, 14, 'Sibling Report', 'sibling_report', 1, 0, 0, 0, '2019-10-24 18:39:07'),
(153, 14, 'Homework Evaluation Report', 'homehork_evaluation_report', 1, 0, 0, 0, '2019-11-23 17:04:24'),
(154, 14, 'Student Profile', 'student_profile', 1, 0, 0, 0, '2019-10-24 18:39:07'),
(155, 14, 'Fees Statement', 'fees_statement', 1, 0, 0, 0, '2019-10-24 18:55:52'),
(156, 14, 'Balance Fees Report', 'balance_fees_report', 1, 0, 0, 0, '2019-10-24 18:55:52'),
(157, 14, 'Fees Collection Report', 'fees_collection_report', 1, 0, 0, 0, '2019-10-24 18:55:52'),
(158, 14, 'Online Fees Collection Report', 'online_fees_collection_report', 1, 0, 0, 0, '2019-10-24 18:55:52'),
(159, 14, 'Income Report', 'income_report', 1, 0, 0, 0, '2019-10-24 18:55:52'),
(160, 14, 'Expense Report', 'expense_report', 1, 0, 0, 0, '2019-10-24 18:55:52'),
(161, 14, 'PayRoll Report', 'payroll_report', 1, 0, 0, 0, '2019-10-30 17:23:22'),
(162, 14, 'Income Group Report', 'income_group_report', 1, 0, 0, 0, '2019-10-24 18:55:52'),
(163, 14, 'Expense Group Report', 'expense_group_report', 1, 0, 0, 0, '2019-10-24 18:55:52'),
(164, 14, 'Attendance Report', 'attendance_report', 1, 0, 0, 0, '2019-10-24 19:08:06'),
(165, 14, 'Staff Attendance Report', 'staff_attendance_report', 1, 0, 0, 0, '2019-10-24 19:08:06'),
(174, 14, 'Transport Report', 'transport_report', 1, 0, 0, 0, '2019-10-24 19:13:56'),
(175, 14, 'Hostel Report', 'hostel_report', 1, 0, 0, 0, '2019-11-26 22:51:53'),
(176, 14, 'Audit Trail Report', 'audit_trail_report', 1, 0, 0, 0, '2019-10-24 19:16:39'),
(177, 14, 'User Log', 'user_log', 1, 0, 0, 0, '2019-10-24 19:19:27'),
(178, 14, 'Book Issue Report', 'book_issue_report', 1, 0, 0, 0, '2019-10-24 19:29:04'),
(179, 14, 'Book Due Report', 'book_due_report', 1, 0, 0, 0, '2019-10-24 19:29:04'),
(180, 14, 'Book Inventory Report', 'book_inventory_report', 1, 0, 0, 0, '2019-10-24 19:29:04'),
(181, 14, 'Stock Report', 'stock_report', 1, 0, 0, 0, '2019-10-24 19:31:28'),
(182, 14, 'Add Item Report', 'add_item_report', 1, 0, 0, 0, '2019-10-24 19:31:28'),
(183, 14, 'Issue Item Report', 'issue_item_report', 1, 0, 0, 0, '2019-11-28 19:48:06'),
(185, 23, 'Online Examination', 'online_examination', 1, 1, 1, 1, '2019-11-23 15:54:50'),
(186, 23, 'Question Bank', 'question_bank', 1, 1, 1, 1, '2019-11-23 15:55:18'),
(187, 6, 'Exam Result', 'exam_result', 1, 0, 0, 0, '2019-11-23 15:58:50'),
(188, 7, 'Subject Group', 'subject_group', 1, 1, 1, 1, '2019-11-23 16:34:32'),
(189, 18, 'Teachers Rating', 'teachers_rating', 1, 0, 1, 1, '2019-11-23 19:12:54'),
(190, 22, 'Fees Awaiting Payment Widegts', 'fees_awaiting_payment_widegts', 1, 0, 0, 0, '2019-11-23 16:52:51'),
(191, 22, 'Conveted Leads Widegts', 'conveted_leads_widegts', 1, 0, 0, 0, '2019-11-23 16:58:24'),
(192, 22, 'Fees Overview Widegts', 'fees_overview_widegts', 1, 0, 0, 0, '2019-11-23 16:57:41'),
(193, 22, 'Enquiry Overview Widegts', 'enquiry_overview_widegts', 1, 0, 0, 0, '2019-12-01 21:06:09'),
(194, 22, 'Library Overview Widegts', 'book_overview_widegts', 1, 0, 0, 0, '2019-11-30 17:13:04'),
(195, 22, 'Student Today Attendance Widegts', 'today_attendance_widegts', 1, 0, 0, 0, '2019-12-02 20:57:45'),
(196, 6, 'Marks Import', 'marks_import', 1, 0, 0, 0, '2019-11-23 17:02:11'),
(197, 14, 'Student Attendance Type Report', 'student_attendance_type_report', 1, 0, 0, 0, '2019-11-23 17:06:32'),
(198, 14, 'Exam Marks Report', 'exam_marks_report', 1, 0, 0, 0, '2019-11-23 17:11:15'),
(200, 14, 'Online Exam Wise Report', 'online_exam_wise_report', 1, 0, 0, 0, '2019-11-23 17:18:14'),
(201, 14, 'Online Exams Report', 'online_exams_report', 1, 0, 0, 0, '2019-11-28 18:48:05'),
(202, 14, 'Online Exams Attempt Report', 'online_exams_attempt_report', 1, 0, 0, 0, '2019-11-28 18:46:24'),
(203, 14, 'Online Exams Rank Report', 'online_exams_rank_report', 1, 0, 0, 0, '2019-11-23 17:22:25'),
(204, 14, 'Staff Report', 'staff_report', 1, 0, 0, 0, '2019-11-23 17:25:27'),
(205, 6, 'Exam', 'exam', 1, 1, 1, 1, '2019-11-23 20:55:48'),
(207, 6, 'Exam Publish', 'exam_publish', 1, 0, 0, 0, '2019-11-23 21:15:04'),
(208, 6, 'Link Exam', 'link_exam', 1, 0, 1, 0, '2019-11-23 21:15:04'),
(210, 6, 'Assign / View student', 'exam_assign_view_student', 1, 0, 1, 0, '2019-11-23 21:15:04'),
(211, 6, 'Exam Subject', 'exam_subject', 1, 0, 1, 0, '2019-11-23 21:15:04'),
(212, 6, 'Exam Marks', 'exam_marks', 1, 0, 1, 0, '2019-11-23 21:15:04'),
(213, 15, 'Language Switcher', 'language_switcher', 1, 0, 0, 0, '2019-11-23 21:17:11'),
(214, 23, 'Add Questions in Exam ', 'add_questions_in_exam', 1, 0, 1, 0, '2019-11-27 17:38:57'),
(215, 15, 'Custom Fields', 'custom_fields', 1, 0, 0, 0, '2019-11-28 20:08:35'),
(216, 15, 'System Fields', 'system_fields', 1, 0, 0, 0, '2019-11-24 16:15:01'),
(217, 13, 'SMS', 'sms', 1, 0, 0, 0, '2018-06-22 03:40:54'),
(219, 14, 'Student / Period Attendance Report', 'student_period_attendance_report', 1, 0, 0, 0, '2019-11-28 18:19:31'),
(220, 14, 'Biometric Attendance Log', 'biometric_attendance_log', 1, 0, 0, 0, '2019-11-26 21:59:16'),
(221, 14, 'Book Issue Return Report', 'book_issue_return_report', 1, 0, 0, 0, '2019-11-26 22:30:23'),
(222, 23, 'Assign / View Student', 'online_assign_view_student', 1, 0, 1, 0, '2019-11-27 20:20:22'),
(223, 14, 'Rank Report', 'rank_report', 1, 0, 0, 0, '2019-11-28 18:30:21'),
(224, 25, 'Chat', 'chat', 1, 0, 0, 0, '2019-11-28 20:10:28'),
(226, 22, 'Income Donut Graph', 'income_donut_graph', 1, 0, 0, 0, '2019-11-28 21:00:33'),
(227, 22, 'Expense Donut Graph', 'expense_donut_graph', 1, 0, 0, 0, '2019-11-28 21:01:10'),
(228, 9, 'Import Book', 'import_book', 1, 0, 0, 0, '2019-11-28 22:21:01'),
(229, 22, 'Staff Present Today Widegts', 'staff_present_today_widegts', 1, 0, 0, 0, '2019-11-28 22:48:00'),
(230, 22, 'Student Present Today Widegts', 'student_present_today_widegts', 1, 0, 0, 0, '2019-11-28 22:47:42'),
(231, 26, 'Multi Class Student', 'multi_class_student', 1, 1, 1, 1, '2020-10-05 01:56:27'),
(232, 27, 'Online Admission', 'online_admission', 1, 0, 1, 1, '2019-12-01 22:11:10'),
(233, 15, 'Print Header Footer', 'print_header_footer', 1, 0, 0, 0, '2020-02-11 18:02:02'),
(234, 28, 'Manage Alumni', 'manage_alumni', 1, 1, 1, 1, '2020-06-01 20:15:46'),
(235, 28, 'Events', 'events', 1, 1, 1, 1, '2020-05-28 14:48:52'),
(236, 29, 'Manage Lesson Plan', 'manage_lesson_plan', 1, 1, 1, 0, '2020-05-28 15:17:37'),
(237, 29, 'Manage Syllabus Status', 'manage_syllabus_status', 1, 0, 1, 0, '2020-05-28 15:20:11'),
(238, 29, 'Lesson', 'lesson', 1, 1, 1, 1, '2020-05-28 15:20:11'),
(239, 29, 'Topic', 'topic', 1, 1, 1, 1, '2020-05-28 15:20:11'),
(240, 14, 'Syllabus Status Report', 'syllabus_status_report', 1, 0, 0, 0, '2020-05-28 16:17:54'),
(241, 14, 'Teacher Syllabus Status Report', 'teacher_syllabus_status_report', 1, 0, 0, 0, '2020-05-28 16:17:54'),
(242, 14, 'Alumni Report', 'alumni_report', 1, 0, 0, 0, '2020-06-07 16:59:54'),
(243, 15, 'Student Profile Update', 'student_profile_update', 1, 0, 0, 0, '2020-08-20 22:36:33'),
(244, 14, 'Student Gender Ratio Report', 'student_gender_ratio_report', 1, 0, 0, 0, '2020-08-22 05:37:51'),
(245, 14, 'Student Teacher Ratio Report', 'student_teacher_ratio_report', 1, 0, 0, 0, '2020-08-22 05:42:27'),
(246, 14, 'Daily Attendance Report', 'daily_attendance_report', 1, 0, 0, 0, '2020-08-22 05:43:16'),
(247, 23, 'Import Question', 'import_question', 1, 0, 0, 0, '2019-11-23 10:25:18'),
(248, 20, 'Staff ID Card', 'staff_id_card', 1, 1, 1, 1, '2018-07-06 03:41:28'),
(249, 20, 'Generate Staff ID Card', 'generate_staff_id_card', 1, 0, 0, 0, '2018-07-06 03:41:49');

-- --------------------------------------------------------

--
-- Table structure for table `permission_group`
--

CREATE TABLE `permission_group` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `short_code` varchar(100) NOT NULL,
  `is_active` int(11) DEFAULT 0,
  `system` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permission_group`
--

INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `created_at`) VALUES
(1, 'Student Information', 'student_information', 1, 1, '2019-03-15 02:30:22'),
(2, 'Fees Collection', 'fees_collection', 1, 0, '2020-06-10 17:51:35'),
(3, 'Income', 'income', 1, 0, '2020-05-31 18:57:39'),
(4, 'Expense', 'expense', 1, 0, '2019-03-15 02:06:22'),
(5, 'Student Attendance', 'student_attendance', 1, 0, '2018-07-02 00:48:08'),
(6, 'Examination', 'examination', 1, 0, '2018-07-10 19:49:08'),
(7, 'Academics', 'academics', 1, 1, '2018-07-02 00:25:43'),
(8, 'Download Center', 'download_center', 1, 0, '2018-07-02 00:49:29'),
(9, 'Library', 'library', 1, 0, '2018-06-28 04:13:14'),
(10, 'Inventory', 'inventory', 1, 0, '2018-06-26 17:48:58'),
(11, 'Transport', 'transport', 1, 0, '2018-06-27 00:51:26'),
(12, 'Hostel', 'hostel', 1, 0, '2018-07-02 00:49:32'),
(13, 'Communicate', 'communicate', 1, 0, '2018-07-02 00:50:00'),
(14, 'Reports', 'reports', 1, 1, '2018-06-26 20:40:22'),
(15, 'System Settings', 'system_settings', 1, 1, '2018-06-26 20:40:28'),
(16, 'Front CMS', 'front_cms', 1, 0, '2018-07-09 22:16:54'),
(17, 'Front Office', 'front_office', 1, 0, '2018-06-26 20:45:30'),
(18, 'Human Resource', 'human_resource', 1, 1, '2018-06-26 20:41:02'),
(19, 'Homework', 'homework', 1, 0, '2018-06-26 17:49:38'),
(20, 'Certificate', 'certificate', 1, 0, '2018-06-27 00:51:29'),
(21, 'Calendar To Do List', 'calendar_to_do_list', 1, 0, '2019-03-15 02:06:25'),
(22, 'Dashboard and Widgets', 'dashboard_and_widgets', 1, 1, '2018-06-26 20:41:17'),
(23, 'Online Examination', 'online_examination', 1, 0, '2020-05-31 19:25:36'),
(25, 'Chat', 'chat', 1, 0, '2019-11-23 15:54:04'),
(26, 'Multi Class', 'multi_class', 1, 0, '2019-11-27 04:14:14'),
(27, 'Online Admission', 'online_admission', 1, 0, '2019-11-26 18:42:13'),
(28, 'Alumni', 'alumni', 1, 0, '2020-05-28 17:26:38'),
(29, 'Lesson Plan', 'lesson_plan', 1, 0, '2020-06-06 22:38:30');

-- --------------------------------------------------------

--
-- Table structure for table `permission_student`
--

CREATE TABLE `permission_student` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `short_code` varchar(100) NOT NULL,
  `system` int(11) NOT NULL,
  `student` int(11) NOT NULL,
  `parent` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permission_student`
--

INSERT INTO `permission_student` (`id`, `name`, `short_code`, `system`, `student`, `parent`, `group_id`, `created_at`) VALUES
(1, 'Fees', 'fees', 0, 1, 1, 2, '2020-06-10 17:51:35'),
(2, 'Class Timetable', 'class_timetable', 1, 1, 1, 7, '2020-05-30 12:57:50'),
(3, 'Homework', 'homework', 0, 1, 1, 19, '2020-05-31 19:49:14'),
(4, 'Download Center', 'download_center', 0, 1, 1, 8, '2020-05-31 19:52:49'),
(5, 'Attendance', 'attendance', 0, 1, 1, 5, '2020-05-31 19:57:18'),
(7, 'Examinations', 'examinations', 0, 1, 1, 6, '2020-05-31 19:59:50'),
(8, 'Notice Board', 'notice_board', 0, 1, 1, 13, '2020-05-31 20:00:35'),
(11, 'Library', 'library', 0, 1, 1, 9, '2020-05-31 20:02:37'),
(12, 'Transport Routes', 'transport_routes', 0, 1, 1, 11, '2020-05-31 20:51:30'),
(13, 'Hostel Rooms', 'hostel_rooms', 0, 1, 1, 12, '2020-05-31 20:52:27'),
(14, 'Calendar To Do List', 'calendar_to_do_list', 0, 1, 1, 21, '2020-05-31 20:53:18'),
(15, 'Online Examination', 'online_examination', 0, 1, 1, 23, '2020-06-10 22:20:01'),
(16, 'Teachers Rating', 'teachers_rating', 0, 1, 1, 0, '2020-05-31 21:49:58'),
(17, 'Chat', 'chat', 0, 1, 1, 25, '2020-05-31 21:53:06'),
(18, 'Multi Class', 'multi_class', 1, 1, 1, 26, '2020-05-30 12:56:52'),
(19, 'Lesson Plan', 'lesson_plan', 0, 1, 1, 29, '2020-06-06 22:38:30'),
(20, 'Syllabus Status', 'syllabus_status', 0, 1, 1, 29, '2020-06-06 22:38:30'),
(23, 'Apply Leave', 'apply_leave', 0, 1, 1, 0, '2020-06-10 22:20:23');

-- --------------------------------------------------------

--
-- Table structure for table `print_headerfooter`
--

CREATE TABLE `print_headerfooter` (
  `id` int(11) NOT NULL,
  `print_type` varchar(255) NOT NULL,
  `header_image` varchar(255) NOT NULL,
  `footer_content` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `entry_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `print_headerfooter`
--

INSERT INTO `print_headerfooter` (`id`, `print_type`, `header_image`, `footer_content`, `created_by`, `entry_date`) VALUES
(1, 'staff_payslip', 'header_image.jpg', 'This payslip is computer generated hence no signature is required.', 1, '2020-02-28 07:41:08'),
(2, 'student_receipt', 'header_image.jpg', 'This receipt is computer generated hence no signature is required.', 4, '2021-07-21 10:02:53'),
(3, 'online_admission_receipt', 'header_image.jpg', 'This receipt is for online admission  computer ffffffff generated hence no signature is required.', 1, '2021-05-27 05:50:24');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `question_type` varchar(100) NOT NULL,
  `level` varchar(10) NOT NULL,
  `class_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `class_section_id` int(11) DEFAULT NULL,
  `question` text DEFAULT NULL,
  `opt_a` text DEFAULT NULL,
  `opt_b` text DEFAULT NULL,
  `opt_c` text DEFAULT NULL,
  `opt_d` text DEFAULT NULL,
  `opt_e` text DEFAULT NULL,
  `correct` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `question_answers`
--

CREATE TABLE `question_answers` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `question_options`
--

CREATE TABLE `question_options` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `read_notification`
--

CREATE TABLE `read_notification` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `parent_id` int(10) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `notification_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `reference`
--

CREATE TABLE `reference` (
  `id` int(11) NOT NULL,
  `reference` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `slug` varchar(150) DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `is_system` int(1) NOT NULL DEFAULT 0,
  `is_superadmin` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `is_active`, `is_system`, `is_superadmin`, `created_at`, `updated_at`) VALUES
(1, 'Admin', NULL, 0, 1, 0, '2018-06-30 08:39:11', '0000-00-00'),
(2, 'Teacher', NULL, 0, 1, 0, '2018-06-30 08:39:14', '0000-00-00'),
(3, 'Accountant', NULL, 0, 1, 0, '2018-06-30 08:39:17', '0000-00-00'),
(4, 'Librarian', NULL, 0, 1, 0, '2018-06-30 08:39:21', '0000-00-00'),
(6, 'Receptionist', NULL, 0, 1, 0, '2018-07-01 22:39:03', '0000-00-00'),
(7, 'Super Admin', NULL, 0, 1, 1, '2018-07-11 07:11:29', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `roles_permissions`
--

CREATE TABLE `roles_permissions` (
  `id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `perm_cat_id` int(11) DEFAULT NULL,
  `can_view` int(11) DEFAULT NULL,
  `can_add` int(11) DEFAULT NULL,
  `can_edit` int(11) DEFAULT NULL,
  `can_delete` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `roles_permissions`
--

INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES
(10, 1, 17, 1, 1, 1, 1, '2018-07-06 02:48:56'),
(11, 1, 78, 1, 1, 1, 1, '2018-07-02 17:49:43'),
(23, 1, 12, 1, 1, 1, 1, '2018-07-06 02:45:38'),
(24, 1, 13, 1, 1, 1, 1, '2018-07-06 02:48:28'),
(26, 1, 15, 1, 1, 1, 0, '2019-11-27 15:47:28'),
(28, 1, 19, 1, 1, 1, 0, '2018-07-02 04:31:10'),
(30, 1, 76, 1, 1, 1, 0, '2018-07-02 04:31:10'),
(31, 1, 21, 1, 0, 1, 0, '2019-11-25 20:51:15'),
(32, 1, 22, 1, 1, 1, 1, '2018-07-02 04:32:05'),
(34, 1, 24, 1, 1, 1, 1, '2019-11-27 22:35:20'),
(43, 1, 32, 1, 1, 1, 1, '2018-07-06 03:22:05'),
(44, 1, 33, 1, 1, 1, 1, '2018-07-06 03:22:29'),
(45, 1, 34, 1, 1, 1, 1, '2018-07-06 03:23:59'),
(46, 1, 35, 1, 1, 1, 1, '2018-07-06 03:24:34'),
(47, 1, 104, 1, 1, 1, 1, '2018-07-06 03:23:08'),
(48, 1, 37, 1, 1, 1, 1, '2018-07-06 03:25:30'),
(49, 1, 38, 1, 1, 1, 1, '2018-07-08 22:15:27'),
(58, 1, 52, 1, 1, 0, 1, '2018-07-08 20:19:43'),
(61, 1, 55, 1, 1, 1, 1, '2018-07-02 02:24:16'),
(67, 1, 61, 1, 1, 0, 1, '2018-07-08 22:59:19'),
(68, 1, 62, 1, 1, 0, 1, '2018-07-08 22:59:19'),
(69, 1, 63, 1, 1, 0, 1, '2018-07-08 20:51:38'),
(70, 1, 64, 1, 1, 1, 1, '2018-07-08 20:02:19'),
(71, 1, 65, 1, 1, 1, 1, '2018-07-08 20:11:21'),
(72, 1, 66, 1, 1, 1, 1, '2018-07-08 20:13:09'),
(73, 1, 67, 1, 1, 1, 1, '2018-07-08 20:14:47'),
(74, 1, 79, 1, 1, 0, 1, '2019-11-29 17:32:51'),
(75, 1, 80, 1, 1, 1, 1, '2018-07-06 02:41:23'),
(76, 1, 81, 1, 1, 1, 1, '2018-07-06 02:41:23'),
(78, 1, 83, 1, 1, 1, 1, '2018-07-06 02:41:23'),
(79, 1, 84, 1, 1, 1, 1, '2018-07-06 02:41:23'),
(80, 1, 85, 1, 1, 1, 1, '2018-07-11 17:16:00'),
(87, 1, 92, 1, 1, 1, 1, '2018-06-25 20:33:43'),
(94, 1, 82, 1, 1, 1, 1, '2018-07-06 02:41:23'),
(120, 1, 39, 1, 1, 1, 1, '2018-07-06 03:26:28'),
(156, 1, 9, 1, 1, 1, 1, '2019-11-27 15:45:46'),
(157, 1, 10, 1, 1, 1, 1, '2019-11-27 15:45:46'),
(159, 1, 40, 1, 1, 1, 1, '2019-11-29 16:49:39'),
(160, 1, 41, 1, 1, 1, 1, '2019-12-01 21:43:41'),
(161, 1, 42, 1, 1, 1, 1, '2019-11-29 16:49:39'),
(169, 1, 27, 1, 1, 0, 1, '2019-11-28 22:15:37'),
(178, 1, 54, 1, 0, 1, 0, '2018-07-05 02:09:22'),
(179, 1, 56, 1, 0, 1, 0, '2019-11-29 16:49:54'),
(180, 1, 57, 1, 0, 1, 0, '2019-11-29 17:32:51'),
(181, 1, 58, 1, 0, 1, 0, '2019-11-29 17:32:51'),
(182, 1, 59, 1, 0, 1, 0, '2019-11-29 17:32:51'),
(183, 1, 60, 1, 0, 1, 0, '2019-11-29 16:59:57'),
(190, 1, 105, 1, 0, 0, 0, '2018-07-02 04:13:25'),
(199, 1, 75, 1, 0, 0, 0, '2018-07-02 04:19:46'),
(201, 1, 14, 1, 0, 0, 0, '2018-07-02 04:22:03'),
(203, 1, 16, 1, 0, 0, 0, '2018-07-02 04:24:21'),
(204, 1, 26, 1, 0, 0, 0, '2018-07-02 04:32:05'),
(206, 1, 29, 1, 0, 0, 0, '2018-07-02 04:43:54'),
(207, 1, 30, 1, 0, 0, 0, '2018-07-02 04:43:54'),
(208, 1, 31, 1, 1, 1, 1, '2019-11-29 17:32:51'),
(215, 1, 50, 1, 0, 0, 0, '2018-07-02 05:04:53'),
(216, 1, 51, 1, 0, 0, 0, '2018-07-02 05:04:53'),
(222, 1, 1, 1, 1, 1, 1, '2019-11-27 14:55:06'),
(227, 1, 91, 1, 0, 0, 0, '2018-07-02 18:49:27'),
(230, 10, 53, 0, 1, 0, 0, '2018-07-02 20:52:55'),
(231, 10, 54, 0, 0, 1, 0, '2018-07-02 20:52:55'),
(232, 10, 55, 1, 1, 1, 1, '2018-07-02 20:58:42'),
(233, 10, 56, 0, 0, 1, 0, '2018-07-02 20:52:55'),
(235, 10, 58, 0, 0, 1, 0, '2018-07-02 20:52:55'),
(236, 10, 59, 0, 0, 1, 0, '2018-07-02 20:52:55'),
(239, 10, 1, 1, 1, 1, 1, '2018-07-02 21:16:43'),
(241, 10, 3, 1, 0, 0, 0, '2018-07-02 21:23:56'),
(242, 10, 2, 1, 0, 0, 0, '2018-07-02 21:24:39'),
(243, 10, 4, 1, 0, 1, 1, '2018-07-02 21:31:24'),
(245, 10, 107, 1, 0, 0, 0, '2018-07-02 21:36:41'),
(246, 10, 5, 1, 1, 0, 1, '2018-07-02 21:38:18'),
(247, 10, 7, 1, 1, 1, 1, '2018-07-02 21:42:07'),
(248, 10, 68, 1, 0, 0, 0, '2018-07-02 21:42:53'),
(249, 10, 69, 1, 1, 1, 1, '2018-07-02 21:49:46'),
(250, 10, 70, 1, 0, 0, 1, '2018-07-02 21:52:40'),
(251, 10, 72, 1, 0, 0, 0, '2018-07-02 21:56:46'),
(252, 10, 73, 1, 0, 0, 0, '2018-07-02 21:56:46'),
(253, 10, 74, 1, 0, 0, 0, '2018-07-02 21:58:34'),
(254, 10, 75, 1, 0, 0, 0, '2018-07-02 21:58:34'),
(255, 10, 9, 1, 1, 1, 1, '2018-07-02 22:02:22'),
(256, 10, 10, 1, 1, 1, 1, '2018-07-02 22:03:09'),
(257, 10, 11, 1, 0, 0, 0, '2018-07-02 22:03:09'),
(258, 10, 12, 1, 1, 1, 1, '2018-07-02 22:08:40'),
(259, 10, 13, 1, 1, 1, 1, '2018-07-02 22:08:40'),
(260, 10, 14, 1, 0, 0, 0, '2018-07-02 22:08:53'),
(261, 10, 15, 1, 1, 1, 0, '2018-07-02 22:11:28'),
(262, 10, 16, 1, 0, 0, 0, '2018-07-02 22:12:12'),
(263, 10, 17, 1, 1, 1, 1, '2018-07-02 22:14:30'),
(264, 10, 19, 1, 1, 1, 0, '2018-07-02 22:15:45'),
(265, 10, 20, 1, 1, 1, 1, '2018-07-02 22:18:51'),
(266, 10, 76, 1, 0, 0, 0, '2018-07-02 22:21:21'),
(267, 10, 21, 1, 1, 1, 0, '2018-07-02 22:22:45'),
(268, 10, 22, 1, 1, 1, 1, '2018-07-02 22:25:00'),
(269, 10, 23, 1, 1, 1, 1, '2018-07-02 22:27:16'),
(270, 10, 24, 1, 1, 1, 1, '2018-07-02 22:27:49'),
(271, 10, 25, 1, 1, 1, 1, '2018-07-02 22:27:49'),
(272, 10, 26, 1, 0, 0, 0, '2018-07-02 22:28:25'),
(273, 10, 77, 1, 1, 1, 1, '2018-07-02 22:29:57'),
(274, 10, 27, 1, 1, 0, 1, '2018-07-02 22:30:36'),
(275, 10, 28, 1, 1, 1, 1, '2018-07-02 22:33:09'),
(276, 10, 29, 1, 0, 0, 0, '2018-07-02 22:34:03'),
(277, 10, 30, 1, 0, 0, 0, '2018-07-02 22:34:03'),
(278, 10, 31, 1, 0, 0, 0, '2018-07-02 22:34:03'),
(279, 10, 32, 1, 1, 1, 1, '2018-07-02 22:35:42'),
(280, 10, 33, 1, 1, 1, 1, '2018-07-02 22:36:32'),
(281, 10, 34, 1, 1, 1, 1, '2018-07-02 22:38:03'),
(282, 10, 35, 1, 1, 1, 1, '2018-07-02 22:38:41'),
(283, 10, 104, 1, 1, 1, 1, '2018-07-02 22:40:43'),
(284, 10, 37, 1, 1, 1, 1, '2018-07-02 22:42:42'),
(285, 10, 38, 1, 1, 1, 1, '2018-07-02 22:43:56'),
(286, 10, 39, 1, 1, 1, 1, '2018-07-02 22:45:39'),
(287, 10, 40, 1, 1, 1, 1, '2018-07-02 22:47:22'),
(288, 10, 41, 1, 1, 1, 1, '2018-07-02 22:48:54'),
(289, 10, 42, 1, 1, 1, 1, '2018-07-02 22:49:31'),
(290, 10, 43, 1, 1, 1, 1, '2018-07-02 22:51:15'),
(291, 10, 44, 1, 0, 0, 0, '2018-07-02 22:52:06'),
(292, 10, 46, 1, 0, 0, 0, '2018-07-02 22:52:06'),
(293, 10, 50, 1, 0, 0, 0, '2018-07-02 22:52:59'),
(294, 10, 51, 1, 0, 0, 0, '2018-07-02 22:52:59'),
(295, 10, 60, 0, 0, 1, 0, '2018-07-02 22:55:05'),
(296, 10, 61, 1, 1, 1, 1, '2018-07-02 22:56:52'),
(297, 10, 62, 1, 1, 1, 1, '2018-07-02 22:58:53'),
(298, 10, 63, 1, 1, 0, 0, '2018-07-02 22:59:37'),
(299, 10, 64, 1, 1, 1, 1, '2018-07-02 23:00:27'),
(300, 10, 65, 1, 1, 1, 1, '2018-07-02 23:02:51'),
(301, 10, 66, 1, 1, 1, 1, '2018-07-02 23:02:51'),
(302, 10, 67, 1, 0, 0, 0, '2018-07-02 23:02:51'),
(303, 10, 78, 1, 1, 1, 1, '2018-07-03 21:10:04'),
(307, 1, 126, 1, 0, 0, 0, '2018-07-03 02:26:13'),
(310, 1, 119, 1, 0, 0, 0, '2018-07-03 03:15:00'),
(311, 1, 120, 1, 0, 0, 0, '2018-07-03 03:15:00'),
(315, 1, 123, 1, 0, 0, 0, '2018-07-03 03:27:03'),
(317, 1, 124, 1, 0, 0, 0, '2018-07-03 03:29:14'),
(320, 1, 47, 1, 0, 0, 0, '2018-07-03 04:01:12'),
(321, 1, 121, 1, 0, 0, 0, '2018-07-03 04:01:12'),
(369, 1, 102, 1, 1, 1, 1, '2019-12-01 21:02:15'),
(372, 10, 79, 1, 1, 0, 0, '2018-07-03 21:10:04'),
(373, 10, 80, 1, 1, 1, 1, '2018-07-03 21:23:09'),
(374, 10, 81, 1, 1, 1, 1, '2018-07-03 21:23:50'),
(375, 10, 82, 1, 1, 1, 1, '2018-07-03 21:26:54'),
(376, 10, 83, 1, 1, 1, 1, '2018-07-03 21:27:55'),
(377, 10, 84, 1, 1, 1, 1, '2018-07-03 21:30:26'),
(378, 10, 85, 1, 1, 1, 1, '2018-07-03 21:32:54'),
(379, 10, 86, 1, 1, 1, 1, '2018-07-03 21:46:18'),
(380, 10, 87, 1, 0, 0, 0, '2018-07-03 21:49:49'),
(381, 10, 88, 1, 1, 1, 0, '2018-07-03 21:51:20'),
(382, 10, 89, 1, 0, 0, 0, '2018-07-03 21:51:51'),
(383, 10, 90, 1, 1, 0, 1, '2018-07-03 21:55:01'),
(384, 10, 91, 1, 0, 0, 0, '2018-07-03 21:55:01'),
(385, 10, 108, 1, 1, 1, 1, '2018-07-03 21:57:46'),
(386, 10, 109, 1, 1, 1, 1, '2018-07-03 21:58:26'),
(387, 10, 110, 1, 1, 1, 1, '2018-07-03 22:02:43'),
(388, 10, 111, 1, 1, 1, 1, '2018-07-03 22:03:21'),
(389, 10, 112, 1, 1, 1, 1, '2018-07-03 22:05:06'),
(390, 10, 127, 1, 0, 0, 0, '2018-07-03 22:05:06'),
(391, 10, 93, 1, 1, 1, 1, '2018-07-03 22:07:14'),
(392, 10, 94, 1, 1, 0, 0, '2018-07-03 22:08:02'),
(394, 10, 95, 1, 0, 0, 0, '2018-07-03 22:08:44'),
(395, 10, 102, 1, 1, 1, 1, '2018-07-03 22:11:02'),
(396, 10, 106, 1, 0, 0, 0, '2018-07-03 22:11:39'),
(397, 10, 113, 1, 0, 0, 0, '2018-07-03 22:12:37'),
(398, 10, 114, 1, 0, 0, 0, '2018-07-03 22:12:37'),
(399, 10, 115, 1, 0, 0, 0, '2018-07-03 22:18:45'),
(400, 10, 116, 1, 0, 0, 0, '2018-07-03 22:18:45'),
(401, 10, 117, 1, 0, 0, 0, '2018-07-03 22:19:43'),
(402, 10, 118, 1, 0, 0, 0, '2018-07-03 22:19:43'),
(434, 1, 125, 1, 0, 0, 0, '2018-07-06 02:59:26'),
(435, 1, 96, 1, 1, 1, 1, '2018-07-08 18:03:54'),
(445, 1, 48, 1, 0, 0, 0, '2018-07-06 04:49:35'),
(446, 1, 49, 1, 0, 0, 0, '2018-07-06 04:49:35'),
(461, 1, 97, 1, 0, 0, 0, '2018-07-08 18:00:16'),
(462, 1, 95, 1, 0, 0, 0, '2018-07-08 18:18:41'),
(464, 1, 86, 1, 1, 1, 1, '2019-11-27 22:39:19'),
(474, 1, 130, 1, 1, 0, 1, '2018-07-09 03:56:36'),
(476, 1, 131, 1, 0, 0, 0, '2018-07-08 21:53:32'),
(479, 2, 47, 1, 0, 0, 0, '2018-07-09 23:47:12'),
(480, 2, 105, 1, 0, 0, 0, '2018-07-09 23:47:12'),
(482, 2, 119, 1, 0, 0, 0, '2018-07-09 23:47:12'),
(483, 2, 120, 1, 0, 0, 0, '2018-07-09 23:47:12'),
(486, 2, 16, 1, 0, 0, 0, '2018-07-09 23:47:12'),
(493, 2, 22, 1, 0, 0, 0, '2018-07-11 17:20:27'),
(504, 2, 95, 1, 0, 0, 0, '2018-07-09 23:47:12'),
(513, 3, 72, 1, 0, 0, 0, '2018-07-10 00:07:30'),
(517, 3, 75, 1, 0, 0, 0, '2018-07-10 00:10:38'),
(527, 3, 89, 1, 0, 0, 0, '2018-07-10 00:18:44'),
(529, 3, 91, 1, 0, 0, 0, '2018-07-10 00:18:44'),
(549, 3, 124, 1, 0, 0, 0, '2018-07-10 00:22:17'),
(557, 6, 82, 1, 1, 1, 1, '2019-11-30 17:48:28'),
(558, 6, 83, 1, 1, 1, 1, '2019-11-30 17:49:08'),
(559, 6, 84, 1, 1, 1, 1, '2019-11-30 17:49:59'),
(575, 6, 44, 1, 0, 0, 0, '2018-07-10 00:35:33'),
(576, 6, 46, 1, 0, 0, 0, '2018-07-10 00:35:33'),
(578, 6, 102, 1, 1, 1, 1, '2019-11-30 17:52:27'),
(594, 3, 125, 1, 0, 0, 0, '2018-07-10 00:58:12'),
(595, 3, 48, 1, 0, 0, 0, '2018-07-10 00:58:12'),
(596, 3, 49, 1, 0, 0, 0, '2018-07-10 00:58:12'),
(617, 2, 17, 1, 1, 1, 1, '2018-07-10 23:55:14'),
(618, 2, 19, 1, 1, 1, 0, '2018-07-10 23:55:14'),
(620, 2, 76, 1, 1, 1, 0, '2018-07-10 23:55:14'),
(622, 2, 121, 1, 0, 0, 0, '2018-07-10 23:56:27'),
(625, 1, 28, 1, 1, 1, 1, '2019-11-28 22:19:18'),
(628, 6, 22, 1, 0, 0, 0, '2018-07-11 17:23:47'),
(634, 4, 102, 1, 1, 1, 1, '2019-11-30 17:03:00'),
(662, 1, 138, 1, 0, 0, 0, '2019-10-31 19:28:24'),
(663, 1, 139, 1, 1, 1, 1, '2019-10-31 19:28:24'),
(664, 1, 140, 1, 1, 1, 1, '2019-10-31 19:28:24'),
(669, 1, 145, 1, 0, 0, 0, '2019-11-25 20:51:15'),
(677, 1, 153, 1, 0, 0, 0, '2019-10-31 19:28:24'),
(690, 1, 166, 1, 0, 0, 0, '2019-10-31 19:28:24'),
(691, 1, 167, 1, 0, 0, 0, '2019-10-31 19:28:24'),
(692, 1, 168, 1, 0, 0, 0, '2019-10-31 19:28:24'),
(693, 1, 170, 1, 0, 0, 0, '2019-10-31 19:28:24'),
(694, 1, 172, 1, 0, 0, 0, '2019-10-31 19:28:24'),
(695, 1, 173, 1, 0, 0, 0, '2019-10-31 19:28:24'),
(720, 1, 216, 1, 0, 0, 0, '2019-11-25 21:24:12'),
(728, 1, 185, 1, 1, 1, 1, '2019-11-27 18:50:33'),
(729, 1, 186, 1, 1, 1, 1, '2019-11-27 18:49:07'),
(730, 1, 214, 1, 0, 1, 0, '2019-11-27 17:47:53'),
(732, 1, 198, 1, 0, 0, 0, '2019-11-25 21:24:30'),
(733, 1, 199, 1, 0, 0, 0, '2019-11-25 21:24:30'),
(734, 1, 200, 1, 0, 0, 0, '2019-11-25 21:24:30'),
(735, 1, 201, 1, 0, 0, 0, '2019-11-25 21:24:30'),
(736, 1, 202, 1, 0, 0, 0, '2019-11-25 21:24:30'),
(737, 1, 203, 1, 0, 0, 0, '2019-11-25 21:24:30'),
(739, 1, 218, 1, 0, 0, 0, '2019-11-26 22:36:31'),
(743, 1, 218, 1, 0, 0, 0, '2019-11-26 22:36:32'),
(747, 1, 2, 1, 0, 0, 0, '2019-11-27 14:56:08'),
(748, 1, 3, 1, 1, 1, 1, '2019-11-27 14:56:32'),
(749, 1, 4, 1, 1, 1, 1, '2019-11-27 14:56:48'),
(751, 1, 128, 0, 1, 0, 1, '2019-11-27 14:57:01'),
(752, 1, 132, 1, 0, 1, 1, '2019-11-27 15:02:23'),
(754, 1, 134, 1, 1, 1, 1, '2019-11-27 15:18:21'),
(755, 1, 5, 1, 1, 0, 1, '2019-11-27 15:35:07'),
(756, 1, 6, 1, 0, 0, 0, '2019-11-27 15:35:25'),
(757, 1, 7, 1, 1, 1, 1, '2019-11-27 15:36:35'),
(758, 1, 8, 1, 1, 1, 1, '2019-11-27 15:37:27'),
(760, 1, 68, 1, 0, 0, 0, '2019-11-27 15:38:06'),
(761, 1, 69, 1, 1, 1, 1, '2019-11-27 15:39:06'),
(762, 1, 70, 1, 1, 1, 1, '2019-11-27 15:39:41'),
(763, 1, 71, 1, 0, 0, 0, '2019-11-27 15:39:59'),
(764, 1, 72, 1, 0, 0, 0, '2019-11-27 15:40:11'),
(765, 1, 73, 1, 0, 0, 0, '2019-11-27 15:43:15'),
(766, 1, 74, 1, 0, 0, 0, '2019-11-27 15:43:55'),
(768, 1, 11, 1, 0, 0, 0, '2019-11-27 15:45:46'),
(769, 1, 122, 1, 0, 0, 0, '2019-11-27 15:52:43'),
(771, 1, 136, 1, 0, 0, 0, '2019-11-27 15:55:36'),
(772, 1, 20, 1, 1, 1, 1, '2019-11-27 20:06:44'),
(773, 1, 137, 1, 1, 1, 1, '2019-11-27 16:46:14'),
(774, 1, 141, 1, 1, 1, 1, '2019-11-27 16:59:42'),
(775, 1, 142, 1, 0, 0, 0, '2019-11-27 15:56:12'),
(776, 1, 143, 1, 1, 1, 1, '2019-11-27 16:59:42'),
(777, 1, 144, 1, 0, 0, 0, '2019-11-27 15:56:12'),
(778, 1, 187, 1, 0, 0, 0, '2019-11-27 15:56:12'),
(779, 1, 196, 1, 0, 0, 0, '2019-11-27 15:56:12'),
(781, 1, 207, 1, 0, 0, 0, '2019-11-27 15:56:12'),
(782, 1, 208, 1, 0, 1, 0, '2019-11-27 16:10:22'),
(783, 1, 210, 1, 0, 1, 0, '2019-11-27 16:34:40'),
(784, 1, 211, 1, 0, 1, 0, '2019-11-27 16:38:23'),
(785, 1, 212, 1, 0, 1, 0, '2019-11-27 16:42:15'),
(786, 1, 205, 1, 1, 1, 1, '2019-11-27 16:42:15'),
(787, 1, 222, 1, 0, 1, 0, '2019-11-27 17:36:36'),
(788, 1, 77, 1, 1, 1, 1, '2019-11-27 22:22:10'),
(789, 1, 188, 1, 1, 1, 1, '2019-11-27 22:26:16'),
(790, 1, 23, 1, 1, 1, 1, '2019-11-27 22:34:20'),
(791, 1, 25, 1, 1, 1, 1, '2019-11-27 22:36:20'),
(792, 1, 127, 1, 0, 0, 0, '2019-11-27 22:41:25'),
(794, 1, 88, 1, 1, 1, 0, '2019-11-27 22:43:04'),
(795, 1, 90, 1, 1, 0, 1, '2019-11-27 22:46:22'),
(796, 1, 108, 1, 0, 1, 1, '2021-01-22 23:09:32'),
(797, 1, 109, 1, 1, 0, 0, '2019-11-28 15:38:11'),
(798, 1, 110, 1, 1, 1, 1, '2019-11-28 15:49:29'),
(799, 1, 111, 1, 1, 1, 1, '2019-11-28 15:49:57'),
(800, 1, 112, 1, 1, 1, 1, '2019-11-28 15:49:57'),
(801, 1, 129, 0, 1, 0, 1, '2019-11-28 15:49:57'),
(802, 1, 189, 1, 0, 1, 1, '2019-11-28 15:59:22'),
(806, 2, 133, 1, 0, 1, 0, '2019-11-28 16:34:35'),
(810, 2, 1, 1, 1, 1, 1, '2019-11-29 18:54:16'),
(813, 1, 133, 1, 0, 1, 0, '2019-11-28 16:39:57'),
(817, 1, 93, 1, 1, 1, 1, '2019-11-28 16:56:14'),
(825, 1, 87, 1, 0, 0, 0, '2019-11-28 16:56:14'),
(829, 1, 94, 1, 1, 0, 0, '2019-11-28 16:57:57'),
(836, 1, 146, 1, 0, 0, 0, '2019-11-28 17:13:28'),
(837, 1, 147, 1, 0, 0, 0, '2019-11-28 17:13:28'),
(838, 1, 148, 1, 0, 0, 0, '2019-11-28 17:13:28'),
(839, 1, 149, 1, 0, 0, 0, '2019-11-28 17:13:28'),
(840, 1, 150, 1, 0, 0, 0, '2019-11-28 17:13:28'),
(841, 1, 151, 1, 0, 0, 0, '2019-11-28 17:13:28'),
(842, 1, 152, 1, 0, 0, 0, '2019-11-28 17:13:28'),
(843, 1, 154, 1, 0, 0, 0, '2019-11-28 17:13:28'),
(862, 1, 155, 1, 0, 0, 0, '2019-11-28 18:07:30'),
(863, 1, 156, 1, 0, 0, 0, '2019-11-28 18:07:52'),
(864, 1, 157, 1, 0, 0, 0, '2019-11-28 18:08:05'),
(874, 1, 158, 1, 0, 0, 0, '2019-11-28 18:14:03'),
(875, 1, 159, 1, 0, 0, 0, '2019-11-28 18:14:31'),
(876, 1, 160, 1, 0, 0, 0, '2019-11-28 18:14:44'),
(878, 1, 162, 1, 0, 0, 0, '2019-11-28 18:15:58'),
(879, 1, 163, 1, 0, 0, 0, '2019-11-28 18:16:19'),
(882, 1, 164, 1, 0, 0, 0, '2019-11-28 18:25:17'),
(884, 1, 165, 1, 0, 0, 0, '2019-11-28 18:25:30'),
(886, 1, 197, 1, 0, 0, 0, '2019-11-28 18:25:48'),
(887, 1, 219, 1, 0, 0, 0, '2019-11-28 18:26:05'),
(889, 1, 220, 1, 0, 0, 0, '2019-11-28 18:26:22'),
(932, 1, 204, 1, 0, 0, 0, '2019-11-28 19:43:27'),
(933, 1, 221, 1, 0, 0, 0, '2019-11-28 19:45:04'),
(934, 1, 178, 1, 0, 0, 0, '2019-11-28 19:45:16'),
(935, 1, 179, 1, 0, 0, 0, '2019-11-28 19:45:33'),
(936, 1, 161, 1, 0, 0, 0, '2019-11-28 19:45:48'),
(937, 1, 180, 1, 0, 0, 0, '2019-11-28 19:45:48'),
(938, 1, 181, 1, 0, 0, 0, '2019-11-28 19:49:33'),
(939, 1, 182, 1, 0, 0, 0, '2019-11-28 19:49:45'),
(940, 1, 183, 1, 0, 0, 0, '2019-11-28 19:49:56'),
(941, 1, 174, 1, 0, 0, 0, '2019-11-28 19:50:53'),
(943, 1, 176, 1, 0, 0, 0, '2019-11-28 19:52:10'),
(944, 1, 177, 1, 0, 0, 0, '2019-11-28 19:52:22'),
(945, 1, 53, 0, 1, 0, 1, '2021-01-22 23:09:32'),
(946, 1, 215, 1, 0, 0, 0, '2019-11-28 20:01:37'),
(947, 1, 213, 1, 0, 0, 0, '2019-11-28 20:07:45'),
(974, 1, 224, 1, 0, 0, 0, '2019-11-28 20:32:52'),
(979, 1, 225, 1, 0, 0, 0, '2019-11-28 20:45:30'),
(982, 2, 225, 1, 0, 0, 0, '2019-11-28 20:47:19'),
(1026, 1, 135, 1, 0, 1, 0, '2019-11-28 22:02:12'),
(1031, 1, 228, 1, 0, 0, 0, '2019-11-28 22:21:16'),
(1083, 1, 175, 1, 0, 0, 0, '2019-11-29 16:37:24'),
(1086, 1, 43, 1, 1, 1, 1, '2019-11-29 16:49:39'),
(1087, 1, 44, 1, 0, 0, 0, '2019-11-29 16:49:39'),
(1088, 1, 46, 1, 0, 0, 0, '2019-11-29 16:49:39'),
(1089, 1, 217, 1, 0, 0, 0, '2019-11-29 16:49:39'),
(1090, 1, 98, 1, 1, 1, 1, '2019-11-29 17:32:51'),
(1091, 1, 99, 1, 0, 0, 0, '2019-11-29 17:30:18'),
(1092, 1, 223, 1, 0, 0, 0, '2019-11-29 17:32:51'),
(1103, 2, 205, 1, 1, 1, 1, '2019-11-29 17:56:04'),
(1105, 2, 23, 1, 0, 0, 0, '2019-11-29 17:56:04'),
(1106, 2, 24, 1, 0, 0, 0, '2019-11-29 17:56:04'),
(1107, 2, 25, 1, 0, 0, 0, '2019-11-29 17:56:04'),
(1108, 2, 77, 1, 0, 0, 0, '2019-11-29 17:56:04'),
(1119, 2, 117, 1, 0, 0, 0, '2019-11-29 17:56:04'),
(1123, 3, 8, 1, 1, 1, 1, '2019-11-29 22:46:18'),
(1125, 3, 69, 1, 1, 1, 1, '2019-11-29 23:00:49'),
(1126, 3, 70, 1, 1, 1, 1, '2019-11-29 23:04:46'),
(1130, 3, 9, 1, 1, 1, 1, '2019-11-29 23:14:54'),
(1131, 3, 10, 1, 1, 1, 1, '2019-11-29 23:16:02'),
(1134, 3, 35, 1, 1, 1, 1, '2019-11-29 23:25:04'),
(1135, 3, 104, 1, 1, 1, 1, '2019-11-29 23:25:53'),
(1140, 3, 41, 1, 1, 1, 1, '2019-11-29 23:37:13'),
(1141, 3, 42, 1, 1, 1, 1, '2019-11-29 23:37:46'),
(1142, 3, 43, 1, 1, 1, 1, '2019-11-29 23:42:06'),
(1151, 3, 87, 1, 0, 0, 0, '2019-11-29 18:23:13'),
(1152, 3, 88, 1, 1, 1, 0, '2019-11-29 18:23:13'),
(1153, 3, 90, 1, 1, 0, 1, '2019-11-29 18:23:13'),
(1154, 3, 108, 1, 0, 1, 0, '2019-11-29 18:23:13'),
(1155, 3, 109, 1, 1, 0, 0, '2019-11-29 18:23:13'),
(1156, 3, 110, 1, 1, 1, 1, '2019-11-29 18:23:13'),
(1157, 3, 111, 1, 1, 1, 1, '2019-11-29 18:23:13'),
(1158, 3, 112, 1, 1, 1, 1, '2019-11-29 18:23:13'),
(1159, 3, 127, 1, 0, 0, 0, '2019-11-29 18:23:13'),
(1160, 3, 129, 0, 1, 0, 1, '2019-11-29 18:23:13'),
(1161, 3, 102, 1, 1, 1, 1, '2019-11-29 18:23:13'),
(1162, 3, 106, 1, 0, 0, 0, '2019-11-29 18:23:13'),
(1163, 3, 113, 1, 0, 0, 0, '2019-11-29 18:23:13'),
(1164, 3, 114, 1, 0, 0, 0, '2019-11-29 18:23:13'),
(1165, 3, 115, 1, 0, 0, 0, '2019-11-29 18:23:13'),
(1166, 3, 116, 1, 0, 0, 0, '2019-11-29 18:23:13'),
(1167, 3, 117, 1, 0, 0, 0, '2019-11-29 18:23:13'),
(1168, 3, 118, 1, 0, 0, 0, '2019-11-29 18:23:13'),
(1171, 2, 142, 1, 0, 0, 0, '2019-11-29 18:36:17'),
(1172, 2, 144, 1, 0, 0, 0, '2019-11-29 18:36:17'),
(1179, 2, 212, 1, 0, 1, 0, '2019-11-29 18:36:17'),
(1183, 2, 148, 1, 0, 0, 0, '2019-11-29 18:36:17'),
(1184, 2, 149, 1, 0, 0, 0, '2019-11-29 18:36:17'),
(1185, 2, 150, 1, 0, 0, 0, '2019-11-29 18:36:17'),
(1186, 2, 151, 1, 0, 0, 0, '2019-11-29 18:36:17'),
(1187, 2, 152, 1, 0, 0, 0, '2019-11-29 18:36:17'),
(1188, 2, 153, 1, 0, 0, 0, '2019-11-29 18:36:17'),
(1189, 2, 154, 1, 0, 0, 0, '2019-11-29 18:36:17'),
(1190, 2, 197, 1, 0, 0, 0, '2019-11-29 18:36:17'),
(1191, 2, 198, 1, 0, 0, 0, '2019-11-29 18:36:17'),
(1192, 2, 199, 1, 0, 0, 0, '2019-11-29 18:36:17'),
(1193, 2, 200, 1, 0, 0, 0, '2019-11-29 18:36:17'),
(1194, 2, 201, 1, 0, 0, 0, '2019-11-29 18:36:17'),
(1195, 2, 202, 1, 0, 0, 0, '2019-11-29 18:36:17'),
(1196, 2, 203, 1, 0, 0, 0, '2019-11-29 18:36:17'),
(1197, 2, 219, 1, 0, 0, 0, '2019-11-29 18:36:17'),
(1198, 2, 223, 1, 0, 0, 0, '2019-11-29 18:36:17'),
(1199, 2, 213, 1, 0, 0, 0, '2019-11-29 18:36:17'),
(1201, 2, 230, 1, 0, 0, 0, '2019-11-29 18:36:17'),
(1204, 2, 214, 1, 0, 1, 0, '2019-11-29 18:36:17'),
(1206, 2, 224, 1, 0, 0, 0, '2019-11-29 18:36:17'),
(1208, 2, 2, 1, 0, 0, 0, '2019-11-29 18:55:45'),
(1210, 2, 143, 1, 1, 1, 1, '2019-11-29 18:57:28'),
(1211, 2, 145, 1, 0, 0, 0, '2019-11-29 18:57:28'),
(1214, 2, 3, 1, 1, 1, 1, '2019-11-29 19:03:18'),
(1216, 2, 4, 1, 1, 1, 1, '2019-11-29 19:32:56'),
(1218, 2, 128, 0, 1, 0, 1, '2019-11-29 19:37:44'),
(1220, 3, 135, 1, 0, 1, 0, '2019-11-29 23:08:56'),
(1231, 3, 190, 1, 0, 0, 0, '2019-11-29 19:44:02'),
(1232, 3, 192, 1, 0, 0, 0, '2019-11-29 19:44:02'),
(1233, 3, 226, 1, 0, 0, 0, '2019-11-29 19:44:02'),
(1234, 3, 227, 1, 0, 0, 0, '2019-11-29 19:44:02'),
(1235, 3, 224, 1, 0, 0, 0, '2019-11-29 19:44:02'),
(1236, 2, 15, 1, 1, 1, 0, '2019-11-29 19:54:25'),
(1239, 2, 122, 1, 0, 0, 0, '2019-11-29 19:57:48'),
(1240, 2, 136, 1, 0, 0, 0, '2019-11-29 19:57:48'),
(1242, 6, 217, 1, 0, 0, 0, '2019-11-29 20:00:13'),
(1243, 6, 224, 1, 0, 0, 0, '2019-11-29 20:00:13'),
(1245, 2, 20, 1, 1, 1, 1, '2019-11-29 20:01:28'),
(1246, 2, 137, 1, 1, 1, 1, '2019-11-29 20:02:40'),
(1248, 2, 141, 1, 1, 1, 1, '2019-11-29 20:04:04'),
(1250, 2, 187, 1, 0, 0, 0, '2019-11-29 20:11:19'),
(1252, 2, 207, 1, 0, 0, 0, '2019-11-29 20:21:21'),
(1253, 2, 208, 1, 0, 1, 0, '2019-11-29 20:22:00'),
(1255, 2, 210, 1, 0, 1, 0, '2019-11-29 20:22:58'),
(1256, 2, 211, 1, 0, 1, 0, '2019-11-29 20:24:03'),
(1257, 2, 21, 1, 0, 0, 0, '2019-11-29 20:32:59'),
(1259, 2, 188, 1, 0, 0, 0, '2019-11-29 20:34:35'),
(1260, 2, 27, 1, 1, 0, 1, '2021-07-23 05:18:22'),
(1262, 2, 43, 1, 1, 1, 1, '2019-11-29 20:39:42'),
(1263, 2, 44, 1, 0, 0, 0, '2019-11-29 20:41:43'),
(1264, 2, 46, 1, 0, 0, 0, '2019-11-29 20:41:43'),
(1265, 2, 217, 1, 0, 0, 0, '2019-11-29 20:41:43'),
(1266, 2, 146, 1, 0, 0, 0, '2019-11-29 20:46:35'),
(1267, 2, 147, 1, 0, 0, 0, '2019-11-29 20:47:37'),
(1269, 2, 164, 1, 0, 0, 0, '2019-11-29 20:51:04'),
(1271, 2, 109, 1, 1, 0, 0, '2019-11-29 21:03:37'),
(1272, 2, 93, 1, 1, 1, 1, '2019-11-29 21:07:25'),
(1273, 2, 94, 1, 1, 0, 0, '2019-11-29 21:07:42'),
(1275, 2, 102, 1, 1, 1, 1, '2019-11-29 21:11:22'),
(1277, 2, 196, 1, 0, 0, 0, '2019-11-29 21:15:01'),
(1278, 2, 195, 1, 0, 0, 0, '2019-11-29 21:19:08'),
(1279, 2, 185, 1, 1, 1, 1, '2019-11-29 21:21:44'),
(1280, 2, 186, 1, 1, 1, 1, '2019-11-29 21:22:43'),
(1281, 2, 222, 1, 0, 1, 0, '2019-11-29 21:24:30'),
(1283, 3, 5, 1, 1, 0, 1, '2019-11-29 22:43:04'),
(1284, 3, 6, 1, 0, 0, 0, '2019-11-29 22:43:29'),
(1285, 3, 7, 1, 1, 1, 1, '2019-11-29 22:44:39'),
(1286, 3, 68, 1, 0, 0, 0, '2019-11-29 22:46:58'),
(1287, 3, 71, 1, 0, 0, 0, '2019-11-29 23:05:41'),
(1288, 3, 73, 1, 0, 0, 0, '2019-11-29 23:05:59'),
(1289, 3, 74, 1, 0, 0, 0, '2019-11-29 23:06:08'),
(1290, 3, 11, 1, 0, 0, 0, '2019-11-29 23:16:37'),
(1291, 3, 12, 1, 1, 1, 1, '2019-11-29 23:19:29'),
(1292, 3, 13, 1, 1, 1, 1, '2019-11-29 23:22:27'),
(1294, 3, 14, 1, 0, 0, 0, '2019-11-29 23:22:55'),
(1295, 3, 31, 1, 1, 1, 1, '2019-12-01 22:30:37'),
(1297, 3, 37, 1, 1, 1, 1, '2019-11-29 23:28:09'),
(1298, 3, 38, 1, 1, 1, 1, '2019-11-29 23:29:02'),
(1299, 3, 39, 1, 1, 1, 1, '2019-11-29 23:30:07'),
(1300, 3, 40, 1, 1, 1, 1, '2019-11-29 23:32:43'),
(1301, 3, 44, 1, 0, 0, 0, '2019-11-29 23:44:09'),
(1302, 3, 46, 1, 0, 0, 0, '2019-11-29 23:44:09'),
(1303, 3, 217, 1, 0, 0, 0, '2019-11-29 23:44:09'),
(1304, 3, 155, 1, 0, 0, 0, '2019-11-29 23:44:32'),
(1305, 3, 156, 1, 0, 0, 0, '2019-11-29 23:45:18'),
(1306, 3, 157, 1, 0, 0, 0, '2019-11-29 23:45:42'),
(1307, 3, 158, 1, 0, 0, 0, '2019-11-29 23:46:07'),
(1308, 3, 159, 1, 0, 0, 0, '2019-11-29 23:46:21'),
(1309, 3, 160, 1, 0, 0, 0, '2019-11-29 23:46:33'),
(1313, 3, 161, 1, 0, 0, 0, '2019-11-29 23:48:26'),
(1314, 3, 162, 1, 0, 0, 0, '2019-11-29 23:48:48'),
(1315, 3, 163, 1, 0, 0, 0, '2019-11-29 23:48:48'),
(1316, 3, 164, 1, 0, 0, 0, '2019-11-29 23:49:47'),
(1317, 3, 165, 1, 0, 0, 0, '2019-11-29 23:49:47'),
(1318, 3, 174, 1, 0, 0, 0, '2019-11-29 23:49:47'),
(1319, 3, 175, 1, 0, 0, 0, '2019-11-29 23:49:59'),
(1320, 3, 181, 1, 0, 0, 0, '2019-11-29 23:50:08'),
(1321, 3, 86, 1, 1, 1, 1, '2019-11-29 23:54:08'),
(1322, 4, 28, 1, 1, 1, 1, '2019-11-30 16:52:39'),
(1324, 4, 29, 1, 0, 0, 0, '2019-11-30 16:53:46'),
(1325, 4, 30, 1, 0, 0, 0, '2019-11-30 16:53:59'),
(1326, 4, 123, 1, 0, 0, 0, '2019-11-30 16:54:26'),
(1327, 4, 228, 1, 0, 0, 0, '2019-11-30 16:54:39'),
(1328, 4, 43, 1, 1, 1, 1, '2019-11-30 16:58:05'),
(1332, 4, 44, 1, 0, 0, 0, '2019-11-30 16:59:16'),
(1333, 4, 46, 1, 0, 0, 0, '2019-11-30 16:59:16'),
(1334, 4, 217, 1, 0, 0, 0, '2019-11-30 16:59:16'),
(1335, 4, 178, 1, 0, 0, 0, '2019-11-30 16:59:59'),
(1336, 4, 179, 1, 0, 0, 0, '2019-11-30 17:00:11'),
(1337, 4, 180, 1, 0, 0, 0, '2019-11-30 17:00:29'),
(1338, 4, 221, 1, 0, 0, 0, '2019-11-30 17:00:46'),
(1339, 4, 86, 1, 0, 0, 0, '2019-11-30 17:01:02'),
(1341, 4, 106, 1, 0, 0, 0, '2019-11-30 17:05:21'),
(1342, 1, 107, 1, 0, 0, 0, '2019-11-30 17:06:44'),
(1343, 4, 117, 1, 0, 0, 0, '2019-11-30 17:10:20'),
(1344, 4, 194, 1, 0, 0, 0, '2019-11-30 17:11:35'),
(1348, 4, 230, 1, 0, 0, 0, '2019-11-30 17:19:15'),
(1350, 6, 1, 1, 0, 0, 0, '2019-11-30 17:35:32'),
(1351, 6, 21, 1, 0, 0, 0, '2019-11-30 17:36:29'),
(1352, 6, 23, 1, 0, 0, 0, '2019-11-30 17:36:45'),
(1353, 6, 24, 1, 0, 0, 0, '2019-11-30 17:37:05'),
(1354, 6, 25, 1, 0, 0, 0, '2019-11-30 17:37:34'),
(1355, 6, 77, 1, 0, 0, 0, '2019-11-30 17:38:08'),
(1356, 6, 188, 1, 0, 0, 0, '2019-11-30 17:38:45'),
(1357, 6, 43, 1, 1, 1, 1, '2019-11-30 17:40:44'),
(1358, 6, 78, 1, 1, 1, 1, '2019-11-30 17:43:04'),
(1360, 6, 79, 1, 1, 0, 1, '2019-11-30 17:44:39'),
(1361, 6, 80, 1, 1, 1, 1, '2019-11-30 17:45:08'),
(1362, 6, 81, 1, 1, 1, 1, '2019-11-30 17:47:50'),
(1363, 6, 85, 1, 1, 1, 1, '2019-11-30 17:50:43'),
(1364, 6, 86, 1, 0, 0, 0, '2019-11-30 17:51:10'),
(1365, 6, 106, 1, 0, 0, 0, '2019-11-30 17:52:55'),
(1366, 6, 117, 1, 0, 0, 0, '2019-11-30 17:53:08'),
(1394, 1, 106, 1, 0, 0, 0, '2019-12-01 21:20:33'),
(1395, 1, 113, 1, 0, 0, 0, '2019-12-01 21:20:59'),
(1396, 1, 114, 1, 0, 0, 0, '2019-12-01 21:21:34'),
(1397, 1, 115, 1, 0, 0, 0, '2019-12-01 21:21:34'),
(1398, 1, 116, 1, 0, 0, 0, '2019-12-01 21:21:54'),
(1399, 1, 117, 1, 0, 0, 0, '2019-12-01 21:22:04'),
(1400, 1, 118, 1, 0, 0, 0, '2019-12-01 21:22:20'),
(1402, 1, 191, 1, 0, 0, 0, '2019-12-01 21:23:34'),
(1403, 1, 192, 1, 0, 0, 0, '2019-12-01 21:23:47'),
(1404, 1, 193, 1, 0, 0, 0, '2019-12-01 21:23:58'),
(1405, 1, 194, 1, 0, 0, 0, '2019-12-01 21:24:11'),
(1406, 1, 195, 1, 0, 0, 0, '2019-12-01 21:24:20'),
(1408, 1, 227, 1, 0, 0, 0, '2019-12-01 21:25:47'),
(1410, 1, 226, 1, 0, 0, 0, '2019-12-01 21:31:41'),
(1411, 1, 229, 1, 0, 0, 0, '2019-12-01 21:32:57'),
(1412, 1, 230, 1, 0, 0, 0, '2019-12-01 21:32:57'),
(1413, 1, 190, 1, 0, 0, 0, '2019-12-01 21:43:41'),
(1414, 2, 174, 1, 0, 0, 0, '2019-12-01 21:54:37'),
(1415, 2, 175, 1, 0, 0, 0, '2019-12-01 21:54:37'),
(1418, 2, 232, 1, 0, 1, 1, '2019-12-01 22:11:27'),
(1419, 2, 231, 1, 0, 0, 0, '2019-12-01 22:12:28'),
(1420, 1, 231, 1, 1, 1, 1, '2021-01-22 23:09:32'),
(1421, 1, 232, 1, 0, 1, 1, '2019-12-01 22:19:32'),
(1422, 3, 32, 1, 1, 1, 1, '2019-12-01 22:30:37'),
(1423, 3, 33, 1, 1, 1, 1, '2019-12-01 22:30:37'),
(1424, 3, 34, 1, 1, 1, 1, '2019-12-01 22:30:37'),
(1425, 3, 182, 1, 0, 0, 0, '2019-12-01 22:30:37'),
(1426, 3, 183, 1, 0, 0, 0, '2019-12-01 22:30:37'),
(1427, 3, 189, 1, 0, 1, 1, '2019-12-01 22:30:37'),
(1428, 3, 229, 1, 0, 0, 0, '2019-12-01 22:30:37'),
(1429, 3, 230, 1, 0, 0, 0, '2019-12-01 22:30:37'),
(1430, 4, 213, 1, 0, 0, 0, '2019-12-01 22:32:14'),
(1432, 4, 224, 1, 0, 0, 0, '2019-12-01 22:32:14'),
(1433, 4, 195, 1, 0, 0, 0, '2019-12-02 20:57:53'),
(1434, 4, 229, 1, 0, 0, 0, '2019-12-02 20:58:19'),
(1436, 6, 213, 1, 0, 0, 0, '2019-12-02 21:10:11'),
(1437, 6, 191, 1, 0, 0, 0, '2019-12-02 21:10:11'),
(1438, 6, 193, 1, 0, 0, 0, '2019-12-02 21:10:11'),
(1439, 6, 230, 1, 0, 0, 0, '2019-12-02 21:10:11'),
(1440, 2, 106, 1, 0, 0, 0, '2020-01-24 20:21:36'),
(1441, 2, 107, 1, 0, 0, 0, '2020-02-11 18:10:13'),
(1442, 2, 134, 1, 1, 1, 1, '2020-02-11 18:12:36'),
(1443, 1, 233, 1, 0, 0, 0, '2020-02-11 18:21:57'),
(1444, 2, 86, 1, 0, 0, 0, '2020-02-11 18:22:33'),
(1445, 3, 233, 1, 0, 0, 0, '2020-02-11 19:51:17'),
(1446, 1, 234, 1, 1, 1, 1, '2020-06-01 14:51:09'),
(1447, 1, 235, 1, 1, 1, 1, '2020-05-29 16:17:01'),
(1448, 1, 236, 1, 1, 1, 0, '2020-05-29 16:17:52'),
(1449, 1, 237, 1, 0, 1, 0, '2020-05-29 16:18:18'),
(1450, 1, 238, 1, 1, 1, 1, '2020-05-29 16:19:52'),
(1451, 1, 239, 1, 1, 1, 1, '2020-05-29 16:22:10'),
(1452, 2, 236, 1, 1, 1, 0, '2020-05-29 16:40:33'),
(1453, 2, 237, 1, 0, 1, 0, '2020-05-29 16:40:33'),
(1454, 2, 238, 1, 1, 1, 1, '2020-05-29 16:40:33'),
(1455, 2, 239, 1, 1, 1, 1, '2020-05-29 16:40:33'),
(1456, 2, 240, 1, 0, 0, 0, '2020-05-28 13:51:18'),
(1457, 2, 241, 1, 0, 0, 0, '2020-05-28 13:51:18'),
(1458, 1, 240, 1, 0, 0, 0, '2020-06-07 11:30:42'),
(1459, 1, 241, 1, 0, 0, 0, '2020-06-07 11:30:42'),
(1460, 1, 242, 1, 0, 0, 0, '2020-06-07 11:30:42'),
(1461, 2, 242, 1, 0, 0, 0, '2020-06-11 15:45:24'),
(1462, 3, 242, 1, 0, 0, 0, '2020-06-14 15:46:54'),
(1463, 6, 242, 1, 0, 0, 0, '2020-06-14 15:48:14'),
(1464, 1, 243, 1, 0, 0, 0, '2020-09-11 23:05:45'),
(1465, 1, 109, 1, 1, 0, 0, '2020-09-20 23:33:50'),
(1466, 1, 108, 1, 1, 1, 1, '2020-09-20 23:50:36'),
(1467, 1, 244, 1, 0, 0, 0, '2020-09-20 23:59:54'),
(1468, 1, 245, 1, 0, 0, 0, '2020-09-20 23:59:54'),
(1469, 1, 246, 1, 0, 0, 0, '2020-09-20 23:59:54'),
(1470, 1, 247, 1, 0, 0, 0, '2021-01-06 22:12:14'),
(1472, 2, 247, 1, 0, 0, 0, '2021-01-21 04:46:40'),
(1473, 1, 248, 1, 1, 1, 1, '2021-05-19 05:52:49'),
(1474, 1, 249, 1, 0, 0, 0, '2021-05-19 05:52:49'),
(1475, 2, 248, 1, 1, 1, 1, '2021-05-28 06:11:52'),
(1476, 3, 248, 1, 1, 1, 1, '2021-05-28 02:36:16'),
(1477, 3, 249, 1, 0, 0, 0, '2021-05-28 02:36:16'),
(1478, 6, 248, 1, 0, 0, 0, '2021-05-28 02:56:14'),
(1479, 6, 249, 1, 0, 0, 0, '2021-05-28 02:56:14'),
(1480, 2, 249, 1, 0, 0, 0, '2021-05-28 06:11:52'),
(1481, 2, 28, 1, 1, 1, 1, '2021-07-23 05:18:22'),
(1482, 2, 37, 0, 1, 0, 0, '2021-07-23 05:18:22'),
(1483, 2, 176, 1, 0, 0, 0, '2021-07-23 05:18:22'),
(1484, 2, 177, 1, 0, 0, 0, '2021-07-23 05:18:22'),
(1485, 2, 178, 1, 0, 0, 0, '2021-07-23 05:18:22'),
(1486, 2, 179, 1, 0, 0, 0, '2021-07-23 05:18:22'),
(1487, 2, 180, 1, 0, 0, 0, '2021-07-23 05:18:22'),
(1488, 2, 181, 1, 0, 0, 0, '2021-07-23 05:18:22'),
(1489, 2, 182, 1, 0, 0, 0, '2021-07-23 05:18:22'),
(1490, 2, 183, 1, 0, 0, 0, '2021-07-23 05:18:22'),
(1491, 2, 204, 1, 0, 0, 0, '2021-07-23 05:18:22'),
(1492, 2, 220, 1, 0, 0, 0, '2021-07-23 05:18:22'),
(1493, 2, 221, 1, 0, 0, 0, '2021-07-23 05:18:22'),
(1494, 2, 244, 1, 0, 0, 0, '2021-07-23 05:18:22'),
(1495, 2, 245, 1, 0, 0, 0, '2021-07-23 05:18:22'),
(1496, 2, 246, 1, 0, 0, 0, '2021-07-23 05:18:22');

-- --------------------------------------------------------

--
-- Table structure for table `room_types`
--

CREATE TABLE `room_types` (
  `id` int(11) NOT NULL,
  `room_type` varchar(200) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `school_houses`
--

CREATE TABLE `school_houses` (
  `id` int(11) NOT NULL,
  `house_name` varchar(200) NOT NULL,
  `description` varchar(400) NOT NULL,
  `is_active` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sch_settings`
--

CREATE TABLE `sch_settings` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `biometric` int(11) DEFAULT 0,
  `biometric_device` text DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `lang_id` int(11) DEFAULT NULL,
  `languages` varchar(500) NOT NULL,
  `dise_code` varchar(50) DEFAULT NULL,
  `date_format` varchar(50) NOT NULL,
  `time_format` varchar(255) NOT NULL,
  `currency` varchar(50) NOT NULL,
  `currency_symbol` varchar(50) NOT NULL,
  `is_rtl` varchar(10) DEFAULT 'disabled',
  `is_duplicate_fees_invoice` int(1) DEFAULT 0,
  `timezone` varchar(30) DEFAULT 'UTC',
  `session_id` int(11) DEFAULT NULL,
  `cron_secret_key` varchar(100) NOT NULL,
  `currency_place` varchar(50) NOT NULL DEFAULT 'before_number',
  `class_teacher` varchar(100) NOT NULL,
  `start_month` varchar(40) NOT NULL,
  `attendence_type` int(10) NOT NULL DEFAULT 0,
  `image` varchar(100) DEFAULT NULL,
  `admin_logo` varchar(255) NOT NULL,
  `admin_small_logo` varchar(255) NOT NULL,
  `theme` varchar(200) NOT NULL DEFAULT 'default.jpg',
  `fee_due_days` int(3) DEFAULT 0,
  `adm_auto_insert` int(1) NOT NULL DEFAULT 1,
  `adm_prefix` varchar(50) NOT NULL DEFAULT 'ssadm19/20',
  `adm_start_from` varchar(11) NOT NULL,
  `adm_no_digit` int(10) NOT NULL DEFAULT 6,
  `adm_update_status` int(11) NOT NULL DEFAULT 0,
  `staffid_auto_insert` int(11) NOT NULL DEFAULT 1,
  `staffid_prefix` varchar(100) NOT NULL DEFAULT 'staffss/19/20',
  `staffid_start_from` varchar(50) NOT NULL,
  `staffid_no_digit` int(11) NOT NULL DEFAULT 6,
  `staffid_update_status` int(11) NOT NULL DEFAULT 0,
  `is_active` varchar(255) DEFAULT 'no',
  `online_admission` int(1) DEFAULT 0,
  `online_admission_payment` varchar(50) NOT NULL,
  `online_admission_amount` float NOT NULL,
  `online_admission_instruction` text NOT NULL,
  `online_admission_conditions` text NOT NULL,
  `is_blood_group` int(10) NOT NULL DEFAULT 1,
  `is_student_house` int(10) NOT NULL DEFAULT 1,
  `roll_no` int(11) NOT NULL DEFAULT 1,
  `category` int(11) NOT NULL,
  `religion` int(11) NOT NULL DEFAULT 1,
  `cast` int(11) NOT NULL DEFAULT 1,
  `mobile_no` int(11) NOT NULL DEFAULT 1,
  `student_email` int(11) NOT NULL DEFAULT 1,
  `admission_date` int(11) NOT NULL DEFAULT 1,
  `lastname` int(11) NOT NULL,
  `middlename` int(11) NOT NULL DEFAULT 1,
  `student_photo` int(11) NOT NULL DEFAULT 1,
  `student_height` int(11) NOT NULL DEFAULT 1,
  `student_weight` int(11) NOT NULL DEFAULT 1,
  `measurement_date` int(11) NOT NULL DEFAULT 1,
  `father_name` int(11) NOT NULL DEFAULT 1,
  `father_phone` int(11) NOT NULL DEFAULT 1,
  `father_occupation` int(11) NOT NULL DEFAULT 1,
  `father_pic` int(11) NOT NULL DEFAULT 1,
  `mother_name` int(11) NOT NULL DEFAULT 1,
  `mother_phone` int(11) NOT NULL DEFAULT 1,
  `mother_occupation` int(11) NOT NULL DEFAULT 1,
  `mother_pic` int(11) NOT NULL DEFAULT 1,
  `guardian_name` int(1) NOT NULL,
  `guardian_relation` int(11) NOT NULL DEFAULT 1,
  `guardian_phone` int(1) NOT NULL,
  `guardian_email` int(11) NOT NULL DEFAULT 1,
  `guardian_pic` int(11) NOT NULL DEFAULT 1,
  `guardian_occupation` int(1) NOT NULL,
  `guardian_address` int(11) NOT NULL DEFAULT 1,
  `current_address` int(11) NOT NULL DEFAULT 1,
  `permanent_address` int(11) NOT NULL DEFAULT 1,
  `route_list` int(11) NOT NULL DEFAULT 1,
  `hostel_id` int(11) NOT NULL DEFAULT 1,
  `bank_account_no` int(11) NOT NULL DEFAULT 1,
  `ifsc_code` int(1) NOT NULL,
  `bank_name` int(1) NOT NULL,
  `national_identification_no` int(11) NOT NULL DEFAULT 1,
  `local_identification_no` int(11) NOT NULL DEFAULT 1,
  `rte` int(11) NOT NULL DEFAULT 1,
  `previous_school_details` int(11) NOT NULL DEFAULT 1,
  `student_note` int(11) NOT NULL DEFAULT 1,
  `upload_documents` int(11) NOT NULL DEFAULT 1,
  `staff_designation` int(11) NOT NULL DEFAULT 1,
  `staff_department` int(11) NOT NULL DEFAULT 1,
  `staff_last_name` int(11) NOT NULL DEFAULT 1,
  `staff_father_name` int(11) NOT NULL DEFAULT 1,
  `staff_mother_name` int(11) NOT NULL DEFAULT 1,
  `staff_date_of_joining` int(11) NOT NULL DEFAULT 1,
  `staff_phone` int(11) NOT NULL DEFAULT 1,
  `staff_emergency_contact` int(11) NOT NULL DEFAULT 1,
  `staff_marital_status` int(11) NOT NULL DEFAULT 1,
  `staff_photo` int(11) NOT NULL DEFAULT 1,
  `staff_current_address` int(11) NOT NULL DEFAULT 1,
  `staff_permanent_address` int(11) NOT NULL DEFAULT 1,
  `staff_qualification` int(11) NOT NULL DEFAULT 1,
  `staff_work_experience` int(11) NOT NULL DEFAULT 1,
  `staff_note` int(11) NOT NULL DEFAULT 1,
  `staff_epf_no` int(11) NOT NULL DEFAULT 1,
  `staff_basic_salary` int(11) NOT NULL DEFAULT 1,
  `staff_contract_type` int(11) NOT NULL DEFAULT 1,
  `staff_work_shift` int(11) NOT NULL DEFAULT 1,
  `staff_work_location` int(11) NOT NULL DEFAULT 1,
  `staff_leaves` int(11) NOT NULL DEFAULT 1,
  `staff_account_details` int(11) NOT NULL DEFAULT 1,
  `staff_social_media` int(11) NOT NULL DEFAULT 1,
  `staff_upload_documents` int(11) NOT NULL DEFAULT 1,
  `mobile_api_url` tinytext NOT NULL,
  `app_primary_color_code` varchar(20) DEFAULT NULL,
  `app_secondary_color_code` varchar(20) DEFAULT NULL,
  `app_logo` varchar(250) DEFAULT NULL,
  `student_profile_edit` int(1) NOT NULL DEFAULT 0,
  `start_week` varchar(10) NOT NULL,
  `my_question` int(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sch_settings`
--

INSERT INTO `sch_settings` (`id`, `name`, `biometric`, `biometric_device`, `email`, `phone`, `address`, `lang_id`, `languages`, `dise_code`, `date_format`, `time_format`, `currency`, `currency_symbol`, `is_rtl`, `is_duplicate_fees_invoice`, `timezone`, `session_id`, `cron_secret_key`, `currency_place`, `class_teacher`, `start_month`, `attendence_type`, `image`, `admin_logo`, `admin_small_logo`, `theme`, `fee_due_days`, `adm_auto_insert`, `adm_prefix`, `adm_start_from`, `adm_no_digit`, `adm_update_status`, `staffid_auto_insert`, `staffid_prefix`, `staffid_start_from`, `staffid_no_digit`, `staffid_update_status`, `is_active`, `online_admission`, `online_admission_payment`, `online_admission_amount`, `online_admission_instruction`, `online_admission_conditions`, `is_blood_group`, `is_student_house`, `roll_no`, `category`, `religion`, `cast`, `mobile_no`, `student_email`, `admission_date`, `lastname`, `middlename`, `student_photo`, `student_height`, `student_weight`, `measurement_date`, `father_name`, `father_phone`, `father_occupation`, `father_pic`, `mother_name`, `mother_phone`, `mother_occupation`, `mother_pic`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_email`, `guardian_pic`, `guardian_occupation`, `guardian_address`, `current_address`, `permanent_address`, `route_list`, `hostel_id`, `bank_account_no`, `ifsc_code`, `bank_name`, `national_identification_no`, `local_identification_no`, `rte`, `previous_school_details`, `student_note`, `upload_documents`, `staff_designation`, `staff_department`, `staff_last_name`, `staff_father_name`, `staff_mother_name`, `staff_date_of_joining`, `staff_phone`, `staff_emergency_contact`, `staff_marital_status`, `staff_photo`, `staff_current_address`, `staff_permanent_address`, `staff_qualification`, `staff_work_experience`, `staff_note`, `staff_epf_no`, `staff_basic_salary`, `staff_contract_type`, `staff_work_shift`, `staff_work_location`, `staff_leaves`, `staff_account_details`, `staff_social_media`, `staff_upload_documents`, `mobile_api_url`, `app_primary_color_code`, `app_secondary_color_code`, `app_logo`, `student_profile_edit`, `start_week`, `my_question`, `created_at`, `updated_at`) VALUES
(1, 'Microtelecomms Sec. School', 1, '', 'info@schoolmanagement.co.tz', '0712602202', 'P.O.Box 79307', 4, '[\"4\",\"67\"]', 'Microtelecomms Sec. School', 'd-m-Y', '12-hour', 'TZS', 'TZS', 'disabled', 0, 'Africa/Dar_es_Salaam', 16, '', 'after_number', 'no', '7', 0, '1.png', '1.png', '1.png', 'blue.jpg', 60, 1, 'MTC/000', '1', 1, 1, 1, 'ID/000', '1', 1, 1, 'no', 1, 'yes', 20000, '', '<p>&nbsp;Please enter your institution online admission terms &amp; conditions here.</p>\r\n', 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 'https://schoolmanagement.co.tz/sms/api/', '#424242', '#eeeeee', '1.png', 0, 'Monday', 0, '2021-07-26 07:45:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `section` varchar(60) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `section`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'A', 'no', '2021-07-21 06:59:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `send_notification`
--

CREATE TABLE `send_notification` (
  `id` int(11) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `date` date DEFAULT NULL,
  `message` text DEFAULT NULL,
  `visible_student` varchar(10) NOT NULL DEFAULT 'no',
  `visible_staff` varchar(10) NOT NULL DEFAULT 'no',
  `visible_parent` varchar(10) NOT NULL DEFAULT 'no',
  `created_by` varchar(60) DEFAULT NULL,
  `created_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(11) NOT NULL,
  `session` varchar(60) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `session`, `is_active`, `created_at`, `updated_at`) VALUES
(16, '2021', 'no', '2021-07-21 07:47:56', '0000-00-00'),
(18, '2022', 'no', '2021-07-21 07:48:26', '0000-00-00'),
(19, '2023', 'no', '2021-07-21 10:40:17', '0000-00-00'),
(20, '2024', 'no', '2021-07-21 10:40:33', '0000-00-00'),
(21, '2025', 'no', '2021-07-21 10:40:56', '0000-00-00'),
(22, '2026', 'no', '2021-07-21 10:41:26', '0000-00-00'),
(23, '2027', 'no', '2021-07-21 10:41:40', '0000-00-00'),
(24, '2028', 'no', '2021-07-21 10:41:54', '0000-00-00'),
(25, '2029', 'no', '2021-07-21 10:42:18', '0000-00-00'),
(26, '2030', 'no', '2021-07-21 10:42:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sms_config`
--

CREATE TABLE `sms_config` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `api_id` varchar(100) NOT NULL,
  `authkey` varchar(100) NOT NULL,
  `senderid` varchar(100) NOT NULL,
  `contact` text DEFAULT NULL,
  `username` varchar(150) DEFAULT NULL,
  `url` varchar(150) DEFAULT NULL,
  `password` varchar(150) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'disabled',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sms_config`
--

INSERT INTO `sms_config` (`id`, `type`, `name`, `api_id`, `authkey`, `senderid`, `contact`, `username`, `url`, `password`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'nexmo', '', '12a3552e', 'sxHiZ8l8aEBUPHis', '+255712602202', NULL, NULL, NULL, NULL, 'enabled', '2021-07-25 10:26:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `source`
--

CREATE TABLE `source` (
  `id` int(11) NOT NULL,
  `source` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(200) NOT NULL,
  `lang_id` int(11) NOT NULL,
  `department` int(11) DEFAULT 0,
  `designation` int(11) DEFAULT 0,
  `qualification` varchar(200) NOT NULL,
  `work_exp` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `surname` varchar(200) NOT NULL,
  `father_name` varchar(200) NOT NULL,
  `mother_name` varchar(200) NOT NULL,
  `contact_no` varchar(200) NOT NULL,
  `emergency_contact_no` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `dob` date NOT NULL,
  `marital_status` varchar(100) NOT NULL,
  `date_of_joining` date NOT NULL,
  `date_of_leaving` date NOT NULL,
  `local_address` varchar(300) NOT NULL,
  `permanent_address` varchar(200) NOT NULL,
  `note` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `password` varchar(250) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `account_title` varchar(200) NOT NULL,
  `bank_account_no` varchar(200) NOT NULL,
  `bank_name` varchar(200) NOT NULL,
  `ifsc_code` varchar(200) NOT NULL,
  `bank_branch` varchar(100) NOT NULL,
  `payscale` varchar(200) NOT NULL,
  `basic_salary` varchar(200) NOT NULL,
  `epf_no` varchar(200) NOT NULL,
  `contract_type` varchar(100) NOT NULL,
  `shift` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `facebook` varchar(200) NOT NULL,
  `twitter` varchar(200) NOT NULL,
  `linkedin` varchar(200) NOT NULL,
  `instagram` varchar(200) NOT NULL,
  `resume` varchar(200) NOT NULL,
  `joining_letter` varchar(200) NOT NULL,
  `resignation_letter` varchar(200) NOT NULL,
  `other_document_name` varchar(200) NOT NULL,
  `other_document_file` varchar(200) NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_active` int(11) NOT NULL,
  `verification_code` varchar(100) NOT NULL,
  `disable_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `employee_id`, `lang_id`, `department`, `designation`, `qualification`, `work_exp`, `name`, `surname`, `father_name`, `mother_name`, `contact_no`, `emergency_contact_no`, `email`, `dob`, `marital_status`, `date_of_joining`, `date_of_leaving`, `local_address`, `permanent_address`, `note`, `image`, `password`, `gender`, `account_title`, `bank_account_no`, `bank_name`, `ifsc_code`, `bank_branch`, `payscale`, `basic_salary`, `epf_no`, `contract_type`, `shift`, `location`, `facebook`, `twitter`, `linkedin`, `instagram`, `resume`, `joining_letter`, `resignation_letter`, `other_document_name`, `other_document_file`, `user_id`, `is_active`, `verification_code`, `disable_at`) VALUES
(1, '9000', 4, 0, 0, '', '', 'Super Admin', '', '', '', '', '', 'budde@microtelecomms.com', '2020-01-01', '', '0000-00-00', '0000-00-00', '', '', '', '1.png', '$2y$10$YOhPUlNTmIaL6kvcrSG4QejcA3BHF6UXCci0FxnX0HpgNtIWS/kTm', 'Male', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Other Document', '', 0, 1, 'Qm9pUitlVDdhV3VMMEtIeTBmZ3ljekQ3K2VZL09JUkdhbmFJSldXbUdTZz0=', NULL),
(2, '0002', 0, 1, 2, 'Teacher', '6 Years', 'Emmanuel', 'Mupana', 'Mupana Peter', 'Violeth Mupana', '+255754333777', '+255754333777', 'teacher@schoolmanagement.co.tz', '1975-02-26', 'Married', '2021-07-19', '0000-00-00', 'Mbezi Mwisho', 'Mbezi Mwisho', '', '2.jpg', '$2y$10$WtOxnZxBfiHg2RwM5Qh0sOWlGR/m7p61Mec6dmNTWYnhfPljxKote', 'Male', 'Emmanuel Mupana', '01509993322666', 'CRDB BANK', '', 'CRDB AZIKIWE', '', '800000', 'PR001', 'permanent', '8 Hours', 'Microtelecomms Secondary School', '', '', '', '', 'resume2.pdf', '', '', 'Other Document', '', 0, 1, '', NULL),
(3, 'ID/0003', 0, 2, 0, '', '', 'John Shayo', 'Shayo', 'Shayo Ndesamburo', 'Happiness Shayo Ndesamburo', '+255767888330', '+255767888330', 'librarian@schoolmanagement.co.tz', '1990-10-03', 'Married', '2021-07-19', '0000-00-00', '', '', '', '3.jpg', '$2y$10$J6goPRl.7j79VrAeTd/FPerV00.iRloTTNGWkQgJExbOaaubDCuji', 'Male', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Other Document', '', 0, 1, '', NULL),
(4, 'ID/0004', 0, 2, 0, 'Diploma Procurement', '2 Years', 'Elizabeth', ' Wanyama', ' Wanyama Casmir', 'Martha Casmir', '+255645773289', '+255645773289', 'accountant@schoolmanagement.co.tz', '1979-01-09', 'Single', '2021-07-19', '0000-00-00', 'Kigamboni', '', '', '4.jpg', '$2y$10$u1RX2IxTI36NJp5yN6ddne4KtGncga870oVPZ0vFKh1ygg9Zm9KS2', 'Female', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Other Document', '', 0, 1, '', NULL),
(5, 'ID/0005', 0, 2, 0, '', '', 'Sherry', 'Peter', 'Peter George', 'Matha Peter George', '+255788998765', '+255788998765', 'receptionist@schoolmanagement.co.tz', '2021-07-28', 'Single', '2021-07-19', '0000-00-00', '', '', '', '5.jpg', '$2y$10$N0zdyZXne0x3dyw1ca3gxeAXjW2z77YjV9kG69cmX0StVFu.oQzbq', 'Female', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Other Document', '', 0, 1, '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `staff_attendance`
--

CREATE TABLE `staff_attendance` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `staff_id` int(11) NOT NULL,
  `staff_attendance_type_id` int(11) NOT NULL,
  `remark` varchar(200) NOT NULL,
  `is_active` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `staff_attendance_type`
--

CREATE TABLE `staff_attendance_type` (
  `id` int(11) NOT NULL,
  `type` varchar(200) NOT NULL,
  `key_value` varchar(200) NOT NULL,
  `is_active` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff_attendance_type`
--

INSERT INTO `staff_attendance_type` (`id`, `type`, `key_value`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Present', '<b class=\"text text-success\">P</b>', 'yes', '0000-00-00 00:00:00', '0000-00-00'),
(2, 'Late', '<b class=\"text text-warning\">L</b>', 'yes', '0000-00-00 00:00:00', '0000-00-00'),
(3, 'Absent', '<b class=\"text text-danger\">A</b>', 'yes', '0000-00-00 00:00:00', '0000-00-00'),
(4, 'Half Day', '<b class=\"text text-warning\">F</b>', 'yes', '2018-05-06 18:56:16', '0000-00-00'),
(5, 'Holiday', 'H', 'yes', '0000-00-00 00:00:00', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `staff_designation`
--

CREATE TABLE `staff_designation` (
  `id` int(11) NOT NULL,
  `designation` varchar(200) NOT NULL,
  `is_active` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff_designation`
--

INSERT INTO `staff_designation` (`id`, `designation`, `is_active`) VALUES
(1, 'Teacher', 'yes'),
(2, 'Accountant', 'yes'),
(3, 'Librarian', 'yes'),
(4, 'Receptionist', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `staff_id_card`
--

CREATE TABLE `staff_id_card` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `school_name` varchar(255) NOT NULL,
  `school_address` varchar(255) NOT NULL,
  `background` varchar(100) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `sign_image` varchar(100) NOT NULL,
  `header_color` varchar(100) NOT NULL,
  `enable_vertical_card` int(11) NOT NULL DEFAULT 0,
  `enable_staff_role` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_staff_id` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_staff_department` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_designation` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_name` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_fathers_name` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_mothers_name` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_date_of_joining` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_permanent_address` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_staff_dob` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `enable_staff_phone` tinyint(1) NOT NULL COMMENT '0=disable,1=enable',
  `status` tinyint(1) NOT NULL COMMENT '0=disable,1=enable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff_id_card`
--

INSERT INTO `staff_id_card` (`id`, `title`, `school_name`, `school_address`, `background`, `logo`, `sign_image`, `header_color`, `enable_vertical_card`, `enable_staff_role`, `enable_staff_id`, `enable_staff_department`, `enable_designation`, `enable_name`, `enable_fathers_name`, `enable_mothers_name`, `enable_date_of_joining`, `enable_permanent_address`, `enable_staff_dob`, `enable_staff_phone`, `status`) VALUES
(1, 'Sample Staff ID Card Horizontal', 'Mount Carmel School', '110 Kings Street, CA', 'background1.png', 'logo1.png', 'sign1.png', '#9b1818', 0, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(2, 'Sample Staff ID Card Vertical', 'Mount Carmel School', '110 Kings Street, CA', 'background1.png', 'logo1.png', 'sign1.png', '#9b1818', 1, 0, 1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `staff_leave_details`
--

CREATE TABLE `staff_leave_details` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `leave_type_id` int(11) NOT NULL,
  `alloted_leave` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `staff_leave_request`
--

CREATE TABLE `staff_leave_request` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `leave_type_id` int(11) NOT NULL,
  `leave_from` date NOT NULL,
  `leave_to` date NOT NULL,
  `leave_days` int(11) NOT NULL,
  `employee_remark` varchar(200) NOT NULL,
  `admin_remark` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL,
  `applied_by` varchar(200) NOT NULL,
  `document_file` varchar(200) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `staff_payroll`
--

CREATE TABLE `staff_payroll` (
  `id` int(11) NOT NULL,
  `basic_salary` int(11) NOT NULL,
  `pay_scale` varchar(200) NOT NULL,
  `grade` varchar(50) NOT NULL,
  `is_active` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `staff_payslip`
--

CREATE TABLE `staff_payslip` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `basic` float(10,2) NOT NULL,
  `total_allowance` float(10,2) NOT NULL,
  `total_deduction` float(10,2) NOT NULL,
  `leave_deduction` int(11) NOT NULL,
  `tax` varchar(200) NOT NULL,
  `net_salary` float(10,2) NOT NULL,
  `status` varchar(100) NOT NULL,
  `month` varchar(200) NOT NULL,
  `year` varchar(200) NOT NULL,
  `payment_mode` varchar(200) NOT NULL,
  `payment_date` date NOT NULL,
  `remark` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff_payslip`
--

INSERT INTO `staff_payslip` (`id`, `staff_id`, `basic`, `total_allowance`, `total_deduction`, `leave_deduction`, `tax`, `net_salary`, `status`, `month`, `year`, `payment_mode`, `payment_date`, `remark`) VALUES
(1, 4, 700000.00, 0.00, 0.00, 0, '0', 700000.00, 'generated', 'July', '2021', '', '2021-07-26', '');

-- --------------------------------------------------------

--
-- Table structure for table `staff_rating`
--

CREATE TABLE `staff_rating` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `rate` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role` varchar(255) NOT NULL,
  `status` int(11) NOT NULL COMMENT '0 decline, 1 Approve',
  `entrydt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff_rating`
--

INSERT INTO `staff_rating` (`id`, `staff_id`, `comment`, `rate`, `user_id`, `role`, `status`, `entrydt`) VALUES
(1, 2, 'Excellent', 4, 5, 'student', 0, '2021-07-27 03:25:06');

-- --------------------------------------------------------

--
-- Table structure for table `staff_roles`
--

CREATE TABLE `staff_roles` (
  `id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff_roles`
--

INSERT INTO `staff_roles` (`id`, `role_id`, `staff_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 7, 1, 0, '2021-07-21 06:56:17', NULL),
(2, 2, 2, 0, '2021-07-21 07:27:49', NULL),
(3, 4, 3, 0, '2021-07-21 09:36:06', NULL),
(4, 3, 4, 0, '2021-07-21 09:59:54', NULL),
(5, 6, 5, 0, '2021-07-21 10:32:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `staff_timeline`
--

CREATE TABLE `staff_timeline` (
  `id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `timeline_date` date NOT NULL,
  `description` varchar(300) NOT NULL,
  `document` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `admission_no` varchar(100) DEFAULT NULL,
  `roll_no` varchar(100) DEFAULT NULL,
  `admission_date` date DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `middlename` varchar(255) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `rte` varchar(20) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `mobileno` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `pincode` varchar(100) DEFAULT NULL,
  `religion` varchar(100) DEFAULT NULL,
  `cast` varchar(50) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `current_address` text DEFAULT NULL,
  `permanent_address` text DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL,
  `route_id` int(11) NOT NULL,
  `school_house_id` int(11) NOT NULL,
  `blood_group` varchar(200) NOT NULL,
  `vehroute_id` int(11) NOT NULL,
  `hostel_room_id` int(11) NOT NULL,
  `adhar_no` varchar(100) DEFAULT NULL,
  `samagra_id` varchar(100) DEFAULT NULL,
  `bank_account_no` varchar(100) DEFAULT NULL,
  `bank_name` varchar(100) DEFAULT NULL,
  `ifsc_code` varchar(100) DEFAULT NULL,
  `guardian_is` varchar(100) NOT NULL,
  `father_name` varchar(100) DEFAULT NULL,
  `father_phone` varchar(100) DEFAULT NULL,
  `father_occupation` varchar(100) DEFAULT NULL,
  `mother_name` varchar(100) DEFAULT NULL,
  `mother_phone` varchar(100) DEFAULT NULL,
  `mother_occupation` varchar(100) DEFAULT NULL,
  `guardian_name` varchar(100) DEFAULT NULL,
  `guardian_relation` varchar(100) DEFAULT NULL,
  `guardian_phone` varchar(100) DEFAULT NULL,
  `guardian_occupation` varchar(150) NOT NULL,
  `guardian_address` text DEFAULT NULL,
  `guardian_email` varchar(100) DEFAULT NULL,
  `father_pic` varchar(200) NOT NULL,
  `mother_pic` varchar(200) NOT NULL,
  `guardian_pic` varchar(200) NOT NULL,
  `is_active` varchar(255) DEFAULT 'yes',
  `previous_school` text DEFAULT NULL,
  `height` varchar(100) NOT NULL,
  `weight` varchar(100) NOT NULL,
  `measurement_date` date NOT NULL,
  `dis_reason` int(11) NOT NULL,
  `note` varchar(200) DEFAULT NULL,
  `dis_note` text NOT NULL,
  `app_key` text DEFAULT NULL,
  `parent_app_key` text DEFAULT NULL,
  `disable_at` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `parent_id`, `admission_no`, `roll_no`, `admission_date`, `firstname`, `middlename`, `lastname`, `rte`, `image`, `mobileno`, `email`, `state`, `city`, `pincode`, `religion`, `cast`, `dob`, `gender`, `current_address`, `permanent_address`, `category_id`, `route_id`, `school_house_id`, `blood_group`, `vehroute_id`, `hostel_room_id`, `adhar_no`, `samagra_id`, `bank_account_no`, `bank_name`, `ifsc_code`, `guardian_is`, `father_name`, `father_phone`, `father_occupation`, `mother_name`, `mother_phone`, `mother_occupation`, `guardian_name`, `guardian_relation`, `guardian_phone`, `guardian_occupation`, `guardian_address`, `guardian_email`, `father_pic`, `mother_pic`, `guardian_pic`, `is_active`, `previous_school`, `height`, `weight`, `measurement_date`, `dis_reason`, `note`, `dis_note`, `app_key`, `parent_app_key`, `disable_at`, `created_at`, `updated_at`) VALUES
(1, 2, 'MTC/0001', '1001', '2021-07-19', 'Mariam', NULL, 'Jumaa', 'No', 'uploads/student_images/1.jpg', '+2556457723546', 'student@schoolmanagement.co.tz', NULL, NULL, NULL, 'Muslim', '', '1995-01-02', 'Female', '', '', '', 0, 0, 'B+', 0, 0, '', '', '', '', '', 'father', 'Jumaa Maggidi', '+255776745362', 'Driver', 'Shida Seif', '+255776745362', 'Business', 'Jumaa Maggidi', 'Father', '+255776745362', 'Driver', 'Wazo, Madale', 'parent@schoolmanagement.co.tz', 'uploads/student_images/1father.jpg', 'uploads/student_images/1mother.jpg', 'uploads/student_images/1guardian.jpg', 'yes', '', '5.6\'\'', '65Kg', '2021-07-19', 0, '', '', 'eeHyvWPBDV4:APA91bF5pUF-KjxjZ0bTdPM-LTVwHqqL5910wcXiR1SbLE7aMX4Xd1YLgcbDKM8br5aaq2kAYZVWYsnQFcR7I4iv9SExEi4vo3Yz8rnB6VuXsh8cUjm1MVny4ZEVXD2EgqrEZ2a-2Cvv', 'dBmfZqLTrGA:APA91bF1I_QNK1pI0cP31kzBk5qooAlYlKdajIMNy9Ntzad8IoBZZ56NN2fSeAmfoBD3tJhANeVV7aQOPz74GQzwr0xija-f_sV7YHQFDlPsBasV9vE40U4VFQbGTIH03kjn7SxKxERA', '0000-00-00', '2021-07-25 22:52:32', NULL),
(2, 4, 'MTC/0002', '0002', '2021-07-21', 'Martha', 'Paul', 'Kirenga', NULL, 'uploads/student_images/2.jpg', '+2557664367299', 'student2@schoolmanagement.co.tz', NULL, NULL, NULL, 'Christian', NULL, '1996-02-06', 'Female', '', '', NULL, 0, 0, 'O-', 0, 0, '', '', '', '', '', 'father', 'Kirenga Paul', '+2557664367299', 'Engineer', 'Maria Paul Kirenga', '+2557664367299', 'Doctor', 'Kirenga Paul', 'Father', '+2557664367299', 'Engineer', '', 'parent2@schoolmanagement.co.tz', 'uploads/student_images/2father.jpg', 'uploads/student_images/2mother.jpg', '', 'yes', '', '6.2\'\'', '64Kg', '2021-07-19', 0, '', '', NULL, NULL, '0000-00-00', '2021-07-21 08:59:38', NULL),
(3, 6, 'MTC/0003', '1003', '2021-07-23', 'Abdulraheem', 'Ramadhani', 'Bakari', NULL, 'uploads/student_images/3.jpg', '+255798667542', 'abdulraheem@schoolmanagement.co.tz', NULL, NULL, NULL, 'Muslim', NULL, '1993-01-05', 'Male', 'Tegeta', '', NULL, 0, 0, 'B+', 1, 0, '', '', '', '', '', 'father', 'Ramadhan Bakari', '+255798667542', 'Engineer', 'Amina Bakari', '+255798667542', 'Business', 'Ramadhan Bakari', 'Father', '+255798667542', 'Engineer', 'Tegeta', 'bakari@schoolmanagement.co.tz', 'uploads/student_images/3father.png', 'uploads/student_images/3mother.jpg', 'uploads/student_images/3guardian.png', 'yes', '1. Atlas Primary School\r\n2. Feza Primary School', '6.8\'\'', '77Kgs', '2021-07-23', 0, '', '', NULL, 'dBmfZqLTrGA:APA91bF1I_QNK1pI0cP31kzBk5qooAlYlKdajIMNy9Ntzad8IoBZZ56NN2fSeAmfoBD3tJhANeVV7aQOPz74GQzwr0xija-f_sV7YHQFDlPsBasV9vE40U4VFQbGTIH03kjn7SxKxERA', '0000-00-00', '2021-07-26 07:20:23', NULL),
(4, 8, 'MTC/0004', '1004', '2021-07-23', 'Getrude', 'John', 'Mkenye', NULL, 'uploads/student_images/default_female.jpg', '+255798667542', 'getrude@schoolmanagement.co.tz', NULL, NULL, NULL, 'Christian', NULL, '1999-10-27', 'Female', '', '', NULL, 0, 0, '', 0, 0, '', '', '', '', '', 'father', 'John Mkenye', '+255798667542', 'Pilot', 'Violeth Mkenye', '+255798667542', 'Nurse', 'John Mkenye', 'Father', '+255798667542', 'Pilot', '', 'mkenye@schoolmanagement.co.tz', '', '', '', 'yes', '', '6\'\'', '56Kgs', '2021-07-23', 0, '', '', NULL, NULL, '0000-00-00', '2021-07-23 00:00:42', NULL),
(5, 10, 'MTC/0005', '1005', '2021-07-23', 'Ikra', 'Rahim', 'Kachambwa', NULL, 'uploads/student_images/default_female.jpg', '+255688098764', 'ikra@schoolmanagement.co.tz', NULL, NULL, NULL, 'Muslim', NULL, '1995-01-03', 'Female', '', '', NULL, 0, 0, 'O+', 0, 0, '', '', '', '', '', 'father', 'Rahim Kachambwa', '+255689602202', 'Teacher', 'Mariam Kachambwa', '+255689602202', 'Teacher', 'Rahim Kachambwa', 'Father', '+255689602202', 'Teacher', 'P.O.Box 79307', 'budde@microtelecomms.com', '', '', '', 'yes', '', '6.7\'\'', '56Kgs', '2021-07-23', 0, '', '', NULL, NULL, '0000-00-00', '2021-07-25 10:27:49', NULL),
(6, 12, 'MTC/0006', '1006', '2021-07-23', 'Salehe', 'Salehe', 'Salehe', NULL, 'uploads/student_images/default_male.jpg', '+255654876532', 'salehe@schoolmanagement.co.tz', NULL, NULL, NULL, 'Muslim', NULL, '1994-06-08', 'Male', '', '', NULL, 0, 0, 'B-', 0, 0, '', '', '', '', '', 'father', 'Salehe Abubakar', '+255654876532', 'Engineer', 'Fatma Salehe', '+255654876532', 'Business', 'Salehe Abubakar', 'Father', '+255654876532', 'Engineer', '', 'salehe@gmail.com', '', '', '', 'yes', '', '5.6\'\'', '65Kg', '2021-07-23', 0, '', '', NULL, NULL, '0000-00-00', '2021-07-23 06:46:33', NULL),
(7, 14, 'MTC/0007', '1007', '2021-07-24', 'Happiness', 'Massawe', 'Magesa', NULL, 'uploads/student_images/default_female.jpg', '+255789073466', 'happiness@schoolmanagement.co.tz', NULL, NULL, NULL, 'Christian', NULL, '1990-06-14', 'Female', '', '', NULL, 0, 0, 'B-', 0, 0, '', '', '', '', '', 'father', 'Massawe Magesa', '+255789073466', 'Minister', 'Julieth Magesa', '+255789073466', 'Auditor', 'Massawe Magesa', 'Father', '+255789073466', 'Minister', '', 'magesa@schoolmanagement.co.tz', '', '', '', 'yes', '', '6\'\'', '63Kg', '2021-07-24', 0, '', '', NULL, NULL, '0000-00-00', '2021-07-23 22:41:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_applyleave`
--

CREATE TABLE `student_applyleave` (
  `id` int(11) NOT NULL,
  `student_session_id` int(11) NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `apply_date` date NOT NULL,
  `status` int(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `docs` text NOT NULL,
  `reason` text NOT NULL,
  `approve_by` int(11) NOT NULL,
  `request_type` int(11) NOT NULL COMMENT '0 student,1 staff'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_applyleave`
--

INSERT INTO `student_applyleave` (`id`, `student_session_id`, `from_date`, `to_date`, `apply_date`, `status`, `created_at`, `docs`, `reason`, `approve_by`, `request_type`) VALUES
(1, 3, '2021-07-27', '2021-07-30', '2021-07-27', 0, '2021-07-27 03:14:36', '1.pdf', 'Malaria', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `student_attendences`
--

CREATE TABLE `student_attendences` (
  `id` int(11) NOT NULL,
  `student_session_id` int(11) DEFAULT NULL,
  `biometric_attendence` int(1) NOT NULL DEFAULT 0,
  `date` date DEFAULT NULL,
  `attendence_type_id` int(11) DEFAULT NULL,
  `remark` varchar(200) NOT NULL,
  `biometric_device_data` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_attendences`
--

INSERT INTO `student_attendences` (`id`, `student_session_id`, `biometric_attendence`, `date`, `attendence_type_id`, `remark`, `biometric_device_data`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 2, 0, '2021-07-23', 1, '', NULL, 'no', '2021-07-22 01:05:52', NULL),
(2, 1, 0, '2021-07-23', 1, '', NULL, 'no', '2021-07-22 01:05:52', NULL),
(3, 5, 0, '2021-07-23', 6, '', NULL, 'no', '2021-07-23 04:56:41', NULL),
(4, 4, 0, '2021-07-23', 6, '', NULL, 'no', '2021-07-23 04:56:41', NULL),
(5, 3, 0, '2021-07-23', 6, '', NULL, 'no', '2021-07-23 04:56:41', NULL),
(6, 5, 0, '2021-07-24', 5, '', NULL, 'no', '2021-07-23 04:58:59', NULL),
(7, 4, 0, '2021-07-24', 5, '', NULL, 'no', '2021-07-23 04:58:59', NULL),
(8, 3, 0, '2021-07-24', 5, '', NULL, 'no', '2021-07-23 04:58:59', NULL),
(9, 5, 0, '2021-07-25', 5, '', NULL, 'no', '2021-07-23 04:59:24', NULL),
(10, 4, 0, '2021-07-25', 5, '', NULL, 'no', '2021-07-23 04:59:24', NULL),
(11, 3, 0, '2021-07-25', 5, '', NULL, 'no', '2021-07-23 04:59:24', NULL),
(12, 5, 0, '2021-07-22', 1, '', NULL, 'no', '2021-07-23 04:59:46', NULL),
(13, 4, 0, '2021-07-22', 4, '', NULL, 'no', '2021-07-23 04:59:46', NULL),
(14, 3, 0, '2021-07-22', 3, '', NULL, 'no', '2021-07-23 04:59:46', NULL),
(15, 5, 0, '2021-07-21', 4, '', NULL, 'no', '2021-07-23 05:00:09', NULL),
(16, 4, 0, '2021-07-21', 1, '', NULL, 'no', '2021-07-23 05:00:09', NULL),
(17, 3, 0, '2021-07-21', 1, '', NULL, 'no', '2021-07-23 05:00:09', NULL),
(18, 5, 0, '2021-07-20', 1, '', NULL, 'no', '2021-07-23 05:00:32', NULL),
(19, 4, 0, '2021-07-20', 1, '', NULL, 'no', '2021-07-23 05:00:32', NULL),
(20, 3, 0, '2021-07-20', 1, '', NULL, 'no', '2021-07-23 05:00:32', NULL),
(21, 5, 0, '2021-07-19', 3, '', NULL, 'no', '2021-07-23 05:00:53', NULL),
(22, 4, 0, '2021-07-19', 3, '', NULL, 'no', '2021-07-23 05:00:53', NULL),
(23, 3, 0, '2021-07-19', 3, '', NULL, 'no', '2021-07-23 05:00:53', NULL),
(24, 5, 0, '2021-07-26', 1, '', NULL, 'no', '2021-07-26 06:46:54', NULL),
(25, 4, 0, '2021-07-26', 4, '', NULL, 'no', '2021-07-26 06:46:54', NULL),
(26, 3, 0, '2021-07-26', 1, '', NULL, 'no', '2021-07-26 06:46:54', NULL),
(27, 2, 0, '2021-07-26', 1, '', NULL, 'no', '2021-07-26 06:47:25', NULL),
(28, 1, 0, '2021-07-26', 1, '', NULL, 'no', '2021-07-26 06:47:25', NULL),
(29, 7, 0, '2021-07-26', 1, '', NULL, 'no', '2021-07-26 06:47:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_doc`
--

CREATE TABLE `student_doc` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `doc` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_doc`
--

INSERT INTO `student_doc` (`id`, `student_id`, `title`, `doc`) VALUES
(1, 3, 'Birth Certificate', 'logo.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `student_edit_fields`
--

CREATE TABLE `student_edit_fields` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `student_fees`
--

CREATE TABLE `student_fees` (
  `id` int(11) NOT NULL,
  `student_session_id` int(11) DEFAULT NULL,
  `feemaster_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT NULL,
  `amount_discount` float(10,2) NOT NULL,
  `amount_fine` float(10,2) NOT NULL DEFAULT 0.00,
  `description` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  `payment_mode` varchar(50) NOT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `student_fees_deposite`
--

CREATE TABLE `student_fees_deposite` (
  `id` int(11) NOT NULL,
  `student_fees_master_id` int(11) DEFAULT NULL,
  `fee_groups_feetype_id` int(11) DEFAULT NULL,
  `amount_detail` text DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_fees_deposite`
--

INSERT INTO `student_fees_deposite` (`id`, `student_fees_master_id`, `fee_groups_feetype_id`, `amount_detail`, `is_active`, `created_at`) VALUES
(1, 1, 1, '{\"1\":{\"amount\":\"300000\",\"date\":\"2021-07-21\",\"amount_discount\":\"0\",\"amount_fine\":\"0\",\"description\":\"\",\"collected_by\":\"Elizabeth  Wanyama(ID\\/0004)\",\"payment_mode\":\"bank_transfer\",\"received_by\":\"4\",\"inv_no\":1}}', 'no', '2021-07-21 10:10:14'),
(2, 5, 3, '{\"1\":{\"amount\":\"250000.00\",\"date\":\"2021-07-23\",\"description\":\" Collected By: Super Admin\",\"amount_discount\":0,\"amount_fine\":\"0\",\"payment_mode\":\"bank_transfer\",\"received_by\":\"1\",\"inv_no\":1}}', 'no', '2021-07-25 09:35:15');

-- --------------------------------------------------------

--
-- Table structure for table `student_fees_discounts`
--

CREATE TABLE `student_fees_discounts` (
  `id` int(11) NOT NULL,
  `student_session_id` int(11) DEFAULT NULL,
  `fees_discount_id` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'assigned',
  `payment_id` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `student_fees_master`
--

CREATE TABLE `student_fees_master` (
  `id` int(11) NOT NULL,
  `is_system` int(1) NOT NULL DEFAULT 0,
  `student_session_id` int(11) DEFAULT NULL,
  `fee_session_group_id` int(11) DEFAULT NULL,
  `amount` float(10,2) DEFAULT 0.00,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_fees_master`
--

INSERT INTO `student_fees_master` (`id`, `is_system`, `student_session_id`, `fee_session_group_id`, `amount`, `is_active`, `created_at`) VALUES
(1, 0, 1, 1, 0.00, 'no', '2021-07-21 10:09:16'),
(2, 0, 2, 1, 0.00, 'no', '2021-07-21 10:09:16'),
(3, 0, 4, 2, 0.00, 'no', '2021-07-23 05:06:00'),
(4, 0, 5, 2, 0.00, 'no', '2021-07-23 05:06:00'),
(5, 0, 3, 2, 0.00, 'no', '2021-07-23 05:06:20');

-- --------------------------------------------------------

--
-- Table structure for table `student_session`
--

CREATE TABLE `student_session` (
  `id` int(11) NOT NULL,
  `session_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `route_id` int(11) NOT NULL,
  `hostel_room_id` int(11) NOT NULL,
  `vehroute_id` int(10) DEFAULT NULL,
  `transport_fees` float(10,2) NOT NULL DEFAULT 0.00,
  `fees_discount` float(10,2) NOT NULL DEFAULT 0.00,
  `is_active` varchar(255) DEFAULT 'no',
  `is_alumni` int(11) NOT NULL,
  `default_login` int(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student_session`
--

INSERT INTO `student_session` (`id`, `session_id`, `student_id`, `class_id`, `section_id`, `route_id`, `hostel_room_id`, `vehroute_id`, `transport_fees`, `fees_discount`, `is_active`, `is_alumni`, `default_login`, `created_at`, `updated_at`) VALUES
(1, 16, 1, 2, 1, 0, 0, NULL, 0.00, 0.00, 'no', 0, 1, '2021-07-21 07:52:23', NULL),
(2, 16, 2, 2, 1, 0, 0, NULL, 0.00, 0.00, 'no', 0, 1, '2021-07-21 09:01:22', NULL),
(3, 16, 3, 1, 1, 0, 0, NULL, 0.00, 0.00, 'no', 0, 1, '2021-07-23 04:43:39', NULL),
(4, 16, 4, 1, 1, 0, 0, NULL, 0.00, 0.00, 'no', 0, 0, '2021-07-23 00:00:42', NULL),
(5, 16, 5, 1, 1, 0, 0, NULL, 0.00, 0.00, 'no', 0, 0, '2021-07-23 00:47:17', NULL),
(6, 16, 6, 3, 1, 0, 0, NULL, 0.00, 0.00, 'no', 0, 1, '2021-07-23 06:47:27', NULL),
(7, 16, 7, 4, 1, 0, 0, NULL, 0.00, 0.00, 'no', 0, 1, '2021-07-23 22:54:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_sibling`
--

CREATE TABLE `student_sibling` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `sibling_student_id` int(11) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `student_subject_attendances`
--

CREATE TABLE `student_subject_attendances` (
  `id` int(11) NOT NULL,
  `student_session_id` int(11) DEFAULT NULL,
  `subject_timetable_id` int(11) DEFAULT NULL,
  `attendence_type_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `student_timeline`
--

CREATE TABLE `student_timeline` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `timeline_date` date NOT NULL,
  `description` varchar(200) NOT NULL,
  `document` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `code` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `code`, `type`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'English', '', 'theory', 'no', '2021-07-21 07:03:58', NULL),
(2, 'Kiswahili', '', 'theory', 'no', '2021-07-21 07:04:15', NULL),
(3, 'History', '', 'theory', 'no', '2021-07-21 07:04:29', NULL),
(4, 'Geography', '', 'theory', 'no', '2021-07-21 07:04:43', NULL),
(5, 'Civics', '', 'theory', 'no', '2021-07-21 07:04:55', NULL),
(6, 'Book Keeping', '', 'theory', 'no', '2021-07-21 07:05:17', NULL),
(7, 'Commerce', '', 'theory', 'no', '2021-07-21 07:05:28', NULL),
(8, 'Physics', '', 'theory', 'no', '2021-07-21 07:06:08', NULL),
(9, 'Chemistry', '', 'theory', 'no', '2021-07-21 07:06:19', NULL),
(10, 'Biology', '', 'theory', 'no', '2021-07-21 07:06:32', NULL),
(11, 'Reading', 'RED', 'theory', 'no', '2021-07-22 23:28:00', NULL),
(12, 'Kusoma', 'KUS', 'theory', 'no', '2021-07-22 23:28:15', NULL),
(13, 'Spelling', 'SPE', 'theory', 'no', '2021-07-22 23:28:35', NULL),
(14, 'Imla', 'IML', 'theory', 'no', '2021-07-22 23:28:52', NULL),
(15, 'Numeracy', 'NUM', 'theory', 'no', '2021-07-22 23:29:12', NULL),
(16, 'Art', 'ART', 'theory', 'no', '2021-07-22 23:29:39', NULL),
(17, 'W/Skills', 'WSK', 'theory', 'no', '2021-07-22 23:30:01', NULL),
(18, 'H/Care', 'HEC', 'theory', 'no', '2021-07-22 23:46:12', NULL),
(19, 'Computer', 'COM', 'theory', 'no', '2021-07-22 23:46:54', NULL),
(20, 'Communication Skills', 'CES', 'theory', 'no', '2021-07-23 06:33:14', NULL),
(21, 'Computer Application Lab', 'CAL', 'practical', 'no', '2021-07-23 06:33:37', NULL),
(22, 'Engineering Mathematics', 'EMA', 'theory', 'no', '2021-07-23 06:33:51', NULL),
(23, 'Technical Drawing Lab', 'TDL', 'practical', 'no', '2021-07-23 06:34:47', NULL),
(24, 'Basic Mechanical', 'BME', 'theory', 'no', '2021-07-23 06:35:03', NULL),
(25, 'Engineering Physics', 'ENP', 'theory', 'no', '2021-07-23 06:35:35', NULL),
(26, 'Adv. Mathematics', 'AMA', 'theory', 'no', '2021-07-23 22:26:32', NULL),
(27, 'Adv. Chemistry', 'ACH', 'theory', 'no', '2021-07-23 22:27:17', NULL),
(28, 'Adv. Physics', 'APH', 'theory', 'no', '2021-07-23 22:27:36', NULL),
(29, 'Mathematics', 'MAT', 'theory', 'no', '2021-07-23 22:48:07', NULL),
(30, 'Science', 'SCI', 'theory', 'no', '2021-07-23 22:48:25', NULL),
(31, 'Social Studies', 'SST', 'theory', 'no', '2021-07-23 22:48:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subject_groups`
--

CREATE TABLE `subject_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subject_groups`
--

INSERT INTO `subject_groups` (`id`, `name`, `description`, `session_id`, `created_at`) VALUES
(2, 'Primary/Secondary School Subjects Group', 'High School Subjects Group', 16, '2021-07-23 22:29:30'),
(3, 'College Subject Group', 'College Subject Group', 16, '2021-07-23 06:39:05'),
(4, 'Class VII Subjects Group', 'Class VII Subjects Group', 16, '2021-07-23 22:46:17');

-- --------------------------------------------------------

--
-- Table structure for table `subject_group_class_sections`
--

CREATE TABLE `subject_group_class_sections` (
  `id` int(11) NOT NULL,
  `subject_group_id` int(11) DEFAULT NULL,
  `class_section_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `is_active` int(11) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subject_group_class_sections`
--

INSERT INTO `subject_group_class_sections` (`id`, `subject_group_id`, `class_section_id`, `session_id`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(2, 2, 1, 16, NULL, 0, '2021-07-23 05:32:23', NULL),
(3, 3, 3, 16, NULL, 0, '2021-07-23 06:39:05', NULL),
(4, 4, 4, 16, NULL, 0, '2021-07-23 22:28:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subject_group_subjects`
--

CREATE TABLE `subject_group_subjects` (
  `id` int(11) NOT NULL,
  `subject_group_id` int(11) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subject_group_subjects`
--

INSERT INTO `subject_group_subjects` (`id`, `subject_group_id`, `session_id`, `subject_id`, `created_at`) VALUES
(9, 2, 16, 8, '2021-07-23 05:32:23'),
(10, 2, 16, 9, '2021-07-23 05:32:23'),
(11, 2, 16, 10, '2021-07-23 05:32:23'),
(12, 2, 16, 1, '2021-07-23 05:35:26'),
(13, 2, 16, 2, '2021-07-23 05:35:26'),
(14, 2, 16, 3, '2021-07-23 05:35:26'),
(15, 2, 16, 4, '2021-07-23 05:35:26'),
(16, 2, 16, 5, '2021-07-23 05:35:26'),
(17, 2, 16, 6, '2021-07-23 05:35:26'),
(18, 2, 16, 7, '2021-07-23 05:35:26'),
(19, 2, 16, 11, '2021-07-23 05:35:26'),
(20, 2, 16, 12, '2021-07-23 05:35:26'),
(21, 2, 16, 13, '2021-07-23 05:35:26'),
(22, 2, 16, 14, '2021-07-23 05:35:26'),
(23, 2, 16, 15, '2021-07-23 05:35:26'),
(24, 2, 16, 16, '2021-07-23 05:35:26'),
(25, 2, 16, 17, '2021-07-23 05:35:26'),
(26, 2, 16, 18, '2021-07-23 05:35:26'),
(27, 2, 16, 19, '2021-07-23 05:35:26'),
(28, 3, 16, 20, '2021-07-23 06:39:05'),
(29, 3, 16, 21, '2021-07-23 06:39:05'),
(30, 3, 16, 22, '2021-07-23 06:39:05'),
(31, 3, 16, 23, '2021-07-23 06:39:05'),
(32, 3, 16, 24, '2021-07-23 06:39:05'),
(33, 3, 16, 25, '2021-07-23 06:39:05'),
(37, 4, 16, 1, '2021-07-23 22:46:17'),
(38, 4, 16, 2, '2021-07-23 22:46:17'),
(39, 4, 16, 29, '2021-07-23 22:50:34'),
(40, 4, 16, 30, '2021-07-23 22:50:34'),
(41, 4, 16, 31, '2021-07-23 22:50:34');

-- --------------------------------------------------------

--
-- Table structure for table `subject_syllabus`
--

CREATE TABLE `subject_syllabus` (
  `id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_for` int(11) NOT NULL,
  `date` date NOT NULL,
  `time_from` varchar(255) NOT NULL,
  `time_to` varchar(255) NOT NULL,
  `presentation` text NOT NULL,
  `attachment` text NOT NULL,
  `lacture_youtube_url` varchar(255) NOT NULL,
  `lacture_video` varchar(255) NOT NULL,
  `sub_topic` text NOT NULL,
  `teaching_method` text NOT NULL,
  `general_objectives` text NOT NULL,
  `previous_knowledge` text NOT NULL,
  `comprehensive_questions` text NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `subject_timetable`
--

CREATE TABLE `subject_timetable` (
  `id` int(11) NOT NULL,
  `day` varchar(20) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `section_id` int(11) DEFAULT NULL,
  `subject_group_id` int(11) DEFAULT NULL,
  `subject_group_subject_id` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `time_from` varchar(20) DEFAULT NULL,
  `time_to` varchar(20) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `room_no` varchar(20) DEFAULT NULL,
  `session_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `submit_assignment`
--

CREATE TABLE `submit_assignment` (
  `id` int(11) NOT NULL,
  `homework_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `docs` varchar(225) NOT NULL,
  `file_name` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `submit_assignment`
--

INSERT INTO `submit_assignment` (`id`, `homework_id`, `student_id`, `message`, `docs`, `file_name`, `created_at`) VALUES
(1, 1, 3, 'I have Completed my homework Teacher Mupana', 'fa038f8957694e420af52d5ebc30c444.pdf', 'logo.pdf', '2021-07-23 05:41:14');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_subjects`
--

CREATE TABLE `teacher_subjects` (
  `id` int(11) NOT NULL,
  `session_id` int(11) DEFAULT NULL,
  `class_section_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `template_admitcards`
--

CREATE TABLE `template_admitcards` (
  `id` int(11) NOT NULL,
  `template` varchar(250) DEFAULT NULL,
  `heading` text DEFAULT NULL,
  `title` text DEFAULT NULL,
  `left_logo` varchar(200) DEFAULT NULL,
  `right_logo` varchar(200) DEFAULT NULL,
  `exam_name` varchar(200) DEFAULT NULL,
  `school_name` varchar(200) DEFAULT NULL,
  `exam_center` varchar(200) DEFAULT NULL,
  `sign` varchar(200) DEFAULT NULL,
  `background_img` varchar(200) DEFAULT NULL,
  `is_name` int(1) NOT NULL DEFAULT 1,
  `is_father_name` int(1) NOT NULL DEFAULT 1,
  `is_mother_name` int(1) NOT NULL DEFAULT 1,
  `is_dob` int(1) NOT NULL DEFAULT 1,
  `is_admission_no` int(1) NOT NULL DEFAULT 1,
  `is_roll_no` int(1) NOT NULL DEFAULT 1,
  `is_address` int(1) NOT NULL DEFAULT 1,
  `is_gender` int(1) NOT NULL DEFAULT 1,
  `is_photo` int(11) NOT NULL,
  `is_class` int(11) NOT NULL DEFAULT 0,
  `is_section` int(11) NOT NULL DEFAULT 0,
  `content_footer` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `template_admitcards`
--

INSERT INTO `template_admitcards` (`id`, `template`, `heading`, `title`, `left_logo`, `right_logo`, `exam_name`, `school_name`, `exam_center`, `sign`, `background_img`, `is_name`, `is_father_name`, `is_mother_name`, `is_dob`, `is_admission_no`, `is_roll_no`, `is_address`, `is_gender`, `is_photo`, `is_class`, `is_section`, `content_footer`, `created_at`, `updated_at`) VALUES
(1, 'Sample Admit Card', 'BOARD OF SECONDARY EDUCATION, MADHYA PRADESH, BHOPAL', 'HIGHER SECONDARY SCHOOL CERTIFICATE EXAMINATION (10+2) 2014', 'ab12c4b65f53ee621dcf84370a7c5be4.png', '0910482bf79df5fd103e8383d61b387a.png', 'Test', 'Mount Carmel School', 'test dmit card2', 'aa9c7087e68c5af1d2c04946de1d3bd3.png', '782a71f53ea6bca213012d49e9d46d98.jpg', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2020-02-28 06:26:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `template_marksheets`
--

CREATE TABLE `template_marksheets` (
  `id` int(11) NOT NULL,
  `template` varchar(200) DEFAULT NULL,
  `heading` text DEFAULT NULL,
  `title` text DEFAULT NULL,
  `left_logo` varchar(200) DEFAULT NULL,
  `right_logo` varchar(200) DEFAULT NULL,
  `exam_name` varchar(200) DEFAULT NULL,
  `school_name` varchar(200) DEFAULT NULL,
  `exam_center` varchar(200) DEFAULT NULL,
  `left_sign` varchar(200) DEFAULT NULL,
  `middle_sign` varchar(200) DEFAULT NULL,
  `right_sign` varchar(200) DEFAULT NULL,
  `exam_session` int(1) DEFAULT 1,
  `is_name` int(1) DEFAULT 1,
  `is_father_name` int(1) DEFAULT 1,
  `is_mother_name` int(1) DEFAULT 1,
  `is_dob` int(1) DEFAULT 1,
  `is_admission_no` int(1) DEFAULT 1,
  `is_roll_no` int(1) DEFAULT 1,
  `is_photo` int(11) DEFAULT 1,
  `is_division` int(1) NOT NULL DEFAULT 1,
  `is_customfield` int(1) NOT NULL,
  `background_img` varchar(200) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `is_class` int(11) NOT NULL DEFAULT 0,
  `is_teacher_remark` int(11) NOT NULL DEFAULT 1,
  `is_section` int(11) NOT NULL DEFAULT 0,
  `content` text DEFAULT NULL,
  `content_footer` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `template_marksheets`
--

INSERT INTO `template_marksheets` (`id`, `template`, `heading`, `title`, `left_logo`, `right_logo`, `exam_name`, `school_name`, `exam_center`, `left_sign`, `middle_sign`, `right_sign`, `exam_session`, `is_name`, `is_father_name`, `is_mother_name`, `is_dob`, `is_admission_no`, `is_roll_no`, `is_photo`, `is_division`, `is_customfield`, `background_img`, `date`, `is_class`, `is_teacher_remark`, `is_section`, `content`, `content_footer`, `created_at`, `updated_at`) VALUES
(1, 'Sample Marksheet', 'BOARD OF SECONDARY EDUCATION, MADHYA PRADESH, BHOPAL', 'BOARD OF SECONDARY EDUCATION, MADHYA PRADESH, BHOPAL', 'f314cec3f688771ccaeddbcee6e52f7c.png', 'e824b2df53266266be2dbfd2001168b8.png', 'HIGHER SECONDARY SCHOOL CERTIFICATE EXAMINATION', 'Mount Carmel School', 'GOVT GIRLS H S SCHOOL', '331e0690e50f8c6b7a219a0a2b9667f7.png', '351f513d79ee5c0f642c2d36514a1ff4.png', 'fb79d2c0d163357d1706b78550a05e2c.png', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '', NULL, 0, 1, 0, NULL, NULL, '2020-02-28 06:26:06', NULL),
(2, 'ONE', 'CLASS ONE ANNUAL RESUL', 'RESULT -2021', 'c9ef4d1a08ebc86cba2716d173f22d5c.png', '', 'ANNUAL RESULT', 'EXCEL', 'EXCEL', '', '', '', 1, 1, 1, 0, 1, 1, 0, 0, 1, 0, '', 'DECEMBER 2021', 1, 1, 1, 'RESULT 2021', '', '2021-07-23 07:44:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `timetables`
--

CREATE TABLE `timetables` (
  `id` int(11) NOT NULL,
  `teacher_subject_id` int(20) DEFAULT NULL,
  `day_name` varchar(50) DEFAULT NULL,
  `start_time` varchar(50) DEFAULT NULL,
  `end_time` varchar(50) DEFAULT NULL,
  `room_no` varchar(50) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `topic`
--

CREATE TABLE `topic` (
  `id` int(11) NOT NULL,
  `session_id` int(11) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `complete_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `transport_route`
--

CREATE TABLE `transport_route` (
  `id` int(11) NOT NULL,
  `route_title` varchar(100) DEFAULT NULL,
  `no_of_vehicle` int(11) DEFAULT NULL,
  `fare` float(10,2) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transport_route`
--

INSERT INTO `transport_route` (`id`, `route_title`, `no_of_vehicle`, `fare`, `note`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Tegeta - Madale', NULL, 100000.00, NULL, 'no', '2021-07-26 07:11:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `user` varchar(100) DEFAULT NULL,
  `role` varchar(100) DEFAULT NULL,
  `class_section_id` int(11) DEFAULT NULL,
  `ipaddress` varchar(100) DEFAULT NULL,
  `user_agent` varchar(500) DEFAULT NULL,
  `login_datetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `user`, `role`, `class_section_id`, `ipaddress`, `user_agent`, `login_datetime`) VALUES
(1, 'budde@microtelecomms.com', 'Super Admin', NULL, '156.157.148.225', 'Chrome 91.0.4472.124, Windows 10', '2021-07-21 10:56:41'),
(2, 'teacher@schoolmanagement.co.tz', 'Teacher', NULL, '156.157.148.225', 'Firefox 89.0, Windows 10', '2021-07-21 11:32:04'),
(3, 'std1', 'student', 2, '156.157.148.225', 'Firefox 89.0, Windows 10', '2021-07-21 14:52:17'),
(4, 'parent1', 'parent', NULL, '156.157.148.225', 'Firefox 89.0, Windows 10', '2021-07-21 14:55:34'),
(5, 'student@schoolmanagement.co.tz', 'student', 2, '156.157.148.225', 'Firefox 89.0, Windows 10', '2021-07-21 14:59:23'),
(6, 'parent@schoolmanagement.co.tz', 'parent', NULL, '156.157.148.225', 'Firefox 89.0, Windows 10', '2021-07-21 15:44:42'),
(7, 'parent2', 'parent', NULL, '156.157.148.225', 'Firefox 89.0, Windows 10', '2021-07-21 16:01:16'),
(8, 'parent2@schoolmanagement.co.tz', 'parent', NULL, '156.157.148.225', 'Firefox 89.0, Windows 10', '2021-07-21 16:18:57'),
(9, 'librarian@schoolmanagement.co.tz', 'Librarian', NULL, '156.157.148.225', 'Firefox 89.0, Windows 10', '2021-07-21 16:52:59'),
(10, 'accountant@schoolmanagement.co.tz', 'Accountant', NULL, '156.157.148.225', 'Firefox 89.0, Windows 10', '2021-07-21 17:01:51'),
(11, 'receptionist@schoolmanagement.co.tz', 'Receptionist', NULL, '156.157.148.225', 'Firefox 89.0, Windows 10', '2021-07-21 17:36:30'),
(12, 'teacher@schoolmanagement.co.tz', 'Teacher', NULL, '156.157.148.225', 'Chrome 87.0.4280.141, Android', '2021-07-22 08:04:36'),
(13, 'budde@microtelecomms.com', 'Super Admin', NULL, '156.158.129.1', 'Chrome 91.0.4472.164, Windows 10', '2021-07-22 14:17:12'),
(14, 'student@schoolmanagement.co.tz', 'student', 2, '41.75.220.140', 'Chrome 91.0.4472.164, Windows 10', '2021-07-23 05:44:32'),
(15, 'budde@microtelecomms.com', 'Super Admin', NULL, '41.75.220.140', 'Chrome 91.0.4472.164, Windows 10', '2021-07-23 05:56:25'),
(16, 'budde@microtelecomms.com', 'Super Admin', NULL, '157.34.93.129', 'Chrome 92.0.4515.107, Windows 10', '2021-07-23 07:30:32'),
(17, 'budde@microtelecomms.com', 'Super Admin', NULL, '122.168.188.146', 'Chrome 91.0.4472.164, Windows 10', '2021-07-23 07:40:52'),
(18, 'budde@microtelecomms.com', 'Super Admin', NULL, '41.75.220.140', 'Chrome 91.0.4472.164, Windows 10', '2021-07-23 11:40:35'),
(19, 'budde@microtelecomms.com', 'Super Admin', NULL, '41.75.220.140', 'Chrome 91.0.4472.164, Windows 10', '2021-07-23 11:41:52'),
(20, 'parent3', 'parent', NULL, '41.75.220.140', 'Firefox 90.0, Windows 10', '2021-07-23 11:43:31'),
(21, 'bakari@schoolmanagement.co.tz', 'parent', NULL, '41.75.220.140', 'Firefox 90.0, Windows 10', '2021-07-23 11:45:22'),
(22, 'std3', 'student', 1, '41.75.220.140', 'Firefox 90.0, Windows 10', '2021-07-23 11:46:21'),
(23, 'std3', 'student', 1, '41.75.220.140', 'Firefox 90.0, Windows 10', '2021-07-23 11:47:21'),
(24, 'teacher@schoolmanagement.co.tz', 'Teacher', NULL, '41.75.220.140', 'Chrome 91.0.4472.164, Windows 10', '2021-07-23 11:55:17'),
(25, 'budde@microtelecomms.com', 'Super Admin', NULL, '41.75.220.140', 'Chrome 91.0.4472.164, Windows 10', '2021-07-23 12:02:39'),
(26, 'accountant@schoolmanagement.co.tz', 'Accountant', NULL, '41.75.220.140', 'Chrome 91.0.4472.164, Windows 10', '2021-07-23 12:04:04'),
(27, 'parent@schoolmanagement.co.tz', 'parent', NULL, '41.75.220.140', 'Firefox 90.0, Windows 10', '2021-07-23 12:07:44'),
(28, 'bakari@schoolmanagement.co.tz', 'parent', NULL, '41.75.220.140', 'Firefox 90.0, Windows 10', '2021-07-23 12:08:30'),
(29, 'budde@microtelecomms.com', 'Super Admin', NULL, '41.75.220.140', 'Chrome 91.0.4472.164, Windows 10', '2021-07-23 12:10:15'),
(30, 'abdulraheem@schoolmanaement.co.tz', 'student', 1, '41.75.220.140', 'Firefox 90.0, Windows 10', '2021-07-23 12:12:26'),
(31, 'teacher@schoolmanagement.co.tz', 'Teacher', NULL, '41.75.220.140', 'Chrome 91.0.4472.164, Windows 10', '2021-07-23 12:14:17'),
(32, 'budde@microtelecomms.com', 'Super Admin', NULL, '41.75.220.140', 'Chrome 91.0.4472.164, Windows 10', '2021-07-23 12:15:31'),
(33, 'teacher@schoolmanagement.co.tz', 'Teacher', NULL, '41.75.220.140', 'Chrome 91.0.4472.164, Windows 10', '2021-07-23 12:19:08'),
(34, 'abdulraheem@schoolmanaement.co.tz', 'student', 1, '41.75.220.140', 'Firefox 90.0, Windows 10', '2021-07-23 12:27:25'),
(35, 'budde@microtelecomms.com', 'Super Admin', NULL, '41.75.220.140', 'Chrome 91.0.4472.164, Windows 10', '2021-07-23 12:31:03'),
(36, 'teacher@schoolmanagement.co.tz', 'Teacher', NULL, '41.75.220.140', 'Chrome 91.0.4472.164, Windows 10', '2021-07-23 12:35:54'),
(37, 'budde@microtelecomms.com', 'Super Admin', NULL, '41.75.220.140', 'Chrome 91.0.4472.164, Windows 10', '2021-07-23 13:30:00'),
(38, 'std6', 'student', 3, '41.75.220.140', 'Firefox 90.0, Windows 10', '2021-07-23 13:47:24'),
(39, 'teacher@schoolmanagement.co.tz', 'Teacher', NULL, '197.250.194.211', 'Chrome 92.0.4515.107, Windows 10', '2021-07-23 14:05:48'),
(40, 'parent@schoolmanagement.co.tz', 'parent', NULL, '41.75.220.140', 'Chrome 91.0.4472.164, Windows 10', '2021-07-23 14:42:18'),
(41, 'receptionist@schoolmanagement.co.tz', 'Receptionist', NULL, '197.186.29.54', 'Chrome 91.0.4472.164, Windows 10', '2021-07-24 05:21:04'),
(42, 'budde@microtelecomms.com', 'Super Admin', NULL, '197.186.29.54', 'Chrome 91.0.4472.164, Windows 10', '2021-07-24 05:22:44'),
(43, 'std7', 'student', 4, '197.186.29.54', 'Firefox 90.0, Windows 10', '2021-07-24 05:54:04'),
(44, 'abdulraheem@schoolmanagement.co.tz', 'student', 1, '197.186.29.54', 'Firefox 90.0, Windows 10', '2021-07-24 08:37:07'),
(45, 'budde@microtelecomms.com', 'Super Admin', NULL, '197.186.29.54', 'Chrome 91.0.4472.164, Windows 10', '2021-07-24 08:37:44'),
(46, 'bakari@schoolmanagement.co.tz', 'parent', NULL, '197.186.29.54', 'Firefox 90.0, Windows 10', '2021-07-24 08:42:30'),
(47, 'bakari@schoolmanagement.co.tz', 'parent', NULL, '41.75.220.95', 'Chrome 91.0.4472.164, Windows 10', '2021-07-25 10:08:05'),
(48, 'parent@schoolmanagement.co.tz', 'parent', NULL, '156.159.61.125', 'Chrome 91.0.4472.164, Windows 10', '2021-07-25 16:24:02'),
(49, 'budde@microtelecomms.com', 'Super Admin', NULL, '156.159.61.125', 'Chrome 91.0.4472.164, Windows 10', '2021-07-25 16:29:37'),
(50, 'student@schoolmanagement.co.tz', 'student', 2, '144.48.109.28', 'Chrome 91.0.4472.164, Mac OS X', '2021-07-26 07:58:29'),
(51, 'budde@microtelecomms.com', 'Super Admin', NULL, '41.75.210.243', 'Chrome 91.0.4472.164, Windows 10', '2021-07-26 13:44:19'),
(52, 'budde@microtelecomms.com', 'Super Admin', NULL, '41.75.210.243', 'Chrome 91.0.4472.164, Windows 10', '2021-07-26 15:48:46'),
(53, 'parent@schoolmanagement.co.tz', 'parent', NULL, '41.75.210.243', 'Chrome 87.0.4280.141, Android', '2021-07-26 17:05:30'),
(54, 'budde@microtelecomms.com', 'Super Admin', NULL, '41.75.210.243', 'Chrome 91.0.4472.164, Windows 10', '2021-07-27 08:51:15'),
(55, 'parent@schoolmanagement.co.tz', 'parent', NULL, '41.75.210.243', 'Firefox 90.0, Windows 10', '2021-07-27 09:00:32'),
(56, 'student@schoolmanagement.co.tz', 'student', 2, '41.75.210.243', 'Firefox 90.0, Windows 10', '2021-07-27 10:02:45'),
(57, 'abdulraheem@schoolmanagement.co.tz', 'student', 1, '41.75.210.243', 'Firefox 90.0, Windows 10', '2021-07-27 10:10:55'),
(58, 'teacher@schoolmanagement.co.tz', 'Teacher', NULL, '41.75.210.243', 'Chrome 91.0.4472.164, Windows 10', '2021-07-27 10:17:03'),
(59, 'student@schoolmanagement.co.tz', 'student', 2, '41.75.210.243', 'Firefox 90.0, Windows 10', '2021-07-27 10:19:00'),
(60, 'budde@microtelecomms.com', 'Super Admin', NULL, '41.75.210.243', 'Chrome 91.0.4472.164, Windows 10', '2021-07-27 10:19:20'),
(61, 'abdulraheem@schoolmanagement.co.tz', 'student', 1, '41.75.210.243', 'Firefox 90.0, Windows 10', '2021-07-27 10:19:28'),
(62, 'librarian@schoolmanagement.co.tz', 'Librarian', NULL, '41.75.210.243', 'Firefox 90.0, Windows 10', '2021-07-27 10:42:31'),
(63, 'receptionist@schoolmanagement.co.tz', 'Receptionist', NULL, '41.75.210.243', 'Firefox 90.0, Windows 10', '2021-07-27 10:51:06'),
(64, 'budde@microtelecomms.com', 'Super Admin', NULL, '::1', 'Chrome 94.0.4606.71, Windows 10', '2021-10-05 16:26:07'),
(65, 'parent@schoolmanagement.co.tz', 'parent', NULL, '127.0.0.1', 'Firefox 92.0, Windows 10', '2021-10-05 17:52:22'),
(66, 'budde@microtelecomms.com', 'Super Admin', NULL, '::1', 'Chrome 94.0.4606.71, Windows 10', '2021-10-06 05:40:18'),
(67, 'parent@schoolmanagement.co.tz', 'parent', NULL, '127.0.0.1', 'Firefox 92.0, Windows 10', '2021-10-06 05:42:32'),
(68, 'budde@microtelecomms.com', 'Super Admin', NULL, '::1', 'Chrome 94.0.4606.71, Windows 10', '2021-10-07 08:08:14'),
(69, 'budde@microtelecomms.com', 'Super Admin', NULL, '::1', 'Chrome 94.0.4606.71, Windows 10', '2021-10-08 05:52:46'),
(70, 'parent@schoolmanagement.co.tz', 'parent', NULL, '127.0.0.1', 'Firefox 92.0, Windows 10', '2021-10-08 05:53:58'),
(71, 'parent@schoolmanagement.co.tz', 'parent', NULL, '127.0.0.1', 'Firefox 92.0, Windows 10', '2021-10-08 09:01:50'),
(72, 'budde@microtelecomms.com', 'Super Admin', NULL, '::1', 'Chrome 94.0.4606.81, Windows 10', '2021-10-08 15:03:57'),
(73, 'parent@schoolmanagement.co.tz', 'parent', NULL, '127.0.0.1', 'Firefox 92.0, Windows 10', '2021-10-08 15:07:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_id` int(10) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `childs` text NOT NULL,
  `role` varchar(30) NOT NULL,
  `verification_code` varchar(200) NOT NULL,
  `lang_id` int(11) NOT NULL,
  `is_active` varchar(255) DEFAULT 'yes',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `lang_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 'student@schoolmanagement.co.tz', '12345', '', 'student', '', 0, 'yes', '2021-07-21 07:54:32', NULL),
(2, 0, 'parent@schoolmanagement.co.tz', '12345', '1', 'parent', '', 0, 'yes', '2021-07-21 07:56:51', NULL),
(3, 2, 'std2', 'sr0je2', '', 'student', '', 0, 'yes', '2021-07-21 08:59:38', NULL),
(4, 0, 'parent2@schoolmanagement.co.tz', '12345', '2', 'parent', '', 0, 'yes', '2021-07-21 09:02:51', NULL),
(5, 3, 'abdulraheem@schoolmanagement.co.tz', '12345', '', 'student', '', 0, 'yes', '2021-07-23 05:28:54', NULL),
(6, 0, 'bakari@schoolmanagement.co.tz', '12345', '3', 'parent', '', 0, 'yes', '2021-07-23 04:44:55', NULL),
(7, 4, 'std4', 'yxigc6', '', 'student', '', 0, 'yes', '2021-07-23 00:00:42', NULL),
(8, 0, 'parent4', 'wu0p7e', '4', 'parent', '', 0, 'yes', '2021-07-23 00:00:42', NULL),
(9, 5, 'std5', 'llg41a', '', 'student', '', 0, 'yes', '2021-07-23 00:47:17', NULL),
(10, 0, 'parent5', '7ppq18', '5', 'parent', '', 0, 'yes', '2021-07-23 00:47:17', NULL),
(11, 6, 'salehe@schoolmanagement.co.tz', '12345', '', 'student', '', 0, 'yes', '2021-07-23 06:48:22', NULL),
(12, 0, 'parent6', 'mf7tlu', '6', 'parent', '', 0, 'yes', '2021-07-23 06:46:33', NULL),
(13, 7, 'happiness@schoolmanagement.co.tz', '12345', '', 'student', '', 0, 'yes', '2021-07-23 22:54:55', NULL),
(14, 0, 'parent7', 't5cl98', '7', 'parent', '', 0, 'yes', '2021-07-23 22:41:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_authentication`
--

CREATE TABLE `users_authentication` (
  `id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expired_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_authentication`
--

INSERT INTO `users_authentication` (`id`, `users_id`, `token`, `expired_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'MTANQMwMgMw', '2022-07-23 05:41:37', NULL, NULL),
(6, 1, 'MgMTANAMgMQ', '2022-07-26 02:54:25', NULL, '2021-07-26');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(10) UNSIGNED NOT NULL,
  `vehicle_no` varchar(20) DEFAULT NULL,
  `vehicle_model` varchar(100) NOT NULL DEFAULT 'None',
  `manufacture_year` varchar(4) DEFAULT NULL,
  `driver_name` varchar(50) DEFAULT NULL,
  `driver_licence` varchar(50) NOT NULL DEFAULT 'None',
  `driver_contact` varchar(20) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `vehicle_no`, `vehicle_model`, `manufacture_year`, `driver_name`, `driver_licence`, `driver_contact`, `note`, `created_at`) VALUES
(1, 'T165DDC', 'Coaster', '2000', 'Shaaban Juma', '863662992', '+255676554422', '', '2021-07-26 07:13:28');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_routes`
--

CREATE TABLE `vehicle_routes` (
  `id` int(11) NOT NULL,
  `route_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vehicle_routes`
--

INSERT INTO `vehicle_routes` (`id`, `route_id`, `vehicle_id`, `created_at`) VALUES
(1, 1, 1, '2021-07-26 07:14:18');

-- --------------------------------------------------------

--
-- Table structure for table `visitors_book`
--

CREATE TABLE `visitors_book` (
  `id` int(11) NOT NULL,
  `source` varchar(100) DEFAULT NULL,
  `purpose` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `contact` varchar(12) NOT NULL,
  `id_proof` varchar(50) NOT NULL,
  `no_of_pepple` int(11) NOT NULL,
  `date` date NOT NULL,
  `in_time` varchar(20) NOT NULL,
  `out_time` varchar(20) NOT NULL,
  `note` text NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `visitors_purpose`
--

CREATE TABLE `visitors_purpose` (
  `id` int(11) NOT NULL,
  `visitors_purpose` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alumni_events`
--
ALTER TABLE `alumni_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `alumni_students`
--
ALTER TABLE `alumni_students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `attendence_type`
--
ALTER TABLE `attendence_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_issues`
--
ALTER TABLE `book_issues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `captcha`
--
ALTER TABLE `captcha`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_connections`
--
ALTER TABLE `chat_connections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_user_one` (`chat_user_one`),
  ADD KEY `chat_user_two` (`chat_user_two`);

--
-- Indexes for table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_user_id` (`chat_user_id`),
  ADD KEY `chat_connection_id` (`chat_connection_id`);

--
-- Indexes for table `chat_users`
--
ALTER TABLE `chat_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `create_staff_id` (`create_staff_id`),
  ADD KEY `create_student_id` (`create_student_id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_sections`
--
ALTER TABLE `class_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `section_id` (`section_id`);

--
-- Indexes for table `class_teacher`
--
ALTER TABLE `class_teacher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaint_type`
--
ALTER TABLE `complaint_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `content_for`
--
ALTER TABLE `content_for`
  ADD PRIMARY KEY (`id`),
  ADD KEY `content_id` (`content_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `custom_field_id` (`custom_field_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disable_reason`
--
ALTER TABLE `disable_reason`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dispatch_receive`
--
ALTER TABLE `dispatch_receive`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_config`
--
ALTER TABLE `email_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiry_type`
--
ALTER TABLE `enquiry_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_groups`
--
ALTER TABLE `exam_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_group_class_batch_exams`
--
ALTER TABLE `exam_group_class_batch_exams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_group_id` (`exam_group_id`);

--
-- Indexes for table `exam_group_class_batch_exam_students`
--
ALTER TABLE `exam_group_class_batch_exam_students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_group_class_batch_exam_id` (`exam_group_class_batch_exam_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `student_session_id` (`student_session_id`);

--
-- Indexes for table `exam_group_class_batch_exam_subjects`
--
ALTER TABLE `exam_group_class_batch_exam_subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_group_class_batch_exams_id` (`exam_group_class_batch_exams_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `exam_group_exam_connections`
--
ALTER TABLE `exam_group_exam_connections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_group_id` (`exam_group_id`),
  ADD KEY `exam_group_class_batch_exams_id` (`exam_group_class_batch_exams_id`);

--
-- Indexes for table `exam_group_exam_results`
--
ALTER TABLE `exam_group_exam_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_group_class_batch_exam_subject_id` (`exam_group_class_batch_exam_subject_id`),
  ADD KEY `exam_group_student_id` (`exam_group_student_id`),
  ADD KEY `exam_group_class_batch_exam_student_id` (`exam_group_class_batch_exam_student_id`);

--
-- Indexes for table `exam_group_students`
--
ALTER TABLE `exam_group_students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_group_id` (`exam_group_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `exam_results`
--
ALTER TABLE `exam_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_schedule_id` (`exam_schedule_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `exam_schedules`
--
ALTER TABLE `exam_schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacher_subject_id` (`teacher_subject_id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_head`
--
ALTER TABLE `expense_head`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feecategory`
--
ALTER TABLE `feecategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feemasters`
--
ALTER TABLE `feemasters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fees_discounts`
--
ALTER TABLE `fees_discounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `fees_reminder`
--
ALTER TABLE `fees_reminder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feetype`
--
ALTER TABLE `feetype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee_groups`
--
ALTER TABLE `fee_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee_groups_feetype`
--
ALTER TABLE `fee_groups_feetype`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fee_session_group_id` (`fee_session_group_id`),
  ADD KEY `fee_groups_id` (`fee_groups_id`),
  ADD KEY `feetype_id` (`feetype_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `fee_receipt_no`
--
ALTER TABLE `fee_receipt_no`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee_session_groups`
--
ALTER TABLE `fee_session_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fee_groups_id` (`fee_groups_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `filetypes`
--
ALTER TABLE `filetypes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `follow_up`
--
ALTER TABLE `follow_up`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `front_cms_media_gallery`
--
ALTER TABLE `front_cms_media_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `front_cms_menus`
--
ALTER TABLE `front_cms_menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `front_cms_menu_items`
--
ALTER TABLE `front_cms_menu_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `front_cms_pages`
--
ALTER TABLE `front_cms_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `front_cms_page_contents`
--
ALTER TABLE `front_cms_page_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `page_id` (`page_id`);

--
-- Indexes for table `front_cms_programs`
--
ALTER TABLE `front_cms_programs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `front_cms_program_photos`
--
ALTER TABLE `front_cms_program_photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `program_id` (`program_id`);

--
-- Indexes for table `front_cms_settings`
--
ALTER TABLE `front_cms_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `general_calls`
--
ALTER TABLE `general_calls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homework`
--
ALTER TABLE `homework`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_group_subject_id` (`subject_group_subject_id`);

--
-- Indexes for table `homework_evaluation`
--
ALTER TABLE `homework_evaluation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hostel`
--
ALTER TABLE `hostel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hostel_rooms`
--
ALTER TABLE `hostel_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `id_card`
--
ALTER TABLE `id_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `income`
--
ALTER TABLE `income`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `income_head`
--
ALTER TABLE `income_head`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_category`
--
ALTER TABLE `item_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_issue`
--
ALTER TABLE `item_issue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `item_category_id` (`item_category_id`);

--
-- Indexes for table `item_stock`
--
ALTER TABLE `item_stock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_id` (`item_id`),
  ADD KEY `supplier_id` (`supplier_id`),
  ADD KEY `store_id` (`store_id`);

--
-- Indexes for table `item_store`
--
ALTER TABLE `item_store`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_supplier`
--
ALTER TABLE `item_supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_types`
--
ALTER TABLE `leave_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `type` (`type`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `subject_group_subject_id` (`subject_group_subject_id`),
  ADD KEY `subject_group_class_sections_id` (`subject_group_class_sections_id`);

--
-- Indexes for table `libarary_members`
--
ALTER TABLE `libarary_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `multi_class_students`
--
ALTER TABLE `multi_class_students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `student_session_id` (`student_session_id`);

--
-- Indexes for table `notification_roles`
--
ALTER TABLE `notification_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `send_notification_id` (`send_notification_id`),
  ADD KEY `role_id` (`role_id`);

--
-- Indexes for table `notification_setting`
--
ALTER TABLE `notification_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `onlineexam`
--
ALTER TABLE `onlineexam`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `onlineexam_attempts`
--
ALTER TABLE `onlineexam_attempts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `onlineexam_student_id` (`onlineexam_student_id`);

--
-- Indexes for table `onlineexam_questions`
--
ALTER TABLE `onlineexam_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `onlineexam_id` (`onlineexam_id`),
  ADD KEY `question_id` (`question_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `onlineexam_students`
--
ALTER TABLE `onlineexam_students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `onlineexam_id` (`onlineexam_id`),
  ADD KEY `student_session_id` (`student_session_id`);

--
-- Indexes for table `onlineexam_student_results`
--
ALTER TABLE `onlineexam_student_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `onlineexam_student_id` (`onlineexam_student_id`),
  ADD KEY `onlineexam_question_id` (`onlineexam_question_id`);

--
-- Indexes for table `online_admissions`
--
ALTER TABLE `online_admissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_section_id` (`class_section_id`);

--
-- Indexes for table `online_admission_fields`
--
ALTER TABLE `online_admission_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `online_admission_payment`
--
ALTER TABLE `online_admission_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_settings`
--
ALTER TABLE `payment_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payslip_allowance`
--
ALTER TABLE `payslip_allowance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_category`
--
ALTER TABLE `permission_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_group`
--
ALTER TABLE `permission_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_student`
--
ALTER TABLE `permission_student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `print_headerfooter`
--
ALTER TABLE `print_headerfooter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `question_answers`
--
ALTER TABLE `question_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_options`
--
ALTER TABLE `question_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `read_notification`
--
ALTER TABLE `read_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reference`
--
ALTER TABLE `reference`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_types`
--
ALTER TABLE `room_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school_houses`
--
ALTER TABLE `school_houses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sch_settings`
--
ALTER TABLE `sch_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lang_id` (`lang_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `send_notification`
--
ALTER TABLE `send_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_config`
--
ALTER TABLE `sms_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `source`
--
ALTER TABLE `source`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employee_id` (`employee_id`);

--
-- Indexes for table `staff_attendance`
--
ALTER TABLE `staff_attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_staff_attendance_staff` (`staff_id`),
  ADD KEY `FK_staff_attendance_staff_attendance_type` (`staff_attendance_type_id`);

--
-- Indexes for table `staff_attendance_type`
--
ALTER TABLE `staff_attendance_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_designation`
--
ALTER TABLE `staff_designation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_id_card`
--
ALTER TABLE `staff_id_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_leave_details`
--
ALTER TABLE `staff_leave_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_staff_leave_details_staff` (`staff_id`),
  ADD KEY `FK_staff_leave_details_leave_types` (`leave_type_id`);

--
-- Indexes for table `staff_leave_request`
--
ALTER TABLE `staff_leave_request`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_staff_leave_request_staff` (`staff_id`),
  ADD KEY `FK_staff_leave_request_leave_types` (`leave_type_id`);

--
-- Indexes for table `staff_payroll`
--
ALTER TABLE `staff_payroll`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_payslip`
--
ALTER TABLE `staff_payslip`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_staff_payslip_staff` (`staff_id`);

--
-- Indexes for table `staff_rating`
--
ALTER TABLE `staff_rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_staff_rating_staff` (`staff_id`);

--
-- Indexes for table `staff_roles`
--
ALTER TABLE `staff_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `staff_timeline`
--
ALTER TABLE `staff_timeline`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_staff_timeline_staff` (`staff_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_applyleave`
--
ALTER TABLE `student_applyleave`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_attendences`
--
ALTER TABLE `student_attendences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_session_id` (`student_session_id`),
  ADD KEY `attendence_type_id` (`attendence_type_id`);

--
-- Indexes for table `student_doc`
--
ALTER TABLE `student_doc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_edit_fields`
--
ALTER TABLE `student_edit_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_fees`
--
ALTER TABLE `student_fees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_fees_deposite`
--
ALTER TABLE `student_fees_deposite`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_fees_master_id` (`student_fees_master_id`),
  ADD KEY `fee_groups_feetype_id` (`fee_groups_feetype_id`);

--
-- Indexes for table `student_fees_discounts`
--
ALTER TABLE `student_fees_discounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_session_id` (`student_session_id`),
  ADD KEY `fees_discount_id` (`fees_discount_id`);

--
-- Indexes for table `student_fees_master`
--
ALTER TABLE `student_fees_master`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_session_id` (`student_session_id`),
  ADD KEY `fee_session_group_id` (`fee_session_group_id`);

--
-- Indexes for table `student_session`
--
ALTER TABLE `student_session`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `section_id` (`section_id`);

--
-- Indexes for table `student_sibling`
--
ALTER TABLE `student_sibling`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_subject_attendances`
--
ALTER TABLE `student_subject_attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendence_type_id` (`attendence_type_id`),
  ADD KEY `student_session_id` (`student_session_id`),
  ADD KEY `subject_timetable_id` (`subject_timetable_id`);

--
-- Indexes for table `student_timeline`
--
ALTER TABLE `student_timeline`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject_groups`
--
ALTER TABLE `subject_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `subject_group_class_sections`
--
ALTER TABLE `subject_group_class_sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_section_id` (`class_section_id`),
  ADD KEY `subject_group_id` (`subject_group_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `subject_group_subjects`
--
ALTER TABLE `subject_group_subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject_group_id` (`subject_group_id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `subject_syllabus`
--
ALTER TABLE `subject_syllabus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topic_id` (`topic_id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `created_for` (`created_for`);

--
-- Indexes for table `subject_timetable`
--
ALTER TABLE `subject_timetable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `section_id` (`section_id`),
  ADD KEY `subject_group_id` (`subject_group_id`),
  ADD KEY `subject_group_subject_id` (`subject_group_subject_id`),
  ADD KEY `staff_id` (`staff_id`),
  ADD KEY `session_id` (`session_id`);

--
-- Indexes for table `submit_assignment`
--
ALTER TABLE `submit_assignment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_subjects`
--
ALTER TABLE `teacher_subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_section_id` (`class_section_id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `template_admitcards`
--
ALTER TABLE `template_admitcards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `template_marksheets`
--
ALTER TABLE `template_marksheets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timetables`
--
ALTER TABLE `timetables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `lesson_id` (`lesson_id`);

--
-- Indexes for table `transport_route`
--
ALTER TABLE `transport_route`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_authentication`
--
ALTER TABLE `users_authentication`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_routes`
--
ALTER TABLE `vehicle_routes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitors_book`
--
ALTER TABLE `visitors_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitors_purpose`
--
ALTER TABLE `visitors_purpose`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alumni_events`
--
ALTER TABLE `alumni_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `alumni_students`
--
ALTER TABLE `alumni_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendence_type`
--
ALTER TABLE `attendence_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `book_issues`
--
ALTER TABLE `book_issues`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `captcha`
--
ALTER TABLE `captcha`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `chat_connections`
--
ALTER TABLE `chat_connections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chat_messages`
--
ALTER TABLE `chat_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chat_users`
--
ALTER TABLE `chat_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `class_sections`
--
ALTER TABLE `class_sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `class_teacher`
--
ALTER TABLE `class_teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `complaint`
--
ALTER TABLE `complaint`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `complaint_type`
--
ALTER TABLE `complaint_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `content_for`
--
ALTER TABLE `content_for`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `disable_reason`
--
ALTER TABLE `disable_reason`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dispatch_receive`
--
ALTER TABLE `dispatch_receive`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_config`
--
ALTER TABLE `email_config`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `enquiry_type`
--
ALTER TABLE `enquiry_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_groups`
--
ALTER TABLE `exam_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `exam_group_class_batch_exams`
--
ALTER TABLE `exam_group_class_batch_exams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `exam_group_class_batch_exam_students`
--
ALTER TABLE `exam_group_class_batch_exam_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `exam_group_class_batch_exam_subjects`
--
ALTER TABLE `exam_group_class_batch_exam_subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `exam_group_exam_connections`
--
ALTER TABLE `exam_group_exam_connections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_group_exam_results`
--
ALTER TABLE `exam_group_exam_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `exam_group_students`
--
ALTER TABLE `exam_group_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_results`
--
ALTER TABLE `exam_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_schedules`
--
ALTER TABLE `exam_schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_head`
--
ALTER TABLE `expense_head`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feecategory`
--
ALTER TABLE `feecategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feemasters`
--
ALTER TABLE `feemasters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fees_discounts`
--
ALTER TABLE `fees_discounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fees_reminder`
--
ALTER TABLE `fees_reminder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `feetype`
--
ALTER TABLE `feetype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `fee_groups`
--
ALTER TABLE `fee_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `fee_groups_feetype`
--
ALTER TABLE `fee_groups_feetype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `fee_receipt_no`
--
ALTER TABLE `fee_receipt_no`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fee_session_groups`
--
ALTER TABLE `fee_session_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `filetypes`
--
ALTER TABLE `filetypes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `follow_up`
--
ALTER TABLE `follow_up`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `front_cms_media_gallery`
--
ALTER TABLE `front_cms_media_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `front_cms_menus`
--
ALTER TABLE `front_cms_menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `front_cms_menu_items`
--
ALTER TABLE `front_cms_menu_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `front_cms_pages`
--
ALTER TABLE `front_cms_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `front_cms_page_contents`
--
ALTER TABLE `front_cms_page_contents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `front_cms_programs`
--
ALTER TABLE `front_cms_programs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `front_cms_program_photos`
--
ALTER TABLE `front_cms_program_photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `front_cms_settings`
--
ALTER TABLE `front_cms_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `general_calls`
--
ALTER TABLE `general_calls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `homework`
--
ALTER TABLE `homework`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `homework_evaluation`
--
ALTER TABLE `homework_evaluation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hostel`
--
ALTER TABLE `hostel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hostel_rooms`
--
ALTER TABLE `hostel_rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `id_card`
--
ALTER TABLE `id_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `income`
--
ALTER TABLE `income`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `income_head`
--
ALTER TABLE `income_head`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `item_category`
--
ALTER TABLE `item_category`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `item_issue`
--
ALTER TABLE `item_issue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `item_stock`
--
ALTER TABLE `item_stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `item_store`
--
ALTER TABLE `item_store`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `item_supplier`
--
ALTER TABLE `item_supplier`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `leave_types`
--
ALTER TABLE `leave_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `libarary_members`
--
ALTER TABLE `libarary_members`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=342;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `multi_class_students`
--
ALTER TABLE `multi_class_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification_roles`
--
ALTER TABLE `notification_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification_setting`
--
ALTER TABLE `notification_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `onlineexam`
--
ALTER TABLE `onlineexam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `onlineexam_attempts`
--
ALTER TABLE `onlineexam_attempts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `onlineexam_questions`
--
ALTER TABLE `onlineexam_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `onlineexam_students`
--
ALTER TABLE `onlineexam_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `onlineexam_student_results`
--
ALTER TABLE `onlineexam_student_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `online_admissions`
--
ALTER TABLE `online_admissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `online_admission_fields`
--
ALTER TABLE `online_admission_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `online_admission_payment`
--
ALTER TABLE `online_admission_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_settings`
--
ALTER TABLE `payment_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payslip_allowance`
--
ALTER TABLE `payslip_allowance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permission_category`
--
ALTER TABLE `permission_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `permission_group`
--
ALTER TABLE `permission_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `permission_student`
--
ALTER TABLE `permission_student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `print_headerfooter`
--
ALTER TABLE `print_headerfooter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `question_answers`
--
ALTER TABLE `question_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `question_options`
--
ALTER TABLE `question_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `read_notification`
--
ALTER TABLE `read_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reference`
--
ALTER TABLE `reference`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1497;

--
-- AUTO_INCREMENT for table `room_types`
--
ALTER TABLE `room_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `school_houses`
--
ALTER TABLE `school_houses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `send_notification`
--
ALTER TABLE `send_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `sms_config`
--
ALTER TABLE `sms_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `source`
--
ALTER TABLE `source`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `staff_attendance`
--
ALTER TABLE `staff_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_attendance_type`
--
ALTER TABLE `staff_attendance_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `staff_designation`
--
ALTER TABLE `staff_designation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `staff_id_card`
--
ALTER TABLE `staff_id_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `staff_leave_details`
--
ALTER TABLE `staff_leave_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_leave_request`
--
ALTER TABLE `staff_leave_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_payroll`
--
ALTER TABLE `staff_payroll`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff_payslip`
--
ALTER TABLE `staff_payslip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `staff_rating`
--
ALTER TABLE `staff_rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `staff_roles`
--
ALTER TABLE `staff_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `staff_timeline`
--
ALTER TABLE `staff_timeline`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `student_applyleave`
--
ALTER TABLE `student_applyleave`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_attendences`
--
ALTER TABLE `student_attendences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `student_doc`
--
ALTER TABLE `student_doc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `student_edit_fields`
--
ALTER TABLE `student_edit_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_fees`
--
ALTER TABLE `student_fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_fees_deposite`
--
ALTER TABLE `student_fees_deposite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student_fees_discounts`
--
ALTER TABLE `student_fees_discounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_fees_master`
--
ALTER TABLE `student_fees_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `student_session`
--
ALTER TABLE `student_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `student_sibling`
--
ALTER TABLE `student_sibling`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_subject_attendances`
--
ALTER TABLE `student_subject_attendances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student_timeline`
--
ALTER TABLE `student_timeline`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `subject_groups`
--
ALTER TABLE `subject_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subject_group_class_sections`
--
ALTER TABLE `subject_group_class_sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `subject_group_subjects`
--
ALTER TABLE `subject_group_subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `subject_syllabus`
--
ALTER TABLE `subject_syllabus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subject_timetable`
--
ALTER TABLE `subject_timetable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `submit_assignment`
--
ALTER TABLE `submit_assignment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `teacher_subjects`
--
ALTER TABLE `teacher_subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `template_admitcards`
--
ALTER TABLE `template_admitcards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `template_marksheets`
--
ALTER TABLE `template_marksheets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `timetables`
--
ALTER TABLE `timetables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `topic`
--
ALTER TABLE `topic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transport_route`
--
ALTER TABLE `transport_route`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users_authentication`
--
ALTER TABLE `users_authentication`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vehicle_routes`
--
ALTER TABLE `vehicle_routes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `visitors_book`
--
ALTER TABLE `visitors_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visitors_purpose`
--
ALTER TABLE `visitors_purpose`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `alumni_students`
--
ALTER TABLE `alumni_students`
  ADD CONSTRAINT `alumni_students_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `chat_connections`
--
ALTER TABLE `chat_connections`
  ADD CONSTRAINT `chat_connections_ibfk_1` FOREIGN KEY (`chat_user_one`) REFERENCES `chat_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chat_connections_ibfk_2` FOREIGN KEY (`chat_user_two`) REFERENCES `chat_users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD CONSTRAINT `chat_messages_ibfk_1` FOREIGN KEY (`chat_user_id`) REFERENCES `chat_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chat_messages_ibfk_2` FOREIGN KEY (`chat_connection_id`) REFERENCES `chat_connections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `chat_users`
--
ALTER TABLE `chat_users`
  ADD CONSTRAINT `chat_users_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chat_users_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chat_users_ibfk_3` FOREIGN KEY (`create_staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chat_users_ibfk_4` FOREIGN KEY (`create_student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `content_for`
--
ALTER TABLE `content_for`
  ADD CONSTRAINT `content_for_ibfk_1` FOREIGN KEY (`content_id`) REFERENCES `contents` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `content_for_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `custom_field_values`
--
ALTER TABLE `custom_field_values`
  ADD CONSTRAINT `custom_field_values_ibfk_1` FOREIGN KEY (`custom_field_id`) REFERENCES `custom_fields` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_group_class_batch_exams`
--
ALTER TABLE `exam_group_class_batch_exams`
  ADD CONSTRAINT `exam_group_class_batch_exams_ibfk_1` FOREIGN KEY (`exam_group_id`) REFERENCES `exam_groups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_group_class_batch_exam_students`
--
ALTER TABLE `exam_group_class_batch_exam_students`
  ADD CONSTRAINT `exam_group_class_batch_exam_students_ibfk_1` FOREIGN KEY (`exam_group_class_batch_exam_id`) REFERENCES `exam_group_class_batch_exams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_group_class_batch_exam_students_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_group_class_batch_exam_students_ibfk_3` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_group_class_batch_exam_subjects`
--
ALTER TABLE `exam_group_class_batch_exam_subjects`
  ADD CONSTRAINT `exam_group_class_batch_exam_subjects_ibfk_1` FOREIGN KEY (`exam_group_class_batch_exams_id`) REFERENCES `exam_group_class_batch_exams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_group_class_batch_exam_subjects_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_group_exam_connections`
--
ALTER TABLE `exam_group_exam_connections`
  ADD CONSTRAINT `exam_group_exam_connections_ibfk_1` FOREIGN KEY (`exam_group_id`) REFERENCES `exam_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_group_exam_connections_ibfk_2` FOREIGN KEY (`exam_group_class_batch_exams_id`) REFERENCES `exam_group_class_batch_exams` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_group_exam_results`
--
ALTER TABLE `exam_group_exam_results`
  ADD CONSTRAINT `exam_group_exam_results_ibfk_1` FOREIGN KEY (`exam_group_class_batch_exam_subject_id`) REFERENCES `exam_group_class_batch_exam_subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_group_exam_results_ibfk_2` FOREIGN KEY (`exam_group_student_id`) REFERENCES `exam_group_students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_group_exam_results_ibfk_3` FOREIGN KEY (`exam_group_class_batch_exam_student_id`) REFERENCES `exam_group_class_batch_exam_students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `exam_group_students`
--
ALTER TABLE `exam_group_students`
  ADD CONSTRAINT `exam_group_students_ibfk_1` FOREIGN KEY (`exam_group_id`) REFERENCES `exam_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `exam_group_students_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fees_discounts`
--
ALTER TABLE `fees_discounts`
  ADD CONSTRAINT `fees_discounts_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fee_groups_feetype`
--
ALTER TABLE `fee_groups_feetype`
  ADD CONSTRAINT `fee_groups_feetype_ibfk_1` FOREIGN KEY (`fee_session_group_id`) REFERENCES `fee_session_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fee_groups_feetype_ibfk_2` FOREIGN KEY (`fee_groups_id`) REFERENCES `fee_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fee_groups_feetype_ibfk_3` FOREIGN KEY (`feetype_id`) REFERENCES `feetype` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fee_groups_feetype_ibfk_4` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `fee_session_groups`
--
ALTER TABLE `fee_session_groups`
  ADD CONSTRAINT `fee_session_groups_ibfk_1` FOREIGN KEY (`fee_groups_id`) REFERENCES `fee_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fee_session_groups_ibfk_2` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `front_cms_page_contents`
--
ALTER TABLE `front_cms_page_contents`
  ADD CONSTRAINT `front_cms_page_contents_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `front_cms_pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `front_cms_program_photos`
--
ALTER TABLE `front_cms_program_photos`
  ADD CONSTRAINT `front_cms_program_photos_ibfk_1` FOREIGN KEY (`program_id`) REFERENCES `front_cms_programs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `homework`
--
ALTER TABLE `homework`
  ADD CONSTRAINT `homework_ibfk_1` FOREIGN KEY (`subject_group_subject_id`) REFERENCES `subject_group_subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `item_issue`
--
ALTER TABLE `item_issue`
  ADD CONSTRAINT `item_issue_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_issue_ibfk_2` FOREIGN KEY (`item_category_id`) REFERENCES `item_category` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `item_stock`
--
ALTER TABLE `item_stock`
  ADD CONSTRAINT `item_stock_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_stock_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `item_supplier` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_stock_ibfk_3` FOREIGN KEY (`store_id`) REFERENCES `item_store` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `lesson`
--
ALTER TABLE `lesson`
  ADD CONSTRAINT `lesson_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lesson_ibfk_2` FOREIGN KEY (`subject_group_subject_id`) REFERENCES `subject_group_subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lesson_ibfk_3` FOREIGN KEY (`subject_group_class_sections_id`) REFERENCES `subject_group_class_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `multi_class_students`
--
ALTER TABLE `multi_class_students`
  ADD CONSTRAINT `multi_class_students_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `multi_class_students_ibfk_2` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notification_roles`
--
ALTER TABLE `notification_roles`
  ADD CONSTRAINT `notification_roles_ibfk_1` FOREIGN KEY (`send_notification_id`) REFERENCES `send_notification` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notification_roles_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `onlineexam`
--
ALTER TABLE `onlineexam`
  ADD CONSTRAINT `onlineexam_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `onlineexam_attempts`
--
ALTER TABLE `onlineexam_attempts`
  ADD CONSTRAINT `onlineexam_attempts_ibfk_1` FOREIGN KEY (`onlineexam_student_id`) REFERENCES `onlineexam_students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `onlineexam_questions`
--
ALTER TABLE `onlineexam_questions`
  ADD CONSTRAINT `onlineexam_questions_ibfk_1` FOREIGN KEY (`onlineexam_id`) REFERENCES `onlineexam` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `onlineexam_questions_ibfk_2` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `onlineexam_questions_ibfk_3` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `onlineexam_students`
--
ALTER TABLE `onlineexam_students`
  ADD CONSTRAINT `onlineexam_students_ibfk_1` FOREIGN KEY (`onlineexam_id`) REFERENCES `onlineexam` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `onlineexam_students_ibfk_2` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `onlineexam_student_results`
--
ALTER TABLE `onlineexam_student_results`
  ADD CONSTRAINT `onlineexam_student_results_ibfk_1` FOREIGN KEY (`onlineexam_student_id`) REFERENCES `onlineexam_students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `onlineexam_student_results_ibfk_2` FOREIGN KEY (`onlineexam_question_id`) REFERENCES `onlineexam_questions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `online_admissions`
--
ALTER TABLE `online_admissions`
  ADD CONSTRAINT `online_admissions_ibfk_1` FOREIGN KEY (`class_section_id`) REFERENCES `class_sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `staff_attendance`
--
ALTER TABLE `staff_attendance`
  ADD CONSTRAINT `FK_staff_attendance_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_staff_attendance_staff_attendance_type` FOREIGN KEY (`staff_attendance_type_id`) REFERENCES `staff_attendance_type` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `staff_leave_details`
--
ALTER TABLE `staff_leave_details`
  ADD CONSTRAINT `FK_staff_leave_details_leave_types` FOREIGN KEY (`leave_type_id`) REFERENCES `leave_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_staff_leave_details_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `staff_leave_request`
--
ALTER TABLE `staff_leave_request`
  ADD CONSTRAINT `FK_staff_leave_request_leave_types` FOREIGN KEY (`leave_type_id`) REFERENCES `leave_types` (`id`),
  ADD CONSTRAINT `FK_staff_leave_request_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `staff_payslip`
--
ALTER TABLE `staff_payslip`
  ADD CONSTRAINT `FK_staff_payslip_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `staff_rating`
--
ALTER TABLE `staff_rating`
  ADD CONSTRAINT `FK_staff_rating_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `staff_roles`
--
ALTER TABLE `staff_roles`
  ADD CONSTRAINT `FK_staff_roles_roles` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_staff_roles_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `staff_timeline`
--
ALTER TABLE `staff_timeline`
  ADD CONSTRAINT `FK_staff_timeline_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_session`
--
ALTER TABLE `student_session`
  ADD CONSTRAINT `student_session_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_session_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_session_ibfk_3` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_session_ibfk_4` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `student_subject_attendances`
--
ALTER TABLE `student_subject_attendances`
  ADD CONSTRAINT `student_subject_attendances_ibfk_1` FOREIGN KEY (`attendence_type_id`) REFERENCES `attendence_type` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_subject_attendances_ibfk_2` FOREIGN KEY (`student_session_id`) REFERENCES `student_session` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_subject_attendances_ibfk_3` FOREIGN KEY (`subject_timetable_id`) REFERENCES `subject_timetable` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subject_groups`
--
ALTER TABLE `subject_groups`
  ADD CONSTRAINT `subject_groups_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subject_group_class_sections`
--
ALTER TABLE `subject_group_class_sections`
  ADD CONSTRAINT `subject_group_class_sections_ibfk_1` FOREIGN KEY (`class_section_id`) REFERENCES `class_sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_group_class_sections_ibfk_2` FOREIGN KEY (`subject_group_id`) REFERENCES `subject_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_group_class_sections_ibfk_3` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subject_group_subjects`
--
ALTER TABLE `subject_group_subjects`
  ADD CONSTRAINT `subject_group_subjects_ibfk_1` FOREIGN KEY (`subject_group_id`) REFERENCES `subject_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_group_subjects_ibfk_2` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_group_subjects_ibfk_3` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subject_syllabus`
--
ALTER TABLE `subject_syllabus`
  ADD CONSTRAINT `subject_syllabus_ibfk_1` FOREIGN KEY (`topic_id`) REFERENCES `topic` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_syllabus_ibfk_2` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_syllabus_ibfk_3` FOREIGN KEY (`created_by`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_syllabus_ibfk_4` FOREIGN KEY (`created_for`) REFERENCES `staff` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subject_timetable`
--
ALTER TABLE `subject_timetable`
  ADD CONSTRAINT `subject_timetable_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_timetable_ibfk_2` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_timetable_ibfk_3` FOREIGN KEY (`subject_group_id`) REFERENCES `subject_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_timetable_ibfk_4` FOREIGN KEY (`subject_group_subject_id`) REFERENCES `subject_group_subjects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_timetable_ibfk_5` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `subject_timetable_ibfk_6` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `topic`
--
ALTER TABLE `topic`
  ADD CONSTRAINT `topic_ibfk_1` FOREIGN KEY (`session_id`) REFERENCES `sessions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `topic_ibfk_2` FOREIGN KEY (`lesson_id`) REFERENCES `lesson` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
