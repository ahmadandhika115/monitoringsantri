<?php
    include "../../lib/config.php";
    include "../../lib/koneksi.php";

    $thAjaran = $_POST['thAjaran'];
    $tanggal = $_POST['tanggal'];
    $ket = $_POST['ket'];
    $siswa = $_POST['siswa'];
    $nis = substr($siswa, 0, 5);

    $hafalan = $_POST['hafalan'];
    if (substr($hafalan, 2, 1) == "-") {
        $idHafalan = substr($hafalan, 0, 1);
    } elseif (substr($hafalan, 3, 1) == "-") {
        $idHafalan = substr($hafalan, 0, 2);
    } else {
        $idHafalan = substr($hafalan, 0, 3);
    }

    // Mengganti spasi dalam nama dengan spasi biasa
    $siswa = str_replace("+", " ", $siswa);

    $pesan = "Assalamualaikum warahmatullahi wabarakatuh.\nDengan Hormat, Orang tua/Wali santri\nNIS - NAMA : $siswa\n\nAda Data Hafalan Santri terbaru.\nSilakan Cek Website https://asshofarajeg.my.id/\n\nTerima kasih\nWassalamualaikum warahmatullahi wabarakatuh.";

    // Menggunakan urlencode() untuk mengkodekan teks pesan dalam URL
    $text = urlencode($pesan);

    // Ganti URL berikut dengan URL bot Telegram Anda
    $telegramBotURL = "https://api.telegram.org/bot6623914934:AAFEFRt46TMMfHxhu4nI1LiqJb0Xbb_MQiE/sendMessage?chat_id=-4076022333&text=$text";

    $querySimpan = mysqli_query($connect, "INSERT INTO detail_poin (tanggal, tahun_ajaran, nis, id_hafalan, ket) VALUES ('$tanggal', '$thAjaran', '$nis', '$idHafalan', '$ket')");
    if ($querySimpan) {
        // Mengirim pesan ke Telegram
        $telegramResponse = file_get_contents($telegramBotURL);

        // Cek jika pesan berhasil terkirim
        if ($telegramResponse === false) {
            echo "<script> alert('Data Hafalan Santri Berhasil Masuk, tetapi pesan Telegram tidak terkirim.'); window.location = '$base_url' + 'main.php?module=input_hafalan_siswa';</script>";
        } else {
            echo "<script> alert('Data Hafalan Santri Berhasil Masuk dan pesan Telegram terkirim.'); window.location = '$base_url' + 'main.php?module=input_hafalan_siswa';</script>";
        }
    } else {
        echo "<script> alert('Data Hafalan Santri Gagal Dimasukkan'); window.location = '$base_url' + 'main.php?module=tambah_hafalan_siswa';</script>";
    }
?>
