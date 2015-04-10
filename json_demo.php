<?php

$json_a = json_decode(file_get_contents("http://www3.septa.org/hackathon/Arrivals/East%20Falls/5"), true);

$key = "";
foreach ($json_a as $k => $v) {
  $key = $k;
}

$north = $json_a[$key][0]["Northbound"];
foreach($north as $k => $v) {
  $t = "Train " . $north[$k]["train_id"] ." ". $north[$k]["depart_time"] . "\n";
  echo $t;
}

$south = $json_a[$key][1]["Southbound"];
foreach($south as $k => $v) {
  $t = "Train " . $south[$k]["train_id"] ." ". $south[$k]["depart_time"] ."\n";
  echo $t;
}
