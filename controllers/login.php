<?php
/**
 * Created by PhpStorm.
 * User: Lennu
 * Date: 7.02.14
 * Time: 23:09
 */

class login extends Controller
{
    // Ensure the user is logged on (or demand a valid password, if not)
    public $requires_auth = true;

    function index()
    {
        // Redirect user to home page when the program gets to this point
        header('Location: ' . BASE_URL . 'welcome');
    }

    function index_post()
    {
        // Dummy function (Halo wants to call this function when the user submits the password)
    }
} 