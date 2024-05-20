-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 17 Bulan Mei 2024 pada 19.28
-- Versi server: 10.6.17-MariaDB-cll-lve-log
-- Versi PHP: 8.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hhdzbcdm_dev`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `id_product` int(11) NOT NULL,
  `nama_product` varchar(255) NOT NULL,
  `satuan_product` varchar(100) NOT NULL,
  `stock_product` varchar(12) NOT NULL,
  `harga_beli` int(11) DEFAULT NULL,
  `id_supplier` int(11) NOT NULL,
  `area` int(111) NOT NULL,
  `defect` int(111) NOT NULL,
  `sample` int(111) NOT NULL,
  `id_branch` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `deleted_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `product`
--

INSERT INTO `product` (`id_product`, `nama_product`, `satuan_product`, `stock_product`, `harga_beli`, `id_supplier`, `area`, `defect`, `sample`, `id_branch`, `created_at`, `updated_at`, `deleted_at`) VALUES
(10000001, 'MILLENIUM FILTER', 'Bungkus', '16058', 0, 213000001, 0, 0, 0, 10, '0000-00-00', '2024-05-09', '0000-00-00'),
(10000015, 'S 9', 'Bungkus', '30', 0, 213000001, 0, 0, 0, 10, '0000-00-00', '2024-05-09', '0000-00-00'),
(10000186, 'SCK12', 'Bungkus', '0', NULL, 213000125, 0, 0, 0, 13, '0000-00-00', '0000-00-00', '0000-00-00'),
(10000188, 'GCF12', 'Bungkus', '0', NULL, 213000125, 0, 0, 0, 13, '0000-00-00', '0000-00-00', '0000-00-00'),
(10000195, 'KOPIJO GULA', 'Bungkus', '0', NULL, 213000121, 0, 0, 0, 13, '0000-00-00', '0000-00-00', '0000-00-00'),
(10000196, 'KOPIJO SUSU', 'Bungkus', '0', NULL, 213000121, 0, 0, 0, 13, '0000-00-00', '0000-00-00', '0000-00-00'),
(10000197, 'HAVE BOLD', 'Bungkus', '0', NULL, 213000125, 0, 0, 0, 13, '0000-00-00', '0000-00-00', '0000-00-00'),
(10000210, 'EXCELENT F12', 'Bungkus', '0', NULL, 213000125, 0, 0, 0, 13, '0000-00-00', '0000-00-00', '0000-00-00'),
(10000211, 'GUDANG CENGKEH K 12', 'Bungkus', '0', NULL, 213000125, 0, 0, 0, 13, '0000-00-00', '0000-00-00', '0000-00-00'),
(10000223, 'REED F12', 'Bungkus', '0', NULL, 213000109, 0, 0, 0, 13, '0000-00-00', '0000-00-00', '0000-00-00'),
(10000226, 'TABACCO BOLD 12', 'Bungkus', '16', NULL, 213000125, 0, 0, 0, 13, '0000-00-00', '0000-00-00', '0000-00-00'),
(10000227, 'TABACO BOLD 20', 'Bungkus', '0', NULL, 213000125, 0, 0, 0, 13, '0000-00-00', '0000-00-00', '0000-00-00'),
(10000236, 'SCK 12 LAMA', 'Bungkus', '0', NULL, 213000125, 0, 0, 0, 13, '0000-00-00', '0000-00-00', '0000-00-00'),
(10000237, 'HAVE F 12', 'Bungkus', '0', NULL, 213000109, 0, 0, 0, 13, '0000-00-00', '0000-00-00', '0000-00-00'),
(10000254, 'TABACO ONE 12', 'Bungkus', '405', NULL, 213000125, 0, 0, 0, 13, '0000-00-00', '0000-00-00', '0000-00-00'),
(10000255, 'TABACO NATURAL 20', 'Bungkus', '0', NULL, 213000125, 0, 0, 0, 13, '0000-00-00', '0000-00-00', '0000-00-00'),
(10000259, 'ROW BOLD', 'Bungkus', '0', NULL, 213000125, 0, 0, 0, 13, '0000-00-00', '0000-00-00', '0000-00-00'),
(10000260, 'ROW MILD', 'Bungkus', '0', NULL, 213000125, 0, 0, 0, 13, '0000-00-00', '0000-00-00', '0000-00-00'),
(10000282, 'SAHARA KRETEK', 'Bungkus', '0', NULL, 213000192, 0, 0, 0, 13, '0000-00-00', '0000-00-00', '0000-00-00'),
(10000285, 'ROW SKM', 'Bungkus', '0', NULL, 213000109, 0, 0, 0, 13, '0000-00-00', '0000-00-00', '0000-00-00'),
(10000290, 'Teh ', 'Bungkus', '19', NULL, 213000152, 0, 0, 0, 0, '2024-04-04', '2024-04-04', '0000-00-00'),
(10000292, 'MILENIUM BLUE', 'Bungkus', '576', NULL, 213000001, 0, 0, 0, 9, '2024-05-07', '2024-05-07', '0000-00-00'),
(10000293, 'HAVE BOLD', 'Bungkus', '142', NULL, 213000002, 0, 0, 0, 9, '2024-05-07', '2024-05-07', '0000-00-00'),
(10000294, 'HIMA', 'Bungkus', '36', NULL, 213000002, 0, 0, 0, 9, '2024-05-07', '2024-05-07', '0000-00-00'),
(10000295, 'NY BOLD', 'Bungkus', '30455', NULL, 213000182, 0, 0, 0, 9, '2024-05-07', '2024-05-07', '0000-00-00'),
(10000296, 'SAHARA KRETEK', 'Bungkus', '1359', NULL, 213000096, 0, 0, 0, 9, '2024-05-07', '2024-05-07', '0000-00-00'),
(10000297, 'SAHARA FILTER', 'Bungkus', '616', NULL, 213000096, 0, 0, 0, 9, '2024-05-07', '2024-05-07', '0000-00-00'),
(10000298, 'SULTAN', 'Bungkus', '988', NULL, 213000002, 0, 0, 0, 9, '2024-05-07', '2024-05-07', '0000-00-00'),
(10000299, 'ROW MILD', 'Bungkus', '947', NULL, 213000046, 0, 0, 0, 2, '2024-05-07', '2024-05-07', '0000-00-00'),
(10000300, 'HIMA', 'Bungkus', '11201', NULL, 213000046, 0, 0, 0, 2, '2024-05-07', '2024-05-07', '0000-00-00'),
(10000301, 'HIMA CLICK', 'Bungkus', '4336', NULL, 213000046, 0, 0, 0, 2, '2024-05-07', '2024-05-07', '0000-00-00'),
(10000302, 'GUDANG HARUM', 'Bungkus', '1878', NULL, 213000046, 0, 0, 0, 2, '2024-05-07', '2024-05-07', '0000-00-00'),
(10000303, 'SEVEN', 'Bungkus', '32690', NULL, 213000049, 0, 0, 0, 2, '2024-05-07', '2024-05-07', '0000-00-00'),
(10000304, 'NY BOLD', 'Bungkus', '14132', NULL, 213000049, 0, 0, 0, 2, '2024-05-07', '2024-05-07', '0000-00-00'),
(10000305, 'SAHARA KRETEK', 'Bungkus', '2432', NULL, 213000041, 0, 0, 0, 2, '2024-05-07', '2024-05-07', '0000-00-00'),
(10000306, 'PARADE BINTANG', 'Bungkus', '200', NULL, 213000102, 0, 0, 0, 2, '2024-05-07', '2024-05-07', '0000-00-00'),
(10000307, 'MILENIUM BLUE', 'Bungkus', ' 410 ', NULL, 213000095, 0, 0, 0, 11, '2024-05-07', '2024-05-07', '0000-00-00'),
(10000308, 'HAVE BOLD', 'Bungkus', ' 19 ', NULL, 213000092, 0, 0, 0, 11, '2024-05-07', '2024-05-07', '0000-00-00'),
(10000309, 'HIMA', 'Bungkus', ' 208 ', NULL, 213000092, 0, 0, 0, 11, '2024-05-07', '2024-05-07', '0000-00-00'),
(10000310, 'SEVEN', 'Bungkus', ' 128 ', NULL, 213000181, 0, 0, 0, 11, '2024-05-07', '2024-05-07', '0000-00-00'),
(10000311, 'NY BOLD', 'Bungkus', ' 29424 ', NULL, 213000181, 0, 0, 0, 11, '2024-05-07', '2024-05-07', '0000-00-00'),
(10000312, 'MILENIUM BOLD', 'Bungkus', '98', NULL, 213000086, 0, 0, 0, 12, '2024-05-07', '2024-05-07', '0000-00-00'),
(10000313, 'NEXTON', 'Bungkus', ' 600 ', NULL, 213000086, 0, 0, 0, 12, '2024-05-07', '2024-05-07', '0000-00-00'),
(10000314, 'MILENIUM FILTER', 'Bungkus', '146', 0, 213000086, 0, 0, 0, 12, '2024-05-07', '2024-05-10', '0000-00-00'),
(10000315, 'SEMBILAN', 'Bungkus', ' 17 ', NULL, 213000086, 0, 0, 0, 12, '2024-05-07', '2024-05-07', '0000-00-00'),
(10000316, 'MILENIUM FILTER', 'Bungkus', '224000', 10500, 213000016, 0, 0, 0, 8, '2024-05-08', '2024-05-08', '0000-00-00'),
(10000317, 'ROW BOLD', 'Bungkus', '1170', 9000, 213000002, 0, 0, 0, 8, '2024-05-08', '2024-05-08', '0000-00-00'),
(10000318, 'ROW MILD', 'Bungkus', '27315', 9000, 213000002, 0, 0, 0, 8, '2024-05-08', '2024-05-08', '0000-00-00'),
(10000319, 'SAHARA KRETEK', 'Bungkus', '7185', 7500, 213000039, 0, 0, 0, 8, '2024-05-08', '2024-05-08', '0000-00-00'),
(10000320, 'SAHARA FILTER', 'Bungkus', '355', 12750, 213000039, 0, 0, 0, 8, '2024-05-08', '2024-05-08', '0000-00-00'),
(10000321, 'SAHARA KRETEK', 'Bungkus', '2128', 7500, 213000160, 0, 0, 0, 7, '2024-05-08', '2024-05-08', '0000-00-00'),
(10000322, 'SPIRIT', 'Bungkus', '1415', 8000, 213000132, 0, 0, 0, 7, '2024-05-08', '2024-05-08', '0000-00-00'),
(10000323, 'TABACO ONE 12', 'Bungkus', '804', 12950, 213000132, 0, 0, 0, 7, '2024-05-08', '2024-05-08', '0000-00-00'),
(10000324, 'TABACO NATURAL 12', 'Bungkus', '229', 6800, 213000132, 0, 0, 0, 7, '2024-05-08', '2024-05-08', '0000-00-00'),
(10000325, 'TABACO NATURAL 20', 'Bungkus', '1445', 10125, 213000132, 0, 0, 0, 7, '2024-05-08', '2024-05-08', '0000-00-00'),
(10000326, 'TABACO BOLD 20', 'Bungkus', '1421', 20470, 213000132, 0, 0, 0, 7, '2024-05-08', '2024-05-08', '0000-00-00'),
(10000327, 'PARADE BINTANG', 'Bungkus', '1553', 7000, 213000167, 0, 0, 0, 7, '2024-05-08', '2024-05-08', '0000-00-00'),
(10000328, 'PASIR EMAS', 'Bungkus', '385', 7000, 213000167, 0, 0, 0, 7, '2024-05-08', '2024-05-08', '0000-00-00'),
(10000329, ' HAVE ', 'Bungkus', '4294', 11000, 213000055, 0, 0, 0, 4, '2024-05-08', '2024-05-08', '0000-00-00'),
(10000330, ' SULTAN ', 'Bungkus', '3664', 5500, 213000055, 0, 0, 0, 4, '2024-05-08', '2024-05-08', '0000-00-00'),
(10000331, 'SAHARA FILTER', 'Bungkus', '135', 12750, 213000057, 0, 0, 0, 4, '2024-05-08', '2024-05-08', '0000-00-00'),
(10000332, 'SAHARA KRETEK', 'Bungkus', '14899', 7500, 213000057, 0, 0, 0, 4, '2024-05-08', '2024-05-08', '0000-00-00'),
(10000333, 'TABACO ONE', 'Bungkus', '10989', 12950, 213000164, 0, 0, 0, 4, '2024-05-08', '2024-05-08', '0000-00-00'),
(10000334, ' TABACO BOLD 12 ', 'Bungkus', '5894', 12950, 213000164, 0, 0, 0, 4, '2024-05-08', '2024-05-08', '0000-00-00'),
(10000335, ' TABACO BOLD 20 ', 'Bungkus', '4194', 20470, 213000164, 0, 0, 0, 4, '2024-05-08', '2024-05-08', '0000-00-00'),
(10000336, ' TABACO NATURAL 12 ', 'Bungkus', '2163', 6800, 213000164, 0, 0, 0, 4, '2024-05-08', '2024-05-08', '0000-00-00'),
(10000337, ' TABACO NATURAL 20 ', 'Bungkus', '3555', 10125, 213000164, 0, 0, 0, 4, '2024-05-08', '2024-05-08', '0000-00-00'),
(10000338, ' MILLIONS 20 ', 'Bungkus', '13', 19600, 213000164, 0, 0, 0, 4, '2024-05-08', '2024-05-08', '0000-00-00'),
(10000339, ' MILIONS BLACK GOLD 12 ', 'Bungkus', '775', 11100, 213000164, 0, 0, 0, 4, '2024-05-08', '2024-05-08', '0000-00-00'),
(10000340, 'MILIONS BLACK GOLD 20', 'Bungkus', '685', 19600, 213000164, 0, 0, 0, 4, '2024-05-08', '2024-05-08', '0000-00-00'),
(10000341, 'TABACO PIUR', 'Bungkus', '27', 6400, 213000164, 0, 0, 0, 4, '2024-05-08', '2024-05-08', '0000-00-00'),
(10000342, 'MILENIUM FILTER', 'Bungkus', '2', 10000, 213000056, 0, 0, 0, 4, '2024-05-08', '2024-05-08', '0000-00-00'),
(10000343, 'HAVE LAMA', 'Bungkus', '1073', 5000, 213000055, 0, 0, 0, 4, '2024-05-08', '2024-05-08', '0000-00-00'),
(10000344, 'SULTAN LAMA', 'Bungkus', '99', 5000, 213000055, 0, 0, 0, 4, '2024-05-08', '2024-05-08', '0000-00-00'),
(10000345, 'SAHARA JELEK', 'Bungkus', '63', 6000, 213000057, 0, 0, 0, 4, '2024-05-08', '2024-05-08', '0000-00-00'),
(10000346, 'TABACO ONE 12 JELEK', 'Bungkus', '37', 11100, 213000164, 0, 0, 0, 4, '2024-05-08', '2024-05-08', '0000-00-00'),
(10000347, 'TABACO BOLD 12 JELEK', 'Bungkus', '28', 11100, 213000164, 0, 0, 0, 4, '2024-05-08', '2024-05-08', '0000-00-00'),
(10000348, 'MILIONS 20 JELEK', 'Bungkus', '10', 19600, 213000164, 0, 0, 0, 4, '2024-05-08', '2024-05-08', '0000-00-00'),
(10000349, 'TABACO NATURAL 20 JELEK', 'Bungkus', '1', 9650, 213000164, 0, 0, 0, 4, '2024-05-08', '2024-05-08', '0000-00-00'),
(10000350, 'TABACO NATURAL 12 JELEK', 'Bungkus', '27', 5940, 213000164, 0, 0, 0, 4, '2024-05-08', '2024-05-08', '0000-00-00'),
(10000351, 'MILLIONS BLACK 12 JELEK', 'Bungkus', '10', 1100, 213000164, 0, 0, 0, 4, '2024-05-08', '2024-05-08', '0000-00-00'),
(10000352, 'TABACO PURE 12 JELEK', 'Bungkus', '7', 5940, 213000164, 0, 0, 0, 4, '2024-05-08', '2024-05-08', '0000-00-00'),
(10000353, 'MILLIONS BG 20 PITA LAMA', 'Bungkus', '7', 19600, 213000164, 0, 0, 0, 4, '2024-05-08', '2024-05-08', '0000-00-00'),
(10000354, 'TABACO ONE 12 CUKAI 2023', 'Bungkus', '65', 11100, 213000164, 0, 0, 0, 4, '2024-05-08', '2024-05-08', '0000-00-00'),
(10000355, 'PASIR MAS', 'Bungkus', '726', 7000, 213000193, 0, 0, 0, 4, '2024-05-08', '2024-05-08', '0000-00-00'),
(10000356, 'PARADE BINTANG', 'Bungkus', '18583', 7000, 213000193, 0, 0, 0, 4, '2024-05-08', '2024-05-08', '0000-00-00'),
(10000357, 'MILENIUM BLUE', 'Bungkus', '275362', 9600, 213000001, 0, 0, 0, 1, '2024-05-08', '2024-05-08', '0000-00-00'),
(10000358, 'MILENIUM BOLD', 'Bungkus', '88959', 9600, 213000001, 0, 0, 0, 1, '2024-05-08', '2024-05-08', '0000-00-00'),
(10000359, 'HIMA', 'Bungkus', '5977', 9500, 213000002, 0, 0, 0, 1, '2024-05-08', '2024-05-08', '0000-00-00'),
(10000360, 'HIMA CLICK', 'Bungkus', '11868', 12500, 213000002, 0, 0, 0, 1, '2024-05-08', '2024-05-08', '0000-00-00'),
(10000361, 'SAHARA KRETEK', 'Bungkus', '15101', 7500, 213000093, 0, 0, 0, 1, '2024-05-08', '2024-05-08', '0000-00-00'),
(10000362, 'SEVEN', 'Bungkus', '9495', 11000, 213000183, 0, 0, 0, 1, '2024-05-08', '2024-05-08', '0000-00-00'),
(10000363, 'NY BOLD', 'Bungkus', '7298', 10000, 213000183, 0, 0, 0, 1, '2024-05-08', '2024-05-08', '0000-00-00'),
(10000364, 'PARADE BINTANG', 'Bungkus', '2150', 7000, 213000165, 0, 0, 0, 1, '2024-05-08', '2024-05-08', '0000-00-00'),
(10000365, 'HIMA', 'Bungkus', '75499', 15500, 213000209, 0, 500, 0, 18, '2024-05-09', '2024-05-11', '0000-00-00'),
(10000366, 'SAHARA KRETEK SOFT PACK', 'Bungkus', '1', 0, 213000110, 0, 0, 0, 11, '2024-05-10', '2024-05-10', '0000-00-00'),
(10000367, 'SAHARA KRETEK HARD PACK', 'Bungkus', '2408', 0, 213000110, 0, 0, 0, 11, '2024-05-10', '2024-05-10', '0000-00-00'),
(10000368, 'SULTAN CENGKEH', 'Bungkus', '139', 0, 213000092, 0, 0, 0, 11, '2024-05-10', '2024-05-10', '0000-00-00'),
(10000369, 'HAVE 12', 'Bungkus', '117', 0, 213000092, 0, 0, 0, 11, '2024-05-10', '2024-05-10', '0000-00-00'),
(10000370, 'GUDANG CENGKEH', 'Bungkus', '147', 0, 213000092, 0, 0, 0, 11, '2024-05-10', '2024-05-10', '0000-00-00'),
(10000371, 'MILENIUM BLUE SKM', 'Bungkus', '627', 0, 213000095, 0, 0, 0, 11, '2024-05-10', '2024-05-10', '0000-00-00'),
(10000372, 'GAYAH', 'Bungkus', '110', 0, 213000092, 0, 0, 0, 11, '2024-05-10', '2024-05-10', '0000-00-00'),
(10000373, 'HIMA', 'Bungkus', '1', 9800, 213000217, 0, 0, 0, 3, '2024-05-10', '2024-05-10', '0000-00-00'),
(10000374, 'PASIR MAS', 'Bungkus', '139', 7000, 213000211, 0, 0, 0, 17, '2024-05-10', '2024-05-10', '0000-00-00'),
(10000375, 'PARADE BINTANG', 'Bungkus', '1508', 7000, 213000211, 0, 0, 0, 17, '2024-05-10', '2024-05-10', '0000-00-00'),
(10000376, 'SULTAN CENGKEH', 'Bungkus', '1835', 5500, 213000213, 0, 0, 0, 17, '2024-05-10', '2024-05-10', '0000-00-00'),
(10000377, 'TABACO BOLD 12', 'Bungkus', '1393', 12500, 213000216, 0, 0, 0, 17, '2024-05-10', '2024-05-10', '0000-00-00'),
(10000378, 'TABACO ONE 12', 'Bungkus', '2371', 12500, 213000216, 0, 0, 0, 17, '2024-05-10', '2024-05-10', '0000-00-00'),
(10000379, 'TABACO NATURAL 12', 'Bungkus', '2003', 6800, 213000216, 0, 0, 0, 17, '2024-05-10', '2024-05-10', '0000-00-00'),
(10000380, 'BANI BLUEBERRY', 'Bungkus', '7000', 11400, 213000209, 0, 0, 0, 18, '2024-05-13', '2024-05-13', '0000-00-00'),
(10000381, 'M BLUE', 'Unit', '284000', 9500, 213000219, 0, 0, 0, 18, '2024-05-15', '2024-05-16', '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id_product`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `product`
--
ALTER TABLE `product`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10000382;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
