-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 13 Sep 2023 pada 03.51
-- Versi Server: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `asshofa_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_poin`
--

CREATE TABLE IF NOT EXISTS `detail_poin` (
  `id_detail_poin` int(10) NOT NULL AUTO_INCREMENT,
  `tanggal` date NOT NULL,
  `tahun_ajaran` char(9) NOT NULL,
  `nis` varchar(6) NOT NULL,
  `id_pelanggaran` tinyint(3) DEFAULT NULL,
  `id_prestasi` tinyint(3) DEFAULT NULL,
  `id_hafalan` tinyint(3) DEFAULT NULL,
  `ket` text,
  PRIMARY KEY (`id_detail_poin`),
  KEY `nis` (`nis`),
  KEY `id_pelanggaran` (`id_pelanggaran`),
  KEY `id_prestasi` (`id_prestasi`),
  KEY `tahun_ajaran` (`tahun_ajaran`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=117 ;

--
-- Dumping data untuk tabel `detail_poin`
--

INSERT INTO `detail_poin` (`id_detail_poin`, `tanggal`, `tahun_ajaran`, `nis`, `id_pelanggaran`, `id_prestasi`, `id_hafalan`, `ket`) VALUES
(108, '2023-09-05', '2023/2024', '11115', NULL, NULL, 10, ''),
(110, '2023-09-05', '2023/2024', '11115', NULL, NULL, 11, ''),
(111, '2023-09-05', '2023/2024', '11115', NULL, NULL, 18, ''),
(116, '2023-09-13', '2023/2024', '11115', NULL, 6, NULL, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE IF NOT EXISTS `guru` (
  `nip` char(18) NOT NULL,
  `nama_guru` varchar(30) NOT NULL,
  `no_hp` varchar(12) NOT NULL,
  `jabatan` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`nip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`nip`, `nama_guru`, `no_hp`, `jabatan`) VALUES
('111111111100000000', 'Gorgi ', '123455', 'Guru'),
('111111111111111111', 'Ari Masyhuri', '0811122223', 'Direktur Utama'),
('111111111111111116', 'Shinta Shinta', '08111177777', 'Guru'),
('111111111111111117', 'Jelita Jelita', '08111111329', 'Guru'),
('111111111111111119', 'Harry Harry', '081111111154', 'Guru'),
('111111111111122222', 'Joko Joko', '09876554322', 'BK'),
('111111111111445555', 'Khairen Khairen', '0987687666', 'Guru'),
('122334554553344334', 'Marsha Marshanda', '087652525252', 'Guru'),
('888888888888888888', 'Kariman', '1234343434', 'Guru');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hafalan`
--

CREATE TABLE IF NOT EXISTS `hafalan` (
  `id_hafalan` tinyint(3) NOT NULL AUTO_INCREMENT,
  `nama_hafalan` varchar(100) NOT NULL,
  `poin` smallint(3) NOT NULL,
  PRIMARY KEY (`id_hafalan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data untuk tabel `hafalan`
--

INSERT INTO `hafalan` (`id_hafalan`, `nama_hafalan`, `poin`) VALUES
(1, 'Juz 1', 10),
(2, 'Juz 2', 10),
(3, 'Juz 3', 10),
(4, 'Juz 4', 10),
(5, 'Juz 5', 10),
(6, 'Juz 6', 10),
(7, 'Juz 7', 10),
(8, 'Juz 8', 10),
(9, 'Juz 9', 10),
(10, 'Juz 10', 10),
(11, 'Juz 11', 10),
(12, 'Juz 12', 10),
(13, 'Juz 13', 10),
(14, 'Juz 14', 10),
(15, 'Juz 15', 10),
(16, 'Juz 16', 10),
(17, 'Juz 17', 10),
(18, 'Juz 18', 10),
(19, 'Juz 19', 10),
(20, 'Juz 20', 10),
(21, 'Juz 21', 10),
(22, 'Juz 22', 10),
(23, 'Juz 23', 10),
(24, 'Juz 24', 10),
(25, 'Juz 25', 10),
(26, 'Juz 26', 10),
(27, 'Juz 27', 10),
(28, 'Juz 28', 10),
(34, 'Juz 29', 10),
(35, 'Juz 30', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jurusan`
--

CREATE TABLE IF NOT EXISTS `jurusan` (
  `id_jurusan` tinyint(2) NOT NULL AUTO_INCREMENT,
  `nama_jurusan` varchar(50) NOT NULL,
  PRIMARY KEY (`id_jurusan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=27 ;

--
-- Dumping data untuk tabel `jurusan`
--

INSERT INTO `jurusan` (`id_jurusan`, `nama_jurusan`) VALUES
(18, 'IPA'),
(19, 'IPS'),
(20, 'Bahasa'),
(21, 'Quran'),
(22, 'Kitab Kuning'),
(23, 'Ilmu Hadis'),
(24, 'Sastra Arab'),
(25, 'Sejarah Kebudayaan Islam'),
(26, 'PKN');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kat_pelanggaran`
--

CREATE TABLE IF NOT EXISTS `kat_pelanggaran` (
  `id_kat_pelanggaran` tinyint(2) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(30) NOT NULL,
  PRIMARY KEY (`id_kat_pelanggaran`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data untuk tabel `kat_pelanggaran`
--

INSERT INTO `kat_pelanggaran` (`id_kat_pelanggaran`, `nama_kategori`) VALUES
(10, 'Ketidakpatuhan Terhadap Aturan'),
(11, 'Pelanggaran Moral dan Etika'),
(12, 'Norma Sosial dan Kedisiplinan'),
(13, 'Kedisiplinan dan Kesehatan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE IF NOT EXISTS `kelas` (
  `id_kelas` tinyint(3) NOT NULL AUTO_INCREMENT,
  `id_jurusan` tinyint(2) NOT NULL,
  `tingkat_kelas` varchar(4) NOT NULL,
  `sub_kelas` char(1) NOT NULL,
  `nip` char(18) DEFAULT NULL,
  `jml_siswa` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id_kelas`),
  KEY `id_jurusan` (`id_jurusan`),
  KEY `nip` (`nip`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=39 ;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `id_jurusan`, `tingkat_kelas`, `sub_kelas`, `nip`, `jml_siswa`) VALUES
(30, 19, 'X', 'A', '111111111111111119', 30),
(31, 20, 'X', 'A', '111111111111111111', 30),
(36, 23, 'X', 'A', '888888888888888888', 30),
(37, 18, 'X', 'A', '111111111100000000', 30),
(38, 18, 'X', 'A', '111111111111122222', 30);

-- --------------------------------------------------------

--
-- Struktur dari tabel `orang_tua`
--

CREATE TABLE IF NOT EXISTS `orang_tua` (
  `id_ortu` int(5) NOT NULL AUTO_INCREMENT,
  `nama_ortu` varchar(30) NOT NULL,
  `alamat_ortu` text NOT NULL,
  `no_hp` varchar(12) NOT NULL,
  PRIMARY KEY (`id_ortu`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=50 ;

--
-- Dumping data untuk tabel `orang_tua`
--

INSERT INTO `orang_tua` (`id_ortu`, `nama_ortu`, `alamat_ortu`, `no_hp`) VALUES
(45, 'Agus Agus', 'Ps Kemis', '082222222222'),
(46, 'Beni Cahyo', 'Sepatan', '0811111112'),
(47, 'Ali Udin', 'Rajeg', '08111111333'),
(48, 'Januar Januar', 'Rajeg', '087655443877'),
(49, 'Handoko', 'Rajeg', '0882828222');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggaran`
--

CREATE TABLE IF NOT EXISTS `pelanggaran` (
  `id_pelanggaran` tinyint(3) NOT NULL AUTO_INCREMENT,
  `nama_pelanggaran` varchar(150) NOT NULL,
  `id_sub_kategori` tinyint(2) NOT NULL,
  `poin` tinyint(3) NOT NULL,
  PRIMARY KEY (`id_pelanggaran`),
  KEY `id_kat_pelanggaran` (`id_sub_kategori`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

--
-- Dumping data untuk tabel `pelanggaran`
--

INSERT INTO `pelanggaran` (`id_pelanggaran`, `nama_pelanggaran`, `id_sub_kategori`, `poin`) VALUES
(17, 'Telat datang ke pondok', 12, 5),
(18, 'Kabur dari Pondok', 12, 20),
(19, 'Memasuki Asrama lawan jenis', 12, 10),
(20, 'Berkomunikasi dengan santri lawan jenis', 12, 20),
(21, 'Membawa HP, Mp3, atau Laptop', 13, 20),
(22, 'Membawa novel terlarang, membawa barang-barang yang tidak mendidik', 13, 5),
(23, 'Membawa baju terlarang', 13, 5),
(24, 'Berbuat onar di Pondok (seperti urak-urakan atau teriak-teriak saat ulang tahun atau acara lainnya)', 14, 10),
(25, 'Mencuri', 14, 50),
(26, 'Bergaul dengan kakak/adik kelas di luar batas', 14, 10),
(27, 'Berkencan dengan lawan jenis', 15, 20),
(28, 'Merokok', 15, 50),
(29, 'Terlibat dalam Narkoba, Asusila, Judi, Miras, Lesbi, dan Homo', 16, 100),
(30, 'Berkelahi, Pengeroyokan, Berkata kasar, Menghina, dan Bullying', 17, 20),
(31, 'Meminta kepada orang lain secara paksa (malak)', 17, 20),
(32, 'Berbohong/Menipu', 17, 20),
(33, 'Tidak mengikuti pembelajaran/kegiatan pesantren tanpa keterangan', 18, 10),
(34, 'Tidak memakai seragam yang telah ditentukan', 19, 5),
(35, 'Tidak membawa peralatan pembelajaran', 19, 1),
(36, 'Membuang sampah sembarangan', 20, 2),
(37, 'Tidak melaksanakan piket, Kamar kotor/piket tidak bersih', 20, 5),
(38, 'Pura-pura sakit', 21, 5),
(39, 'Menyimpan barang-barang pribadi/pembalut di kamar mandi', 21, 2),
(40, 'Tidak memakai alas kaki keluar kamar/ memakai alas kaki ke kamar/ teras', 22, 3),
(41, 'Membuang nasi dan lauk ke dalam tong sampah atau tempat lainnya', 22, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `prestasi`
--

CREATE TABLE IF NOT EXISTS `prestasi` (
  `id_prestasi` tinyint(3) NOT NULL AUTO_INCREMENT,
  `nama_prestasi` varchar(100) NOT NULL,
  `poin` smallint(3) NOT NULL,
  PRIMARY KEY (`id_prestasi`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data untuk tabel `prestasi`
--

INSERT INTO `prestasi` (`id_prestasi`, `nama_prestasi`, `poin`) VALUES
(3, 'Juara lomba tingkat Kabupaten/Kota', 50),
(4, 'Juara lomba tingkat Kecamatan', 25),
(5, 'Juara lomba tingkat Sekolah', 20),
(6, 'Peringkat 1-3 di kelas', 20),
(7, 'Pengurus aktif OSIS/PK/Pramuka per tahun', 10),
(8, 'Pengurus aktif kelas per tahun', 5),
(9, 'Pengurus aktif organisasi kemasyarakatan', 5),
(10, 'Menjadi panitia kegiatan sekolah', 4),
(11, 'Mengikuti lomba sebagai wakil sekolah', 3),
(12, 'Mendapat nilai tertinggi ulangan harian', 2),
(18, 'Juara lomba tingkat nasional', 150),
(19, 'Juara lomba tingkat provinsi', 100);

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE IF NOT EXISTS `siswa` (
  `nis` varchar(6) NOT NULL,
  `nama_siswa` varchar(30) NOT NULL,
  `th_angkatan` year(4) NOT NULL,
  `alamat` text NOT NULL,
  `id_kelas` tinyint(3) NOT NULL,
  `id_ortu` int(5) NOT NULL,
  PRIMARY KEY (`nis`),
  KEY `id_ortu` (`id_ortu`),
  KEY `id_kelas` (`id_kelas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`nis`, `nama_siswa`, `th_angkatan`, `alamat`, `id_kelas`, `id_ortu`) VALUES
('11115', 'Siti Siti', 2023, 'Rajeg', 30, 46);

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa_do`
--

CREATE TABLE IF NOT EXISTS `siswa_do` (
  `nis` varchar(6) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `th_keluar` year(4) NOT NULL,
  `id_jurusan` tinyint(2) NOT NULL,
  PRIMARY KEY (`nis`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `siswa_do`
--

INSERT INTO `siswa_do` (`nis`, `nama`, `th_keluar`, `id_jurusan`) VALUES
('11111', 'Zico Zico', 2023, 20),
('11115', 'Jaguar Jaguary', 2023, 21);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sub_kat_pelanggaran`
--

CREATE TABLE IF NOT EXISTS `sub_kat_pelanggaran` (
  `id_sub_kategori` tinyint(2) NOT NULL AUTO_INCREMENT,
  `nama_sub_kategori` varchar(100) NOT NULL,
  `id_kat_pelanggaran` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_sub_kategori`),
  KEY `id_kat_pelanggaran` (`id_kat_pelanggaran`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data untuk tabel `sub_kat_pelanggaran`
--

INSERT INTO `sub_kat_pelanggaran` (`id_sub_kategori`, `nama_sub_kategori`, `id_kat_pelanggaran`) VALUES
(12, 'Kehadiran dan Komunikasi', 10),
(13, 'Barang dan Peralatan Terlarang', 10),
(14, 'Perilaku Tidak Pantas', 10),
(15, 'Etika Kehidupan Pribadi', 11),
(16, 'Pelanggaran Moral Berat', 11),
(17, 'Perilaku Agresif', 12),
(18, 'Kehadiran dan Keterlibatan', 13),
(19, 'Berpakaian dan Peralatan', 13),
(20, 'Kebersihan dan Lingkungan', 13),
(21, 'Kesehatan dan Kondisi Fisik', 13),
(22, 'Kedisiplinan Umum', 13);

-- --------------------------------------------------------

--
-- Struktur dari tabel `th_ajaran`
--

CREATE TABLE IF NOT EXISTS `th_ajaran` (
  `id_th_ajaran` mediumint(5) NOT NULL AUTO_INCREMENT,
  `tahun_ajaran` char(9) NOT NULL,
  `sekarang` char(1) NOT NULL,
  PRIMARY KEY (`id_th_ajaran`),
  UNIQUE KEY `tahun_ajaran` (`tahun_ajaran`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data untuk tabel `th_ajaran`
--

INSERT INTO `th_ajaran` (`id_th_ajaran`, `tahun_ajaran`, `sekarang`) VALUES
(6, '2021/2022', 'N'),
(7, '2022/2023', 'N'),
(8, '2023/2024', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_login` int(5) NOT NULL AUTO_INCREMENT,
  `username` varchar(15) NOT NULL,
  `password` text NOT NULL,
  `nip` char(18) DEFAULT NULL,
  `nis` varchar(6) DEFAULT NULL,
  `id_ortu` int(5) DEFAULT NULL,
  `hak_akses` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_login`),
  KEY `nip` (`nip`),
  KEY `nis` (`nis`),
  KEY `id_ortu` (`id_ortu`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_login`, `username`, `password`, `nip`, `nis`, `id_ortu`, `hak_akses`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '', '12345', 0, 1),
(26, 'walikelas', 'dcf52f84dbf511ee4a0abcfc18093ee4', '111111111111111119', '', 0, 3),
(27, 'direktur', '4fbfd324f5ffcdff5dbf6f019b02eca8', '111111111111111111', '', 0, 4),
(30, 'orangtua', '344c999a63cd55b3035cbf76c2691f88', '', '11115', 45, 5),
(31, 'beni', 'b94ce3c426a5ab6032624ab62a2b0b95', '', '11112', 46, 5),
(32, 'kasi', 'b68fcc3e90e4fecf7182587472526728', '111111111111122222', '', 0, 2);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD CONSTRAINT `kelas_ibfk_1` FOREIGN KEY (`id_jurusan`) REFERENCES `jurusan` (`id_jurusan`),
  ADD CONSTRAINT `kelas_ibfk_2` FOREIGN KEY (`nip`) REFERENCES `guru` (`nip`);

--
-- Ketidakleluasaan untuk tabel `pelanggaran`
--
ALTER TABLE `pelanggaran`
  ADD CONSTRAINT `pelanggaran_ibfk_1` FOREIGN KEY (`id_sub_kategori`) REFERENCES `sub_kat_pelanggaran` (`id_sub_kategori`);

--
-- Ketidakleluasaan untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`),
  ADD CONSTRAINT `siswa_ibfk_2` FOREIGN KEY (`id_ortu`) REFERENCES `orang_tua` (`id_ortu`);

--
-- Ketidakleluasaan untuk tabel `sub_kat_pelanggaran`
--
ALTER TABLE `sub_kat_pelanggaran`
  ADD CONSTRAINT `sub_kat_pelanggaran_ibfk_1` FOREIGN KEY (`id_kat_pelanggaran`) REFERENCES `kat_pelanggaran` (`id_kat_pelanggaran`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
