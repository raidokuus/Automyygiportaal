<?php

class kuulutus extends Controller{

    function index(){
        $this->make_index = get_all('SELECT * FROM make');
        $this->body_type_index = get_all('SELECT * FROM body_type');
        $this->fuel_type_index = get_all('SELECT * FROM fuel_type');
        $this->year_index = get_all('SELECT * FROM year');
        $this->gearbox_index = get_all('SELECT * FROM gearbox');
        $this->color_index = get_all('SELECT * FROM color');
        $this->vin_index = get_all('SELECT * FROM vin');
        $this->reg_index = get_all('SELECT * FROM reg');
        $this->motion_index = get_all('SELECT * FROM motion');
        $this->muu_index = get_all('SELECT * FROM muu');
        $this->country_index = get_all('SELECT * FROM country');
        $this->city_index = get_all('SELECT * FROM city');
        $this->km_index = get_all('SELECT * FROM km');
        $this->kw_index = get_all('SELECT * FROM kw');
        $this->door_index = get_all('SELECT * FROM door');
        $this->price_index = get_all('SELECT * FROM price');
        $this->muudlisad_index = get_all('SELECT * FROM muudlisad');
    }
    function index_ajax() {
        exit('klaabu');
    }
}