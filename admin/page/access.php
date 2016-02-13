<?php

class page_Access extends Page {
    public $title = 'Admin Access';
    function page_index(){

        $cr = $this->add('CRUD');
        $cr->setModel('Model_Admin');


    }

}
