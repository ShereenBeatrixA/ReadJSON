<?php

    include "koneksiCH.php";
    header('Content-Type: application/json');

    $query = "SELECT flight.id_flight AS id, flight.dari AS dari, flight.ke AS ke, flight_time.depart AS depart, flight_time.arrive AS arrive, flight_time.price AS price FROM flight INNER JOIN flight_time ON flight.id_flight=flight_time.id_flight";
    $hasil = mysqli_query($konek, $query);
    $jumField = mysqli_num_fields($hasil);
    while ($data = mysqli_fetch_assoc($hasil))
    {
        $rows[] = $data;
    }
    $data1 = array('flight'=>$rows);
    echo json_encode($data1);
?>