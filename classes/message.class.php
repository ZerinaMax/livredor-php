<?php
    class Message {

        public $db;

        public function __construct($db){
        $this->db = $db;
        }

        public function createMessage($email, $message): void 
        {
            $now = new DateTime();
            $date = $now->format('Y-m-d h:i:s');
            $this->db->query("INSERT INTO livredor (txt_email,txt_message,date) VALUES ('$email', '$message','$date')");
        }

        public function readMessage (): array {
            $query = $this->db->query("SELECT * FROM livredor ORDER BY date DESC");
            $result = $query->fetchAll();
            return $result;
        }
    }
?>
