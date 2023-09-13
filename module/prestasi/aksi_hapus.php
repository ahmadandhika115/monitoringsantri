<?php
session_start();
if (empty($_SESSION['namauser']) AND empty($_SESSION['passuser'])) {

	echo "<center>untuk mengakses modul, anda harus login <br>";
	echo "<a href=../../index.php><b>LOGIN</b></a></center>";
} else {
	include "../../lib/koneksi.php";
	include "../../lib/config.php";

	$idPrestasi=$_GET['id_prestasi'];
	$queryHapus=mysqli_query($connect,"DELETE FROM prestasi WHERE id_prestasi='$idPrestasi'");
	if ($queryHapus) {
		echo "<script> alert('Data Prestasi Berhasil di Hapus'); window.location='$base_url'+'main.php?module=prestasi';</script>";
	}
	else {
		echo "<script> alert('Data Prestasi Gagal di Hapus'); window.location='$base_url'+'main.php?module=prestasi';</script> ";
	}

	}
?>