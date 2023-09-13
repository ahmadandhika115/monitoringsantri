<?php
session_start();
if (empty($_SESSION['namauser']) AND empty($_SESSION['passuser'])) {

	echo "<center>untuk mengakses modul, anda harus login <br>";
	echo "<a href=../../index.php><b>LOGIN</b></a></center>";
} else {
	include "../../lib/koneksi.php";
	include "../../lib/config.php";

	$idSubKatPelanggaran=$_GET['id_sub_kategori'];
	$queryHapus=mysqli_query($connect,"DELETE FROM sub_kat_pelanggaran WHERE id_sub_kategori='$idSubKatPelanggaran'");
	if ($queryHapus) {
		echo "<script> alert('Data Sub Kategori Pelanggaran Berhasil di Hapus'); window.location='$base_url'+'main.php?module=pelanggaran';</script>";
	}
	else {
		echo "<script> alert('Data Sub Kategori Pelanggaran Gagal di Hapus'); window.location='$base_url'+'main.php?module=pelanggaran';</script> ";
	}

	}
?>