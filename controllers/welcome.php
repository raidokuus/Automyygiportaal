<?php

class welcome extends Controller{

	function index(){
    $this->users = get_all("SELECT * FROM user");
		$this->cars = get_all("SELECT * FROM car");
	}

    function index_ajax(){
		echo "\$_POST:<br>";
        var_dump($_POST);
    }

	function index_post(){
		echo "\$_POST:<br>";
		var_dump($_POST);
	}
}