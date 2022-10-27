<?php
    class DatabaseHandler {
        const DBURL = 'localhost';
        const DBNAME = 'guestbook';

        private $username = 'dev';
        private $password = '123';

        public $connection = null;

        // connects to db and returns the connection response.
        public function connectToDatabase() {
            // close any previous connections
            try{
                // prepares the connection
                $this -> connection = new PDO("mysql:host=". DatabaseHandler::DBURL."; dbname=" . DatabaseHandler::DBNAME, $this -> username, $this -> password);
                // executes the connection
                $this -> connection -> exec("set names utf8");
            } catch (PDOException $exception) {
                echo("Pas de connexion.");
            }
            return $this -> connection; 
        }
    }
?>