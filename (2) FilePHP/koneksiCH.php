<?php
$host="localhost";
$user="root";
$pass="";
$dbname="maskapai_ch";
$konek=mysqli_connect($host,$user,$pass) or die("Can't Connect Mysql");
if($konek)
{
if (!mysqli_select_db($konek, $dbname))
{
echo "Can't Find";
}
}
?>
