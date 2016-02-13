<?php
class Model_Admin extends SQL_Model {
    public $table = 'admin';

    function init(){
        parent::init();

        $this->addField('email');

        $this->addField('password');

        $this->add('dynamic_model/Controller_AutoCreator_MySQL');


    }
}
