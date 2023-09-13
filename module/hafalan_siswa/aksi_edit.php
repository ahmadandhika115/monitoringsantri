<?php
session_start();
if (empty($_SESSION['namauser']) AND empty($_SESSION['passuser'])) {

    echo "<center>untuk mengakses modul, anda harus login <br>";
    echo "<a href=../../index.php><b>LOGIN</b></a></center>";
} else {
    include "../../lib/koneksi.php";
    include "../../lib/config.php";
    
    $idDetailPoin = $_POST['idDetailPoin'];
    $thAjaran = $_POST['thAjaran'];
    $tanggal = $_POST['tanggal'];
    $ket = $_POST['ket'];
    $siswa = $_POST['siswa'];
    $nis=substr($siswa, 0,5);

    $hafalan = $_POST['hafalan'];
    if (substr($hafalan, 2,1)=="-"){
        $idHafalan=substr($hafalan, 0,1);    
    }elseif (substr($hafalan, 3,1)=="-") {
        $idHafalan=substr($hafalan, 0,2);
    }else{
        $idHafalan=substr($hafalan, 0,3);
    }
    
    $queryEdit = mysqli_query($connect,"UPDATE detail_poin SET tanggal='$tanggal', nis='$nis', id_hafalan='$idHafalan', tahun_ajaran='$thAjaran', ket='$ket' WHERE id_detail_poin='$idDetailPoin'" );

    if ($queryEdit) {
        echo "<script> alert ('Data Hafalan Santri Berhasil Diubah'); window.location = '$base_url'+'main.php?module=input_hafalan_siswa';</script>";
    }
    else {
        echo "<script> alert('Data Hafalan Santri Gagal Diubah'); window.location='main.php?module=edit_hafalan_siswa&id_detail_poin='+'$idDetailPoin';</script>";
    }
}
?>