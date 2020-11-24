-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Nov 2020 pada 06.52
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ikanlayur`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_nilai`
--

CREATE TABLE `detail_nilai` (
  `kd_kriteria` varchar(10) NOT NULL,
  `bobot` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `ikanlayur`
--

CREATE TABLE `ikanlayur` (
  `kd_ikanlayur` varchar(10) NOT NULL,
  `nm_ikanlayur` varchar(30) DEFAULT NULL,
  `ukuran_ikanlayur` int(15) DEFAULT NULL,
  `kualitas_ikanlayur` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `ikanlayur`
--

INSERT INTO `ikanlayur` (`kd_ikanlayur`, `nm_ikanlayur`, `ukuran_ikanlayur`, `kualitas_ikanlayur`) VALUES
('K01', 'ikan layur', 6, 'baik bangettttttttttttttttttt'),
('K02', 'ikan layur baik', 77, 'baik pake banget'),
('K03', 'berbar', 500, 'terbaik pake banget'),
('K04', 'hf', 89, 'gyf'),
('K05', 'mba iit', 50, 'terbaik pake banget');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE `kriteria` (
  `kd_kriteria` varchar(10) NOT NULL,
  `nm_kriteria` varchar(30) DEFAULT NULL,
  `bobot` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`kd_kriteria`, `nm_kriteria`, `bobot`) VALUES
('K01', 'Kesegaran', 30),
('K02', 'Kualitas', 30),
('K03', 'Ukuran', 30),
('K04', 'Harga', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `kd_nilai` varchar(10) NOT NULL,
  `kd_ikanlayur` varchar(30) DEFAULT NULL,
  `total` int(15) DEFAULT NULL,
  `rangking` int(30) DEFAULT NULL,
  `tgl_penilaian` date DEFAULT NULL,
  `nilai` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `kd_pengguna` varchar(10) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `level` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`kd_pengguna`, `username`, `password`, `level`) VALUES
('', 'berliana', 'nafa', 'pemimpin pt'),
('K01', 'nabila', 'izmi', 'eksportir');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `ikanlayur`
--
ALTER TABLE `ikanlayur`
  ADD PRIMARY KEY (`kd_ikanlayur`);

--
-- Indeks untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`kd_kriteria`);

--
-- Indeks untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`kd_nilai`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`kd_pengguna`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
