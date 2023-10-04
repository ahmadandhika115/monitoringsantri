<?php
  session_start();
  session_destroy();
  echo "<script>alert('Log out Berhasil'); window.location = 'index.php'</script>";

?>