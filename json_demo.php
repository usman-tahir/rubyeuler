<html>
<head>
<?php
  $json_a = json_decode(file_get_contents("http://www3.septa.org/hackathon/Arrivals/East%20Falls/5"), true);

  $key = "";
  foreach ($json_a as $k => $v) {
    $key = $k;
  }

  $north = $json_a[$key][0]["Northbound"];
  $south = $json_a[$key][1]["Southbound"];
?>
</head>
<body>
<h1><? echo $key ?>:</h1>
<h3>Northbound to Manayunk/Norristown</h3>
<ul><?  
  foreach($north as $k => $v) {
    $t = "Train " . $north[$k]["train_id"] ." at ". $north[$k]["depart_time"] ."<br />";
    ?><li><? echo $t; ?></li><?
  }?>
</ul>

<h3>Southbound to Center City</h3>
<ul><?
  foreach($south as $k => $v) {
    $t = "Train " . $south[$k]["train_id"] ." at ". $south[$k]["depart_time"] ."<br />";
    ?><li><? echo $t; ?></li><?
  }?>
</ul>
</body>
</html>