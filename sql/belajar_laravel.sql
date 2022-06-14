-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2022 at 05:42 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `belajar_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `gambar`
--

CREATE TABLE `gambar` (
  `id` int(10) UNSIGNED NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gambar`
--

INSERT INTO `gambar` (`id`, `file`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, '1655033147_AnimePahe_Mahouka_Koukou_no_Rettousei_-_Raihousha-hen_-_01_1080p_SubsPlease.mp4_snapshot_08.09.194.jpg', 'SS Mahouka', '2022-06-12 04:25:47', '2022-06-12 04:25:47');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nim` int(11) NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2022_06_11_040150_create_mahasiswa_table', 1),
(3, '2014_10_12_000000_create_users_table', 2),
(4, '2014_10_12_100000_create_password_resets_table', 2),
(5, '2019_08_19_000000_create_failed_jobs_table', 2),
(6, '2022_06_12_111901_create_gambars_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `pegawai_id` int(11) NOT NULL,
  `pegawai_nama` varchar(50) NOT NULL,
  `pegawai_jabatan` varchar(30) NOT NULL,
  `pegawai_umur` int(11) NOT NULL,
  `pegawai_alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`pegawai_id`, `pegawai_nama`, `pegawai_jabatan`, `pegawai_umur`, `pegawai_alamat`) VALUES
(1, 'Iwak', 'CEO', 22, 'Jl. Iwak Peyek no. 1'),
(2, 'Gorengan', 'COO', 21, 'Jl. Iwak Peyek no. 11'),
(4, 'Johny', 'Black Ops', 33, 'Jl. Wak Goreng no. 22'),
(5, 'Almira Siska Uyainah', 'Pedagang', 27, 'Kpg. Banceng Pondok No. 536, Yogyakarta 43206, Lampung'),
(6, 'Warsita Nugroho', 'Penyiar Televisi', 29, 'Psr. Kebangkitan Nasional No. 669, Administrasi Jakarta Selatan 17955, Kaltim'),
(7, 'Yahya Irawan', 'Wartawan', 34, 'Jln. Bambu No. 293, Padangsidempuan 47680, Sulteng'),
(8, 'Pia Hassanah', 'Desainer', 31, 'Gg. Rajawali No. 52, Parepare 44065, Sulteng'),
(9, 'Ella Purnawati', 'Nahkoda', 31, 'Psr. Abdul. Muis No. 393, Kotamobagu 22780, Sumut'),
(10, 'Ana Kayla Mandasari', 'Pegawai Negeri Sipil (PNS)', 32, 'Gg. Banda No. 171, Balikpapan 26699, Sulteng'),
(11, 'Jatmiko Habibi S.Pd', 'Ustaz / Mubaligh', 36, 'Jr. Bazuka Raya No. 671, Prabumulih 15995, Jabar'),
(12, 'Queen Mandasari S.E.I', 'Tukang Gigi', 33, 'Ki. Karel S. Tubun No. 301, Bau-Bau 21966, Bali'),
(13, 'Ikhsan Langgeng Gunarto S.T.', 'Pramugari', 37, 'Jln. Kali No. 690, Bukittinggi 85158, Sulteng'),
(14, 'Artawan Karna Adriansyah', 'Penerjemah', 34, 'Gg. Baan No. 335, Administrasi Jakarta Timur 20791, Kalteng'),
(15, 'Shakila Laras Yuliarti S.Ked', 'Penyiar Televisi', 31, 'Ki. Hasanuddin No. 875, Dumai 82651, Maluku'),
(16, 'Dinda Yani Wastuti', 'Pastor', 40, 'Ki. Suniaraja No. 696, Administrasi Jakarta Utara 55522, Bengkulu'),
(17, 'Damu Wacana', 'Paraji', 34, 'Dk. Bayan No. 213, Pangkal Pinang 37448, Banten'),
(18, 'Salwa Mardhiyah S.Pt', 'Atlet', 25, 'Jr. Dewi Sartika No. 499, Sawahlunto 15932, Kaltim'),
(19, 'Rahayu Maryati S.Pd', 'Masinis', 31, 'Ds. Tambun No. 462, Denpasar 38838, Kepri');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gambar`
--
ALTER TABLE `gambar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`pegawai_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gambar`
--
ALTER TABLE `gambar`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `pegawai_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
