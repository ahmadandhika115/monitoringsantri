<?php
session_start();
if (empty($_SESSION['namauser']) AND empty($_SESSION['passuser'])) {

	echo "<center>untuk mengakses modul, anda harus login <br>";
	echo "<a href=../../index.php><b>LOGIN</b></a></center>";
} else {
	include "../../lib/koneksi.php";
	include "../../lib/config.php";
	
	$idHafalan = $_POST['idHafalan'];
	$namaHafalan = $_POST['namaHafalan'];
	$poin = $_POST['poin'];
	
	$queryEdit = mysqli_query($connect,"UPDATE hafalan SET nama_hafalan ='$namaHafalan', poin ='$poin' WHERE id_hafalan='$idHafalan'" );

	if ($queryEdit) {
		echo "<script> alert ('Data Hafalan Berhasil Diubah'); window.location = '$base_url'+'main.php?module=hafalan';</script>";
	}
	else {
		echo "<script> alert('Data Hafalan Gagal Diubah'); window.location='main.php?module=edit_hafalan&id_hafalan='+'$idHafalan';</script>";
	}
}
?>