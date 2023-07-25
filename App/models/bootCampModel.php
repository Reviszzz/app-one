<?php 
//Vamos a definir como viene y luce mi informacion

    class Bootcamp {
        private $conn;

        public function __construct() {
            $this->conn = new mysqli("127.0.0.1","root","12345", "kodigo");
            if($this->conn->connect_error){
                die("conection fail: " . $this->conn->connect_error);
            }
            echo "Connection succel";
        }

        //obteniendo datos 
        public function get_botcamps(){
            $sql = "SELECT * FROM botcamps";
            $result = $this->conn->query($sql);
            $botcamps = array();
            //transformar a un array
            if($result->num_rows > 0){
                while($row = $result->fetch_assoc()){
                    $botcamps[] = $row;
                }
            }
            return $botcamps;
        }
    }

?>