<?php
class Frontend extends ApiFrontend {
    function init() {
        parent::init();

        $this->add('Layout_Widgets');
        $this->dbConnect();
        $this->add('jUI');

        $this->template->set('css','widgets.css');

    }

}
