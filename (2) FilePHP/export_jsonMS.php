<?php

    include "koneksiMS.php";
    header('Content-Type: application/json');

    $query = "SELECT jadwal.kode_penerbangan AS id, penerbangan.dari AS dari, penerbangan.ke AS ke, jadwal.berangkat AS depart, jadwal.tiba AS arrive, jadwal.harga AS price FROM jadwal INNER JOIN penerbangan ON jadwal.kode_penerbangan=penerbangan.kode_penerbangan";
    $hasil = mysqli_query($konek, $query);
    $jumField = mysqli_num_fields($hasil);
    while ($data = mysqli_fetch_assoc($hasil))
    {
        $rows[] = $data;
    }
    $data1 = array('flight'=>$rows);
    echo json_encode($data1);
?>