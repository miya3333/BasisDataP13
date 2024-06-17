-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2024 at 05:05 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_buku`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `cek_stok` ()   BEGIN
  SELECT id_buku, stok,
    CASE
      WHEN stok > 20 THEN 'BUKU TERSEDIA'
      ELSE 'BUKU SEDANG KOSONG'
    END AS sisa_buku
  FROM detail_buku;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `hitung_buku_romance` ()   BEGIN
    SELECT COUNT(*) AS jumlah_buku_romance
    FROM buku
    WHERE genre = 'Romance';
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `tambah_penulis` (IN `id_penulis` INT, IN `nama_penulis` VARCHAR(255))   BEGIN
    INSERT INTO penulis (id_penulis, nama_penulis) 
    VALUES (id_penulis, nama_penulis);
END$$

DELIMITER ;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `id_penulis`, `nama_buku`, `genre`, `tahun`) VALUES
(102, 190, 'Spring In London', 'Romance', 2007),
(111, 129, 'God Fifht', 'Action', 2010),
(142, 178, 'Kata Hati', 'Romance', 2008),
(153, 128, 'Marmut Merah Jambu', 'Comedy', 2012),
(188, 128, 'Koala Kumal', 'Comedy', 2015),
(196, 129, 'Pillow Talk', 'Romance', 2008),
(291, 191, 'Sea In The Dark', 'Horror', 2019),
(322, 190, 'In Blue Moon', 'Action', 2007);

--
-- Dumping data for table `detail_buku`
--

INSERT INTO `detail_buku` (`id_buku`, `harga`, `stok`) VALUES
(102, '75000', '20'),
(111, '63000', '21'),
(142, '92000', '12'),
(153, '89000', '14'),
(188, '93000', '26'),
(196, '84000', '27'),
(291, '57000', '1'),
(322, '129000', '7');

--
-- Dumping data for table `penulis`
--

INSERT INTO `penulis` (`id_penulis`, `nama_penulis`) VALUES
(128, 'Raditya Dika'),
(129, 'Bernard Batubara'),
(178, 'Cristian Simamora'),
(190, 'Ilana Tan'),
(191, 'John Doe');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
