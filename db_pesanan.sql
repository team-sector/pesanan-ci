-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Bulan Mei 2020 pada 20.16
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pesanan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbadmin`
--

CREATE TABLE `tbadmin` (
  `id_admin` char(10) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbadmin`
--

INSERT INTO `tbadmin` (`id_admin`, `username`, `password`) VALUES
('001', 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbbarang`
--

CREATE TABLE `tbbarang` (
  `Kode_Barang` int(10) NOT NULL,
  `Nama_Barang` varchar(30) NOT NULL,
  `Satuan` varchar(25) NOT NULL,
  `Harga_Beli` double NOT NULL,
  `Harga_Jual` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbpelanggan`
--

CREATE TABLE `tbpelanggan` (
  `ID_Pelanggan` int(10) NOT NULL,
  `Nama_Pelanggan` varchar(30) DEFAULT NULL,
  `Alamat` varchar(50) DEFAULT NULL,
  `No_Tlpn` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbpemesanan`
--

CREATE TABLE `tbpemesanan` (
  `ID_Pesan` int(10) NOT NULL,
  `Kode_Barang` int(10) DEFAULT NULL,
  `ID_Pelangan` int(10) DEFAULT NULL,
  `Tanggal_Pesan` date DEFAULT NULL,
  `Jumlah_pesan` int(11) DEFAULT NULL,
  `Total` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbadmin`
--
ALTER TABLE `tbadmin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `tbbarang`
--
ALTER TABLE `tbbarang`
  ADD PRIMARY KEY (`Kode_Barang`);

--
-- Indeks untuk tabel `tbpelanggan`
--
ALTER TABLE `tbpelanggan`
  ADD PRIMARY KEY (`ID_Pelanggan`);

--
-- Indeks untuk tabel `tbpemesanan`
--
ALTER TABLE `tbpemesanan`
  ADD PRIMARY KEY (`ID_Pesan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbbarang`
--
ALTER TABLE `tbbarang`
  MODIFY `Kode_Barang` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbpelanggan`
--
ALTER TABLE `tbpelanggan`
  MODIFY `ID_Pelanggan` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbpemesanan`
--
ALTER TABLE `tbpemesanan`
  MODIFY `ID_Pesan` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
