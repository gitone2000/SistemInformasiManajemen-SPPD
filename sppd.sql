-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 20, 2023 at 05:00 PM
-- Server version: 10.5.20-MariaDB-cll-lve
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u1342798_puskesmas_gondosari`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Umum', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Perjalanan Dalam Daerah Kurang dari 8 (Delapan) Jam', NULL, '2023-05-03 20:09:46'),
(2, 'Perjalanan lebih dari sama dengan 8 (Delapan) Jam', '2023-04-12 18:41:26', '2023-04-12 18:41:45');

-- --------------------------------------------------------

--
-- Table structure for table `charges`
--

CREATE TABLE `charges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `charges`
--

INSERT INTO `charges` (`id`, `name`, `created_at`, `updated_at`) VALUES
(3, 'Uang Transport', '2023-04-12 19:44:28', '2023-04-12 19:44:28');

-- --------------------------------------------------------

--
-- Table structure for table `destinations`
--

CREATE TABLE `destinations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `destinations`
--

INSERT INTO `destinations` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Desa Gondosari', '2023-04-02 01:12:18', '2023-04-02 01:12:18'),
(2, 'Desa Ploso', '2023-04-02 01:12:18', '2023-04-02 01:12:18'),
(3, 'Desa Tinatar', '2023-04-02 01:12:18', '2023-04-02 01:12:18'),
(4, 'Desa Kebonsari', '2023-04-02 01:12:18', '2023-04-02 01:12:18'),
(5, 'SDN Gondosari I', '2023-04-02 01:12:18', '2023-04-02 01:12:18'),
(6, 'SDN Gondosari II', '2023-04-02 01:12:18', '2023-04-02 01:12:18'),
(7, 'SDN Gondosari III', '2023-04-02 01:12:18', '2023-04-02 01:12:18'),
(8, 'MI GUPPI', '2023-04-02 01:12:18', '2023-04-02 01:12:18'),
(9, 'SDN Kebonsari', '2023-04-02 01:12:18', '2023-04-02 01:12:18'),
(10, 'SDN Tinatar I', '2023-04-02 01:12:18', '2023-04-02 01:12:18'),
(11, 'SDN Tinatar II', '2023-04-02 01:12:18', '2023-04-02 01:12:18'),
(12, 'SDN Tinatar III', '2023-04-02 01:12:18', '2023-04-02 01:12:18'),
(13, 'SMP 2 Punung', '2023-04-02 01:12:18', '2023-04-02 01:12:18'),
(14, 'SMP 3 Punung', '2023-04-02 01:12:18', '2023-04-02 01:12:18'),
(15, 'MTS Ploso', '2023-04-02 01:12:18', '2023-04-02 01:12:18'),
(16, 'MA Ploso', '2023-04-02 01:12:18', '2023-04-02 01:12:18'),
(17, 'MTS Tinatar', '2023-04-02 01:12:18', '2023-04-02 01:12:18'),
(18, 'SMK Tinatar', '2023-04-02 01:12:18', '2023-04-02 01:12:18'),
(19, 'Dinas Kesehatan Kabupaten Pacitan', '2023-04-02 01:12:18', '2023-04-02 01:12:18'),
(20, 'SDN Ploso I', '2023-04-02 01:12:18', '2023-04-02 01:12:18'),
(21, 'SDN Ploso II', '2023-04-02 01:12:18', '2023-04-02 01:12:18'),
(22, 'SDN Ploso III', '2023-04-02 01:12:18', '2023-04-02 01:12:18'),
(23, 'SDN Ploso IV', '2023-04-02 01:12:18', '2023-04-02 01:12:18'),
(24, 'MIM Ploso', '2023-04-02 01:12:18', '2023-04-02 01:12:18'),
(25, 'TK Wiyata Putra Tinatar I', '2023-04-02 01:12:18', '2023-04-02 01:12:18'),
(26, 'TK Wiyata Putra Tinatar II', '2023-04-02 01:12:18', '2023-04-02 01:12:18'),
(27, 'TK Wiyata Putra Tinatar III', '2023-04-02 01:12:18', '2023-04-02 01:12:18'),
(28, 'TK Tunas Bahagia Kebonsari I', '2023-04-02 01:12:18', '2023-04-02 01:12:18'),
(29, 'TK Nurul Iman Ploso II', '2023-04-02 01:12:18', '2023-04-02 01:12:18'),
(30, 'TK Nurul Iman Ploso III', '2023-04-02 01:12:18', '2023-04-02 01:12:18'),
(31, 'TK Harapan Bangsa Gondosari', '2023-04-02 01:12:18', '2023-04-02 01:12:18'),
(32, 'TK Tunas Bangsa Ploso', '2023-04-02 01:12:18', '2023-04-02 01:12:18'),
(33, 'TK Putra Mandiri Gondoari I', '2023-04-02 01:12:18', '2023-04-02 01:12:18'),
(34, 'TK Putra Mandiri Gondoari II', '2023-04-02 01:12:18', '2023-04-02 01:12:18'),
(35, 'TK Utama Putra Gondosari', '2023-04-02 01:12:18', '2023-04-02 01:12:18'),
(36, 'BBTKLPP Yogyakarta', '2023-04-02 01:12:18', '2023-04-02 01:12:18'),
(37, 'RSUD dr. Darsono Pacitan ', '2023-04-02 01:12:18', '2023-04-02 01:12:18'),
(38, 'RSUD dr. Soediran Mangun Sumarso Wonogiri ', '2023-04-02 01:12:18', '2023-04-02 01:12:18'),
(39, 'RSJD Jiwa Daerah Surakarta dr. Arif Zainudin', '2023-04-02 01:12:18', '2023-04-02 01:12:18'),
(40, 'RSU Maguan Husada', '2023-04-02 01:12:18', '2023-04-02 01:12:18'),
(41, 'RS Hermina Wonogiri', '2023-04-02 01:12:18', '2023-04-02 01:12:18'),
(42, 'RSU Fitri Candra Wonogiri', '2023-04-02 01:12:18', '2023-04-02 01:12:18'),
(43, 'RSU Astrini', '2023-04-02 01:12:18', '2023-04-02 01:12:18'),
(44, 'RSJ dr. Radjiman Wediodiningrrat Lawang', '2023-04-02 01:12:18', '2023-04-02 01:12:18'),
(45, 'RSB Nur Anisa', '2023-04-02 01:12:18', '2023-04-02 01:12:18'),
(46, 'Puskesmas Gondosari', '2023-04-12 20:03:53', '2023-04-12 20:03:53');

-- --------------------------------------------------------

--
-- Table structure for table `employes`
--

CREATE TABLE `employes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `nip` varchar(255) NOT NULL,
  `pangkat` varchar(255) NOT NULL,
  `gol` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `uharian` bigint(20) NOT NULL,
  `umakan` bigint(20) NOT NULL,
  `utransport` bigint(20) NOT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employes`
--

INSERT INTO `employes` (`id`, `name`, `nip`, `pangkat`, `gol`, `jabatan`, `uharian`, `umakan`, `utransport`, `status`, `created_at`, `updated_at`) VALUES
(2, 'AGUS ZAENAL FANANI,SE', '19681119 199102 1 003', 'Penata Tk.I', '(III/d)', 'PenanggungJawab Ketatausahaan', 0, 0, 60000, 1, '0000-00-00 00:00:00', '2023-04-12 18:33:29'),
(3, 'SAIFUDIN AZIS, S.Kep.Ns', '19670712 199403 1 016', 'Penata Tk.I', '(III/d)', 'Perawat Puskesmas Gondosari', 0, 0, 60000, 1, '0000-00-00 00:00:00', '2023-04-12 20:57:44'),
(4, 'SUNARYATI,A.Md.Keb', '19690505 199001 2 001', 'Penata Tk.I', '(III/d)', 'Bidan Puskesmas Gondosari', 0, 0, 60000, 1, '0000-00-00 00:00:00', '2023-04-12 18:33:49'),
(5, 'RETNO SOEPENI,S.ST', '19700312 199001 2 001', 'Penata Tk.I', '(III/d)', 'Bidan Puskesmas Gondosari', 0, 0, 60000, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'PURWITANINGSIH, A.Md.TKG', '19730406 199503 2 005', 'Penata Tk.I', '(III/d)', 'Perawat Gigi Puskesmas Gondosari', 0, 0, 60000, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'TRI UTAMI, SKM', '19790305 200501 2 015', 'Penata', '(III/c)', 'Bidan Puskesmas Gondosari', 0, 0, 60000, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'SULISTYONING RAHAYU, SKM', '19780909 200604 2 035', 'Penata', '(III/c)', 'Bidan Puskesmas Gondosari', 0, 0, 60000, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'PURWATI, AMK', '19790617 200801 2 023', 'Penata', '(III/c)', 'Perawat Puskesmas Gondosari', 0, 0, 60000, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'ESTY WAHYUNINGSIH, A.Md.Keb', '19740622 200903 2 003', 'Penata', '(III/c)', 'Bidan Puskesmas Gondosari', 0, 0, 60000, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'MURTINA SRI PRIHATI, SKM', '19830728 200903 2 005', 'Penata Tk.I', '(III/d)', 'Penyuluh Kesehatan Puskesmas Gondosari', 0, 0, 60000, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'RINI DIANINGSIH, A.Md.Farm', '19830818 201001 2 030', 'Penata Muda Tk.I', '(III/b)', 'Asisten Apoteker Puskesmas Gondosari', 0, 0, 60000, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'HERI SETIYAWAN, AMKL', '19831015 201001 1 023', 'Penata Muda Tk.I', '(III/b)', 'Kesehatan Lingkungan Puskesmas Gondosari', 0, 0, 60000, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'apt. SAKTIA HARINI, S.Farm', '19871001 202203 2 003', 'Penata Muda', '(III/a)', 'Apoteker Puskesmas Gondosari', 0, 0, 60000, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'HENI NUR HASTUTI .A.Md.Keb', '19770803 200801 2 008', 'Penata Muda', '(III/a)', 'Bidan Puskesmas Gondosari', 0, 0, 60000, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'ANDRI RAHMAD SUDIARMANTO.A.Md.Gz', '19780723 201001 1 011', 'Pengatur Tk.I', '(II/d)', 'Nutrisionis Puskesmas Gondosari', 0, 0, 60000, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'AAN WAHYUDI,SKM', '19920225 202203 1 001', 'Penata Muda', '(III/a)', 'Epidemiologi Puskesmas Gondosari', 0, 0, 60000, 1, '0000-00-00 00:00:00', '2023-04-12 20:13:52'),
(18, 'JEFY RISMA,SKM', '19940603 202203 2 005', 'Penata Muda', '(III/a)', 'Penyuluh Kesehatan Puskesmas Gondosari', 0, 0, 60000, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'SUGIARTI', '19710712 200701 2 017', 'Penata Muda', '(III/a)', 'Staff Puskesmas Gondosari', 0, 0, 60000, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'LULUD CAHYO NUGROHO', '19740405 200701 1 021', 'Penata Muda', '(III/a)', 'Staff Puskesmas Gondosari', 0, 0, 60000, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'YUYUN INJAWATI,AMd.Keb.', '19840318 201704 2 007', 'Pengatur Tk.I', '(II/d)', 'Bidan Puskesmas Gondosari', 0, 0, 60000, 1, '0000-00-00 00:00:00', '2023-04-12 20:23:33'),
(22, 'RUSMIATI', '19690823 200701 2 016', 'Pengatur Tk.I', '(II/d)', 'Staff Puskesmas Gondosari', 0, 0, 60000, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'SITI NUR HASANAH, A.Md.Kep', '19880927 202012 2 009', 'Pengatur', '(II/c)', 'Perawat Puskesmas Gondosari', 0, 0, 60000, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'LUKY IRIYAWAN,A.Md.Kep', '19921023 202203 1 001', 'Pengatur', '(II/c)', 'Perawat Puskesmas Gondosari', 0, 0, 60000, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'RENI OTAFIANI,A.Md.Kes', '19961024 202203 2 006', 'Pengatur', '(II/c)', 'Perekam Medis Puskesmas Gondosari', 0, 0, 60000, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 'DWI NUR LISTANI,A.Md.Kep', '19890602 202203 2 002', 'Pengatur', '(II/c)', 'Perawat Puskesmas Gondosari', 0, 0, 60000, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 'FAJAR NURSARI,A.Md.Keb', '19941208 202203 2 003', 'Pengatur', '(II/c)', 'Bidan Puskesmas Gondosari', 0, 0, 60000, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 'AMBAR PRATIWI,A.Md.Kep', '19930527 202203 2 005', 'Pengatur', '(II/c)', 'Perawat Puskesmas Gondosari', 0, 0, 60000, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 'OKY SETYANING RINANTI,AMG', '19931016 202003 2 007', 'Pengatur', '(II/c)', 'Nutrisionis Puskesmas Gondosari', 0, 0, 60000, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 'DENA ARLENIA,A.Md.Kep', '19981226 202203 2 003', 'Pengatur', '(II/c)', 'Perawat Puskesmas Gondosari', 0, 0, 60000, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 'DWI FEBRILIANA,A.Md.Kep', '19970215 202203 2 006', 'Pengatur', '(II/c)', 'Perawat Puskesmas Gondosari', 0, 0, 60000, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 'ERLIN IFADAH,A.Md.Keb', '19971004 202203 2 006', 'Pengatur ', '(II/c)', 'Bidan Puskesmas Gondosari', 0, 0, 60000, 1, '0000-00-00 00:00:00', '2023-04-12 20:13:59'),
(33, 'MIKA KRISNAWATI,A.Md.AK', '19920131 202203 2 003', 'Pengatur', '(II/c)', 'Analis Puskesmas Gondosari', 0, 0, 60000, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 'drg. DWI AYU TRISNAWATI', ' -', ' -', '', 'Dokter Gigi Puskesmas Gondosari', 0, 0, 60000, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 'AGUS PRIANTO', ' -', ' -', '', 'Cleaning Service Puskesmas Gondosari', 0, 0, 60000, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 'ARIS SETIAWAN,S.Kep.,Ners', ' -', ' -', '', 'Perawat Puskesmas Gondosari', 0, 0, 60000, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 'DENDIS JUVIATMOKO AGUNG HERNANDA,A.Md.Kep', ' -', ' -', '', 'Perawat Puskesmas Gondosari', 0, 0, 60000, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 'ENY PURWANINGSIH', ' -', ' -', '', 'Pramusaji Puskesmas Gondosari', 0, 0, 60000, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 'FAQIH HAFNAN TSAQIBUL FIKRI,A.Ma.', ' -', ' -', '', 'Staff Puskesmas Gondosari', 0, 0, 60000, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 'KAHANA SUMARDIANTORO', ' -', ' -', '', 'Perawat Puskesmas Gondosari', 0, 0, 60000, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 'MUTHRIQOH,A.Md.Kep', ' -', ' -', '', 'Perawat Puskesmas Gondosari', 0, 0, 60000, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 'NIKITA IRAWATI,AMd.Keb', ' -', ' -', '', 'Bidan Puskesmas Gondosari', 0, 0, 60000, 1, '0000-00-00 00:00:00', '2023-04-12 20:14:41'),
(43, 'NITA MAHARJATI, SKM', ' -', ' -', '', 'Penyuluh Kesehatan Puskesmas Gondosari', 0, 0, 60000, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 'NUR LAILI INDRIANI,A.Md.FT', ' -', ' -', '', 'Fisioterapis Puskesmas Gondosari', 0, 0, 60000, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 'NURAINI ATIKA SARI, S.Gz', ' -', ' -', '', 'Nutrisionis Puskesmas Gondosari', 0, 0, 60000, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 'PENDHI BAYU PRATAMA,A.Md.Kep', ' -', ' -', '', 'Perawat Puskesmas Gondosari', 0, 0, 60000, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 'ROFIANA,AMK', ' -', ' -', '', 'Perawat Puskesmas Gondosari', 0, 0, 60000, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 'SEPTIANA ARIASTUTI, SKM', ' -', ' -', '', 'Kesehatan Lingkungan Puskesmas Gondosari', 0, 0, 60000, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 'SITI NUR UTAMI,A.Md.RMIK', ' -', ' -', '', 'Perekam Medis Puskesmas Gondosari', 0, 0, 60000, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 'SURYANI,A.Md.Kep', ' -', ' -', '', 'Perawat Puskesmas Gondosari', 0, 0, 60000, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 'TRIWAHYUNI', ' -', ' -', '', 'Pramusaji Puskesmas Gondosari', 0, 0, 60000, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 'YUDO HIDAYAT MUBAROQ,A.Md.Kep', ' -', ' -', '', 'Perawat Puskesmas Gondosari', 0, 0, 60000, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 'DEVI AYU', '-', '-', '-', 'Kader Ploso', 1, 2, 60000, 1, '2023-04-25 21:43:42', '2023-04-25 21:43:42'),
(54, 'YANTI', '-', '-', '-', 'KADER PLOSO', 0, 0, 60000, 1, '2023-04-26 18:43:00', '2023-04-26 18:43:00'),
(55, 'ENI', '-', '-', '-', 'KADER PLOSO', 0, 0, 60000, 1, '2023-04-26 18:43:31', '2023-04-26 18:43:31'),
(56, 'SRI REJEKI', '-', '-', '-', 'KADER PLOSO', 0, 0, 60000, 1, '2023-04-26 18:44:12', '2023-04-26 18:44:12'),
(57, 'NURYANI', '-', '-', '-', 'KADER PLOSO', 0, 0, 60000, 1, '2023-04-26 18:45:44', '2023-04-26 18:45:44'),
(58, 'NITA', '-', '-', '-', 'KADER PLOSO', 0, 0, 60000, 1, '2023-04-26 18:46:27', '2023-04-26 18:46:27'),
(59, 'SITI MARYATI', '-', '-', '-', 'KADER PLOSO', 0, 0, 60000, 1, '2023-04-26 18:47:07', '2023-04-26 18:47:07'),
(60, 'SUYANTI', '-', '-', '-', 'KADER PLOSO', 0, 0, 60000, 1, '2023-04-26 18:48:05', '2023-04-26 18:48:05'),
(61, 'SUDARSIH', '-', '-', '-', 'KADER PLOSO', 0, 0, 60000, 1, '2023-04-26 18:48:49', '2023-04-26 18:48:49'),
(62, 'HANIFAH', '-', '-', '-', 'KADER GONDOSARI', 0, 0, 60000, 1, '2023-04-26 18:49:35', '2023-04-26 18:54:13'),
(63, 'EKA WULANDARI', '-', '-', '-', 'KADER GONDOSARI', 0, 0, 60000, 1, '2023-04-26 18:51:41', '2023-04-26 18:54:40'),
(64, 'YUSTANTI', '-', '-', '-', 'KADER GONDOSARI', 0, 0, 60000, 1, '2023-04-26 18:52:21', '2023-04-26 18:55:03'),
(65, 'SUDARSIH', '-', '-', '-', 'KADER GONDOSARI', 0, 0, 60000, 1, '2023-04-26 18:53:08', '2023-04-26 18:53:08'),
(66, 'ADERIO', '-', '-', '-', 'KADER GONDOSARI', 0, 0, 60000, 1, '2023-04-26 18:53:39', '2023-04-26 18:53:39'),
(67, 'ATIK', '-', '-', '-', 'KADER TINATAR', 0, 0, 60000, 1, '2023-04-26 18:56:09', '2023-04-26 18:56:09'),
(68, 'SRIATIN', '-', '-', '-', 'KADER TINATAR', 0, 0, 60000, 1, '2023-04-26 18:57:22', '2023-04-26 18:57:22'),
(69, 'BONATIN', '-', '-', '-', 'KADER TINATAR', 0, 0, 60000, 1, '2023-04-26 18:58:11', '2023-04-26 18:58:11'),
(70, 'RULIK', '-', '-', '-', 'KADER TINATAR', 0, 0, 60000, 1, '2023-04-26 18:58:48', '2023-04-26 18:58:48'),
(71, 'DINA MARHENI', '-', '-', '-', 'KADER TINATAR', 0, 0, 60000, 1, '2023-04-26 18:59:26', '2023-04-26 18:59:26'),
(72, 'DRAHYUNI', '-', '-', '-', 'KADER KEBONSARI', 0, 0, 60000, 1, '2023-04-26 19:00:17', '2023-04-26 19:00:17'),
(73, 'IKA SETYO W', '-', '-', '-', 'KADER KEBONSARI', 0, 0, 60000, 1, '2023-04-26 19:01:33', '2023-04-26 19:01:33'),
(74, 'GIYATI', '-', '-', '-', 'KADER', 0, 0, 60000, 1, '2023-04-26 19:05:23', '2023-05-18 18:59:37'),
(75, 'JUMIYEM', '-', '-', '-', 'KADER', 0, 0, 60000, 1, '2023-05-16 21:04:12', '2023-05-16 21:04:12'),
(76, 'SULIS', '-', '-', '-', 'KADER', 0, 0, 60000, 1, '2023-05-16 21:04:44', '2023-05-16 21:04:44'),
(77, 'NITA', '-', '-', '-', 'KADER', 0, 0, 60000, 1, '2023-05-16 21:05:57', '2023-05-18 18:59:02'),
(78, 'MISGIYATI', '-', '-', '-', '-', 0, 0, 60000, 1, '2023-05-16 21:36:11', '2023-05-18 18:58:52'),
(79, 'RETNO WIDAYANTI', '-', '-', '-', '-', 0, 0, 60000, 1, '2023-05-16 21:37:02', '2023-05-18 18:58:34'),
(80, 'dr. IKA MAYASARI', '19841208 201001 2 021', 'Penata Tingkat I', 'III d', 'Plt. KEPALA PUSKESMAS GONDOSARI', 0, 0, 60000, 1, '2023-05-16 23:33:39', '2023-06-12 19:39:05'),
(81, 'RIKA', '-', '-', '-', 'KADER', 0, 0, 60000, 1, '2023-05-21 18:29:47', '2023-05-21 18:29:47'),
(82, 'DEVI', '-', '-', '-', '-', 0, 0, 60000, 1, '2023-05-21 18:30:54', '2023-05-21 18:30:54'),
(83, 'DEWI A', '-', '-', '-', 'KADER', 0, 0, 60, 1, '2023-06-19 23:12:54', '2023-06-19 23:12:54'),
(84, 'SULISTRIANI', '-', '-', '-', 'KADER', 0, 0, 60, 1, '2023-06-19 23:13:27', '2023-06-19 23:13:27'),
(85, 'JUMIATIN', '-', '-', '-', 'KADER PLOSO', 0, 0, 0, 1, '2023-07-05 19:41:51', '2023-07-05 19:42:59'),
(86, 'RINAWATI', '-', '-', '-', 'KADER', 0, 0, 0, 1, '2023-07-05 20:23:32', '2023-07-05 20:23:32'),
(87, 'SURATI', '-', '-', '-', 'KADER', 0, 0, 0, 1, '2023-07-05 20:25:10', '2023-07-05 20:25:10'),
(88, 'EKO DIAN', '-', '-', '-', 'KADER', 0, 0, 0, 1, '2023-07-05 20:27:13', '2023-07-05 20:27:13');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `instructions`
--

CREATE TABLE `instructions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kegiatan` text NOT NULL,
  `sub_kegiatan` text NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `rekening_id` bigint(20) UNSIGNED NOT NULL,
  `account_id` bigint(20) UNSIGNED NOT NULL,
  `transport_id` bigint(20) UNSIGNED NOT NULL,
  `t_berangkat` varchar(255) NOT NULL,
  `destination_id` bigint(20) UNSIGNED NOT NULL,
  `lama` varchar(255) NOT NULL,
  `tgl_berangkat` date NOT NULL,
  `tgl_pulang` date NOT NULL,
  `ket` text NOT NULL,
  `terima` varchar(255) NOT NULL,
  `sub_komponen` text NOT NULL,
  `terbilang` varchar(255) NOT NULL,
  `jumlah` varchar(255) DEFAULT '0',
  `hadir` varchar(255) NOT NULL,
  `arahan` varchar(255) NOT NULL,
  `masalah` varchar(255) NOT NULL,
  `saran` varchar(255) NOT NULL,
  `lain` varchar(255) NOT NULL,
  `status` varchar(255) DEFAULT '2',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instructions`
--

INSERT INTO `instructions` (`id`, `kegiatan`, `sub_kegiatan`, `category_id`, `rekening_id`, `account_id`, `transport_id`, `t_berangkat`, `destination_id`, `lama`, `tgl_berangkat`, `tgl_pulang`, `ket`, `terima`, `sub_komponen`, `terbilang`, `jumlah`, `hadir`, `arahan`, `masalah`, `saran`, `lain`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Desa Gondosari', 4, '1', '2023-02-01', '2023-02-01', 'e', 'Bendahara Pengeluaran Pembantu', 'Survei vektor malaria, DBD dan reservoar Leptospirosis (Verikasi Rumor) Dusun Krajan', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', 'a', 'b', 'c', 'd', '0', '2023-04-12 18:50:03', '2023-04-12 20:13:52'),
(3, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 4, '1', '2023-02-01', '2023-02-01', 'f', 'Bendahara Pengeluaran Pembantu', 'Survei vektor malaria, DBD dan reservoar Leptospirosis (Verikasi Rumor) Dusun Krajan', 'SERATUS DUA PULUH RIBU RUPIAH', '0', 'a', 'b', 'c', 'd', 'e', '0', '2023-04-12 20:06:13', '2023-04-12 20:14:37'),
(4, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 4, '1', '2023-02-03', '2023-02-03', 'f', 'Bendahara Pengeluaran Pembantu', 'Survei vektor malaria, DBD dan reservoar Leptospirosis (Verikasi Rumor) Dusun Krajan', 'SERATUS DUA PULUH RIBU RUPIAH', '0', 'a', 'b', 'c', 'd', 'e', '2', '2023-04-12 20:17:05', '2023-04-12 20:17:05'),
(5, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 3, '1', '2023-02-06', '2023-02-06', 'f', 'Bendahara Pengeluaran Pembantu', 'Survei vektor malaria, DBD dan reservoar Leptospirosis (Verikasi Rumor) Dusun Buyutan', 'SERATUS DUA PULUH RIBU RUPIAH', '0', 'a', 'b', 'c', 'd', 'e', '0', '2023-04-12 20:25:48', '2023-04-12 20:57:44'),
(6, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 3, '1', '2023-02-06', '2023-02-06', 'f', 'Bendahara Pengeluaran Pembantu', 'Survei vektor malaria, DBD dan reservoar Leptospirosis (Verikasi Rumor) Dusun Krajan', 'SERATUS DUA PULUH RIBU RUPIAH', '0', 'a', 'b', 'c', 'd', 'e', '2', '2023-04-12 21:00:14', '2023-04-12 21:00:14'),
(7, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 4, '1', '2023-02-08', '2023-02-08', 'f', 'Bendahara Pengeluaran Pembantu', 'Survei vektor malaria, DBD dan reservoar Leptospirosis (Verikasi Rumor) Dusun Krajan', 'SERATUS DUA PULUH RIBU RUPIAH', '0', 'a', 'b', 'c', 'd', 'e', '2', '2023-04-12 21:12:16', '2023-04-12 21:12:16'),
(8, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 4, '1', '2023-02-08', '2023-02-08', 'f', 'Bendahara Pengeluaran Pembantu', 'Survei vektor malaria, DBD dan reservoar Leptospirosis (Verikasi Rumor) Dusun Krajan', 'SERATUS DUA PULUH RIBU RUPIAH', '0', 'a', 'b', 'c', 'd', 'e', '2', '2023-04-12 21:21:59', '2023-04-12 21:21:59'),
(9, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 3, '1', '2023-02-09', '2023-02-09', 'f', 'Bendahara Pengeluaran Pembantu', 'Survei vektor malaria, DBD dan reservoar Leptospirosis (Verikasi Rumor) Dusun Petung', 'SERATUS DUA PULUH RIBU RUPIAH', '0', 'a', 'b', 'c', 'd', 'e', '2', '2023-04-12 21:32:18', '2023-04-12 21:32:18'),
(10, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-02-10', '2023-02-10', 'f', 'Bendahara Pengeluaran Pembantu', 'Survei vektor malaria, DBD dan reservoar Leptospirosis (Verikasi Rumor) Dusun Klasen', 'SERATUS DUA PULUH RIBU RUPIAH', '0', 'a', 'b', 'c', 'd', 'e', '2', '2023-04-12 21:42:04', '2023-04-12 21:44:21'),
(11, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-02-10', '2023-02-10', 'f', 'Bendahara Pengeluaran Pembantu', 'Survei vektor malaria, DBD dan reservoar Leptospirosis (Verikasi Rumor) Dusun Klasen', 'SERATUS DUA PULUH RIBU RUPIAH', '0', 'a', 'b', 'c', 'd', 'e', '2', '2023-04-12 21:49:27', '2023-04-12 21:49:27'),
(12, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-02-10', '2023-02-10', 'f', 'Bendahara Pengeluaran Pembantu', 'Survei vektor malaria, DBD dan reservoar Leptospirosis (Verikasi Rumor) Dusun Weru', 'SERATUS DUA PULUH RIBU RUPIAH', '0', 'a', 'b', 'c', 'd', 'e', '2', '2023-04-12 21:57:11', '2023-04-12 21:57:11'),
(13, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 3, '1', '2023-02-13', '2023-02-13', '-', 'Bendahara Pengeluaran Pembantu', 'Survei vektor malaria, DBD dan reservoar Leptospirosis (Verikasi Rumor) Dusun Pagutan', 'SERATUS DUA PULUH RIBU RUPIAH', '0', 'a', 'b', 'c', 'd', 'e', '2', '2023-04-12 22:07:25', '2023-04-12 22:07:25'),
(14, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 3, '1', '2023-02-13', '2023-02-13', '-', 'Bendahara Pengeluaran Pembantu', 'Survei vektor malaria, DBD dan reservoar Leptospirosis (Verikasi Rumor) Dusun Pagutan', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-04-12 22:20:13', '2023-04-12 22:20:13'),
(15, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan pelayanan kesehatan lingkungan', 1, 8, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-05-02', '2023-05-02', '-', 'Bendahara Pengeluaran Pembantu', 'Inspeksi kesling di sarana tempat dan fasilitas umum, sarana tempat pengelolaan pangan, sarana air minum, fasyankes', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-04-13 19:26:39', '2023-04-13 19:26:39'),
(16, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan pelayanan kesehatan lingkungan', 1, 8, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-05-03', '2023-05-03', '-', 'Bendahara Pengeluaran Pembantu', 'Inspeksi kesling di sarana tempat dan fasilitas umum, sarana tempat pengelolaan pangan, sarana air minum, fasyankes', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-04-13 19:52:42', '2023-04-13 19:52:42'),
(17, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan pelayanan kesehatan lingkungan', 1, 8, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-05-04', '2023-05-04', '-', 'Bendahara Pengeluaran Pembantu', 'Inspeksi kesling di sarana tempat dan fasilitas umum, sarana tempat pengelolaan pangan, sarana air minum, fasyankes', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-04-13 20:23:58', '2023-04-13 20:23:58'),
(18, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan pelayanan kesehatan lingkungan', 1, 8, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-05-05', '2023-05-05', '-', 'Bendahara Pengeluaran Pembantu', 'Inspeksi kesling di sarana tempat dan fasilitas umum, sarana tempat pengelolaan pangan, sarana air minum, fasyankes', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-04-13 20:49:33', '2023-04-13 20:49:33'),
(19, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan pelayanan kesehatan lingkungan', 1, 8, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-05-08', '2023-05-08', '-', 'Bendahara Pengeluaran Pembantu', 'Inspeksi kesling di sarana tempat dan fasilitas umum, sarana tempat pengelolaan pangan, sarana air minum, fasyankes', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-04-16 18:54:46', '2023-04-16 18:54:46'),
(20, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan pelayanan kesehatan lingkungan', 1, 8, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-05-09', '2023-05-09', '-', 'Bendahara Pengeluaran Pembantu', 'Inspeksi kesling di sarana tempat dan fasilitas umum, sarana tempat pengelolaan pangan, sarana air minum, fasyankes', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-04-16 19:22:54', '2023-04-16 19:22:54'),
(21, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan pelayanan kesehatan lingkungan', 1, 8, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-05-10', '2023-05-10', '-', 'Bendahara Pengeluaran Pembantu', 'Inspeksi kesling di sarana tempat dan fasilitas umum, sarana tempat pengelolaan pangan, sarana air minum, fasyankes', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-04-16 19:35:35', '2023-04-16 19:35:35'),
(22, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan pelayanan kesehatan lingkungan', 1, 8, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-05-11', '2023-05-11', '-', 'Bendahara Pengeluaran Pembantu', 'Inspeksi kesling di sarana tempat dan fasilitas umum, sarana tempat pengelolaan pangan, sarana air minum, fasyankes', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-04-16 19:44:15', '2023-04-16 19:44:15'),
(23, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan pelayanan kesehatan lingkungan', 1, 8, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-05-15', '2023-05-15', '-', 'Bendahara Pengeluaran Pembantu', 'Inspeksi kesling di sarana tempat dan fasilitas umum, sarana tempat pengelolaan pangan, sarana air minum, fasyankes', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-04-16 20:17:21', '2023-04-16 20:17:21'),
(24, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan pelayanan kesehatan lingkungan', 1, 8, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-05-12', '2023-05-12', '-', 'Bendahara Pengeluaran Pembantu', 'Inspeksi kesling di sarana tempat dan fasilitas umum, sarana tempat pengelolaan pangan, sarana air minum, fasyankes', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-04-16 20:20:02', '2023-04-16 20:20:02'),
(25, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan pelayanan kesehatan lingkungan', 1, 8, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-05-16', '2023-05-16', '-', 'Bendahara Pengeluaran Pembantu', 'Inspeksi kesling di sarana tempat dan fasilitas umum, sarana tempat pengelolaan pangan, sarana air minum, fasyankes', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-04-16 20:41:48', '2023-04-16 20:41:48'),
(26, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan pelayanan kesehatan lingkungan', 1, 8, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-05-17', '2023-05-17', '-', 'Bendahara Pengeluaran Pembantu', 'Inspeksi kesling di sarana tempat dan fasilitas umum, sarana tempat pengelolaan pangan, sarana air minum, fasyankes', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-04-16 20:57:49', '2023-04-16 20:57:49'),
(27, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan pelayanan kesehatan lingkungan', 1, 8, 1, 1, 'Puskesmas Gondosari', 4, '1', '2023-05-19', '2023-05-19', '-', 'Bendahara Pengeluaran Pembantu', 'Inspeksi kesling di sarana tempat dan fasilitas umum, sarana tempat pengelolaan pangan, sarana air minum, fasyankes', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-04-16 21:04:40', '2023-04-16 21:10:13'),
(28, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan pelayanan kesehatan lingkungan', 1, 8, 1, 1, 'Puskesmas Gondosari', 4, '1', '2023-05-22', '2023-05-22', '-', 'Bendahara Pengeluaran Pembantu', 'Inspeksi kesling di sarana tempat dan fasilitas umum, sarana tempat pengelolaan pangan, sarana air minum, fasyankes', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-04-16 21:37:29', '2023-04-16 21:37:29'),
(29, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan pelayanan kesehatan lingkungan', 1, 8, 1, 1, 'Puskesmas Gondosari', 4, '1', '2023-05-23', '2023-05-23', '-', 'Bendahara Pengeluaran Pembantu', 'Inspeksi kesling di sarana tempat dan fasilitas umum, sarana tempat pengelolaan pangan, sarana air minum, fasyankes', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-04-16 21:49:53', '2023-04-16 21:49:53'),
(30, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan pelayanan kesehatan lingkungan', 1, 8, 1, 1, 'Puskesmas Gondosari', 4, '1', '2023-05-24', '2023-05-24', '-', 'Bendahara Pengeluaran Pembantu', 'Inspeksi kesling di sarana tempat dan fasilitas umum, sarana tempat pengelolaan pangan, sarana air minum, fasyankes', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-04-25 19:41:26', '2023-04-25 19:41:26'),
(31, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan pelayanan kesehatan lingkungan', 1, 8, 1, 1, 'Puskesmas Gondosari', 4, '1', '2023-05-25', '2023-05-25', '-', 'Bendahara Pengeluaran Pembantu', 'Inspeksi kesling di sarana tempat dan fasilitas umum, sarana tempat pengelolaan pangan, sarana air minum, fasyankes', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-04-25 19:55:27', '2023-04-25 19:55:27'),
(32, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan pelayanan kesehatan lingkungan', 1, 8, 1, 1, 'Puskesmas Gondosari', 3, '1', '2023-05-26', '2023-05-26', '-', 'Bendahara Pengeluaran Pembantu', 'Inspeksi kesling di sarana tempat dan fasilitas umum, sarana tempat pengelolaan pangan, sarana air minum, fasyankes', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-04-25 20:06:24', '2023-04-25 20:06:24'),
(33, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan pelayanan kesehatan lingkungan', 1, 8, 1, 1, 'Puskesmas Gondosari', 3, '1', '2023-05-29', '2023-05-29', '-', 'Bendahara Pengeluaran Pembantu', 'Inspeksi kesling di sarana tempat dan fasilitas umum, sarana tempat pengelolaan pangan, sarana air minum, fasyankes', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-04-25 20:14:55', '2023-04-25 20:14:55'),
(34, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan pelayanan kesehatan lingkungan', 1, 8, 1, 1, 'Puskesmas Gondosari', 20, '1', '2023-04-02', '2023-04-02', '-', 'Bendahara Pengeluaran Pembantu', 'Inspeksi kesling di sarana tempat dan fasilitas umum, sarana tempat pengelolaan pangan, sarana air minum, fasyankes', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-04-25 20:41:48', '2023-04-25 20:41:48'),
(35, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan pelayanan kesehatan lingkungan', 1, 8, 1, 1, 'Puskesmas Gondosari', 13, '1', '2023-04-13', '2023-04-13', '-', 'Bendahara Pengeluaran Pembantu', 'Inspeksi kesling di sarana tempat dan fasilitas umum, sarana tempat pengelolaan pangan, sarana air minum, fasyankes', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-04-25 20:55:33', '2023-04-25 20:55:33'),
(36, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan pelayanan kesehatan lingkungan', 1, 8, 1, 1, 'Puskesmas Gondosari', 4, '1', '2023-04-07', '2023-04-07', '-', 'Bendahara Pengeluaran Pembantu', 'Inspeksi kesling di sarana tempat dan fasilitas umum, sarana tempat pengelolaan pangan, sarana air minum, fasyankes', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-04-25 21:23:58', '2023-04-25 21:23:58'),
(37, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-05-31', '2023-05-31', '-', 'Bendahara Pengeluaran Pembantu', 'Deteksi dini/Skrining faktor risiko dan PTM prioritas di masyarakat dan institusi', 'TIGA RATUS ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-04-26 19:31:36', '2023-06-14 21:00:34'),
(38, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-05-31', '2023-05-31', '-', 'Bendahara Pengeluaran Pembantu', 'Deteksi dini/Skrining faktor risiko dan PTM prioritas di masyarakat dan institusi', '360000', '0', '-', '-', '-', '-', '-', '2', '2023-04-26 19:50:53', '2023-06-14 20:59:24'),
(39, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-05-18', '2023-04-18', '-', 'Bendahara Pengeluaran Pembantu', 'Deteksi dini/Skrining faktor risiko dan PTM prioritas di masyarakat dan institusi', 'TIGA RATUS ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-04-26 20:07:41', '2023-06-14 21:21:43'),
(40, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-05-25', '2023-05-25', '-', 'Bendahara Pengeluaran Pembantu', 'Deteksi dini/Skrining faktor risiko dan PTM prioritas di masyarakat dan institusi', 'TIGA RATUS ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-04-26 20:22:34', '2023-06-14 21:37:53'),
(41, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-05-03', '2023-05-03', '-', 'Bendahara Pengeluaran Pembantu', 'Deteksi dini/Skrining faktor risiko dan PTM prioritas di masyarakat dan institusi', 'TIGA RATUS ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-04-26 20:42:22', '2023-06-15 19:07:27'),
(42, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-04-18', '2023-04-18', '-', 'Bendahara Pengeluaran Pembantu', 'Deteksi dini/Skrining faktor risiko dan PTM prioritas di masyarakat dan institusi', 'TIGA RATUS ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-04-26 20:56:43', '2023-04-26 20:56:43'),
(43, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 3, '1', '2023-05-06', '2023-05-06', '-', 'Bendahara Pengeluaran Pembantu', 'Deteksi dini/Skrining faktor risiko dan PTM prioritas di masyarakat dan institusi Posbindu Tinoto Sehat', 'TIGA RATUS ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-04-26 21:08:52', '2023-06-15 20:14:26'),
(44, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 3, '1', '2023-05-21', '2023-05-21', '-', 'Bendahara Pengeluaran Pembantu', 'Deteksi dini/Skrining faktor risiko dan PTM prioritas di masyarakat dan institusi', 'TIGA RATUS ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '--', '-', '2', '2023-04-26 21:30:33', '2023-06-15 20:28:03'),
(45, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 4, '1', '2023-04-04', '2023-04-04', '-', 'Bendahara Pengeluaran Pembantu', 'Deteksi dini/Skrining faktor risiko dan PTM prioritas di masyarakat dan institusi', 'TIGA RATUS ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-04-26 21:44:13', '2023-04-26 21:44:13'),
(46, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-04-24', '2023-04-24', '-', 'Bendahara Pengeluaran Pembantu', 'Deteksi dini/Skrining faktor risiko dan PTM prioritas di masyarakat dan institusi', 'TIGA RATUS ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-01 18:31:39', '2023-05-01 18:31:39'),
(47, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-04-27', '2023-04-27', '-', 'Bendahara Pengeluaran Pembantu', 'Deteksi dini/Skrining faktor risiko dan PTM prioritas di masyarakat dan institusi', 'TIGA RATUS ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-01 18:46:44', '2023-05-01 18:46:44'),
(48, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-04-28', '2023-04-28', '-', 'Bendahara Pengeluaran Pembantu', 'Deteksi dini/Skrining faktor risiko dan PTM prioritas di masyarakat dan institusi', 'TIGA RATUS ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-01 19:10:03', '2023-05-01 19:10:03'),
(49, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-04-29', '2023-04-29', '-', 'Bendahara Pengeluaran Pembantu', 'Deteksi dini/Skrining faktor risiko dan PTM prioritas di masyarakat dan institusi', 'TIGA RATUS ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-01 19:22:19', '2023-05-01 19:22:19'),
(50, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 3, '1', '2023-04-07', '2023-04-07', '-', 'Bendahara Pengeluaran Pembantu', 'Deteksi dini/Skrining faktor risiko dan PTM prioritas di masyarakat dan institusi', 'TIGA RATUS ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-01 19:33:45', '2023-05-01 19:33:45'),
(51, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 3, '1', '2023-04-08', '2023-04-08', '-', 'Bendahara Pengeluaran Pembantu', 'Deteksi dini/Skrining faktor risiko dan PTM prioritas di masyarakat dan institusi', 'TIGA RATUS ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-01 19:39:42', '2023-05-01 19:39:42'),
(52, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-04-20', '2023-04-20', '-', 'Bendahara Pengeluaran Pembantu', 'Deteksi dini/Skrining faktor risiko dan PTM prioritas di masyarakat dan institusi', 'TIGA RATUS ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-01 19:49:12', '2023-05-01 19:49:12'),
(53, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-05-27', '2023-05-27', '-', 'Bendahara Pengeluaran Pembantu', 'Deteksi dini/Skrining faktor risiko dan PTM prioritas di masyarakat dan institusi', 'TIGA RATUS ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-01 20:00:23', '2023-06-15 18:45:09'),
(54, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 4, '1', '2023-05-10', '2023-05-10', '-', 'Bendahara Pengeluaran Pembantu', 'Deteksi dini/Skrining faktor risiko dan PTM prioritas di masyarakat dan institusi', 'TIGA RATUS ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-01 20:13:02', '2023-06-15 20:42:08'),
(55, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 4, '1', '2023-04-01', '2023-04-01', '-', 'Bendahara Pengeluaran Pembantu', 'Survei vektor malaria, DBD dan reservoar Leptospirosis (Verikasi Rumor) Dusun Krajan', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-01 20:43:47', '2023-05-01 20:43:47'),
(56, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-04-01', '2023-04-01', '-', 'Bendahara Pengeluaran Pembantu', 'Survei vektor malaria, DBD dan reservoar Leptospirosis (Verikasi Rumor) Dusun Klasen', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-01 20:51:05', '2023-05-01 20:51:05'),
(57, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 3, '1', '2023-04-01', '2023-04-01', '-', 'Bendahara Pengeluaran Pembantu', 'Survei vektor malaria, DBD dan reservoar Leptospirosis (Verikasi Rumor) Dusun Pagutan', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-01 20:58:38', '2023-05-01 20:58:38'),
(58, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-04-05', '2023-04-05', '-', 'Bendahara Pengeluaran Pembantu', 'Survei vektor malaria, DBD dan reservoar Leptospirosis (Verikasi Rumor) Dusun Klasen', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-01 21:04:54', '2023-05-01 21:04:54'),
(59, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-04-08', '2023-04-08', '-', 'Bendahara Pengeluaran Pembantu', 'Survei vektor malaria, DBD dan reservoar Leptospirosis (Verikasi Rumor) Dusun Klasen', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-01 21:13:29', '2023-05-01 21:13:29'),
(60, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-04-17', '2023-04-17', '-', 'Bendahara Pengeluaran Pembantu', 'Survei vektor malaria, DBD dan reservoar Leptospirosis (Verikasi Rumor) Dusun Sulang', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-01 21:27:28', '2023-05-01 21:27:28'),
(61, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-04-17', '2023-04-17', '-', 'Bendahara Pengeluaran Pembantu', 'Survei vektor malaria, DBD dan reservoar Leptospirosis (Verikasi Rumor) Dusun Jatisari', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-01 21:36:32', '2023-05-01 21:36:32'),
(62, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 3, '1', '2023-04-20', '2023-04-20', '-', 'Bendahara Pengeluaran Pembantu', 'Survei vektor malaria, DBD dan reservoar Leptospirosis (Verikasi Rumor) Dusun Buyutan', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-01 21:43:20', '2023-05-01 21:43:20'),
(63, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 3, '1', '2023-04-22', '2023-04-22', '-', 'Bendahara Pengeluaran Pembantu', 'Survei vektor malaria, DBD dan reservoar Leptospirosis (Verikasi Rumor) Dusun Buyutan', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-01 21:49:15', '2023-05-01 21:49:15'),
(64, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-04-24', '2023-04-24', '-', 'Bendahara Pengeluaran Pembantu', 'Survei vektor malaria, DBD dan reservoar Leptospirosis (Verikasi Rumor) Dusun Klasen', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-01 21:55:49', '2023-05-01 21:55:49'),
(65, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 4, '1', '2023-04-25', '2023-04-25', '-', 'Bendahara Pengeluaran Pembantu', 'Survei vektor malaria, DBD dan reservoar Leptospirosis (Verikasi Rumor) Dusun Krajan', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-01 22:02:01', '2023-05-01 22:02:01'),
(66, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 3, '1', '2023-04-27', '2023-04-27', '-', 'Bendahara Pengeluaran Pembantu', 'Survei vektor malaria, DBD dan reservoar Leptospirosis (Verikasi Rumor) Dusun Buyutan', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-01 22:13:11', '2023-05-01 22:13:11'),
(67, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-04-27', '2023-04-27', '-', 'Bendahara Pengeluaran Pembantu', 'Survei vektor malaria, DBD dan reservoar Leptospirosis (Verikasi Rumor) Dusun Krajan', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-01 22:27:21', '2023-05-01 22:27:21'),
(68, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 3, '1', '2023-04-27', '2023-04-27', '-', 'Bendahara Pengeluaran Pembantu', 'Survei vektor malaria, DBD dan reservoar Leptospirosis (Verikasi Rumor) Dusun Pagutan', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-01 22:32:09', '2023-05-01 22:32:09'),
(69, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 3, '1', '2023-04-28', '2023-04-28', '-', 'Bendahara Pengeluaran Pembantu', 'Survei vektor malaria, DBD dan reservoar Leptospirosis (Verikasi Rumor) Dusun Pagutan', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-01 22:40:50', '2023-05-01 22:40:50'),
(70, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 3, '1', '2023-04-29', '2023-04-29', '-', 'Bendahara Pengeluaran Pembantu', 'Survei vektor malaria, DBD dan reservoar Leptospirosis (Verikasi Rumor) Dusun Petung', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-01 22:46:17', '2023-05-01 22:46:17'),
(71, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 3, '1', '2023-04-29', '2023-04-29', '-', 'Bendahara Pengeluaran Pembantu', 'Survei vektor malaria, DBD dan reservoar Leptospirosis (Verikasi Rumor) Dusun Petung', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-01 22:51:57', '2023-05-01 22:51:57'),
(72, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Surveilans Kesehatan', 1, 9, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-04-01', '2023-04-01', '-', 'Bendahara Pengeluaran Pembantu', 'Verifikasi sinyal/ penyelidikan epidemiologi (PE) / Pelacakan Kontak Penyakit Berpotensi KLB? Wabah Penyakit Infeksi Emerging, PD3I, Zoonosis, hewan berbisa beracun, NTD\'s, dan penyakit menular lainnya.', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-01 23:21:32', '2023-05-01 23:21:32'),
(73, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Surveilans Kesehatan', 1, 9, 1, 1, 'Puskesmas Gondosari', 4, '1', '2023-04-03', '2023-04-03', '-', 'Bendahara Pengeluaran Pembantu', 'Verifikasi sinyal/ penyelidikan epidemiologi (PE) / Pelacakan Kontak Penyakit Berpotensi KLB/ Wabah Penyakit Infeksi Emerging, PD3I, Zoonosis, hewan berbisa beracun, NTD\'s, dan penyakit menular lainnya.', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-01 23:31:54', '2023-05-01 23:31:54'),
(74, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Surveilans Kesehatan', 1, 9, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-04-04', '2023-04-04', '-', 'Bendahara Pengeluaran Pembantu', 'Verifikasi sinyal/ penyelidikan epidemiologi (PE) / Pelacakan Kontak Penyakit Berpotensi KLB/ Wabah Penyakit Infeksi Emerging, PD3I, Zoonosis, hewan berbisa beracun, NTD\'s, dan penyakit menular lainnya. Dusun Klasen', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-01 23:51:46', '2023-05-01 23:51:46'),
(75, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Surveilans Kesehatan', 1, 9, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-04-07', '2023-04-07', '-', 'Bendahara Pengeluaran Pembantu', 'Verifikasi sinyal/ penyelidikan epidemiologi (PE) / Pelacakan Kontak Penyakit Berpotensi KLB/ Wabah Penyakit Infeksi Emerging, PD3I, Zoonosis, hewan berbisa beracun, NTD\'s, dan penyakit menular lainnya Dusun Weru', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-02 00:01:06', '2023-05-02 00:01:06'),
(76, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Surveilans Kesehatan', 1, 9, 1, 1, 'Puskesmas Gondosari', 3, '1', '2023-04-10', '2023-04-10', '-', 'Bendahara Pengeluaran Pembantu', 'Verifikasi sinyal/ penyelidikan epidemiologi (PE) / Pelacakan Kontak Penyakit Berpotensi KLB/ Wabah Penyakit Infeksi Emerging, PD3I, Zoonosis, hewan berbisa beracun, NTD\'s, dan penyakit menular lainnya Dusun Krajan', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-02 00:10:57', '2023-05-02 00:10:57'),
(77, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Surveilans Kesehatan', 1, 9, 1, 1, 'Puskesmas Gondosari', 3, '1', '2023-04-11', '2023-04-11', '-', 'Bendahara Pengeluaran Pembantu', 'Verifikasi sinyal/ penyelidikan epidemiologi (PE) / Pelacakan Kontak Penyakit Berpotensi KLB/ Wabah Penyakit Infeksi Emerging, PD3I, Zoonosis, hewan berbisa beracun, NTD\'s, dan penyakit menular lainnya Dusun Ngemplak', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-02 18:57:09', '2023-05-02 18:57:09'),
(78, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Surveilans Kesehatan', 1, 9, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-04-12', '2023-04-12', '-', 'Bendahara Pengeluaran Pembantu', 'Penyelidikan Epidemiologi (PE) Leptospirosis', '180000', '0', '-', '-', '-', '-', '-', '2', '2023-05-02 19:25:55', '2023-05-02 19:25:55'),
(79, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Surveilans Kesehatan', 1, 9, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-04-13', '2023-04-13', '-', 'Bendahara Pengeluaran Pembantu', 'Penyelidikan Epidemiologi (PE) Leptospirosis Dusun Kalitelu', '180000', '0', '-', '-', '-', '-', '-', '2', '2023-05-02 19:43:36', '2023-05-02 19:43:36'),
(80, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Surveilans Kesehatan', 1, 9, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-04-14', '2023-04-14', '-', 'Bendahara Pengeluaran Pembantu', 'Penyelidikan Epidemiologi (PE) Leptospirosis Dusun Pacing', 'Rp 180000', '0', '-', '-', '-', '-', '-', '2', '2023-05-02 19:58:10', '2023-05-02 19:58:10'),
(81, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Surveilans Kesehatan', 1, 9, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-04-15', '2023-04-15', '-', 'Bendahara Pengeluaran Pembantu', 'Penyelidikan Epidemiologi (PE) Leptospirosis Dusun Bubakan', 'Rp 180000', '0', '-', '-', '-', '-', '-', '2', '2023-05-02 20:09:18', '2023-05-02 20:09:18'),
(82, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Surveilans Kesehatan', 1, 9, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-04-18', '2023-04-18', '-', 'Bendahara Pengeluaran Pembantu', 'Penyelidikan Epidemiologi (PE) Leptospirosis Dusun Kepuh', 'Rp 180000', '0', '-', '-', '-', '-', '-', '2', '2023-05-02 20:17:13', '2023-05-02 20:17:13'),
(83, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Surveilans Kesehatan', 1, 9, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-04-20', '2023-04-20', '-', 'Bendahara Pengeluaran Pembantu', 'Penyelidikan Epidemiologi (PE) Leptospirosis Dusun Jeruk', 'Rp 180000', '0', '-', '-', '-', '-', '-', '2', '2023-05-02 20:30:32', '2023-05-02 20:30:32'),
(84, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Balita', 1, 4, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-04-01', '2023-04-01', '-', 'Bendahara Pengeluaran Pembantu', 'Rujukan balita stunting atau gizi buruk', 'ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-03 19:51:16', '2023-05-03 19:51:16'),
(85, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Balita', 1, 4, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-04-01', '2023-04-01', '-', 'Bendahara Pengeluaran Pembantu', 'Rujukan balita stunting atau gizi buruk', 'ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-03 20:02:24', '2023-05-03 20:02:24'),
(86, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Balita', 1, 4, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-04-01', '2023-04-01', '-', 'Bendahara Pengeluaran Pembantu', 'Rujukan balita stunting atau gizi buruk', 'ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-03 20:12:34', '2023-05-03 20:12:34'),
(87, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Balita', 1, 4, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-04-02', '2023-05-02', '-', 'Bendahara Pengeluaran Pembantu', 'Rujukan balita stunting atau gizi buruk', 'ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-03 20:18:55', '2023-05-03 20:18:55'),
(88, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Balita', 1, 4, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-04-02', '2023-04-02', '-', 'Bendahara Pengeluaran Pembantu', 'Rujukan balita stunting atau gizi buruk', 'ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-03 20:29:33', '2023-05-03 20:29:33'),
(89, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Balita', 1, 4, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-04-03', '2023-04-03', '-', 'Bendahara Pengeluaran Pembantu', 'Rujukan balita stunting atau gizi buruk', 'ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-03 20:34:52', '2023-05-03 20:34:52'),
(90, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Balita', 1, 4, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-04-03', '2023-04-03', '-', 'Bendahara Pengeluaran Pembantu', 'Rujukan balita stunting atau gizi buruk', 'ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-03 20:39:41', '2023-05-03 20:39:41'),
(91, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Balita', 1, 4, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-04-03', '2023-04-03', '-', 'Bendahara Pengeluaran Pembantu', 'Rujukan balita stunting atau gizi buruk', 'ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-03 20:51:47', '2023-05-03 20:51:47'),
(92, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Balita', 1, 4, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-04-06', '2023-04-06', '-', 'Bendahara Pengeluaran Pembantu', 'Rujukan balita stunting atau gizi buruk', 'ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-03 20:59:18', '2023-05-03 20:59:18'),
(93, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Balita', 1, 4, 1, 1, 'Puskesmas Gondosari', 3, '1', '2023-04-04', '2023-04-04', '-', 'Bendahara Pengeluaran Pembantu', 'Rujukan balita stunting atau gizi buruk', 'ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-03 21:04:57', '2023-05-03 21:04:57'),
(94, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Balita', 1, 4, 1, 1, 'Puskesmas Gondosari', 4, '1', '2023-04-05', '2023-04-05', '-', 'Bendahara Pengeluaran Pembantu', 'Rujukan balita stunting atau gizi buruk', 'ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-03 21:10:18', '2023-05-03 21:10:18'),
(95, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Balita', 1, 4, 1, 1, 'Puskesmas Gondosari', 3, '1', '2023-04-12', '2023-04-12', '-', 'Bendahara Pengeluaran Pembantu', 'Rujukan balita stunting atau gizi buruk', 'ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-03 21:27:28', '2023-05-03 21:27:28'),
(96, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Balita', 1, 4, 1, 1, 'Puskesmas Gondosari', 4, '1', '2023-04-10', '2023-04-10', '-', 'Bendahara Pengeluaran Pembantu', 'Rujukan balita stunting atau gizi buruk', 'ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-04 20:37:38', '2023-05-04 20:37:38'),
(97, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Balita', 1, 4, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-04-11', '2023-04-11', '-', 'Bendahara Pengeluaran Pembantu', 'Rujukan balita stunting atau gizi buruk', 'ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-04 20:46:59', '2023-05-04 20:47:20'),
(98, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-04-05', '2023-04-05', '-', 'Bendahara Pengeluaran Pembantu', 'Pelayanan Imunisasi Rutin', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-07 18:30:50', '2023-05-07 18:30:50'),
(99, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-04-12', '2023-04-12', '-', 'Bendahara Pengeluaran Pembantu', 'Sweeping Pelayanan Imunisasi', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-07 18:41:26', '2023-05-07 18:41:26'),
(100, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Investigasi Awal Kejadian Tidak Diharapkan (KIPI Imunisasi dan Pemberian Obat Massal)', 1, 5, 1, 1, 'Puskesmas Gondosari', 4, '1', '2023-04-03', '2023-04-03', '1', 'Bendahara Pengeluaran Pembantu', 'Surveilans KIPI (Imunisasi)', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '1', '1', '1', '1', '2', '2023-05-07 18:53:39', '2023-05-07 18:53:39'),
(101, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-01-23', '2023-01-23', '-', 'Bendahara Pengeluaran Pembantu', 'Deteksi dini/Skrining faktor risiko dan PTM prioritas di masyarakat dan institusi Posbindu Anggrek', '360.000', '0', '-', '-', '-', '-', '-', '2', '2023-05-16 21:19:01', '2023-05-16 21:19:01'),
(102, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 4, '1', '2023-01-17', '2023-01-17', '-', 'Bendahara Pengeluaran Pembantu', 'Deteksi dini/Skrining faktor risiko dan PTM prioritas di masyarakat dan institusi', 'TIGA RATUS ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-16 21:43:35', '2023-05-16 21:43:35'),
(104, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Orang dengan Gangguan Jiwa Berat', 1, 6, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-04-19', '2023-04-19', '-', 'Bendahara Pengeluaran Pembantu', 'Kunjungan Rumah Edukasi Keluarga untuk Perawatan dan Berobat Teratur pada Orang dengan Gangguan Jiwa (ODGJ)', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-21 18:38:35', '2023-05-21 18:38:35'),
(105, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Orang dengan Gangguan Jiwa Berat', 1, 13, 1, 1, 'Puskesmas Gondosari', 3, '1', '2023-04-20', '2023-04-20', '-', 'Bendahara Pengeluaran Pembantu', 'Kunjungan Rumah Edukasi Keluarga untuk Perawatan dan Berobat Teratur pada Orang dengan Gangguan Jiwa (ODGJ)', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-21 18:54:26', '2023-05-21 18:54:26'),
(106, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Orang dengan Gangguan Jiwa Berat', 1, 13, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-04-17', '2023-04-17', '-', 'Bendahara Pengeluaran Pembantu', 'Kunjungan Rumah Edukasi Keluarga untuk Perawatan dan Berobat Teratur pada Orang dengan Gangguan Jiwa (ODGJ)', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-21 19:09:20', '2023-05-21 19:09:20'),
(107, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Orang dengan Gangguan Jiwa Berat', 1, 13, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-04-24', '2023-04-24', '-', 'Bendahara Pengeluaran Pembantu', 'Kunjungan Rumah Edukasi Keluarga untuk Perawatan dan Berobat Teratur pada Orang dengan Gangguan Jiwa (ODGJ)', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-21 19:21:30', '2023-05-21 19:21:30'),
(108, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Orang dengan Gangguan Jiwa Berat', 1, 13, 1, 1, 'Puskesmas Gondosari', 14, '1', '2023-04-25', '2023-04-25', '-', 'Bendahara Pengeluaran Pembantu', 'Pelaksanaan Skrining Masalah Kesehatan Jiwa UKBM', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-21 19:44:15', '2023-05-21 19:44:15');
INSERT INTO `instructions` (`id`, `kegiatan`, `sub_kegiatan`, `category_id`, `rekening_id`, `account_id`, `transport_id`, `t_berangkat`, `destination_id`, `lama`, `tgl_berangkat`, `tgl_pulang`, `ket`, `terima`, `sub_komponen`, `terbilang`, `jumlah`, `hadir`, `arahan`, `masalah`, `saran`, `lain`, `status`, `created_at`, `updated_at`) VALUES
(109, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Orang dengan Gangguan Jiwa Berat', 1, 13, 1, 1, 'Puskesmas Gondosari', 15, '1', '2023-04-26', '2023-04-26', '-', 'Bendahara Pengeluaran Pembantu', 'Pelaksanaan Skrining Masalah Kesehatan Jiwa UKBM', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-21 19:57:50', '2023-05-21 19:57:50'),
(110, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Jiwa dan Napza', 1, 5, 1, 1, 'Puskesmas Gondosari', 13, '1', '2023-04-27', '2023-04-27', '-', 'Bendahara Pengeluaran Pembantu', 'Pelaksanaan Skrining Masalah Kesehatan Jiwa UKBM', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-21 20:24:06', '2023-05-21 20:24:06'),
(111, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Jiwa dan Napza', 1, 14, 1, 1, 'Puskesmas Gondosari', 24, '1', '2023-05-01', '2023-05-01', '-', 'Bendahara Pengeluaran Pembantu', 'Pelaksanaan Skrining Masalah Kesehatan Jiwa UKBM', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-21 20:36:34', '2023-05-21 20:36:34'),
(112, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Jiwa dan Napza', 1, 14, 1, 1, 'Puskesmas Gondosari', 20, '1', '2023-05-02', '2023-05-02', '-', 'Bendahara Pengeluaran Pembantu', 'Pelaksanaan Skrining Masalah Kesehatan Jiwa UKBM', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-21 21:30:14', '2023-05-21 21:30:14'),
(113, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Jiwa dan Napza', 1, 14, 1, 1, 'Puskesmas Gondosari', 22, '1', '2023-05-06', '2023-05-06', '-', 'Bendahara Pengeluaran Pembantu', 'Pelaksanaan Skrining Masalah Kesehatan Jiwa UKBM', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-21 21:53:08', '2023-05-21 21:53:08'),
(114, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Jiwa dan Napza', 1, 14, 1, 1, 'Puskesmas Gondosari', 21, '1', '2023-05-07', '2023-05-07', '-', 'Bendahara Pengeluaran Pembantu', 'Pelaksanaan Skrining Masalah Kesehatan Jiwa UKBM', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-21 23:44:12', '2023-05-21 23:44:12'),
(115, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Jiwa dan Napza', 1, 14, 1, 1, 'Puskesmas Gondosari', 7, '1', '2023-05-08', '2023-05-08', '-', 'Bendahara Pengeluaran Pembantu', 'Pelaksanaan Skrining Masalah Kesehatan Jiwa UKBM', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-22 19:04:27', '2023-05-22 19:04:27'),
(116, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Jiwa dan Napza', 1, 14, 1, 1, 'Puskesmas Gondosari', 5, '1', '2023-05-09', '2023-05-09', '-', 'Bendahara Pengeluaran Pembantu', 'Pelaksanaan Skrining Masalah Kesehatan Jiwa UKBM', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-22 19:27:37', '2023-05-22 19:27:37'),
(117, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Jiwa dan Napza', 1, 14, 1, 1, 'Puskesmas Gondosari', 17, '1', '2023-05-15', '2023-05-15', '-', 'Bendahara Pengeluaran Pembantu', 'Pelaksanaan Skrining Masalah Kesehatan Jiwa UKBM', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-22 19:52:55', '2023-05-22 19:52:55'),
(118, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan pada Usia Pendidikan Dasar', 1, 5, 1, 1, 'Puskesmas Gondosari', 14, '1', '2023-05-23', '2023-05-23', '-', 'Bendahara Pengeluaran Pembantu', 'Pelaksanaan Skrining Kesehatan (termasuk jiwa) pada Anak USia Sekolah dan Remaja', 'DUA RATUS EMPAT PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-22 23:16:34', '2023-05-22 23:16:34'),
(119, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan pada Usia Pendidikan Dasar', 1, 5, 1, 1, 'Puskesmas Gondosari', 13, '1', '2023-05-24', '2023-05-24', '-', 'Bendahara Pengeluaran Pembantu', 'Pelaksanaan Skrining Kesehatan (termasuk jiwa) pada Anak USia Sekolah dan Remaja', 'DUA RATUS EMPAT PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-22 23:36:36', '2023-05-22 23:36:36'),
(120, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Surveilans Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-05-23', '2023-05-23', '-', 'Bendahara Pengeluaran Pembantu', 'Pelayanan Imunisasi Rutin', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-22 23:51:29', '2023-05-23 00:01:20'),
(121, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Investigasi Awal Kejadian Tidak Diharapkan (KIPI Imunisasi dan Pemberian Obat Massal)', 1, 6, 1, 1, 'Puskesmas Gondosari', 3, '1', '2023-05-25', '2023-05-25', '-', 'Bendahara Pengeluaran Pembantu', 'Surveilans KIPI (Imunisasi)', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-23 00:09:07', '2023-05-23 00:09:07'),
(122, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 4, '1', '2023-05-22', '2023-05-22', '-', 'Bendahara Pengeluaran Pembantu', 'Verifikasi Rumor (ILI)', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-23 18:11:40', '2023-05-23 18:11:40'),
(123, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 4, '1', '2023-05-22', '2023-05-22', '-', 'Bendahara Pengeluaran Pembantu', 'Verifikasi Rumor (ILI)', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-23 18:20:32', '2023-05-23 18:20:32'),
(124, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 4, '1', '2023-05-22', '2023-05-22', '-', 'Bendahara Pengeluaran Pembantu', 'Verifikasi Rumor (ILI)', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-23 18:32:25', '2023-05-23 18:32:25'),
(125, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 3, '1', '2023-05-23', '2023-05-23', '-', 'Bendahara Pengeluaran Pembantu', 'Verifikasi Rumor (ILI)', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-23 18:46:27', '2023-05-23 18:46:27'),
(126, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 3, '1', '2023-05-23', '2023-05-23', '-', 'Bendahara Pengeluaran Pembantu', 'Verifikasi Rumor (ILI)', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-23 19:18:17', '2023-05-23 19:18:17'),
(127, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 4, '1', '2023-05-23', '2023-05-23', '-', 'Bendahara Pengeluaran Pembantu', 'Verifikasi Rumor (ILI)', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-23 19:29:13', '2023-05-23 19:29:13'),
(128, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 4, '1', '2023-05-23', '2023-05-23', '-', 'Bendahara Pengeluaran Pembantu', 'Verifikasi Rumor (ILI)', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-23 20:51:11', '2023-05-23 20:51:11'),
(129, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 4, '1', '2023-05-24', '2023-05-24', '-', 'Bendahara Pengeluaran Pembantu', 'Verifikasi Rumor (ILI)', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-23 21:43:44', '2023-05-23 21:43:44'),
(130, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 3, '1', '2023-05-24', '2023-05-24', '-', 'Bendahara Pengeluaran Pembantu', 'Verifikasi Rumor (ILI)', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-23 21:53:08', '2023-05-23 21:53:08'),
(131, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-05-24', '2023-05-24', '-', 'Bendahara Pengeluaran Pembantu', 'Verifikasi Rumor (ILI)', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-23 22:01:01', '2023-05-23 22:01:01'),
(132, 'Penyedia Layanan Kesehatan untuk UKm dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelola Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-05-25', '2023-05-25', '-', 'Bendahara Pengeluaran Pembantu', 'Verifikasi Rumor ILI', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-24 20:50:38', '2023-05-24 20:50:38'),
(133, 'Penyedia Layanan Kesehatan untuk UKm dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelola Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-05-25', '2023-05-25', '-', 'Bendahara Pengeluaran Pembantu', 'Verifikasi Rumor ILI', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-24 21:40:57', '2023-05-24 21:40:57'),
(134, 'Penyedia Layanan Kesehatan untuk UKm dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelola Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 3, '1', '2023-05-25', '2023-05-25', '-', 'Bendahara Pengeluaran Pembantu', 'Verifikasi Rumor ILI', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-24 21:49:19', '2023-05-24 21:49:19'),
(135, 'Penyedia Layanan Kesehatan untuk UKm dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelola Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 3, '1', '2023-05-26', '2023-05-26', '-', 'Bendahara Pengeluaran Pembantu', 'Verifikasi Rumor ILI', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-24 22:00:02', '2023-05-24 22:00:02'),
(136, 'Penyedia Layanan Kesehatan untuk UKm dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelola Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-05-26', '2023-05-26', '-', 'Bendahara Pengeluaran Pembantu', 'Verifikasi Rumor ILI', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-24 22:07:34', '2023-05-24 22:07:34'),
(137, 'Penyedia Layanan Kesehatan untuk UKm dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelola Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-05-26', '2023-05-26', '-', 'Bendahara Pengeluaran Pembantu', 'Verifikasi Rumor ILI', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-24 22:14:25', '2023-05-24 22:14:25'),
(138, 'Penyedia Layanan Kesehatan untuk UKm dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelola Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 4, '1', '2023-05-27', '2023-05-27', '-', 'Bendahara Pengeluaran Pembantu', 'Verifikasi Rumor ILI', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-24 22:26:54', '2023-05-24 22:26:54'),
(139, 'Penyedia Layanan Kesehatan untuk UKm dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelola Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 4, '1', '2023-05-27', '2023-05-27', '-', 'Bendahara Pengeluaran Pembantu', 'Verifikasi Rumor ILI', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-24 22:48:23', '2023-05-24 22:48:23'),
(140, 'Penyedia Layanan Kesehatan untuk UKm dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelola Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 4, '1', '2023-05-29', '2023-05-29', '-', 'Bendahara Pengeluaran Pembantu', 'Verifikasi Rumor ILI', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-24 23:10:23', '2023-05-24 23:10:23'),
(141, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 4, '1', '2023-05-30', '2023-05-30', '-', 'Bendahara Pengeluaran Pembantu', 'Verifikasi Rumor (ILI)', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '--', '-', '-', '-', '2', '2023-05-25 18:27:28', '2023-05-25 18:39:00'),
(142, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 4, '1', '2023-05-30', '2023-05-30', '-', 'Bendahara Pengeluaran Pembantu', 'Verifikasi Rumor (ILI)', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-25 18:38:41', '2023-05-25 18:38:41'),
(143, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-05-31', '2023-05-31', '-', 'Bendahara Pengeluaran Pembantu', 'Verifikasi Rumor (ILI)', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-25 18:53:08', '2023-05-25 18:53:08'),
(144, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-05-31', '2023-05-31', '-', 'Bendahara Pengeluaran Pembantu', 'Verifikasi Rumor (ILI)', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-05-25 18:54:37', '2023-05-25 18:54:37'),
(145, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Balita', 1, 4, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-05-26', '2023-05-26', '-', 'Bendahara Pengeluaran Pembantu', 'Rujukan balita stunting atau gizi buruk', 'ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-12 21:19:05', '2023-06-12 21:19:05'),
(146, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Balita', 1, 4, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-05-29', '2023-05-29', '-', 'Bendahara Pengeluaran Pembantu', 'Rujukan balita stunting atau gizi buruk', 'ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-12 21:46:56', '2023-06-12 21:46:56'),
(147, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Balita', 1, 4, 1, 1, 'Puskesmas Gondosari', 3, '1', '2023-05-30', '2023-05-30', '-', 'Bendahara Pengeluaran Pembantu', 'Rujukan balita stunting atau gizi buruk', 'ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-12 21:58:07', '2023-06-12 21:58:07'),
(148, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Balita', 1, 4, 1, 1, 'Puskesmas Gondosari', 4, '1', '2023-05-18', '2023-05-18', '-', 'Bendahara Pengeluaran Pembantu', 'Rujukan balita stunting atau gizi buruk', 'ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-13 19:16:39', '2023-06-13 19:16:39'),
(149, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Balita', 1, 4, 1, 1, 'Puskesmas Gondosari', 4, '1', '2023-05-31', '2023-05-31', '-', 'Bendahara Pengeluaran Pembantu', 'Rujukan balita stunting atau gizi buruk', 'ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-13 19:27:56', '2023-06-13 19:27:56'),
(150, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Balita', 1, 4, 1, 1, 'Puskesmas Gondosari', 4, '1', '2023-05-21', '2023-05-21', '-', 'Bendahara Pengeluaran Pembantu', 'Rujukan balita stunting atau gizi buruk', 'ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-13 19:34:40', '2023-06-13 19:34:40'),
(151, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Balita', 1, 4, 1, 1, 'Puskesmas Gondosari', 4, '1', '2023-05-29', '2023-05-29', '-', 'Bendahara Pengeluaran Pembantu', 'Rujukan balita stunting atau gizi buruk', 'ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-13 19:43:38', '2023-06-13 19:43:38'),
(152, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Balita', 1, 4, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-05-01', '2023-05-01', '-', 'Bendahara Pengeluaran Pembantu', 'Rujukan balita stunting atau gizi buruk', 'ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-13 20:41:29', '2023-06-13 20:41:29'),
(153, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Balita', 1, 4, 1, 1, 'Desa Ploso', 46, '1', '2023-05-03', '2023-05-03', '-', 'Bendahara Pengeluaran Pembantu', 'Rujukan balita stunting atau gizi buruk', 'ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-13 20:50:14', '2023-06-13 20:50:14'),
(154, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Balita', 1, 4, 1, 1, 'Desa Ploso', 46, '1', '2023-05-04', '2023-05-04', '-', 'Bendahara Pengeluaran Pembantu', 'Rujukan balita stunting atau gizi buruk', 'ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-13 20:55:32', '2023-06-13 20:55:32'),
(155, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Balita', 1, 4, 1, 1, 'Desa Gondosari', 46, '1', '2023-05-07', '2023-05-07', '-', 'Bendahara Pengeluaran Pembantu', 'Rujukan balita stunting atau gizi buruk', 'ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-13 21:06:22', '2023-06-13 21:06:22'),
(156, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Balita', 1, 4, 1, 1, 'Desa Ploso', 46, '1', '2023-05-16', '2023-05-16', '-', 'Bendahara Pengeluaran Pembantu', 'Rujukan balita stunting atau gizi buruk', 'ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-13 21:19:09', '2023-06-13 21:19:09'),
(157, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Balita', 1, 4, 1, 1, 'Desa Ploso', 46, '1', '2023-05-17', '2023-05-17', '-', 'Bendahara Pengeluaran Pembantu', 'Rujukan balita stunting atau gizi buruk', 'ENAM PULUH RIBU RUPIAH', '0', '1', '-', '-', '-', '-', '2', '2023-06-14 19:18:28', '2023-06-14 19:18:28'),
(158, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Balita', 1, 4, 1, 1, 'Desa Ploso', 46, '1', '2023-05-18', '2023-05-18', '-', 'Bendahara Pengeluaran Pembantu', 'Rujukan balita stunting atau gizi buruk', 'ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-14 19:26:14', '2023-06-14 19:26:14'),
(159, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Balita', 1, 4, 1, 1, 'Desa Kebonsari', 46, '1', '2023-05-20', '2023-05-20', '-', 'Bendahara Pengeluaran Pembantu', 'Rujukan balita stunting atau gizi buruk', 'ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-14 19:34:57', '2023-06-14 19:34:57'),
(160, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan pelayanan kesehatan lingkungan', 1, 8, 1, 1, 'Puskesmas Gondosari', 3, '1', '2023-05-30', '2023-05-30', '-', 'Bendahara Pengeluaran Pembantu', 'Inspeksi kesling di sarana tempat dan fasilitas umum, sarana tempat pengelolaan pangan, sarana air minum, fasyankes', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-19 19:09:32', '2023-06-19 19:09:32'),
(161, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan pelayanan kesehatan lingkungan', 1, 8, 1, 1, 'Puskesmas Gondosari', 3, '1', '2023-05-31', '2023-05-31', '-', 'Bendahara Pengeluaran Pembantu', 'Inspeksi kesling di sarana tempat dan fasilitas umum, sarana tempat pengelolaan pangan, sarana air minum, fasyankes', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-19 19:20:05', '2023-06-19 19:20:05'),
(162, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan pelayanan kesehatan lingkungan', 1, 8, 1, 1, 'Puskesmas Gondosari', 3, '1', '2023-05-29', '2023-05-29', '-', 'Bendahara Pengeluaran Pembantu', 'Inspeksi kesling di sarana tempat dan fasilitas umum, sarana tempat pengelolaan pangan, sarana air minum, fasyankes', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-19 19:26:40', '2023-06-19 19:26:40'),
(163, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan pelayanan kesehatan lingkungan', 1, 8, 1, 1, 'Puskesmas Gondosari', 3, '1', '2023-05-30', '2023-05-30', '-', 'Bendahara Pengeluaran Pembantu', 'Inspeksi kesling di sarana tempat dan fasilitas umum, sarana tempat pengelolaan pangan, sarana air minum, fasyankes', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-19 19:34:10', '2023-06-19 19:34:10'),
(164, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan pelayanan kesehatan lingkungan', 1, 8, 1, 1, 'Puskesmas Gondosari', 3, '1', '2023-05-31', '2023-05-31', '-', 'Bendahara Pengeluaran Pembantu', 'Inspeksi kesling di sarana tempat dan fasilitas umum, sarana tempat pengelolaan pangan, sarana air minum, fasyankes', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-19 19:41:38', '2023-06-19 19:41:38'),
(165, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan pelayanan kesehatan lingkungan', 1, 8, 1, 1, 'Puskesmas Gondosari', 13, '1', '2023-05-06', '2023-05-06', '-', 'Bendahara Pengeluaran Pembantu', 'Inspeksi kesling di sarana tempat dan fasilitas umum, sarana tempat pengelolaan pangan, sarana air minum, fasyankes', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '--', '-', '2', '2023-06-19 19:51:08', '2023-06-19 19:51:08'),
(166, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan pelayanan kesehatan lingkungan', 1, 8, 1, 1, 'Puskesmas Gondosari', 14, '1', '2023-05-13', '2023-05-13', '-', 'Bendahara Pengeluaran Pembantu', 'Inspeksi kesling di sarana tempat dan fasilitas umum, sarana tempat pengelolaan pangan, sarana air minum, fasyankes', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-19 19:59:56', '2023-06-19 19:59:56'),
(167, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 5, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-05-19', '2023-05-19', '-', 'Bendahara Pengeluaran Pembantu', 'Deteksi dini/Skrining faktor risiko dan PTM prioritas di masyarakat dan institusi', 'TIGA RATUS ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-19 21:50:20', '2023-06-19 21:50:20'),
(168, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 5, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-05-22', '2023-05-22', '-', 'Bendahara Pengeluaran Pembantu', 'Deteksi dini/Skrining faktor risiko dan PTM prioritas di masyarakat dan institusi', 'TIGA RATUS ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-19 23:01:45', '2023-06-19 23:01:45'),
(169, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 5, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-05-29', '2023-05-29', '-', 'Bendahara Pengeluaran Pembantu', 'Deteksi dini/Skrining faktor risiko dan PTM prioritas di masyarakat dan institusi', 'TIGA RATUS ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-19 23:15:38', '2023-06-19 23:15:38'),
(170, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan pada Usia Pendidikan Dasar', 1, 5, 1, 1, 'Puskesmas Gondosari', 8, '1', '2023-05-09', '2023-05-09', '-', 'Bendahara Pengeluaran Pembantu', 'Pelaksanaan Skrining Kesehatan (termasuk jiwa) pada Anak USia Sekolah dan Remaja', 'DUA RATUS EMPAT PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-20 18:22:40', '2023-06-20 18:22:40'),
(171, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan pada Usia Pendidikan Dasar', 1, 5, 1, 1, 'Puskesmas Gondosari', 8, '1', '2023-05-10', '2023-05-10', '-', 'Bendahara Pengeluaran Pembantu', 'Pelaksanaan Skrining Kesehatan (termasuk jiwa) pada Anak USia Sekolah dan Remaja', 'DUA RATUS EMPAT PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-20 18:33:29', '2023-06-20 18:34:54'),
(172, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan pada Usia Pendidikan Dasar', 1, 5, 1, 1, 'Puskesmas Gondosari', 8, '1', '2023-05-05', '2023-05-05', '-', 'Bendahara Pengeluaran Pembantu', 'Pelaksanaan Skrining Kesehatan (termasuk jiwa) pada Anak USia Sekolah dan Remaja', 'DUA RATUS EMPAT PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-20 18:43:32', '2023-06-20 18:43:32'),
(173, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan pada Usia Pendidikan Dasar', 1, 5, 1, 1, 'Puskesmas Gondosari', 8, '1', '2023-05-08', '2023-05-08', '-', 'Bendahara Pengeluaran Pembantu', 'Pelaksanaan Skrining Kesehatan (termasuk jiwa) pada Anak USia Sekolah dan Remaja', 'DUA RATUS EMPAT PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-20 18:52:15', '2023-06-20 18:52:15'),
(174, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 5, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-05-15', '2023-05-15', '-', 'Bendahara Pengeluaran Pembantu', 'Deteksi dini/Skrining faktor risiko dan PTM prioritas di masyarakat dan institusi', 'TIGA RATUS ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-20 19:19:12', '2023-06-20 19:19:12'),
(175, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan pada Usia Pendidikan Dasar', 1, 5, 1, 1, 'Puskesmas Gondosari', 17, '1', '2023-05-02', '2023-05-02', '-', 'Bendahara Pengeluaran Pembantu', 'Pelaksanaan Skrining Kesehatan (termasuk jiwa) pada Anak USia Sekolah dan Remaja', 'DUA RATUS EMPAT PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-20 19:44:37', '2023-06-20 19:44:37'),
(176, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan pada Usia Pendidikan Dasar', 1, 5, 1, 1, 'Puskesmas Gondosari', 17, '1', '2023-05-03', '2023-05-03', '-', 'Bendahara Pengeluaran Pembantu', 'Pelaksanaan Skrining Kesehatan (termasuk jiwa) pada Anak USia Sekolah dan Remaja', 'DUA RATUS EMPAT PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-20 19:57:29', '2023-06-20 19:57:29'),
(177, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Balita', 1, 4, 1, 1, 'Desa Ploso', 46, '1', '2023-06-05', '2023-06-05', '-', 'Bendahara Pengeluaran Pembantu', 'Rujukan balita stunting atau gizi buruk', 'ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-20 20:19:02', '2023-06-20 20:19:02'),
(178, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Balita', 1, 4, 1, 1, 'Desa Gondosari', 46, '1', '2023-06-05', '2023-06-05', '-', 'Bendahara Pengeluaran Pembantu', 'Rujukan balita stunting atau gizi buruk', 'ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-20 20:24:48', '2023-06-20 20:24:48'),
(179, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Balita', 1, 4, 1, 1, 'Desa Tinatar', 46, '1', '2023-06-06', '2023-06-06', '-', 'Bendahara Pengeluaran Pembantu', 'Rujukan balita stunting atau gizi buruk', 'ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-20 20:41:15', '2023-06-20 20:41:15'),
(180, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Balita', 1, 4, 1, 1, 'Desa Kebonsari', 46, '1', '2023-06-06', '2023-06-06', '-', 'Bendahara Pengeluaran Pembantu', 'Rujukan balita stunting atau gizi buruk', 'ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-20 20:45:36', '2023-06-20 20:45:36'),
(181, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Balita', 1, 4, 1, 1, 'Desa Ploso', 46, '1', '2023-06-07', '2023-06-07', '-', 'Bendahara Pengeluaran Pembantu', 'Rujukan balita stunting atau gizi buruk', 'ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-20 20:49:41', '2023-06-20 20:49:41'),
(182, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Balita', 1, 4, 1, 1, 'Desa Gondosari', 46, '1', '2023-06-07', '2023-06-07', '-', 'Bendahara Pengeluaran Pembantu', 'Rujukan balita stunting atau gizi buruk', 'ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-20 20:54:26', '2023-06-20 20:54:26'),
(183, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan pada Usia Pendidikan Dasar', 1, 5, 1, 1, 'Puskesmas Gondosari', 18, '1', '2023-05-04', '2023-05-04', '-', 'Bendahara Pengeluaran Pembantu', 'Pelaksanaan Skrining Kesehatan (termasuk jiwa) pada Anak USia Sekolah dan Remaja', 'DUA RATUS EMPAT PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-20 21:10:51', '2023-06-20 21:10:51'),
(184, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan pada Usia Pendidikan Dasar', 1, 5, 1, 1, 'Puskesmas Gondosari', 18, '1', '2023-05-22', '2023-05-22', '-', 'Bendahara Pengeluaran Pembantu', 'Pelaksanaan Skrining Kesehatan (termasuk jiwa) pada Anak USia Sekolah dan Remaja', 'DUA RATUS EMPAT PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-20 21:20:30', '2023-07-19 18:57:16'),
(185, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan pada Usia Pendidikan Dasar', 1, 5, 1, 1, 'Puskesmas Gondosari', 17, '1', '2023-05-20', '2023-05-20', '-', 'Bendahara Pengeluaran Pembantu', 'Pelaksanaan Skrining Kesehatan (termasuk jiwa) pada Anak USia Sekolah dan Remaja', 'DUA RATUS EMPAT PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-21 18:28:47', '2023-07-19 19:10:03'),
(186, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan pada Usia Pendidikan Dasar', 1, 5, 1, 1, 'Puskesmas Gondosari', 11, '1', '2023-05-25', '2023-05-25', '-', 'Bendahara Pengeluaran Pembantu', 'Pelaksanaan Skrining Kesehatan (termasuk jiwa) pada Anak USia Sekolah dan Remaja', 'DUA RATUS EMPAT PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-21 18:41:02', '2023-06-21 18:41:02'),
(187, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan pada Usia Pendidikan Dasar', 1, 5, 1, 1, 'Puskesmas Gondosari', 18, '1', '2023-05-19', '2023-05-19', '-', 'Bendahara Pengeluaran Pembantu', 'Pelaksanaan Skrining Kesehatan (termasuk jiwa) pada Anak USia Sekolah dan Remaja', 'DUA RATUS EMPAT PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-21 18:53:13', '2023-07-17 21:46:13'),
(188, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan pada Usia Pendidikan Dasar', 1, 5, 1, 1, 'Puskesmas Gondosari', 16, '1', '2023-05-27', '2023-05-27', '-', 'Bendahara Pengeluaran Pembantu', 'Pelaksanaan Skrining Kesehatan (termasuk jiwa) pada Anak USia Sekolah dan Remaja', 'DUA RATUS EMPAT PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-21 19:03:13', '2023-06-21 19:03:13'),
(189, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan pada Usia Pendidikan Dasar', 1, 5, 1, 1, 'Puskesmas Gondosari', 15, '1', '2023-05-29', '2023-05-29', '-', 'Bendahara Pengeluaran Pembantu', 'Pelaksanaan Skrining Kesehatan (termasuk jiwa) pada Anak USia Sekolah dan Remaja', 'DUA RATUS EMPAT PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-21 19:11:04', '2023-06-21 19:14:52'),
(190, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan pada Usia Pendidikan Dasar', 1, 5, 1, 1, 'Puskesmas Gondosari', 16, '1', '2023-05-31', '2023-05-31', '-', 'Bendahara Pengeluaran Pembantu', 'Pelaksanaan Skrining Kesehatan (termasuk jiwa) pada Anak USia Sekolah dan Remaja', 'DUA RATUS EMPAT PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-21 19:41:37', '2023-06-21 19:41:37'),
(191, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan pada Usia Pendidikan Dasar', 1, 5, 1, 1, 'Puskesmas Gondosari', 16, '1', '2023-05-30', '2023-05-30', '-', 'Bendahara Pengeluaran Pembantu', 'Pelaksanaan Skrining Kesehatan (termasuk jiwa) pada Anak USia Sekolah dan Remaja', 'DUA RATUS EMPAT PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-21 19:51:02', '2023-06-21 19:51:02'),
(192, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan pada Usia Pendidikan Dasar', 1, 5, 1, 1, 'Puskesmas Gondosari', 15, '1', '2023-05-18', '2023-05-18', '-', 'Bendahara Pengeluaran Pembantu', 'Pelaksanaan Skrining Kesehatan (termasuk jiwa) pada Anak USia Sekolah dan Remaja', 'DUA RATUS EMPAT PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-21 20:02:13', '2023-06-21 20:02:13'),
(193, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan pada Usia Pendidikan Dasar', 1, 5, 1, 1, 'Puskesmas Gondosari', 15, '1', '2023-05-17', '2023-05-17', '-', 'Bendahara Pengeluaran Pembantu', 'Pelaksanaan Skrining Kesehatan (termasuk jiwa) pada Anak USia Sekolah dan Remaja', 'DUA RATUS EMPAT PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-21 20:12:53', '2023-06-21 20:12:53'),
(194, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan pada Usia Pendidikan Dasar', 1, 5, 1, 1, 'Puskesmas Gondosari', 16, '1', '2023-05-16', '2023-05-16', '-', 'Bendahara Pengeluaran Pembantu', 'Pelaksanaan Skrining Kesehatan (termasuk jiwa) pada Anak USia Sekolah dan Remaja', 'DUA RATUS EMPAT PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-21 20:21:43', '2023-06-21 20:21:43'),
(195, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Balita', 1, 4, 1, 1, 'Desa Tinatar', 46, '1', '2023-06-07', '2023-06-07', '-', 'Bendahara Pengeluaran Pembantu', 'Rujukan balita stunting atau gizi buruk', 'ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-21 21:20:16', '2023-06-21 21:20:16'),
(196, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Balita', 1, 4, 1, 1, 'Desa Kebonsari', 46, '1', '2023-06-07', '2023-06-07', '-', 'Bendahara Pengeluaran Pembantu', 'Rujukan balita stunting atau gizi buruk', 'ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-21 21:24:50', '2023-06-21 21:24:50'),
(197, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Balita', 1, 4, 1, 1, 'Desa Ploso', 46, '1', '2023-06-08', '2023-06-08', '-', 'Bendahara Pengeluaran Pembantu', 'Rujukan balita stunting atau gizi buruk', 'ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-21 21:28:51', '2023-06-21 21:28:51'),
(198, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Balita', 1, 4, 1, 1, 'Desa Gondosari', 46, '1', '2023-06-08', '2023-06-08', '-', 'Bendahara Pengeluaran Pembantu', 'Rujukan balita stunting atau gizi buruk', 'ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '--', '-', '2', '2023-06-21 21:32:44', '2023-06-21 21:32:44'),
(199, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Balita', 1, 4, 1, 1, 'Desa Tinatar', 46, '1', '2023-06-09', '2023-06-09', '-', 'Bendahara Pengeluaran Pembantu', 'Rujukan balita stunting atau gizi buruk', 'ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-21 21:37:43', '2023-06-21 21:37:43'),
(200, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Balita', 1, 4, 1, 1, 'Desa Ploso', 46, '1', '2023-06-09', '2023-06-09', '-', 'Bendahara Pengeluaran Pembantu', 'Rujukan balita stunting atau gizi buruk', 'ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-21 21:43:02', '2023-06-21 21:43:02'),
(201, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Balita', 1, 4, 1, 1, 'Desa Gondosari', 46, '1', '2023-06-12', '2023-06-12', '-', 'Bendahara Pengeluaran Pembantu', 'Rujukan balita stunting atau gizi buruk', 'ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-21 21:49:08', '2023-06-21 21:49:08'),
(202, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-04-17', '2023-04-17', '-', 'Bendahara Pengeluaran Pembantu', 'Verifikasi Rumor (ILI)', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-25 18:21:50', '2023-06-25 18:21:50'),
(203, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-04-24', '2023-04-24', '-', 'Bendahara Pengeluaran Pembantu', 'Verifikasi Rumor (ILI)', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-25 18:37:26', '2023-06-25 18:37:26'),
(204, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 3, '1', '2023-05-26', '2023-05-26', '-', 'Bendahara Pengeluaran Pembantu', 'Verifikasi Rumor (ILI)', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-25 18:52:44', '2023-06-25 18:52:44'),
(205, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 3, '1', '2023-05-25', '2023-05-25', '-', 'Bendahara Pengeluaran Pembantu', 'Verifikasi Rumor (ILI)', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-25 19:01:05', '2023-06-25 19:01:05'),
(206, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-05-25', '2023-05-25', '-', 'Bendahara Pengeluaran Pembantu', 'Verifikasi Rumor (ILI)', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-25 19:08:35', '2023-06-25 19:08:35'),
(207, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-04-25', '2023-04-25', '-', 'Bendahara Pengeluaran Pembantu', 'Penyelidikan Epidemiologi (PE) Leptospirosis Dusun Bubakan', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-25 19:16:31', '2023-06-25 19:16:31'),
(208, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 3, '1', '2023-04-28', '2023-04-28', '-', 'Bendahara Pengeluaran Pembantu', 'Penyelidikan Epidemiologi (PE) DBD Dusun Krajan', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-25 19:31:41', '2023-06-25 19:31:41'),
(209, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Balita', 1, 4, 1, 1, 'Desa Gondosari', 46, '1', '2023-06-13', '2023-06-13', '-', 'Bendahara Pengeluaran Pembantu', 'Rujukan balita stunting atau gizi buruk', 'ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-25 19:58:00', '2023-06-25 19:58:00'),
(210, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Balita', 1, 4, 1, 1, 'Desa Gondosari', 46, '1', '2023-06-12', '2023-06-12', '-', 'Bendahara Pengeluaran Pembantu', 'Rujukan balita stunting atau gizi buruk', 'ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-25 20:03:26', '2023-06-25 20:03:26'),
(211, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Balita', 1, 4, 1, 1, 'Desa Ploso', 46, '1', '2023-06-13', '2023-06-13', '-', 'Bendahara Pengeluaran Pembantu', 'Rujukan balita stunting atau gizi buruk', 'ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-25 20:08:16', '2023-06-25 20:08:16'),
(212, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Balita', 1, 4, 1, 1, 'Desa Gondosari', 46, '1', '2023-06-14', '2023-06-14', '-', 'Bendahara Pengeluaran Pembantu', 'Rujukan balita stunting atau gizi buruk', 'ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-25 20:12:20', '2023-06-25 20:12:20'),
(213, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Balita', 1, 4, 1, 1, 'Desa Ploso', 46, '1', '2023-06-14', '2023-06-14', '-', 'Bendahara Pengeluaran Pembantu', 'Rujukan balita stunting atau gizi buruk', 'ENAM PULUH RIBU RUPIAH', '0', '1', '-', '-', '-', '-', '2', '2023-06-25 20:17:33', '2023-06-25 20:17:33'),
(214, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Balita', 1, 4, 1, 1, 'Desa Tinatar', 46, '1', '2023-06-14', '2023-06-14', '-', 'Bendahara Pengeluaran Pembantu', 'Rujukan balita stunting atau gizi buruk', 'ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-25 20:22:48', '2023-06-25 20:22:48'),
(215, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Balita', 1, 4, 1, 1, 'Desa Kebonsari', 46, '1', '2023-06-14', '2023-06-14', '-', 'Bendahara Pengeluaran Pembantu', 'Rujukan balita stunting atau gizi buruk', 'ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-25 20:34:17', '2023-06-25 20:34:17'),
(216, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-06-01', '2023-06-01', '-', 'Bendahara Pengeluaran Pembantu', 'Deteksi dini/Skrining faktor risiko dan PTM prioritas di masyarakat dan institusi', 'TIGA RATUS ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-25 21:39:07', '2023-06-25 21:39:07'),
(217, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-06-02', '2023-06-02', '-', 'Bendahara Pengeluaran Pembantu', 'Deteksi dini/Skrining faktor risiko dan PTM prioritas di masyarakat dan institusi', 'TIGA RATUS ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-25 21:42:24', '2023-06-25 21:42:24'),
(218, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-06-03', '2023-06-03', '-', 'Bendahara Pengeluaran Pembantu', 'Deteksi dini/Skrining faktor risiko dan PTM prioritas di masyarakat dan institusi', 'TIGA RATUS ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-25 21:45:12', '2023-06-25 21:45:12'),
(219, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-06-05', '2023-06-05', '-', 'Bendahara Pengeluaran Pembantu', 'Deteksi dini/Skrining faktor risiko dan PTM prioritas di masyarakat dan institusi', 'TIGA RATUS ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-25 21:47:56', '2023-06-25 21:47:56'),
(220, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-06-06', '2023-06-06', '-', 'Bendahara Pengeluaran Pembantu', 'Deteksi dini/Skrining faktor risiko dan PTM prioritas di masyarakat dan institusi', 'TIGA RATUS ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-25 21:53:49', '2023-06-25 21:53:49'),
(221, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-06-07', '2023-06-07', '-', 'Bendahara Pengeluaran Pembantu', 'Deteksi dini/Skrining faktor risiko dan PTM prioritas di masyarakat dan institusi', 'TIGA RATUS ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-25 21:56:09', '2023-06-25 21:56:09'),
(222, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 3, '1', '2023-06-09', '2023-06-09', '-', 'Bendahara Pengeluaran Pembantu', 'Deteksi dini/Skrining faktor risiko dan PTM prioritas di masyarakat dan institusi', 'TIGA RATUS ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-25 22:09:44', '2023-06-25 22:09:44'),
(223, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 3, '1', '2023-06-12', '2023-06-12', '-', 'Bendahara Pengeluaran Pembantu', 'Deteksi dini/Skrining faktor risiko dan PTM prioritas di masyarakat dan institusi', 'TIGA RATUS ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-26 20:37:39', '2023-06-26 20:37:39');
INSERT INTO `instructions` (`id`, `kegiatan`, `sub_kegiatan`, `category_id`, `rekening_id`, `account_id`, `transport_id`, `t_berangkat`, `destination_id`, `lama`, `tgl_berangkat`, `tgl_pulang`, `ket`, `terima`, `sub_komponen`, `terbilang`, `jumlah`, `hadir`, `arahan`, `masalah`, `saran`, `lain`, `status`, `created_at`, `updated_at`) VALUES
(224, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 4, '1', '2023-06-13', '2023-06-13', '-', 'Bendahara Pengeluaran Pembantu', 'Deteksi dini/Skrining faktor risiko dan PTM prioritas di masyarakat dan institusi Posbindu Bunda Ceria', 'TIGA RATUS ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-26 20:48:05', '2023-06-26 20:48:05'),
(225, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-06-14', '2023-06-14', '-', 'Bendahara Pengeluaran Pembantu', 'Deteksi dini/Skrining faktor risiko dan PTM prioritas di masyarakat dan institusi Posbindu Anggrek', 'TIGA RATUS ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-26 21:05:00', '2023-06-26 21:05:00'),
(226, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-06-15', '2023-06-15', '-', 'Bendahara Pengeluaran Pembantu', 'Deteksi dini/Skrining faktor risiko dan PTM prioritas di masyarakat dan institusi Posbindu Anggrek', 'TIGA RATUS ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-26 21:07:44', '2023-06-26 21:07:44'),
(227, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-06-19', '2023-06-19', '-', 'Bendahara Pengeluaran Pembantu', 'Deteksi dini/Skrining faktor risiko dan PTM prioritas di masyarakat dan institusi Posbindu Anggrek', 'TIGA RATUS ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-26 21:11:39', '2023-06-26 21:11:39'),
(228, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 46, '1', '2023-06-20', '2023-06-20', '-', 'Bendahara Pengeluaran Pembantu', 'Deteksi dini/Skrining faktor risiko dan PTM prioritas di masyarakat dan institusi', 'TIGA RATUS ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-26 21:14:26', '2023-06-26 21:14:26'),
(229, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-06-21', '2023-06-21', '-', 'Bendahara Pengeluaran Pembantu', 'Deteksi dini/Skrining faktor risiko dan PTM prioritas di masyarakat dan institusi Posbindu Cantik', 'TIGA RATUS ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-26 21:25:40', '2023-06-26 21:25:40'),
(230, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-06-22', '2023-06-22', '-', 'Bendahara Pengeluaran Pembantu', 'Deteksi dini/Skrining faktor risiko dan PTM prioritas di masyarakat dan institusi', 'TIGA RATUS ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-26 21:30:12', '2023-06-26 21:30:12'),
(231, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 3, '1', '2023-06-23', '2023-06-23', '-', 'Bendahara Pengeluaran Pembantu', 'Deteksi dini/Skrining faktor risiko dan PTM prioritas di masyarakat dan institusi', 'TIGA RATUS ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-26 21:33:12', '2023-06-26 21:33:12'),
(232, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 3, '1', '2023-06-24', '2023-06-24', '-', 'Bendahara Pengeluaran Pembantu', 'Deteksi dini/Skrining faktor risiko dan PTM prioritas di masyarakat dan institusi Posbindu Tinoto Sehat', 'TIGA RATUS ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-26 21:36:04', '2023-06-26 21:36:04'),
(233, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 4, '1', '2023-06-27', '2023-06-27', '-', 'Bendahara Pengeluaran Pembantu', 'Deteksi dini/Skrining faktor risiko dan PTM prioritas di masyarakat dan institusi', 'TIGA RATUS ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-06-26 21:38:27', '2023-06-26 21:38:27'),
(234, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan pelayanan kesehatan lingkungan', 1, 8, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-06-02', '2023-06-02', '-', 'Bendahara Pengeluaran Pembantu', 'Inspeksi kesling di sarana tempat dan fasilitas umum, sarana tempat pengelolaan pangan, sarana air minum, fasyankes  Dusun Klasen', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-07-02 19:48:02', '2023-07-02 19:48:02'),
(235, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan pelayanan kesehatan lingkungan', 1, 8, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-06-05', '2023-06-05', '-', 'Bendahara Pengeluaran Pembantu', 'Inspeksi kesling di sarana tempat dan fasilitas umum, sarana tempat pengelolaan pangan, sarana air minum, fasyankes  Dusun Puguh', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-07-02 19:51:31', '2023-07-02 19:51:31'),
(236, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan pelayanan kesehatan lingkungan', 1, 8, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-06-06', '2023-06-06', '-', 'Bendahara Pengeluaran Pembantu', 'Inspeksi kesling di sarana tempat dan fasilitas umum, sarana tempat pengelolaan pangan, sarana air minum, fasyankes  Dusun Nongko', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-07-02 19:53:35', '2023-07-02 19:53:35'),
(237, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan pelayanan kesehatan lingkungan', 1, 8, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-06-08', '2023-06-08', '-', 'Bendahara Pengeluaran Pembantu', 'Inspeksi kesling di sarana tempat dan fasilitas umum, sarana tempat pengelolaan pangan, sarana air minum, fasyankes Dusun Plumbungan', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-07-02 19:59:21', '2023-07-02 19:59:21'),
(238, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan pelayanan kesehatan lingkungan', 1, 8, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-06-09', '2023-06-09', '-', 'Bendahara Pengeluaran Pembantu', 'Inspeksi kesling di sarana tempat dan fasilitas umum, sarana tempat pengelolaan pangan, sarana air minum, fasyankes Dusun Kalimojo', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-07-02 20:03:36', '2023-07-02 20:03:36'),
(239, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan pelayanan kesehatan lingkungan', 1, 8, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-06-10', '2023-06-10', '-', 'Bendahara Pengeluaran Pembantu', 'Inspeksi kesling di sarana tempat dan fasilitas umum, sarana tempat pengelolaan pangan, sarana air minum, fasyankes  Dusun Krajan', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-07-02 20:24:31', '2023-07-02 20:24:31'),
(240, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan pelayanan kesehatan lingkungan', 1, 8, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-06-12', '2023-06-12', '-', 'Bendahara Pengeluaran Pembantu', 'Inspeksi kesling di sarana tempat dan fasilitas umum, sarana tempat pengelolaan pangan, sarana air minum, fasyankes Dusun Bungur', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-07-02 20:36:47', '2023-07-02 20:36:47'),
(241, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan pelayanan kesehatan lingkungan', 1, 8, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-06-13', '2023-06-13', '-', 'Bendahara Pengeluaran Pembantu', 'Inspeksi kesling di sarana tempat dan fasilitas umum, sarana tempat pengelolaan pangan, sarana air minum, fasyankes', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-07-02 20:40:52', '2023-07-02 20:40:52'),
(242, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan pelayanan kesehatan lingkungan', 1, 8, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-06-14', '2023-06-14', '-', 'Bendahara Pengeluaran Pembantu', 'Inspeksi kesling di sarana tempat dan fasilitas umum, sarana tempat pengelolaan pangan, sarana air minum, fasyankes  Dusun Tekil', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-07-02 20:43:27', '2023-07-02 20:43:27'),
(243, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan pelayanan kesehatan lingkungan', 1, 8, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-06-15', '2023-06-15', '-', 'Bendahara Pengeluaran Pembantu', 'Inspeksi kesling di sarana tempat dan fasilitas umum, sarana tempat pengelolaan pangan, sarana air minum, fasyankes Dusun Weru', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '--', '-', '-', '-', '2', '2023-07-02 20:48:33', '2023-07-02 20:48:33'),
(244, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan pelayanan kesehatan lingkungan', 1, 8, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-06-16', '2023-06-16', '-', 'Bendahara Pengeluaran Pembantu', 'Inspeksi kesling di sarana tempat dan fasilitas umum, sarana tempat pengelolaan pangan, sarana air minum, fasyankes', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-07-02 20:50:19', '2023-07-02 20:50:19'),
(245, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan pelayanan kesehatan lingkungan', 1, 8, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-06-19', '2023-06-19', '-', 'Bendahara Pengeluaran Pembantu', 'Inspeksi kesling di sarana tempat dan fasilitas umum, sarana tempat pengelolaan pangan, sarana air minum, fasyankes Dusun Ploso', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-07-02 20:52:15', '2023-07-02 20:52:15'),
(246, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan pelayanan kesehatan lingkungan', 1, 8, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-06-20', '2023-06-20', '-', 'Bendahara Pengeluaran Pembantu', 'Inspeksi kesling di sarana tempat dan fasilitas umum, sarana tempat pengelolaan pangan, sarana air minum, fasyankes Dusun Pacing', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-07-02 20:53:49', '2023-07-02 20:53:49'),
(247, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan pelayanan kesehatan lingkungan', 1, 8, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-06-21', '2023-06-21', '-', 'Bendahara Pengeluaran Pembantu', 'Inspeksi kesling di sarana tempat dan fasilitas umum, sarana tempat pengelolaan pangan, sarana air minum, fasyankes', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-07-02 20:55:12', '2023-07-02 20:55:12'),
(248, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan pelayanan kesehatan lingkungan', 1, 8, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-06-22', '2023-06-22', '-', 'Bendahara Pengeluaran Pembantu', 'Inspeksi kesling di sarana tempat dan fasilitas umum, sarana tempat pengelolaan pangan, sarana air minum, fasyankes', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-07-02 21:02:22', '2023-07-02 21:02:22'),
(249, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan pelayanan kesehatan lingkungan', 1, 8, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-06-23', '2023-06-23', '-', 'Bendahara Pengeluaran Pembantu', 'Inspeksi kesling di sarana tempat dan fasilitas umum, sarana tempat pengelolaan pangan, sarana air minum, fasyankes Dusun Pundung', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-07-02 21:04:44', '2023-07-02 21:04:44'),
(250, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan pelayanan kesehatan lingkungan', 1, 8, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-06-26', '2023-06-26', '-', 'Bendahara Pengeluaran Pembantu', 'Inspeksi kesling di sarana tempat dan fasilitas umum, sarana tempat pengelolaan pangan, sarana air minum, fasyankes Dusun SUlang', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '--', '-', '2', '2023-07-02 21:32:44', '2023-07-02 21:32:44'),
(251, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan pelayanan kesehatan lingkungan', 1, 8, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-06-27', '2023-06-27', '-', 'Bendahara Pengeluaran Pembantu', 'Inspeksi kesling di sarana tempat dan fasilitas umum, sarana tempat pengelolaan pangan, sarana air minum, fasyankes Dusun Kepuh', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-07-02 21:34:20', '2023-07-02 21:34:20'),
(252, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan pelayanan kesehatan lingkungan', 1, 8, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-06-28', '2023-06-28', '-', 'Bendahara Pengeluaran Pembantu', 'Inspeksi kesling di sarana tempat dan fasilitas umum, sarana tempat pengelolaan pangan, sarana air minum, fasyankes Dusun Duwet', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-07-02 21:36:15', '2023-07-02 21:36:15'),
(253, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan pelayanan kesehatan lingkungan', 1, 8, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-06-30', '2023-06-30', '-', 'Bendahara Pengeluaran Pembantu', 'Inspeksi kesling di sarana tempat dan fasilitas umum, sarana tempat pengelolaan pangan, sarana air minum, fasyankes Dusun Bandulan', 'SERATUS DELAPAN PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-07-02 21:37:46', '2023-07-02 21:37:46'),
(254, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-02-22', '2023-02-22', '-', 'Bendahara Pengeluaran Pembantu', 'Deteksi dini/Skrining faktor risiko dan PTM prioritas di masyarakat dan institusi', 'TIGA RATUS ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-07-05 19:39:00', '2023-07-05 19:39:00'),
(255, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-02-27', '2023-02-27', '-', 'Bendahara Pengeluaran Pembantu', 'Deteksi dini/Skrining faktor risiko dan PTM prioritas di masyarakat dan institusi', 'TIGA RATUS ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-07-05 20:29:08', '2023-07-05 20:29:08'),
(256, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-02-23', '0223-02-23', '-', 'Bendahara Pengeluaran Pembantu', 'Deteksi dini/Skrining faktor risiko dan PTM prioritas di masyarakat dan institusi', 'TIGA RATUS ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-07-05 20:52:06', '2023-07-05 20:52:06'),
(257, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pelayanan kesehatan ibu hamil', 1, 5, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-06-06', '2023-06-06', '-', 'Bendahara Pengeluaran Pembantu', 'Kunjungan Pembinaan Pelayanan ANC', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-07-12 20:50:36', '2023-07-19 19:09:05'),
(258, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-07-02', '2023-07-02', '-', 'Bendahara Pengeluaran Pembantu', 'Penemuan Kasus Hepatitis B pada Bayi Usia 9-12 bulan', 'ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-07-16 18:32:50', '2023-07-16 18:33:43'),
(259, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 4, '1', '2023-07-03', '2023-07-03', '-', 'Bendahara Pengeluaran Pembantu', 'Penemuan Kasus Hepatitis B pada Bayi Usia 9-12 bulan', 'ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-07-16 18:35:48', '2023-07-16 18:35:48'),
(260, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-07-04', '2023-07-04', '-', 'Bendahara Pengeluaran Pembantu', 'Penemuan Kasus Hepatitis B pada Bayi Usia 9-12 bulan', 'ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-07-16 18:37:17', '2023-07-16 18:37:17'),
(261, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 3, '1', '2023-07-05', '2023-07-05', '-', 'Bendahara Pengeluaran Pembantu', 'Penemuan Kasus Hepatitis B pada Bayi Usia 9-12 bulan', 'ENAM PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-07-16 18:38:47', '2023-07-16 18:38:47'),
(262, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-07-06', '2023-07-06', '-', 'Bendahara Pengeluaran Pembantu', 'Penyemprotan Fogging dan Larvasida DBD', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-07-16 20:03:27', '2023-07-16 20:03:27'),
(263, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-07-07', '2023-07-07', '-', 'Bendahara Pengeluaran Pembantu', 'Penyemprotan Fogging dan Larvasida DBD', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-07-16 20:05:13', '2023-07-16 20:05:13'),
(264, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 3, '1', '2023-07-08', '2023-07-08', '-', 'Bendahara Pengeluaran Pembantu', 'Penyemprotan Fogging dan Larvasida DBD', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-07-16 20:07:01', '2023-07-16 20:07:01'),
(265, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 4, '1', '2023-07-10', '2023-07-10', '-', 'Bendahara Pengeluaran Pembantu', 'Penyemprotan Fogging dan Larvasida DBD', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '--', '-', '-', '2', '2023-07-16 20:23:33', '2023-07-16 20:23:33'),
(266, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-07-11', '2023-07-11', '-', 'Bendahara Pengeluaran Pembantu', 'Pelaksanaan pemberantasan sarang nyamuk (PSN)', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-07-16 20:25:32', '2023-07-16 20:32:11'),
(267, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-07-12', '2023-07-12', '-', 'Bendahara Pengeluaran Pembantu', 'Pelaksanaan pemberantasan sarang nyamuk (PSN)', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-07-16 20:27:31', '2023-07-16 20:32:40'),
(268, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-07-13', '2023-07-13', '-', 'Bendahara Pengeluaran Pembantu', 'Pelaksanaan pemberantasan sarang nyamuk (PSN)', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-07-16 20:30:36', '2023-07-16 20:33:24'),
(269, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-07-15', '2023-07-15', '-', 'Bendahara Pengeluaran Pembantu', 'Pelaksanaan pemberantasan sarang nyamuk (PSN)', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-07-16 20:41:00', '2023-07-16 20:41:00'),
(270, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-07-17', '2023-07-17', '-', 'Bendahara Pengeluaran Pembantu', 'Pelaksanaan pemberantasan sarang nyamuk (PSN)', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-07-16 20:43:50', '2023-07-16 20:43:50'),
(271, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-07-18', '2023-07-18', '-', 'Bendahara Pengeluaran Pembantu', 'Pelaksanaan pemberantasan sarang nyamuk (PSN)', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-07-16 20:46:00', '2023-07-16 20:46:00'),
(272, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-07-19', '2023-07-19', '-', 'Bendahara Pengeluaran Pembantu', 'Pelaksanaan pemberantasan sarang nyamuk (PSN)', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-07-16 20:50:14', '2023-07-16 20:50:14'),
(273, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-07-20', '2023-07-20', '-', 'Bendahara Pengeluaran Pembantu', 'Pelaksanaan pemberantasan sarang nyamuk (PSN)', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '--', '--', '-', '2', '2023-07-16 20:51:58', '2023-07-16 20:51:58'),
(274, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 3, '1', '2023-07-21', '2023-07-21', '-', 'Bendahara Pengeluaran Pembantu', 'Pelaksanaan pemberantasan sarang nyamuk (PSN)', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-07-16 20:53:31', '2023-07-16 20:53:31'),
(275, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 4, '1', '2023-07-22', '2023-07-22', '-', 'Bendahara Pengeluaran Pembantu', 'Pelaksanaan pemberantasan sarang nyamuk (PSN)', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '--', '-', '-', '2', '2023-07-16 21:15:00', '2023-07-16 21:15:00'),
(276, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 4, '1', '2023-07-24', '2023-07-24', '-', 'Bendahara Pengeluaran Pembantu', 'Pelaksanaan pemberantasan sarang nyamuk (PSN)', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-07-16 21:16:36', '2023-07-16 21:16:36'),
(277, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 4, '1', '2023-07-26', '2023-07-26', '-', 'Bendahara Pengeluaran Pembantu', 'Pelaksanaan pemberantasan sarang nyamuk (PSN)', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '--', '-', '-', '2', '2023-07-16 21:17:54', '2023-07-16 21:17:54'),
(278, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan pada Usia Pendidikan Dasar', 1, 5, 1, 1, 'Puskesmas Gondosari', 13, '1', '2023-07-21', '2023-07-21', '-', 'Bendahara Pengeluaran Pembantu', 'Pelaksanaan Skrining Kesehatan (termasuk jiwa) pada Anak USia Sekolah dan Remaja', 'DUA RATUS EMPAT PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-07-19 19:23:21', '2023-07-19 19:23:21'),
(279, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan pada Usia Pendidikan Dasar', 1, 5, 1, 1, 'Puskesmas Gondosari', 14, '1', '2023-07-28', '2023-07-28', '-', 'Bendahara Pengeluaran Pembantu', 'Pelaksanaan Skrining Kesehatan (termasuk jiwa) pada Anak USia Sekolah dan Remaja', 'DUA RATUS EMPAT PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-07-19 19:35:23', '2023-07-19 19:35:23'),
(280, 'Penyedia Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pelayanan Kesehatan Ibu Hamil', 1, 4, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-06-09', '2023-06-09', '-', 'Bendahara Pembantu', 'Kunjungan Pembinaan Posyandu', 'Seratus Dua Puluh Ribu Rupiah', '0', '-', '-', '-', '-', '-', '2', '2023-07-19 19:51:04', '2023-07-19 20:06:40'),
(281, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Promosi Kesehatan', 1, 4, 1, 1, 'Puskesmas Gondosari', 13, '1', '2023-07-21', '2023-07-21', '-', 'Bendahara Pengeluaran Pembantu', 'Pelaksanaan Gerakan Cegah Stunting  Aksi Bergizi', 'TIGA RATUS RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-07-19 19:55:26', '2023-07-19 21:31:02'),
(282, 'Penyedia Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pelayanan Kesehatan Ibu Hamil', 1, 4, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-06-10', '2023-06-10', '-', 'Bendahara Pembantu', 'Kunjungan Pembinaan Pelayanan PNC', 'Seratus Dua Puluh Ribu Rupiah', '0', 'Kunjungan Pembinaan Pelayanan Posyandu', '-', '-', '-', '-', '2', '2023-07-19 20:18:33', '2023-07-19 20:18:33'),
(283, 'Penyedia Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pelayanan Kesehatan Ibu Hamil', 1, 4, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-06-12', '2023-06-12', '-', 'Bendahara Pengeluaran  Pembantu', 'Kunjungan Pembinaan Pelayanan ANC', 'Seratus Dua Puluh Ribu Rupiah', '0', '-', '-', '-', '-', '-', '2', '2023-07-19 20:53:54', '2023-07-19 20:53:54'),
(284, 'Penyedia Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pelayanan Kesehatan Ibu Hamil', 1, 4, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-06-15', '2023-06-15', '-', 'Bendahara Pengeluaran  Pembantu', 'Kunjungan Pembinaan Pelayanan ANC', 'Seratus Dua Puluh Ribu Rupiah', '0', '-', '-', '-', '-', '-', '2', '2023-07-19 21:07:09', '2023-07-19 21:07:09'),
(285, 'Penyedia Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pelayanan Kesehatan Ibu Hamil', 1, 4, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-06-19', '2023-06-19', '-', 'Bendahara Pengeluaran  Pembantu', 'Pembinaan PMB', 'Seratus Dua Puluh Ribu Rupiah', '0', '-', '-', '-', '-', '-', '2', '2023-07-19 21:13:33', '2023-07-19 21:13:33'),
(286, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-07-27', '2023-07-27', '-', 'Bendahara Pengeluaran Pembantu', 'Pelaksanaan pemberantasan sarang nyamuk (PSN)', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-07-19 21:43:09', '2023-07-19 21:43:09'),
(287, 'Penyediaan Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pengelolaan Pelayanan Kesehatan Penyakit Menular dan Tidak Menular', 1, 10, 1, 1, 'Puskesmas Gondosari', 1, '1', '2023-07-28', '2023-07-28', '-', 'Bendahara Pengeluaran Pembantu', 'Pelaksanaan pemberantasan sarang nyamuk (PSN)', 'SERATUS DUA PULUH RIBU RUPIAH', '0', '-', '-', '-', '-', '-', '2', '2023-07-19 21:59:49', '2023-07-19 21:59:49'),
(288, 'Penyedia Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pelayanan Kesehatan Ibu Hamil', 1, 4, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-06-08', '2023-06-08', '-', 'Bendahara Pengeluaran  Pembantu', 'Kunjungan Pembinaan Pelayanan ANC', 'Seratus Dua Puluh Ribu Rupiah', '0', '-', '-', '-', '-', '-', '2', '2023-07-19 22:04:14', '2023-07-19 22:04:14'),
(289, 'Penyedia Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pelayanan Kesehatan Ibu Hamil', 1, 4, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-06-12', '2023-06-12', '-', 'Bendahara Pengeluaran  Pembantu', 'Kunjungan Pembinaan Pelayanan ANC', 'Seratus Dua Puluh Ribu Rupiah', '0', '-', '-', '-', '-', '-', '2', '2023-07-19 23:08:20', '2023-07-19 23:08:20'),
(290, 'Penyedia Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pelayanan Kesehatan Ibu Hamil', 1, 4, 1, 1, 'Desa Gondosari', 2, '1', '2023-06-12', '2023-06-12', '-', 'Bendahara Pengeluaran  Pembantu', 'Kunjungan Pembinaan Posyandu', 'Seratus Dua Puluh Ribu Rupiah', '0', '-', '-', '-', '-', '-', '2', '2023-07-19 23:23:32', '2023-07-19 23:23:32'),
(291, 'Penyedia Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pelayanan Kesehatan Ibu Hamil', 1, 4, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-06-15', '2023-06-15', '-', 'Bendahara Pengeluaran  Pembantu', 'Kunjungan Pembinaan Posyandu', 'Seratus Dua Puluh Ribu Rupiah', '0', '-', '-', '-', '-', '-', '2', '2023-07-20 00:10:26', '2023-07-20 00:10:26'),
(292, 'Penyedia Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pelayanan Kesehatan Ibu Hamil', 1, 4, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-06-19', '2023-06-19', '-', 'Bendahara Pengeluaran  Pembantu', 'Kunjungan Pembinaan Pelayanan PNC', 'Seratus Dua Puluh Ribu Rupiah', '0', '-', '-', '-', '-', '-', '2', '2023-07-20 00:44:14', '2023-07-20 00:44:14'),
(293, 'Penyedia Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pelayanan Kesehatan Ibu Hamil', 1, 4, 1, 1, 'Puskesmas Gondosari', 2, '1', '2023-06-20', '2023-06-20', '-', 'Bendahara Pengeluaran  Pembantu', 'Kunjungan Pembinaan Pelayanan ANC', 'Seratus Dua Puluh Ribu Rupiah', '0', '-', '-', '-', '-', '-', '2', '2023-07-20 01:01:01', '2023-07-20 01:01:01'),
(294, 'Penyedia Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pelayanan Kesehatan Ibu Hamil', 1, 4, 1, 1, 'Puskesmas Gondosari', 3, '1', '2023-06-09', '2023-06-09', '-', 'Bendahara Pengeluaran  Pembantu', 'Kunjungan Pembinaan ANC', 'Seratus Dua Puluh Ribu Rupiah', '0', '-', '-', '-', '-', '-', '2', '2023-07-20 01:18:30', '2023-07-20 01:18:30'),
(295, 'Penyedia Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pelayanan Kesehatan Ibu Hamil', 1, 4, 1, 1, 'Puskesmas Gondosari', 3, '1', '2023-06-10', '2023-06-10', '-', 'Bendahara Pengeluaran  Pembantu', 'Kunjungan Pembinaan ANC', 'Seratus Dua Puluh Ribu Rupiah', '0', '-', '-', '-', '-', '-', '2', '2023-07-20 01:30:18', '2023-07-20 01:30:18'),
(296, 'Penyedia Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pelayanan Kesehatan Ibu Hamil', 1, 4, 1, 1, 'Puskesmas Gondosari', 3, '1', '2023-06-12', '2023-06-12', '-', 'Bendahara Pengeluaran  Pembantu', 'Kunjungan Pembinaan Posyandu', 'Seratus Dua Puluh Ribu Rupiah', '0', '-', '-', '-', '-', '-', '2', '2023-07-20 01:38:15', '2023-07-20 01:38:15'),
(297, 'Penyedia Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pelayanan Kesehatan Ibu Hamil', 1, 4, 1, 1, 'Puskesmas Gondosari', 3, '1', '2023-06-15', '2023-07-15', '-', 'Bendahara Pengeluaran  Pembantu', 'Kunjungan Pembinaan Pelayanan PNC', 'Seratus Dua Puluh Ribu Rupiah', '0', '-', '-', '-', '-', '-', '2', '2023-07-20 01:48:42', '2023-07-20 01:48:42'),
(298, 'Penyedia Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pelayanan Kesehatan Ibu Hamil', 1, 4, 1, 1, 'Puskesmas Gondosari', 3, '1', '2023-06-19', '2023-06-19', '-', 'Bendahara Pengeluaran  Pembantu', 'Kunjungan Pembinaan Pelayanan PNC', 'Seratus Dua Puluh Ribu Rupiah', '0', '-', '-', '-', '-', '-', '2', '2023-07-20 02:00:25', '2023-07-20 02:00:25'),
(299, 'Penyedia Layanan Kesehatan untuk UKM dan UKP Rujukan Tingkat Daerah Kabupaten/Kota', 'Pelayanan Kesehatan Ibu Hamil', 1, 4, 1, 1, 'Puskesmas Gondosari', 4, '1', '2023-06-12', '2023-06-12', '-', 'Bendahara Pengeluaran  Pembantu', 'Kunjungan Pembinaan Pelayanan PNC', 'Seratus Dua Puluh Ribu Rupiah', '0', '-', '-', '-', '-', '-', '2', '2023-07-20 02:12:50', '2023-07-20 02:12:50');

-- --------------------------------------------------------

--
-- Table structure for table `instruction_employes`
--

CREATE TABLE `instruction_employes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `instruction_id` bigint(20) UNSIGNED NOT NULL,
  `employe_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instruction_employes`
--

INSERT INTO `instruction_employes` (`id`, `instruction_id`, `employe_id`, `created_at`, `updated_at`) VALUES
(3, 2, 17, NULL, NULL),
(4, 2, 32, NULL, NULL),
(5, 3, 3, NULL, NULL),
(6, 3, 42, NULL, NULL),
(7, 4, 17, NULL, NULL),
(8, 4, 32, NULL, NULL),
(9, 5, 3, NULL, NULL),
(10, 5, 27, NULL, NULL),
(11, 6, 17, NULL, NULL),
(12, 6, 42, NULL, NULL),
(13, 7, 18, NULL, NULL),
(14, 7, 32, NULL, NULL),
(15, 8, 11, NULL, NULL),
(16, 8, 17, NULL, NULL),
(17, 9, 17, NULL, NULL),
(18, 9, 27, NULL, NULL),
(19, 10, 11, NULL, NULL),
(20, 10, 15, NULL, NULL),
(21, 11, 3, NULL, NULL),
(22, 11, 48, NULL, NULL),
(23, 12, 18, NULL, NULL),
(24, 12, 24, NULL, NULL),
(25, 13, 17, NULL, NULL),
(26, 13, 27, NULL, NULL),
(27, 14, 3, NULL, NULL),
(28, 14, 26, NULL, NULL),
(29, 15, 4, NULL, NULL),
(30, 15, 13, NULL, NULL),
(31, 15, 48, NULL, NULL),
(32, 16, 4, NULL, NULL),
(33, 16, 13, NULL, NULL),
(34, 16, 48, NULL, NULL),
(35, 17, 4, NULL, NULL),
(36, 17, 13, NULL, NULL),
(37, 17, 48, NULL, NULL),
(38, 18, 4, NULL, NULL),
(39, 18, 13, NULL, NULL),
(40, 18, 48, NULL, NULL),
(41, 19, 4, NULL, NULL),
(42, 19, 13, NULL, NULL),
(43, 19, 48, NULL, NULL),
(44, 20, 4, NULL, NULL),
(45, 20, 13, NULL, NULL),
(46, 20, 48, NULL, NULL),
(47, 21, 4, NULL, NULL),
(48, 21, 13, NULL, NULL),
(49, 21, 48, NULL, NULL),
(50, 22, 4, NULL, NULL),
(51, 22, 13, NULL, NULL),
(52, 22, 48, NULL, NULL),
(53, 23, 4, NULL, NULL),
(54, 23, 13, NULL, NULL),
(55, 23, 48, NULL, NULL),
(56, 24, 4, NULL, NULL),
(57, 24, 13, NULL, NULL),
(58, 24, 48, NULL, NULL),
(59, 25, 4, NULL, NULL),
(60, 25, 13, NULL, NULL),
(61, 25, 48, NULL, NULL),
(62, 26, 4, NULL, NULL),
(63, 26, 13, NULL, NULL),
(64, 26, 48, NULL, NULL),
(66, 27, 13, NULL, NULL),
(67, 27, 48, NULL, NULL),
(68, 27, 32, NULL, NULL),
(69, 28, 13, NULL, NULL),
(70, 28, 32, NULL, NULL),
(71, 28, 48, NULL, NULL),
(72, 29, 13, NULL, NULL),
(73, 29, 32, NULL, NULL),
(74, 29, 48, NULL, NULL),
(75, 30, 13, NULL, NULL),
(76, 30, 32, NULL, NULL),
(77, 30, 48, NULL, NULL),
(78, 31, 13, NULL, NULL),
(79, 31, 32, NULL, NULL),
(80, 31, 48, NULL, NULL),
(81, 32, 13, NULL, NULL),
(82, 32, 18, NULL, NULL),
(83, 32, 27, NULL, NULL),
(84, 33, 13, NULL, NULL),
(85, 33, 18, NULL, NULL),
(86, 33, 27, NULL, NULL),
(87, 34, 4, NULL, NULL),
(88, 34, 13, NULL, NULL),
(89, 34, 48, NULL, NULL),
(90, 35, 13, NULL, NULL),
(91, 35, 15, NULL, NULL),
(92, 35, 48, NULL, NULL),
(93, 36, 13, NULL, NULL),
(94, 36, 32, NULL, NULL),
(95, 36, 48, NULL, NULL),
(96, 37, 4, NULL, NULL),
(97, 37, 42, NULL, NULL),
(98, 37, 50, NULL, NULL),
(99, 37, 53, NULL, NULL),
(100, 37, 54, NULL, NULL),
(101, 37, 55, NULL, NULL),
(102, 38, 4, NULL, NULL),
(103, 38, 16, NULL, NULL),
(104, 38, 42, NULL, NULL),
(105, 38, 56, NULL, NULL),
(106, 38, 57, NULL, NULL),
(107, 38, 58, NULL, NULL),
(108, 39, 4, NULL, NULL),
(109, 39, 17, NULL, NULL),
(110, 39, 50, NULL, NULL),
(111, 39, 55, NULL, NULL),
(112, 39, 59, NULL, NULL),
(113, 39, 60, NULL, NULL),
(114, 40, 15, NULL, NULL),
(115, 40, 18, NULL, NULL),
(116, 40, 42, NULL, NULL),
(117, 40, 61, NULL, NULL),
(118, 40, 62, NULL, NULL),
(119, 40, 63, NULL, NULL),
(120, 41, 15, NULL, NULL),
(121, 41, 28, NULL, NULL),
(122, 41, 42, NULL, NULL),
(123, 41, 61, NULL, NULL),
(124, 41, 62, NULL, NULL),
(125, 41, 64, NULL, NULL),
(126, 42, 15, NULL, NULL),
(127, 42, 17, NULL, NULL),
(128, 42, 42, NULL, NULL),
(129, 42, 61, NULL, NULL),
(130, 42, 62, NULL, NULL),
(131, 42, 66, NULL, NULL),
(132, 43, 17, NULL, NULL),
(133, 43, 27, NULL, NULL),
(134, 43, 42, NULL, NULL),
(135, 43, 67, NULL, NULL),
(136, 43, 68, NULL, NULL),
(137, 43, 69, NULL, NULL),
(138, 44, 18, NULL, NULL),
(139, 44, 27, NULL, NULL),
(140, 44, 42, NULL, NULL),
(141, 44, 67, NULL, NULL),
(142, 44, 70, NULL, NULL),
(143, 44, 71, NULL, NULL),
(144, 45, 32, NULL, NULL),
(145, 45, 42, NULL, NULL),
(146, 45, 52, NULL, NULL),
(147, 45, 72, NULL, NULL),
(148, 45, 73, NULL, NULL),
(149, 45, 74, NULL, NULL),
(150, 46, 4, NULL, NULL),
(152, 46, 42, NULL, NULL),
(153, 46, 50, NULL, NULL),
(154, 46, 53, NULL, NULL),
(155, 46, 54, NULL, NULL),
(156, 46, 55, NULL, NULL),
(157, 47, 4, NULL, NULL),
(158, 47, 16, NULL, NULL),
(159, 47, 42, NULL, NULL),
(160, 47, 56, NULL, NULL),
(161, 47, 57, NULL, NULL),
(162, 47, 58, NULL, NULL),
(163, 48, 4, NULL, NULL),
(164, 48, 17, NULL, NULL),
(165, 48, 18, NULL, NULL),
(166, 48, 54, NULL, NULL),
(167, 48, 55, NULL, NULL),
(168, 48, 56, NULL, NULL),
(169, 49, 4, NULL, NULL),
(170, 49, 5, NULL, NULL),
(171, 49, 18, NULL, NULL),
(173, 49, 54, NULL, NULL),
(174, 49, 56, NULL, NULL),
(175, 49, 55, NULL, NULL),
(176, 50, 27, NULL, NULL),
(177, 50, 42, NULL, NULL),
(178, 50, 52, NULL, NULL),
(179, 50, 67, NULL, NULL),
(180, 50, 68, NULL, NULL),
(181, 50, 70, NULL, NULL),
(182, 51, 17, NULL, NULL),
(183, 51, 27, NULL, NULL),
(184, 51, 52, NULL, NULL),
(185, 51, 67, NULL, NULL),
(186, 51, 68, NULL, NULL),
(187, 51, 71, NULL, NULL),
(188, 52, 15, NULL, NULL),
(189, 52, 18, NULL, NULL),
(190, 52, 28, NULL, NULL),
(191, 52, 61, NULL, NULL),
(192, 52, 63, NULL, NULL),
(193, 52, 64, NULL, NULL),
(194, 53, 15, NULL, NULL),
(195, 53, 17, NULL, NULL),
(196, 53, 42, NULL, NULL),
(197, 53, 62, NULL, NULL),
(198, 53, 64, NULL, NULL),
(199, 53, 66, NULL, NULL),
(200, 54, 32, NULL, NULL),
(201, 54, 42, NULL, NULL),
(202, 54, 52, NULL, NULL),
(203, 54, 72, NULL, NULL),
(204, 54, 73, NULL, NULL),
(205, 54, 74, NULL, NULL),
(206, 55, 18, NULL, NULL),
(207, 55, 32, NULL, NULL),
(208, 56, 11, NULL, NULL),
(209, 56, 28, NULL, NULL),
(210, 57, 27, NULL, NULL),
(211, 57, 48, NULL, NULL),
(212, 58, 11, NULL, NULL),
(213, 58, 15, NULL, NULL),
(214, 59, 15, NULL, NULL),
(215, 59, 18, NULL, NULL),
(216, 60, 26, NULL, NULL),
(218, 61, 31, NULL, NULL),
(219, 61, 37, NULL, NULL),
(220, 62, 27, NULL, NULL),
(221, 62, 48, NULL, NULL),
(222, 63, 17, NULL, NULL),
(223, 63, 27, NULL, NULL),
(224, 64, 15, NULL, NULL),
(225, 64, 17, NULL, NULL),
(226, 65, 11, NULL, NULL),
(227, 65, 32, NULL, NULL),
(228, 66, 17, NULL, NULL),
(229, 66, 27, NULL, NULL),
(230, 67, 24, NULL, NULL),
(231, 67, 48, NULL, NULL),
(232, 68, 3, NULL, NULL),
(233, 68, 18, NULL, NULL),
(234, 69, 28, NULL, NULL),
(235, 69, 48, NULL, NULL),
(236, 70, 17, NULL, NULL),
(237, 70, 27, NULL, NULL),
(238, 71, 3, NULL, NULL),
(239, 71, 24, NULL, NULL),
(240, 72, 3, NULL, NULL),
(241, 72, 15, NULL, NULL),
(242, 72, 24, NULL, NULL),
(243, 73, 3, NULL, NULL),
(244, 73, 17, NULL, NULL),
(245, 73, 32, NULL, NULL),
(246, 74, 3, NULL, NULL),
(247, 74, 17, NULL, NULL),
(249, 74, 15, NULL, NULL),
(250, 75, 3, NULL, NULL),
(251, 75, 15, NULL, NULL),
(252, 75, 17, NULL, NULL),
(253, 76, 3, NULL, NULL),
(254, 76, 17, NULL, NULL),
(255, 76, 27, NULL, NULL),
(256, 77, 3, NULL, NULL),
(257, 77, 17, NULL, NULL),
(258, 77, 27, NULL, NULL),
(259, 78, 3, NULL, NULL),
(260, 78, 24, NULL, NULL),
(261, 78, 31, NULL, NULL),
(262, 79, 3, NULL, NULL),
(263, 79, 24, NULL, NULL),
(264, 79, 37, NULL, NULL),
(265, 80, 17, NULL, NULL),
(266, 80, 37, NULL, NULL),
(267, 80, 50, NULL, NULL),
(268, 81, 3, NULL, NULL),
(269, 81, 4, NULL, NULL),
(270, 81, 17, NULL, NULL),
(271, 82, 4, NULL, NULL),
(272, 82, 18, NULL, NULL),
(273, 82, 26, NULL, NULL),
(274, 83, 11, NULL, NULL),
(275, 83, 30, NULL, NULL),
(276, 83, 42, NULL, NULL),
(277, 84, 36, NULL, NULL),
(278, 85, 4, NULL, NULL),
(279, 86, 50, NULL, NULL),
(280, 87, 15, NULL, NULL),
(281, 88, 50, NULL, NULL),
(282, 89, 4, NULL, NULL),
(283, 90, 50, NULL, NULL),
(284, 91, 36, NULL, NULL),
(285, 92, 15, NULL, NULL),
(286, 93, 27, NULL, NULL),
(287, 94, 32, NULL, NULL),
(288, 95, 27, NULL, NULL),
(289, 96, 32, NULL, NULL),
(290, 97, 15, NULL, NULL),
(291, 98, 4, NULL, NULL),
(292, 98, 7, NULL, NULL),
(293, 99, 7, NULL, NULL),
(294, 99, 30, NULL, NULL),
(295, 100, 7, NULL, NULL),
(296, 100, 52, NULL, NULL),
(297, 101, 4, NULL, NULL),
(298, 101, 16, NULL, NULL),
(299, 101, 42, NULL, NULL),
(300, 101, 58, NULL, NULL),
(301, 101, 75, NULL, NULL),
(302, 101, 76, NULL, NULL),
(303, 102, 30, NULL, NULL),
(304, 102, 32, NULL, NULL),
(305, 102, 52, NULL, NULL),
(306, 102, 72, NULL, NULL),
(307, 102, 78, NULL, NULL),
(308, 102, 79, NULL, NULL),
(310, 104, 36, NULL, NULL),
(311, 104, 81, NULL, NULL),
(312, 105, 36, NULL, NULL),
(313, 105, 70, NULL, NULL),
(314, 60, 30, NULL, NULL),
(315, 106, 36, NULL, NULL),
(316, 106, 53, NULL, NULL),
(317, 107, 36, NULL, NULL),
(319, 107, 58, NULL, NULL),
(320, 108, 17, NULL, NULL),
(321, 108, 48, NULL, NULL),
(322, 108, 50, NULL, NULL),
(323, 109, 18, NULL, NULL),
(324, 109, 36, NULL, NULL),
(325, 109, 50, NULL, NULL),
(326, 110, 30, NULL, NULL),
(327, 110, 36, NULL, NULL),
(328, 110, 37, NULL, NULL),
(329, 111, 18, NULL, NULL),
(330, 111, 36, NULL, NULL),
(331, 111, 50, NULL, NULL),
(332, 112, 17, NULL, NULL),
(333, 112, 36, NULL, NULL),
(334, 112, 50, NULL, NULL),
(335, 113, 18, NULL, NULL),
(336, 113, 36, NULL, NULL),
(337, 113, 50, NULL, NULL),
(338, 114, 36, NULL, NULL),
(339, 114, 48, NULL, NULL),
(340, 114, 50, NULL, NULL),
(341, 115, 15, NULL, NULL),
(342, 115, 17, NULL, NULL),
(343, 115, 36, NULL, NULL),
(344, 116, 15, NULL, NULL),
(345, 116, 16, NULL, NULL),
(346, 116, 36, NULL, NULL),
(347, 117, 36, NULL, NULL),
(348, 117, 37, NULL, NULL),
(349, 117, 45, NULL, NULL),
(350, 118, 16, NULL, NULL),
(351, 118, 18, NULL, NULL),
(352, 118, 34, NULL, NULL),
(353, 118, 36, NULL, NULL),
(354, 119, 34, NULL, NULL),
(355, 119, 37, NULL, NULL),
(356, 119, 41, NULL, NULL),
(357, 119, 46, NULL, NULL),
(358, 120, 4, NULL, NULL),
(359, 120, 7, NULL, NULL),
(360, 121, 7, NULL, NULL),
(361, 121, 27, NULL, NULL),
(362, 122, 17, NULL, NULL),
(363, 122, 52, NULL, NULL),
(364, 123, 18, NULL, NULL),
(365, 123, 42, NULL, NULL),
(366, 124, 24, NULL, NULL),
(367, 124, 28, NULL, NULL),
(368, 125, 17, NULL, NULL),
(369, 125, 27, NULL, NULL),
(370, 126, 28, NULL, NULL),
(371, 126, 30, NULL, NULL),
(372, 127, 31, NULL, NULL),
(373, 127, 42, NULL, NULL),
(374, 128, 11, NULL, NULL),
(375, 128, 37, NULL, NULL),
(376, 129, 18, NULL, NULL),
(377, 129, 52, NULL, NULL),
(378, 130, 17, NULL, NULL),
(379, 130, 27, NULL, NULL),
(380, 131, 15, NULL, NULL),
(381, 131, 30, NULL, NULL),
(382, 132, 18, NULL, NULL),
(383, 132, 28, NULL, NULL),
(384, 133, 3, NULL, NULL),
(385, 133, 11, NULL, NULL),
(386, 134, 17, NULL, NULL),
(387, 134, 52, NULL, NULL),
(388, 135, 28, NULL, NULL),
(389, 135, 30, NULL, NULL),
(390, 136, 24, NULL, NULL),
(391, 136, 48, NULL, NULL),
(392, 137, 4, NULL, NULL),
(393, 137, 52, NULL, NULL),
(394, 138, 17, NULL, NULL),
(395, 138, 32, NULL, NULL),
(396, 139, 30, NULL, NULL),
(397, 139, 52, NULL, NULL),
(398, 140, 17, NULL, NULL),
(399, 140, 24, NULL, NULL),
(400, 141, 17, NULL, NULL),
(401, 141, 32, NULL, NULL),
(402, 142, 18, NULL, NULL),
(403, 142, 52, NULL, NULL),
(404, 143, 15, NULL, NULL),
(405, 143, 17, NULL, NULL),
(406, 144, 24, NULL, NULL),
(407, 144, 52, NULL, NULL),
(408, 145, 15, NULL, NULL),
(409, 146, 15, NULL, NULL),
(410, 147, 27, NULL, NULL),
(411, 148, 32, NULL, NULL),
(412, 149, 32, NULL, NULL),
(413, 150, 32, NULL, NULL),
(414, 151, 32, NULL, NULL),
(415, 152, 4, NULL, NULL),
(416, 153, 36, NULL, NULL),
(417, 154, 50, NULL, NULL),
(418, 155, 15, NULL, NULL),
(419, 156, 36, NULL, NULL),
(420, 157, 50, NULL, NULL),
(421, 158, 50, NULL, NULL),
(422, 159, 32, NULL, NULL),
(423, 160, 13, NULL, NULL),
(424, 160, 46, NULL, NULL),
(425, 160, 48, NULL, NULL),
(426, 161, 13, NULL, NULL),
(427, 161, 18, NULL, NULL),
(428, 161, 27, NULL, NULL),
(429, 162, 43, NULL, NULL),
(430, 162, 45, NULL, NULL),
(431, 162, 48, NULL, NULL),
(432, 163, 11, NULL, NULL),
(433, 163, 43, NULL, NULL),
(434, 163, 45, NULL, NULL),
(435, 164, 11, NULL, NULL),
(436, 164, 43, NULL, NULL),
(437, 164, 45, NULL, NULL),
(438, 165, 13, NULL, NULL),
(439, 165, 26, NULL, NULL),
(440, 165, 48, NULL, NULL),
(441, 166, 13, NULL, NULL),
(442, 166, 24, NULL, NULL),
(443, 166, 48, NULL, NULL),
(444, 167, 29, NULL, NULL),
(445, 167, 31, NULL, NULL),
(446, 167, 42, NULL, NULL),
(447, 167, 57, NULL, NULL),
(448, 167, 58, NULL, NULL),
(449, 167, 82, NULL, NULL),
(450, 168, 10, NULL, NULL),
(451, 168, 46, NULL, NULL),
(452, 168, 50, NULL, NULL),
(453, 168, 54, NULL, NULL),
(454, 168, 55, NULL, NULL),
(455, 168, 56, NULL, NULL),
(456, 169, 16, NULL, NULL),
(457, 169, 29, NULL, NULL),
(458, 169, 42, NULL, NULL),
(459, 169, 59, NULL, NULL),
(460, 169, 83, NULL, NULL),
(461, 169, 84, NULL, NULL),
(462, 170, 18, NULL, NULL),
(463, 170, 24, NULL, NULL),
(464, 170, 28, NULL, NULL),
(465, 170, 34, NULL, NULL),
(466, 171, 30, NULL, NULL),
(467, 171, 31, NULL, NULL),
(468, 171, 34, NULL, NULL),
(469, 171, 46, NULL, NULL),
(470, 172, 18, NULL, NULL),
(471, 172, 34, NULL, NULL),
(472, 172, 37, NULL, NULL),
(473, 172, 46, NULL, NULL),
(474, 173, 30, NULL, NULL),
(475, 173, 34, NULL, NULL),
(476, 173, 37, NULL, NULL),
(477, 173, 46, NULL, NULL),
(478, 174, 7, NULL, NULL),
(479, 174, 15, NULL, NULL),
(480, 174, 16, NULL, NULL),
(481, 174, 62, NULL, NULL),
(482, 174, 64, NULL, NULL),
(483, 174, 66, NULL, NULL),
(484, 175, 25, NULL, NULL),
(485, 175, 28, NULL, NULL),
(486, 175, 34, NULL, NULL),
(487, 175, 46, NULL, NULL),
(488, 176, 12, NULL, NULL),
(489, 176, 20, NULL, NULL),
(490, 176, 22, NULL, NULL),
(491, 176, 34, NULL, NULL),
(492, 177, 4, NULL, NULL),
(493, 178, 15, NULL, NULL),
(494, 179, 27, NULL, NULL),
(495, 180, 32, NULL, NULL),
(496, 181, 4, NULL, NULL),
(497, 182, 15, NULL, NULL),
(498, 183, 30, NULL, NULL),
(499, 183, 34, NULL, NULL),
(500, 183, 37, NULL, NULL),
(501, 183, 46, NULL, NULL),
(502, 184, 8, NULL, NULL),
(503, 184, 34, NULL, NULL),
(504, 184, 41, NULL, NULL),
(505, 184, 47, NULL, NULL),
(506, 185, 8, NULL, NULL),
(507, 185, 34, NULL, NULL),
(508, 185, 37, NULL, NULL),
(509, 185, 46, NULL, NULL),
(510, 186, 6, NULL, NULL),
(511, 186, 9, NULL, NULL),
(512, 186, 21, NULL, NULL),
(513, 186, 34, NULL, NULL),
(514, 187, 30, NULL, NULL),
(515, 187, 34, NULL, NULL),
(516, 187, 37, NULL, NULL),
(517, 187, 47, NULL, NULL),
(518, 188, 18, NULL, NULL),
(519, 188, 29, NULL, NULL),
(520, 188, 34, NULL, NULL),
(521, 188, 48, NULL, NULL),
(522, 189, 24, NULL, NULL),
(523, 189, 34, NULL, NULL),
(524, 189, 42, NULL, NULL),
(525, 189, 44, NULL, NULL),
(526, 190, 34, NULL, NULL),
(527, 190, 11, NULL, NULL),
(528, 190, 23, NULL, NULL),
(529, 190, 49, NULL, NULL),
(530, 191, 34, NULL, NULL),
(531, 191, 36, NULL, NULL),
(532, 191, 37, NULL, NULL),
(533, 191, 52, NULL, NULL),
(534, 192, 34, NULL, NULL),
(535, 192, 36, NULL, NULL),
(536, 192, 42, NULL, NULL),
(537, 192, 52, NULL, NULL),
(538, 193, 17, NULL, NULL),
(539, 193, 18, NULL, NULL),
(540, 193, 34, NULL, NULL),
(541, 193, 36, NULL, NULL),
(542, 194, 34, NULL, NULL),
(543, 194, 37, NULL, NULL),
(544, 194, 41, NULL, NULL),
(545, 194, 47, NULL, NULL),
(546, 195, 27, NULL, NULL),
(547, 196, 32, NULL, NULL),
(548, 197, 4, NULL, NULL),
(549, 198, 15, NULL, NULL),
(550, 199, 27, NULL, NULL),
(551, 200, 4, NULL, NULL),
(552, 201, 15, NULL, NULL),
(553, 202, 7, NULL, NULL),
(554, 202, 15, NULL, NULL),
(555, 203, 18, NULL, NULL),
(556, 203, 52, NULL, NULL),
(557, 204, 17, NULL, NULL),
(558, 204, 42, NULL, NULL),
(559, 205, 46, NULL, NULL),
(560, 205, 24, NULL, NULL),
(561, 206, 30, NULL, NULL),
(562, 206, 18, NULL, NULL),
(563, 207, 3, NULL, NULL),
(564, 207, 4, NULL, NULL),
(565, 207, 36, NULL, NULL),
(566, 208, 3, NULL, NULL),
(567, 208, 24, NULL, NULL),
(568, 208, 27, NULL, NULL),
(569, 209, 15, NULL, NULL),
(570, 210, 4, NULL, NULL),
(571, 211, 4, NULL, NULL),
(572, 212, 4, NULL, NULL),
(573, 213, 15, NULL, NULL),
(574, 214, 27, NULL, NULL),
(575, 215, 32, NULL, NULL),
(576, 216, 4, NULL, NULL),
(577, 216, 42, NULL, NULL),
(578, 216, 50, NULL, NULL),
(579, 216, 55, NULL, NULL),
(580, 216, 60, NULL, NULL),
(581, 216, 84, NULL, NULL),
(582, 217, 4, NULL, NULL),
(583, 217, 16, NULL, NULL),
(584, 217, 42, NULL, NULL),
(585, 217, 56, NULL, NULL),
(586, 217, 58, NULL, NULL),
(587, 217, 60, NULL, NULL),
(588, 218, 4, NULL, NULL),
(589, 218, 17, NULL, NULL),
(590, 218, 50, NULL, NULL),
(591, 218, 55, NULL, NULL),
(592, 218, 57, NULL, NULL),
(593, 218, 84, NULL, NULL),
(594, 219, 18, NULL, NULL),
(595, 219, 26, NULL, NULL),
(596, 219, 42, NULL, NULL),
(597, 219, 61, NULL, NULL),
(598, 219, 62, NULL, NULL),
(599, 219, 63, NULL, NULL),
(600, 220, 15, NULL, NULL),
(601, 220, 28, NULL, NULL),
(602, 220, 42, NULL, NULL),
(603, 220, 61, NULL, NULL),
(604, 220, 62, NULL, NULL),
(605, 220, 64, NULL, NULL),
(606, 221, 7, NULL, NULL),
(607, 221, 17, NULL, NULL),
(608, 221, 42, NULL, NULL),
(609, 221, 61, NULL, NULL),
(610, 221, 62, NULL, NULL),
(611, 221, 66, NULL, NULL),
(612, 222, 36, NULL, NULL),
(613, 222, 42, NULL, NULL),
(614, 222, 52, NULL, NULL),
(615, 222, 67, NULL, NULL),
(616, 222, 69, NULL, NULL),
(617, 222, 70, NULL, NULL),
(618, 223, 18, NULL, NULL),
(619, 223, 27, NULL, NULL),
(620, 223, 42, NULL, NULL),
(621, 223, 67, NULL, NULL),
(622, 223, 70, NULL, NULL),
(623, 223, 71, NULL, NULL),
(624, 224, 32, NULL, NULL),
(625, 224, 42, NULL, NULL),
(626, 224, 52, NULL, NULL),
(627, 224, 72, NULL, NULL),
(628, 224, 73, NULL, NULL),
(629, 224, 74, NULL, NULL),
(630, 225, 3, NULL, NULL),
(631, 225, 42, NULL, NULL),
(632, 225, 50, NULL, NULL),
(633, 225, 55, NULL, NULL),
(634, 225, 59, NULL, NULL),
(635, 225, 60, NULL, NULL),
(636, 226, 16, NULL, NULL),
(637, 226, 42, NULL, NULL),
(638, 226, 50, NULL, NULL),
(639, 226, 58, NULL, NULL),
(640, 226, 60, NULL, NULL),
(641, 226, 83, NULL, NULL),
(642, 227, 4, NULL, NULL),
(644, 227, 17, NULL, NULL),
(645, 227, 18, NULL, NULL),
(646, 227, 57, NULL, NULL),
(647, 227, 60, NULL, NULL),
(648, 228, 9, NULL, NULL),
(649, 228, 14, NULL, NULL),
(650, 228, 17, NULL, NULL),
(651, 228, 42, NULL, NULL),
(652, 228, 44, NULL, NULL),
(653, 228, 52, NULL, NULL),
(654, 229, 15, NULL, NULL),
(655, 229, 18, NULL, NULL),
(656, 229, 28, NULL, NULL),
(657, 229, 62, NULL, NULL),
(658, 229, 63, NULL, NULL),
(659, 229, 64, NULL, NULL),
(660, 230, 15, NULL, NULL),
(661, 230, 17, NULL, NULL),
(662, 230, 28, NULL, NULL),
(663, 230, 62, NULL, NULL),
(664, 230, 64, NULL, NULL),
(665, 230, 66, NULL, NULL),
(666, 231, 27, NULL, NULL),
(667, 231, 48, NULL, NULL),
(668, 231, 52, NULL, NULL),
(669, 231, 67, NULL, NULL),
(670, 231, 68, NULL, NULL),
(671, 231, 69, NULL, NULL),
(672, 232, 17, NULL, NULL),
(673, 232, 27, NULL, NULL),
(674, 232, 28, NULL, NULL),
(676, 232, 69, NULL, NULL),
(677, 232, 70, NULL, NULL),
(678, 233, 18, NULL, NULL),
(679, 233, 32, NULL, NULL),
(680, 233, 52, NULL, NULL),
(681, 233, 72, NULL, NULL),
(682, 233, 73, NULL, NULL),
(683, 233, 74, NULL, NULL),
(684, 232, 67, NULL, NULL),
(687, 227, 55, NULL, NULL),
(688, 234, 13, NULL, NULL),
(689, 234, 15, NULL, NULL),
(690, 234, 48, NULL, NULL),
(691, 235, 13, NULL, NULL),
(692, 235, 31, NULL, NULL),
(693, 235, 48, NULL, NULL),
(694, 236, 13, NULL, NULL),
(695, 236, 31, NULL, NULL),
(696, 236, 48, NULL, NULL),
(697, 237, 13, NULL, NULL),
(698, 237, 17, NULL, NULL),
(699, 237, 48, NULL, NULL),
(700, 238, 13, NULL, NULL),
(701, 238, 15, NULL, NULL),
(702, 238, 48, NULL, NULL),
(703, 239, 13, NULL, NULL),
(704, 239, 15, NULL, NULL),
(705, 239, 48, NULL, NULL),
(706, 240, 13, NULL, NULL),
(707, 240, 31, NULL, NULL),
(708, 240, 48, NULL, NULL),
(709, 241, 13, NULL, NULL),
(710, 241, 31, NULL, NULL),
(711, 241, 48, NULL, NULL),
(712, 242, 13, NULL, NULL),
(713, 242, 17, NULL, NULL),
(714, 242, 48, NULL, NULL),
(715, 243, 13, NULL, NULL),
(716, 243, 15, NULL, NULL),
(717, 243, 48, NULL, NULL),
(718, 244, 4, NULL, NULL),
(719, 244, 13, NULL, NULL),
(720, 244, 48, NULL, NULL),
(721, 245, 13, NULL, NULL),
(722, 245, 48, NULL, NULL),
(723, 245, 50, NULL, NULL),
(724, 246, 4, NULL, NULL),
(725, 246, 13, NULL, NULL),
(726, 246, 48, NULL, NULL),
(727, 247, 4, NULL, NULL),
(728, 247, 13, NULL, NULL),
(729, 247, 48, NULL, NULL),
(730, 248, 4, NULL, NULL),
(731, 248, 13, NULL, NULL),
(732, 248, 48, NULL, NULL),
(733, 249, 4, NULL, NULL),
(734, 249, 13, NULL, NULL),
(735, 249, 50, NULL, NULL),
(736, 250, 4, NULL, NULL),
(737, 250, 13, NULL, NULL),
(738, 250, 48, NULL, NULL),
(739, 251, 4, NULL, NULL),
(740, 251, 13, NULL, NULL),
(741, 251, 48, NULL, NULL),
(742, 252, 4, NULL, NULL),
(743, 252, 13, NULL, NULL),
(744, 252, 48, NULL, NULL),
(745, 253, 4, NULL, NULL),
(746, 253, 13, NULL, NULL),
(747, 253, 48, NULL, NULL),
(748, 254, 42, NULL, NULL),
(749, 254, 16, NULL, NULL),
(751, 254, 76, NULL, NULL),
(753, 254, 4, NULL, NULL),
(756, 255, 4, NULL, NULL),
(757, 255, 18, NULL, NULL),
(758, 255, 42, NULL, NULL),
(759, 255, 86, NULL, NULL),
(760, 255, 88, NULL, NULL),
(762, 256, 15, NULL, NULL),
(763, 256, 18, NULL, NULL),
(764, 256, 28, NULL, NULL),
(765, 256, 62, NULL, NULL),
(766, 256, 64, NULL, NULL),
(767, 257, 7, NULL, NULL),
(768, 257, 8, NULL, NULL),
(769, 258, 3, NULL, NULL),
(771, 259, 3, NULL, NULL),
(772, 260, 3, NULL, NULL),
(773, 261, 3, NULL, NULL),
(774, 262, 3, NULL, NULL),
(775, 262, 13, NULL, NULL),
(776, 263, 3, NULL, NULL),
(777, 263, 17, NULL, NULL),
(778, 264, 3, NULL, NULL),
(779, 264, 52, NULL, NULL),
(780, 265, 3, NULL, NULL),
(781, 265, 36, NULL, NULL),
(782, 266, 3, NULL, NULL),
(783, 266, 15, NULL, NULL),
(784, 267, 3, NULL, NULL),
(785, 267, 13, NULL, NULL),
(786, 268, 3, NULL, NULL),
(787, 268, 52, NULL, NULL),
(788, 269, 3, NULL, NULL),
(789, 269, 4, NULL, NULL),
(790, 270, 3, NULL, NULL),
(791, 270, 50, NULL, NULL),
(792, 271, 3, NULL, NULL),
(793, 271, 36, NULL, NULL),
(794, 272, 3, NULL, NULL),
(795, 272, 27, NULL, NULL),
(796, 273, 3, NULL, NULL),
(797, 273, 13, NULL, NULL),
(798, 274, 3, NULL, NULL),
(799, 274, 52, NULL, NULL),
(800, 275, 3, NULL, NULL),
(801, 275, 32, NULL, NULL),
(802, 276, 3, NULL, NULL),
(803, 276, 52, NULL, NULL),
(804, 277, 3, NULL, NULL),
(805, 277, 13, NULL, NULL),
(806, 278, 10, NULL, NULL),
(807, 278, 25, NULL, NULL),
(808, 278, 34, NULL, NULL),
(809, 278, 49, NULL, NULL),
(810, 279, 10, NULL, NULL),
(811, 279, 25, NULL, NULL),
(812, 279, 34, NULL, NULL),
(813, 279, 49, NULL, NULL),
(814, 280, 10, NULL, NULL),
(815, 280, 29, NULL, NULL),
(816, 281, 11, NULL, NULL),
(817, 281, 18, NULL, NULL),
(818, 281, 29, NULL, NULL),
(819, 281, 42, NULL, NULL),
(820, 281, 50, NULL, NULL),
(821, 282, 18, NULL, NULL),
(822, 282, 21, NULL, NULL),
(823, 254, 75, NULL, NULL),
(824, 254, 81, NULL, NULL),
(825, 283, 8, NULL, NULL),
(826, 283, 45, NULL, NULL),
(827, 255, 60, NULL, NULL),
(828, 284, 18, NULL, NULL),
(829, 284, 21, NULL, NULL),
(830, 256, 88, NULL, NULL),
(831, 285, 11, NULL, NULL),
(832, 285, 42, NULL, NULL),
(833, 286, 3, NULL, NULL),
(834, 286, 26, NULL, NULL),
(835, 287, 3, NULL, NULL),
(836, 287, 52, NULL, NULL),
(837, 288, 42, NULL, NULL),
(838, 288, 43, NULL, NULL),
(839, 289, 9, NULL, NULL),
(840, 289, 10, NULL, NULL),
(841, 290, 7, NULL, NULL),
(842, 290, 49, NULL, NULL),
(843, 291, 11, NULL, NULL),
(844, 291, 47, NULL, NULL),
(845, 292, 12, NULL, NULL),
(846, 292, 31, NULL, NULL),
(847, 293, 16, NULL, NULL),
(848, 293, 18, NULL, NULL),
(849, 294, 21, NULL, NULL),
(850, 294, 43, NULL, NULL),
(851, 295, 8, NULL, NULL),
(852, 295, 27, NULL, NULL),
(853, 296, 16, NULL, NULL),
(854, 296, 17, NULL, NULL),
(855, 297, 8, NULL, NULL),
(856, 297, 29, NULL, NULL),
(857, 298, 16, NULL, NULL),
(858, 298, 27, NULL, NULL),
(859, 299, 29, NULL, NULL),
(860, 299, 32, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_29_140836_create_employes_table', 1),
(6, '2023_03_29_141104_create_destinations_table', 1),
(7, '2023_03_29_141203_create_charges_table', 1),
(8, '2023_03_30_044638_create_instructions_table', 1),
(9, '2023_03_30_084034_create_instruction_employes_table', 1),
(10, '2023_03_31_055412_create_accounts_table', 1),
(11, '2023_03_31_063105_create_transports_table', 1),
(12, '2023_03_31_072400_create_categories_table', 1),
(13, '2023_03_31_171220_create_rekenings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rekenings`
--

CREATE TABLE `rekenings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomor` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rekenings`
--

INSERT INTO `rekenings` (`id`, `nomor`, `created_at`, `updated_at`) VALUES
(1, 'nomor', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, '1.02.02.2.02.02', '2023-04-01 02:36:55', '2023-04-01 02:36:55'),
(3, '1.02.02.2.02.03', '2023-04-01 02:36:55', '2023-04-01 02:36:55'),
(4, '1.02.02.2.02.04.5.1.02.04.01.0003', '2023-04-01 02:36:55', '2023-06-20 20:17:33'),
(5, '1.02.02.2.02.05.5.1.02.04.01.0003', '2023-04-01 02:36:55', '2023-06-20 19:38:22'),
(6, '1.02.02.2.02.11', '2023-04-01 02:36:55', '2023-04-01 02:36:55'),
(7, '1.02.02.2.02.15', '2023-04-01 02:36:55', '2023-04-01 02:36:55'),
(8, '1.02.02.2.02.17.5.1.02..04.01.0003', '2023-04-01 02:36:55', '2023-07-02 19:49:07'),
(9, '1.02.02.2.02.20', '2023-04-01 02:36:55', '2023-04-01 02:36:55'),
(10, '1.02.02.2.02.25.5.1.02.04.01.0003', '2023-04-01 02:36:55', '2023-06-25 21:39:34'),
(11, '1.02.05.2.01.01', '2023-04-01 02:36:55', '2023-04-01 02:36:55'),
(12, '1.02.02.2.01.37', '2023-04-01 02:36:55', '2023-04-01 02:36:55'),
(13, '1.02.02.2.02.10.', '2023-05-21 18:52:28', '2023-05-21 18:52:28'),
(14, '1.02.02.2.02.22', '2023-05-21 20:33:21', '2023-05-21 20:33:21'),
(15, '1.02.02.2.02.25', '2023-06-20 19:35:26', '2023-06-20 19:35:26'),
(16, '1.02.02.2.02.18.5.1.02.04.01.0003', '2023-07-19 21:33:42', '2023-07-19 21:33:42');

-- --------------------------------------------------------

--
-- Table structure for table `transports`
--

CREATE TABLE `transports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transports`
--

INSERT INTO `transports` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Kendaraan Umum', NULL, NULL),
(2, 'Kendaraan Dinas', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$bTj3J6pmiEHQoS9oKbRn7O6kAl7lnhDCn4egljgXYHOpouxPZrXqa', NULL, NULL, '2023-04-12 09:10:11'),
(2, 'Gondosari', 'gondosari@gmail.com', NULL, '$2y$10$FeJ0/hq7/dV8MzvSdPbfdevWXqtYGWwVdgIJ3X4m6kitFX9hgYK1a', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `charges`
--
ALTER TABLE `charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `destinations`
--
ALTER TABLE `destinations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employes`
--
ALTER TABLE `employes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `instructions`
--
ALTER TABLE `instructions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instruction_employes`
--
ALTER TABLE `instruction_employes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `instruction_employes_instruction_id_foreign` (`instruction_id`),
  ADD KEY `instruction_employes_employe_id_foreign` (`employe_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `rekenings`
--
ALTER TABLE `rekenings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transports`
--
ALTER TABLE `transports`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `charges`
--
ALTER TABLE `charges`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `destinations`
--
ALTER TABLE `destinations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `employes`
--
ALTER TABLE `employes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `instructions`
--
ALTER TABLE `instructions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=300;

--
-- AUTO_INCREMENT for table `instruction_employes`
--
ALTER TABLE `instruction_employes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=861;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rekenings`
--
ALTER TABLE `rekenings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `transports`
--
ALTER TABLE `transports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `instruction_employes`
--
ALTER TABLE `instruction_employes`
  ADD CONSTRAINT `instruction_employes_employe_id_foreign` FOREIGN KEY (`employe_id`) REFERENCES `employes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `instruction_employes_instruction_id_foreign` FOREIGN KEY (`instruction_id`) REFERENCES `instructions` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
