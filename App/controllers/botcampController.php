<?php 

class bootcampController {
    public $bootcamp;
    public function __construct(){
        $this->bootcamp = new Bootcamp();
    }

    public function index(){
       $bootcamps =  $this->bootcamp->get_botcamps();

       include "./views/bootCampView.php";
    }
}


?>