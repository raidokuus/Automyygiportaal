<?php

class register extends Controller
{

    function index()
    {

    }

    function index_post()
    {
        $this->success = insert('user', $_POST['data']);
    }
} 