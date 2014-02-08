<?php

class cars extends Controller{
	function index(){
    $this->cars = get_all("SELECT * FROM car");
	}

  function view(){
    $car_id = $this->params[0];
    $this->car = get_first("SELECT * FROM car NATURAL JOIN user WHERE car_id='$car_id'");
  }
}