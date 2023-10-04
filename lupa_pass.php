<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lupa Password</title>
    <!-- Sertakan sumber daya Bootstrap CSS atau CSS kustom Anda di sini -->

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
                    <form action="send_email.php" method="post">
                        <h1>Lupa Password</h1>
                        <div>
                            <label for="email">Inputkan Email Anda:</label>
                            <input type="email" class="form-control" required="" name="email" />
                        </div>
                        <div align="right">
                            <button class="btn btn-default submit" type="submit" name="submit_email">Submit</button>
                        </div>
                        <p class="mb-1">
                            <a href="index.php">Kembali ke Form Login</a>
                        </p>
                    </form>
                </section>
            </div>
        </div>
    </div>
    <!-- Sertakan sumber daya JavaScript Bootstrap atau JavaScript kustom Anda di sini jika diperlukan -->
</body>
</html>