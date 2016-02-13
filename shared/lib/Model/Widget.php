<?php
class Model_Widget extends SQL_Model {
    public $table = 'widget';

    function init(){
        parent::init();

        $v = $this->add('Controller_Validator');

        $this->addField('name');

        $this->addField('name_url')->caption('Slug');

        $this->addField('date')->type('date');
        $this->addField('color');
        $this->addField('code')->type('text')->system(true);

        $this->addField('views')->defaultValue(0)->editable(false);


        $v->is('name','required');
        $v->is('name_url','required','regex?Must be a valid part of URL','[a-zA-Z_-]');

        $v->on('beforeSave');

        $this->setOrder('date');


        $this->add('dynamic_model/Controller_AutoCreator_MySQL');


    }
}
