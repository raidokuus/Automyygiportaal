<?php

class kuulutus extends Controller{

    function index(){
        $this->vehicle_types = get_all('SELECT * FROM vehicle_type');
    }
    function index_post(){
        $this->success = insert('kuulutus', $_POST['data']);
    }
}