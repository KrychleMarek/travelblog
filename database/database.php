<?php

class Database{



        private $database;

        function __construct()
        {
            $data = file_get_contents("database/connections.json");

            $parsed = json_decode($data);

            $this->database = new PDO("mysql:host=".$parsed->server.";dbname=".$parsed->database, $parsed->username, $parsed->passwrod);
            
        }


        function getDatabase(){
            return $this->database;
        }

}


$database = new Database();

