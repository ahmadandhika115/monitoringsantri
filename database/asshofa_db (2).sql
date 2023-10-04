-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 14 Sep 2023 pada 08.39
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data untuk tabel `detail_poin`
--

INSERT INTO `detail_poin` (`id_detail_poin`, `tanggal`, `tahun_ajaran`, `nis`, `id_pelanggaran`, `id_prestasi`, `id_hafalan`, `ket`) VALUES
(1, '2023-09-14', '2023/2024', '23419', NULL, 6, NULL, 'Tingkatkan'),
(2, '2023-09-14', '2023/2024', '23420', NULL, 12, NULL, 'Bagus'),
(3, '2023-09-14', '2023/2024', '23429', NULL, 12, NULL, 'Bagus'),
(4, '2023-09-14', '2023/2024', '23430', NULL, 11, NULL, 'Bagus'),
(5, '2023-09-14', '2023/2024', '23421', NULL, 10, NULL, 'Tingkatkan'),
(6, '2023-09-14', '2023/2024', '23422', NULL, 6, NULL, 'Tingkatkan'),
(7, '2023-09-14', '2023/2024', '23423', NULL, 5, NULL, 'Tingkatkan'),
(8, '2023-09-14', '2023/2024', '23424', NULL, 8, NULL, 'Bagus'),
(9, '2023-09-14', '2023/2024', '23425', NULL, 10, NULL, 'Baik'),
(10, '2023-09-14', '2023/2024', '23426', NULL, 8, NULL, 'Bagus'),
(11, '2023-09-14', '2023/2024', '23427', NULL, 12, NULL, 'Baik'),
(12, '2023-09-14', '2023/2024', '23428', NULL, 4, NULL, 'Baik'),
(13, '2023-09-14', '2023/2024', '23419', 18, NULL, NULL, 'Jangan diulangi'),
(14, '2023-09-14', '2023/2024', '23428', 21, NULL, NULL, 'Disita'),
(15, '2023-09-14', '2023/2024', '23423', 17, NULL, NULL, 'Jangan diulangi'),
(16, '2023-09-14', '2023/2024', '23429', 31, NULL, NULL, 'Jangan diulangi'),
(17, '2023-09-14', '2023/2024', '23438', 35, NULL, NULL, 'Jangan diulangi'),
(18, '2023-09-14', '2023/2024', '23439', 40, NULL, NULL, 'Tidak baik'),
(19, '2023-09-14', '2023/2024', '23441', 37, NULL, NULL, 'Jangan diulangi'),
(20, '2023-09-14', '2023/2024', '23419', 25, NULL, NULL, 'Jangan diulangi'),
(21, '2023-09-14', '2023/2024', '23419', NULL, NULL, 35, ''),
(22, '2023-09-14', '2023/2024', '23421', NULL, NULL, 35, ''),
(23, '2023-09-14', '2023/2024', '23439', NULL, NULL, 35, ''),
(24, '2023-09-14', '2023/2024', '23434', NULL, NULL, 35, ''),
(25, '2023-09-14', '2023/2024', '23441', NULL, NULL, 35, ''),
(26, '2023-09-14', '2023/2024', '23428', NULL, NULL, 35, ''),
(27, '2023-09-14', '2023/2024', '23425', NULL, NULL, 35, '');

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
('195602120632179432', 'Agus Amin Subhan. S.Pd. ', '085255214895', 'Direktur'),
('195709282003126532', 'Sri Eko Handayani Ratnawa S.Ag', '085867354211', 'Wali Kelas'),
('195802129001235743', 'Sriyana, M.Pd.', '085292502250', 'Wali Kelas'),
('195807072001021683', 'Yohana Umiyati, S.Ag.', '082109098888', 'Wali Kelas'),
('195912036217893216', 'Cahyono Agus W.,S.Pd.', '087325678419', 'Wali Kelas'),
('196002112004001643', 'Drs. Supriyono Wibowo', '081354321166', 'Kepala Seksi'),
('196003242001032451', 'Drs. Nugroho Sukowati', '085614895432', 'Kepala Seksi'),
('196012124682345721', 'Niken Tyas Utami, S.Pd.', '081209321212', 'Wali Kelas'),
('196012210953218765', 'Muh.Wardiyanto, S.Ag.', '089867813010', 'Wali Kelas'),
('196110061988031004', 'Drs. Agung Widyatmoko, M.Pd', '082109542874', 'Kepala Seksi'),
('196203252100021134', 'Erma Ade Susmonowati, S.Pd.', '081256321452', 'Wali Kelas'),
('196302031988031010', 'Drs.Aragani Mizan Zakaria,M.Pd', '088134378134', 'Wali Kelas'),
('196601092002345123', 'Budiono Sujatmiko S.Pd.', '089876543210', 'Wali Kelas'),
('196601182008012001', 'Diah Herawati, S.Pd.', '082134567213', 'Wali Kelas'),
('196603042003017690', 'Bela Suryanti, S.Pd', '089822447788', 'Wali Kelas'),
('197006082004028799', 'Slamet Riyanti, S.Pd.', '085867009911', 'Wali Kelas'),
('197103072006042003', 'Siti Ulfiyatul Hoiriyah, S.Pd.', '081256790321', 'Wali Kelas'),
('197310062001120011', 'Eka Vicianto, S.Pd.', '081234554321', 'Wali Kelas'),
('197702098943217654', 'Endang Listyandari, S.Pd', '089854123764', 'Wali Kelas'),
('198204262009022004', 'Himawati Widyastuti, M.Si.', '081215346789', 'Wali Kelas');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=48 ;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `id_jurusan`, `tingkat_kelas`, `sub_kelas`, `nip`, `jml_siswa`) VALUES
(39, 18, 'X', 'A', '196603042003017690', 30),
(40, 19, 'X', 'A', '196601092002345123', 28),
(41, 21, 'X', 'A', '195912036217893216', 32),
(42, 22, 'X', 'A', '196601182008012001', 31),
(43, 23, 'X', 'A', '196302031988031010', 30),
(44, 24, 'X', 'A', '197310062001120011', 32),
(46, 25, 'X', 'A', '197702098943217654', 30),
(47, 26, 'X', 'A', '196203252100021134', 30);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=92 ;

--
-- Dumping data untuk tabel `orang_tua`
--

INSERT INTO `orang_tua` (`id_ortu`, `nama_ortu`, `alamat_ortu`, `no_hp`) VALUES
(50, 'Ridwan Asrori', 'Ranca Bango, Rajeg, Tangerang, Banten', '087876567654'),
(51, 'Muhammad Aris', 'Bantar Panjang, Tigaraksa, Tangerang, Banten', '086518762547'),
(52, 'Yudha Yumayana', 'Binangun, Waringin Kurung, Serang, Banten', '081245632987'),
(53, 'Wachid Cahyadi', 'Banjarsari, Warunggunung, Lebak, Banten', '088877662345'),
(54, 'Rahmat Hakim', 'Cokopsulanjana, Waringin Kurung, Serang, Banten', '086765540077'),
(55, 'Ridwan Hanif', 'Cempaka, Warunggunung, Lebak, Banten', '081155227766'),
(56, 'Aris Joko Saraswo', 'Baros, Warunggunung, Lebak, Banten', '087656342764'),
(57, 'Bambang', 'Bojong Renged, Teluknaga, Tangerang, Banten', '087676873201'),
(58, 'Anton Tedda', 'Cibuah, Warunggunung, Lebak, Banten', '086576543217'),
(59, 'Herry Wicaksono', 'Gandri, Penengahan, Lampung Selatan, Lampung', '08765476865'),
(60, 'Ratno Hermawan', 'Batuliman Indah, Candipuro, Lampung Selatan, Lampung', '087654567876'),
(61, 'Makmur Amin', 'Belambangan, Penengahan, Lampung Selatan, Lampung', '08767655565'),
(62, 'Michael Christianto', 'Babakan Asem, Teluknaga, Tangerang, Banten', '087654657654'),
(63, 'Arief Rahman', 'Ciater, Serpong, Tangerang Selatan, Banten', '086576543565'),
(64, 'Basworo Dibyo', 'Daon, Rajeg, Tangerang, Banten', '087654657654'),
(65, 'Dodiek Hari', 'Kemuning, Waringin Kurung, Serang, Banten', '086547654376'),
(66, 'N Wicaksono KP', 'Cilenggang, Serpong, Tangerang Selatan, Banten', '087766634551'),
(67, 'Randy Handuro', 'Padan, Penengahan, Lampung Selatan, Lampung', '08333567565'),
(68, 'S. Budi Santoso', 'Jagabaya, Warunggunung, Lebak, Banten', '087999453254'),
(69, 'Hadi Sumarsono', 'Rajegmulya, Rajeg, Tangerang, Banten', '081111564376'),
(70, 'Teguh Sumampaw', 'Suka Manah, Rajeg, Tangerang, Banten', '084545777325'),
(71, 'Riszki Gunawan', 'Gayam, Penengahan, Lampung Selatan, Lampung', '085553424676'),
(73, 'Rian Sofyan', 'Kekiling, Penengahan, Lampung Selatan, Lampung', '087657676764'),
(74, 'Ali Wijaya', 'Kuripan, Penengahan, Lampung Selatan, Lampung', '086543567654'),
(75, 'Satromo', 'Kelau, Penengahan, Lampung Selatan, Lampung', '08654565432'),
(76, 'Wakik', 'Mekarsari, Rajeg, Tangerang, Banten', '08676565434'),
(77, 'Anyari', 'Rajeg, Rajeg, Tangerang, Banten', '087777654590'),
(78, 'Abu Hasan', 'Gedung Harta, Penengahan, Lampung Selatan, Lampung', '087676545657'),
(79, 'Isbandi', 'Buaran, Serpong, Tangerang Selatan, Banten', '087676546765'),
(80, 'Abdus Salam', 'Kelaten, Penengahan, Lampung Selatan, Lampung', '087775455532'),
(81, 'Jumali', 'Kampung Baru, Penengahan, Lampung Selatan, Lampung', '084446576543'),
(82, 'Kusnadi', 'Jambu Karya, Rajeg, Tangerang, Banten', '082225556776'),
(83, 'Didit', 'Pasuruan, Penengahan, Lampung Selatan, Lampung', '087654657654'),
(84, 'Untung', 'Beringin Kencana, Candipuro, Lampung Selatan, Lampung', '085666543234'),
(85, 'Junaidi', 'Kuripan, Penengahan, Lampung Selatan, Lampung', '087654678764'),
(86, 'Amas Yunus', 'Kampung Baru, Penengahan, Lampung Selatan, Lampung', '089996565432'),
(87, 'Eddy Machmud', 'Kekiling, Penengahan, Lampung Selatan, Lampung', '08765555578'),
(88, 'Riza Falepi', 'Gandri, Penengahan, Lampung Selatan, Lampung', '087656565434'),
(89, 'Bubun Budiawan', 'Ranca Bango, Rajeg, Tangerang, Banten', '08765554324'),
(90, 'Haris Mulyana', 'Bantar Panjang, Tigaraksa, Tangerang, Banten', '084354567687');

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
('23419', 'Ahmad Umar Said', 2023, 'Ranca Bango, Rajeg, Tangerang, Banten', 39, 50),
('23420', 'Anggun Septin Kartika Wulan', 2023, 'Bantar Panjang, Tigaraksa, Tangerang, Banten', 39, 51),
('23421', 'Annisah Nur Hidayati', 2023, 'Binangun, Waringin Kurung, Serang, Banten', 39, 52),
('23422', 'Arif Dwi Susanto', 2023, 'Banjarsari, Warunggunung, Lebak, Banten', 39, 53),
('23423', 'Ariyani Putri Pertiwi', 2023, 'Cokopsulanjana, Waringin Kurung, Serang, Banten', 39, 54),
('23424', 'Asep Cahya Bangkit Kuswandi', 2023, 'Cempaka, Warunggunung, Lebak, Banten', 39, 55),
('23425', 'Avido Tinandhia', 2023, 'Baros, Warunggunung, Lebak, Banten', 39, 56),
('23426', 'Bayu Wijayanto', 2023, 'Bojong Renged, Teluknaga, Tangerang, Banten', 39, 57),
('23427', 'Donny Mahardika', 2023, 'Cibuah, Warunggunung, Lebak, Banten', 39, 58),
('23428', 'Cahyo Budi Utomo', 2023, 'Gandri, Penengahan, Lampung Selatan, Lampung', 39, 59),
('23429', 'Daru Pahlevi', 2023, 'Batuliman Indah, Candipuro, Lampung Selatan, Lampung', 40, 60),
('23430', 'Deni Setiyawan', 2023, 'Belambangan, Penengahan, Lampung Selatan, Lampung', 40, 61),
('23431', 'Ditto Krisna Aji', 2023, 'Babakan Asem, Teluknaga, Tangerang, Banten', 40, 62),
('23432', 'Fathul Husni', 2023, 'Ciater, Serpong, Tangerang Selatan, Banten', 40, 63),
('23433', 'Ferdian Nur Rizky', 2023, 'Daon, Rajeg, Tangerang, Banten', 40, 64),
('23434', 'Fitri Hera Nurviandini', 2023, 'Kemuning, Waringin Kurung, Serang, Banten', 40, 65),
('23435', 'Galih Rizal Basroni', 2023, 'Cilenggang, Serpong, Tangerang Selatan, Banten', 40, 66),
('23436', 'Gigih Nur Pratomo', 2023, 'Padan, Penengahan, Lampung Selatan, Lampung', 40, 67),
('23437', 'Gilang Risky Fauzi Putra', 2023, 'Jagabaya, Warunggunung, Lebak, Banten', 40, 68),
('23438', 'Harmanto', 2023, 'Rajegmulya, Rajeg, Tangerang, Banten', 40, 69),
('23439', 'Heri Gusmiyanto', 2023, 'Suka Manah, Rajeg, Tangerang, Banten', 41, 70),
('23440', 'Isna Wahyuntari', 2023, 'Gayam, Penengahan, Lampung Selatan, Lampung', 41, 71),
('23441', 'Mimi Sabdani', 2023, 'Kekiling, Penengahan, Lampung Selatan, Lampung', 41, 73),
('23442', 'Adrian Dwiki Yudha', 2023, 'Kuripan, Penengahan, Lampung Selatan, Lampung', 41, 74),
('23443', 'Bristia Prabowo', 2023, 'Kelau, Penengahan, Lampung Selatan, Lampung', 41, 75),
('23444', 'Dewangga Adila Nugraha', 2023, 'Mekarsari, Rajeg, Tangerang, Banten', 42, 76),
('23445', 'Eko Puji Lestari', 2023, 'Rajeg, Rajeg, Tangerang, Banten', 42, 77),
('23446', 'Iin Mutaqima', 2023, 'Gedung Harta, Penengahan, Lampung Selatan, Lampung', 42, 78),
('23447', 'Ahmad Habibi', 2023, 'Buaran, Serpong, Tangerang Selatan, Banten', 42, 79),
('23448', 'Heri Purnama', 2023, 'Kelaten, Penengahan, Lampung Selatan, Lampung', 42, 80),
('23449', 'Lukito Njono Putro', 2023, 'Kampung Baru, Penengahan, Lampung Selatan, Lampung', 43, 81),
('23492', 'Yoga Arif Santosa', 2023, 'Beringin Kencana, Candipuro, Lampung Selatan, Lampung', 43, 84),
('23950', 'Nia Suparniatun', 2023, 'Jambu Karya, Rajeg, Tangerang, Banten', 43, 82),
('23951', 'Muhammad Yusuf', 2023, 'Pasuruan, Penengahan, Lampung Selatan, Lampung', 43, 83),
('23953', 'Tazkiyatun Nihayah', 2023, 'Kuripan, Penengahan, Lampung Selatan, Lampung', 43, 85),
('23954', 'Zahir Elfares Wasim', 2023, 'Kampung Baru, Penengahan, Lampung Selatan, Lampung', 44, 86),
('23955', 'Mariana Febri Tri Kusdiarti', 2023, 'Kekiling, Penengahan, Lampung Selatan, Lampung', 44, 87),
('23956', 'Tri Wahyuni Nursiyami', 2023, 'Gandri, Penengahan, Lampung Selatan, Lampung', 44, 88),
('23957', 'Rika Indriati', 2023, 'Ranca Bango, Rajeg, Tangerang, Banten', 44, 89),
('23958', 'Noorshin Tri', 2023, 'Bantar Panjang, Tigaraksa, Tangerang, Banten', 44, 90);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_login`, `username`, `password`, `nip`, `nis`, `id_ortu`, `hak_akses`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '', '12345', 0, 1),
(33, 'direktur', '4fbfd324f5ffcdff5dbf6f019b02eca8', '195602120632179432', '', 0, 4),
(34, 'kasi', 'b68fcc3e90e4fecf7182587472526728', '196110061988031004', '', 0, 2),
(35, 'orangtua', '344c999a63cd55b3035cbf76c2691f88', '', '23419', 50, 5),
(36, 'walikelas', 'dcf52f84dbf511ee4a0abcfc18093ee4', '196603042003017690', '', 0, 3);

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
