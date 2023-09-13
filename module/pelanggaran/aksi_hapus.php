<?php
session_start();
if (empty($_SESSION['namauser']) AND empty($_SESSION['passuser'])) {

	echo "<center>untuk mengakses modul, anda harus login <br>";
	echo "<a href=../../index.php><b>LOGIN</b></a></center>";
} else {
	include "../../lib/koneksi.php";
	include "../../lib/config.php";

	$idKatPelanggaran=$_GET['id_pelanggaran'];
	$queryHapus=mysqli_query($connect,"DELETE FROM pelanggaran WHERE id_pelanggaran='$idKatPelanggaran'");
	if ($queryHapus) {
		echo "<script> alert('Data Jenis Pelanggaran Berhasil di Hapus'); window.location='$base_url'+'main.php?module=pelanggaran';</script>";
	}
	else {
		echo "<script> alert('Data Jenis Pelanggaran Gagal di Hapus'); window.location='$base_url'+'main.php?module=pelanggaran';</script> ";
	}

	}
?>