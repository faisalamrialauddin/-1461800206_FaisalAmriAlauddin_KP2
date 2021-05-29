-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Bulan Mei 2020 pada 15.49
-- Versi server: 10.1.34-MariaDB
-- Versi PHP: 7.0.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `soal2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `ms_buku`
--

CREATE TABLE `ms_buku` (
  `kode_buku` char(10) NOT NULL,
  `kode_kategori` char(10) DEFAULT NULL,
  `kode_penerbit` char(10) DEFAULT NULL,
  `judul_buku` varchar(50) DEFAULT NULL,
  `jumlah_buku` int(11) DEFAULT NULL,
  `pengarang_buku` varchar(50) DEFAULT NULL,
  `tahun_terbit_buku` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ms_buku`
--

INSERT INTO `ms_buku` (`kode_buku`, `kode_kategori`, `kode_penerbit`, `judul_buku`, `jumlah_buku`, `pengarang_buku`, `tahun_terbit_buku`) VALUES
('B001', 'K001', 'P004', 'Boku No Hero Academia', 4, 'Kohei Horikoshi', 2016),
('B002', 'K002', 'P002', 'Dr. Stone', 2, 'Riichiro Inagaki', 2017),
('B003', 'K003', 'P001', 'Bakusou Kyodai Lets & Go', 5, 'Tetsuhiro Koshita', 1994),
('B004', 'K004', 'P002', 'Kabukichou Sherlock', 2, 'Arthur Conan Doyle', 2019),
('B005', 'K005', 'P002', 'Yami Shibai', 2, 'Tomoya Takashima', 2013),
('B006', 'K006', 'P003', 'Gegege No Kitarou', 3, 'Shigeru Mizuki', 1959),
('B007', 'K001', 'P003', 'Enen No Shouboutai', 3, 'Atsushi Okubo', 2015),
('B008', 'K001', 'P003', 'No Guns Life', 3, 'Tasuku Karasuma', 2014),
('B009', 'K001', 'P001', 'Psycho-Pass', 1, 'Hikaru Miyoshi', 2015),
('B010', 'K002', 'P004', 'Granblue Fantasy The Animation', 4, 'Ayato Kurata', 2017),
('B011', 'K002', 'P004', 'Mugen No Juunin: Immortal', 4, 'Hiroaki Samura', 2019),
('B012', 'K004', 'P002', 'Mairimashita! Iruma-kun', 2, 'Osamu Nishi', 2017),
('B013', 'K004', 'P003', 'Shin Chuuka Ichiban', 3, 'Etsushi Ogawa', 2019),
('B014', 'K005', 'P002', 'Mawaru Penguindrum', 2, 'Etsuko Yakushimaru', 2016),
('B015', 'K005', 'P004', 'Ousama Game The Animation', 4, 'Nobuaki Kanazawa', 2017),
('B016', 'K006', 'P002', 'Fairy Gone', 2, 'Ao Jyumonji', 2019);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ms_detail_pinjam`
--

CREATE TABLE `ms_detail_pinjam` (
  `kode_peminjaman` char(10) DEFAULT NULL,
  `kode_buku` char(10) DEFAULT NULL,
  `tgl_kembali` date DEFAULT NULL,
  `denda` double DEFAULT NULL,
  `status_kembali` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ms_detail_pinjam`
--

INSERT INTO `ms_detail_pinjam` (`kode_peminjaman`, `kode_buku`, `tgl_kembali`, `denda`, `status_kembali`) VALUES
('PMJ001', 'B003', '2019-12-03', 0, 1),
('PMJ002', 'B005', '2019-12-05', 0, 1),
('PMJ003', 'B007', '2019-10-07', 0, 1),
('PMJ004', 'B009', '2019-12-09', 5000, 0),
('PMJ005', 'B004', '2019-11-04', 10000, 0),
('PMJ006', 'B006', '2019-12-06', 15000, 0),
('PMJ007', 'B008', '2019-10-08', 0, 1),
('PMJ008', 'B009', '2019-12-09', 0, 1),
('PMJ009', 'B012', '2019-12-12', 20000, 0),
('PMJ010', 'B010', '2019-12-10', 25000, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ms_kartu_pendaftaran`
--

CREATE TABLE `ms_kartu_pendaftaran` (
  `kode_kartu` char(10) NOT NULL,
  `kode_petugas` char(10) DEFAULT NULL,
  `kode_peminjam` char(10) DEFAULT NULL,
  `tgl_pembuatan` date DEFAULT NULL,
  `tgl_akhir` date DEFAULT NULL,
  `status_aktif` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ms_kartu_pendaftaran`
--

INSERT INTO `ms_kartu_pendaftaran` (`kode_kartu`, `kode_petugas`, `kode_peminjam`, `tgl_pembuatan`, `tgl_akhir`, `status_aktif`) VALUES
('KR001', 'PT001', 'PM001', '2019-12-01', '2020-01-01', 1),
('KR002', 'PT003', 'PM002', '2019-11-02', '2019-12-01', 0),
('KR003', 'PT005', 'PM003', '2019-12-03', '2020-01-01', 1),
('KR004', 'PT002', 'PM004', '2019-12-04', '2020-01-01', 1),
('KR005', 'PT004', 'PM005', '2019-10-05', '2019-11-01', 0),
('KR006', 'PT006', 'PM006', '2019-10-06', '2019-11-01', 0),
('KR007', 'PT003', 'PM007', '2019-12-07', '2020-01-01', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ms_kategori`
--

CREATE TABLE `ms_kategori` (
  `kode_kategori` char(10) NOT NULL,
  `nama_kategori` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ms_kategori`
--

INSERT INTO `ms_kategori` (`kode_kategori`, `nama_kategori`) VALUES
('K001', 'Action'),
('K002', 'Adventure'),
('K003', 'Cars'),
('K004', 'Comedy'),
('K005', 'Dementia'),
('K006', 'Demons'),
('K007', 'Drama'),
('K008', 'Ecchi'),
('K009', 'Fantasy'),
('K010', 'Game'),
('K011', 'Harem'),
('K012', 'Historical'),
('K014', 'Josei'),
('K015', 'Kids'),
('K016', 'Live Action'),
('K017', 'Magic'),
('K018', 'Martial Arts'),
('K019', 'Mecha'),
('K020', 'Military'),
('K021', 'Music'),
('K022', 'Mystery'),
('K023', 'Parody'),
('K024', 'Police'),
('K025', 'Psychological'),
('K026', 'Romance'),
('K027', 'Samurai'),
('K028', 'School'),
('K029', 'Sci-Fi'),
('K030', 'Seinen'),
('K031', 'Shoujo'),
('K032', 'Shoujo Ai'),
('K033', 'Shounen'),
('K034', 'Shounen Ai'),
('K035', 'Slice of Life'),
('K036', 'Space'),
('K037', 'Sport'),
('K038', 'Super Power'),
('K039', 'Supernatural'),
('K040', 'Thriller'),
('K041', 'Vampire'),
('K042', 'Youth');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ms_peminjam`
--

CREATE TABLE `ms_peminjam` (
  `kode_peminjam` char(10) NOT NULL,
  `nama_peminjam` varchar(30) DEFAULT NULL,
  `alamat_peminjam` varchar(50) DEFAULT NULL,
  `telp_peminjam` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ms_peminjam`
--

INSERT INTO `ms_peminjam` (`kode_peminjam`, `nama_peminjam`, `alamat_peminjam`, `telp_peminjam`) VALUES
('PM001', 'Issei Hyoudo', 'Hokkaido', 58),
('PM002', 'Sirzechs Lucifer', 'Nagasaki', 60),
('PM003', 'Vali Lucifer', 'Ishigaki', 61),
('PM004', 'Zeoticus Gremory', 'Kagoshima', 62),
('PM005', 'Riser Phenex', 'Hakodate', 63),
('PM006', 'Gasper Vladi', 'Kobe', 64),
('PM007', 'Yuuto Kiba', 'Yokohama', 65);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ms_peminjaman`
--

CREATE TABLE `ms_peminjaman` (
  `kode_peminjaman` char(10) NOT NULL,
  `kode_petugas` char(10) DEFAULT NULL,
  `kode_peminjam` char(10) DEFAULT NULL,
  `tgl_peminjaman` date DEFAULT NULL,
  `tgl_kembali` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ms_peminjaman`
--

INSERT INTO `ms_peminjaman` (`kode_peminjaman`, `kode_petugas`, `kode_peminjam`, `tgl_peminjaman`, `tgl_kembali`) VALUES
('PMJ001', 'PT006', 'PM001', '2019-12-01', '2019-12-03'),
('PMJ002', 'PT004', 'PM003', '2019-12-03', '2019-12-05'),
('PMJ003', 'PT002', 'PM005', '2019-10-05', '2019-10-07'),
('PMJ004', 'PT001', 'PM007', '2019-12-07', '2019-12-09'),
('PMJ005', 'PT003', 'PM002', '2019-11-02', '2019-11-04'),
('PMJ006', 'PT005', 'PM004', '2019-12-04', '2019-12-06'),
('PMJ007', 'PT001', 'PM006', '2019-10-06', '2019-10-08'),
('PMJ008', 'PT002', 'PM007', '2019-12-07', '2019-12-09'),
('PMJ009', 'PT003', 'PM006', '2019-12-12', '2019-12-14'),
('PMJ010', 'PT004', 'PM005', '2019-12-10', '2019-12-12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ms_penerbit`
--

CREATE TABLE `ms_penerbit` (
  `kode_penerbit` char(10) NOT NULL,
  `nama_penerbit` varchar(20) DEFAULT NULL,
  `alamat_penerbit` varchar(50) DEFAULT NULL,
  `telp_penerbit` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ms_penerbit`
--

INSERT INTO `ms_penerbit` (`kode_penerbit`, `nama_penerbit`, `alamat_penerbit`, `telp_penerbit`) VALUES
('P001', 'Shueisa', 'Kyoto', 14617),
('P002', 'Kodansha', 'Tokyo', 14618),
('P003', 'Shogakukan', 'Osaka', 14619),
('P004', 'Square Enix', 'Sapporo', 14620);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ms_petugas`
--

CREATE TABLE `ms_petugas` (
  `kode_petugas` char(10) NOT NULL,
  `nama_petugas` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ms_petugas`
--

INSERT INTO `ms_petugas` (`kode_petugas`, `nama_petugas`) VALUES
('PT001', 'Rias Gremory'),
('PT002', 'Akeno Himejima'),
('PT003', 'Koneko Toujou'),
('PT004', 'Xenovia Quarta'),
('PT005', 'Irina Shidou'),
('PT006', 'Asia Argento');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `ms_buku`
--
ALTER TABLE `ms_buku`
  ADD PRIMARY KEY (`kode_buku`),
  ADD KEY `fk_kategori` (`kode_kategori`),
  ADD KEY `fk_penerbit` (`kode_penerbit`);

--
-- Indeks untuk tabel `ms_detail_pinjam`
--
ALTER TABLE `ms_detail_pinjam`
  ADD KEY `kode_peminjaman` (`kode_peminjaman`),
  ADD KEY `kode_buku` (`kode_buku`);

--
-- Indeks untuk tabel `ms_kartu_pendaftaran`
--
ALTER TABLE `ms_kartu_pendaftaran`
  ADD PRIMARY KEY (`kode_kartu`),
  ADD KEY `fk_petugas` (`kode_petugas`),
  ADD KEY `fk_peminjam` (`kode_peminjam`);

--
-- Indeks untuk tabel `ms_kategori`
--
ALTER TABLE `ms_kategori`
  ADD PRIMARY KEY (`kode_kategori`);

--
-- Indeks untuk tabel `ms_peminjam`
--
ALTER TABLE `ms_peminjam`
  ADD PRIMARY KEY (`kode_peminjam`);

--
-- Indeks untuk tabel `ms_peminjaman`
--
ALTER TABLE `ms_peminjaman`
  ADD PRIMARY KEY (`kode_peminjaman`),
  ADD KEY `fk_petugas2` (`kode_petugas`),
  ADD KEY `fk_peminjam2` (`kode_peminjam`);

--
-- Indeks untuk tabel `ms_penerbit`
--
ALTER TABLE `ms_penerbit`
  ADD PRIMARY KEY (`kode_penerbit`);

--
-- Indeks untuk tabel `ms_petugas`
--
ALTER TABLE `ms_petugas`
  ADD PRIMARY KEY (`kode_petugas`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `ms_buku`
--
ALTER TABLE `ms_buku`
  ADD CONSTRAINT `fk_kategori` FOREIGN KEY (`kode_kategori`) REFERENCES `ms_kategori` (`kode_kategori`),
  ADD CONSTRAINT `fk_penerbit` FOREIGN KEY (`kode_penerbit`) REFERENCES `ms_penerbit` (`kode_penerbit`);

--
-- Ketidakleluasaan untuk tabel `ms_detail_pinjam`
--
ALTER TABLE `ms_detail_pinjam`
  ADD CONSTRAINT `ms_detail_pinjam_ibfk_1` FOREIGN KEY (`kode_peminjaman`) REFERENCES `ms_peminjaman` (`kode_peminjaman`),
  ADD CONSTRAINT `ms_detail_pinjam_ibfk_2` FOREIGN KEY (`kode_buku`) REFERENCES `ms_buku` (`kode_buku`);

--
-- Ketidakleluasaan untuk tabel `ms_kartu_pendaftaran`
--
ALTER TABLE `ms_kartu_pendaftaran`
  ADD CONSTRAINT `fk_peminjam` FOREIGN KEY (`kode_peminjam`) REFERENCES `ms_peminjam` (`kode_peminjam`),
  ADD CONSTRAINT `fk_petugas` FOREIGN KEY (`kode_petugas`) REFERENCES `ms_petugas` (`kode_petugas`);

--
-- Ketidakleluasaan untuk tabel `ms_peminjaman`
--
ALTER TABLE `ms_peminjaman`
  ADD CONSTRAINT `fk_peminjam2` FOREIGN KEY (`kode_peminjam`) REFERENCES `ms_peminjam` (`kode_peminjam`),
  ADD CONSTRAINT `fk_petugas2` FOREIGN KEY (`kode_petugas`) REFERENCES `ms_petugas` (`kode_petugas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
