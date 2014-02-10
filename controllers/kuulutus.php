<?php

class kuulutus extends Controller{

    function index(){
        $this->make_index = get_all('SELECT * FROM make');
        $this->body_type_index = get_all('SELECT * FROM body_type');
        $this->fuel_type_index = get_all('SELECT * FROM fuel_type');
    }
    function index_post(){
        $this->success = insert('kuulutus', $_POST['data']);
    }
}