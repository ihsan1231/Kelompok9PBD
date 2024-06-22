-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Jun 2024 pada 14.58
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apotek_ks_bagendit`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `is_obat`
--

CREATE TABLE `is_obat` (
  `kode_obat` varchar(7) NOT NULL,
  `nama_obat` varchar(50) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `satuan` varchar(20) NOT NULL,
  `stok` int(11) NOT NULL,
  `created_user` int(3) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_user` int(3) NOT NULL,
  `updated_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `is_obat`
--

INSERT INTO `is_obat` (`kode_obat`, `nama_obat`, `harga_beli`, `harga_jual`, `satuan`, `stok`, `created_user`, `created_date`, `updated_user`, `updated_date`) VALUES
('B000005', 'oskadon espe', 2000, 30000, 'Tablet', 100, 1, '2024-06-06 18:13:53', 1, '2024-06-06 18:14:24'),
('B000006', 'Humagrip', 20000, 600000, 'Fls', 7, 1, '2024-06-06 18:16:38', 1, '2024-06-07 08:44:48'),
('B000007', 'Obat Begadang 7 hari', 5000, 150000, 'Kapsul', 78, 1, '2024-06-06 18:17:46', 1, '2024-06-06 18:21:47'),
('B000008', 'Obat Kuat Zenal', 300000, 1200000, 'Box', 9, 1, '2024-06-06 18:18:20', 1, '2024-06-06 18:21:09'),
('B000011', 'HUFABETAMIN SYR', 8000, 10000, 'Fls', 90, 1, '2024-06-07 08:50:01', 1, '2024-06-07 08:54:32'),
('B000012', 'HUFADEXTAMIN TAB', 3000, 4500, 'Tablet', 67, 1, '2024-06-07 08:50:54', 1, '2024-06-07 08:54:45'),
('B000013', 'HUFAGESIC DROP', 5000, 8000, 'Box', 409, 1, '2024-06-07 08:51:57', 1, '2024-06-07 08:55:30'),
('B000014', 'HUFAFURAL SYR', 13000, 15000, 'Tablet', 500, 1, '2024-06-07 08:52:47', 1, '2024-06-07 08:55:07'),
('B000015', 'HUFADON SYR 60 ML', 8100, 13500, 'Kapsul', 90, 1, '2024-06-07 08:53:32', 1, '2024-06-07 08:54:55'),
('B000016', 'MolexFlu', 6700, 11200, 'Tablet', 300, 1, '2024-06-07 09:04:27', 1, '2024-06-07 09:06:53'),
('B000017', 'paramek', 3000, 5000, 'Tablet', 90, 1, '2024-06-08 05:45:58', 1, '2024-06-08 05:46:27'),
('B000018', 'obat batuk2', 1000, 5000, 'Tablet', 8000, 1, '2024-06-08 09:16:37', 1, '2024-06-08 09:16:53'),
('B000019', 'mixxsagrop', 10000, 50000, 'Fls', 90, 1, '2024-06-08 10:54:12', 1, '2024-06-08 10:54:31'),
('B000020', 'obat plangsing', 80000, 100000, 'Kapsul', 800, 1, '2024-06-09 12:48:12', 1, '2024-06-09 12:48:57'),
('B000021', 'amoxcillin', 6000, 70000, 'Box', 12, 1, '2024-06-09 13:06:13', 1, '2024-06-09 13:07:54'),
('B000022', '09po', 977, 90000, 'Botol', 8, 1, '2024-06-09 16:40:27', 1, '2024-06-09 16:41:52'),
('B000023', 'ppp888', 88800, 99999000, 'Tablet', 0, 1, '2024-06-09 16:41:23', 1, '2024-06-10 01:29:48'),
('B000024', 'zm', 30000, 50000, 'Fls', 900, 1, '2024-06-09 16:59:59', 1, '2024-06-09 17:00:30'),
('B000025', 'komik', 10000, 12000, 'Fls', 8000, 1, '2024-06-10 02:11:12', 1, '2024-06-10 02:12:13'),
('B000026', 'jjj', 4000, 5000, 'Fls', 99, 1, '2024-06-22 12:56:58', 1, '2024-06-22 12:57:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `is_obat_masuk`
--

CREATE TABLE `is_obat_masuk` (
  `kode_transaksi` varchar(15) NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `kode_obat` varchar(7) NOT NULL,
  `jumlah_masuk` int(11) NOT NULL,
  `created_user` int(3) NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `is_obat_masuk`
--

INSERT INTO `is_obat_masuk` (`kode_transaksi`, `tanggal_masuk`, `kode_obat`, `jumlah_masuk`, `created_user`, `created_date`) VALUES
('TM-2024-0000001', '2024-06-06', 'B000005', 100, 1, '2024-06-06 18:14:24'),
('TM-2024-0000002', '2024-06-06', 'B000008', 9, 1, '2024-06-06 18:21:09'),
('TM-2024-0000004', '2024-06-06', 'B000007', 78, 1, '2024-06-06 18:21:47'),
('TM-2024-0000005', '2024-06-07', 'B000006', 7, 1, '2024-06-07 08:44:48'),
('TM-2024-0000006', '2024-06-07', 'B000011', 90, 1, '2024-06-07 08:54:32'),
('TM-2024-0000007', '2024-06-07', 'B000012', 67, 1, '2024-06-07 08:54:45'),
('TM-2024-0000008', '2024-06-07', 'B000015', 90, 1, '2024-06-07 08:54:55'),
('TM-2024-0000009', '2024-06-07', 'B000014', 500, 1, '2024-06-07 08:55:07'),
('TM-2024-0000010', '2024-06-07', 'B000013', 409, 1, '2024-06-07 08:55:30'),
('TM-2024-0000011', '2024-06-07', 'B000016', 300, 1, '2024-06-07 09:06:53'),
('TM-2024-0000012', '2024-06-08', 'B000017', 90, 1, '2024-06-08 05:46:27'),
('TM-2024-0000013', '2024-06-08', 'B000018', 8000, 1, '2024-06-08 09:16:53'),
('TM-2024-0000014', '2024-06-08', 'B000019', 90, 1, '2024-06-08 10:54:31'),
('TM-2024-0000015', '2024-06-09', 'B000020', 800, 1, '2024-06-09 12:48:57'),
('TM-2024-0000016', '2024-06-09', 'B000021', 12, 1, '2024-06-09 13:07:54'),
('TM-2024-0000017', '2024-06-09', 'B000022', 8, 1, '2024-06-09 16:41:52'),
('TM-2024-0000018', '2024-06-09', 'B000024', 900, 1, '2024-06-09 17:00:30'),
('TM-2024-0000019', '2024-06-10', 'B000025', 8000, 1, '2024-06-10 02:12:12'),
('TM-2024-0000020', '2024-06-22', 'B000026', 99, 1, '2024-06-22 12:57:23');

-- --------------------------------------------------------

--
-- Struktur dari tabel `is_users`
--

CREATE TABLE `is_users` (
  `id_user` int(3) NOT NULL,
  `username` varchar(50) NOT NULL,
  `nama_user` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `telepon` varchar(13) DEFAULT NULL,
  `foto` varchar(100) DEFAULT NULL,
  `hak_akses` enum('Super Admin','Manajer','Gudang') NOT NULL,
  `status` enum('aktif','blokir') NOT NULL DEFAULT 'aktif',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `is_users`
--

INSERT INTO `is_users` (`id_user`, `username`, `nama_user`, `password`, `email`, `telepon`, `foto`, `hak_akses`, `status`, `created_at`, `updated_at`) VALUES
(1, 'ihsan', 'ihsan nurdin', 'f9c8074d5a013e0729373f8f74cd0648', 'ihsan163@gmail.com', '085861128968', 'ihsan.jpg', 'Super Admin', 'aktif', '2024-04-01 01:15:15', '2024-06-09 16:34:16'),
(2, 'sarah', 'sarah nurlatifah', '9e9d7a08e048e9d604b79460b54969c3', 'sarah111@gmail.com', '08568089280', 'sarah.jpg', 'Manajer', 'aktif', '2024-04-01 01:15:15', '2024-06-06 14:29:49'),
(3, 'zaenal', 'm zaenal mustofa', '3885dac848498975dddca25e42a53cb5', 'zaenal666@gmail.com', '085758859999', 'zaenal.jpg', 'Gudang', 'aktif', '2024-04-01 01:15:15', '2024-06-06 14:29:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `laporan_stok`
--

CREATE TABLE `laporan_stok` (
  `no` int(11) NOT NULL,
  `kode_obat` varchar(7) NOT NULL,
  `nama_obat` varchar(50) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `satuan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `is_obat`
--
ALTER TABLE `is_obat`
  ADD PRIMARY KEY (`kode_obat`),
  ADD KEY `created_user` (`created_user`),
  ADD KEY `updated_user` (`updated_user`);

--
-- Indeks untuk tabel `is_obat_masuk`
--
ALTER TABLE `is_obat_masuk`
  ADD PRIMARY KEY (`kode_transaksi`),
  ADD KEY `id_barang` (`kode_obat`),
  ADD KEY `created_user` (`created_user`);

--
-- Indeks untuk tabel `is_users`
--
ALTER TABLE `is_users`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `level` (`hak_akses`);

--
-- Indeks untuk tabel `laporan_stok`
--
ALTER TABLE `laporan_stok`
  ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `is_users`
--
ALTER TABLE `is_users`
  MODIFY `id_user` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `laporan_stok`
--
ALTER TABLE `laporan_stok`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `is_obat`
--
ALTER TABLE `is_obat`
  ADD CONSTRAINT `is_obat_ibfk_1` FOREIGN KEY (`created_user`) REFERENCES `is_users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `is_obat_ibfk_2` FOREIGN KEY (`updated_user`) REFERENCES `is_users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `is_obat_masuk`
--
ALTER TABLE `is_obat_masuk`
  ADD CONSTRAINT `is_obat_masuk_ibfk_1` FOREIGN KEY (`kode_obat`) REFERENCES `is_obat` (`kode_obat`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `is_obat_masuk_ibfk_2` FOREIGN KEY (`created_user`) REFERENCES `is_users` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
