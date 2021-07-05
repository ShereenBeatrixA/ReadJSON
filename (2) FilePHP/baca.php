<!DOCTYPE html>
<html>
<head>
  <title> Maskapai Penerbangan </title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src = "https://code.jquery.com/jquery-3.5.1.js"></script>
  <script src = "https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script>
  <link rel="stylesheet" href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.min.css">
  <script>
  $(document).ready(function() {
    $('#maskapai').DataTable();
} );
  </script>
</head>
<style>
	table {
        font-family: arial, sans-serif;
        border-collapse: collapse;
        width: 100%;
    }

    td,
    th {
        border: 1px solid #dddddd;
        text-align: left;
        padding: 8px;
    }
</style>
<body>
<body>
<div class="table-responsive col-sm-10 col-sm-offset-1">
<div class="text-center">
    <h1><b> Maskapai Penerbangan </b></h1>
</div>
<table id ="maskapai">

                <thead>
                <tr class="table-success">
                    <th>ID</th>
                    <th>From</th>
                    <th>To</th>
                    <th>Depart</th>
                    <th>Arrive</th>
                    <th>Price</th>
                </tr>
                </thead>

</tbody>
<?php
$aJSON = ["maskapaiRS.json", "maskapaiCH.json", "maskapaiMS.json"];

                for ($i = 0; $i < 3; $i++) {

                    if (file_exists($aJSON[$i])) {
                        $json_file = file_get_contents($aJSON[$i]);
                        $jfo = json_decode($json_file);
                        $maskapai = $jfo->flight;
                        foreach ($maskapai as $hasil) {
                            $id = $hasil->id;
                            $from = $hasil->dari;
                            $to = $hasil->ke;
                            $depart = $hasil->depart;
                            $arrive = $hasil->arrive;
                            $price = $hasil->price;
                ?>
                            <tr>
                                <td><?= $id; ?></td>
                                <Td><?= $from; ?></td>
                                <td><?= $to; ?></td>
                                <td><?= $depart; ?></td>
                                <td><?= $arrive; ?></td>
                                <td><?= $price; ?></td>
                            </tr>
                <?php
                        }
                    } else {
                        echo "File JSON Tidak Ditemukan";
                    }
                }
                ?>

</tbody>
</table>
</div>
</body>
</html>