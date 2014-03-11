<?php

class search extends Controller
{

    function index()
    {
        $where = array();
        foreach($_POST as $var => $val){
            $where[] = !empty($val) ? "$var = '$val'" : '';
        }

        $where = array_filter($where);
        var_dump($where);
        $where = !empty($where) ? 'where '.implode(' AND ', $where) : '1';
        $sql = "select * from kuulutus $where";
        echo $sql;
        $this->cars = get_all($sql);
    }

    function index_post()
    {

    }
}