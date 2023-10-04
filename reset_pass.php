<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Sistem Monitoring Kegiatan Santri</title>
    <script language="JavaScript">
      var txt="Sistem Monitoring Santri ";
      var kecepatan=250;var segarkan=null;function bergerak() { document.title=txt;
      txt=txt.substring(1,txt.length)+txt.charAt(0);
      segarkan=setTimeout("bergerak()",kecepatan);}bergerak();
    </script>

    <link rel="shortcut icon" href="images/fav.ico">

    <!-- Bootstrap -->
    <link href="assets/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="assets/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- Animate.css -->
    <link href="https://colorlib.com/polygon/gentelella/css/animate.min.css" rel="stylesheet">


    <!-- Custom Theme Style -->
    <link href="assets/build/css/custom.min.css" rel="stylesheet">
  </head>

  <body class="login">
    <div>
      <div class="login_wrapper">
      	    <div>
                <h3>&nbsp; SI Monitoring Kegiatan Santri</h3>      
            </div>	
        <div class="animate form login_form">
          <section class="login_content">
            <form action="" method="post" >
              <h1>Reset Password</h1>
              <?php
              if($_GET['key'] && $_GET['reset'])
              {
              include('lib/koneksi.php');
              $email=$_GET['key'];
              $pass=$_GET['reset']; 
              
              $select=mysqli_query($connect,"SELECT email,password FROM user WHERE email='$email' AND md5(password)='$pass'");
              if(mysqli_num_rows($select)==1)
              {
              ?>
              
              <div>
                <input type="password" class="form-control" id="password" onkeyup='check();' placeholder="Password Baru" required="" name="password"/>
                 <input type="hidden" name="email" value="<?php echo $email;?>">
					      	<input type="hidden" name="pass" value="<?php echo $pass;?>">
              </div>
              <div>
                <input type="password" class="form-control" id="confirm_password"  onkeyup='check();' placeholder="Konfirmasi Password" required=""  name="konfirmasi"/>
                
              </div>
              <div align="justify">
            	<span id='message'></span>
                  </div>
                  <div class="form-group">
                    <button class="btn btn-danger submit-btn btn-block" id="btnSubmit" name="submit_password">Reset</button>
                  </div>     
               
              
              <?php
                } else {
                  echo "Data Tidak Ditemukan";
                }
              }
              ?>

                      
            <?php
            if(isset($_POST['submit_password']))
            {
              include('lib/koneksi.php');
              $email=$_POST['email'];
              $pass = md5($_POST['password']);
             
              
              $select=mysqli_query($connect, "UPDATE user SET password='$pass' WHERE email='$email'") or die(mysqli_error());
                if($select){
                    echo "<script> alert('Reset password berhasil'); window.location = 'index.php'; </script>";//jika pesan terkirim
                  
                }else{
                echo "<script>alert('Gagal Menyimpan '); window.location = 'index.php';</script>";
                }
            }
            ?>
               <p class="mb-1">
                 <a href="index.php">Kembali ke Form Login</a>
               </p>
              <div class="clearfix"></div>

              <div class="separator">

                <div class="clearfix"></div>
                <br />

                
              </div>
            </form>
          </section>
        </div>
      </div>
    </div>

    <script type="text/javascript">
       var check = function() {
  if (document.getElementById('password').value ==
    document.getElementById('confirm_password').value) {
    document.getElementById('message').style.color = 'green';
    document.getElementById('message').innerHTML = 'Password dan Konfirmasi Sama';
  } else {
    document.getElementById('message').style.color = 'red';
    document.getElementById('message').innerHTML = 'Password dan Konfirmasi Tidak Sama';
  }
}
    </script>
  </body>
</html>