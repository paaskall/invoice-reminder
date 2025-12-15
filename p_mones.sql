-- phpMyAdmin SQL Dump
-- version 6.0.0-dev+20250914.f72491a1c0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 15, 2025 at 07:09 AM
-- Server version: 8.4.3
-- PHP Version: 8.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `p_mones`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `metadata` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `user_id`, `action`, `ip_address`, `user_agent`, `metadata`, `created_at`, `updated_at`) VALUES
(1, 6, 'login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '[]', '2025-12-12 08:17:41', '2025-12-12 08:17:41'),
(2, 6, 'logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '[]', '2025-12-12 08:17:45', '2025-12-12 08:17:45'),
(3, 2, 'login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '[]', '2025-12-12 08:20:28', '2025-12-12 08:20:28'),
(4, 2, 'login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '[]', '2025-12-12 08:20:53', '2025-12-12 08:20:53'),
(5, 2, 'logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '[]', '2025-12-12 08:21:42', '2025-12-12 08:21:42'),
(6, 2, 'login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '[]', '2025-12-12 08:21:51', '2025-12-12 08:21:51'),
(7, 2, 'login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '[]', '2025-12-12 08:50:00', '2025-12-12 08:50:00'),
(8, 2, 'login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '[]', '2025-12-12 22:18:11', '2025-12-12 22:18:11'),
(9, 2, 'login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '[]', '2025-12-13 06:04:17', '2025-12-13 06:04:17'),
(10, 2, 'login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '[]', '2025-12-13 23:33:37', '2025-12-13 23:33:37'),
(11, 2, 'login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '[]', '2025-12-13 23:53:23', '2025-12-13 23:53:23'),
(12, 2, 'logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '[]', '2025-12-13 23:56:07', '2025-12-13 23:56:07'),
(13, 6, 'login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '[]', '2025-12-13 23:56:14', '2025-12-13 23:56:14'),
(14, 6, 'login', '192.168.1.30', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Mobile Safari/537.36', '[]', '2025-12-14 00:14:12', '2025-12-14 00:14:12'),
(15, NULL, 'login_failed', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '{\"username\": \"adminpmadminpm\"}', '2025-12-14 01:25:12', '2025-12-14 01:25:12'),
(16, NULL, 'login_failed', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '{\"username\": \"adminpmadminpmadminpm\"}', '2025-12-14 01:25:30', '2025-12-14 01:25:30'),
(17, 2, 'login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '[]', '2025-12-14 01:26:22', '2025-12-14 01:26:22'),
(18, 2, 'login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '[]', '2025-12-14 22:57:31', '2025-12-14 22:57:31'),
(19, 2, 'login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '[]', '2025-12-14 22:59:17', '2025-12-14 22:59:17'),
(20, 2, 'logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '[]', '2025-12-14 23:02:29', '2025-12-14 23:02:29'),
(21, 6, 'login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '[]', '2025-12-14 23:02:44', '2025-12-14 23:02:44');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel-cache-4a56b266341415dfcdcda85dcaaa84c1', 'i:1;', 1765700112),
('laravel-cache-4a56b266341415dfcdcda85dcaaa84c1:timer', 'i:1765700112;', 1765700112),
('laravel-cache-94d92f976fd06fd3e8cf53ec4e03d646', 'i:1;', 1765782223),
('laravel-cache-94d92f976fd06fd3e8cf53ec4e03d646:timer', 'i:1765782223;', 1765782223),
('laravel-cache-geocode_-5.134_119.462', 'N;', 1768133880),
('laravel-cache-user_location_default', 'a:5:{s:4:\"city\";s:8:\"Makassar\";s:6:\"region\";s:16:\"Sulawesi Selatan\";s:7:\"country\";s:9:\"Indonesia\";s:8:\"latitude\";d:-5.1477;s:9:\"longitude\";d:119.4327;}', 1765785479),
('laravel-cache-weather_-5.1338_119.4619', 'a:4:{s:11:\"temperature\";d:28.04;s:11:\"description\";s:13:\"Awan tersebar\";s:8:\"humidity\";i:78;s:4:\"icon\";s:3:\"03d\";}', 1765705210),
('laravel-cache-weather_-5.1412992_119.4655744', 'a:4:{s:11:\"temperature\";d:28.02;s:11:\"description\";s:13:\"Awan tersebar\";s:8:\"humidity\";i:83;s:4:\"icon\";s:3:\"03d\";}', 1765700422),
('laravel-cache-weather_-5.1477_119.4327', 'a:4:{s:11:\"temperature\";i:0;s:11:\"description\";s:25:\"Data cuaca tidak tersedia\";s:8:\"humidity\";i:0;s:4:\"icon\";s:3:\"01d\";}', 1765782484);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `daily_progress`
--

CREATE TABLE `daily_progress` (
  `id` bigint UNSIGNED NOT NULL,
  `po_id` bigint UNSIGNED NOT NULL,
  `pekerjaan_item_id` bigint UNSIGNED NOT NULL,
  `pelapor_id` bigint UNSIGNED NOT NULL,
  `status_approval` enum('pending','approved','rejected') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `approved_by` bigint UNSIGNED DEFAULT NULL,
  `approved_at` timestamp NULL DEFAULT NULL,
  `rejection_reason` text COLLATE utf8mb4_unicode_ci,
  `tanggal` date NOT NULL,
  `jenis_pekerjaan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `volume_realisasi` decimal(15,2) NOT NULL DEFAULT '0.00',
  `satuan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deskripsi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_pekerja` int DEFAULT NULL,
  `alat_berat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `material` text COLLATE utf8mb4_unicode_ci,
  `cuaca_suhu` decimal(5,1) DEFAULT NULL,
  `cuaca_deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cuaca_kelembaban` int DEFAULT NULL,
  `jam_kerja` decimal(5,1) DEFAULT NULL,
  `kondisi_lapangan` enum('normal','becek','kering','licin') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'normal',
  `kendala` text COLLATE utf8mb4_unicode_ci,
  `solusi` text COLLATE utf8mb4_unicode_ci,
  `foto` json DEFAULT NULL,
  `gps_latitude` decimal(10,8) DEFAULT NULL,
  `gps_longitude` decimal(11,8) DEFAULT NULL,
  `lokasi_nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rencana_besok` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `digital_signatures`
--

CREATE TABLE `digital_signatures` (
  `id` bigint UNSIGNED NOT NULL,
  `signature_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `role_approval` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_approver` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signature_hash` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `algorithm` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'SHA-256',
  `qr_code_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `original_signature_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hybrid_signature_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` json DEFAULT NULL,
  `is_revoked` tinyint(1) NOT NULL DEFAULT '0',
  `revoked_at` timestamp NULL DEFAULT NULL,
  `revoked_reason` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `digital_signatures`
--

INSERT INTO `digital_signatures` (`id`, `signature_id`, `user_id`, `role_approval`, `nama_approver`, `jabatan`, `signature_hash`, `algorithm`, `qr_code_path`, `original_signature_path`, `hybrid_signature_path`, `metadata`, `is_revoked`, `revoked_at`, `revoked_reason`, `created_at`, `updated_at`) VALUES
(2, '0cc3bcc2-e0b0-4c03-8548-75c357b8d2e5', 2, 'manager_teknik', 'BUDI SANTOSO', 'Manager Teknik dan Pemeliharaan', 'f7ac26136c737da5a004a0da78dd63c7cf9321324d245a5b24f2568d7f04aef5', 'SHA-256', 'signatures/qr/qr_0cc3bcc2-e0b0-4c03-8548-75c357b8d2e5.svg', NULL, NULL, '{\"ip_address\": \"127.0.0.1\", \"updated_by\": \"Admin P-Mones\"}', 1, '2025-11-11 05:25:22', 'Updated signature configuration', '2025-11-10 18:28:53', '2025-11-11 05:25:22'),
(3, '27052b4f-1e31-4a27-8bf4-1049714371e1', 2, 'direktur', 'JANE SMITH, M.T.', 'Direktur Teknik', '9c86383ca9afc4d034dd57a6154a662bb6e022a7f66403a0f2e80d3657595d8d', 'SHA-256', 'signatures/qr/qr_27052b4f-1e31-4a27-8bf4-1049714371e1.svg', NULL, NULL, '{\"created_by\": \"Tinker Test\"}', 0, NULL, NULL, '2025-11-10 18:31:06', '2025-11-10 18:31:06'),
(4, '65c01114-2e8f-4994-beb8-b7b86306fa6f', 2, 'manager_teknik', 'BUDI SANTOSO II', 'Manager Teknik dan Pemeliharaan', 'bd44058580c58518f1cd0c9e8a80680323283bd586c16136485a771325da17e5', 'SHA-256', 'signatures/qr/qr_65c01114-2e8f-4994-beb8-b7b86306fa6f.svg', NULL, NULL, '{\"ip_address\": \"127.0.0.1\", \"updated_by\": \"Admin P-Mones\"}', 1, '2025-11-11 05:25:47', 'Updated signature configuration', '2025-11-11 05:25:29', '2025-11-11 05:25:47'),
(5, 'f4838e5c-5dc5-44fa-b3f5-d565481ef309', 2, 'assisten_manager', 'BUDI SANTOSO II', 'Manager Teknik dan Pemeliharaan', '9bd97932d8fc4c1f30558677d048f3aef2156d888cea65b83d1c10788a4b78a4', 'SHA-256', 'signatures/qr/qr_f4838e5c-5dc5-44fa-b3f5-d565481ef309.svg', NULL, NULL, '{\"ip_address\": \"127.0.0.1\", \"updated_by\": \"Admin P-Mones\"}', 1, '2025-11-11 05:44:32', 'Updated signature configuration', '2025-11-11 05:25:48', '2025-11-11 05:44:32'),
(6, '78a1bafb-dc46-4f6b-99ef-cf4986dca54d', 4, 'direktur', 'RINI', 'Direktur', '2fc4a934d4bc5bfafa42736e2cfd87f9538646ca778986ed7139887ce18e9533', 'SHA-256', 'signatures/qr/qr_78a1bafb-dc46-4f6b-99ef-cf4986dca54d.svg', NULL, NULL, '{\"created_by\": \"Admin P-Mones\", \"ip_address\": \"127.0.0.1\", \"user_agent\": \"Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Mobile Safari/537.36\"}', 1, '2025-11-12 18:28:22', 'Updated signature configuration', '2025-11-11 05:41:55', '2025-11-12 18:28:22'),
(7, 'a7fbca39-fd57-4d85-bdb2-889a88a0e4f0', 2, 'assisten_manager', 'BUDI SANTOSO II', 'Manager Teknik dan Pemeliharaan', '18dec1803ea6f7be95bc40f5ddbc18fb8de50e3c975d91155f362210b09e1b99', 'SHA-256', 'signatures/qr/qr_a7fbca39-fd57-4d85-bdb2-889a88a0e4f0.svg', NULL, NULL, '{\"ip_address\": \"127.0.0.1\", \"updated_by\": \"Admin P-Mones\"}', 1, '2025-12-07 20:02:54', 'Approval setting deleted', '2025-11-11 05:44:32', '2025-12-07 20:02:54'),
(8, '56661298-d9a8-48e0-95af-51eb41f80cf9', 4, 'manager_teknik', 'BUDI SANTOSO II', 'Manager Teknik dan Pemeliharaan', '2e2bc13ea4cebfb36f99eda67721fc8cbab0983096ae7b6f27717b46fa4ca905', 'SHA-256', 'signatures/qr/qr_56661298-d9a8-48e0-95af-51eb41f80cf9.svg', NULL, NULL, '{\"created_by\": \"Admin P-Mones\", \"ip_address\": \"127.0.0.1\", \"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/141.0.0.0 Safari/537.36\"}', 1, '2025-12-07 01:54:31', 'Approval setting deleted', '2025-11-11 05:47:58', '2025-12-07 01:54:31'),
(9, '2142eb7e-3511-42a9-8bfd-6d1d1d8cecc4', 5, 'direktur', 'RINI', 'Direktur', 'e6e8569318a343d73a1335357c95658e6b6455c095635d8b0e55820e49c01b80', 'SHA-256', 'signatures/qr/qr_2142eb7e-3511-42a9-8bfd-6d1d1d8cecc4.svg', NULL, NULL, '{\"ip_address\": \"127.0.0.1\", \"updated_by\": \"Admin P-Mones\"}', 1, '2025-12-07 20:03:02', 'Approval setting deleted', '2025-11-12 18:28:33', '2025-12-07 20:03:02');

-- --------------------------------------------------------

--
-- Table structure for table `dokumen_pengadaan`
--

CREATE TABLE `dokumen_pengadaan` (
  `id` bigint UNSIGNED NOT NULL,
  `pekerjaan_id` bigint UNSIGNED NOT NULL,
  `jenis_dokumen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_dokumen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` date DEFAULT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dokumen_pengadaan`
--

INSERT INTO `dokumen_pengadaan` (`id`, `pekerjaan_id`, `jenis_dokumen`, `nama_dokumen`, `tanggal`, `file_path`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 54, 'KAK', 'KAK', '2025-12-13', 'dokumen_pengadaan/P7bJR1LfOXb8bhNQQDuavgmsE5fQAoPzdW27wp4A.pdf', NULL, '2025-12-13 06:33:36', '2025-12-13 06:33:36');

-- --------------------------------------------------------

--
-- Table structure for table `dokumen_usulan`
--

CREATE TABLE `dokumen_usulan` (
  `id` bigint UNSIGNED NOT NULL,
  `pekerjaan_id` bigint UNSIGNED NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_dokumen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_upload` date NOT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dokumen_usulan`
--

INSERT INTO `dokumen_usulan` (`id`, `pekerjaan_id`, `keterangan`, `kategori`, `nama_dokumen`, `tanggal_upload`, `file_path`, `created_at`, `updated_at`) VALUES
(1, 54, NULL, 'Analisis Finansial', 'Studi Kelayakan', '2025-12-13', 'dokumen_usulan/O2l5gWGapim14Q5fCs7IuPvuKCKk4muX4PRb7JCp.pdf', '2025-12-13 06:36:48', '2025-12-13 06:36:48');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gambars`
--

CREATE TABLE `gambars` (
  `id` bigint UNSIGNED NOT NULL,
  `pekerjaan_id` bigint UNSIGNED NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Pending','Approved','Rejected') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `tanggal_upload` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gambars`
--

INSERT INTO `gambars` (`id`, `pekerjaan_id`, `keterangan`, `file`, `status`, `tanggal_upload`, `created_at`, `updated_at`) VALUES
(2, 69, 'Shop Drawing', '1760080484_Gemini_Generated_Image_bcme5lbcme5lbcme.png', 'Approved', NULL, '2025-10-09 23:14:44', '2025-10-12 21:18:25'),
(4, 69, 'As Built', '1760332694_WhatsApp Image 2025-10-03 at 11.55.20.jpeg', 'Approved', NULL, '2025-10-12 21:18:14', '2025-10-12 21:18:36'),
(5, 54, 'Shop Drawing', '1764410309_Gemini_Generated_Image_w73ottw73ottw73o.png', 'Approved', NULL, '2025-11-29 01:58:30', '2025-12-08 08:07:48'),
(8, 54, 'Shop Drawing', '1765209968_pelindo.png', 'Pending', '2025-12-08', '2025-12-08 08:06:08', '2025-12-08 08:06:08'),
(9, 54, 'Shop Drawing', '1765544847_Dokumentasi_1765544774099.pdf', 'Pending', '2025-12-12', '2025-12-12 05:07:27', '2025-12-12 05:07:27');

-- --------------------------------------------------------

--
-- Table structure for table `grs`
--

CREATE TABLE `grs` (
  `id` bigint UNSIGNED NOT NULL,
  `pr_id` bigint UNSIGNED NOT NULL,
  `po_id` bigint UNSIGNED DEFAULT NULL,
  `termin_id` bigint UNSIGNED DEFAULT NULL,
  `tanggal_gr` date NOT NULL,
  `nomor_gr` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilai_gr` decimal(20,0) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `file_ba_pemeriksaan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_ba_serah_terima` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_ba_pembayaran` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_laporan_dokumentasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kontraks`
--

CREATE TABLE `kontraks` (
  `id` bigint UNSIGNED NOT NULL,
  `pekerjaan_id` bigint UNSIGNED DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_kontrak` date NOT NULL,
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kontraks`
--

INSERT INTO `kontraks` (`id`, `pekerjaan_id`, `keterangan`, `tanggal_kontrak`, `file_path`, `created_at`, `updated_at`) VALUES
(2, 69, 'RAB', '2025-11-01', 'kontrak_files/NHel1YTmWBRvGWOmTOOexpkguAd6WJPdezggBpnj.pdf', '2025-10-12 22:27:01', '2025-10-12 22:27:01'),
(3, 69, 'Kontrak Pekerjaan', '2025-10-18', 'kontrak_files/Z6tYPS1ObY3M9ZjaQB0Kq9gLk2Kk7azDzUIwDMp0.pdf', '2025-10-12 22:33:13', '2025-10-12 22:33:13'),
(4, 54, 'Kontrak Pekerjaan', '2025-12-08', 'kontrak_files/azhwCAm8z0qEuhYCCFRM2kZpf5tLXqwEKAeirHpd.pdf', '2025-12-08 05:56:26', '2025-12-08 05:56:26');

-- --------------------------------------------------------

--
-- Table structure for table `korespondensis`
--

CREATE TABLE `korespondensis` (
  `id` bigint UNSIGNED NOT NULL,
  `pekerjaan_id` bigint UNSIGNED DEFAULT NULL,
  `jenis` varchar(100) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `korespondensis`
--

INSERT INTO `korespondensis` (`id`, `pekerjaan_id`, `jenis`, `judul`, `tanggal`, `file_path`, `created_at`, `updated_at`) VALUES
(1, 69, 'Persuratan', 'persuratan', '2025-10-13', 'korespondensi/gaKAnGoKNGRKYwamFiaqV9103mNmSdZNCywZcnM5.pdf', '2025-10-12 22:51:51', '2025-10-12 22:51:51');

-- --------------------------------------------------------

--
-- Table structure for table `laporans`
--

CREATE TABLE `laporans` (
  `id` bigint UNSIGNED NOT NULL,
  `pekerjaan_id` bigint UNSIGNED NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_laporan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_upload` date DEFAULT NULL,
  `status` enum('Menunggu','Disetujui','Ditolak') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Menunggu',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `laporans`
--

INSERT INTO `laporans` (`id`, `pekerjaan_id`, `keterangan`, `file_laporan`, `tanggal_upload`, `status`, `created_at`, `updated_at`) VALUES
(1, 69, 'laporan persetujuan', '1760081748_PRINT INI.pdf', '2025-10-10', 'Disetujui', '2025-10-09 23:35:48', '2025-10-09 23:41:34'),
(2, 69, 'laporan persetujuan na', '1760082198_bismillah acc.pdf', '2025-10-10', 'Disetujui', '2025-10-09 23:43:18', '2025-10-09 23:43:28'),
(3, 69, 'laporan apa kek', '1763905149_Dokumentasi_1763905050246.pdf', '2025-11-23', 'Menunggu', '2025-11-23 05:39:09', '2025-11-23 05:39:09');

-- --------------------------------------------------------

--
-- Table structure for table `laporan_approvals`
--

CREATE TABLE `laporan_approvals` (
  `id` bigint UNSIGNED NOT NULL,
  `laporan_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `role_approval` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_approver` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','approved','rejected') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `komentar` text COLLATE utf8mb4_unicode_ci,
  `tanggal_approval` timestamp NULL DEFAULT NULL,
  `urutan` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `laporan_approvals`
--

INSERT INTO `laporan_approvals` (`id`, `laporan_id`, `user_id`, `role_approval`, `nama_approver`, `status`, `komentar`, `tanggal_approval`, `urutan`, `created_at`, `updated_at`) VALUES
(35, 28, 5, 'manager_teknik', 'ASRINI BISMILLAH', 'approved', NULL, '2025-11-14 00:29:52', 1, '2025-11-13 06:56:31', '2025-11-14 00:29:52'),
(36, 28, 2, 'direktur', 'BUDI SANTOSO II', 'approved', NULL, '2025-11-13 06:57:21', 2, '2025-11-13 06:56:31', '2025-11-13 06:57:21'),
(37, 30, 5, 'assisten_manager', 'SITI NURHALIZA S.T.', 'pending', NULL, NULL, 1, '2025-12-08 05:46:55', '2025-12-08 05:46:55');

-- --------------------------------------------------------

--
-- Table structure for table `laporan_approval_settings`
--

CREATE TABLE `laporan_approval_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `role_approval` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_approver` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `urutan` int NOT NULL DEFAULT '1',
  `tanda_tangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signature_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qr_code_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signature_hash` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signature_type` enum('manual','qr','hybrid') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'manual',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `laporan_details`
--

CREATE TABLE `laporan_details` (
  `id` bigint UNSIGNED NOT NULL,
  `laporan_id` bigint UNSIGNED NOT NULL,
  `coa` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '-',
  `nomor_prodef_sap` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '-',
  `nama_investasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '-',
  `uraian_pekerjaan` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '-',
  `total_volume` decimal(20,0) NOT NULL DEFAULT '0',
  `nilai_rkap` decimal(20,0) NOT NULL DEFAULT '0',
  `target_sd_bulan` decimal(20,0) NOT NULL DEFAULT '0',
  `nomor_po` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '-',
  `tanggal_po` date DEFAULT NULL,
  `pelaksana` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '-',
  `waktu_pelaksanaan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimated` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mulai_kontrak` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selesai_kontrak` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `realisasi_fisik` decimal(5,2) NOT NULL DEFAULT '0.00',
  `realisasi_pembayaran` decimal(20,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `laporan_details`
--

INSERT INTO `laporan_details` (`id`, `laporan_id`, `coa`, `nomor_prodef_sap`, `nama_investasi`, `uraian_pekerjaan`, `total_volume`, `nilai_rkap`, `target_sd_bulan`, `nomor_po`, `tanggal_po`, `pelaksana`, `waktu_pelaksanaan`, `estimated`, `mulai_kontrak`, `selesai_kontrak`, `realisasi_fisik`, `realisasi_pembayaran`, `created_at`, `updated_at`) VALUES
(87, 28, '201', 'P/23.04.013', 'Pengembangan Pelabuhan Garongkong dan Pelabuhan di Regional 4 (Multiyears 2023-2025)', 'Pekerjaan Jasa Konsultan Supervisi Pembangunan Terminal Penumpang Pelabuhan Ambon', 43499, 8800000, 781570, 'po09', '2025-10-07', 'Intan Sejahtera', '117', '2025-10-07 s/d 2026-01-31', '2025-10-07', '2026-01-31', 0.00, 50000000.00, '2025-11-13 06:56:31', '2025-11-13 06:56:31'),
(88, 28, '201', 'P/23.04.013', 'Pengembangan Pelabuhan Garongkong dan Pelabuhan di Regional 4 (Multiyears 2023-2025)', 'Pekerjaan Penyusunan dan Penilaian Analisis Dampak Lalu Lintas (Andalalin) Pelabuhan Garongkong.', 0, 8800000, 358470, 'PO/2025/0012', '2025-10-13', 'JASARAHARJA', '41', '2025-10-13 s/d 2025-11-22', '2025-10-13', '2025-11-22', 0.00, 12030000.00, '2025-11-13 06:56:31', '2025-11-13 06:56:31'),
(89, 28, '211', 'I/1.22.25.20501.02', 'Pembebasan Lahan Tahap 3', 'apa yaa bisa kah', 43499, 0, 10000000, '10234745121', '2025-11-14', 'PT PELINDO PROPERTI INDONESIA', '18', '2025-11-12 s/d 2025-11-29', '2025-11-12', '2025-11-29', 0.00, 0.00, '2025-11-13 06:56:31', '2025-11-13 06:56:31'),
(90, 30, '201', 'P/23.04.013', 'Pengembangan Pelabuhan Garongkong dan Pelabuhan di Regional 4 (Multiyears 2023-2025)', 'yaa', 43566, 8800000, 100000, '10234745', '2025-11-28', 'PT PELINDO PROPERTI INDONESIA', '72', '2025-11-28 s/d 2026-02-07', '2025-11-28', '2026-02-07', 0.00, 0.00, '2025-12-08 05:46:55', '2025-12-08 05:46:55'),
(91, 30, '212', 'I/1.22.25.20506.06', 'Pembangunan Gudang Arsip (Multiyears 2021-2022)', 'apapa yaaw', 0, 0, 10000000, '-', NULL, '-', '-', '-', NULL, NULL, 0.00, 0.00, '2025-12-08 05:46:55', '2025-12-08 05:46:55');

-- --------------------------------------------------------

--
-- Table structure for table `laporan_investasi`
--

CREATE TABLE `laporan_investasi` (
  `id` bigint UNSIGNED NOT NULL,
  `kode_laporan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_laporan` enum('rekap_activa','rekap_rincian') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'rekap_rincian',
  `tahun` int NOT NULL,
  `bulan` int NOT NULL,
  `periode_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_approval` enum('draft','pending','approved','rejected') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `catatan` text COLLATE utf8mb4_unicode_ci,
  `tanggal_dibuat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `tanggal_disubmit` timestamp NULL DEFAULT NULL,
  `tanggal_approved` timestamp NULL DEFAULT NULL,
  `dibuat_oleh` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `laporan_investasi`
--

INSERT INTO `laporan_investasi` (`id`, `kode_laporan`, `jenis_laporan`, `tahun`, `bulan`, `periode_label`, `status_approval`, `catatan`, `tanggal_dibuat`, `tanggal_disubmit`, `tanggal_approved`, `dibuat_oleh`, `created_at`, `updated_at`, `deleted_at`) VALUES
(26, 'LI-2025-10-001', 'rekap_activa', 2025, 10, 'Laporan s.d Oktober', 'pending', NULL, '2025-11-13 06:49:21', '2025-11-13 06:49:54', NULL, 2, '2025-11-13 06:49:21', '2025-12-08 05:47:47', '2025-12-08 05:47:47'),
(28, 'LI-2025-11-001', 'rekap_activa', 2025, 11, 'Laporan s.d November', 'approved', NULL, '2025-11-13 06:56:30', '2025-11-13 06:57:16', '2025-11-14 00:29:52', 2, '2025-11-13 06:56:30', '2025-11-14 00:29:52', NULL),
(30, 'LI-2025-12-001', 'rekap_activa', 2025, 12, 'Laporan s.d Desember', 'pending', NULL, '2025-12-08 05:46:55', '2025-12-08 05:48:01', NULL, 2, '2025-12-08 05:46:55', '2025-12-08 05:48:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `laporan_mingguan`
--

CREATE TABLE `laporan_mingguan` (
  `id` bigint UNSIGNED NOT NULL,
  `po_id` bigint UNSIGNED NOT NULL,
  `minggu_id` bigint UNSIGNED NOT NULL,
  `kode_laporan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_approval` enum('draft','pending','approved','rejected') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `laporan_mingguan_approvals`
--

CREATE TABLE `laporan_mingguan_approvals` (
  `id` bigint UNSIGNED NOT NULL,
  `laporan_mingguan_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `role_approval` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_approver` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','approved','rejected') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `komentar` text COLLATE utf8mb4_unicode_ci,
  `tanggal_approval` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` bigint UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `successful` tinyint(1) NOT NULL DEFAULT '0',
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `login_attempts`
--

INSERT INTO `login_attempts` (`id`, `username`, `ip_address`, `successful`, `user_agent`, `created_at`, `updated_at`) VALUES
(1, 'rini', '127.0.0.1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-12 08:17:41', '2025-12-12 08:17:41'),
(2, 'adminpm', '127.0.0.1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-12 08:20:28', '2025-12-12 08:20:28'),
(3, 'adminpm', '127.0.0.1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-12 08:20:53', '2025-12-12 08:20:53'),
(4, 'adminpm', '127.0.0.1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-12 08:21:51', '2025-12-12 08:21:51'),
(5, 'adminpm', '127.0.0.1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-12 08:50:00', '2025-12-12 08:50:00'),
(6, 'adminpm', '127.0.0.1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-12 22:18:11', '2025-12-12 22:18:11'),
(7, 'adminpm', '127.0.0.1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-13 06:04:17', '2025-12-13 06:04:17'),
(8, 'adminpm', '127.0.0.1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-13 23:33:36', '2025-12-13 23:33:36'),
(9, 'adminpm', '127.0.0.1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-13 23:53:23', '2025-12-13 23:53:23'),
(10, 'rini', '127.0.0.1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-13 23:56:14', '2025-12-13 23:56:14'),
(11, 'rini', '192.168.1.30', 1, 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Mobile Safari/537.36', '2025-12-14 00:14:12', '2025-12-14 00:14:12'),
(12, 'adminpmadminpm', '127.0.0.1', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-14 01:25:12', '2025-12-14 01:25:12'),
(13, 'adminpmadminpmadminpm', '127.0.0.1', 0, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-14 01:25:30', '2025-12-14 01:25:30'),
(14, 'adminpm', '127.0.0.1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-14 01:26:22', '2025-12-14 01:26:22'),
(15, 'adminpm', '127.0.0.1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-14 22:57:31', '2025-12-14 22:57:31'),
(16, 'adminpm', '127.0.0.1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-14 22:59:17', '2025-12-14 22:59:17'),
(17, 'rini', '127.0.0.1', 1, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', '2025-12-14 23:02:44', '2025-12-14 23:02:44');

-- --------------------------------------------------------

--
-- Table structure for table `master_investasis`
--

CREATE TABLE `master_investasis` (
  `id` bigint UNSIGNED NOT NULL,
  `pekerjaan_id` bigint UNSIGNED DEFAULT NULL,
  `tipe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coa_sub` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manfaat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sifat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `urgensi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_investasis`
--

INSERT INTO `master_investasis` (`id`, `pekerjaan_id`, `tipe`, `coa_sub`, `kategori`, `manfaat`, `jenis`, `sifat`, `urgensi`, `created_at`, `updated_at`) VALUES
(15, 48, 'B', 'Jalan, Bangunan, Sarana dan Prasarana', 'Penggantian untuk mempertahankan bisnis', 'Meningkatkan Keselamatan Kerja / Lingkungan', 'STR: Strategi', 'Pengembangan/Expanse', 'Sedang', '2025-10-02 20:06:45', '2025-10-02 20:06:45'),
(16, 49, 'C', 'Tanah dan Hak Atas Tanah', 'Penggantian untuk efisiensi', 'Menghasilkan Pendapatan / Menurunkan Biaya', 'STR: Strategi', 'Pengembangan/Expanse', 'Tinggi', '2025-10-03 10:52:06', '2025-10-03 10:52:06'),
(17, 50, 'B', 'Bangunan Fasilitas', 'Penggantian untuk mempertahankan bisnis', 'Menghasilkan Pendapatan / Menurunkan Biaya', 'STR: Strategi', 'Pengembangan/Expanse', 'Sedang', '2025-10-03 10:55:24', '2025-10-03 10:55:24'),
(18, 51, 'C', 'Bangunan Fasilitas', 'Penggantian untuk mempertahankan bisnis', 'Menghasilkan Pendapatan / Menurunkan Biaya', 'STR: Strategi', 'Pengembangan/Expanse', 'Sedang', '2025-10-03 10:57:07', '2025-10-03 10:57:07'),
(19, 52, 'C', 'Bangunan Fasilitas', 'Penggantian untuk mempertahankan bisnis', 'Meningkatkan Keselamatan Kerja / Lingkungan', 'STR: Strategi', 'RU: Rutin/Maintenance', 'Tinggi', '2025-10-03 11:01:18', '2025-10-03 11:01:18'),
(20, 53, 'B', 'Jalan, Bangunan, Sarana dan Prasarana', 'Investasi lain-lain', 'Memenuhi Kebutuhan Minimal', 'STR: Strategi', 'Pengembangan/Expanse', 'Sedang', '2025-10-03 11:03:39', '2025-10-03 11:03:39'),
(21, 54, 'B', 'Bangunan Fasilitas', 'Pengembangan bisnis greenfield', 'Memenuhi Kebutuhan Minimal', 'STR: Strategi', 'RU: Rutin/Maintenance', 'Sedang', '2025-10-03 11:06:30', '2025-10-03 11:06:30'),
(22, 55, 'B', 'Bangunan Fasilitas', 'Investasi lain-lain', 'Memenuhi Kebutuhan Minimal', 'NSTF:Non Strategis (BAU)', 'Pengembangan/Expanse', 'Tinggi', '2025-10-03 11:08:17', '2025-10-03 11:08:17'),
(23, 56, 'A', 'Bangunan Fasilitas', 'Investasi lain-lain', 'Meningkatkan Keselamatan Kerja / Lingkungan', 'NSTF:Non Strategis (BAU)', 'RU: Rutin/Maintenance', 'Sedang', '2025-10-03 11:09:46', '2025-10-03 11:09:46'),
(24, 57, 'A', 'Bangunan Fasilitas', 'Penggantian untuk efisiensi', 'Menghasilkan Pendapatan / Menurunkan Biaya', 'STR: Strategi', 'Pengembangan/Expanse', 'Tinggi', '2025-10-03 11:11:45', '2025-10-03 11:11:45'),
(25, 58, 'B', 'Bangunan Fasilitas', 'Pengembangan bisnis brownfield', 'Meningkatkan Keselamatan Kerja / Lingkungan', 'NSTF:Non Strategis (BAU)', 'RU: Rutin/Maintenance', 'Tinggi', '2025-10-03 11:13:16', '2025-10-03 11:13:16'),
(26, 59, 'B', 'Bangunan Fasilitas', 'Investasi lain-lain', 'Memenuhi Kebutuhan Minimal', 'NSTF:Non Strategis (BAU)', 'RU: Rutin/Maintenance', 'Sedang', '2025-10-03 11:14:38', '2025-10-03 11:14:38'),
(27, 60, 'B', 'Bangunan Fasilitas', 'Pengembangan bisnis brownfield', 'Tujuan administratif / kualitas pelayanan', 'NSTF:Non Strategis (BAU)', 'RU: Rutin/Maintenance', 'Tinggi', '2025-10-03 11:16:24', '2025-10-03 11:16:24'),
(28, 61, 'B', 'Instalasi Fasilitas', 'Investasi lain-lain', 'Meningkatkan Keselamatan Kerja / Lingkungan', 'STR: Strategi', 'Pengembangan/Expanse', 'Sedang', '2025-10-03 11:17:50', '2025-10-03 11:17:50'),
(29, 62, 'A', 'Jalan, Bangunan, Sarana dan Prasarana', 'Penggantian untuk mempertahankan bisnis', 'Meningkatkan Keselamatan Kerja / Lingkungan', 'NSTF:Non Strategis (BAU)', 'Pengembangan/Expanse', 'Tinggi', '2025-10-03 11:19:51', '2025-10-03 11:19:51'),
(30, 63, 'A', 'Jalan, Bangunan, Sarana dan Prasarana', 'Penggantian untuk mempertahankan bisnis', 'Menghasilkan Pendapatan / Menurunkan Biaya', 'STR: Strategi', 'Pengembangan/Expanse', 'Tinggi', '2025-10-03 11:21:03', '2025-10-03 11:21:03'),
(31, 64, 'A', 'Bangunan Fasilitas', 'Penggantian untuk mempertahankan bisnis', 'Memenuhi Kebutuhan Minimal', 'NSTF:Non Strategis (BAU)', 'RU: Rutin/Maintenance', 'Sedang', '2025-10-03 11:22:14', '2025-10-03 11:22:14'),
(32, 65, 'B', 'Bangunan Fasilitas', 'Pengembangan bisnis brownfield', 'Memenuhi Kebutuhan Minimal', 'NSTF:Non Strategis (BAU)', 'Pengembangan/Expanse', 'Sedang', '2025-10-03 11:23:37', '2025-10-03 11:23:37'),
(33, 66, 'B', 'Bangunan Fasilitas', 'Pengembangan bisnis brownfield', 'Memenuhi Kebutuhan Minimal', 'STR: Strategi', 'Pengembangan/Expanse', 'Tinggi', '2025-10-03 11:24:54', '2025-10-03 11:24:54'),
(34, 67, 'B', 'Bangunan Fasilitas', 'Penggantian untuk efisiensi', 'Menghasilkan Pendapatan / Menurunkan Biaya', 'NSTF:Non Strategis (BAU)', 'Pengembangan/Expanse', 'Tinggi', '2025-10-03 11:26:14', '2025-10-03 11:26:14'),
(35, 68, 'A', 'Bangunan Fasilitas', 'Investasi lain-lain', 'Meningkatkan Keselamatan Kerja / Lingkungan', 'STR: Strategi', 'Pengembangan/Expanse', 'Tinggi', '2025-10-03 11:27:31', '2025-10-03 11:27:31'),
(36, 69, 'A', 'Bangunan Fasilitas', 'Penggantian untuk mempertahankan bisnis', 'Tujuan administratif / kualitas pelayanan', 'STR: Strategi', 'Pengembangan/Expanse', 'Tinggi', '2025-10-03 11:28:51', '2025-10-03 11:28:51');

-- --------------------------------------------------------

--
-- Table structure for table `master_minggu`
--

CREATE TABLE `master_minggu` (
  `id` bigint UNSIGNED NOT NULL,
  `progress_id` bigint UNSIGNED NOT NULL,
  `kode_minggu` varchar(50) NOT NULL,
  `tanggal_awal` date NOT NULL,
  `tanggal_akhir` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_08_30_060717_add_username_to_users_table', 1),
(5, '2025_08_30_162505_create_wilayah_table', 2),
(6, '2025_08_30_163937_create_wilayahs_table', 3),
(7, '2025_08_30_170211_update_status_in_pekerjaan_table', 4),
(8, '2025_08_31_082158_create_profiles_table', 5),
(9, '2025_08_31_084439_create_profiles_table', 6),
(10, '2025_09_02_133209_add_wilayah_id_to_users_table', 7),
(11, '2025_09_02_134619_add_user_id_to_pekerjaan_table', 8),
(12, '2025_09_02_143106_fix_foreign_key_users_wilayah', 9),
(13, '2025_09_03_040236_create_settings_aplikasi_table', 10),
(14, '2025_09_05_102518_create_progress_fisik_table', 11),
(15, '2025_09_05_112622_change_bulan_column_in_progress_fisik_table', 12),
(16, '2025_09_10_130654_update_pekerjaan_table_rename_kebutuhan_dana_to_nilai_kontrak', 13),
(17, '2025_09_11_050046_update_pekerjaan_table_for_investasi', 14),
(18, '2025_09_11_050425_remove_tahun_from_pekerjaan_table', 15),
(19, '2025_09_11_061226_add_status_realisasi_to_pekerjaans_table', 16),
(20, '2025_09_11_071254_create_prs_table', 17),
(21, '2025_09_11_084922_remove_status_realisasi_from_pekerjaan_table', 18),
(22, '2025_09_11_090049_add_status_to_prs_table', 19),
(23, '2025_09_11_111841_update_pekerjaans_table', 20),
(24, '2025_09_11_122206_create_master_investasis_table', 21),
(25, '2025_09_11_135902_add_pekerjaan_id_to_master_investasis_table', 22),
(26, '2025_09_11_122458_create_master_investasis_table', 24),
(27, '2025_09_11_122458_create_master_investasis_table', 23),
(28, '2025_09_11_122458_create_master_investasis_table', 21),
(29, '2025_09_12_060239_create_pos_table', 25),
(30, '2025_09_14_073610_create_grs_table', 26),
(31, '2025_09_14_092414_rename_gr_to_progress_table', 27),
(32, '2025_09_14_095029_remove_file_ba_from_progresses_table', 28),
(33, '2025_09_14_133111_create_grs_table', 29),
(34, '2025_09_14_171014_create_payments_table', 30),
(35, '2025_09_15_012654_create_termins_table', 31),
(36, '2025_09_16_012516_update_termins_table', 32),
(37, '2025_09_16_013321_update_termins_table1', 33),
(38, '2025_09_17_034334_add_rencana_realisasi_to_progress_table', 34),
(39, '2025_09_17_105731_update_prs_table_add_tahun_anggaran_and_fix_jenis_pekerjaan', 35),
(40, '2025_09_17_122505_change_persentase_column_in_termins_table', 36),
(41, '2025_09_18_033438_update_progresses_table', 37),
(42, '2025_09_18_033743_create_progress_details_table', 1),
(43, '2025_09_18_060254_add_tanggal_minggu_to_progress_details_table', 38),
(44, '2025_09_18_064646_create_progress_sub_table', 39),
(45, '2025_09_18_064724_update_progress_detail_use_sub_id', 40),
(46, '2025_09_18_064759_clean_progress_table', 40),
(47, '2025_09_18_105538_add_file_ba_to_progresses_table', 41),
(48, '2025_09_21_113213_add_jumlah_harga_to_pekerjaan_items_table', 42),
(49, '2025_09_23_023016_add_pcm_columns_to_progress_table', 43),
(50, '2025_09_23_063237_update_master_minggu_add_progress_id', 44),
(51, '2025_09_24_082928_add_volume_realisasi_to_progress_details_table', 45),
(52, '2025_09_30_014952_2025_09_30_add_po_and_termin_to_grs', 46),
(53, '2025_09_30_054718_add_files_to_grs_table', 47),
(54, '2025_10_03_033835_create_rkap_pekerjaan_table', 55),
(55, '2025_10_08_053337_2025_10_8_add_termin_to_payments', 56),
(56, '2025_10_08_054152_add_payment_id_to_termins_table', 57),
(57, '2025_10_10_065427_create_gambars_table', 58),
(58, '2025_10_10_071808_create_laporans_table', 59),
(59, '2025_10_13_061222_create_kontraks_table', 60),
(60, '2025_10_13_072043_create_dokumen_usulan_table', 61),
(61, '2025_10_15_012105_add_gambar_to_pekerjaan_table', 62),
(63, '2025_10_16_015733_2025_01_16_create_laporan_investasi_tables', 63),
(64, '2025_10_22_014040_2025_10_22_000001_fix_laporan_details_nullable_columns', 63),
(65, '2025_11_08_103726_create_daily_progress_table', 64),
(66, '2025_11_09_060006_add_approval_to_daily_progress_table', 65),
(67, '2025_11_09_114022_add_lokasi_nama_to_daily_progress_table', 66),
(68, '2025_11_09_122249_create_laporan_approval_settings_table', 67),
(69, '2025_11_10_025231_add_digital_signature_columns_to_laporan_approval_settings', 68),
(70, '2025_12_06_183824_create_pekerjaan_user_table', 69),
(71, '2025_12_13_000001_create_login_attempts_table', 70),
(72, '2025_12_13_000002_create_activity_logs_table', 70),
(73, '2025_12_13_000003_add_two_factor_columns_to_users_table', 70),
(74, '2025_12_13_003900_create_laporan_mingguan_tables', 71),
(75, '2025_12_13_000001_add_dokumen_columns_and_create_dokumen_pengadaan', 72),
(76, '2025_12_13_000002_make_keterangan_nullable_in_dokumen_usulan', 73);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint UNSIGNED NOT NULL,
  `pr_id` bigint UNSIGNED NOT NULL,
  `gr_id` bigint UNSIGNED DEFAULT NULL,
  `tanggal_payment` date NOT NULL,
  `nomor_payment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilai_payment` decimal(20,2) NOT NULL DEFAULT '0.00',
  `invoice` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receipt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nodin_payment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bill` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pekerjaan`
--

CREATE TABLE `pekerjaan` (
  `id` bigint UNSIGNED NOT NULL,
  `wilayah_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `nama_investasi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kebutuhan_dana` decimal(20,0) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tahun_usulan` year DEFAULT NULL,
  `coa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tipe_investasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nomor_prodef_sap` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rkap` decimal(20,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pekerjaan`
--

INSERT INTO `pekerjaan` (`id`, `wilayah_id`, `user_id`, `nama_investasi`, `kebutuhan_dana`, `created_at`, `updated_at`, `tahun_usulan`, `coa`, `tipe_investasi`, `nomor_prodef_sap`, `gambar`, `rkap`) VALUES
(48, 1, 2, 'Pembangunan Terminal Penumpang Pelabuhan Ambon (MultiYears2023-2024)', 25000000, '2025-10-02 20:06:45', '2025-11-10 18:35:12', '2023', '212', 'Investasi Multi Year', 'P/23.04.016', 'gambar_pekerjaan/vMq0rMNmlQFL6wgm3GUlQuPDfcFd5Rf9nMpPu5lT.png', NULL),
(49, 23, 2, 'Pembebasan Lahan Tahap 3', 35000000, '2025-10-03 10:52:06', '2025-10-03 10:52:06', '2022', '211', 'Investasi Carry Forward/Over', 'I/1.22.25.20501.02', NULL, NULL),
(50, 4, 2, 'Pembangunan Dermaga 200 x 25 m2 beserta Rel CC  Termasuk Konsultan Revisi 2024 perubahan judul : Pengembangan Pelabuhan Tarakan', 205200000, '2025-10-03 10:55:24', '2025-10-14 17:47:40', '2023', '201', 'Investasi Multi Year', 'I/1.22.25.20506.03', NULL, NULL),
(51, 9, 2, 'Revitalisasi Fasilitas Pelabuhan Balikpapan', 7200000, '2025-10-03 10:57:07', '2025-10-03 10:57:07', '2023', '201', 'Investasi Carry Forward/Over', 'P/23.04.002', NULL, NULL),
(52, 11, 2, 'Revitalisasi Pelabuhan Gorontalo', 5000000, '2025-10-03 11:01:18', '2025-10-03 11:01:18', '2023', '201', 'Investasi Carry Forward/Over', 'P/23.04.011', NULL, NULL),
(53, 2, 2, 'Pembangunan Gudang Arsip (Multiyears 2021-2022)', 6500000, '2025-10-03 11:03:39', '2025-10-03 11:03:39', '2021', '212', 'Investasi Multi Year', 'I/1.22.25.20506.06', NULL, NULL),
(54, 2, 2, 'Pengembangan Pelabuhan Garongkong dan Pelabuhan di Regional 4 (Multiyears 2023-2025)', 520000000, '2025-10-03 11:06:30', '2025-10-03 11:06:30', '2023', '201', 'Investasi Multi Year', 'P/23.04.013', NULL, NULL),
(55, 3, 2, 'Revitalisasi Fasilitas Jalan Akses dan Lapangan Penumpukan Pelabuhan di Pelabuhan Nunukan', 11139782, '2025-10-03 11:08:17', '2025-10-14 18:13:36', '2023', '201', 'Investasi Multi Year', NULL, 'gambar_pekerjaan/pfV4rlY1qN0zXJL8eS5pah06zKRFVuxd53i7Jaar.png', NULL),
(56, 12, 2, 'Revitalisasi Dermaga dan Perbaikan Talud', 3653941, '2025-10-03 11:09:46', '2025-10-14 18:12:21', '2024', '201', 'Investasi Murni', 'P/24.04.005', 'gambar_pekerjaan/Te8YYtkeZ0hyJoPbKUy5PqvWMDm4IeSloqfIyxbX.png', NULL),
(57, 27, 2, 'Penataan Lapangan Penumpukan di TPK Merauke', 65000000, '2025-10-03 11:11:45', '2025-10-14 18:11:10', '2024', '201', 'Investasi Murni', 'P/24.04.007', 'gambar_pekerjaan/1b0mfdE1ZCjXnTs5D7dzeVG0Af2h0bULlsrPHwvB.png', NULL),
(58, 2, 2, 'Kegiatan Pengerukan di Wilayah Regional 4', 25000000, '2025-10-03 11:13:16', '2025-10-14 18:10:01', '2025', '201', 'Investasi Multi Year', 'P/25.04.058', 'gambar_pekerjaan/LMolW4NHQ2FhX2srK13zI6J6sSMEdIZyfUBTLiMQ.png', NULL),
(59, 28, 2, 'Penataan Terminal Petikemas Ternate', 15311000, '2025-10-03 11:14:38', '2025-10-14 18:08:59', '2025', '201', 'Investasi Multi Year', 'P/25.04.023', 'gambar_pekerjaan/0qrSITe8tG89vOxangy13l6t2Lmgpf7HBifEM5Qj.png', NULL),
(60, 26, 2, 'Pembangunan Dermaga APO', 8000000, '2025-10-03 11:16:24', '2025-10-14 18:07:35', '2025', '201', 'Investasi Multi Year', 'P/25.04.029', 'gambar_pekerjaan/rjF7EoBUkasWRnjVJxRrN0qhlkpYeRhnFD6P4tYU.png', NULL),
(61, 3, 2, 'Perbaikan Berat Tiang Pancang Floating Ponton Dermaga Internasional dan Perbaikan Berat H Beam Dermaga Umum Pelabuhan Nunukan', 1000000, '2025-10-03 11:17:50', '2025-10-14 18:06:38', '2025', '204', 'Investasi Multi Year', 'P/25.04.038', 'gambar_pekerjaan/t5qIwHaPts1sJh2sYVAGOYmRnAMMGS6rIsGAqRBX.png', NULL),
(62, 11, 2, 'Pekerjaan Elektrifikasi Fix Crane Pelabuhan Gorontalo', 5500000, '2025-10-03 11:19:51', '2025-10-14 18:05:37', '2025', '212', 'Investasi Murni', 'P/25.04.022', 'gambar_pekerjaan/XVLMCy1GSrXhfNjdNIbZE8onzw06TIOMuZszlmaT.png', NULL),
(63, 2, 2, 'Perbaikan Dan Pemasangan Paving Block Pada Jalan Akses Penghubung Cy Lontangnge', 600000, '2025-10-03 11:21:03', '2025-10-14 18:03:55', '2025', '212', 'Investasi Murni', 'P/25.04.060', 'gambar_pekerjaan/MByInxWHEaKnu4yzOHCKXogNTpGpBX3oZmK4npkp.png', NULL),
(64, 2, 2, 'Perbaikan Jalan Dan Lapangan Parkir Depan Perbamas Serta Pembuatan Saluran Drainase Di Pelabuhan Nusantara', 1500000, '2025-10-03 11:22:14', '2025-10-14 18:01:18', '2025', '201', 'Investasi Murni', 'P/25.04.064', 'gambar_pekerjaan/hrYl119EfhwEZBOfJYmIfyoVJ6k7ukytESCdx2F9.png', NULL),
(65, 2, 2, 'Pekerjaan Pengadaan Dan Pemasangan Fender Dan Bollard Di Wilayah Regional 4', 13600000, '2025-10-03 11:23:37', '2025-10-14 18:00:11', '2025', '201', 'Investasi Multi Year', 'P/25.04.065', 'gambar_pekerjaan/DC1O8yeyJz2dkqpQDrFUZdKfd6HEK6mGMHHaQHhC.png', NULL),
(66, 15, 2, 'Pengembangan Dermaga dan Lapangan Penumpukan', 70000000, '2025-10-03 11:24:54', '2025-10-14 17:59:17', '2025', '201', 'Investasi Multi Year', 'P/25.04.046', 'gambar_pekerjaan/PkHZ64gsAkyIlm6Uutkw15fEkyayTYEkWg2K9Gzl.png', NULL),
(67, 4, 2, 'Penataan zonasi Area Petikemas di Pelabuhan Tarakan', 6860000, '2025-10-03 11:26:14', '2025-10-14 17:58:25', '2025', '201', 'Investasi Multi Year', 'P/25.04.037', 'gambar_pekerjaan/D0BRnJTw74ApUGEAtUdgEk8xEoAqxgtYfqp9rNcZ.png', NULL),
(68, 4, 2, 'Pembangunan Dermaga Apung', 5000000, '2025-10-03 11:27:31', '2025-10-14 17:55:23', '2025', '201', 'Investasi Murni', 'P/25.04.040', 'gambar_pekerjaan/hMm0fFeJP5TNq4jESFIyab14ZPjGsmEK637qeIgR.png', NULL),
(69, 10, 2, 'Pembangunan Lapangan Penumpukan di Lokasi Ex- Gudang', 2800000, '2025-10-03 11:28:51', '2025-10-14 17:53:40', '2025', '201', 'Investasi Murni', 'P/25.04.035', 'gambar_pekerjaan/8dNBDdPN8Iq98fMt1cT2ZdJlkLoBuXl6wwC1aPoh.png', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pekerjaan_items`
--

CREATE TABLE `pekerjaan_items` (
  `id` bigint UNSIGNED NOT NULL,
  `po_id` bigint UNSIGNED NOT NULL,
  `kode_pekerjaan` varchar(50) DEFAULT NULL,
  `parent_id` bigint UNSIGNED DEFAULT NULL,
  `jenis_pekerjaan_utama` varchar(255) DEFAULT NULL,
  `sub_pekerjaan` varchar(255) DEFAULT NULL,
  `sub_sub_pekerjaan` varchar(255) DEFAULT NULL,
  `volume` decimal(12,2) NOT NULL,
  `sat` varchar(50) NOT NULL,
  `bobot` decimal(8,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pekerjaan_user`
--

CREATE TABLE `pekerjaan_user` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `pekerjaan_id` bigint UNSIGNED NOT NULL,
  `assigned_at` timestamp NULL DEFAULT NULL,
  `assigned_by` enum('auto','manual') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'auto',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pos`
--

CREATE TABLE `pos` (
  `id` bigint UNSIGNED NOT NULL,
  `pr_id` bigint UNSIGNED NOT NULL,
  `nomor_po` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nomor_kontrak` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nilai_po` decimal(15,0) NOT NULL,
  `estimated` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `waktu_pelaksanaan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pelaksana` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mekanisme_pembayaran` enum('Uang muka','Termin') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_po` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pos`
--

INSERT INTO `pos` (`id`, `pr_id`, `nomor_po`, `nomor_kontrak`, `nilai_po`, `estimated`, `waktu_pelaksanaan`, `pelaksana`, `mekanisme_pembayaran`, `tanggal_po`, `created_at`, `updated_at`) VALUES
(74, 125, 'PO/2024/0005', '-', 100000000, NULL, NULL, 'PT Pelabuhan Indonesia', 'Termin', '2025-12-27', '2025-12-14 01:31:42', '2025-12-14 01:31:42');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `jabatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `agama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jenis_kelamin` enum('L','P') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nomor_telepon` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `user_id`, `jabatan`, `tanggal_lahir`, `agama`, `jenis_kelamin`, `nomor_telepon`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 2, 'Administrator', '2004-05-21', 'Lainnya', 'P', '08123456788', 'Makassar', '2025-08-31 09:17:56', '2025-09-02 20:52:32'),
(2, 6, 'Staf IT', '2004-08-21', 'Islam', 'P', '08123456789', 'JL.Kedamaian Selatan Raya Blok F No. 92', '2025-09-02 04:57:07', '2025-11-15 05:00:37'),
(14, 19, NULL, NULL, NULL, NULL, NULL, NULL, '2025-12-06 22:14:43', '2025-12-06 22:14:43');

-- --------------------------------------------------------

--
-- Table structure for table `progress`
--

CREATE TABLE `progress` (
  `id` bigint UNSIGNED NOT NULL,
  `po_id` bigint UNSIGNED NOT NULL,
  `pekerjaan_item_id` bigint UNSIGNED DEFAULT NULL,
  `nomor_ba_mulai_kerja` varchar(255) DEFAULT NULL,
  `tanggal_ba_mulai_kerja` date DEFAULT NULL,
  `file_ba` varchar(255) DEFAULT NULL,
  `nomor_pcm_mulai_kerja` varchar(255) DEFAULT NULL,
  `tanggal_pcm_mulai_kerja` date DEFAULT NULL,
  `file_pcm` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `progress_details`
--

CREATE TABLE `progress_details` (
  `id` bigint UNSIGNED NOT NULL,
  `progress_id` bigint UNSIGNED NOT NULL,
  `minggu_id` bigint UNSIGNED NOT NULL,
  `bobot_rencana` decimal(8,2) NOT NULL DEFAULT '0.00',
  `volume_realisasi` decimal(12,2) NOT NULL DEFAULT '0.00',
  `bobot_realisasi` decimal(8,4) NOT NULL DEFAULT '0.0000',
  `keterangan` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `progress_fisik`
--

CREATE TABLE `progress_fisik` (
  `id` bigint UNSIGNED NOT NULL,
  `pekerjaan_id` bigint UNSIGNED NOT NULL,
  `bulan` date NOT NULL,
  `rencana` decimal(5,2) DEFAULT NULL,
  `realisasi` decimal(5,2) DEFAULT NULL,
  `defiasi` decimal(5,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prs`
--

CREATE TABLE `prs` (
  `id` bigint UNSIGNED NOT NULL,
  `jenis_pekerjaan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun_anggaran` int NOT NULL DEFAULT '2025',
  `pekerjaan_id` bigint UNSIGNED NOT NULL,
  `sub_pekerjaan_id` bigint UNSIGNED DEFAULT NULL,
  `nilai_pr` decimal(20,0) NOT NULL DEFAULT '0',
  `nomor_pr` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_pr` date NOT NULL,
  `status_pekerjaan` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PR',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prs`
--

INSERT INTO `prs` (`id`, `jenis_pekerjaan`, `tahun_anggaran`, `pekerjaan_id`, `sub_pekerjaan_id`, `nilai_pr`, `nomor_pr`, `tanggal_pr`, `status_pekerjaan`, `created_at`, `updated_at`) VALUES
(125, 'Pelaksanaan Fisik', 2025, 49, NULL, 150000000, 'PR-2024-001', '2024-12-14', 'PO', '2025-12-14 01:27:57', '2025-12-14 01:31:42');

-- --------------------------------------------------------

--
-- Table structure for table `rkap_pekerjaan`
--

CREATE TABLE `rkap_pekerjaan` (
  `id` bigint UNSIGNED NOT NULL,
  `pekerjaan_id` bigint UNSIGNED NOT NULL,
  `tahun` year NOT NULL,
  `nilai` bigint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rkap_pekerjaan`
--

INSERT INTO `rkap_pekerjaan` (`id`, `pekerjaan_id`, `tahun`, `nilai`, `created_at`, `updated_at`) VALUES
(7, 49, '2022', 35000000, '2025-10-03 10:52:06', '2025-10-03 10:52:06'),
(11, 51, '2023', 7200000, '2025-10-03 10:57:07', '2025-10-03 10:57:07'),
(12, 52, '2023', 5000000, '2025-10-03 11:01:18', '2025-10-03 11:01:18'),
(13, 53, '2021', 2180000, '2025-10-03 11:03:39', '2025-10-03 11:03:39'),
(14, 53, '2022', 4320000, '2025-10-03 11:03:39', '2025-10-03 11:03:39'),
(15, 53, '2023', 0, '2025-10-03 11:03:39', '2025-10-03 11:03:39'),
(16, 54, '2023', 255600000, '2025-10-03 11:06:30', '2025-10-03 11:06:30'),
(17, 54, '2024', 255600000, '2025-10-03 11:06:30', '2025-10-03 11:06:30'),
(18, 54, '2025', 8800000, '2025-10-03 11:06:30', '2025-10-03 11:06:30'),
(53, 50, '2023', 10000000, '2025-10-14 17:47:41', '2025-10-14 17:47:41'),
(54, 50, '2024', 0, '2025-10-14 17:47:41', '2025-10-14 17:47:41'),
(55, 50, '2025', 0, '2025-10-14 17:47:41', '2025-10-14 17:47:41'),
(56, 69, '2025', 2800000, '2025-10-14 17:53:40', '2025-10-14 17:53:40'),
(57, 68, '2025', 5000000, '2025-10-14 17:55:23', '2025-10-14 17:55:23'),
(58, 67, '2025', 1700000, '2025-10-14 17:58:25', '2025-10-14 17:58:25'),
(59, 67, '2026', 0, '2025-10-14 17:58:25', '2025-10-14 17:58:25'),
(60, 67, '2027', 0, '2025-10-14 17:58:25', '2025-10-14 17:58:25'),
(61, 66, '2025', 1000000, '2025-10-14 17:59:17', '2025-10-14 17:59:17'),
(62, 66, '2026', 0, '2025-10-14 17:59:17', '2025-10-14 17:59:17'),
(63, 66, '2027', 0, '2025-10-14 17:59:17', '2025-10-14 17:59:17'),
(64, 65, '2025', 6700000, '2025-10-14 18:00:11', '2025-10-14 18:00:11'),
(65, 65, '2026', 0, '2025-10-14 18:00:11', '2025-10-14 18:00:11'),
(66, 65, '2027', 0, '2025-10-14 18:00:11', '2025-10-14 18:00:11'),
(67, 64, '2025', 1500000, '2025-10-14 18:01:18', '2025-10-14 18:01:18'),
(68, 63, '2025', 600000, '2025-10-14 18:03:55', '2025-10-14 18:03:55'),
(69, 62, '2025', 5500000, '2025-10-14 18:05:38', '2025-10-14 18:05:38'),
(70, 61, '2025', 1000000, '2025-10-14 18:06:38', '2025-10-14 18:06:38'),
(71, 61, '2026', 0, '2025-10-14 18:06:38', '2025-10-14 18:06:38'),
(72, 61, '2027', 0, '2025-10-14 18:06:38', '2025-10-14 18:06:38'),
(73, 60, '2025', 2500000, '2025-10-14 18:07:35', '2025-10-14 18:07:35'),
(74, 60, '2026', 0, '2025-10-14 18:07:35', '2025-10-14 18:07:35'),
(75, 60, '2027', 0, '2025-10-14 18:07:35', '2025-10-14 18:07:35'),
(76, 59, '2025', 2600000, '2025-10-14 18:08:59', '2025-10-14 18:08:59'),
(77, 59, '2026', 0, '2025-10-14 18:08:59', '2025-10-14 18:08:59'),
(78, 59, '2027', 0, '2025-10-14 18:08:59', '2025-10-14 18:08:59'),
(79, 58, '2025', 1000000, '2025-10-14 18:10:01', '2025-10-14 18:10:01'),
(80, 58, '2026', 0, '2025-10-14 18:10:01', '2025-10-14 18:10:01'),
(81, 58, '2027', 0, '2025-10-14 18:10:01', '2025-10-14 18:10:01'),
(82, 57, '2024', 11500000, '2025-10-14 18:11:10', '2025-10-14 18:11:10'),
(83, 56, '2024', 3600000, '2025-10-14 18:12:21', '2025-10-14 18:12:21'),
(84, 55, '2023', 0, '2025-10-14 18:13:36', '2025-10-14 18:13:36'),
(85, 55, '2024', 0, '2025-10-14 18:13:36', '2025-10-14 18:13:36'),
(86, 55, '2025', 10743459, '2025-10-14 18:13:36', '2025-10-14 18:13:36'),
(87, 48, '2023', 5500000, '2025-11-10 18:35:12', '2025-11-10 18:35:12'),
(88, 48, '2024', 2000000, '2025-11-10 18:35:12', '2025-11-10 18:35:12'),
(89, 48, '2025', 17500000, '2025-11-10 18:35:13', '2025-11-10 18:35:13');

-- --------------------------------------------------------

--
-- Table structure for table `settings_aplikasi`
--

CREATE TABLE `settings_aplikasi` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_aplikasi` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_perusahaan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ucapan` text COLLATE utf8mb4_unicode_ci,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings_aplikasi`
--

INSERT INTO `settings_aplikasi` (`id`, `nama_aplikasi`, `nama_perusahaan`, `ucapan`, `logo`, `created_at`, `updated_at`) VALUES
(1, 'P-Mones', 'PT Pelabuhan Indonesia (Persero)', 'Selamat Datang di Aplikasi Monitoring Investasi', '1756873541_Logo_Pelindo_2.png', NULL, '2025-09-15 23:00:59');

-- --------------------------------------------------------

--
-- Table structure for table `signature_verifications`
--

CREATE TABLE `signature_verifications` (
  `id` bigint UNSIGNED NOT NULL,
  `signature_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verification_result` enum('valid','invalid','revoked','expired') COLLATE utf8mb4_unicode_ci NOT NULL,
  `verification_details` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `signature_verifications`
--

INSERT INTO `signature_verifications` (`id`, `signature_id`, `ip_address`, `user_agent`, `verification_result`, `verification_details`, `created_at`, `updated_at`) VALUES
(1, 'a7fbca39-fd57-4d85-bdb2-889a88a0e4f0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'valid', '{\"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36\", \"verified_by_ip\": \"127.0.0.1\"}', '2025-11-24 19:09:58', '2025-11-24 19:09:58'),
(2, 'a7fbca39-fd57-4d85-bdb2-889a88a0e4f0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36', 'valid', '{\"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36\", \"verified_by_ip\": \"127.0.0.1\"}', '2025-11-28 05:02:33', '2025-11-28 05:02:33'),
(3, 'a7fbca39-fd57-4d85-bdb2-889a88a0e4f0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'valid', '{\"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36\", \"verified_by_ip\": \"127.0.0.1\"}', '2025-12-07 01:03:24', '2025-12-07 01:03:24'),
(4, 'a7fbca39-fd57-4d85-bdb2-889a88a0e4f0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'valid', '{\"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36\", \"verified_by_ip\": \"127.0.0.1\"}', '2025-12-07 01:14:04', '2025-12-07 01:14:04'),
(5, '2142eb7e-3511-42a9-8bfd-6d1d1d8cecc4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'valid', '{\"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36\", \"verified_by_ip\": \"127.0.0.1\"}', '2025-12-07 01:14:13', '2025-12-07 01:14:13'),
(6, 'a7fbca39-fd57-4d85-bdb2-889a88a0e4f0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'valid', '{\"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36\", \"verified_by_ip\": \"127.0.0.1\"}', '2025-12-07 01:16:00', '2025-12-07 01:16:00'),
(7, 'a7fbca39-fd57-4d85-bdb2-889a88a0e4f0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'valid', '{\"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36\", \"verified_by_ip\": \"127.0.0.1\"}', '2025-12-07 01:19:20', '2025-12-07 01:19:20'),
(8, '2142eb7e-3511-42a9-8bfd-6d1d1d8cecc4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', 'valid', '{\"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0\", \"verified_by_ip\": \"127.0.0.1\"}', '2025-12-07 18:07:11', '2025-12-07 18:07:11'),
(9, 'a7fbca39-fd57-4d85-bdb2-889a88a0e4f0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0', 'valid', '{\"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36 Edg/143.0.0.0\", \"verified_by_ip\": \"127.0.0.1\"}', '2025-12-07 18:07:11', '2025-12-07 18:07:11'),
(10, 'c275f045-9506-4559-879f-de64bd34b5ca', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36', 'valid', '{\"user_agent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36\", \"verified_by_ip\": \"127.0.0.1\"}', '2025-12-07 18:48:16', '2025-12-07 18:48:16');

-- --------------------------------------------------------

--
-- Table structure for table `sub_pekerjaan`
--

CREATE TABLE `sub_pekerjaan` (
  `id` bigint UNSIGNED NOT NULL,
  `pekerjaan_id` bigint UNSIGNED NOT NULL,
  `pr_id` bigint UNSIGNED DEFAULT NULL,
  `nama_sub` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `sub_pekerjaan`
--

INSERT INTO `sub_pekerjaan` (`id`, `pekerjaan_id`, `pr_id`, `nama_sub`, `created_at`, `updated_at`) VALUES
(65, 49, 125, 'Pengadaan material konstruksi', '2025-12-14 01:27:57', '2025-12-14 01:27:57');

-- --------------------------------------------------------

--
-- Table structure for table `termins`
--

CREATE TABLE `termins` (
  `id` bigint UNSIGNED NOT NULL,
  `po_id` bigint UNSIGNED NOT NULL,
  `payment_id` bigint UNSIGNED DEFAULT NULL,
  `uraian` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `persentase` tinyint UNSIGNED NOT NULL,
  `nilai_pembayaran` decimal(15,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `syarat_pembayaran` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `termins`
--

INSERT INTO `termins` (`id`, `po_id`, `payment_id`, `uraian`, `persentase`, `nilai_pembayaran`, `created_at`, `updated_at`, `syarat_pembayaran`) VALUES
(116, 74, NULL, 'Termin 1', 100, 100000000.00, '2025-12-14 01:31:42', '2025-12-14 01:31:42', 'Material On site');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wilayah_id` bigint UNSIGNED DEFAULT NULL,
  `pekerjaan_ids` json DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `role` enum('superadmin','admin','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `wilayah_id`, `pekerjaan_ids`, `password`, `two_factor_secret`, `two_factor_enabled`, `two_factor_confirmed_at`, `role`, `created_at`, `updated_at`) VALUES
(2, 'Admin P-Mones', 'adminpm', 'admin@gmail.com', NULL, NULL, '$2y$12$W8pXk1VSXTAAnXqai3rPe.cwcy9CemOkLKZ0H1hnIWL7usw8Mz/ze', NULL, 0, NULL, 'superadmin', '2025-08-30 08:33:43', '2025-08-31 01:41:03'),
(4, 'Asrini Muhsin', 'asrini', 'asrinimuhsin@gmail.com', NULL, NULL, '$2y$12$u7s2Sug87Yxqrmg5fiTafeGXgaBNXkPHQ7QJemKFm48nEAYWnY3cW', NULL, 0, NULL, 'user', '2025-08-30 08:35:16', '2025-08-30 08:35:16'),
(5, 'admin1', 'adminpm1', 'admin1@gmail.com', NULL, NULL, '$2y$12$YZYuP3cu8cVVASXAUSf7pueQfamrnTq9o4xsQz45FJCdy.5crUbSu', NULL, 0, NULL, 'superadmin', '2025-08-30 20:21:28', '2025-08-30 20:21:28'),
(6, 'Asrini Muhsin', 'rini', 'asrini210804@gmail.com', 2, '[\"54\"]', '$2y$12$u.wtvpH1iJZ2LS5XPCFQl.GkKAd6tMg.PVTpvCPOj/Ce7X.TPRqXO', NULL, 0, NULL, 'user', '2025-09-02 04:57:07', '2025-12-06 21:49:53'),
(19, 'Asrini Muhsin', 'rini1111', 'rini1111@gmail.com', 2, '[\"53\"]', '$2y$12$yEM1ba6yOYaU0PAbN6nMY.JOFBdLukTMe8wcjU6lQ.xFlPsjn7x86', NULL, 0, NULL, 'user', '2025-12-06 22:14:43', '2025-12-06 22:27:52');

-- --------------------------------------------------------

--
-- Table structure for table `wilayah`
--

CREATE TABLE `wilayah` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wilayah`
--

INSERT INTO `wilayah` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Ambon', '2025-08-29 22:18:30', '2025-08-29 22:18:30'),
(2, 'Makassar', NULL, NULL),
(3, 'Nunukan', '2025-08-30 16:43:42', '2025-08-30 16:43:42'),
(4, 'Tarakan', '2025-08-30 16:43:42', '2025-08-30 16:43:42'),
(5, 'Tanjung Redep', '2025-08-30 16:43:42', '2025-08-30 16:43:42'),
(6, 'Sangatta', '2025-08-30 16:43:42', '2025-08-30 16:43:42'),
(7, 'Bontang', '2025-08-30 16:43:42', '2025-08-30 16:43:42'),
(8, 'Samarinda', '2025-08-30 16:43:42', '2025-08-30 16:43:42'),
(9, 'Balikpapan', '2025-08-30 16:43:42', '2025-08-30 16:43:42'),
(10, 'Tolitoli', '2025-08-30 16:43:42', '2025-08-30 16:43:42'),
(11, 'Gorontalo', '2025-08-30 16:43:42', '2025-08-30 16:43:42'),
(12, 'Manado', '2025-08-30 16:43:42', '2025-08-30 16:43:42'),
(13, 'Likupang', '2025-08-30 16:43:42', '2025-08-30 16:43:42'),
(14, 'Bitung', '2025-08-30 16:43:42', '2025-08-30 16:43:42'),
(15, 'Pantoloan', '2025-08-30 16:43:42', '2025-08-30 16:43:42'),
(16, 'Pare-pare', '2025-08-30 16:43:42', '2025-08-30 16:43:42'),
(17, 'Kendari', '2025-08-30 16:43:42', '2025-08-30 16:43:42'),
(18, 'Maumere', '2025-08-30 16:43:42', '2025-08-30 16:43:42'),
(19, 'Ende', '2025-08-30 16:43:42', '2025-08-30 16:43:42'),
(20, 'Waingapu', '2025-08-30 16:43:42', '2025-08-30 16:43:42'),
(21, 'Tenau Kupang', '2025-08-30 16:43:42', '2025-08-30 16:43:42'),
(22, 'Kalabahi', '2025-08-30 16:43:42', '2025-08-30 16:43:42'),
(23, 'Sorong', '2025-08-30 16:43:42', '2025-08-30 16:43:42'),
(24, 'Manokwari', '2025-08-30 16:43:42', '2025-08-30 16:43:42'),
(25, 'Biak', '2025-08-30 16:43:42', '2025-08-30 16:43:42'),
(26, 'Jayapura', '2025-08-30 16:43:42', '2025-08-30 16:43:42'),
(27, 'Merauke', '2025-08-30 16:43:42', '2025-08-30 16:43:42'),
(28, 'Ternate', '2025-08-30 16:43:42', '2025-08-30 16:43:42'),
(29, 'Fakfak', '2025-08-30 16:43:42', '2025-08-30 16:43:42');

-- --------------------------------------------------------

--
-- Table structure for table `wilayahs`
--

CREATE TABLE `wilayahs` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_logs_user_id_created_at_index` (`user_id`,`created_at`),
  ADD KEY `activity_logs_action_created_at_index` (`action`,`created_at`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `daily_progress`
--
ALTER TABLE `daily_progress`
  ADD PRIMARY KEY (`id`),
  ADD KEY `daily_progress_pelapor_id_foreign` (`pelapor_id`),
  ADD KEY `daily_progress_po_id_tanggal_index` (`po_id`,`tanggal`),
  ADD KEY `daily_progress_pekerjaan_item_id_tanggal_index` (`pekerjaan_item_id`,`tanggal`),
  ADD KEY `daily_progress_approved_by_foreign` (`approved_by`);

--
-- Indexes for table `digital_signatures`
--
ALTER TABLE `digital_signatures`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `digital_signatures_signature_id_unique` (`signature_id`),
  ADD KEY `digital_signatures_user_id_role_approval_index` (`user_id`,`role_approval`),
  ADD KEY `digital_signatures_signature_hash_index` (`signature_hash`);

--
-- Indexes for table `dokumen_pengadaan`
--
ALTER TABLE `dokumen_pengadaan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dokumen_pengadaan_pekerjaan_id_foreign` (`pekerjaan_id`);

--
-- Indexes for table `dokumen_usulan`
--
ALTER TABLE `dokumen_usulan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dokumen_usulan_pekerjaan_id_foreign` (`pekerjaan_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `gambars`
--
ALTER TABLE `gambars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gambars_pekerjaan_id_foreign` (`pekerjaan_id`);

--
-- Indexes for table `grs`
--
ALTER TABLE `grs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `grs_nomor_gr_unique` (`nomor_gr`),
  ADD KEY `grs_pr_id_foreign` (`pr_id`),
  ADD KEY `grs_po_id_foreign` (`po_id`),
  ADD KEY `grs_termin_id_foreign` (`termin_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kontraks`
--
ALTER TABLE `kontraks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_kontraks_pekerjaan` (`pekerjaan_id`);

--
-- Indexes for table `korespondensis`
--
ALTER TABLE `korespondensis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_korespondensis_pekerjaan` (`pekerjaan_id`);

--
-- Indexes for table `laporans`
--
ALTER TABLE `laporans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `laporans_pekerjaan_id_foreign` (`pekerjaan_id`);

--
-- Indexes for table `laporan_approvals`
--
ALTER TABLE `laporan_approvals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `laporan_approvals_user_id_foreign` (`user_id`),
  ADD KEY `laporan_approvals_laporan_id_urutan_index` (`laporan_id`,`urutan`);

--
-- Indexes for table `laporan_approval_settings`
--
ALTER TABLE `laporan_approval_settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `laporan_approval_settings_signature_id_unique` (`signature_id`),
  ADD KEY `laporan_approval_settings_user_id_index` (`user_id`),
  ADD KEY `laporan_approval_settings_role_approval_index` (`role_approval`),
  ADD KEY `laporan_approval_settings_urutan_index` (`urutan`);

--
-- Indexes for table `laporan_details`
--
ALTER TABLE `laporan_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `laporan_details_laporan_id_coa_index` (`laporan_id`,`coa`);

--
-- Indexes for table `laporan_investasi`
--
ALTER TABLE `laporan_investasi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `laporan_investasi_kode_laporan_unique` (`kode_laporan`),
  ADD KEY `laporan_investasi_dibuat_oleh_foreign` (`dibuat_oleh`),
  ADD KEY `laporan_investasi_tahun_bulan_jenis_laporan_index` (`tahun`,`bulan`,`jenis_laporan`);

--
-- Indexes for table `laporan_mingguan`
--
ALTER TABLE `laporan_mingguan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `laporan_mingguan_po_id_minggu_id_unique` (`po_id`,`minggu_id`),
  ADD UNIQUE KEY `laporan_mingguan_kode_laporan_unique` (`kode_laporan`),
  ADD KEY `laporan_mingguan_minggu_id_foreign` (`minggu_id`),
  ADD KEY `laporan_mingguan_created_by_foreign` (`created_by`),
  ADD KEY `laporan_mingguan_status_approval_index` (`status_approval`);

--
-- Indexes for table `laporan_mingguan_approvals`
--
ALTER TABLE `laporan_mingguan_approvals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `laporan_mingguan_approvals_user_id_foreign` (`user_id`),
  ADD KEY `laporan_mingguan_approvals_laporan_mingguan_id_status_index` (`laporan_mingguan_id`,`status`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `login_attempts_username_created_at_index` (`username`,`created_at`),
  ADD KEY `login_attempts_ip_address_created_at_index` (`ip_address`,`created_at`);

--
-- Indexes for table `master_investasis`
--
ALTER TABLE `master_investasis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_master_investasis_pekerjaan` (`pekerjaan_id`);

--
-- Indexes for table `master_minggu`
--
ALTER TABLE `master_minggu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payments_nomor_payment_unique` (`nomor_payment`),
  ADD KEY `payments_pr_id_foreign` (`pr_id`),
  ADD KEY `fk_payments_gr_id` (`gr_id`);

--
-- Indexes for table `pekerjaan`
--
ALTER TABLE `pekerjaan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pekerjaan_user_id_foreign` (`user_id`);

--
-- Indexes for table `pekerjaan_items`
--
ALTER TABLE `pekerjaan_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_po_id` (`po_id`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Indexes for table `pekerjaan_user`
--
ALTER TABLE `pekerjaan_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pekerjaan_user_user_id_pekerjaan_id_unique` (`user_id`,`pekerjaan_id`),
  ADD KEY `pekerjaan_user_user_id_index` (`user_id`),
  ADD KEY `pekerjaan_user_pekerjaan_id_index` (`pekerjaan_id`);

--
-- Indexes for table `pos`
--
ALTER TABLE `pos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pos_nomor_po_unique` (`nomor_po`),
  ADD KEY `pos_pr_id_foreign` (`pr_id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `profiles_user_id_foreign` (`user_id`);

--
-- Indexes for table `progress`
--
ALTER TABLE `progress`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_progress_po` (`po_id`),
  ADD KEY `idx_progress_item` (`pekerjaan_item_id`);

--
-- Indexes for table `progress_details`
--
ALTER TABLE `progress_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_progressdetail_progress` (`progress_id`),
  ADD KEY `idx_progressdetail_minggu` (`minggu_id`);

--
-- Indexes for table `progress_fisik`
--
ALTER TABLE `progress_fisik`
  ADD PRIMARY KEY (`id`),
  ADD KEY `progress_fisik_pekerjaan_id_foreign` (`pekerjaan_id`);

--
-- Indexes for table `prs`
--
ALTER TABLE `prs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `prs_nomor_pr_unique` (`nomor_pr`),
  ADD KEY `prs_pekerjaan_id_foreign` (`pekerjaan_id`),
  ADD KEY `fk_prs_sub_pekerjaan` (`sub_pekerjaan_id`);

--
-- Indexes for table `rkap_pekerjaan`
--
ALTER TABLE `rkap_pekerjaan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rkap_pekerjaan_pekerjaan_id_foreign` (`pekerjaan_id`);

--
-- Indexes for table `settings_aplikasi`
--
ALTER TABLE `settings_aplikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signature_verifications`
--
ALTER TABLE `signature_verifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `signature_verifications_signature_id_index` (`signature_id`),
  ADD KEY `signature_verifications_created_at_index` (`created_at`);

--
-- Indexes for table `sub_pekerjaan`
--
ALTER TABLE `sub_pekerjaan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sub_pekerjaan_pekerjaan` (`pekerjaan_id`),
  ADD KEY `fk_sub_pekerjaan_pr` (`pr_id`);

--
-- Indexes for table `termins`
--
ALTER TABLE `termins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `termins_po_id_foreign` (`po_id`),
  ADD KEY `termins_payment_id_foreign` (`payment_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_wilayah_id_foreign` (`wilayah_id`);

--
-- Indexes for table `wilayah`
--
ALTER TABLE `wilayah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wilayahs`
--
ALTER TABLE `wilayahs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `daily_progress`
--
ALTER TABLE `daily_progress`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `digital_signatures`
--
ALTER TABLE `digital_signatures`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `dokumen_pengadaan`
--
ALTER TABLE `dokumen_pengadaan`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dokumen_usulan`
--
ALTER TABLE `dokumen_usulan`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gambars`
--
ALTER TABLE `gambars`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `grs`
--
ALTER TABLE `grs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kontraks`
--
ALTER TABLE `kontraks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `korespondensis`
--
ALTER TABLE `korespondensis`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `laporans`
--
ALTER TABLE `laporans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `laporan_approvals`
--
ALTER TABLE `laporan_approvals`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `laporan_approval_settings`
--
ALTER TABLE `laporan_approval_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `laporan_details`
--
ALTER TABLE `laporan_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `laporan_investasi`
--
ALTER TABLE `laporan_investasi`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `laporan_mingguan`
--
ALTER TABLE `laporan_mingguan`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `laporan_mingguan_approvals`
--
ALTER TABLE `laporan_mingguan_approvals`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `master_investasis`
--
ALTER TABLE `master_investasis`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `master_minggu`
--
ALTER TABLE `master_minggu`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=550;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pekerjaan`
--
ALTER TABLE `pekerjaan`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `pekerjaan_items`
--
ALTER TABLE `pekerjaan_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000;

--
-- AUTO_INCREMENT for table `pekerjaan_user`
--
ALTER TABLE `pekerjaan_user`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pos`
--
ALTER TABLE `pos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `progress`
--
ALTER TABLE `progress`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1028;

--
-- AUTO_INCREMENT for table `progress_details`
--
ALTER TABLE `progress_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6419;

--
-- AUTO_INCREMENT for table `progress_fisik`
--
ALTER TABLE `progress_fisik`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `prs`
--
ALTER TABLE `prs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `rkap_pekerjaan`
--
ALTER TABLE `rkap_pekerjaan`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `settings_aplikasi`
--
ALTER TABLE `settings_aplikasi`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `signature_verifications`
--
ALTER TABLE `signature_verifications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sub_pekerjaan`
--
ALTER TABLE `sub_pekerjaan`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `termins`
--
ALTER TABLE `termins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `wilayah`
--
ALTER TABLE `wilayah`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `wilayahs`
--
ALTER TABLE `wilayahs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD CONSTRAINT `activity_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `daily_progress`
--
ALTER TABLE `daily_progress`
  ADD CONSTRAINT `daily_progress_approved_by_foreign` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `daily_progress_pekerjaan_item_id_foreign` FOREIGN KEY (`pekerjaan_item_id`) REFERENCES `pekerjaan_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `daily_progress_pelapor_id_foreign` FOREIGN KEY (`pelapor_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `daily_progress_po_id_foreign` FOREIGN KEY (`po_id`) REFERENCES `pos` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `digital_signatures`
--
ALTER TABLE `digital_signatures`
  ADD CONSTRAINT `digital_signatures_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `dokumen_pengadaan`
--
ALTER TABLE `dokumen_pengadaan`
  ADD CONSTRAINT `dokumen_pengadaan_pekerjaan_id_foreign` FOREIGN KEY (`pekerjaan_id`) REFERENCES `pekerjaan` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `dokumen_usulan`
--
ALTER TABLE `dokumen_usulan`
  ADD CONSTRAINT `dokumen_usulan_pekerjaan_id_foreign` FOREIGN KEY (`pekerjaan_id`) REFERENCES `pekerjaan` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `gambars`
--
ALTER TABLE `gambars`
  ADD CONSTRAINT `gambars_pekerjaan_id_foreign` FOREIGN KEY (`pekerjaan_id`) REFERENCES `pekerjaan` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `grs`
--
ALTER TABLE `grs`
  ADD CONSTRAINT `grs_po_id_foreign` FOREIGN KEY (`po_id`) REFERENCES `pos` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `grs_pr_id_foreign` FOREIGN KEY (`pr_id`) REFERENCES `prs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `grs_termin_id_foreign` FOREIGN KEY (`termin_id`) REFERENCES `termins` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `kontraks`
--
ALTER TABLE `kontraks`
  ADD CONSTRAINT `fk_kontraks_pekerjaan` FOREIGN KEY (`pekerjaan_id`) REFERENCES `pekerjaan` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `korespondensis`
--
ALTER TABLE `korespondensis`
  ADD CONSTRAINT `fk_korespondensis_pekerjaan` FOREIGN KEY (`pekerjaan_id`) REFERENCES `pekerjaan` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `laporans`
--
ALTER TABLE `laporans`
  ADD CONSTRAINT `laporans_pekerjaan_id_foreign` FOREIGN KEY (`pekerjaan_id`) REFERENCES `pekerjaan` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `laporan_approvals`
--
ALTER TABLE `laporan_approvals`
  ADD CONSTRAINT `laporan_approvals_laporan_id_foreign` FOREIGN KEY (`laporan_id`) REFERENCES `laporan_investasi` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `laporan_approvals_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `laporan_approval_settings`
--
ALTER TABLE `laporan_approval_settings`
  ADD CONSTRAINT `laporan_approval_settings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `laporan_details`
--
ALTER TABLE `laporan_details`
  ADD CONSTRAINT `laporan_details_laporan_id_foreign` FOREIGN KEY (`laporan_id`) REFERENCES `laporan_investasi` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `laporan_investasi`
--
ALTER TABLE `laporan_investasi`
  ADD CONSTRAINT `laporan_investasi_dibuat_oleh_foreign` FOREIGN KEY (`dibuat_oleh`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `laporan_mingguan`
--
ALTER TABLE `laporan_mingguan`
  ADD CONSTRAINT `laporan_mingguan_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `laporan_mingguan_minggu_id_foreign` FOREIGN KEY (`minggu_id`) REFERENCES `master_minggu` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `laporan_mingguan_po_id_foreign` FOREIGN KEY (`po_id`) REFERENCES `pos` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `laporan_mingguan_approvals`
--
ALTER TABLE `laporan_mingguan_approvals`
  ADD CONSTRAINT `laporan_mingguan_approvals_laporan_mingguan_id_foreign` FOREIGN KEY (`laporan_mingguan_id`) REFERENCES `laporan_mingguan` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `laporan_mingguan_approvals_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `master_investasis`
--
ALTER TABLE `master_investasis`
  ADD CONSTRAINT `fk_master_investasis_pekerjaan` FOREIGN KEY (`pekerjaan_id`) REFERENCES `pekerjaan` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `fk_payments_gr_id` FOREIGN KEY (`gr_id`) REFERENCES `grs` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `payments_pr_id_foreign` FOREIGN KEY (`pr_id`) REFERENCES `prs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pekerjaan`
--
ALTER TABLE `pekerjaan`
  ADD CONSTRAINT `pekerjaan_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `pekerjaan_items`
--
ALTER TABLE `pekerjaan_items`
  ADD CONSTRAINT `fk_pekerjaanitems_parent` FOREIGN KEY (`parent_id`) REFERENCES `pekerjaan_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_pekerjaanitems_po` FOREIGN KEY (`po_id`) REFERENCES `pos` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pekerjaan_user`
--
ALTER TABLE `pekerjaan_user`
  ADD CONSTRAINT `pekerjaan_user_pekerjaan_id_foreign` FOREIGN KEY (`pekerjaan_id`) REFERENCES `pekerjaan` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pekerjaan_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pos`
--
ALTER TABLE `pos`
  ADD CONSTRAINT `pos_pr_id_foreign` FOREIGN KEY (`pr_id`) REFERENCES `prs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `progress`
--
ALTER TABLE `progress`
  ADD CONSTRAINT `fk_progress_item` FOREIGN KEY (`pekerjaan_item_id`) REFERENCES `pekerjaan_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_progress_po` FOREIGN KEY (`po_id`) REFERENCES `pos` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `progress_details`
--
ALTER TABLE `progress_details`
  ADD CONSTRAINT `fk_progressdetail_minggu` FOREIGN KEY (`minggu_id`) REFERENCES `master_minggu` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_progressdetail_progress` FOREIGN KEY (`progress_id`) REFERENCES `progress` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `progress_fisik`
--
ALTER TABLE `progress_fisik`
  ADD CONSTRAINT `progress_fisik_pekerjaan_id_foreign` FOREIGN KEY (`pekerjaan_id`) REFERENCES `pekerjaan` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `prs`
--
ALTER TABLE `prs`
  ADD CONSTRAINT `fk_prs_sub_pekerjaan` FOREIGN KEY (`sub_pekerjaan_id`) REFERENCES `sub_pekerjaan` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `prs_pekerjaan_id_foreign` FOREIGN KEY (`pekerjaan_id`) REFERENCES `pekerjaan` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rkap_pekerjaan`
--
ALTER TABLE `rkap_pekerjaan`
  ADD CONSTRAINT `rkap_pekerjaan_pekerjaan_id_foreign` FOREIGN KEY (`pekerjaan_id`) REFERENCES `pekerjaan` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sub_pekerjaan`
--
ALTER TABLE `sub_pekerjaan`
  ADD CONSTRAINT `fk_sub_pekerjaan_pekerjaan` FOREIGN KEY (`pekerjaan_id`) REFERENCES `pekerjaan` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_sub_pekerjaan_pr` FOREIGN KEY (`pr_id`) REFERENCES `prs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `termins`
--
ALTER TABLE `termins`
  ADD CONSTRAINT `termins_payment_id_foreign` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `termins_po_id_foreign` FOREIGN KEY (`po_id`) REFERENCES `pos` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_wilayah_id_foreign` FOREIGN KEY (`wilayah_id`) REFERENCES `wilayah` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
