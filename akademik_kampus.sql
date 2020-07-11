-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Sep 2018 pada 09.58
-- Versi server: 10.1.34-MariaDB
-- Versi PHP: 7.1.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akademik_kampus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `nidn` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_dosen` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_fakultas` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`nidn`, `kode_dosen`, `nama`, `no_hp`, `email`, `created_at`, `updated_at`, `password`, `kode_fakultas`) VALUES
('TI102134', 'DS0001', 'MUHAMMAD HAFIDZ MUZAKI M.KOM', '089699935554', 'zaki@gmail.com', '2018-07-21 10:14:39', '2018-08-16 17:49:13', '$2y$10$AeTGmjyYlj7kqTBmHbtPMOPLM3UhMN8x41.4fWkTn45rMusJG6.nW', ''),
('TI102135', 'DS0002', 'DURRATUL HARIZAH SST', '08535551237', 'hafizah@gmail.com', '2018-07-21 10:15:21', '2018-07-21 10:18:35', '', ''),
('TI12345', 'DS0003', 'NURIS AKBAR SE, M.Kom', '0896999935559', 'nuris.akbar@gmail.com', NULL, '2018-09-29 00:30:53', '$2y$10$fJzpOxkffe0jYfj0rD0qqOIKT6h.6l4NEEeBIkj/Q.9FKkZHt75Km', 'IF001'),
('TI102139', 'DS006', 'Wahyu Safrizal M.Kom', '08969993213', 'wahyusafrizal@gmail.com', '2018-08-16 16:42:25', '2018-08-16 16:42:25', '$2y$10$llQKSVxRUlFynKEJ3y3UZuisPoVc1IA6WHHAkfSJ9K56uJ7Te4iD.', ''),
('DS00010', 'DSYN', 'DESI HANDAYANI', '08969993557', 'desi@gmail.com', '2018-09-29 00:29:55', '2018-09-29 00:30:37', '$2y$10$qK/ykQHHUIkksvIuiJT4R.kUx2KyfhTih1jFiLZwCq2ZxhH2ViCFG', 'MS001');

-- --------------------------------------------------------

--
-- Struktur dari tabel `fakultas`
--

CREATE TABLE `fakultas` (
  `kode_fakultas` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_fakultas` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `fakultas`
--

INSERT INTO `fakultas` (`kode_fakultas`, `nama_fakultas`, `created_at`, `updated_at`) VALUES
('IF001', 'TEKNIK INFORMATIKA DAN KOMPUTER', '2018-07-21 10:59:32', '2018-07-21 11:02:30'),
('MS001', 'TEKNIK MESIN', '2018-07-21 10:59:52', '2018-07-21 10:59:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal_kuliah`
--

CREATE TABLE `jadwal_kuliah` (
  `id` int(10) UNSIGNED NOT NULL,
  `hari` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_mk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_dosen` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jam` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_jurusan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_ruangan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_tahun_akademik` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jadwal_kuliah`
--

INSERT INTO `jadwal_kuliah` (`id`, `hari`, `kode_mk`, `kode_dosen`, `jam`, `kode_jurusan`, `kode_ruangan`, `kode_tahun_akademik`, `semester`, `created_at`, `updated_at`) VALUES
(1, 'senin', 'IN010', 'DS0001', '1', 'IFD3', 'LT002', '20181', 1, '2018-07-23 11:49:31', '2018-07-23 11:49:31'),
(2, 'senin', 'IN011', 'DS0001', '2', 'IFD3', 'LT101', '20181', 1, '2018-07-23 11:50:08', '2018-07-23 11:50:08'),
(3, 'selasa', 'IN014', 'DS0003', '4', 'IFD3', 'LT101', '20181', 1, '2018-07-23 12:06:14', '2018-07-23 12:06:14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jam_kuliah`
--

CREATE TABLE `jam_kuliah` (
  `id` int(11) NOT NULL,
  `jam` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jam_kuliah`
--

INSERT INTO `jam_kuliah` (`id`, `jam`) VALUES
(1, '08:50 - 10:00'),
(2, '10:00 - 12.00'),
(3, '12.00 - 13.00'),
(4, '13.00 - 14.30');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE `jurusan` (
  `kode_jurusan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_jurusan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_fakultas` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenjang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`kode_jurusan`, `nama_jurusan`, `kode_fakultas`, `jenjang`, `created_at`, `updated_at`) VALUES
('IFD3', 'TEKNIK INFORMATIKA D3', 'IF001', 'd3', '2018-07-21 11:37:37', '2018-07-21 11:37:37'),
('MSD4', 'TEKNIK MESIN DAN ROBOT D4', 'MS001', 'd4', '2018-07-21 11:39:33', '2018-07-21 11:40:04'),
('TKJD3', 'TEKNIK KOMPUTER DAN JARINGAN', 'IF001', 'd3', '2018-09-24 19:20:23', '2018-09-24 19:20:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kehadiran`
--

CREATE TABLE `kehadiran` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode_mk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_dosen` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_jurusan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_ruang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_tahun_akademik` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `topik_pembahasan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pertemuan_ke` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kehadiran`
--

INSERT INTO `kehadiran` (`id`, `kode_mk`, `kode_dosen`, `kode_jurusan`, `kode_ruang`, `kode_tahun_akademik`, `topik_pembahasan`, `pertemuan_ke`, `created_at`, `updated_at`) VALUES
(1, 'IN010', 'DS0001', 'IFD3', 'LT002', '20181', 'Perkenalan Konsep OOP', 1, '2018-08-22 22:48:25', '2018-08-22 22:48:25'),
(2, 'IN010', 'DS0001', 'IFD3', 'LT002', '20181', 'Perkenalan konsep Komputer Dan jaringan', 2, '2018-08-22 22:49:04', '2018-08-22 22:49:04'),
(3, 'IN010', 'DS0001', 'IFD3', 'LT002', '20181', 'testing', 3, '2018-09-17 00:39:49', '2018-09-17 00:39:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `khs`
--

CREATE TABLE `khs` (
  `id` int(10) UNSIGNED NOT NULL,
  `nim` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_tahun_akademik` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_mk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilai_uts` int(11) NOT NULL,
  `nilai_uas` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nilai_tugas` int(11) NOT NULL,
  `nilai_kehadiran` int(11) NOT NULL,
  `kode_dosen` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `khs`
--

INSERT INTO `khs` (`id`, `nim`, `kode_tahun_akademik`, `kode_mk`, `nilai_uts`, `nilai_uas`, `created_at`, `updated_at`, `nilai_tugas`, `nilai_kehadiran`, `kode_dosen`, `semester`) VALUES
(2, 'TI102145', '20181', 'IN010', 0, 0, '2018-09-30 00:54:36', '2018-09-30 00:54:36', 0, 0, 'DS0001', 1),
(3, 'TI102145', '20181', 'IN014', 0, 0, '2018-09-30 00:54:36', '2018-09-30 00:54:36', 0, 0, 'DS0003', 1),
(4, 'TI102145', '20181', 'IN011', 0, 0, '2018-09-30 00:54:37', '2018-09-30 00:54:37', 0, 0, 'DS0001', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `krs`
--

CREATE TABLE `krs` (
  `id` int(10) UNSIGNED NOT NULL,
  `nim` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_tahun_akademik` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_mk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `semester` int(11) NOT NULL,
  `kode_dosen` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `krs`
--

INSERT INTO `krs` (`id`, `nim`, `kode_tahun_akademik`, `kode_mk`, `created_at`, `updated_at`, `semester`, `kode_dosen`) VALUES
(6, 'TI102145', '20181', 'IN010', '2018-09-30 00:54:16', '2018-09-30 00:54:16', 1, 'DS0001'),
(7, 'TI102145', '20181', 'IN014', '2018-09-30 00:54:18', '2018-09-30 00:54:18', 1, 'DS0003'),
(8, 'TI102145', '20181', 'IN011', '2018-09-30 00:54:33', '2018-09-30 00:54:33', 1, 'DS0001');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kurikulum`
--

CREATE TABLE `kurikulum` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode_mk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_jurusan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kurikulum`
--

INSERT INTO `kurikulum` (`id`, `kode_mk`, `kode_jurusan`, `semester`, `created_at`, `updated_at`) VALUES
(1, 'MK001', 'IFD3', 1, '2018-07-22 10:24:59', '2018-07-22 10:24:59'),
(2, 'PG001', 'IFD3', 1, '2018-07-22 10:25:17', '2018-07-22 10:25:17'),
(4, 'MK005', 'MSD4', 1, '2018-07-22 12:14:03', '2018-07-22 12:14:03'),
(5, 'IN010', 'IFD3', 1, '2018-07-22 12:29:35', '2018-07-22 12:29:35'),
(6, 'IN011', 'IFD3', 1, '2018-07-22 12:29:41', '2018-07-22 12:29:41'),
(7, 'IN012', 'IFD3', 1, '2018-07-22 12:29:48', '2018-07-22 12:29:48'),
(8, 'IN013', 'IFD3', 1, '2018-07-22 12:31:23', '2018-07-22 12:31:23'),
(9, 'IN014', 'IFD3', 1, '2018-07-22 12:31:31', '2018-07-22 12:31:31'),
(10, 'MK024', 'IFD3', 1, '2018-07-22 12:31:38', '2018-07-22 12:31:38'),
(11, 'MK060', 'IFD3', 1, '2018-07-22 12:31:43', '2018-07-22 12:31:43'),
(12, 'MK062', 'IFD3', 1, '2018-07-22 12:31:49', '2018-07-22 12:31:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_mahasiswa` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_jurusan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `kode_tahun_akademik` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semester_aktif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama_mahasiswa`, `email`, `password`, `kode_jurusan`, `alamat`, `created_at`, `updated_at`, `kode_tahun_akademik`, `semester_aktif`) VALUES
('TI102131', 'Wahyu Safrizal', 'wahyu@gmail.com', '$2y$10$gW48nE.8l.RlwsMRpfotCO24F0sJAyk4Ji0hX.UaaDosoApnscyHy', 'IFD3', 'Villa Cilame Indah Blok B16', '2018-09-27 10:16:09', '2018-09-27 10:16:09', '20181', 1),
('TI102132', 'NURIS AKBAR', 'nuris.akbar@gmail.com', 'test', 'IFD3', 'Bandung Barat', NULL, NULL, '20181', 1),
('ti102133', 'Desi Handayani', 'desihandayani@gmail.com', '$2y$10$ATOi1AgxgX1LCJhX//ATZu/yT3oej0Le0fHaUmmp0VjPW3gYC1L.G', 'IFD3', 'villa cilame indah , jl haji gofur', '2018-07-24 11:20:52', '2018-07-24 11:39:33', '20181', 1),
('TI102138', 'MUHAMMAD HAFIDZ MUZAKI', 'zaki@gmail.com', '$2y$10$RyVVsJmCWW.X5l7zCDidHeJnxJfqFfFL72V10NdPwo5KS5w9D3b9C', 'IFD3', 'BANDUNG', '2018-08-12 11:13:34', '2018-08-12 11:13:34', '20181', 1),
('TI102145', 'DURRATUL HAFIZAH', 'hafizah@gmail.com', '$2y$10$.6elVELTNaFeQMnB5fRH2O3Wn02tqVlojCsJC6BR59KMeN9AKaRYe', 'IFD3', 'jalan bandung baran no 43', '2018-08-12 11:49:52', '2018-08-13 11:32:10', '20181', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `matakuliah`
--

CREATE TABLE `matakuliah` (
  `kode_mk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_mk` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jml_sks` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `matakuliah`
--

INSERT INTO `matakuliah` (`kode_mk`, `nama_mk`, `jml_sks`, `created_at`, `updated_at`) VALUES
('IN010', 'Dasar Pemograman', '3', '2018-07-22 12:26:35', '2018-07-22 12:26:35'),
('IN011', 'Pengantar Teknologi Informasi', '3', '2018-07-22 12:27:03', '2018-07-22 12:27:03'),
('IN012', 'Pengenalan Aplikasi Komputer', '2', '2018-07-22 12:27:24', '2018-07-22 12:27:24'),
('IN013', 'Matematika Informatika', '2', '2018-07-22 12:27:40', '2018-07-22 12:27:40'),
('IN014', 'Bahasa Inggris 1', '2', '2018-07-22 12:27:54', '2018-07-22 12:27:54'),
('MK024', 'Kewarganegaraan', '2', '2018-07-22 12:28:14', '2018-07-22 12:28:14'),
('MK060', 'Fenomenologi Agama *)', '2', '2018-07-22 12:28:25', '2018-07-22 12:28:25'),
('MK062', 'Pendidikan Agama Islam *)', '2', '2018-07-22 12:28:47', '2018-07-22 12:28:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_07_19_180421_create_table_matakuliah', 2),
(4, '2018_07_21_165939_create_dosens_table', 3),
(5, '2018_07_21_174622_create_table_fakultas', 4),
(6, '2018_07_21_182501_create_jurusans_table', 5),
(7, '2018_07_21_185846_create_ruangans_table', 6),
(8, '2018_07_21_191250_create_tahun_akademiks_table', 7),
(10, '2018_07_22_170110_create_kurikulums_table', 8),
(11, '2018_07_22_200308_create_settings_table', 9),
(13, '2018_07_23_183221_create_jadwalkuliahs_table', 10),
(14, '2018_07_24_180322_create_mahasiswas_table', 11),
(15, '2018_08_13_184050_create_krs_table', 12),
(16, '2018_08_13_195845_create_khs_table', 13),
(17, '2018_08_16_233451_add_column_password_to_dosen', 14),
(18, '2018_08_17_081930_add_tugas_kehadiran_to_khs', 15),
(19, '2018_08_17_082339_add_column_kode_dosen', 16),
(20, '2018_08_22_174121_create_kehadirans_table', 17),
(21, '2018_08_23_051021_create_kehadirans_table', 18),
(22, '2018_08_23_210906_create_table_riwayat_kehadiran', 19),
(23, '2018_09_25_001630_add_columns_to_tahun_akademik', 20),
(24, '2018_09_27_170804_add_kode_akademik_to_mahasiswa', 21),
(25, '2018_09_29_072206_add_kode_fakultas_to_dosen', 22),
(26, '2018_09_30_072620_add_semester_to_khs', 23),
(27, '2018_09_30_072651_add_semester_to_krs', 23),
(28, '2018_09_30_074221_add_kode_dosen_krs', 24);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `riwayat_kehadiran`
--

CREATE TABLE `riwayat_kehadiran` (
  `id` int(10) UNSIGNED NOT NULL,
  `kehadiran_id` int(11) NOT NULL,
  `nim` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_kehadiran` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pertemuan_ke` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `riwayat_kehadiran`
--

INSERT INTO `riwayat_kehadiran` (`id`, `kehadiran_id`, `nim`, `status_kehadiran`, `pertemuan_ke`) VALUES
(3, 1, 'TI102145', 'I', 1),
(4, 3, 'TI102145', 'S', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruangan`
--

CREATE TABLE `ruangan` (
  `kode_ruangan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_ruangan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `ruangan`
--

INSERT INTO `ruangan` (`kode_ruangan`, `nama_ruangan`, `created_at`, `updated_at`) VALUES
('LT002', 'RUANG 002', '2018-07-21 12:03:25', '2018-07-21 12:04:35'),
('LT101', 'RUANG 001', '2018-07-21 12:03:13', '2018-07-21 12:03:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting`
--

CREATE TABLE `setting` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_universitas` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_telpon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `web` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `setting`
--

INSERT INTO `setting` (`id`, `nama_universitas`, `email`, `no_telpon`, `fax`, `web`, `alamat`, `created_at`, `updated_at`) VALUES
(1, 'POLITEKNIK TEDC BANDUNG', 'politekniktedc@gmail.com', '0821342345', '21213333', 'http://www.poltektedc.ac.id', 'JL pesantren km 2, kelurahan cibabat, kecamatan cimahi utara', NULL, '2018-07-22 13:14:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tahun_akademik`
--

CREATE TABLE `tahun_akademik` (
  `kode_tahun_akademik` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun_akademik` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('y','n') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tanggal_awal_kuliah` date NOT NULL,
  `tanggal_akhir_kuliah` date NOT NULL,
  `tanggal_awal_uts` date NOT NULL,
  `tanggal_akhir_uts` date NOT NULL,
  `tanggal_awal_uas` date NOT NULL,
  `tanggal_akhir_uas` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tahun_akademik`
--

INSERT INTO `tahun_akademik` (`kode_tahun_akademik`, `tahun_akademik`, `status`, `created_at`, `updated_at`, `tanggal_awal_kuliah`, `tanggal_akhir_kuliah`, `tanggal_awal_uts`, `tanggal_akhir_uts`, `tanggal_awal_uas`, `tanggal_akhir_uas`) VALUES
('20181', '2018 - 2019 Tahun Ganjil', 'y', '2018-07-21 12:24:26', '2018-08-22 03:19:41', '2018-09-01', '2018-09-29', '2018-09-01', '2018-09-26', '2018-09-01', '2018-09-30'),
('20182', '2018 - 2019 Semester Genap', 'n', '2018-07-21 12:36:37', '2018-09-24 17:43:20', '2018-09-25', '2018-09-25', '2018-09-25', '2018-09-25', '2018-09-25', '2018-09-25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nuris Akbar', 'nuris.akbar@gmail.com', '$2y$10$.6elVELTNaFeQMnB5fRH2O3Wn02tqVlojCsJC6BR59KMeN9AKaRYe', 'mxIfEc7uatEOihRU1AxCRvw7mkTAvCaktc9AGibyda4MmhNAIi7vouv4N7Xh', '2018-07-19 11:13:13', '2018-07-19 11:13:13');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`kode_dosen`);

--
-- Indeks untuk tabel `fakultas`
--
ALTER TABLE `fakultas`
  ADD PRIMARY KEY (`kode_fakultas`);

--
-- Indeks untuk tabel `jadwal_kuliah`
--
ALTER TABLE `jadwal_kuliah`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jam_kuliah`
--
ALTER TABLE `jam_kuliah`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`kode_jurusan`);

--
-- Indeks untuk tabel `kehadiran`
--
ALTER TABLE `kehadiran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `khs`
--
ALTER TABLE `khs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `krs`
--
ALTER TABLE `krs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kurikulum`
--
ALTER TABLE `kurikulum`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indeks untuk tabel `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`kode_mk`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `riwayat_kehadiran`
--
ALTER TABLE `riwayat_kehadiran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ruangan`
--
ALTER TABLE `ruangan`
  ADD PRIMARY KEY (`kode_ruangan`);

--
-- Indeks untuk tabel `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tahun_akademik`
--
ALTER TABLE `tahun_akademik`
  ADD PRIMARY KEY (`kode_tahun_akademik`);

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
-- AUTO_INCREMENT untuk tabel `jadwal_kuliah`
--
ALTER TABLE `jadwal_kuliah`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `jam_kuliah`
--
ALTER TABLE `jam_kuliah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `kehadiran`
--
ALTER TABLE `kehadiran`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `khs`
--
ALTER TABLE `khs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `krs`
--
ALTER TABLE `krs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `kurikulum`
--
ALTER TABLE `kurikulum`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `riwayat_kehadiran`
--
ALTER TABLE `riwayat_kehadiran`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
