-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2019 at 07:43 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sig`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_faskes`
--

CREATE TABLE `data_faskes` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_kecamatan` int(10) UNSIGNED NOT NULL,
  `nama_faskes` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ketersediaan_alat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_faskes`
--

INSERT INTO `data_faskes` (`id`, `id_kecamatan`, `nama_faskes`, `latitude`, `longitude`, `alamat`, `ketersediaan_alat`, `created_at`, `updated_at`) VALUES
(1, 2, 'Puskesmas Bakung', '-5.454739', '105.24811890000001', 'Puskesmas Bakung, Jalan Kamboja, Bakung, Bandar Lampung City, Lampung, Indonesia', 'Ada', NULL, NULL),
(2, 3, 'Puskesmas Kota Karang', '-5.4551421', '105.25667750000002', 'Puskesmas Kota Karang, Karang City, Bandar Lampung City, Lampung, Indonesia', 'Ada', NULL, NULL),
(3, 3, 'Puskesmas Sukamaju', '-5.4700315', '105.24498370000003', 'puskesmas sukamaju, Jalan Laksamana R.E.Martadinata, Sukamaju, Bandar Lampung City, Lampung, Indonesia', 'Ada', NULL, NULL),
(4, 4, 'Puskesmas Pasar Ambon', '-5.4495109', '105.25700089999998', 'Puskesmas Pasar Ambon, Jalan Laksamana Malahayati, Talang, Bandar Lampung City, Lampung, Indonesia', 'Pilih Ketersediaan Alat', NULL, NULL),
(5, 6, 'Puskesmas Sukaraja', '-5.444049', '105.28988000000004', 'Puskesmas Sukaraja, Jalan Yos Sudarso, Sukaraja, Bandar Lampung City, Lampung, Indonesia', 'Ada', NULL, NULL),
(6, 7, 'Puskesmas Panjang', '-5.4772121', '105.32277590000001', 'PUSKESMAS RAWAT INAP PANJANG, Jalan Yos Sudarso, South Panjang, Bandar Lampung City, Lampung, Indonesia', 'Ada', NULL, NULL),
(7, 8, 'Puskesmas Kampung Sawah', '-5.4073079', '105.26363300000003', 'Puskesmas Kampung Sawah, Jalan Arjuna, Sawah Lama, Bandar Lampung City, Lampung, Indonesia', 'Ada', NULL, NULL),
(8, 9, 'Puskesmas Satelit', '-5.4225629', '105.26968299999999', 'Puskesmas Satelit, Jalan Jenderal Sudirman, Pahoman, Bandar Lampung City, Lampung, Indonesia', 'Ada', NULL, NULL),
(9, 5, 'Puskesmas Kupang Kota', '-5.442954899999999', '105.266436', 'Puskesmas Kupang Kota, Jalan Patimura, Gunung MAS, Bandar Lampung City, Lampung, Indonesia', 'Ada', NULL, NULL),
(10, 5, 'Puskesmas Sumur Batu', '-5.434072899999999', '105.26169010000001', 'puskesmas sumur batu, Jalan Cut Mutia, Gulak Galik, Bandar Lampung City, Lampung, Indonesia', 'Ada', NULL, NULL),
(11, 10, 'Puskesmas Simpur', '-5.4106809', '105.24812759999998', 'Puskesmas Simpur, Jalan Tamin, Kelapa Tiga, Bandar Lampung City, Lampung, Indonesia', 'Ada', NULL, NULL),
(12, 10, 'Puskesmas Palapa', '-5.41561', '105.24862299999995', 'Puskesmas Palapa, Gang Hidayah Jalan Cut Nyak Dien, Palapa, Bandar Lampung City, Lampung, Indonesia', 'Ada', NULL, NULL),
(13, 11, 'Puskesmas Kebon Jahe', '-5.4145009', '105.26112590000002', 'Puskesmas Kebun Jahe, Jalan Kamboja, Enggal, Bandar Lampung City, Lampung, Indonesia', 'Ada', NULL, NULL),
(14, 12, 'Puskesmas Gedong Air', '-5.4003009', '105.2445874', 'Puskesmas Gedong Air, Jalan Sisingamangaraja, Gedong Air, Bandar Lampung City, Lampung, Indonesia', 'Ada', NULL, NULL),
(15, 12, 'Puskesmas Susunan Baru', '-5.401109999999999', '105.23116700000003', 'Puskesmas Susunan Baru, Jl. Sultan Badarudin, Susunan Baru, Bandar Lampung City, Lampung, Indonesia', 'Ada', NULL, NULL),
(16, 13, 'Puskesmas Kemiling', '-5.392706499999999', '105.21690669999998', 'Puskesmas Rawat Inap Kemiling, Jalan Imam Bonjol, Sumber Rejo, Bandar Lampung City, Lampung, Indonesia', 'Ada', NULL, NULL),
(17, 13, 'Puskesmas Beringin Raya', '', '105.21216589999995', 'Puskesmas Beringin Raya, Beringin Raya, Bandar Lampung City, Lampung, Indonesia', 'Ada', NULL, NULL),
(18, 13, 'Puskesmas Pinang Jaya', '-5.393264899999999', '105.19275970000001', 'Puskesmas Pinang Jaya, Jalan Mata Air, Pinang Jaya, Bandar Lampung City, Lampung, Indonesia', 'Ada', NULL, NULL),
(19, 14, 'Puskesmas Segalamider', '-5.391925', '105.23584189999997', 'Puskesmas Segala Mider, Jalan Pagar Alam, Segala Mider, Bandar Lampung City, Lampung, Indonesia', 'Ada', NULL, NULL),
(20, 1, 'Puskesmas Kedaton', '-5.384013999999999', '105.26023199999997', 'Puskesmas Kedaton, Kedaton, Bandar Lampung City, Lampung, Indonesia', 'Ada', NULL, NULL),
(21, 16, 'Puskesmas Way Kandis', '-5.362951900000001', '105.28945939999994', 'puskesmas way kandis, Jalan Pulau Damar Gang Pulau Panggung, Perumnas Way Kandis, Bandar Lampung City, Lampung, Indonesia', 'Ada', NULL, NULL),
(22, 17, 'Puskesmas Labuhan Ratu', '-5.360332999999998', '105.254008', 'Puskesmas Labuhan Ratu, Jalan Soekarno Hatta, Kampung Baru, Bandar Lampung City, Lampung, Indonesia', 'Ada', NULL, NULL),
(23, 18, 'Puskesmas Sukarame', '-5.386596', '105.29245000000003', 'Puskesmas Sukarame, Jalan Endro Suratmin, Sukarame, Bandar Lampung City, Lampung, Indonesia', 'Ada', NULL, NULL),
(24, 18, 'Puskesmas Permata Sukarame', '-5.385796900000001', '105.30419710000001', 'Puskesmas Permata Sukarame -Bandar Lampung, Jalan Pulau Sebesi, Sukarame, Bandar Lampung City, Lampung, Indonesia', 'Ada', NULL, NULL),
(25, 18, 'Puskesmas Korpri', '-5.371392', '105.30208100000004', 'Puskesmas KORPRI, Jalan Pulau Pisang, Harapan Jaya, Bandar Lampung City, Lampung, Indonesia', 'Ada', NULL, NULL),
(26, 19, 'Puskesmas Cendana Sukabumi', '-5.3976752', '105.29929519999996', 'Puskesmas Cendana Sukabumi, Jalan Pulau Bangka, Sukabumi, Sukabumi Sub-District, Bandar Lampung City, Lampung, Indonesia', 'Ada', NULL, NULL),
(27, 19, 'Puskesmas Campang Raya', '-5.4062649', '105.30243700000005', 'Puskesmas Campang Raya, Jalan Alimudin Umar, Campang Raya, Bandar Lampung City, Lampung, Indonesia', 'Ada', NULL, NULL),
(28, 19, 'Puskesmas Way Laga', '-5.434825300000001', '105.32668969999997', 'Puskesmas Way Laga, Jalan Insinyur Sutami, Way Laga, Bandar Lampung City, Lampung, Indonesia', 'Ada', NULL, NULL),
(29, 20, 'Puskesmas Wayhalim', '-5.3744644', '105.27491220000002', 'Puskesmas Way Halim, Jalan Gunung Rajabasa Raya, Perumnas Way Halim, Bandar Lampung City, Lampung, Indonesia', 'Ada', NULL, NULL),
(30, 15, 'Puskesmas Rajabasa Indah', '-5.373173299999999', '105.22718050000003', 'Puskesmas Rajabasa Indah, Jalan Pramuka, Kemiling Permai, Bandar Lampung City, Lampung, Indonesia', 'Ada', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `data_kecamatan`
--

CREATE TABLE `data_kecamatan` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_kecamatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_kecamatan`
--

INSERT INTO `data_kecamatan` (`id`, `nama_kecamatan`, `created_at`, `updated_at`) VALUES
(1, 'Kedaton', NULL, NULL),
(2, 'Teluk Betung Barat', NULL, NULL),
(3, 'Teluk Betung Timur', NULL, NULL),
(4, 'Teluk Betung Selatan', NULL, NULL),
(5, 'Teluk Betung Utara', NULL, NULL),
(6, 'Bumi Waras', NULL, NULL),
(7, 'Panjang', NULL, NULL),
(8, 'Tanjung Karang Timur', NULL, NULL),
(9, 'Kedamaian', NULL, NULL),
(10, 'Tanjung Karang Pusat', NULL, NULL),
(11, 'Enggal', NULL, NULL),
(12, 'Tanjung Karang Barat', NULL, NULL),
(13, 'Kemiling', NULL, NULL),
(14, 'Langkapura', NULL, NULL),
(15, 'Rajabasa', NULL, NULL),
(16, 'Tanjung Senang', NULL, NULL),
(17, 'Labuhan Ratu', NULL, NULL),
(18, 'Sukarame', NULL, NULL),
(19, 'Sukabumi', NULL, NULL),
(20, 'Way Halim', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `data_kepadatan`
--

CREATE TABLE `data_kepadatan` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_kecamatan` int(10) UNSIGNED NOT NULL,
  `luas_daerah` decimal(5,2) NOT NULL,
  `jumlah_penduduk` int(11) NOT NULL,
  `kepadatan_penduduk` int(11) NOT NULL,
  `tahun` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_kepadatan`
--

INSERT INTO `data_kepadatan` (`id`, `id_kecamatan`, `luas_daerah`, `jumlah_penduduk`, `kepadatan_penduduk`, `tahun`, `created_at`, `updated_at`) VALUES
(1, 2, '11.00', 47496, 4310, '2017', NULL, NULL),
(2, 3, '15.00', 59061, 3983, '2017', NULL, NULL),
(3, 4, '4.00', 46528, 12277, '2017', NULL, NULL),
(4, 6, '4.00', 30917, 8245, '2017', NULL, NULL),
(5, 7, '16.00', 52497, 3333, '2017', NULL, NULL),
(6, 8, '2.00', 49835, 24549, '2017', NULL, NULL),
(7, 9, '8.00', 40836, 4974, '2017', NULL, NULL),
(8, 5, '4.00', 59496, 13740, '2017', NULL, NULL),
(9, 10, '4.00', 50901, 12568, '2017', NULL, NULL),
(10, 11, '3.00', 43212, 12382, '2017', NULL, NULL),
(11, 12, '15.00', 35218, 2349, '2017', NULL, NULL),
(12, 13, '24.00', 77098, 3181, '2017', NULL, NULL),
(13, 14, '6.00', 54571, 8917, '2017', NULL, NULL),
(14, 1, '5.00', 58875, 12291, '2017', NULL, NULL),
(15, 15, '14.00', 53046, 3921, '2017', NULL, NULL),
(16, 16, '11.00', 68105, 6407, '2017', NULL, NULL),
(17, 17, '8.00', 38505, 4831, '2017', NULL, NULL),
(18, 18, '15.00', 56768, 3849, '2017', NULL, NULL),
(19, 19, '24.00', 29140, 1235, '2017', NULL, NULL),
(20, 20, '5.00', 63805, 11926, '2017', NULL, NULL),
(22, 15, '9.40', 67880, 7221, '2020', NULL, NULL),
(23, 13, '12.80', 12076, 943, '2023', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `data_pasien`
--

CREATE TABLE `data_pasien` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_kecamatan` int(10) UNSIGNED NOT NULL,
  `id_faskes` int(10) UNSIGNED NOT NULL,
  `jenis_tb` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipe_diagnosa` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `latitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `longitude` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_mulaipengobatan` date NOT NULL,
  `nama_pasien` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_pasien`
--

INSERT INTO `data_pasien` (`id`, `id_kecamatan`, `id_faskes`, `jenis_tb`, `tipe_diagnosa`, `latitude`, `longitude`, `alamat`, `tanggal_mulaipengobatan`, `nama_pasien`, `tanggal_lahir`, `created_at`, `updated_at`) VALUES
(1, 17, 22, 'Ekstra Paru', 'Terdiagnosis Klinis', '-5.371871686005382', '105.2630103723526', 'Jalan Harapan Gang Delima, LK1 Labuhan Ratu, Bandar Lampung City, Lampung, Indonesia', '2017-03-28', 'Agus Supriono', '1989-08-19', NULL, NULL),
(2, 17, 22, 'Paru', 'Terdiagnosis Klinis', '-5.360595502750567', '105.25448778632199', 'Jl. Bumi Manti Gg. manggis, Kampung Baru, Bandar Lampung City, Lampung, Indonesia', '2017-01-13', 'Ahmad Rofiq', '2015-03-01', NULL, NULL),
(3, 17, 22, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.36406847025085', '105.24951398518067', 'Jl. Bumi Manti, Labuhan Ratu, Bandar Lampung City, Lampung, Indonesia', '2017-01-11', 'Aliyah', '1962-08-23', NULL, NULL),
(4, 17, 22, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.3819564696031685', '105.25108597752387', 'Jl. Sukardi Hamdani Gg. Palapa 5D, Labuhan Ratu, Bandar Lampung City, Lampung, Indonesia', '2017-01-24', 'Andini Ratu', '2011-02-11', NULL, NULL),
(5, 17, 22, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.3634855897834335', '105.24892354127815', 'Jalan Bumi Manti I Gang Damai, Labuhan Ratu, Bandar Lampung City, Lampung, Indonesia', '2017-05-03', 'Apriliana', '2003-07-19', NULL, NULL),
(6, 17, 22, 'Paru', 'Terdiagnosis Klinis', '-5.376458412231105', '105.25896999021302', 'Jl. Nusantara Gg. Garuda, Labuhan Ratu, Bandar Lampung City, Lampung, Indonesia', '2017-01-19', 'Bahar', '1924-06-22', NULL, NULL),
(7, 17, 22, 'Paru', 'Terdiagnosis Klinis', '-5.3773167181662265', '105.26643997619635', 'Jl. Mega,gg mayak Sepang Jaya, Bandar Lampung City, Lampung, Indonesia', '2017-03-01', 'Fenty Oktavia', '1987-11-23', NULL, NULL),
(8, 3, 2, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.4539367', '105.25978190000001', 'Jl. Tlk. Bone , Kota Karang, Bandar Lampung City, Lampung, Indonesia', '2017-08-19', 'Agung A', '2017-06-11', NULL, NULL),
(9, 3, 2, 'Paru', 'Terdiagnosis Klinis', '-5.454796315396562', '105.26040485396732', 'Gang Teluk Semangka, Kota Karang, Bandar Lampung City, Lampung, Indonesia', '2017-02-10', 'Azkia Salsabila Azzahra', '2015-02-03', NULL, NULL),
(10, 3, 2, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.4549155', '105.25383599999998', 'jalan bukit 1 perwata', '2017-01-16', 'Bustomi', '1953-08-19', NULL, NULL),
(11, 3, 2, 'Paru', 'Terdiagnosis Klinis', '-5.462418940924596', '105.24884568703305', 'Jl. Re Martadinata, Keteguhan, Bandar Lampung City, Lampung, Indonesia', '2017-01-03', 'Darmawan', '1983-08-19', NULL, NULL),
(12, 3, 2, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.4554795640807905', '105.25956707116393', 'Jl. Tlk. Semangka, Kota Karang, Bandar Lampung City, Lampung, Indonesia', '2017-02-17', 'Halipah', '1993-02-11', NULL, NULL),
(13, 2, 2, 'Paru', 'Terdiagnosis Klinis', '-5.441429614868171', '105.24371622222907', 'Jl. DR. Setia Budi, Sukarame II, Bandar Lampung City, Lampung, Indonesia', '2017-03-29', 'Jamhari', '1985-02-03', NULL, NULL),
(14, 3, 2, 'Paru', 'Terdiagnosis Klinis', '-5.4572368930848345', '105.26126784379426', 'Jl. Tlk. Bone, Bandar Lampung City, Lampung, Indonesia', '2017-01-17', 'Hi. Beddu Haling', '1953-08-19', NULL, NULL),
(15, 3, 2, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.4535396197271515', '105.26219407619624', 'Jalan Teluk Pandan, Karang City, Bandar Lampung City, Lampung, Indonesia', '2017-01-03', 'Kadasse', '1938-02-19', NULL, NULL),
(16, 2, 2, 'Paru', 'Terdiagnosis Klinis', '-5.455569312172781', '105.2593269123031', 'Bandar Lampung, Jl. Kota Karang, Karang City, Bandar Lampung City, Lampung, Indonesia', '2017-03-01', 'Kamin', '1964-07-22', NULL, NULL),
(17, 2, 2, 'Paru', 'Terdiagnosis Klinis', '-5.447166712646653', '105.24655848095085', 'Jl. DR. Setia Budi, Negeri Olok Gading, Bandar Lampung City, Lampung, Indonesia', '2017-03-17', 'Khairudin', '2017-12-03', NULL, NULL),
(18, 3, 2, 'Paru', 'Terdiagnosis Klinis', '-5.4569951757170125', '105.2589350497376', 'Jl. Tlk. Ratai, Karang City, Bandar Lampung City, Lampung, Indonesia', '2017-01-16', 'M.Hafiz Aditya', '2016-02-22', NULL, NULL),
(19, 2, 2, 'Paru', 'Terdiagnosis Klinis', '-5.446675414675578', '105.24806051799919', 'Jl. DR. Setia Budi, Negeri Olok Gading, Bandar Lampung City, Lampung, Indonesia', '2020-02-03', 'M.Muklis', '2013-11-19', NULL, NULL),
(20, 3, 2, 'Paru', 'Terdiagnosis Klinis', '-5.457970352762373', '105.25589830793456', 'Jl. Tlk. Ratai, Kota Karang raya, Bandar Lampung City, Lampung, Indonesia', '2017-03-01', 'Mardianita', '1965-11-19', NULL, NULL),
(22, 4, 4, 'Paru', 'Terdiagnosis Klinis', '-5.445812429903767', '105.25841359496758', 'Jl. W. R. Supratman, Talang, Bandar Lampung City, Lampung, Indonesia', '2017-03-29', 'Adi Nasri', '1949-08-11', NULL, NULL),
(23, 4, 4, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.447317914723525', '105.25734081667179', 'Jl. Kh. Hasyim Ashari, Gedong Pakuon, Bandar Lampung City, Lampung, Indonesia', '2017-01-31', 'Agustina Waslam', '1978-02-11', NULL, NULL),
(24, 3, 4, 'Paru', 'Terdiagnosis Klinis', '-5.454326544691996', '105.25802637619631', 'Jl. Re Martadinata, Kota Karang, Bandar Lampung City, Lampung, Indonesia', '2017-02-21', 'Aisyah Ayudia', '2016-11-19', NULL, NULL),
(25, 4, 4, 'Paru', 'Terdiagnosis Klinis', '-5.4438380368293', '105.25485729073785', 'Jl. W. R. Supratman, Gedong Pakuon, Bandar Lampung City, Lampung, Indonesia', '2017-02-02', 'Ardawi', '1964-02-13', NULL, NULL),
(26, 4, 4, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.431751899999976', '105.24906060265505', 'Jl. P. Emir Moh. Noer, Sumur Putri, Bandar Lampung City, Lampung, Indonesia', '2017-02-19', 'Arsali', '1979-11-20', NULL, NULL),
(27, 4, 4, 'Paru', 'Terdiagnosis Klinis', '-5.443145776929549', '105.25925674973757', 'Talang, Bandar Lampung City, Lampung, Indonesia', '2017-03-23', 'Dedi Sunarya', '1987-10-14', NULL, NULL),
(28, 4, 4, 'Paru', 'Terdiagnosis Klinis', '-5.443444829672379', '105.26000776826174', 'Wolter mongonsidi Talang, Bandar Lampung City, Lampung, Indonesia', '2017-03-14', 'Herun Hidayat', '2002-03-06', NULL, NULL),
(29, 4, 4, 'Paru', 'Terdiagnosis Klinis', '-5.446999078506263', '105.25768779814757', 'Jl. Ikan Mujair, Talang, Bandar Lampung City, Lampung, Indonesia', '2017-01-24', 'Humairoh Az zahra', '2016-07-22', NULL, NULL),
(30, 4, 4, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.445096546141011', '105.26724040370482', 'Jl. Ikan Layur, Teluk Betung, Bandar Lampung City, Lampung, Indonesia', '2017-03-14', 'Nurdiansyah', '1990-05-12', NULL, NULL),
(31, 4, 4, 'Paru', 'Terdiagnosis Klinis', '-5.445791069082631', '105.25786642432854', 'Jl. W. R. Supratman, Talang, Bandar Lampung City, Lampung, Indonesia', '2017-02-10', 'Nuryadi', '1978-04-21', NULL, NULL),
(32, 4, 4, 'Paru', 'Terdiagnosis Klinis', '-5.4469883981168765', '105.25802039206542', 'Jl. Ikan Mujair, Talang, Bandar Lampung City, Lampung, Indonesia', '2017-02-01', 'Rahmawati', '1961-08-20', NULL, NULL),
(33, 6, 4, 'Paru', 'Terdiagnosis Klinis', '-5.449860387148601', '105.26856290185242', 'Kangkung, Bumi Waras, Bandar Lampung City, Lampung, Indonesia', '2017-01-17', 'Ade Siswanto', '1987-05-19', NULL, NULL),
(34, 6, 5, 'Paru', 'Terdiagnosis Klinis', '-5.450415764489413', '105.26912080132752', 'Kangkung, Bumi Waras, Bandar Lampung City, Lampung, Indonesia', '2017-02-20', 'Aliyahh', '1988-04-02', NULL, NULL),
(35, 6, 5, 'Paru', 'Terdiagnosis Klinis', '-5.4445195391336725', '105.28900372009889', 'Jl. Ikan Selar, Sukaraja, Bumi Waras, Bandar Lampung City, Lampung, Indonesia', '2017-03-29', 'Amir', '2001-06-01', NULL, NULL),
(36, 6, 5, 'Paru', 'Terdiagnosis Klinis', '-5.450479846457215', '105.26889549577027', 'Kangkung, Bumi Waras, Bandar Lampung City, Lampung, Indonesia', '2017-01-24', 'Aprizal', '1994-04-22', NULL, NULL),
(37, 6, 5, 'Paru', 'Terdiagnosis Klinis', '-5.439892857500631', '105.28714747141112', 'Jl. Gatot Subroto, Garuntang, Bandar Lampung City, Lampung, Indonesia', '2017-01-26', 'Arianto', '1976-09-23', NULL, NULL),
(38, 6, 5, 'Paru', 'Terdiagnosis Klinis', '-5.45051188743856', '105.26912080132752', 'Kangkung, Bumi Waras, Bandar Lampung City, Lampung, Indonesia', '2017-03-20', 'Asep Maulana', '1987-03-11', NULL, NULL),
(39, 6, 5, 'Paru', 'Terdiagnosis Klinis', '-5.450618690697339', '105.26876674973755', 'Kangkung, Bumi Waras, Bandar Lampung City, Lampung, Indonesia', '2017-01-09', 'Atun', '1991-07-14', NULL, NULL),
(40, 6, 5, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.450981821635124', '105.26872383439331', 'Kangkung, Bumi Waras, Bandar Lampung City, Lampung, Indonesia', '2017-03-21', 'Bawon', '1983-09-07', NULL, NULL),
(41, 6, 5, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.441238600950988', '105.28873533914793', 'Jl. Gatot Subroto, Garuntang, Bandar Lampung City, Lampung, Indonesia', '2017-01-17', 'Bejo', '1947-02-15', NULL, NULL),
(42, 6, 5, 'Ekstra Paru', 'Terdiagnosis Klinis', '-5.449977870859691', '105.26825176560669', 'Kangkung, Bumi Waras, Bandar Lampung City, Lampung, Indonesia', '2017-02-23', 'Boim', '1960-02-03', NULL, NULL),
(43, 7, 6, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.475860434216113', '105.33209302806404', 'karang indah, Panjang Selatan, Bandar Lampung City, Lampung, Indonesia', '2017-01-27', 'Adha Ramadan', '1994-03-19', NULL, NULL),
(44, 7, 6, 'Paru', 'Terdiagnosis Klinis', '-5.464837474102305', '105.32033448941047', 'Jalan Teluk lampung, Pidada, Bandar Lampung City, Lampung, Indonesia', '2017-02-11', 'Aini', '1944-05-22', NULL, NULL),
(45, 7, 6, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.472406343553403', '105.32134627882078', 'kampung baru, Panjang Utara, Bandar Lampung City, Lampung, Indonesia', '2017-03-24', 'Atmo Suwandi', '1957-09-23', NULL, NULL),
(46, 7, 6, 'Paru', 'Terdiagnosis Klinis', '-5.462487807199477', '105.31949327514644', 'Jl. Yos Sudarso, Pidada, Bandar Lampung City, Lampung, Indonesia', '2017-01-05', 'Basri', '1951-04-02', NULL, NULL),
(47, 7, 6, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.47612743102954', '105.33044078731086', 'karang indah Panjang Selatan, Bandar Lampung City, Lampung, Indonesia', '2017-03-30', 'Breyen Marbun', '1957-02-03', NULL, NULL),
(48, 7, 6, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.502827104478723', '105.34598663232418', 'jl cobra Srengsem, Bandar Lampung City, Lampung, Indonesia', '2017-01-06', 'Charles Roberto', '1962-04-01', NULL, NULL),
(49, 7, 6, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.463168626882682', '105.3182803031799', 'Jl. Tlk. Tomini, Pidada, Bandar Lampung City, Lampung, Indonesia', '2017-02-16', 'Dede Andrian', '1975-08-13', NULL, NULL),
(50, 7, 6, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.478990820558265', '105.32618143939521', 'Karang Maritim, Bandar Lampung City, Lampung, Indonesia', '2017-01-20', 'Dian Prayoga', '1990-02-14', NULL, NULL),
(51, 7, 6, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.502698951762421', '105.33982828042599', 'kenanga, Srengsem, Bandar Lampung City, Lampung, Indonesia', '2017-03-22', 'Eko Saputra', '1973-04-17', NULL, NULL),
(52, 7, 6, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.494440182913154', '105.32975463068851', 'Gang Rozak, Srengsem, Bandar Lampung City, Lampung, Indonesia', '2017-01-19', 'Eryanti', '1957-08-19', NULL, NULL),
(53, 7, 6, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.473015099631133', '105.32279467168883', 'jl. panjang, Panjang Utara, Bandar Lampung City, Lampung, Indonesia', '2017-01-17', 'Firdaus', '1993-10-02', NULL, NULL),
(54, 7, 6, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.444276802641273', '105.30253749577025', 'Ketapang, Bandar Lampung City, Lampung, Indonesia', '2017-03-24', 'Heri Gunawan', '1977-03-12', NULL, NULL),
(55, 7, 6, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.471829626697649', '105.32345985952452', 'karang anyar, Panjang Utara, Bandar Lampung City, Lampung, Indonesia', '2017-03-24', 'Hindun', '1976-04-11', NULL, NULL),
(56, 7, 6, 'Paru', 'Terdiagnosis Klinis', '-5.473574936613496', '105.32879927539375', 'Teluk harapan, Panjang Selatan, Bandar Lampung City, Lampung, Indonesia', '2017-02-04', 'Indah Rojayanti', '1990-07-23', NULL, NULL),
(58, 8, 7, 'Paru', 'Terdiagnosis Klinis', '-5.417015', '105.268472', 'jl mutia Kota Baru, Kec. Tj. Karang Tim., Kota Bandar Lampung,', '2017-03-07', 'Deni Kurniawan', '1993-11-22', NULL, NULL),
(59, 8, 7, 'Ekstra Paru', 'Terdiagnosis Klinis', '-5.403509,', '105.262074', 'jl hanoman Sawah Brebes, Kota Bandar Lampung, Lampung', '2017-02-01', 'Djunaidi', '1954-03-12', NULL, NULL),
(60, 8, 7, 'Ekstra Paru', 'Terkonfirmasi Bakteriologis', '-5.414975', '105.271058', 'jl dr harun Sawah Brebes, Kota Bandar Lampung, Lampung', '2011-08-19', 'Gaya Atika', '2011-08-19', NULL, NULL),
(61, 8, 7, 'Paru', 'Terdiagnosis Klinis', '-5.420280', '105.270667', 'jl perintis kota baru tanjung karang timur kota bandar lampung', '2017-03-09', 'Handayani', '1992-03-04', NULL, NULL),
(62, 8, 7, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.406321', '105.264562', 'jl bimo Sawah Brebes, Tanjung Karang Timur, Kota Bandar Lampung, Lampung', '2017-03-03', 'Darni', '1941-02-11', NULL, NULL),
(63, 8, 7, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.415417', '105.264304', 'Jl. Dr. Harun. I, Kota Baru, Kota Bandar Lampung, Lampung', '2017-03-23', 'Heri', '1977-02-11', NULL, NULL),
(64, 8, 7, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.405607', '105.262559', 'Sawah Brebes, Kota Bandar Lampung, Lampung', '2017-01-18', 'Ijah', '1954-10-02', NULL, NULL),
(65, 8, 7, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.418211', '105.274767', 'jl Hi said Kota Baru, Kota Bandar Lampung, Lampung', '2017-01-18', 'Irfan', '2000-01-23', NULL, NULL),
(66, 8, 7, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.411920', '105.265640', 'Jl. Adi Sucipto, Kebon Jeruk, Kota Bandar Lampung, Lampung', '2017-02-24', 'Maimunah', '1954-03-22', NULL, NULL),
(67, 8, 7, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.415339', '105.264293', 'Jl. Dr. Harun 1, Kota Baru, Kota Bandar Lampung, Lampung', '2017-03-10', 'Mega', '1997-11-23', NULL, NULL),
(68, 8, 7, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.415307', '105.264529', 'Jl. Dr. Harun 1, Kota Baru, Kota Bandar Lampung, Lampung', '2017-03-24', 'Nani F', '1996-01-21', NULL, NULL),
(69, 8, 7, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.407472', '105.263303', 'Jl. Arjuna, Sawah Lama, Kota Bandar Lampung, Lampung', '2017-02-16', 'Novianti', '1960-09-02', NULL, NULL),
(70, 8, 7, 'Paru', 'Terdiagnosis Klinis', '-5.415488', '105.263928', 'Jl. Dr. Harun 1, Kota Baru, Kec. Tj. Karang Tim., Kota Bandar Lampung, Lampung 35128', '2017-01-07', 'Pilot', '1965-01-22', NULL, NULL),
(71, 9, 7, 'Paru', 'Terdiagnosis Klinis', '-5.413068', '105.281859', 'Jl. Mangga, Kedamaian, Kota Bandar Lampung, Lampung', '2017-03-30', 'Rutama', '1965-10-22', NULL, NULL),
(72, 8, 7, 'Paru', 'Terdiagnosis Klinis', '-5.415432', '105.264831', 'Jl. Dr. Harun 1, Kota Baru, Kec. Tj. Karang Timur.', '2017-03-23', 'Sahrul', '1994-03-10', NULL, NULL),
(73, 8, 7, 'Paru', 'Terdiagnosis Klinis', '-5.411856', '105.264149', 'Jl. Adi Sucipto, Tanjung Agung, Kota Bandar Lampung, Lampung', '2017-02-14', 'Siti Soleha', '1986-02-19', NULL, NULL),
(74, 8, 7, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.409928', '105.268588', 'Jl. Hayam Wuruk, Tanjung Agung Raya, Kota Bandar Lampung, Lampung', '2017-01-26', 'Suyono', '1975-04-01', NULL, NULL),
(75, 8, 7, 'Paru', 'Terdiagnosis Klinis', '-5.409714', '105.268374', 'Jl. Hayam Wuruk, Tanjung Agung Raya, Kota Bandar Lampung, Lampung', '2017-03-20', 'Uwong', '1954-08-19', NULL, NULL),
(76, 8, 7, 'Paru', 'Terdiagnosis Klinis', '-5.415482', '105.264989', 'Jl. H. Nasir, Kota Baru, Kota Bandar Lampung, Lampung', '2017-03-01', 'Wawan Darmawan', '1986-02-11', NULL, NULL),
(77, 9, 8, 'Paru', 'Terdiagnosis Klinis', '-5.424037', '105.276882', 'jl. bakau, tanjung gading bandar lampung', '2017-03-30', 'Ade Riska', '1994-02-03', NULL, NULL),
(78, 11, 8, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.416178', '105.260674', 'jl rawa subur enggal bandar lampung', '2017-02-04', 'Agus Riano', '1994-01-02', NULL, NULL),
(79, 9, 8, 'Paru', 'Terdiagnosis Klinis', '-5.412757', '105.275573', 'Jl. Putri Balau, Kedamaian, Kota Bandar Lampung, Lampung', '2017-03-30', 'An Putri', '2009-01-02', NULL, NULL),
(80, 9, 8, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.420366', '105.280537', 'Gang Mentru, Tanjung Raya, Kota Bandar Lampung, Lampung', '2017-03-06', 'Apriyanto', '1984-12-02', NULL, NULL),
(81, 9, 8, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.421871', '105.275841', 'Jl. Jati, Tanjung Raya, Kota Bandar Lampung, Lampung', '2017-01-10', 'Aris', '1986-01-03', NULL, NULL),
(82, 9, 8, 'Paru', 'Terdiagnosis Klinis', '-5.411618', '105.291675', 'Kedamaian, Kota Bandar Lampung, Lampung', '2017-02-02', 'Danang Sumandanu', '2000-02-01', NULL, NULL),
(83, 9, 8, 'Paru', 'Terdiagnosis Klinis', '-5.397478', '105.280972', 'Jl. Arif Rahman Hakim, Kalibalau Kencana, Kota Bandar Lampung, Lampung', '2017-02-06', 'Danang', '1999-02-01', NULL, NULL),
(84, 9, 8, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.421868', '105.275956', 'Jl. Jati, Tanjung Raya, Kota Bandar Lampung, Lampung', '2017-02-04', 'Darmadji', '1946-04-02', NULL, NULL),
(85, 9, 8, 'Paru', 'Terdiagnosis Klinis', '-5.411639', '105.292094', 'jl raya kedamaian, kota bandar lampung', '2017-03-31', 'Dewi Yanti', '1975-05-04', NULL, NULL),
(87, 9, 8, 'Paru', 'Terdiagnosis Klinis', '-5.411905', '105.271804', 'Jl. Putri Balau, Tanjung Baru, Kedamaian, Kota Bandar Lampung, Lampung', '2017-01-21', 'Diki W', '1998-08-04', NULL, NULL),
(88, 9, 8, 'Paru', 'Terdiagnosis Klinis', '-5.422117', '105.276463', 'Jl. Jati, Tanjung Raya, Kota Bandar Lampung, Lampung', '2017-03-16', 'Edi Suryadi', '1972-05-05', NULL, NULL),
(89, 5, 8, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.445001', '105.263885', 'jl wr supratman, Teluk Betung Utara, Kota Bandar Lampung, Lampung', '2017-02-22', 'Eko Aryanto', '1987-04-21', NULL, NULL),
(90, 9, 8, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.407859', '105.280417', 'Jl. Perwira 1, Tanjung Baru, Kota Bandar Lampung, Lampung', '2017-01-05', 'Galang Aji', '1996-08-12', NULL, NULL),
(91, 9, 8, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.410248', '105.278688', 'Jl. Prajurit 1, Tanjung Baru, Kota Bandar Lampung, Lampung', '2017-02-27', 'Hendra', '1984-06-02', NULL, NULL),
(92, 9, 8, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.409680', '105.280764', 'tanjung baru, Kedamaian, Kota Bandar Lampung, Lampung', '2017-03-28', 'Jono', '1989-06-21', NULL, NULL),
(93, 5, 8, 'Paru', 'Terdiagnosis Klinis', '-5.429835', '105.275227', 'Jl. Gatot Subroto, Pahoman, Kota Bandar Lampung, Lampung', '2017-02-16', 'Jumaidi', '1957-03-12', NULL, NULL),
(94, 9, 8, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.413349', '105.273468', 'jl sultan selamat, kedamaian', '2017-01-10', 'Jumheri', '1976-06-03', NULL, NULL),
(95, 9, 8, 'Paru', 'Terdiagnosis Klinis', '-5.426552', '105.278109', 'Tanjung Gading, Kedamaian, Kota Bandar Lampung, Lampung', '2017-01-30', 'Laila Anisya', '1959-03-02', NULL, NULL),
(96, 9, 8, 'Paru', 'Terdiagnosis Klinis', '-5.397467', '105.280930', 'Jl. Arif Rahman Hakim, Kalibalau Kencana, Kota Bandar Lampung, Lampung', '2017-02-02', 'M sayuti', '1947-03-19', NULL, NULL),
(97, 9, 8, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.424241027144388', '105.27585344337763', 'Jl. Bakau, Tanjung Raya, Bandar Lampung City, Lampung, Indonesia', '2017-04-24', 'Muhari', '1981-08-19', NULL, NULL),
(98, 9, 8, 'Paru', 'Terdiagnosis Klinis', '-5.429821291130518', '105.28272714445802', 'Tanjung Gading, Bandar Lampung City, Lampung, Indonesia', '2017-01-07', 'Mursyid', '1940-02-11', NULL, NULL),
(99, 11, 8, 'Paru', 'Terdiagnosis Klinis', '-5.417448715181515', '105.26520256406252', 'jl sutioso Enggal, Bandar Lampung City, Lampung, Indonesia', '2017-02-08', 'RA Zubaidah', '1940-03-11', NULL, NULL),
(100, 9, 8, 'Paru', 'Terdiagnosis Klinis', '-5.410826521976773', '105.29165232327887', 'Jl. Amd., Kedamaian, Bandar Lampung City, Lampung, Indonesia', '2017-01-09', 'Rustinawati', '1968-02-14', NULL, NULL),
(101, 9, 8, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.42266783091358', '105.28113694127808', 'Jl. Merbau, Tanjung Raya, Bandar Lampung City, Lampung, Indonesia', '2017-02-21', 'Soleha', '1964-01-22', NULL, NULL),
(102, 11, 8, 'Paru', 'Terdiagnosis Klinis', '-5.420932891494327', '105.2617923054878', 'Jl. Mataram, Enggal, Bandar Lampung City, Lampung, Indonesia', '2017-02-16', 'Sri Mulyani', '1961-01-19', NULL, NULL),
(103, 9, 8, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.407375453869182', '105.27288960845954', 'Jl. Pangeran Antasari, Kedamaian, Bandar Lampung City, Lampung, Indonesia', '2017-02-28', 'Waluyo', '1961-03-12', NULL, NULL),
(104, 8, 27, 'Paru', 'Terdiagnosis Klinis', '-5.407660279608163', '105.30112792562568', 'Jl. Alimudin Umar, Campang Raya, Bandar Lampung City, Lampung, Indonesia', '2017-01-18', 'Chandra', '1985-04-12', NULL, NULL),
(105, 8, 27, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.411218400000001', '105.30726460000005', 'Campang Raya, Bandar Lampung City, Lampung, Indonesia', '2017-03-30', 'Jahidi', '1985-01-03', NULL, NULL),
(106, 8, 27, 'Paru', 'Terdiagnosis Klinis', '-5.424296407929339', '105.33417484973756', 'Jati Rahayu, Campang Raya, Bandar Lampung City, Lampung, Indonesia', '2017-03-30', 'Mista', '1984-02-21', NULL, NULL),
(107, 8, 27, 'Ekstra Paru', 'Terkonfirmasi Bakteriologis', '-5.407126225071575', '105.30620266508186', 'Jl. Alimudin Umar, Campang Raya, Bandar Lampung City, Lampung, Indonesia', '2019-01-17', 'Novi', '1994-06-21', NULL, NULL),
(108, 8, 27, 'Paru', 'Terdiagnosis Klinis', '-5.406923284224127', '105.30400325368964', 'Jl. Alimudin Umar, gang krucil Campang Raya, Bandar Lampung City, Lampung, Indonesia', '2017-02-18', 'Satim', '1936-02-10', NULL, NULL),
(109, 8, 27, 'Paru', 'Pilih Tipe Diagnosa', '-5.41602288738449', '105.32575752513117', 'kp Beringin, Jalan Pangeran Tirtayasa, Campang Raya, Bandar Lampung City, Lampung, Indonesia', '2017-01-11', 'Yulianti', '1990-02-15', NULL, NULL),
(110, 5, 9, 'Paru', 'Terdiagnosis Klinis', '-5.440904700000015', '105.26310756878661', 'Kupang Kota, Bandar Lampung City, Lampung, Indonesia', '2017-01-07', 'Adina Dzannisa', '2013-01-23', NULL, NULL),
(111, 5, 9, 'Paru', 'Terdiagnosis Klinis', '-5.442314524025207', '105.26254966931151', 'Kupang Kota, Bandar Lampung City, Lampung, Indonesia', '2017-01-25', 'An Arka', '2016-08-04', NULL, NULL),
(112, 5, 9, 'Paru', 'Terdiagnosis Klinis', '-5.438270853556386', '105.26969544708254', 'Kupang Teba, Bandar Lampung City, Lampung, Indonesia', '2017-03-15', 'Dedi Saputra', '2001-02-03', NULL, NULL),
(113, 5, 9, 'Paru', 'Terdiagnosis Klinis', '-5.438140989105628', '105.27535186931152', 'Kupang Raya, teluk betung utara Bandar Lampung City, Lampung, Indonesia', '2017-01-03', 'Diki Ardiansyah', '2005-04-21', NULL, NULL),
(114, 5, 9, 'Paru', 'Terdiagnosis Klinis', '-5.436517543830957', '105.27603851481933', 'Kupang Raya, Bandar Lampung City, Lampung, Indonesia', '2017-03-01', 'Diny Armeyda', '2007-06-13', NULL, NULL),
(115, 5, 9, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.437726145550129', '105.26982419311526', 'Kupang Teba, Bandar Lampung City, Lampung, Indonesia', '2017-02-06', 'Empak', '1953-08-04', NULL, NULL),
(116, 5, 9, 'Paru', 'Terdiagnosis Klinis', '-5.431944745258154', '105.24400487724608', 'Sumur Putri, Bandar Lampung City, Lampung, Indonesia', '2017-03-07', 'Junaidi', '1965-06-21', NULL, NULL),
(117, 5, 9, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.44274627351064', '105.26307063862305', 'Jalan Gunung Tangkuban Perahu, Kupang Kota, Bandar Lampung City, Lampung, Indonesia', '2017-03-15', 'Kartinah', '1970-04-04', NULL, NULL),
(118, 5, 9, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.4397004662408595', '105.25978771534426', 'Jl. Drs. Warsito Gg. Raja Basa, Kupang Kota, Bandar Lampung City, Lampung, Indonesia', '2017-03-20', 'Lelawati', '1982-02-01', NULL, NULL),
(119, 5, 9, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.44101150496609', '105.2629788227539', 'Kupang Kota, Bandar Lampung City, Lampung, Indonesia', '2017-02-24', 'Maidi', '1991-02-13', NULL, NULL),
(120, 5, 9, 'Paru', 'Terdiagnosis Klinis', '-5.440392035898859', '105.26117637829589', 'Kupang Kota, Bandar Lampung City, Lampung, Indonesia', '2017-02-11', 'Mamat', '1964-02-23', NULL, NULL),
(121, 5, 9, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.442202379053263', '105.26232436375426', 'Kupang Kota, Bandar Lampung City, Lampung, Indonesia', '2017-01-17', 'Marianto', '1969-03-14', NULL, NULL),
(122, 5, 9, 'Paru', 'Terdiagnosis Klinis', '-5.438954408003989', '105.27085416137697', 'Kupang Teba, Bandar Lampung City, Lampung, Indonesia', '2017-02-06', 'Mishel Dea', '2015-03-20', NULL, NULL),
(123, 5, 9, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.439050532785911', '105.27008168518068', 'Kupang Teba, Bandar Lampung City, Lampung, Indonesia', '2017-01-25', 'Misnan', '1963-03-21', NULL, NULL),
(124, 5, 9, 'Paru', 'Terdiagnosis Klinis', '-5.440135367785455', '105.27038251045076', 'Jalan Ms. Batubara, Kupang Teba, Bandar Lampung City, Lampung, Indonesia', '2017-01-31', 'Paulus Piter Aji', '1981-05-27', NULL, NULL),
(125, 4, 9, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.442709425200865', '105.26791688836056', 'Jl. Hasanudin, Gunung MAS, Bandar Lampung City, Lampung, Indonesia', '2017-03-23', 'Sapon', '1965-07-11', NULL, NULL),
(126, 5, 9, 'Paru', 'Terdiagnosis Klinis', '-5.439612351953195', '105.2603885301636', 'Jl. Drs. Warsito, Kupang Kota, Bandar Lampung City, Lampung, Indonesia', '2017-03-16', 'Sayamah', '1963-02-12', NULL, NULL),
(127, 5, 9, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.4396059201141345', '105.26999585449221', 'Kupang Teba, Bandar Lampung City, Lampung, Indonesia', '2017-03-23', 'Sharoni', '1966-03-05', NULL, NULL),
(128, 5, 9, 'Paru', 'Terdiagnosis Klinis', '-5.440308366111374', '105.26863909629515', 'Gang Delima, Kupang Teba, Bandar Lampung City, Lampung, Indonesia', '2017-01-10', 'Sumiyati', '1969-04-17', NULL, NULL),
(129, 5, 9, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.439178699137927', '105.2711116534424', 'Kupang Teba, Bandar Lampung City, Lampung, Indonesia', '2017-01-07', 'Suwardi', '1964-07-06', NULL, NULL),
(130, 4, 9, 'Paru', 'Terdiagnosis Klinis', '-5.449998298819102', '105.26689133439334', 'Jl. Ikan Bawal, Pesawahan, Bandar Lampung City, Lampung, Indonesia', '2017-01-10', 'Tarmidzi Hamid', '1972-03-12', NULL, NULL),
(131, 5, 9, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.440242172888129', '105.27025912883607', 'Jl. Ms. Batubara, Kupang Teba, Bandar Lampung City, Lampung, Indonesia', '2017-03-19', 'Usman', '1991-12-08', NULL, NULL),
(132, 5, 9, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.438354599999998', '105.2754377', 'Kupang Raya, Bandar Lampung City, Lampung, Indonesia', '2017-02-10', 'Widodo', '1989-08-19', NULL, NULL),
(133, 5, 10, 'Paru', 'Terdiagnosis Klinis', '-5.440776198117039', '105.27058099391786', 'Jl. Mayor Salim Batubara, Kupang Teba, Bandar Lampung City, Lampung, Indonesia', '2017-01-03', 'Aditya naufal Agustin', '2015-03-01', NULL, NULL),
(134, 5, 10, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.428367038560547', '105.25926054418028', 'jl diponegoro Gg. Sawit, Gulak Galik, Bandar Lampung City, Lampung, Indonesia', '2017-02-21', 'Ashari', '1962-02-12', NULL, NULL),
(135, 5, 10, 'Paru', 'Terdiagnosis Klinis', '-5.4285653210748', '105.26722469814763', 'Jl. Dr. Susilo Gg. Pusri 2, Sumur Batu, Bandar Lampung City, Lampung, Indonesia', '2017-02-05', 'Azzahra Asyah', '2007-07-30', NULL, NULL),
(136, 5, 10, 'Paru', 'Terdiagnosis Klinis', '-5.4321684', '105.2520624', 'Gang Sawo V, Pengajaran, Bandar Lampung City, Lampung, Indonesia', '2017-02-25', 'Devina', '1987-02-12', NULL, NULL),
(137, 5, 10, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.433162906358599', '105.26463919444268', 'Jl. Way Handak, Sumur Batu, Bandar Lampung City, Lampung, Indonesia', '2017-03-16', 'Dewi Julelah', '1939-03-12', NULL, NULL),
(138, 5, 10, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.427448846779534', '105.2567850558197', 'Jl. Wahidin Sudirohusodo, Gulak Galik, Bandar Lampung City, Lampung, Indonesia', '2017-02-21', 'Dimas', '1995-02-04', NULL, NULL),
(139, 4, 10, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.444584193489516', '105.27896711349183', 'Jl. Yos Sudarso, Bumi Waras, Bandar Lampung City, Lampung, Indonesia', '2017-01-12', 'Fuadi', '1970-03-12', NULL, NULL),
(140, 5, 10, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.4316837046569475', '105.26426711062845', 'Jl. Dr. Cipto Mangunkusumo, Sumur Batu, Bandar Lampung City, Lampung, Indonesia', '2017-01-28', 'Hamidah', '1962-03-16', NULL, NULL),
(141, 5, 10, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.432736399999999', '105.26442710000003', 'Jl. Way Handak No.16, Sumur Batu, Bandar Lampung City, Lampung, Indonesia', '2017-03-30', 'Masria', '1962-03-23', NULL, NULL),
(142, 5, 10, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.434142399999999', '105.26612469999998', 'Jl. Way Handak No.25, Sumur Batu, Bandar Lampung City, Lampung, Indonesia', '2017-03-23', 'Mira Sumita', '1998-07-17', NULL, NULL),
(143, 5, 10, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.428645426442452', '105.26713886745915', 'Jl. Dr. Susilo Gg. Pusri 2, Sumur Batu, Bandar Lampung City, Lampung, Indonesia', '2017-02-10', 'M said', '1945-12-21', NULL, NULL),
(144, 5, 10, 'Ekstra Paru', 'Terdiagnosis Klinis', '-5.428592022865196', '105.26708522327885', 'Jl. Dr. Susilo Gg. Pusri, Sumur Batu, Bandar Lampung City, Lampung, Indonesia', '2017-03-27', 'Novi yani', '1982-03-12', NULL, NULL),
(145, 5, 10, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.432317', '105.263435', 'Jl. Way Handak, Sumur Batu, Kota Bandar Lampung, Lampung', '2017-03-08', 'Rusini', '1965-02-21', NULL, NULL),
(146, 5, 10, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.437013', '105.254283', 'Jl. Mr. Moch Roem, Sumur Putri, Kota Bandar Lampung, Lampung', '2017-12-01', 'Sakun', '1961-03-21', NULL, NULL),
(147, 5, 10, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.434458', '105.252990', 'Jl. Basuki Rahmat gg Rajawali, Pengajaran, Kota Bandar Lampung, Lampung', '2017-03-28', 'Turmudi', '1947-03-17', NULL, NULL),
(148, 5, 10, 'Paru', 'Terdiagnosis Klinis', '-5.428350', '105.271444', 'Pahoman, Kota Bandar Lampung, Lampung', '2011-08-19', 'Wawan Hermawan', '1976-02-04', NULL, NULL),
(149, 5, 10, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.430862', '105.253900', 'Jl. Wolter Monginsidi gg Cendrawasih, Pengajaran, Kota Bandar Lampung, Lampung', '2017-01-31', 'Yaman', '1957-03-12', NULL, NULL),
(150, 10, 11, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.407147', '105.256959', 'Jl. Rambutan, Pasir Gintung, Kota Bandar Lampung, Lampung', '2017-01-09', 'afaisal', '1969-05-03', NULL, NULL),
(151, 10, 11, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.405448', '105.258216', 'Jl. mangga, Pasir Gintung, Kota Bandar Lampung, Lampung', '2017-02-16', 'a sofian', '1992-02-18', NULL, NULL),
(152, 10, 11, 'Paru', 'Terdiagnosis Klinis', '-5.408035', '105.242516', 'jl sisinga mangaraja, suka jawa, bandar lampung', '2017-01-12', 'Asrofil', '2009-06-12', NULL, NULL),
(153, 10, 11, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.410774', '105.250809', 'Jl. H. Agus Salim Gg. Langgeng, Kelapa Tiga, Kota Bandar Lampung, Lampung', '2017-01-18', 'Dori', '1992-06-18', NULL, NULL),
(154, 10, 11, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.410809', '105.249467', 'Jl. Agus Salim Gg. raja muda, Kelapa Tiga, Kota Bandar Lampung, Lampung', '2017-03-06', 'Ekowijaya', '1984-02-13', NULL, NULL),
(155, 10, 11, 'Ekstra Paru', 'Terdiagnosis Klinis', '-5.412627', '105.243470', 'Jl. H. Agus Salim Gg. Bengkel Kec. Tj. Karang Pusat Kota Bandar Lampung', '2017-03-08', 'Fatimah z', '1991-07-05', NULL, NULL),
(156, 10, 11, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.412200', '105.246561', 'Jl. Agus Salim, Kelapa Tiga, Bandar Lampung, Lampung', '2017-01-12', 'Hartono', '1956-03-08', NULL, NULL),
(157, 10, 11, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.412104', '105.245778', 'Jl. Agus Salim, Kelapa Tiga, Bandar Lampung, Lampung', '2017-01-23', 'Hasan', '2000-06-15', NULL, NULL),
(158, 10, 11, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.411757', '105.246477', 'Jl. Agus Salim, Kelapa Tiga, Bandar Lampung, Lampung', '2017-03-22', 'Jauhari', '1964-07-03', NULL, NULL),
(159, 10, 11, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.406443', '105.256781', 'Jl. Pisang, Pasir Gintung, Kota Bandar Lampung, Lampung', '2017-03-13', 'Kadar', '1926-07-13', NULL, NULL),
(160, 10, 11, 'Paru', 'Terdiagnosis Klinis', '-5.420360', '105.249322', 'Jl. Ratu Dipuncak, Durian Payung, Kota Bandar Lampung, Lampung', '2017-02-01', 'Mahidin', '1955-07-03', NULL, NULL),
(161, 10, 11, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.406716', '105.255189', 'Empang, Pasir Gintung, Kota Bandar Lampung, Lampung', '2017-02-07', 'Masnoni', '1972-04-20', NULL, NULL),
(162, 10, 11, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.412143', '105.247993', 'Jl. Agus Salim, Kelapa Tiga, Bandar Lampung City, Lampung', '2017-01-16', 'Meri P', '1988-03-17', NULL, NULL),
(163, 10, 11, 'Paru', 'Terdiagnosis Klinis', '-5.411811', '105.247551', 'Jl. Agus Salim, Kelapa Tiga, Bandar Lampung City, Lampung', '2017-03-29', 'Nadia d', '1996-04-05', NULL, NULL),
(164, 10, 11, 'Ekstra Paru', 'Terdiagnosis Klinis', '-5.414746', '105.246238', 'Jl. Cut Nyak Dien, Kaliawi, Kota Bandar Lampung, Lampung', '2017-03-17', 'Mulyati', '1972-04-09', NULL, NULL),
(165, 10, 11, 'Paru', 'Terdiagnosis Klinis', '-5.407989', '105.256833', 'Jl. Manggis, Pasir Gintung, Kota Bandar Lampung, Lampung', '2017-01-04', 'Nicander', '2011-05-10', NULL, NULL),
(166, 10, 11, 'Ekstra Paru', 'Terdiagnosis Klinis', '-5.411766', '105.247948', 'Jl. Agus Salim, Kelapa Tiga, Bandar Lampung, Lampung', '2017-03-15', 'Nova', '1995-05-15', NULL, NULL),
(167, 10, 11, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.411649', '105.248390', 'Jl. Agus Salim, Kelapa Tiga, Bandar Lampung, Lampung', '2017-02-13', 'Sampurna', '1939-03-06', NULL, NULL),
(168, 10, 11, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.411685', '105.246504', 'Jl. Agus Salim, Kelapa Tiga, Bandar Lampung, Lampung', '2017-02-03', 'Sutikat', '1964-03-22', NULL, NULL),
(169, 10, 11, 'Paru', 'Terdiagnosis Klinis', '-5.405318', '105.258041', 'Jl. mangga, Pasir Gintung, Kota Bandar Lampung, Lampung', '2017-02-04', 'Sutrisno', '1985-04-23', NULL, NULL),
(170, 10, 11, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.411568', '105.246612', 'Jl. Agus Salim, Kelapa Tiga, Bandar Lampung, Lampung', '2017-03-21', 'Umiyati', '1964-03-10', NULL, NULL),
(171, 10, 12, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.413717293859421', '105.25311209999995', 'Jl. Raden Patah, Kaliawi, Bandar Lampung City, Lampung, Indonesia', '2017-03-06', 'Ali Misri', '1985-06-03', NULL, NULL),
(172, 10, 12, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.4133417504905', '105.2441872674591', 'Kaliawi, Bandar Lampung City, Lampung, Indonesia', '2017-03-27', 'Amriadi', '1961-02-22', NULL, NULL),
(173, 10, 12, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.420788189112567', '105.24175036029669', 'Jl. Chairil Anwar, Durian Payung, Bandar Lampung City, Lampung, Indonesia', '2017-02-25', 'Dewi Safitri', '1989-04-12', NULL, NULL),
(174, 10, 12, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.420553210277289', '105.24359572009894', 'Jl. Chairil Anwar, Durian Payung, Bandar Lampung City, Lampung, Indonesia', '2017-01-09', 'Fabbyola', '1994-03-17', NULL, NULL),
(175, 10, 12, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.415424539115319', '105.24550691429442', 'Kaliawi, Bandar Lampung City, Lampung, Indonesia', '2017-05-01', 'Halima', '1971-02-14', NULL, NULL),
(176, 10, 12, 'Ekstra Paru', 'Terdiagnosis Klinis', '-5.41791095383574', '105.25506668623052', 'Pelita, Bandar Lampung City, Lampung, Indonesia', '2017-02-20', 'Indra Prasetyo Wisnu', '2000-03-08', NULL, NULL),
(177, 10, 12, 'Ekstra Paru', 'Terdiagnosis Klinis', '-5.413459241321846', '105.24640813652343', 'Kaliawi, Bandar Lampung City, Lampung, Indonesia', '2017-03-23', 'Janah', '1981-06-23', NULL, NULL),
(178, 10, 12, 'Paru', 'Pilih Tipe Diagnosa', '-5.417777088052977', '105.24562965948985', 'Gg. Mawar, Durian Payung, Bandar Lampung City, Lampung, Indonesia', '2017-03-06', 'Masjak', '2011-08-19', NULL, NULL),
(179, 10, 12, 'Paru', 'Terdiagnosis Klinis', '-5.414484614880825', '105.24160161796874', 'Kaliawi, Bandar Lampung City, Lampung, Indonesia', '2017-01-17', 'Nasrudin', '1974-04-22', NULL, NULL),
(180, 10, 12, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.41474095799883', '105.24061456505126', 'Kaliawi, Bandar Lampung City, Lampung, Indonesia', '2017-03-06', 'Neni', '1972-06-04', NULL, NULL),
(181, 10, 12, 'Paru', 'Terdiagnosis Klinis', '-5.421165542897537', '105.24876530821234', 'Durian Payung, Bandar Lampung City, Lampung, Indonesia', '2017-03-11', 'Ponisih', '1964-04-23', NULL, NULL),
(182, 10, 12, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.414441891017265', '105.23984208885497', 'Kaliawi, Bandar Lampung City, Lampung, Indonesia', '2017-02-06', 'Sunti', '1965-02-02', NULL, NULL),
(183, 11, 13, 'Paru', 'Terdiagnosis Klinis', '-5.411174994882484', '105.2597390756714', 'Jl. Pemuda, Tanjung Karang, Bandar Lampung City, Lampung, Indonesia', '2017-03-14', 'Ageng Heriyadi', '1998-03-02', NULL, NULL),
(184, 11, 13, 'Paru', 'Terdiagnosis Klinis', '-5.414438180966423', '105.25703110422978', 'Jl. Jend. Suprapto, Tanjung Karang, Bandar Lampung City, Lampung, Indonesia', '2017-02-09', 'Andi Wijaya', '1974-02-12', NULL, NULL),
(185, 11, 13, 'Ekstra Paru', 'Terdiagnosis Klinis', '-5.42178322713843', '105.26329587644341', 'Rawa Laut, Bandar Lampung City, Lampung, Indonesia', '2017-02-17', 'Deasy Ramadanti', '1999-06-22', NULL, NULL),
(186, 11, 13, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.406763848125955', '105.25742784285285', 'Jl. Teuku Umar, Gunung Sari, Bandar Lampung City, Lampung, Indonesia', '2017-01-18', 'Eko Susanto', '1987-02-22', NULL, NULL),
(187, 11, 13, 'Paru', 'Terdiagnosis Klinis', '-5.4144440173065265', '105.25785881342244', 'Jl. Raden Intan, Tanjung Karang, Bandar Lampung City, Lampung, Indonesia', '2017-01-30', 'Jujung', '1937-02-12', NULL, NULL),
(188, 11, 13, 'Paru', 'Terdiagnosis Klinis', '-5.409399074135063', '105.25944333795928', 'Jl. Kota Raja, Gunung Sari, Bandar Lampung City, Lampung, Indonesia', '2017-01-17', 'M Ashraf', '2016-02-04', NULL, NULL),
(189, 11, 13, 'Paru', 'Terdiagnosis Klinis', '-5.409116026102606', '105.25916975263976', 'Jl. Kota Raja, Gunung Sari, Bandar Lampung City, Lampung, Indonesia', '2017-01-24', 'Margianto', '1954-02-13', NULL, NULL),
(190, 11, 13, 'Ekstra Paru', 'Terdiagnosis Klinis', '-5.417898810429126', '105.25753841705773', 'Jl. Raden Intan, Pelita, Bandar Lampung City, Lampung, Indonesia', '2017-03-29', 'Marni Astuti', '1975-02-09', NULL, NULL),
(191, 11, 13, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.41956160906593', '105.2658171529174', 'Rawa Laut, Bandar Lampung City, Lampung, Indonesia', '2019-01-07', 'Melati Anggraini', '1981-02-08', NULL, NULL),
(192, 11, 13, 'Ekstra Paru', 'Terdiagnosis Klinis', '-5.418537478252983', '105.25584938175348', 'Jl. Jend. Suprapto, Pelita, Bandar Lampung City, Lampung, Indonesia', '2017-03-13', 'Nani Anggraini', '2000-06-14', NULL, NULL),
(193, 11, 13, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.415004762275001', '105.2563938701835', 'Jl. Jend. Suprapto gg H tasim II, Pelita, Bandar Lampung City, Lampung, Indonesia', '2017-03-15', 'Rismawati', '1975-03-21', NULL, NULL),
(194, 11, 13, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.416464652112746', '105.25905050304107', 'Jl. Rw. Bengkel, Enggal, Bandar Lampung City, Lampung, Indonesia', '2017-02-27', 'Susanto', '1963-07-02', NULL, NULL),
(195, 12, 14, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.412462772804888', '105.25337132498396', 'Jl. H. Agus Salim gg langgar, Kelapa Tiga, Bandar Lampung City, Lampung, Indonesia', '2017-02-19', 'A Zayadi', '1955-02-12', NULL, NULL),
(196, 12, 14, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.401989302965718', '105.2457688962952', 'Jl. Imam Bonjol Gg. Benda, Gedong Air, Bandar Lampung City, Lampung, Indonesia', '2017-01-31', 'Ara Budiawan', '1987-03-07', NULL, NULL),
(197, 12, 14, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.4074395187428275', '105.24324568598331', 'Jl. Sisingamangaraja, Suka Jawa, Bandar Lampung City, Lampung, Indonesia', '2017-02-10', 'Asnah', '1963-03-02', NULL, NULL),
(198, 12, 14, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.407548999904555', '105.24347367374958', 'Jl. Sisingamangaraja, Suka Jawa, Bandar Lampung City, Lampung, Indonesia', '2017-01-07', 'Ayung', '1956-02-21', NULL, NULL),
(199, 12, 14, 'Paru', 'Terdiagnosis Klinis', '-5.3885362034368605', '105.24884771111454', 'Jl. Panglima Polim Gg. Randu II, Segala Mider, Bandar Lampung City, Lampung, Indonesia', '2017-01-10', 'Bambang S', '1961-02-09', NULL, NULL),
(200, 12, 14, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.405285250982648', '105.2483712362457', 'Jl. Tamin Gg. Balai Desai, Suka Jawa, Bandar Lampung City, Lampung, Indonesia', '2017-02-03', 'Dwi Sakti', '1982-02-03', NULL, NULL),
(201, 12, 14, 'Ekstra Paru', 'Terdiagnosis Klinis', '-5.401717573417156', '105.24486318413085', 'Gedong Air, Tanjungkarang Barat, Bandar Lampung City, Lampung, Indonesia', '2017-01-31', 'Ersa Yuningsih', '1961-02-07', NULL, NULL),
(202, 12, 14, 'Ekstra Paru', 'Terdiagnosis Klinis', '-5.399235524603485', '105.25072596190182', 'Jl. Sam Ratulangi, Gedong Air, Bandar Lampung City, Lampung, Indonesia', '2017-03-25', 'Fehrizal sarif', '1972-03-12', NULL, NULL),
(203, 12, 14, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.388741389219544', '105.2425712675979', 'Jl. Pagar Alam, Segala Mider, Bandar Lampung City, Lampung, Indonesia', '2017-01-04', 'Finalisi', '1986-03-09', NULL, NULL),
(204, 12, 14, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.399118243530154', '105.25671325819701', 'Jl. Dr. Sutomo, Penengahan, Bandar Lampung City, Lampung, Indonesia', '2017-02-08', 'Johariah', '1952-02-12', NULL, NULL),
(208, 7, 18, 'Paru', 'Terkonfirmasi Bakteriologis', '-5.366235447979493', '105.25143229573973', 'Jl. Untung Suropati, Labuhan Ratu, Bandar Lampung City, Lampung, Indonesia', '2017-12-02', 'josh', '1987-02-03', NULL, NULL),
(209, 19, 17, 'Paru', 'Terdiagnosis Klinis', '-5.396713972774889', '105.30993400793454', 'Sukabumi, Bandar Lampung, Bandar Lampung City, Lampung, Indonesia', '2017-08-19', 'jojo', '1987-08-19', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `indeks_rtphbs`
--

CREATE TABLE `indeks_rtphbs` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_kecamatan` int(10) UNSIGNED NOT NULL,
  `tahun` int(11) NOT NULL,
  `jumlah_rtphbs` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `indeks_rtphbs`
--

INSERT INTO `indeks_rtphbs` (`id`, `id_kecamatan`, `tahun`, `jumlah_rtphbs`, `created_at`, `updated_at`) VALUES
(1, 2, 2017, 4842, NULL, NULL),
(2, 3, 2017, 7425, NULL, NULL),
(3, 4, 2017, 4638, NULL, NULL),
(4, 6, 2017, 5520, NULL, NULL),
(5, 7, 2017, 4930, NULL, NULL),
(6, 8, 2017, 4908, NULL, NULL),
(7, 9, 2017, 5203, NULL, NULL),
(8, 5, 2017, 5120, NULL, NULL),
(9, 10, 2017, 5845, NULL, NULL),
(10, 11, 2017, 3705, NULL, NULL),
(11, 12, 2018, 4288, NULL, NULL),
(12, 13, 2017, 6309, NULL, NULL),
(13, 14, 2017, 5130, NULL, NULL),
(14, 1, 2017, 3683, NULL, NULL),
(15, 15, 2017, 4368, NULL, NULL),
(16, 16, 2017, 5400, NULL, NULL),
(17, 17, 2017, 4886, NULL, NULL),
(18, 18, 2017, 5678, NULL, NULL),
(19, 19, 2017, 6652, NULL, NULL),
(20, 20, 2017, 1902, NULL, NULL);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_11_15_121717_create_data_kecamatan_table', 1),
(4, '2019_11_15_121839_create_data_faskes_table', 2),
(5, '2019_11_15_122022_create_indeks_rtphbs_table', 3),
(6, '2019_11_15_123157_create_data_pasien_table', 4),
(7, '2019_11_15_123553_create_riwayat_pasien_table', 5),
(8, '2019_11_15_124221_create_data_kepadatan_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('asticahya74@gmail.com', '$2y$10$NRazcJt2dR2l01HmH.oTyOcztr76By4xytZH0YEb.ybv4E4DxHmBS', '2019-11-24 12:24:38');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_pasien`
--

CREATE TABLE `riwayat_pasien` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_pasien` int(10) UNSIGNED NOT NULL,
  `tahun` int(11) NOT NULL,
  `bulan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_tindakan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `riwayat_pasien`
--

INSERT INTO `riwayat_pasien` (`id`, `id_pasien`, `tahun`, `bulan`, `jenis_tindakan`, `status`, `created_at`, `updated_at`) VALUES
(26, 4, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Tidak Dilakukan', '2019-08-20 17:00:00', NULL),
(27, 4, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-08-20 17:00:00', NULL),
(28, 4, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 5', 'Tidak Dilakukan', '2019-08-20 17:00:00', NULL),
(29, 4, 2017, 'Juni', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-08-20 17:00:00', NULL),
(30, 5, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-08-21 17:00:00', NULL),
(31, 5, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Tidak Dilakukan', '2019-08-21 17:00:00', NULL),
(32, 5, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-08-21 17:00:00', NULL),
(33, 5, 2017, 'Mei', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-08-21 17:00:00', NULL),
(34, 6, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-08-21 17:00:00', NULL),
(35, 6, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-08-21 17:00:00', NULL),
(36, 6, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-08-21 17:00:00', NULL),
(37, 6, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-08-21 17:00:00', NULL),
(38, 6, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-08-21 17:00:00', NULL),
(39, 7, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-08-21 17:00:00', NULL),
(40, 7, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Tidak Dilakukan', '2019-08-21 17:00:00', NULL),
(41, 7, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-08-21 17:00:00', NULL),
(42, 7, 2017, 'Juli', 'Hasil Mikroskopis Bulan Ke 5', 'Positif', '2019-08-21 17:00:00', NULL),
(43, 7, 2017, 'Agustus', 'Hasil Akhir Pengobatan', 'Gagal', '2019-08-21 17:00:00', NULL),
(44, 8, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-08-26 17:00:00', NULL),
(45, 8, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Positif', '2019-08-26 17:00:00', NULL),
(46, 8, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-08-26 17:00:00', NULL),
(47, 8, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-08-26 17:00:00', NULL),
(48, 8, 2017, 'Juni', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-08-26 17:00:00', NULL),
(49, 9, 2017, 'Februari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Tidak Dilakukan', '2019-08-26 17:00:00', NULL),
(50, 9, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 2', 'Tidak Dilakukan', '2019-08-26 17:00:00', NULL),
(51, 9, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-08-26 17:00:00', NULL),
(52, 9, 2017, 'Juni', 'Hasil Mikroskopis Bulan Ke 5', 'Tidak Dilakukan', '2019-08-26 17:00:00', NULL),
(53, 9, 2017, 'Agustus', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-08-26 17:00:00', NULL),
(54, 10, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-08-26 17:00:00', NULL),
(55, 10, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-08-26 17:00:00', NULL),
(56, 10, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-08-26 17:00:00', NULL),
(57, 10, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 5', 'Tidak Dilakukan', '2019-08-26 17:00:00', NULL),
(58, 10, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-08-26 17:00:00', NULL),
(59, 11, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-08-26 17:00:00', NULL),
(60, 11, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-08-26 17:00:00', NULL),
(61, 11, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-08-26 17:00:00', NULL),
(62, 11, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 5', 'Tidak Dilakukan', '2019-08-26 17:00:00', NULL),
(63, 11, 2017, 'Juni', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-08-26 17:00:00', NULL),
(64, 12, 2017, 'Februari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-08-26 17:00:00', NULL),
(65, 12, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 2', 'Positif', '2019-08-26 17:00:00', NULL),
(66, 12, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-08-26 17:00:00', NULL),
(68, 12, 2017, 'Juni', 'Hasil Mikroskopis Bulan Ke 5', 'Tidak Dilakukan', '2019-08-26 17:00:00', NULL),
(69, 12, 2017, 'Agustus', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-08-26 17:00:00', NULL),
(71, 13, 2017, 'Februari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-08-26 17:00:00', NULL),
(72, 13, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 2', 'Positif', '2019-08-26 17:00:00', NULL),
(73, 13, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-08-26 17:00:00', NULL),
(74, 13, 2017, 'Juni', 'Hasil Mikroskopis Bulan Ke 5', 'Tidak Dilakukan', '2019-08-26 17:00:00', NULL),
(75, 13, 2017, 'Agustus', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-08-26 17:00:00', NULL),
(76, 14, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-08-27 17:00:00', NULL),
(77, 14, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-08-27 17:00:00', NULL),
(78, 14, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-08-27 17:00:00', NULL),
(79, 14, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-08-27 17:00:00', NULL),
(80, 14, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-08-27 17:00:00', NULL),
(81, 15, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-08-27 17:00:00', NULL),
(82, 15, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-08-27 17:00:00', NULL),
(83, 15, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-08-27 17:00:00', NULL),
(84, 15, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 5', 'Tidak Dilakukan', '2019-08-27 17:00:00', NULL),
(85, 15, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-08-27 17:00:00', NULL),
(86, 16, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-08-27 17:00:00', NULL),
(87, 16, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-08-27 17:00:00', NULL),
(88, 16, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-08-27 17:00:00', NULL),
(89, 16, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-08-27 17:00:00', NULL),
(90, 16, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-08-27 17:00:00', NULL),
(91, 17, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-08-27 17:00:00', NULL),
(92, 17, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Positif', '2019-08-27 17:00:00', NULL),
(93, 17, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-08-27 17:00:00', NULL),
(94, 17, 2017, 'Juli', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-08-27 17:00:00', NULL),
(95, 17, 2017, 'September', 'Hasil Akhir Pengobatan', 'Gagal', '2019-08-27 17:00:00', NULL),
(96, 18, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Tidak Dilakukan', '2019-08-27 17:00:00', NULL),
(97, 17, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Tidak Dilakukan', '2019-08-27 17:00:00', NULL),
(98, 17, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-08-27 17:00:00', NULL),
(99, 17, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 5', 'Tidak Dilakukan', '2019-08-27 17:00:00', NULL),
(100, 17, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-08-27 17:00:00', NULL),
(101, 19, 2017, 'Februari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Tidak Dilakukan', '2019-08-27 17:00:00', NULL),
(102, 19, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 2', 'Tidak Dilakukan', '2019-08-27 17:00:00', NULL),
(103, 19, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-08-27 17:00:00', NULL),
(104, 19, 2017, 'Juni', 'Hasil Mikroskopis Bulan Ke 5', 'Tidak Dilakukan', '2019-08-27 17:00:00', NULL),
(105, 19, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-08-27 17:00:00', NULL),
(106, 20, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-08-27 17:00:00', NULL),
(107, 20, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Tidak Dilakukan', '2019-08-27 17:00:00', NULL),
(108, 20, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-08-27 17:00:00', NULL),
(109, 20, 2017, 'Juli', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-08-27 17:00:00', NULL),
(110, 20, 2017, 'Agustus', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-08-27 17:00:00', NULL),
(111, 22, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-08-27 17:00:00', NULL),
(112, 22, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-08-27 17:00:00', NULL),
(113, 22, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-08-27 17:00:00', NULL),
(114, 22, 2017, 'Juli', 'Hasil Mikroskopis Bulan Ke 5', 'Tidak Dilakukan', '2019-08-27 17:00:00', NULL),
(115, 22, 2017, 'Agustus', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-08-27 17:00:00', NULL),
(116, 23, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-08-27 17:00:00', NULL),
(117, 23, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-08-27 17:00:00', NULL),
(118, 23, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-08-27 17:00:00', NULL),
(119, 23, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-08-27 17:00:00', NULL),
(120, 23, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-08-27 17:00:00', NULL),
(121, 24, 2017, 'Februari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Tidak Dilakukan', '2019-08-27 17:00:00', NULL),
(122, 24, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 2', 'Tidak Dilakukan', '2019-08-27 17:00:00', NULL),
(123, 24, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-08-27 17:00:00', NULL),
(124, 24, 2017, 'Juni', 'Hasil Mikroskopis Bulan Ke 5', 'Tidak Dilakukan', '2019-08-27 17:00:00', NULL),
(126, 24, 2018, 'Januari', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-08-27 17:00:00', NULL),
(127, 25, 2017, 'Februari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-08-27 17:00:00', NULL),
(128, 25, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 2', 'Tidak Dilakukan', '2019-08-27 17:00:00', NULL),
(129, 25, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-08-27 17:00:00', NULL),
(130, 25, 2017, 'Juni', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-08-27 17:00:00', NULL),
(131, 25, 2018, 'Januari', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-08-27 17:00:00', NULL),
(132, 26, 2017, 'Februari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-08-27 17:00:00', NULL),
(133, 26, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 2', 'Positif', '2019-08-27 17:00:00', NULL),
(134, 26, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-08-27 17:00:00', NULL),
(135, 26, 2017, 'Juni', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-08-27 17:00:00', NULL),
(136, 26, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-08-27 17:00:00', NULL),
(137, 27, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-08-27 17:00:00', NULL),
(138, 27, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-08-27 17:00:00', NULL),
(139, 27, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-08-27 17:00:00', NULL),
(140, 27, 2017, 'Juli', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-08-27 17:00:00', NULL),
(141, 27, 2017, 'September', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-08-27 17:00:00', NULL),
(142, 28, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-08-27 17:00:00', NULL),
(143, 28, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-08-27 17:00:00', NULL),
(144, 28, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-08-27 17:00:00', NULL),
(145, 28, 2017, 'Juli', 'Hasil Mikroskopis Bulan Ke 5', 'Tidak Dilakukan', '2019-08-27 17:00:00', NULL),
(146, 28, 2017, 'Agustus', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-08-27 17:00:00', NULL),
(147, 29, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Tidak Dilakukan', '2019-08-27 17:00:00', NULL),
(148, 29, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Tidak Dilakukan', '2019-08-27 17:00:00', NULL),
(149, 29, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-08-27 17:00:00', NULL),
(150, 29, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 5', 'Tidak Dilakukan', '2019-08-27 17:00:00', NULL),
(151, 29, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-08-27 17:00:00', NULL),
(152, 30, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-08-27 17:00:00', NULL),
(153, 30, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-08-27 17:00:00', NULL),
(154, 30, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-08-27 17:00:00', NULL),
(155, 30, 2017, 'Juli', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-08-27 17:00:00', NULL),
(156, 30, 2017, 'Agustus', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-08-27 17:00:00', NULL),
(157, 31, 2017, 'Februari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-08-27 17:00:00', NULL),
(158, 31, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-08-27 17:00:00', NULL),
(159, 31, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-08-27 17:00:00', NULL),
(160, 31, 2017, 'Juni', 'Hasil Mikroskopis Bulan Ke 5', 'Putus Berobat', '2019-08-27 17:00:00', NULL),
(161, 32, 2017, 'Februari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-08-27 17:00:00', NULL),
(162, 32, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-08-27 17:00:00', NULL),
(163, 32, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-08-27 17:00:00', NULL),
(164, 32, 2017, 'Juni', 'Hasil Mikroskopis Bulan Ke 5', 'Tidak Dilakukan', '2019-08-27 17:00:00', NULL),
(165, 32, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-08-27 17:00:00', NULL),
(170, 34, 2017, 'Februari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-08-27 17:00:00', NULL),
(171, 34, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-08-27 17:00:00', NULL),
(172, 34, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-08-27 17:00:00', NULL),
(173, 34, 2017, 'Juni', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-08-27 17:00:00', NULL),
(174, 34, 2017, 'Agustus', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-08-27 17:00:00', NULL),
(175, 35, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-08-27 17:00:00', NULL),
(176, 35, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-08-27 17:00:00', NULL),
(177, 35, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-08-27 17:00:00', NULL),
(178, 35, 2017, 'Juli', 'Hasil Mikroskopis Bulan Ke 5', 'Tidak Dilakukan', '2019-08-27 17:00:00', NULL),
(179, 35, 2017, 'Oktober', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-08-27 17:00:00', NULL),
(180, 36, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-08-27 17:00:00', NULL),
(181, 36, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-08-27 17:00:00', NULL),
(182, 36, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-08-27 17:00:00', NULL),
(183, 36, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 5', 'Tidak Dilakukan', '2019-08-27 17:00:00', NULL),
(184, 36, 2017, 'September', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-08-27 17:00:00', NULL),
(185, 37, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-08-27 17:00:00', NULL),
(186, 37, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-08-27 17:00:00', NULL),
(187, 37, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-08-27 17:00:00', NULL),
(188, 37, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 5', 'Tidak Dilakukan', '2019-08-27 17:00:00', NULL),
(189, 37, 2017, 'September', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-08-27 17:00:00', NULL),
(190, 38, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-08-27 17:00:00', NULL),
(191, 38, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-08-27 17:00:00', NULL),
(192, 38, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-08-27 17:00:00', NULL),
(193, 38, 2017, 'Juli', 'Hasil Mikroskopis Bulan Ke 5', 'Tidak Dilakukan', '2019-08-27 17:00:00', NULL),
(194, 38, 2017, 'Agustus', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-08-27 17:00:00', NULL),
(195, 39, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-08-27 17:00:00', NULL),
(196, 39, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-08-27 17:00:00', NULL),
(197, 39, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-08-27 17:00:00', NULL),
(198, 39, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 5', 'Tidak Dilakukan', '2019-08-27 17:00:00', NULL),
(199, 39, 2017, 'Juni', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-08-27 17:00:00', NULL),
(200, 40, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-08-27 17:00:00', NULL),
(201, 40, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-08-27 17:00:00', NULL),
(202, 40, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-08-27 17:00:00', NULL),
(203, 40, 2017, 'Juli', 'Hasil Mikroskopis Bulan Ke 5', 'Tidak Dilakukan', '2019-08-27 17:00:00', NULL),
(204, 40, 2017, 'November', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-08-27 17:00:00', NULL),
(205, 41, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-08-27 17:00:00', NULL),
(206, 41, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-08-27 17:00:00', NULL),
(207, 41, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-08-27 17:00:00', NULL),
(208, 41, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 5', 'Tidak Dilakukan', '2019-08-27 17:00:00', NULL),
(209, 41, 2017, 'Juni', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-08-27 17:00:00', NULL),
(210, 43, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-08-28 17:00:00', NULL),
(211, 43, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Positif', '2019-08-28 17:00:00', NULL),
(212, 43, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Negatif', '2019-08-28 17:00:00', NULL),
(213, 43, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-08-28 17:00:00', NULL),
(214, 43, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-08-28 17:00:00', NULL),
(215, 44, 2017, 'Februari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-08-28 17:00:00', NULL),
(216, 44, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-08-28 17:00:00', NULL),
(217, 44, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-08-28 17:00:00', NULL),
(218, 44, 2017, 'Juni', 'Hasil Mikroskopis Bulan Ke 5', 'Tidak Dilakukan', '2019-08-28 17:00:00', NULL),
(219, 44, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-08-28 17:00:00', NULL),
(220, 45, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-08-28 17:00:00', NULL),
(221, 45, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Positif', '2019-08-28 17:00:00', NULL),
(222, 45, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 3', 'Positif', '2019-08-28 17:00:00', NULL),
(223, 45, 2017, 'Juli', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-08-28 17:00:00', NULL),
(224, 45, 2017, 'September', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-08-28 17:00:00', NULL),
(225, 46, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-08-28 17:00:00', NULL),
(226, 46, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-08-28 17:00:00', NULL),
(227, 46, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-08-28 17:00:00', NULL),
(228, 46, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 5', 'Tidak Dilakukan', '2019-08-28 17:00:00', NULL),
(229, 46, 2017, 'Juni', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-08-28 17:00:00', NULL),
(230, 47, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-10-02 17:00:00', NULL),
(231, 47, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Positif', '2019-10-02 17:00:00', NULL),
(232, 47, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 3', 'Negatif', '2019-10-02 17:00:00', NULL),
(233, 47, 2017, 'Juli', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-10-02 17:00:00', NULL),
(234, 47, 2017, 'September', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-10-02 17:00:00', NULL),
(235, 48, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-10-02 17:00:00', NULL),
(236, 48, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-02 17:00:00', NULL),
(237, 48, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-02 17:00:00', NULL),
(238, 48, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-10-02 17:00:00', NULL),
(239, 48, 2017, 'Juni', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-10-02 17:00:00', NULL),
(240, 49, 2017, 'Februari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-10-02 17:00:00', NULL),
(241, 49, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 2', 'Positif', '2019-10-02 17:00:00', NULL),
(242, 49, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 3', 'Negatif', '2019-10-02 17:00:00', NULL),
(243, 49, 2017, 'Juni', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-10-02 17:00:00', NULL),
(244, 49, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-10-02 17:00:00', NULL),
(245, 50, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-10-02 17:00:00', NULL),
(246, 50, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Positif', '2019-10-02 17:00:00', NULL),
(247, 50, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Negatif', '2019-10-02 17:00:00', NULL),
(248, 50, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-10-02 17:00:00', NULL),
(249, 50, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-10-02 17:00:00', NULL),
(250, 51, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-10-02 17:00:00', NULL),
(251, 51, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-02 17:00:00', NULL),
(252, 51, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-02 17:00:00', NULL),
(253, 51, 2017, 'Juli', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-10-02 17:00:00', NULL),
(254, 51, 2017, 'September', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-10-02 17:00:00', NULL),
(255, 52, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-10-02 17:00:00', NULL),
(256, 52, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Positif', '2019-10-02 17:00:00', NULL),
(257, 52, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Negatif', '2019-10-02 17:00:00', NULL),
(258, 52, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-10-02 17:00:00', NULL),
(259, 52, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-10-02 17:00:00', NULL),
(260, 53, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-10-02 17:00:00', NULL),
(261, 53, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Positif', '2019-10-02 17:00:00', NULL),
(262, 53, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-02 17:00:00', NULL),
(263, 53, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-10-02 17:00:00', NULL),
(264, 53, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-10-02 17:00:00', NULL),
(265, 54, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-10-02 17:00:00', NULL),
(266, 54, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Positif', '2019-10-02 17:00:00', NULL),
(267, 54, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-02 17:00:00', NULL),
(268, 54, 2017, 'Juni', 'Hasil Mikroskopis Bulan Ke 5', 'Tidak Dilakukan', '2019-10-02 17:00:00', NULL),
(269, 54, 2017, 'September', 'Hasil Akhir Pengobatan', 'Putus Berobat', '2019-10-02 17:00:00', NULL),
(270, 55, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-10-02 17:00:00', NULL),
(271, 55, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Positif', '2019-10-02 17:00:00', NULL),
(272, 55, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 3', 'Negatif', '2019-10-02 17:00:00', NULL),
(273, 55, 2017, 'Juni', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-10-02 17:00:00', NULL),
(274, 55, 2017, 'Agustus', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-10-02 17:00:00', NULL),
(275, 56, 2017, 'Februari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-10-02 17:00:00', NULL),
(276, 56, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 2', 'Tidak Dilakukan', '2019-10-02 17:00:00', NULL),
(277, 56, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-02 17:00:00', NULL),
(278, 56, 2017, 'Juni', 'Hasil Mikroskopis Bulan Ke 5', 'Tidak Dilakukan', '2019-10-02 17:00:00', NULL),
(279, 56, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-10-02 17:00:00', NULL),
(280, 58, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-10-02 17:00:00', NULL),
(281, 62, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-10-06 17:00:00', NULL),
(282, 62, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Meninggal', '2019-10-06 17:00:00', NULL),
(283, 62, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 3', 'Meninggal', '2019-10-06 17:00:00', NULL),
(284, 62, 2017, 'Juli', 'Hasil Mikroskopis Bulan Ke 5', 'Meninggal', '2019-10-06 17:00:00', NULL),
(285, 58, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-10-06 17:00:00', NULL),
(286, 58, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Tidak Dilakukan', '2019-10-06 17:00:00', NULL),
(287, 58, 2017, 'Juni', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-10-06 17:00:00', NULL),
(288, 58, 2017, 'Agustus', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-10-06 17:00:00', NULL),
(289, 59, 2017, 'Februari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-10-06 17:00:00', NULL),
(290, 59, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 2', 'Tidak Dilakukan', '2019-10-06 17:00:00', NULL),
(291, 59, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-06 17:00:00', NULL),
(292, 59, 2017, 'Juni', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-10-06 17:00:00', NULL),
(293, 59, 2017, 'September', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-10-06 17:00:00', NULL),
(294, 60, 2017, 'Februari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-10-06 17:00:00', NULL),
(295, 60, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 2', 'Tidak Dilakukan', '2019-10-06 17:00:00', NULL),
(296, 60, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-06 17:00:00', NULL),
(297, 60, 2017, 'Juni', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-10-06 17:00:00', NULL),
(298, 60, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Pilih Status', '2019-10-06 17:00:00', NULL),
(299, 61, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-10-06 17:00:00', NULL),
(300, 61, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-06 17:00:00', NULL),
(301, 61, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-06 17:00:00', NULL),
(302, 61, 2017, 'Juli', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-10-06 17:00:00', NULL),
(303, 61, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-10-06 17:00:00', NULL),
(304, 63, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-10-06 17:00:00', NULL),
(305, 63, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-06 17:00:00', NULL),
(306, 63, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-06 17:00:00', NULL),
(307, 63, 2017, 'Juli', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-10-06 17:00:00', NULL),
(308, 63, 2017, 'September', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-10-06 17:00:00', NULL),
(309, 64, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-10-06 17:00:00', NULL),
(310, 64, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-06 17:00:00', NULL),
(311, 64, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-06 17:00:00', NULL),
(312, 64, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-10-06 17:00:00', NULL),
(313, 64, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-10-06 17:00:00', NULL),
(314, 65, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-10-06 17:00:00', NULL),
(315, 65, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-06 17:00:00', NULL),
(316, 65, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-06 17:00:00', NULL),
(317, 65, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-10-06 17:00:00', NULL),
(318, 65, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-10-06 17:00:00', NULL),
(319, 66, 2017, 'Februari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-10-06 17:00:00', NULL),
(320, 66, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 2', 'Meninggal', '2019-10-06 17:00:00', NULL),
(321, 67, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-10-06 17:00:00', NULL),
(322, 67, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-06 17:00:00', NULL),
(323, 67, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-06 17:00:00', NULL),
(324, 67, 2017, 'Juli', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-10-06 17:00:00', NULL),
(325, 67, 2017, 'Agustus', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-10-06 17:00:00', NULL),
(326, 68, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-10-06 17:00:00', NULL),
(327, 68, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-06 17:00:00', NULL),
(328, 68, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-06 17:00:00', NULL),
(329, 68, 2017, 'Juli', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-10-06 17:00:00', NULL),
(330, 68, 2017, 'Agustus', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-10-06 17:00:00', NULL),
(331, 69, 2017, 'Februari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-10-06 17:00:00', NULL),
(332, 69, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-06 17:00:00', NULL),
(333, 69, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-06 17:00:00', NULL),
(334, 69, 2017, 'Juni', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-10-06 17:00:00', NULL),
(335, 69, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-10-06 17:00:00', NULL),
(336, 70, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-10-06 17:00:00', NULL),
(337, 70, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-06 17:00:00', NULL),
(338, 70, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-06 17:00:00', NULL),
(339, 70, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-10-06 17:00:00', NULL),
(340, 70, 2017, 'Juni', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-10-06 17:00:00', NULL),
(341, 72, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-10-06 17:00:00', NULL),
(342, 72, 2017, 'April', 'Hasil Akhir Pengobatan', 'Putus Berobat', '2019-10-06 17:00:00', NULL),
(343, 73, 2017, 'Februari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-10-06 17:00:00', NULL),
(344, 73, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 2', 'Tidak Dilakukan', '2019-10-06 17:00:00', NULL),
(345, 73, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-06 17:00:00', NULL),
(346, 73, 2017, 'Juni', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-10-06 17:00:00', NULL),
(347, 73, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-10-06 17:00:00', NULL),
(348, 74, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-10-06 17:00:00', NULL),
(349, 74, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-06 17:00:00', NULL),
(350, 74, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-06 17:00:00', NULL),
(351, 74, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-10-06 17:00:00', NULL),
(352, 74, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-10-06 17:00:00', NULL),
(353, 75, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-10-06 17:00:00', NULL),
(354, 74, 2017, 'April', 'Hasil Akhir Pengobatan', 'Putus Berobat', '2019-10-06 17:00:00', NULL),
(355, 76, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-10-06 17:00:00', NULL),
(356, 74, 2017, 'Maret', 'Hasil Akhir Pengobatan', 'Meninggal', '2019-10-06 17:00:00', NULL),
(357, 77, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-10-06 17:00:00', NULL),
(358, 77, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-06 17:00:00', NULL),
(359, 77, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-06 17:00:00', NULL),
(360, 77, 2017, 'Juni', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-10-06 17:00:00', NULL),
(361, 77, 2017, 'September', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-10-06 17:00:00', NULL),
(362, 78, 2017, 'Februari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-10-06 17:00:00', NULL),
(363, 78, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-06 17:00:00', NULL),
(364, 78, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-06 17:00:00', NULL),
(365, 78, 2017, 'Juni', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-10-06 17:00:00', NULL),
(366, 78, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-10-06 17:00:00', NULL),
(367, 79, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Tidak Dilakukan', '2019-10-13 17:00:00', NULL),
(368, 79, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Tidak Dilakukan', '2019-10-13 17:00:00', NULL),
(369, 79, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-13 17:00:00', NULL),
(370, 79, 2017, 'Juli', 'Hasil Mikroskopis Bulan Ke 5', 'Tidak Dilakukan', '2019-10-13 17:00:00', NULL),
(371, 79, 2017, 'September', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-10-13 17:00:00', NULL),
(372, 80, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-10-13 17:00:00', NULL),
(373, 80, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-13 17:00:00', NULL),
(374, 80, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-21 17:00:00', NULL),
(375, 80, 2017, 'Juli', 'Hasil Mikroskopis Bulan Ke 5', 'Tidak Dilakukan', '2019-10-21 17:00:00', NULL),
(376, 80, 2017, 'Agustus', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-10-21 17:00:00', NULL),
(377, 81, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-10-21 17:00:00', NULL),
(378, 81, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-21 17:00:00', NULL),
(379, 81, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-21 17:00:00', NULL),
(380, 81, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-10-21 17:00:00', NULL),
(381, 81, 2017, 'Oktober', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-10-21 17:00:00', NULL),
(382, 82, 2017, 'Februari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-10-21 17:00:00', NULL),
(383, 82, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-21 17:00:00', NULL),
(384, 82, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-21 17:00:00', NULL),
(385, 82, 2017, 'Juni', 'Hasil Mikroskopis Bulan Ke 5', 'Positif', '2019-10-21 17:00:00', NULL),
(386, 82, 2017, 'Juni', 'Hasil Akhir Pengobatan', 'Gagal', '2019-10-21 17:00:00', NULL),
(387, 83, 2017, 'Februari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-10-21 17:00:00', NULL),
(388, 83, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-21 17:00:00', NULL),
(389, 83, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-21 17:00:00', NULL),
(390, 83, 2017, 'Juni', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-10-21 17:00:00', NULL),
(391, 83, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-10-21 17:00:00', NULL),
(392, 84, 2017, 'Februari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-10-21 17:00:00', NULL),
(393, 84, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-21 17:00:00', NULL),
(394, 84, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-21 17:00:00', NULL),
(395, 84, 2017, 'Juni', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-10-21 17:00:00', NULL),
(396, 84, 2017, 'Agustus', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-10-21 17:00:00', NULL),
(397, 85, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-10-21 17:00:00', NULL),
(398, 85, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-22 17:00:00', NULL),
(399, 85, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-22 17:00:00', NULL),
(400, 85, 2017, 'Juli', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-10-22 17:00:00', NULL),
(401, 85, 2017, 'September', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-10-22 17:00:00', NULL),
(402, 87, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-10-22 17:00:00', NULL),
(403, 87, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-22 17:00:00', NULL),
(404, 87, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-22 17:00:00', NULL),
(405, 87, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-10-22 17:00:00', NULL),
(406, 87, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-10-22 17:00:00', NULL),
(407, 88, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-10-22 17:00:00', NULL),
(408, 88, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-22 17:00:00', NULL),
(409, 88, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-22 17:00:00', NULL),
(410, 88, 2017, 'Juni', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-10-22 17:00:00', NULL),
(411, 88, 2017, 'September', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-10-22 17:00:00', NULL),
(412, 89, 2017, 'Februari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-10-22 17:00:00', NULL),
(413, 89, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-22 17:00:00', NULL),
(414, 89, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-22 17:00:00', NULL),
(415, 89, 2017, 'Juni', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-10-22 17:00:00', NULL),
(416, 89, 2017, 'Agustus', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-10-22 17:00:00', NULL),
(417, 90, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-10-22 17:00:00', NULL),
(418, 90, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-22 17:00:00', NULL),
(419, 90, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-22 17:00:00', NULL),
(420, 90, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-10-22 17:00:00', NULL),
(421, 90, 2017, 'Juni', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-10-22 17:00:00', NULL),
(422, 91, 2017, 'Februari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-10-22 17:00:00', NULL),
(423, 91, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-22 17:00:00', NULL),
(424, 91, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-22 17:00:00', NULL),
(425, 91, 2017, 'Juni', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-10-22 17:00:00', NULL),
(426, 91, 2017, 'Agustus', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-10-22 17:00:00', NULL),
(427, 92, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-10-22 17:00:00', NULL),
(428, 92, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-22 17:00:00', NULL),
(429, 92, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-22 17:00:00', NULL),
(430, 92, 2017, 'Juli', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-10-22 17:00:00', NULL),
(431, 92, 2017, 'September', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-10-22 17:00:00', NULL),
(432, 93, 2017, 'Februari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-10-22 17:00:00', NULL),
(433, 93, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-22 17:00:00', NULL),
(434, 93, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-22 17:00:00', NULL),
(435, 93, 2017, 'Juni', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-10-22 17:00:00', NULL),
(436, 93, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-10-22 17:00:00', NULL),
(437, 94, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-10-22 17:00:00', NULL),
(438, 94, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-22 17:00:00', NULL),
(439, 94, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-22 17:00:00', NULL),
(440, 94, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-10-22 17:00:00', NULL),
(441, 94, 2017, 'Juni', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-10-22 17:00:00', NULL),
(442, 95, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-10-22 17:00:00', NULL),
(443, 95, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-22 17:00:00', NULL),
(444, 95, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-22 17:00:00', NULL),
(445, 95, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-10-22 17:00:00', NULL),
(446, 95, 2017, 'Juni', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-10-22 17:00:00', NULL),
(447, 96, 2017, 'Februari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-10-22 17:00:00', NULL),
(448, 96, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-22 17:00:00', NULL),
(449, 96, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-22 17:00:00', NULL),
(450, 96, 2017, 'Juni', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-10-22 17:00:00', NULL),
(451, 96, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-10-22 17:00:00', NULL),
(452, 97, 2017, 'Februari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-10-26 17:00:00', NULL),
(453, 97, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-26 17:00:00', NULL),
(454, 97, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-26 17:00:00', NULL),
(455, 97, 2017, 'Juni', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-10-26 17:00:00', NULL),
(456, 97, 2017, 'Agustus', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-10-26 17:00:00', NULL),
(457, 98, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-10-26 17:00:00', NULL),
(458, 98, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-26 17:00:00', NULL),
(459, 98, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-26 17:00:00', NULL),
(460, 98, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-10-26 17:00:00', NULL),
(461, 98, 2017, 'Juni', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-10-26 17:00:00', NULL),
(462, 99, 2017, 'Februari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-10-26 17:00:00', NULL),
(463, 99, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-26 17:00:00', NULL),
(464, 99, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-26 17:00:00', NULL),
(465, 99, 2017, 'Juni', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-10-26 17:00:00', NULL),
(466, 99, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-10-26 17:00:00', NULL),
(467, 100, 2017, 'Januari', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-10-26 17:00:00', NULL),
(468, 101, 2017, 'Februari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-10-26 17:00:00', NULL),
(469, 101, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-26 17:00:00', NULL),
(470, 101, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 3', 'Negatif', '2019-10-26 17:00:00', NULL),
(471, 101, 2017, 'Juni', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-10-26 17:00:00', NULL),
(472, 101, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-10-26 17:00:00', NULL),
(473, 102, 2017, 'Februari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-10-26 17:00:00', NULL),
(474, 102, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-26 17:00:00', NULL),
(475, 102, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-26 17:00:00', NULL),
(476, 102, 2017, 'Juni', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-10-26 17:00:00', NULL),
(477, 102, 2017, 'Agustus', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-10-26 17:00:00', NULL),
(478, 103, 2017, 'Februari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-10-26 17:00:00', NULL),
(479, 103, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-26 17:00:00', NULL),
(480, 103, 2017, 'April', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-10-26 17:00:00', NULL),
(481, 104, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-10-26 17:00:00', NULL),
(482, 104, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Positif', '2019-10-26 17:00:00', NULL),
(483, 104, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-26 17:00:00', NULL),
(484, 104, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 5', 'Tidak Dilakukan', '2019-10-26 17:00:00', NULL),
(485, 104, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Gagal', '2019-10-26 17:00:00', NULL),
(486, 105, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-10-26 17:00:00', NULL),
(487, 105, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-26 17:00:00', NULL),
(488, 105, 2017, 'Mei', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-10-26 17:00:00', NULL),
(489, 106, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-10-26 17:00:00', NULL),
(490, 106, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Meninggal', '2019-10-26 17:00:00', NULL),
(491, 107, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-10-26 17:00:00', NULL),
(492, 107, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Tidak Dilakukan', '2019-10-26 17:00:00', NULL),
(493, 107, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-26 17:00:00', NULL),
(494, 107, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 5', 'Tidak Dilakukan', '2019-10-26 17:00:00', NULL),
(495, 107, 2017, 'September', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-10-26 17:00:00', NULL),
(496, 108, 2017, 'Februari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-10-26 17:00:00', NULL),
(497, 108, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-26 17:00:00', NULL),
(498, 108, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-26 17:00:00', NULL),
(499, 108, 2017, 'Juni', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-10-26 17:00:00', NULL),
(500, 108, 2017, 'Agustus', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-10-26 17:00:00', NULL),
(501, 109, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-10-26 17:00:00', NULL),
(502, 109, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-26 17:00:00', NULL),
(503, 109, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-26 17:00:00', NULL),
(504, 109, 2017, 'Juni', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-10-26 17:00:00', NULL),
(505, 109, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-10-26 17:00:00', NULL),
(506, 110, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Tidak Dilakukan', '2019-10-26 17:00:00', NULL),
(507, 110, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Tidak Dilakukan', '2019-10-26 17:00:00', NULL),
(508, 110, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-26 17:00:00', NULL),
(509, 110, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 5', 'Tidak Dilakukan', '2019-10-26 17:00:00', NULL),
(510, 110, 2017, 'Agustus', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-10-26 17:00:00', NULL),
(511, 111, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Tidak Dilakukan', '2019-10-26 17:00:00', NULL),
(512, 111, 2017, 'Februari', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-10-26 17:00:00', NULL),
(513, 112, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Tidak Dilakukan', '2019-10-26 17:00:00', NULL),
(514, 112, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Tidak Dilakukan', '2019-10-26 17:00:00', NULL),
(515, 112, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-26 17:00:00', NULL),
(516, 112, 2017, 'Juli', 'Hasil Mikroskopis Bulan Ke 5', 'Tidak Dilakukan', '2019-10-26 17:00:00', NULL),
(517, 112, 2017, 'September', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-10-26 17:00:00', NULL),
(518, 113, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Tidak Dilakukan', '2019-10-26 17:00:00', NULL),
(519, 113, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Tidak Dilakukan', '2019-10-26 17:00:00', NULL),
(520, 113, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-26 17:00:00', NULL),
(521, 113, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 5', 'Pengobatan', '2019-10-26 17:00:00', NULL),
(522, 113, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-10-26 17:00:00', NULL),
(523, 114, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Tidak Dilakukan', '2019-10-26 17:00:00', NULL),
(524, 114, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Tidak Dilakukan', '2019-10-26 17:00:00', NULL),
(525, 114, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-26 17:00:00', NULL),
(526, 114, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 5', 'Tidak Dilakukan', '2019-10-26 17:00:00', NULL),
(527, 114, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-10-26 17:00:00', NULL),
(528, 115, 2017, 'Februari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-10-26 17:00:00', NULL);
INSERT INTO `riwayat_pasien` (`id`, `id_pasien`, `tahun`, `bulan`, `jenis_tindakan`, `status`, `created_at`, `updated_at`) VALUES
(529, 115, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-26 17:00:00', NULL),
(530, 115, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-26 17:00:00', NULL),
(531, 115, 2017, 'Juni', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-10-26 17:00:00', NULL),
(533, 115, 2017, 'Agustus', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-10-28 17:00:00', NULL),
(534, 116, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-10-28 17:00:00', NULL),
(535, 116, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-28 17:00:00', NULL),
(536, 116, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-28 17:00:00', NULL),
(537, 116, 2017, 'Juli', 'Hasil Mikroskopis Bulan Ke 5', 'Tidak Dilakukan', '2019-10-28 17:00:00', NULL),
(538, 116, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-10-28 17:00:00', NULL),
(539, 117, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-10-28 17:00:00', NULL),
(540, 117, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-28 17:00:00', NULL),
(541, 117, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-28 17:00:00', NULL),
(542, 117, 2017, 'Juli', 'Hasil Mikroskopis Bulan Ke 5', 'Tidak Dilakukan', '2019-10-28 17:00:00', NULL),
(543, 117, 2017, 'September', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-10-28 17:00:00', NULL),
(544, 118, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-10-28 17:00:00', NULL),
(545, 118, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-28 17:00:00', NULL),
(546, 118, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-28 17:00:00', NULL),
(547, 118, 2017, 'Juli', 'Hasil Mikroskopis Bulan Ke 5', 'Tidak Dilakukan', '2019-10-28 17:00:00', NULL),
(548, 118, 2017, 'Agustus', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-10-28 17:00:00', NULL),
(549, 119, 2017, 'Februari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-10-28 17:00:00', NULL),
(550, 119, 2017, 'Maret', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-10-28 17:00:00', NULL),
(551, 120, 2017, 'Februari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-10-28 17:00:00', NULL),
(552, 120, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-28 17:00:00', NULL),
(553, 120, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-28 17:00:00', NULL),
(554, 120, 2017, 'Juni', 'Hasil Mikroskopis Bulan Ke 5', 'Tidak Dilakukan', '2019-10-28 17:00:00', NULL),
(555, 120, 2017, 'Agustus', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-10-28 17:00:00', NULL),
(556, 121, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-10-28 17:00:00', NULL),
(557, 121, 2017, 'Februari', 'Hasil Akhir Pengobatan', 'Putus Berobat', '2019-10-28 17:00:00', NULL),
(558, 122, 2017, 'Februari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Tidak Dilakukan', '2019-10-28 17:00:00', NULL),
(559, 122, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 2', 'Tidak Dilakukan', '2019-10-28 17:00:00', NULL),
(560, 122, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-28 17:00:00', NULL),
(561, 122, 2017, 'Juni', 'Hasil Mikroskopis Bulan Ke 5', 'Tidak Dilakukan', '2019-10-28 17:00:00', NULL),
(562, 122, 2017, 'Agustus', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-10-28 17:00:00', NULL),
(563, 123, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-10-31 17:00:00', NULL),
(564, 123, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-31 17:00:00', NULL),
(565, 123, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-31 17:00:00', NULL),
(566, 123, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-10-31 17:00:00', NULL),
(567, 123, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-10-31 17:00:00', NULL),
(568, 124, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-10-31 17:00:00', NULL),
(569, 124, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-31 17:00:00', NULL),
(570, 124, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-31 17:00:00', NULL),
(571, 124, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-10-31 17:00:00', NULL),
(572, 124, 2017, 'Juni', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-10-31 17:00:00', NULL),
(573, 125, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-10-31 17:00:00', NULL),
(574, 125, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-31 17:00:00', NULL),
(575, 125, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-31 17:00:00', NULL),
(576, 125, 2017, 'Juli', 'Hasil Mikroskopis Bulan Ke 5', 'Tidak Dilakukan', '2019-10-31 17:00:00', NULL),
(577, 125, 2017, 'September', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-10-31 17:00:00', NULL),
(578, 126, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-10-31 17:00:00', NULL),
(579, 126, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-31 17:00:00', NULL),
(580, 126, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-31 17:00:00', NULL),
(581, 126, 2017, 'Juli', 'Hasil Mikroskopis Bulan Ke 5', 'Tidak Dilakukan', '2019-10-31 17:00:00', NULL),
(582, 126, 2017, 'September', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-10-31 17:00:00', NULL),
(583, 127, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-10-31 17:00:00', NULL),
(584, 127, 2017, 'April', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-10-31 17:00:00', NULL),
(585, 128, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-10-31 17:00:00', NULL),
(586, 128, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-31 17:00:00', NULL),
(587, 128, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-31 17:00:00', NULL),
(588, 128, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 5', 'Tidak Dilakukan', '2019-10-31 17:00:00', NULL),
(589, 128, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-10-31 17:00:00', NULL),
(590, 129, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-10-31 17:00:00', NULL),
(591, 129, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-31 17:00:00', NULL),
(592, 129, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-31 17:00:00', NULL),
(593, 129, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 5', 'Tidak Dilakukan', '2019-10-31 17:00:00', NULL),
(594, 129, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-10-31 17:00:00', NULL),
(595, 130, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-10-31 17:00:00', NULL),
(596, 130, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-31 17:00:00', NULL),
(597, 130, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-31 17:00:00', NULL),
(598, 130, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 5', 'Tidak Dilakukan', '2019-10-31 17:00:00', NULL),
(599, 130, 2017, 'Agustus', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-10-31 17:00:00', NULL),
(600, 131, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-10-31 17:00:00', NULL),
(601, 131, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-31 17:00:00', NULL),
(602, 131, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-31 17:00:00', NULL),
(603, 131, 2017, 'Juli', 'Hasil Mikroskopis Bulan Ke 5', 'Tidak Dilakukan', '2019-10-31 17:00:00', NULL),
(604, 131, 2017, 'September', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-10-31 17:00:00', NULL),
(605, 132, 2017, 'Februari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-10-31 17:00:00', NULL),
(606, 132, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-31 17:00:00', NULL),
(608, 132, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-31 17:00:00', NULL),
(609, 132, 2017, 'Juni', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-10-31 17:00:00', NULL),
(610, 132, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Putus Berobat', '2019-10-31 17:00:00', NULL),
(611, 133, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Tidak Dilakukan', '2019-10-31 17:00:00', NULL),
(612, 133, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Tidak Dilakukan', '2019-10-31 17:00:00', NULL),
(613, 133, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-31 17:00:00', NULL),
(614, 133, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 5', 'Tidak Dilakukan', '2019-10-31 17:00:00', NULL),
(615, 133, 2017, 'Juni', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-10-31 17:00:00', NULL),
(616, 134, 2017, 'Februari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-10-31 17:00:00', NULL),
(617, 134, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-31 17:00:00', NULL),
(618, 134, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-31 17:00:00', NULL),
(619, 134, 2017, 'Juni', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-10-31 17:00:00', NULL),
(620, 134, 2017, 'Oktober', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-10-31 17:00:00', NULL),
(621, 135, 2017, 'Februari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Tidak Dilakukan', '2019-10-31 17:00:00', NULL),
(622, 135, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 2', 'Tidak Dilakukan', '2019-10-31 17:00:00', NULL),
(623, 135, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-31 17:00:00', NULL),
(624, 135, 2017, 'Juni', 'Hasil Mikroskopis Bulan Ke 5', 'Tidak Dilakukan', '2019-10-31 17:00:00', NULL),
(625, 135, 2017, 'Juni', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-10-31 17:00:00', NULL),
(626, 136, 2017, 'Februari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-10-31 17:00:00', NULL),
(627, 136, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-31 17:00:00', NULL),
(628, 136, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-31 17:00:00', NULL),
(629, 136, 2017, 'Juni', 'Hasil Mikroskopis Bulan Ke 5', 'Tidak Dilakukan', '2019-10-31 17:00:00', NULL),
(630, 136, 2017, 'Agustus', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-10-31 17:00:00', NULL),
(631, 137, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-10-31 17:00:00', NULL),
(632, 137, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-31 17:00:00', NULL),
(633, 137, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-31 17:00:00', NULL),
(634, 137, 2017, 'Juli', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-10-31 17:00:00', NULL),
(635, 137, 2017, 'Oktober', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-10-31 17:00:00', NULL),
(636, 138, 2017, 'Februari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-10-31 17:00:00', NULL),
(637, 138, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-31 17:00:00', NULL),
(638, 137, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-31 17:00:00', NULL),
(639, 138, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-31 17:00:00', NULL),
(640, 138, 2017, 'Juni', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-10-31 17:00:00', NULL),
(641, 138, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-10-31 17:00:00', NULL),
(642, 139, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-10-31 17:00:00', NULL),
(643, 139, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-31 17:00:00', NULL),
(644, 139, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-31 17:00:00', NULL),
(645, 139, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-10-31 17:00:00', NULL),
(646, 139, 2017, 'Juni', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-10-31 17:00:00', NULL),
(647, 140, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-10-31 17:00:00', NULL),
(648, 140, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-31 17:00:00', NULL),
(649, 140, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-31 17:00:00', NULL),
(650, 140, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-10-31 17:00:00', NULL),
(651, 140, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-10-31 17:00:00', NULL),
(652, 141, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-10-31 17:00:00', NULL),
(653, 141, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-31 17:00:00', NULL),
(654, 141, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-31 17:00:00', NULL),
(655, 141, 2017, 'Juli', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-10-31 17:00:00', NULL),
(656, 141, 2017, 'Agustus', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-10-31 17:00:00', NULL),
(657, 142, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-10-31 17:00:00', NULL),
(658, 142, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-31 17:00:00', NULL),
(659, 142, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-31 17:00:00', NULL),
(660, 142, 2017, 'Juli', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-10-31 17:00:00', NULL),
(661, 142, 2017, 'Agustus', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-10-31 17:00:00', NULL),
(662, 143, 2017, 'Februari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-10-31 17:00:00', NULL),
(663, 143, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-10-31 17:00:00', NULL),
(664, 143, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-31 17:00:00', NULL),
(665, 143, 2017, 'Juni', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-10-31 17:00:00', NULL),
(666, 143, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-10-31 17:00:00', NULL),
(667, 144, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Tidak Dilakukan', '2019-10-31 17:00:00', NULL),
(668, 144, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Tidak Dilakukan', '2019-10-31 17:00:00', NULL),
(669, 144, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-10-31 17:00:00', NULL),
(670, 144, 2017, 'Juni', 'Hasil Mikroskopis Bulan Ke 5', 'Tidak Dilakukan', '2019-10-31 17:00:00', NULL),
(671, 144, 2017, 'Agustus', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-10-31 17:00:00', NULL),
(672, 145, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-11-02 17:00:00', NULL),
(673, 145, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-11-02 17:00:00', NULL),
(674, 145, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-11-02 17:00:00', NULL),
(675, 145, 2017, 'Juli', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-11-02 17:00:00', NULL),
(676, 145, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-11-02 17:00:00', NULL),
(677, 146, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-11-02 17:00:00', NULL),
(678, 146, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-11-02 17:00:00', NULL),
(679, 146, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-11-02 17:00:00', NULL),
(680, 146, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-11-02 17:00:00', NULL),
(681, 146, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-11-02 17:00:00', NULL),
(682, 147, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-11-02 17:00:00', NULL),
(683, 147, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-11-02 17:00:00', NULL),
(684, 147, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-11-02 17:00:00', NULL),
(685, 147, 2017, 'Juli', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-11-02 17:00:00', NULL),
(686, 147, 2017, 'Agustus', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-11-02 17:00:00', NULL),
(687, 148, 2017, 'Maret', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-11-02 17:00:00', NULL),
(688, 149, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-11-02 17:00:00', NULL),
(689, 149, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-11-02 17:00:00', NULL),
(690, 149, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-11-02 17:00:00', NULL),
(691, 149, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-11-02 17:00:00', NULL),
(692, 149, 2017, 'Oktober', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-11-02 17:00:00', NULL),
(693, 150, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-11-02 17:00:00', NULL),
(694, 150, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-11-02 17:00:00', NULL),
(695, 150, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-11-02 17:00:00', NULL),
(696, 150, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-11-02 17:00:00', NULL),
(697, 150, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-11-02 17:00:00', NULL),
(698, 151, 2017, 'Februari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-11-02 17:00:00', NULL),
(699, 151, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-11-02 17:00:00', NULL),
(700, 151, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-11-02 17:00:00', NULL),
(701, 151, 2017, 'Juni', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-11-02 17:00:00', NULL),
(702, 151, 2017, 'Agustus', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-11-02 17:00:00', NULL),
(703, 152, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Tidak Dilakukan', '2019-11-02 17:00:00', NULL),
(704, 152, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Tidak Dilakukan', '2019-11-02 17:00:00', NULL),
(705, 152, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-11-02 17:00:00', NULL),
(706, 152, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 5', 'Tidak Dilakukan', '2019-11-02 17:00:00', NULL),
(707, 152, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-11-02 17:00:00', NULL),
(708, 153, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-11-02 17:00:00', NULL),
(709, 153, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-11-02 17:00:00', NULL),
(710, 153, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-11-02 17:00:00', NULL),
(711, 153, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-11-02 17:00:00', NULL),
(712, 153, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-11-02 17:00:00', NULL),
(713, 154, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-11-02 17:00:00', NULL),
(714, 154, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-11-02 17:00:00', NULL),
(715, 154, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-11-02 17:00:00', NULL),
(716, 154, 2017, 'Juli', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-11-02 17:00:00', NULL),
(717, 154, 2017, 'September', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-11-02 17:00:00', NULL),
(718, 155, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Tidak Dilakukan', '2019-11-02 17:00:00', NULL),
(719, 155, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Tidak Dilakukan', '2019-11-02 17:00:00', NULL),
(720, 155, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-11-02 17:00:00', NULL),
(721, 155, 2017, 'Juli', 'Hasil Mikroskopis Bulan Ke 5', 'Tidak Dilakukan', '2019-11-02 17:00:00', NULL),
(722, 155, 2017, 'September', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-11-02 17:00:00', NULL),
(723, 156, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-11-02 17:00:00', NULL),
(724, 156, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-11-02 17:00:00', NULL),
(725, 156, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-11-02 17:00:00', NULL),
(726, 156, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-11-02 17:00:00', NULL),
(727, 156, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-11-02 17:00:00', NULL),
(728, 157, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-11-02 17:00:00', NULL),
(729, 157, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-11-02 17:00:00', NULL),
(730, 157, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-11-02 17:00:00', NULL),
(731, 157, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-11-02 17:00:00', NULL),
(732, 157, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-11-02 17:00:00', NULL),
(733, 158, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-11-02 17:00:00', NULL),
(734, 158, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-11-02 17:00:00', NULL),
(735, 158, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-11-02 17:00:00', NULL),
(736, 158, 2017, 'Juli', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-11-02 17:00:00', NULL),
(737, 158, 2017, 'September', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-11-02 17:00:00', NULL),
(738, 159, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-11-02 17:00:00', NULL),
(739, 159, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-11-02 17:00:00', NULL),
(740, 159, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-11-02 17:00:00', NULL),
(741, 159, 2017, 'Juli', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-11-02 17:00:00', NULL),
(742, 159, 2017, 'September', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-11-02 17:00:00', NULL),
(743, 160, 2017, 'Februari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-11-02 17:00:00', NULL),
(744, 160, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-11-02 17:00:00', NULL),
(745, 160, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-11-02 17:00:00', NULL),
(746, 160, 2017, 'Juni', 'Hasil Mikroskopis Bulan Ke 5', 'Tidak Dilakukan', '2019-11-02 17:00:00', NULL),
(747, 160, 2017, 'Agustus', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-11-02 17:00:00', NULL),
(749, 162, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-11-02 17:00:00', NULL),
(750, 162, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-11-02 17:00:00', NULL),
(751, 162, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-11-02 17:00:00', NULL),
(752, 162, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-11-02 17:00:00', NULL),
(753, 162, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-11-02 17:00:00', NULL),
(754, 161, 2017, 'Februari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-11-02 17:00:00', NULL),
(755, 161, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-11-02 17:00:00', NULL),
(756, 161, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-11-02 17:00:00', NULL),
(757, 161, 2017, 'Juni', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-11-02 17:00:00', NULL),
(758, 161, 2017, 'Agustus', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-11-02 17:00:00', NULL),
(759, 164, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Tidak Dilakukan', '2019-11-02 17:00:00', NULL),
(760, 164, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Tidak Dilakukan', '2019-11-02 17:00:00', NULL),
(761, 164, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-11-02 17:00:00', NULL),
(762, 164, 2017, 'Juli', 'Hasil Mikroskopis Bulan Ke 5', 'Tidak Dilakukan', '2019-11-02 17:00:00', NULL),
(763, 164, 2017, 'September', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-11-02 17:00:00', NULL),
(764, 163, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-11-02 17:00:00', NULL),
(765, 163, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-11-02 17:00:00', NULL),
(766, 163, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-11-02 17:00:00', NULL),
(767, 163, 2017, 'Juli', 'Hasil Mikroskopis Bulan Ke 5', 'Tidak Dilakukan', '2019-11-02 17:00:00', NULL),
(768, 163, 2017, 'September', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-11-02 17:00:00', NULL),
(769, 165, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Tidak Dilakukan', '2019-11-02 17:00:00', NULL),
(770, 165, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Tidak Dilakukan', '2019-11-02 17:00:00', NULL),
(771, 165, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-11-02 17:00:00', NULL),
(772, 165, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 5', 'Tidak Dilakukan', '2019-11-02 17:00:00', NULL),
(773, 165, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-11-02 17:00:00', NULL),
(774, 166, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Tidak Dilakukan', '2019-11-02 17:00:00', NULL),
(775, 166, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Tidak Dilakukan', '2019-11-02 17:00:00', NULL),
(776, 166, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-11-02 17:00:00', NULL),
(777, 166, 2017, 'Juli', 'Hasil Mikroskopis Bulan Ke 5', 'Tidak Dilakukan', '2019-11-02 17:00:00', NULL),
(778, 166, 2017, 'September', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-11-02 17:00:00', NULL),
(779, 167, 2017, 'Februari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-11-02 17:00:00', NULL),
(780, 167, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-11-02 17:00:00', NULL),
(781, 167, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-11-02 17:00:00', NULL),
(782, 167, 2017, 'Juni', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-11-02 17:00:00', NULL),
(783, 167, 2017, 'Agustus', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-11-02 17:00:00', NULL),
(784, 168, 2017, 'Februari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-11-02 17:00:00', NULL),
(785, 168, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-11-02 17:00:00', NULL),
(786, 168, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-11-02 17:00:00', NULL),
(787, 168, 2017, 'Juni', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-11-02 17:00:00', NULL),
(788, 168, 2017, 'Agustus', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-11-02 17:00:00', NULL),
(789, 169, 2017, 'Februari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-11-02 17:00:00', NULL),
(790, 169, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-11-02 17:00:00', NULL),
(791, 169, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-11-02 17:00:00', NULL),
(792, 169, 2017, 'Juni', 'Hasil Mikroskopis Bulan Ke 5', 'Tidak Dilakukan', '2019-11-02 17:00:00', NULL),
(793, 169, 2017, 'Agustus', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-11-02 17:00:00', NULL),
(794, 170, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-11-02 17:00:00', NULL),
(795, 170, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-11-02 17:00:00', NULL),
(796, 170, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-11-02 17:00:00', NULL),
(797, 170, 2017, 'Juli', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-11-02 17:00:00', NULL),
(798, 170, 2017, 'September', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-11-02 17:00:00', NULL),
(799, 171, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-11-07 17:00:00', NULL),
(800, 171, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-11-07 17:00:00', NULL),
(801, 171, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-11-07 17:00:00', NULL),
(802, 171, 2017, 'Juli', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-11-07 17:00:00', NULL),
(803, 171, 2017, 'Agustus', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-11-07 17:00:00', NULL),
(804, 172, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-11-07 17:00:00', NULL),
(805, 172, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-11-07 17:00:00', NULL),
(806, 172, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-11-07 17:00:00', NULL),
(807, 172, 2017, 'Juli', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-11-07 17:00:00', NULL),
(808, 172, 2017, 'Oktober', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-11-07 17:00:00', NULL),
(809, 173, 2017, 'Februari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-11-07 17:00:00', NULL),
(810, 173, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-11-07 17:00:00', NULL),
(811, 173, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-11-07 17:00:00', NULL),
(812, 173, 2017, 'Mei', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-11-07 17:00:00', NULL),
(813, 174, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-11-07 17:00:00', NULL),
(814, 174, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-11-07 17:00:00', NULL),
(815, 174, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-11-07 17:00:00', NULL),
(816, 174, 2017, 'Mei', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-11-07 17:00:00', NULL),
(817, 175, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-11-07 17:00:00', NULL),
(818, 175, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-11-07 17:00:00', NULL),
(819, 175, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-11-07 17:00:00', NULL),
(820, 175, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-11-07 17:00:00', NULL),
(821, 175, 2017, 'Juni', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-11-07 17:00:00', NULL),
(822, 176, 2017, 'Februari', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-11-07 17:00:00', NULL),
(823, 177, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-11-07 17:00:00', NULL),
(824, 177, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Putus Berobat', '2019-11-07 17:00:00', NULL),
(825, 178, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-11-07 17:00:00', NULL),
(826, 178, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-11-07 17:00:00', NULL),
(827, 178, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-11-07 17:00:00', NULL),
(828, 178, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-11-07 17:00:00', NULL),
(829, 179, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-11-07 17:00:00', NULL),
(830, 179, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-11-07 17:00:00', NULL),
(831, 179, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-11-07 17:00:00', NULL),
(832, 179, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-11-07 17:00:00', NULL),
(833, 179, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-11-07 17:00:00', NULL),
(834, 180, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-11-07 17:00:00', NULL),
(835, 180, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-11-07 17:00:00', NULL),
(836, 180, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-11-07 17:00:00', NULL),
(837, 180, 2017, 'Juni', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-11-07 17:00:00', NULL),
(839, 182, 2017, 'Februari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-11-07 17:00:00', NULL),
(840, 182, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-11-07 17:00:00', NULL),
(841, 182, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-11-07 17:00:00', NULL),
(843, 183, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-11-08 17:00:00', NULL),
(844, 183, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-11-08 17:00:00', NULL),
(845, 183, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-11-08 17:00:00', NULL),
(846, 183, 2017, 'Juli', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-11-08 17:00:00', NULL),
(847, 183, 2017, 'Agustus', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-11-08 17:00:00', NULL),
(848, 184, 2017, 'Februari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-11-08 17:00:00', NULL),
(849, 184, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-11-08 17:00:00', NULL),
(850, 184, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-11-08 17:00:00', NULL),
(851, 184, 2017, 'Juni', 'Hasil Mikroskopis Bulan Ke 5', 'Tidak Dilakukan', '2019-11-08 17:00:00', NULL),
(852, 184, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-11-08 17:00:00', NULL),
(853, 185, 2017, 'Februari', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-11-08 17:00:00', NULL),
(854, 186, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-11-08 17:00:00', NULL),
(855, 186, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-11-08 17:00:00', NULL),
(856, 186, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-11-08 17:00:00', NULL),
(857, 186, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-11-08 17:00:00', NULL),
(858, 186, 2017, 'Juni', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-11-08 17:00:00', NULL),
(859, 187, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-11-08 17:00:00', NULL),
(860, 187, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-11-08 17:00:00', NULL),
(861, 187, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-11-08 17:00:00', NULL),
(862, 187, 2017, 'April', 'Hasil Akhir Pengobatan', 'Putus Berobat', '2019-11-08 17:00:00', NULL),
(863, 188, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Tidak Dilakukan', '2019-11-08 17:00:00', NULL),
(864, 188, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Tidak Dilakukan', '2019-11-08 17:00:00', NULL),
(865, 188, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-11-08 17:00:00', NULL),
(866, 188, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 5', 'Tidak Dilakukan', '2019-11-08 17:00:00', NULL),
(867, 188, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-11-08 17:00:00', NULL),
(868, 189, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-11-08 17:00:00', NULL),
(869, 189, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Meninggal', '2019-11-08 17:00:00', NULL),
(870, 190, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-11-08 17:00:00', NULL),
(871, 190, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Putus Berobat', '2019-11-08 17:00:00', NULL),
(872, 192, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-11-08 17:00:00', NULL),
(873, 192, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-11-08 17:00:00', NULL),
(874, 192, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-11-08 17:00:00', NULL),
(875, 192, 2017, 'Juli', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-11-08 17:00:00', NULL),
(876, 192, 2017, 'Agustus', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-11-08 17:00:00', NULL),
(877, 193, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-11-08 17:00:00', NULL),
(878, 193, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-11-08 17:00:00', NULL),
(879, 193, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-11-08 17:00:00', NULL),
(880, 193, 2017, 'Juli', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-11-08 17:00:00', NULL),
(881, 193, 2017, 'Agustus', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-11-08 17:00:00', NULL),
(882, 194, 2017, 'Februari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-11-08 17:00:00', NULL),
(883, 194, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 2', 'Meninggal', '2019-11-08 17:00:00', NULL),
(884, 195, 2017, 'Februari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-11-08 17:00:00', NULL),
(885, 195, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-11-08 17:00:00', NULL),
(886, 195, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-11-08 17:00:00', NULL),
(887, 195, 2017, 'Juni', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-11-08 17:00:00', NULL),
(888, 195, 2017, 'Agustus', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-11-08 17:00:00', NULL),
(889, 196, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-11-08 17:00:00', NULL),
(890, 196, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-11-08 17:00:00', NULL),
(891, 196, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-11-08 17:00:00', NULL),
(892, 196, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-11-08 17:00:00', NULL),
(893, 196, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-11-08 17:00:00', NULL),
(894, 197, 2017, 'Februari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-11-08 17:00:00', NULL),
(895, 197, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-11-08 17:00:00', NULL),
(896, 197, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-11-08 17:00:00', NULL),
(897, 197, 2017, 'Juni', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-11-08 17:00:00', NULL),
(898, 197, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-11-08 17:00:00', NULL),
(899, 198, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-11-08 17:00:00', NULL),
(900, 198, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-11-08 17:00:00', NULL),
(901, 198, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-11-08 17:00:00', NULL),
(902, 198, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-11-08 17:00:00', NULL),
(903, 198, 2017, 'Juni', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-11-08 17:00:00', NULL),
(904, 199, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Negatif', '2019-11-08 17:00:00', NULL),
(905, 199, 2017, 'Februari', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-11-08 17:00:00', NULL),
(906, 199, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-11-08 17:00:00', NULL),
(907, 199, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-11-08 17:00:00', NULL),
(908, 199, 2017, 'Juni', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-11-08 17:00:00', NULL),
(909, 200, 2017, 'Februari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-11-08 17:00:00', NULL),
(910, 200, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-11-08 17:00:00', NULL),
(911, 200, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-11-08 17:00:00', NULL),
(912, 200, 2017, 'Juni', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-11-08 17:00:00', NULL),
(913, 200, 2017, 'Juli', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-11-08 17:00:00', NULL),
(914, 201, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Tidak Dilakukan', '2019-11-08 17:00:00', NULL),
(915, 201, 2017, 'Februari', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-11-08 17:00:00', NULL),
(916, 202, 2017, 'Maret', 'Sebelum Pengobatan Hasil Mikroskopis', 'Tidak Dilakukan', '2019-11-08 17:00:00', NULL),
(917, 202, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 2', 'Tidak Dilakukan', '2019-11-08 17:00:00', NULL),
(918, 202, 2017, 'Mei', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-11-08 17:00:00', NULL),
(919, 202, 2017, 'Juli', 'Hasil Mikroskopis Bulan Ke 5', 'Tidak Dilakukan', '2019-11-08 17:00:00', NULL),
(920, 202, 2017, 'September', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-11-08 17:00:00', NULL),
(921, 203, 2017, 'Januari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-11-08 17:00:00', NULL),
(922, 203, 2017, 'Februari', 'Hasil Akhir Pengobatan', 'Sembuh', '2019-11-08 17:00:00', NULL),
(923, 204, 2017, 'Februari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Positif', '2019-11-08 17:00:00', NULL),
(924, 204, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 2', 'Negatif', '2019-11-08 17:00:00', NULL),
(925, 204, 2017, 'April', 'Hasil Mikroskopis Bulan Ke 3', 'Tidak Dilakukan', '2019-11-08 17:00:00', NULL),
(926, 204, 2017, 'Juni', 'Hasil Mikroskopis Bulan Ke 5', 'Negatif', '2019-11-08 17:00:00', NULL),
(927, 204, 2017, 'September', 'Hasil Akhir Pengobatan', 'Pengobatan Lengkap', '2019-11-08 17:00:00', NULL),
(928, 208, 2017, 'Februari', 'Sebelum Pengobatan Hasil Mikroskopis', 'Sembuh', NULL, NULL),
(929, 209, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 2', 'Tidak Dilakukan', NULL, NULL),
(930, 209, 2017, 'Maret', 'Hasil Mikroskopis Bulan Ke 2', 'Positif', NULL, NULL),
(931, 4, 2017, 'Juli', 'Hasil Mikroskopis Bulan Ke 3', 'Negatif', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'asti', 'asticahyani@gmail.com', '$2y$10$wPRsZvVSmFGmdSAgvSkFP.9R6CBaY9vy94bDDAf0xDBA52f88XAo2', 'SjsHF5PrsOk9yi0v4oZONkZ1xzbqQG7YRfgyzgT3xwvL0egsiIldlYJ2avD9', '2019-11-15 06:48:24', '2019-11-15 06:48:24'),
(2, 'astic', 'asticahya74@gmail.com', '$2y$10$okKylougfpAdNs0mgzdsmeyW6qjT7s5qDPixxxNQIxd/GxAZqcNCS', 'P4x9gqOw0tLP4a2U1w7MfGcW7ayozv46ULHKbeDZErXxJcTl8zc0cUN6JEpk', '2019-11-24 12:08:18', '2019-11-24 12:08:18'),
(3, 'admin', 'asticahya@gmail.com', '$2y$10$W9daGMxSPpxtBowDmoG6m.YxVJtXxYAvk6QNAUGespSWcx4EBnPg.', 'fNfhwUOWe0IAgygntJEx4B58TQxWwBoSwyrWLLjO8t34sXoBDk4RrtsGy3Kv', '2019-11-24 13:20:59', '2019-11-24 13:20:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_faskes`
--
ALTER TABLE `data_faskes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_faskes_id_kecamatan_foreign` (`id_kecamatan`);

--
-- Indexes for table `data_kecamatan`
--
ALTER TABLE `data_kecamatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_kepadatan`
--
ALTER TABLE `data_kepadatan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_kepadatan_id_kecamatan_foreign` (`id_kecamatan`);

--
-- Indexes for table `data_pasien`
--
ALTER TABLE `data_pasien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_pasien_id_kecamatan_foreign` (`id_kecamatan`),
  ADD KEY `data_pasien_id_faskes_foreign` (`id_faskes`);

--
-- Indexes for table `indeks_rtphbs`
--
ALTER TABLE `indeks_rtphbs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `indeks_rtphbs_id_kecamatan_foreign` (`id_kecamatan`);

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
-- Indexes for table `riwayat_pasien`
--
ALTER TABLE `riwayat_pasien`
  ADD PRIMARY KEY (`id`),
  ADD KEY `riwayat_pasien_id_pasien_foreign` (`id_pasien`);

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
-- AUTO_INCREMENT for table `data_faskes`
--
ALTER TABLE `data_faskes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `data_kecamatan`
--
ALTER TABLE `data_kecamatan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `data_kepadatan`
--
ALTER TABLE `data_kepadatan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `data_pasien`
--
ALTER TABLE `data_pasien`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT for table `indeks_rtphbs`
--
ALTER TABLE `indeks_rtphbs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `riwayat_pasien`
--
ALTER TABLE `riwayat_pasien`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=932;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_faskes`
--
ALTER TABLE `data_faskes`
  ADD CONSTRAINT `data_faskes_id_kecamatan_foreign` FOREIGN KEY (`id_kecamatan`) REFERENCES `data_kecamatan` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `data_kepadatan`
--
ALTER TABLE `data_kepadatan`
  ADD CONSTRAINT `data_kepadatan_id_kecamatan_foreign` FOREIGN KEY (`id_kecamatan`) REFERENCES `data_kecamatan` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `data_pasien`
--
ALTER TABLE `data_pasien`
  ADD CONSTRAINT `data_pasien_id_faskes_foreign` FOREIGN KEY (`id_faskes`) REFERENCES `data_faskes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `data_pasien_id_kecamatan_foreign` FOREIGN KEY (`id_kecamatan`) REFERENCES `data_kecamatan` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `indeks_rtphbs`
--
ALTER TABLE `indeks_rtphbs`
  ADD CONSTRAINT `indeks_rtphbs_id_kecamatan_foreign` FOREIGN KEY (`id_kecamatan`) REFERENCES `data_kecamatan` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `riwayat_pasien`
--
ALTER TABLE `riwayat_pasien`
  ADD CONSTRAINT `riwayat_pasien_id_pasien_foreign` FOREIGN KEY (`id_pasien`) REFERENCES `data_pasien` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
