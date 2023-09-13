<?php
include "lib/config.php";
include "lib/koneksi.php";
//session_start();
if (empty($_SESSION['namauser']) AND empty($_SESSION['passuser'])) {
    echo "<center>Untuk mengakses modul, Anda harus login <br>";
    echo "<a href=$admin_url><b>LOGIN</b></a></center>";
}
elseif ($_SESSION['akses']==1 or $_SESSION['akses']==2){ ?>              
        <div class="right_col" role="main">
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3> Edit Data Hafalan<small></small></h3>
              </div>

             
            </div>

            <div class="clearfix"></div>

              <!-- Form -->
            <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Form Edit Hafalan</h2>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
                    <br />
                    <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left" action="module/hafalan/aksi_edit.php" method="post">

                      <?php
                      
                      $idHafalan=$_GET['id_hafalan'];
                      $queryEdit=mysqli_query($connect,"SELECT * FROM hafalan WHERE id_hafalan='$idHafalan'");

                      $hasilQuery=mysqli_fetch_array($queryEdit);
                      $namaHafalan=$hasilQuery['nama_hafalan'];
                      $poin=$hasilQuery['poin'];
                      ?>  

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name"> Hafalan <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="hidden" name="idHafalan" value="<?php echo $idHafalan; ?>">
                          <input type="text" id="namaHafalan" name="namaHafalan" required="required" class="form-control col-md-7 col-xs-12" value="<?php echo $namaHafalan; ?>">
                        </div>
                      </div>

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name"> Poin <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="poin" name="poin" required="required" class="form-control col-md-7 col-xs-12" value="<?php echo $poin; ?>">
                        </div>
                      </div>

                      
                      <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                          <button type="reset" class="btn btn-primary" onclick="window.location='main.php?module=hafalan'">Cancel</button>
                          <button type="submit" class="btn btn-success">Submit</button>
                        </div>
                      </div>


                    </form>
                  </div>
                </div>
              </div>
            </div>
              <!-- Penutup Form -->

            </div>
          </div>
        </div>
<?php 
}
else{
  echo "Anda Harus Login Untuk Mengakses Halaman Ini";
}
 ?>
