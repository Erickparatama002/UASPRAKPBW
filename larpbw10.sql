-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220619.196dad2777
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Jun 2022 pada 08.05
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.0.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `larpbw10`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stok` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `nama`, `harga`, `stok`, `created_at`, `updated_at`) VALUES
(1, 'susumurni', '7000', '5', NULL, NULL),
(2, '424', '5270250.57', '58415', NULL, NULL),
(3, '073', '83.42026', '84649', NULL, NULL),
(4, '732', '0', '80045', NULL, NULL),
(5, '459', '10466071.853635', '54353', NULL, NULL),
(6, '405', '1.92', '64235', NULL, NULL),
(7, '304', '15422.423', '50423', NULL, NULL),
(8, '056', '52721.3', '16593', NULL, NULL),
(9, '569', '325509785', '69667', NULL, NULL),
(10, '075', '31.074783', '47089', NULL, NULL),
(11, '224', '351300.4', '43601', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nim` int(10) UNSIGNED NOT NULL,
  `nama` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jurusan` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bidangminat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nim`, `nama`, `gender`, `jurusan`, `bidangminat`, `created_at`, `updated_at`) VALUES
(12, 72200012, 'Aisyah Purwanti', 'Perempuan', 'Informatika', 'Layanan', NULL, NULL),
(13, 72200013, 'Aris Suryonooo', 'Laki-Laki', 'Sistem Informasi', 'Layanan', NULL, '2022-06-20 05:35:07'),
(15, 72200015, 'Cawisadi Pranowo M.Pd', 'Laki-Laki', 'Informatika', 'E-commerce', NULL, NULL),
(16, 72200016, 'Asmianto Edi Kuswoyo', 'Laki-Laki', 'Sistem Informasi', 'E-commerce', NULL, NULL),
(17, 72200017, 'Latika Mandasari', 'Perempuan', 'Informatika', 'E-commerce', NULL, NULL),
(18, 72200018, 'Bagus Marbun S.T.', 'Laki-Laki', 'Sistem Informasi', 'Layanan', NULL, NULL),
(19, 72200019, 'Zizi Paris Anggraini S.Sos', 'Perempuan', 'Informatika', 'Kesehatan', NULL, NULL),
(20, 72200020, 'Tantri Jasmin Yolanda', 'Laki-Laki', 'Informatika', 'E-commerce', NULL, NULL),
(21, 72200021, 'Kala Suwarno S.IP', 'Laki-Laki', 'Sistem Informasi', 'E-commerce', NULL, NULL),
(22, 72200022, 'Martani Putra', 'Perempuan', 'Sistem Informasi', 'E-commerce', NULL, NULL),
(23, 72200023, 'Bakiadi Teddy Prasasta S.H.', 'Perempuan', 'Informatika', 'Layanan', NULL, NULL),
(24, 72200024, 'Wirda Winarsih', 'Perempuan', 'Informatika', 'Layanan', NULL, NULL),
(25, 72200025, 'Heryanto Gamani Habibi S.Psi', 'Laki-Laki', 'Sistem Informasi', 'E-commerce', NULL, NULL),
(26, 72200026, 'Ibun Saefullah', 'Laki-Laki', 'Sistem Informasi', 'Kesehatan', NULL, NULL),
(27, 72200027, 'Purwadi Megantara', 'Laki-Laki', 'Sistem Informasi', 'Layanan', NULL, NULL),
(28, 72200028, 'Pangeran Sihombing S.IP', 'Laki-Laki', 'Sistem Informasi', 'E-commerce', NULL, NULL),
(29, 72200029, 'Suci Usamah', 'Perempuan', 'Informatika', 'E-commerce', NULL, NULL),
(30, 72200030, 'Liman Winarno', 'Perempuan', 'Sistem Informasi', 'E-commerce', NULL, NULL),
(31, 72200031, 'Eja Danuja Setiawan', 'Perempuan', 'Informatika', 'Layanan', NULL, NULL),
(32, 72200032, 'Gangsa Megantara', 'Laki-Laki', 'Sistem Informasi', 'Layanan', NULL, NULL),
(33, 72200033, 'Rina Jane Yuliarti', 'Laki-Laki', 'Informatika', 'E-commerce', NULL, NULL),
(34, 72200034, 'Salsabila Amelia Susanti S.IP', 'Perempuan', 'Informatika', 'Layanan', NULL, NULL),
(35, 72200035, 'Hana Sudiati', 'Laki-Laki', 'Sistem Informasi', 'E-commerce', NULL, NULL),
(36, 72200036, 'Kayun Situmorang', 'Perempuan', 'Sistem Informasi', 'Layanan', NULL, NULL),
(37, 72200037, 'Elma Kayla Hariyah S.IP', 'Perempuan', 'Sistem Informasi', 'Kesehatan', NULL, NULL),
(38, 72200038, 'Cornelia Latika Agustina', 'Laki-Laki', 'Sistem Informasi', 'E-commerce', NULL, NULL),
(39, 72200039, 'Iriana Nasyidah', 'Laki-Laki', 'Sistem Informasi', 'Layanan', NULL, NULL),
(40, 72200040, 'Kacung Sitorus', 'Laki-Laki', 'Informatika', 'Kesehatan', NULL, NULL),
(41, 72200041, 'Gantar Dariati Pratama M.M.', 'Perempuan', 'Informatika', 'Kesehatan', NULL, NULL),
(42, 72200042, 'Febi Tira Wahyuni', 'Perempuan', 'Informatika', 'Kesehatan', NULL, NULL),
(43, 72200043, 'Dacin Hakim', 'Laki-Laki', 'Informatika', 'Layanan', NULL, NULL),
(44, 72200044, 'Prima Prasetyo S.IP', 'Laki-Laki', 'Sistem Informasi', 'Kesehatan', NULL, NULL),
(45, 72200045, 'Halima Lailasari', 'Laki-Laki', 'Informatika', 'Kesehatan', NULL, NULL),
(46, 72200046, 'Mustika Karta Narpati S.Pt', 'Perempuan', 'Sistem Informasi', 'Kesehatan', NULL, NULL),
(47, 72200047, 'Dian Yuniar', 'Perempuan', 'Sistem Informasi', 'Kesehatan', NULL, NULL),
(48, 72200048, 'Bahuwirya Atma Maulana', 'Laki-Laki', 'Sistem Informasi', 'E-commerce', NULL, NULL),
(49, 72200049, 'Jessica Wirda Nasyiah', 'Perempuan', 'Informatika', 'Kesehatan', NULL, NULL),
(50, 72200050, 'Galur Prakosa Siregar', 'Perempuan', 'Informatika', 'Layanan', NULL, NULL),
(51, 72200051, 'Hartana Wibowo S.Farm', 'Laki-Laki', 'Informatika', 'Kesehatan', NULL, NULL),
(52, 72200052, 'Liman Gunarto', 'Laki-Laki', 'Sistem Informasi', 'E-commerce', NULL, NULL),
(53, 72200053, 'Hani Namaga', 'Laki-Laki', 'Sistem Informasi', 'Kesehatan', NULL, NULL),
(54, 72200054, 'Warsita Galur Budiyanto', 'Laki-Laki', 'Sistem Informasi', 'Layanan', NULL, NULL),
(55, 72200055, 'Alika Safitri', 'Perempuan', 'Informatika', 'Layanan', NULL, NULL),
(56, 72200056, 'Nadia Sudiati M.Kom.', 'Perempuan', 'Informatika', 'E-commerce', NULL, NULL),
(57, 72200057, 'Edward Mansur', 'Perempuan', 'Informatika', 'Layanan', NULL, NULL),
(58, 72200058, 'Wasis Ardianto', 'Perempuan', 'Informatika', 'Kesehatan', NULL, NULL),
(59, 72200059, 'Warsa Winarno', 'Perempuan', 'Sistem Informasi', 'E-commerce', NULL, NULL),
(60, 72200060, 'Karimah Ellis Mandasari M.Ak', 'Laki-Laki', 'Sistem Informasi', 'Layanan', NULL, NULL),
(61, 72200061, 'Elvina Hastuti', 'Laki-Laki', 'Informatika', 'E-commerce', NULL, NULL),
(62, 72200062, 'Dono Aris Ramadan', 'Perempuan', 'Informatika', 'E-commerce', NULL, NULL),
(63, 72200063, 'Yessi Wijayanti', 'Laki-Laki', 'Informatika', 'Layanan', NULL, NULL),
(64, 72200064, 'Gina Nasyidah', 'Perempuan', 'Sistem Informasi', 'E-commerce', NULL, NULL),
(65, 72200065, 'Cinta Azalea Hartati M.Ak', 'Perempuan', 'Informatika', 'Kesehatan', NULL, NULL),
(66, 72200066, 'Juli Lestari S.H.', 'Laki-Laki', 'Informatika', 'E-commerce', NULL, NULL),
(67, 72200067, 'Vega Hutagalung', 'Perempuan', 'Sistem Informasi', 'Kesehatan', NULL, NULL),
(68, 72200068, 'Michelle Mandasari', 'Laki-Laki', 'Informatika', 'Kesehatan', NULL, NULL),
(69, 72200069, 'Diah Anggraini', 'Perempuan', 'Informatika', 'Kesehatan', NULL, NULL),
(70, 72200070, 'Umi Faizah Pudjiastuti', 'Perempuan', 'Sistem Informasi', 'Kesehatan', NULL, NULL),
(71, 72200071, 'Putri Hassanah', 'Laki-Laki', 'Informatika', 'E-commerce', NULL, NULL),
(72, 72200072, 'Anita Mandasari', 'Perempuan', 'Sistem Informasi', 'Kesehatan', NULL, NULL),
(73, 72200073, 'Ian Prakasa', 'Perempuan', 'Sistem Informasi', 'Layanan', NULL, NULL),
(74, 72200074, 'Wulan Restu Wijayanti S.Farm', 'Laki-Laki', 'Informatika', 'E-commerce', NULL, NULL),
(75, 72200075, 'Tina Kayla Zulaika S.Psi', 'Laki-Laki', 'Informatika', 'Kesehatan', NULL, NULL),
(76, 72200076, 'Reksa Setiawan', 'Laki-Laki', 'Informatika', 'Layanan', NULL, NULL),
(77, 72200077, 'Nrima Thamrin', 'Perempuan', 'Informatika', 'E-commerce', NULL, NULL),
(78, 72200078, 'Elvin Chandra Megantara', 'Laki-Laki', 'Informatika', 'Layanan', NULL, NULL),
(79, 72200079, 'Eva Usada M.Kom.', 'Perempuan', 'Sistem Informasi', 'Kesehatan', NULL, NULL),
(80, 72200080, 'Indah Mardhiyah', 'Perempuan', 'Informatika', 'E-commerce', NULL, NULL),
(81, 72200081, 'Mitra Marbun', 'Laki-Laki', 'Informatika', 'Layanan', NULL, NULL),
(82, 72200082, 'Lintang Karen Uyainah', 'Perempuan', 'Sistem Informasi', 'Layanan', NULL, NULL),
(83, 72200083, 'Ida Mardhiyah', 'Perempuan', 'Informatika', 'Layanan', NULL, NULL),
(84, 72200084, 'Tina Widiastuti', 'Perempuan', 'Sistem Informasi', 'Kesehatan', NULL, NULL),
(85, 72200085, 'Mumpuni Natsir M.Pd', 'Laki-Laki', 'Sistem Informasi', 'Kesehatan', NULL, NULL),
(86, 72200086, 'Maria Novitasari', 'Perempuan', 'Sistem Informasi', 'Kesehatan', NULL, NULL),
(87, 72200087, 'Adhiarja Suwarno', 'Laki-Laki', 'Informatika', 'Kesehatan', NULL, NULL),
(88, 72200088, 'Karman Cakrabuana Nashiruddin S.E.', 'Perempuan', 'Informatika', 'Layanan', NULL, NULL),
(89, 72200089, 'Titin Suci Aryani', 'Perempuan', 'Sistem Informasi', 'Layanan', NULL, NULL),
(90, 72200090, 'Aisyah Ellis Pertiwi', 'Laki-Laki', 'Sistem Informasi', 'Layanan', NULL, NULL),
(91, 72200091, 'Tami Kuswandari', 'Perempuan', 'Informatika', 'Kesehatan', NULL, NULL),
(92, 72200092, 'Ghaliyati Palastri', 'Perempuan', 'Sistem Informasi', 'Layanan', NULL, NULL),
(93, 72200093, 'Humaira Melani', 'Laki-Laki', 'Informatika', 'Layanan', NULL, NULL),
(94, 72200094, 'Umay Ian Pradana S.Pd', 'Perempuan', 'Sistem Informasi', 'Kesehatan', NULL, NULL),
(95, 72200095, 'Faizah Hilda Rahimah S.I.Kom', 'Laki-Laki', 'Sistem Informasi', 'E-commerce', NULL, NULL),
(96, 72200096, 'Hana Yolanda', 'Laki-Laki', 'Informatika', 'E-commerce', NULL, NULL),
(97, 72200097, 'Yoga Sihotang', 'Laki-Laki', 'Informatika', 'Layanan', NULL, NULL),
(98, 72200098, 'Queen Nuraini', 'Perempuan', 'Informatika', 'Layanan', NULL, NULL),
(99, 72200099, 'Emil Wibisono', 'Perempuan', 'Sistem Informasi', 'Kesehatan', NULL, NULL),
(101, 72200101, 'lika liu', '1', 'Sistem Informasi', 'Kesehatan', '2022-05-27 05:22:05', '2022-05-27 05:22:05'),
(102, 72200103, 'Evelyn hartono', '2', 'Sistem Informasi', 'E-commerce', '2022-05-27 09:36:37', '2022-05-27 09:36:37'),
(103, 72200423, 'Erick Pratama LAITO', 'Laki-Laki', 'Sistem Informasi', 'Layanan', '2022-06-13 07:33:53', '2022-06-13 08:12:02');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2022_05_13_133825_create_barang_table', 1),
(5, '2022_05_15_135640_create_mahasiswa_table', 2),
(6, '2022_05_18_020718_create_mahasiswa72200429_table', 3),
(7, '2022_05_18_021743_create_mahasiswa429_table', 3),
(9, '2022_06_05_083106_create_user_table', 4),
(10, '2022_06_05_083607_create_users_table', 5),
(13, '2022_06_06_093004_create_mobil_table', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mobil`
--

CREATE TABLE `mobil` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` int(11) NOT NULL,
  `warna` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mesin/cc` int(11) NOT NULL,
  `km` int(11) NOT NULL,
  `plat_daerah` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Kondisi` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` int(11) NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c1` int(11) DEFAULT NULL,
  `c2` int(11) DEFAULT NULL,
  `c3` int(11) DEFAULT NULL,
  `c4` int(11) DEFAULT NULL,
  `c5` int(11) DEFAULT NULL,
  `r1` float DEFAULT NULL,
  `r2` float DEFAULT NULL,
  `r3` float DEFAULT NULL,
  `r4` float DEFAULT NULL,
  `r5` float DEFAULT NULL,
  `v1` float DEFAULT NULL,
  `v2` float DEFAULT NULL,
  `v3` float DEFAULT NULL,
  `v4` float DEFAULT NULL,
  `v5` float DEFAULT NULL,
  `spk` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `mobil`
--

INSERT INTO `mobil` (`id`, `nama`, `tahun`, `warna`, `jenis`, `mesin/cc`, `km`, `plat_daerah`, `Kondisi`, `harga`, `foto`, `c1`, `c2`, `c3`, `c4`, `c5`, `r1`, `r2`, `r3`, `r4`, `r5`, `v1`, `v2`, `v3`, `v4`, `v5`, `spk`, `created_at`, `updated_at`) VALUES
(1, 'Mitsubishi Mirage', 2018, 'Hitam', 'Matic', 3000, 41000, 'Jawa Barat', '90%', 105000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Suzuki Ertiga', 2013, 'Kuning', 'Matic', 1300, 39000, 'Jawa Barat', '95%', 105000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Suzuki Ertiga', 2013, 'Putih', 'Matic', 2500, 54000, 'Solo', '70%', 300000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Suzuki Splash', 2021, 'Hijau', 'Manual', 1300, 70000, 'Yogyakarta', '85%', 115000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Suzuki Splash', 2017, 'Silver', 'Matic', 1000, 39000, 'Bandung', '90%', 105000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Mercedes Benz E400', 2017, 'Kuning', 'Matic', 2500, 39000, 'Jawa Barat', '80%', 240000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Toyota Cayla', 2017, 'Kuning', 'Matic', 2500, 70000, 'Jawa Barat', '80%', 200000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Mitsubishi Expander', 2021, 'Hitam', 'Manual', 3000, 74000, 'Jawa Barat', '90%', 115000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Toyota Kijang Inova', 2018, 'Silver', 'Matic', 2500, 39000, 'Bandung', '70%', 240000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Mercedes Benz E400', 2021, 'Hitam', 'Matic', 1300, 74000, 'Jakarta Timur', '80%', 90000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Daihatsu Ayla', 2019, 'Silver', 'Manual', 2000, 74000, 'Jawa Barat', '95%', 200000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'Mazda Cx-5', 2011, 'Silver', 'Matic', 1000, 65000, 'Jakarta Timur', '90%', 115000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'Mitsubishi Expander', 2013, 'Silver', 'Matic', 1000, 39000, 'Jakarta Timur', '90%', 240000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'Suzuki APV', 2016, 'Hijau', 'Matic', 2500, 39000, 'Jakarta Timur', '90%', 240000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'Daihatsu Ayla', 2012, 'Biru', 'Matic', 2500, 54000, 'Yogyakarta', '70%', 125000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'Toyota Cayla', 2017, 'Hijau', 'Manual', 2500, 50000, 'Bandung', '95%', 300000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'Toyota Cayla', 2012, 'Merah', 'Manual', 1000, 74000, 'Jawa Barat', '95%', 240000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'Toyota avanza', 2013, 'Putih', 'Matic', 3000, 65000, 'Solo', '80%', 105000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'Mazda Cx-5', 2013, 'Putih', 'Matic', 1500, 74000, 'Yogyakarta', '85%', 200000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'Toyota avanza', 2016, 'Putih', 'Manual', 1500, 39000, 'Bandung', '90%', 125000000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nik_user` int(11) NOT NULL,
  `nama_user` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nik_user`, `nama_user`, `no_hp`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 7770000, 'erick Laiyo', '08999999', 'edrick@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2022-06-05 02:15:35', '2022-06-05 08:26:13'),
(7, 31212, 'erick', '0811879173', 'erik@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2022-06-05 05:36:12', '2022-06-05 05:36:12');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `mobil`
--
ALTER TABLE `mobil`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



