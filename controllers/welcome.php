<?php

class welcome extends Controller{

    function index(){
        $this->users = get_all("SELECT * FROM user");
        $this->cars = get_all("SELECT * FROM car");
        $this->make_index = get_all('SELECT * FROM make');
        $this->body_type_index = get_all('SELECT * FROM body_type');
        $this->fuel_type_index = get_all('SELECT * FROM fuel_type');
        $this->year_index = get_all('SELECT * FROM year');
        $this->gearbox_index = get_all('SELECT * FROM gearbox');
        $this->color_index = get_all('SELECT * FROM color');
        $this->motion_index = get_all('SELECT * FROM motion');
        $this->country_index = get_all('SELECT * FROM country');
        $this->city_index = get_all('SELECT * FROM city');
        $this->door_index = get_all('SELECT * FROM door');
    }

    function index_ajax(){
        $make_id = $_POST['make_id'];
        echo json_encode(get_all("SELECT * FROM model WHERE make_id='$make_id'"));
        exit();
        echo "\$_POST:<br>";
        var_dump($_POST);
    }

    function index_post(){
        echo "\$_POST:<br>";
        var_dump($_POST);
    }
}