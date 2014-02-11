<?php

class kuulutus extends Controller{

    function index(){
        $this->make_index = get_all('SELECT * FROM make');
        $this->body_type_index = get_all('SELECT * FROM body_type');
        $this->fuel_type_index = get_all('SELECT * FROM fuel_type');
        $this->year_index = get_all('SELECT * FROM year');
        $this->gearbox_index = get_all('SELECT * FROM gearbox');
    }
    function index_post(){
        $this->success = insert('kuulutus', $_POST['data']);
    }
}