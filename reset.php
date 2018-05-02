<?php
include('header.php');
mysql_query("TRUNCATE TABLE winner");

echo "<script>alert('Success System Rest Done!') </script>";
echo "<script>location.replace('draw.php')</script>";
?>