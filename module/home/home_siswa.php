<?php
include "lib/config.php";
include "lib/koneksi.php";
//session_start();
if (empty($_SESSION['namauser']) AND empty($_SESSION['passuser'])) {
    echo "<center>Untuk mengakses modul, Anda harus login <br>";
    echo "<a href='$base_url'+'index.php><b>LOGIN</b></a></center>";
}
elseif ($_SESSION['akses']==5){ ?>

 			<?php
                $username=$_SESSION['namauser'];
                $pass=$_SESSION['passuser'];
                $cariNis=mysqli_query($connect, "SELECT siswa.nis FROM user JOIN siswa ON user.nis=siswa.nis JOIN orang_tua ON siswa.id_ortu=orang_tua.id_ortu WHERE user.username='$username' AND user.password='$pass'");
                $cn=mysqli_fetch_array($cariNis);
                $nis=$cn['nis'];

                $pelanggaran=mysqli_query($connect, "SELECT SUM(pelanggaran.poin) AS jml FROM pelanggaran JOIN detail_poin ON pelanggaran.id_pelanggaran=detail_poin.id_pelanggaran WHERE detail_poin.nis='$nis' ORDER BY detail_poin.nis");
                $plg=mysqli_fetch_array($pelanggaran);
                $poinPelanggaran=$plg['jml'];

                $prestasi=mysqli_query($connect, "SELECT SUM(prestasi.poin) AS totPrestasi FROM prestasi JOIN detail_poin ON prestasi.id_prestasi=detail_poin.id_prestasi WHERE detail_poin.nis='$nis' ORDER BY detail_poin.nis");
				$pres=mysqli_fetch_array($prestasi);
                $poinPrestasi=$pres['totPrestasi'];  
                
                $hafalan=mysqli_query($connect, "SELECT SUM(hafalan.poin) AS totHafalan FROM hafalan JOIN detail_poin ON hafalan.id_hafalan=detail_poin.id_hafalan WHERE detail_poin.nis='$nis' ORDER BY detail_poin.nis");
				$hafal=mysqli_fetch_array($hafalan);
                $poinHafalan=$hafal['totHafalan'];
               
            ?>      
<div class="right_col" role="main">
	<div class="">
        <div class="row top_tiles">
       
            <div class="animated flipInY col-lg-4 col-md-4 col-sm-4 col-xs-12">
                <div class="tile-stats">
                  <div class="icon"><i class="fa fa-warning"></i></div>
                  <div class="count"><?php if($poinPelanggaran==0){echo "0";} else{ echo $poinPelanggaran; }?></div>
                  <h3>Poin Pelanggaran</h3>
                  <p>Total poin pelanggaran yang dilakukan</p>
                </div>
            </div>
           
            <div class="animated flipInY col-lg-4 col-md-4 col-sm-4 col-xs-12">
                <div class="tile-stats">
                  <div class="icon"><i class="fa fa-star-o"></i></div>
                  <div class="count"><?php if($poinPrestasi==0){echo "0";} else{ echo $poinPrestasi; }?></div>
                  <h3>Poin Prestasi </h3>
                  <p>Total poin prestasi yang didapat</p>
                </div>
            </div>
           
            <div class="animated flipInY col-lg-4 col-md-4 col-sm-4 col-xs-12">
                <div class="tile-stats">
                  <div class="icon"><i class="fa fa-book"></i></div>
                  <div class="count"><?php if($poinHafalan==0){echo "0";} else{ echo $poinHafalan; }?></div>
                  <h3>Poin Hafalan </h3>
                  <p>Total poin hafalan yang didapat</p>
                </div>
            </div>
        </div>

    
        <?php
        // Mendapatkan total poin pelanggaran dari database atau perhitungan lainnya
        $pelanggaran = mysqli_query($connect, "SELECT SUM(pelanggaran.poin) AS jml FROM pelanggaran JOIN detail_poin ON pelanggaran.id_pelanggaran=detail_poin.id_pelanggaran WHERE detail_poin.nis='$nis' ORDER BY detail_poin.nis");
        $plg = mysqli_fetch_array($pelanggaran);
        $poinPelanggaran = $plg['jml'];

        // Menyiapkan notifikasi berdasarkan kondisi poin pelanggaran
        $notifMessage = "";
        if ($poinPelanggaran >= 100) {
            $notifMessage = '<div class="alert alert-danger alert-dismissible">
                                <button type="button" class="close" data-dismiss="alert">&times;</button>
                                <strong>PERHATIAN! Poin Pelanggaran Telah Mencapai 100 atau lebih.</strong> Orang tua/Wali santri diharapkan Datang ke Pondok Pesantren Secepatnya.
                            </div>';
        }
        echo $notifMessage;
        ?>

        <?php
        // Mendapatkan total poin prestasi dari database atau perhitungan lainnya
        $prestasi = mysqli_query($connect, "SELECT SUM(prestasi.poin) AS totPrestasi FROM prestasi JOIN detail_poin ON prestasi.id_prestasi=detail_poin.id_prestasi WHERE detail_poin.nis='$nis' ORDER BY detail_poin.nis");
        $pres = mysqli_fetch_array($prestasi);
        $poinPrestasi = $pres['totPrestasi'];

        // Menyiapkan notifikasi berdasarkan kondisi poin prestasi
        $notifPrestasi = "";
        if ($poinPrestasi >= 50) {
            $notifPrestasi = '<div class="alert alert-success alert-dismissible">
                                <button type="button" class="close" data-dismiss="alert">&times;</button>
                                <strong>SELAMAT! Poin Prestasi Telah Mencapai 50 atau lebih.</strong> Santri berprestasi akan mendapatkan penghargaan khusus.
                            </div>';
        }
        echo $notifPrestasi; 
        ?>

        <?php
        // Mendapatkan total poin hafalan dari database atau perhitungan lainnya
        $hafalan = mysqli_query($connect, "SELECT SUM(hafalan.poin) AS totHafalan FROM hafalan JOIN detail_poin ON hafalan.id_hafalan=detail_poin.id_hafalan WHERE detail_poin.nis='$nis' ORDER BY detail_poin.nis");
        $hafal = mysqli_fetch_array($hafalan);
        $poinHafalan = $hafal['totHafalan'];

        // Menyiapkan notifikasi berdasarkan kondisi poin hafalan
        $notifHafalan = "";
        if ($poinHafalan >= 50) {
            $notifHafalan = '<div class="alert alert-info alert-dismissible">
                                <button type="button" class="close" data-dismiss="alert">&times;</button>
                                <strong>SELAMAT! Poin Hafalan Telah Mencapai 50 atau lebih.</strong> Santri yang berhasil mencapai poin hafalan tertentu akan mendapatkan penghargaan.
                            </div>';
        }
        echo $notifHafalan;
        ?>
    </div><!-- Penutup class "" -->
	
    <div class="row">
        <div class="col-md-12 col-sm-12 col-xs-12">
        	<div class="dashboard_graph x_panel">
                <div class="row x_title">
                	<div class="col-md-6">

                    	<h3>PROFIL <small></small></h3>
                    </div>
                    <div class="col-md-6">      	
                    </div>
                </div>

                <?php 
                	$siswa=mysqli_query($connect, "SELECT siswa.nama_siswa, kelas.tingkat_kelas, kelas.sub_kelas, jurusan.nama_jurusan, siswa.alamat FROM siswa JOIN kelas ON siswa.id_kelas=kelas.id_kelas JOIN jurusan ON kelas.id_jurusan=jurusan.id_jurusan WHERE siswa.nis='$nis'");
                	$sw=mysqli_fetch_array($siswa);

                ?>
                <div class="x_content">
                    <div class="demo-container">
                    	<table>
                      		<tr>
                      			<td width="100">NIS</td>
                      			<td width="10">:</td>
                      			<td><?php echo $nis; ?></td>
                      		</tr>
                      		<tr>
                      			<td>Nama</td>
                      			<td>:</td>
                      			<td><?php echo $sw['nama_siswa']; ?></td>
                      		</tr>
                      		<tr>
                      			<td>Kelas</td>
                      			<td>:</td>
                      			<td><?php echo $sw['tingkat_kelas']." ".$sw['nama_jurusan']." ".$sw['sub_kelas']; ?></td>
                      		</tr>
                      		<tr>
                      			<td>Alamat</td>
                      			<td>:</td>
                      			<td><?php echo $sw['alamat']; ?></td>
                      		</tr>
                      	</table>
                      
                    </div>
                </div>

            </div>
        </div>
    </div>
    <h4 align="center">Anda dapat melakukan pengecekan detail poin dengan cara klik menu di samping atau klik tombol di bawah ini</h4>
    <br>
    <div class="col-md-2"></div>
    <div class="col-md-3">
    	<a href="main.php?module=lap_pelanggaran_ke_siswa">
    		<button type="button" class="btn btn-primary btn-lg">Cek Poin Pelanggaran</button>
    	</a>
    </div>
    <div class="col-md-3">
    	<a href="main.php?module=lap_prestasi_ke_siswa">
    		<button type="button" class="btn btn-primary btn-lg">Cek Poin Prestasi</button>
    	</a>
    </div>
    <div class="col-md-3">
    	<a href="main.php?module=lap_hafalan_ke_siswa">
    		<button type="button" class="btn btn-primary btn-lg">Cek Poin Hafalan</button>
    	</a>
    </div>

</div><!-- Penutup right_col -->


<?php 
}
else{
  echo "Anda Harus Login Untuk Mengakses Halaman Ini";
}
 ?>