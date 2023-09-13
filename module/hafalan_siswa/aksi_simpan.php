<?php
    include "../../lib/config.php";
    include "../../lib/koneksi.php";

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
    


    $querySimpan = mysqli_query($connect,"INSERT INTO detail_poin (tanggal, tahun_ajaran, nis, id_hafalan, ket) VALUES ('$tanggal', '$thAjaran', '$nis', '$idHafalan', '$ket')");

    if ($querySimpan) {
        echo "<script> alert('Data Hafalan Santri Berhasil Masuk'); window.location = '$base_url'+'main.php?module=input_hafalan_siswa';</script>";
    }
    else {
        echo "<script> alert('Data Pelanggaran Santri Gagal Dimasukkan'); window.location = '$base_url'+'main.php?module=tambah_hafalan_siswa';</script>";

    }

?>