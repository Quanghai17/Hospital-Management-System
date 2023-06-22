-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 22, 2023 at 07:53 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `app_id` bigint UNSIGNED NOT NULL,
  `app_sl` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_p_id` bigint UNSIGNED NOT NULL,
  `app_doc_id` bigint UNSIGNED NOT NULL,
  `app_date` date NOT NULL,
  `app_status` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_message` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`app_id`, `app_sl`, `app_p_id`, `app_doc_id`, `app_date`, `app_status`, `app_message`, `created_at`, `updated_at`) VALUES
(1, 'APP0000001', 1, 1, '2023-06-23', 'Pending', 'admin', '2023-06-22 00:36:34', '2023-06-22 00:36:34');

-- --------------------------------------------------------

--
-- Table structure for table `beds`
--

CREATE TABLE `beds` (
  `bed_id` bigint UNSIGNED NOT NULL,
  `bed_name` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bed_category_id` bigint UNSIGNED NOT NULL,
  `bed_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `beds`
--

INSERT INTO `beds` (`bed_id`, `bed_name`, `bed_category_id`, `bed_status`, `created_at`, `updated_at`) VALUES
(3, 'patient rest room', 1, 'Alloted', '2023-06-22 00:46:06', '2023-06-22 00:48:22'),
(4, 'patient rest room', 1, 'Available', '2023-06-22 00:46:06', '2023-06-22 00:46:06'),
(5, 'patient rest room', 1, 'Available', '2023-06-22 00:46:09', '2023-06-22 00:46:09'),
(6, 'patient rest room', 1, 'Available', '2023-06-22 00:46:09', '2023-06-22 00:46:09'),
(7, 'patient rest room', 1, 'Available', '2023-06-22 00:46:09', '2023-06-22 00:46:09'),
(8, 'patient rest room', 1, 'Available', '2023-06-22 00:46:10', '2023-06-22 00:46:10'),
(9, 'patient rest room', 1, 'Available', '2023-06-22 00:46:10', '2023-06-22 00:46:10'),
(10, 'patient rest room', 1, 'Available', '2023-06-22 00:46:10', '2023-06-22 00:46:10'),
(11, 'patient rest room', 1, 'Available', '2023-06-22 00:46:11', '2023-06-22 00:46:11'),
(12, 'patient rest room', 1, 'Available', '2023-06-22 00:46:11', '2023-06-22 00:46:11'),
(13, 'patient rest room', 1, 'Available', '2023-06-22 00:46:11', '2023-06-22 00:46:11'),
(14, 'patient rest room', 1, 'Available', '2023-06-22 00:46:11', '2023-06-22 00:46:11'),
(15, 'patient rest room', 1, 'Available', '2023-06-22 00:46:12', '2023-06-22 00:46:12'),
(16, 'patient rest room', 1, 'Available', '2023-06-22 00:46:13', '2023-06-22 00:46:13'),
(17, 'patient rest room', 1, 'Available', '2023-06-22 00:46:13', '2023-06-22 00:46:13'),
(18, 'patient rest room', 2, 'Available', '2023-06-22 00:46:19', '2023-06-22 00:46:19'),
(19, 'patient rest room', 2, 'Available', '2023-06-22 00:46:19', '2023-06-22 00:46:19'),
(20, 'patient rest room', 2, 'Available', '2023-06-22 00:46:20', '2023-06-22 00:46:20'),
(21, 'patient rest room', 2, 'Available', '2023-06-22 00:46:20', '2023-06-22 00:46:20'),
(22, 'patient rest room', 2, 'Available', '2023-06-22 00:46:20', '2023-06-22 00:46:20'),
(23, 'patient rest room', 2, 'Available', '2023-06-22 00:46:21', '2023-06-22 00:46:21'),
(24, 'patient rest room', 2, 'Available', '2023-06-22 00:46:21', '2023-06-22 00:46:21'),
(25, 'patient rest room', 2, 'Available', '2023-06-22 00:46:21', '2023-06-22 00:46:21'),
(26, 'patient rest room', 2, 'Available', '2023-06-22 00:46:21', '2023-06-22 00:46:21'),
(27, 'patient rest room', 2, 'Available', '2023-06-22 00:46:22', '2023-06-22 00:46:22'),
(28, 'patient rest room', 2, 'Available', '2023-06-22 00:46:22', '2023-06-22 00:46:22'),
(29, 'patient rest room', 2, 'Available', '2023-06-22 00:46:22', '2023-06-22 00:46:22'),
(30, 'patient rest room', 2, 'Available', '2023-06-22 00:46:23', '2023-06-22 00:46:23'),
(31, 'patient rest room', 2, 'Available', '2023-06-22 00:46:23', '2023-06-22 00:46:23'),
(32, 'patient rest room', 2, 'Available', '2023-06-22 00:46:23', '2023-06-22 00:46:23'),
(33, 'patient rest room', 2, 'Available', '2023-06-22 00:46:23', '2023-06-22 00:46:23'),
(34, 'patient rest room', 2, 'Available', '2023-06-22 00:46:24', '2023-06-22 00:46:24'),
(35, 'patient rest room', 2, 'Available', '2023-06-22 00:46:24', '2023-06-22 00:46:24'),
(36, 'patient rest room', 2, 'Available', '2023-06-22 00:46:24', '2023-06-22 00:46:24'),
(37, 'patient rest room', 2, 'Available', '2023-06-22 00:46:25', '2023-06-22 00:46:25'),
(38, 'patient rest room', 2, 'Available', '2023-06-22 00:46:25', '2023-06-22 00:46:25'),
(39, 'patient rest room', 2, 'Available', '2023-06-22 00:46:30', '2023-06-22 00:46:30'),
(40, 'patient rest room', 2, 'Available', '2023-06-22 00:46:30', '2023-06-22 00:46:30'),
(41, 'patient rest room', 2, 'Available', '2023-06-22 00:46:31', '2023-06-22 00:46:31'),
(42, 'patient rest room', 2, 'Available', '2023-06-22 00:46:31', '2023-06-22 00:46:31'),
(43, 'patient rest room', 2, 'Available', '2023-06-22 00:46:31', '2023-06-22 00:46:31'),
(44, 'patient rest room', 2, 'Available', '2023-06-22 00:46:32', '2023-06-22 00:46:32'),
(45, 'patient rest room', 2, 'Available', '2023-06-22 00:46:32', '2023-06-22 00:46:32'),
(46, 'patient rest room', 2, 'Available', '2023-06-22 00:46:32', '2023-06-22 00:46:32'),
(47, 'patient rest room', 2, 'Available', '2023-06-22 00:46:33', '2023-06-22 00:46:33');

-- --------------------------------------------------------

--
-- Table structure for table `bed_categories`
--

CREATE TABLE `bed_categories` (
  `bed_category_id` bigint UNSIGNED NOT NULL,
  `bed_category_name` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bed_category_details` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bed_category_floor_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bed_categories`
--

INSERT INTO `bed_categories` (`bed_category_id`, `bed_category_name`, `bed_category_details`, `bed_category_floor_id`, `created_at`, `updated_at`) VALUES
(1, 'room vip', 'room vip', 1, '2023-06-22 00:45:19', '2023-06-22 00:45:19'),
(2, 'room vip 2', 'room vip 2', 2, '2023-06-22 00:45:33', '2023-06-22 00:45:33');

-- --------------------------------------------------------

--
-- Table structure for table `blood_banks`
--

CREATE TABLE `blood_banks` (
  `blood_bag_id` bigint UNSIGNED NOT NULL,
  `blood_bag_name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blood_bag_quantity` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cases`
--

CREATE TABLE `cases` (
  `case_id` bigint UNSIGNED NOT NULL,
  `case_p_id` bigint UNSIGNED NOT NULL,
  `case_details` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `case_file` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `case_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `dept_id` bigint UNSIGNED NOT NULL,
  `dept_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dept_details` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`dept_id`, `dept_name`, `dept_details`, `created_at`, `updated_at`) VALUES
(1, 'Department Vip', 'Vip 1', '2023-06-22 00:32:10', '2023-06-22 00:32:10');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `doc_id` bigint UNSIGNED NOT NULL,
  `doc_name` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doc_phone` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doc_address` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doc_email` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doc_password` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doc_profile` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doc_img` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `doc_dept_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`doc_id`, `doc_name`, `doc_phone`, `doc_address`, `doc_email`, `doc_password`, `doc_profile`, `doc_img`, `doc_dept_id`, `created_at`, `updated_at`) VALUES
(1, 'Nguyen Quang hai', '0359808267', 'Thái Nguyên', 'admin@admin.com', '$2y$10$nKWqU2u5e/KDFUFKjTfxbe1RSrFOm89khdsjDMBx7nDTmjyjcboCi', 'a', 'images\\doctor_1687419173.png', 1, '2023-06-22 00:32:53', '2023-06-22 00:32:53');

-- --------------------------------------------------------

--
-- Table structure for table `donor_lists`
--

CREATE TABLE `donor_lists` (
  `donor_id` bigint UNSIGNED NOT NULL,
  `donor_name` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `donor_blood` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `donor_age` int NOT NULL,
  `donor_sex` tinyint NOT NULL,
  `donor_last_date` date NOT NULL,
  `donor_phone` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `donor_email` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `emp_id` bigint UNSIGNED NOT NULL,
  `emp_name` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_phone` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_address` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_sex` int NOT NULL,
  `emp_email` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_password` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_img` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emp_role_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_roles`
--

CREATE TABLE `employee_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `role_name` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_details` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_roles`
--

INSERT INTO `employee_roles` (`role_id`, `role_name`, `role_details`, `created_at`, `updated_at`) VALUES
(1, 'Read', 'Read', '2023-06-22 00:36:57', '2023-06-22 00:36:57');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `exp_id` bigint UNSIGNED NOT NULL,
  `exp_date` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exp_cat_id` bigint UNSIGNED NOT NULL,
  `exp_amount` int NOT NULL,
  `exp_details` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `exp_cat_id` bigint UNSIGNED NOT NULL,
  `exp_cat_name` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exp_cat_description` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `floors`
--

CREATE TABLE `floors` (
  `floor_id` bigint UNSIGNED NOT NULL,
  `floor_name` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `floor_description` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `floors`
--

INSERT INTO `floors` (`floor_id`, `floor_name`, `floor_description`, `created_at`, `updated_at`) VALUES
(1, '1st floor', '1st floor', '2023-06-22 00:44:41', '2023-06-22 00:44:41'),
(2, '2nd Floor', '2nd Floor', '2023-06-22 00:44:53', '2023-06-22 00:44:53'),
(3, 'floor 3', 'floor 3', '2023-06-22 00:45:03', '2023-06-22 00:45:03');

-- --------------------------------------------------------

--
-- Table structure for table `in_patients`
--

CREATE TABLE `in_patients` (
  `in_p_id` bigint UNSIGNED NOT NULL,
  `in_p_s` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_p_name` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_p_sex` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_p_age` int NOT NULL,
  `in_p_phone` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_p_guardian_name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_p_guardian_phone` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_p_blood` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_p_height` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_p_weight` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_p_bp` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_p_symptoms` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_p_address` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_p_admission_date` datetime NOT NULL,
  `in_p_case` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_p_casualty` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_p_old_patient` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_p_reference` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_p_doc_id` bigint UNSIGNED NOT NULL,
  `in_p_bed_category_id` bigint UNSIGNED NOT NULL,
  `in_p_bed_id` bigint UNSIGNED NOT NULL,
  `in_p_note` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `in_patients`
--

INSERT INTO `in_patients` (`in_p_id`, `in_p_s`, `in_p_name`, `in_p_sex`, `in_p_age`, `in_p_phone`, `in_p_guardian_name`, `in_p_guardian_phone`, `in_p_blood`, `in_p_height`, `in_p_weight`, `in_p_bp`, `in_p_symptoms`, `in_p_address`, `in_p_admission_date`, `in_p_case`, `in_p_casualty`, `in_p_old_patient`, `in_p_reference`, `in_p_doc_id`, `in_p_bed_category_id`, `in_p_bed_id`, `in_p_note`, `created_at`, `updated_at`) VALUES
(28, 'INPAT00028', 'Nguyen Anh Tu', 'Male', 22, '2453465657', 'NT Kieu', '05676767', 'A+', '167', '50', 'a', 'a', 'bg', '2023-06-22 12:00:00', 'a', 'yes', 'yes', 'a', 1, 1, 3, 'no', '2023-06-22 00:48:22', '2023-06-22 00:48:22');

-- --------------------------------------------------------

--
-- Table structure for table `lab_reports`
--

CREATE TABLE `lab_reports` (
  `lab_id` bigint UNSIGNED NOT NULL,
  `lab_p_id` bigint UNSIGNED NOT NULL,
  `lab_doc_id` bigint UNSIGNED NOT NULL,
  `lab_date` date NOT NULL,
  `lab_file` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE `medicines` (
  `med_id` bigint UNSIGNED NOT NULL,
  `med_name` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `med_cat_id` bigint UNSIGNED NOT NULL,
  `med_purchase_price` int NOT NULL,
  `med_sales_price` int NOT NULL,
  `med_store_box` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `med_quantity` int NOT NULL,
  `med_generic_name` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `med_company` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `med_expire_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `medicine_categories`
--

CREATE TABLE `medicine_categories` (
  `med_cat_id` bigint UNSIGNED NOT NULL,
  `med_cat_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `med_cat_details` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_03_20_180057_create_departments_table', 1),
(5, '2020_03_20_184100_create_doctors_table', 1),
(6, '2020_03_20_192104_create_services_table', 1),
(7, '2020_03_20_193859_create_expense__categories_table', 1),
(8, '2020_03_20_194643_create_expenses_table', 1),
(9, '2020_03_20_195530_create_out_patients_table', 1),
(10, '2020_03_20_195533_create_prescriptions_table', 1),
(11, '2020_03_21_125207_create_lab_reports_table', 1),
(12, '2020_03_21_125816_create_medicine_categories_table', 1),
(13, '2020_03_21_130716_create_donor_lists_table', 1),
(14, '2020_03_21_133948_create_blood_banks_table', 1),
(15, '2020_03_21_182559_create_cases_table', 1),
(16, '2020_03_21_182737_create_patient_expenses_table', 1),
(17, '2020_03_22_145901_create_medicines_table', 1),
(18, '2020_03_22_145945_create_prescription_medicines_table', 1),
(19, '2020_03_24_162342_create_employee_roles_table', 1),
(20, '2020_03_24_162344_create_employees_table', 1),
(21, '2020_04_29_192700_create_appointments_table', 1),
(22, '2020_05_04_192621_create_floors_table', 1),
(23, '2020_05_05_051942_create_bed_categories_table', 1),
(24, '2020_05_11_053846_bed', 1),
(25, '2020_05_12_082951_in_patient', 1);

-- --------------------------------------------------------

--
-- Table structure for table `out_patients`
--

CREATE TABLE `out_patients` (
  `out_p_id` bigint UNSIGNED NOT NULL,
  `out_p_s` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `out_p_name` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `out_p_sex` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `out_p_age` int NOT NULL,
  `out_p_phone` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `out_p_blood` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `out_p_height` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `out_p_weight` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `out_p_bp` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `out_p_symptoms` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `out_p_address` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `out_patients`
--

INSERT INTO `out_patients` (`out_p_id`, `out_p_s`, `out_p_name`, `out_p_sex`, `out_p_age`, `out_p_phone`, `out_p_blood`, `out_p_height`, `out_p_weight`, `out_p_bp`, `out_p_symptoms`, `out_p_address`, `created_at`, `updated_at`) VALUES
(1, 'OUTPAT0001', 'Nguyen Quang Linh', 'Female', 22, '099323525', 'A+', '170', '50', '2', 'oil', 'BG', '2023-06-22 00:34:09', '2023-06-22 00:34:09');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patient_expenses`
--

CREATE TABLE `patient_expenses` (
  `p_exp_id` bigint UNSIGNED NOT NULL,
  `p_service_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prescriptions`
--

CREATE TABLE `prescriptions` (
  `prescription_id` bigint UNSIGNED NOT NULL,
  `prescription_code` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prescription_p_id` bigint UNSIGNED NOT NULL,
  `prescription_doc_id` bigint UNSIGNED NOT NULL,
  `prescription_history` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prescription_note` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prescription_date` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prescription_medicines`
--

CREATE TABLE `prescription_medicines` (
  `prescription_m_id` bigint UNSIGNED NOT NULL,
  `prescription_id` bigint UNSIGNED NOT NULL,
  `prescription_medicine_id` bigint UNSIGNED NOT NULL,
  `prescription_med_dosage` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prescription_med_frequency` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prescription_med_days` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prescription_med_ins` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` bigint UNSIGNED NOT NULL,
  `service_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_price` int NOT NULL,
  `service_description` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_commission_rate` int NOT NULL,
  `service_category` varchar(110) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nguyen Van A', 'admin@admin.com', '2023-06-22 07:03:47', '$2y$10$exPMk33MCCwzUDqUDUnYSuvbpdcVn53iqwR9INdznI71ySvwYiDTe', NULL, NULL, NULL),
(2, 'Nguyen Quang Hai', 'superadmin@admin.com', NULL, '$2y$10$RAzTP74YLflAzhF2IEnhUODrtNsgUwNks72Zl89GIrxSw739bECw6', NULL, '2023-06-22 00:20:58', '2023-06-22 00:20:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`app_id`),
  ADD KEY `appointments_app_p_id_foreign` (`app_p_id`),
  ADD KEY `appointments_app_doc_id_foreign` (`app_doc_id`);

--
-- Indexes for table `beds`
--
ALTER TABLE `beds`
  ADD PRIMARY KEY (`bed_id`),
  ADD KEY `beds_bed_category_id_foreign` (`bed_category_id`);

--
-- Indexes for table `bed_categories`
--
ALTER TABLE `bed_categories`
  ADD PRIMARY KEY (`bed_category_id`),
  ADD KEY `bed_categories_bed_category_floor_id_foreign` (`bed_category_floor_id`);

--
-- Indexes for table `blood_banks`
--
ALTER TABLE `blood_banks`
  ADD PRIMARY KEY (`blood_bag_id`);

--
-- Indexes for table `cases`
--
ALTER TABLE `cases`
  ADD PRIMARY KEY (`case_id`),
  ADD KEY `cases_case_p_id_foreign` (`case_p_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`doc_id`),
  ADD KEY `doctors_doc_dept_id_foreign` (`doc_dept_id`);

--
-- Indexes for table `donor_lists`
--
ALTER TABLE `donor_lists`
  ADD PRIMARY KEY (`donor_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`emp_id`),
  ADD KEY `employees_emp_role_id_foreign` (`emp_role_id`);

--
-- Indexes for table `employee_roles`
--
ALTER TABLE `employee_roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`exp_id`),
  ADD KEY `expenses_exp_cat_id_foreign` (`exp_cat_id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`exp_cat_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `floors`
--
ALTER TABLE `floors`
  ADD PRIMARY KEY (`floor_id`);

--
-- Indexes for table `in_patients`
--
ALTER TABLE `in_patients`
  ADD PRIMARY KEY (`in_p_id`),
  ADD KEY `in_patients_in_p_doc_id_foreign` (`in_p_doc_id`),
  ADD KEY `in_patients_in_p_bed_category_id_foreign` (`in_p_bed_category_id`),
  ADD KEY `in_patients_in_p_bed_id_foreign` (`in_p_bed_id`);

--
-- Indexes for table `lab_reports`
--
ALTER TABLE `lab_reports`
  ADD PRIMARY KEY (`lab_id`),
  ADD KEY `lab_reports_lab_p_id_foreign` (`lab_p_id`),
  ADD KEY `lab_reports_lab_doc_id_foreign` (`lab_doc_id`);

--
-- Indexes for table `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`med_id`),
  ADD KEY `medicines_med_cat_id_foreign` (`med_cat_id`);

--
-- Indexes for table `medicine_categories`
--
ALTER TABLE `medicine_categories`
  ADD PRIMARY KEY (`med_cat_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `out_patients`
--
ALTER TABLE `out_patients`
  ADD PRIMARY KEY (`out_p_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `patient_expenses`
--
ALTER TABLE `patient_expenses`
  ADD PRIMARY KEY (`p_exp_id`),
  ADD KEY `patient_expenses_p_service_id_foreign` (`p_service_id`);

--
-- Indexes for table `prescriptions`
--
ALTER TABLE `prescriptions`
  ADD PRIMARY KEY (`prescription_id`),
  ADD KEY `prescriptions_prescription_p_id_foreign` (`prescription_p_id`),
  ADD KEY `prescriptions_prescription_doc_id_foreign` (`prescription_doc_id`);

--
-- Indexes for table `prescription_medicines`
--
ALTER TABLE `prescription_medicines`
  ADD PRIMARY KEY (`prescription_m_id`),
  ADD KEY `prescription_medicines_prescription_id_foreign` (`prescription_id`),
  ADD KEY `prescription_medicines_prescription_medicine_id_foreign` (`prescription_medicine_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `app_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `beds`
--
ALTER TABLE `beds`
  MODIFY `bed_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `bed_categories`
--
ALTER TABLE `bed_categories`
  MODIFY `bed_category_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blood_banks`
--
ALTER TABLE `blood_banks`
  MODIFY `blood_bag_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cases`
--
ALTER TABLE `cases`
  MODIFY `case_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `dept_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `doc_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `donor_lists`
--
ALTER TABLE `donor_lists`
  MODIFY `donor_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `emp_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_roles`
--
ALTER TABLE `employee_roles`
  MODIFY `role_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `exp_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `exp_cat_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `floors`
--
ALTER TABLE `floors`
  MODIFY `floor_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `in_patients`
--
ALTER TABLE `in_patients`
  MODIFY `in_p_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `lab_reports`
--
ALTER TABLE `lab_reports`
  MODIFY `lab_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medicines`
--
ALTER TABLE `medicines`
  MODIFY `med_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medicine_categories`
--
ALTER TABLE `medicine_categories`
  MODIFY `med_cat_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `out_patients`
--
ALTER TABLE `out_patients`
  MODIFY `out_p_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `patient_expenses`
--
ALTER TABLE `patient_expenses`
  MODIFY `p_exp_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prescriptions`
--
ALTER TABLE `prescriptions`
  MODIFY `prescription_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prescription_medicines`
--
ALTER TABLE `prescription_medicines`
  MODIFY `prescription_m_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_app_doc_id_foreign` FOREIGN KEY (`app_doc_id`) REFERENCES `doctors` (`doc_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `appointments_app_p_id_foreign` FOREIGN KEY (`app_p_id`) REFERENCES `out_patients` (`out_p_id`) ON DELETE CASCADE;

--
-- Constraints for table `beds`
--
ALTER TABLE `beds`
  ADD CONSTRAINT `beds_bed_category_id_foreign` FOREIGN KEY (`bed_category_id`) REFERENCES `bed_categories` (`bed_category_id`) ON DELETE CASCADE;

--
-- Constraints for table `bed_categories`
--
ALTER TABLE `bed_categories`
  ADD CONSTRAINT `bed_categories_bed_category_floor_id_foreign` FOREIGN KEY (`bed_category_floor_id`) REFERENCES `floors` (`floor_id`) ON DELETE CASCADE;

--
-- Constraints for table `cases`
--
ALTER TABLE `cases`
  ADD CONSTRAINT `cases_case_p_id_foreign` FOREIGN KEY (`case_p_id`) REFERENCES `out_patients` (`out_p_id`) ON DELETE CASCADE;

--
-- Constraints for table `doctors`
--
ALTER TABLE `doctors`
  ADD CONSTRAINT `doctors_doc_dept_id_foreign` FOREIGN KEY (`doc_dept_id`) REFERENCES `departments` (`dept_id`) ON DELETE CASCADE;

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_emp_role_id_foreign` FOREIGN KEY (`emp_role_id`) REFERENCES `employee_roles` (`role_id`) ON DELETE CASCADE;

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_exp_cat_id_foreign` FOREIGN KEY (`exp_cat_id`) REFERENCES `expense_categories` (`exp_cat_id`) ON DELETE CASCADE;

--
-- Constraints for table `in_patients`
--
ALTER TABLE `in_patients`
  ADD CONSTRAINT `in_patients_in_p_bed_category_id_foreign` FOREIGN KEY (`in_p_bed_category_id`) REFERENCES `bed_categories` (`bed_category_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `in_patients_in_p_bed_id_foreign` FOREIGN KEY (`in_p_bed_id`) REFERENCES `beds` (`bed_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `in_patients_in_p_doc_id_foreign` FOREIGN KEY (`in_p_doc_id`) REFERENCES `doctors` (`doc_id`) ON DELETE CASCADE;

--
-- Constraints for table `lab_reports`
--
ALTER TABLE `lab_reports`
  ADD CONSTRAINT `lab_reports_lab_doc_id_foreign` FOREIGN KEY (`lab_doc_id`) REFERENCES `doctors` (`doc_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `lab_reports_lab_p_id_foreign` FOREIGN KEY (`lab_p_id`) REFERENCES `out_patients` (`out_p_id`) ON DELETE CASCADE;

--
-- Constraints for table `medicines`
--
ALTER TABLE `medicines`
  ADD CONSTRAINT `medicines_med_cat_id_foreign` FOREIGN KEY (`med_cat_id`) REFERENCES `medicine_categories` (`med_cat_id`) ON DELETE CASCADE;

--
-- Constraints for table `patient_expenses`
--
ALTER TABLE `patient_expenses`
  ADD CONSTRAINT `patient_expenses_p_service_id_foreign` FOREIGN KEY (`p_service_id`) REFERENCES `services` (`service_id`) ON DELETE CASCADE;

--
-- Constraints for table `prescriptions`
--
ALTER TABLE `prescriptions`
  ADD CONSTRAINT `prescriptions_prescription_doc_id_foreign` FOREIGN KEY (`prescription_doc_id`) REFERENCES `doctors` (`doc_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `prescriptions_prescription_p_id_foreign` FOREIGN KEY (`prescription_p_id`) REFERENCES `out_patients` (`out_p_id`) ON DELETE CASCADE;

--
-- Constraints for table `prescription_medicines`
--
ALTER TABLE `prescription_medicines`
  ADD CONSTRAINT `prescription_medicines_prescription_id_foreign` FOREIGN KEY (`prescription_id`) REFERENCES `prescriptions` (`prescription_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `prescription_medicines_prescription_medicine_id_foreign` FOREIGN KEY (`prescription_medicine_id`) REFERENCES `medicines` (`med_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
