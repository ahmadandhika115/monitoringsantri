<?php
    include "../../lib/config.php";
    include "../../lib/koneksi.php";

    $thAjaran = $_POST['thAjaran'];
    $tanggal = $_POST['tanggal'];
    $ket = $_POST['ket'];
    $siswa = $_POST['siswa'];
    $nis = substr($siswa, 0, 5);

    $prestasi = $_POST['prestasi'];
    if (substr($prestasi, 2, 1) == "-") {
        $idPrestasi = substr($prestasi, 0, 1);
    } elseif (substr($prestasi, 3, 1) == "-") {
        $idPrestasi = substr($prestasi, 0, 2);
    } else {
        $idPrestasi = substr($prestasi, 0, 3);
    }

    // Mengganti spasi dalam nama dengan spasi biasa
    $siswa = str_replace("+", " ", $siswa);

    $pesan = "Assalamualaikum warahmatullahi wabarakatuh.\nDengan Hormat, Orang tua/Wali santri\nNIS - NAMA : $siswa\n\nAda Data Prestasi Santri terbaru.\nSilakan Cek Website https://asshofarajeg.my.id/\n\nTerima kasih\nWassalamualaikum warahmatullahi wabarakatuh.";

    // Menggunakan urlencode() untuk mengkodekan teks pesan dalam URL
    $text = urlencode($pesan);

    // Ganti URL berikut dengan URL bot Telegram Anda
    $telegramBotURL = "https://api.telegram.org/bot6623914934:AAFEFRt46TMMfHxhu4nI1LiqJb0Xbb_MQiE/sendMessage?chat_id=-4076022333&text=$text";

    $querySimpan = mysqli_query($connect, "INSERT INTO detail_poin (tanggal, tahun_ajaran, nis, id_prestasi, ket) VALUES ('$tanggal', '$thAjaran', '$nis', '$idPrestasi', '$ket')");
    if ($querySimpan) {
        // Mengirim pesan ke Telegram
        $telegramResponse = file_get_contents($telegramBotURL);

        // Cek jika pesan berhasil terkirim
        if ($telegramResponse === false) {
            echo "<script> alert('Data Prestasi Santri Berhasil Masuk, tetapi pesan Telegram tidak terkirim.'); window.location = '$base_url' + 'main.php?module=input_prestasi_siswa';</script>";
        } else {
            echo "<script> alert('Data Prestasi Santri Berhasil Masuk dan pesan Telegram terkirim.'); window.location = '$base_url' + 'main.php?module=input_prestasi_siswa';</script>";
        }
    } else {
        echo "<script> alert('Data Prestasi Santri Gagal Dimasukkan'); window.location = '$base_url' + 'main.php?module=tambah_prestasi_siswa';</script>";
    }
?>
