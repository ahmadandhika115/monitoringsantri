<?php
    include "../../lib/config.php";
    include "../../lib/koneksi.php";

    $namaHafalan = $_POST['namaHafalan'];
    $poin = $_POST['poin'];

    $querySimpan = mysqli_query($connect,"INSERT INTO hafalan (nama_hafalan, poin) VALUES ('$namaHafalan', '$poin')");

    if ($querySimpan) {
        echo "<script> alert('Data Hafalan Berhasil Masuk'); window.location = '$base_url'+'main.php?module=hafalan';</script>";
    }
    else {
        echo "<script> alert('Data Hafalan Gagal Dimasukkan'); window.location = '$base_url'+'main.php?module=tambah_hafalan';</script>";
    }

?>