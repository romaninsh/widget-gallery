<?php

class Admin extends App_Admin {

    function init() {
        parent::init();

        $this->dbConnect();
        $a = $this->add('Auth');
        $a->setModel('Admin');
        $a->check();

        $this->api->menu->addItem('Manage Widgets', 'widgets');
        $this->api->menu->addItem('Manage Access', 'access');
        $this->api->menu->addItem('Logout', 'logout');
    }
}
