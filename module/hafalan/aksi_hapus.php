<?php
session_start();
if (empty($_SESSION['namauser']) AND empty($_SESSION['passuser'])) {

	echo "<center>untuk mengakses modul, anda harus login <br>";
	echo "<a href=../../index.php><b>LOGIN</b></a></center>";
} else {
	include "../../lib/koneksi.php";
	include "../../lib/config.php";

	$idHafalan=$_GET['id_hafalan'];
	$queryHapus=mysqli_query($connect,"DELETE FROM hafalan WHERE id_hafalan='$idHafalan'");
	if ($queryHapus) {
		echo "<script> alert('Data Hafalan Berhasil di Hapus'); window.location='$base_url'+'main.php?module=hafalan';</script>";
	}
	else {
		echo "<script> alert('Data Hafalan Gagal di Hapus'); window.location='$base_url'+'main.php?module=hafalan';</script> ";
	}

	}
?>