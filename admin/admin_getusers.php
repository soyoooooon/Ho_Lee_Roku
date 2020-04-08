<?php

    require_once '../load.php' ;

    //get all roku users

    if (isset($_GET['allusers'])) {
        $users = getAllUsers();
        
        //send all users back to javascript 
        echo $users;

    }