<?php

class Trains
{
  public function _show_trains($direction) {
    $data = json_decode(file_get_contents("http://www3.septa.org/hackathon/Arrivals/East%20Falls/5"), true);
    $i = 0;
    $direction_key = "Northbound";
    $json_key = $this->get_key($data);

    if ($direction == "south") {
      $i = 1;
      $direction_key = "Southbound";
    }

    $trains = $data[$json_key][$i][$direction_key];
    foreach ($trains as $k => $v) {
      $t = "Train " . $trains[$k]["train_id"] ." ". $trains[$k]["depart_time"] ."\n";
      echo $t;
    }    
  }

  private function get_key($array) {
    foreach ($array as $k => $v) {
      return $k;
    }
  }
}

class North extends Trains
{
  public function show_trains() {
    $this->_show_trains("north");
  }
}

class South extends Trains
{
  public function show_trains() {
    $this->_show_trains("south");
  }
}

class West extends South
{
  public function show_trains() {
    echo "No upcoming trains\n";
  }
}

$n = new North();
$n->show_trains();

echo "----\n";

$s = new South();
$s->show_trains();

echo "----\n";

$w = new West();
$w->show_trains();
