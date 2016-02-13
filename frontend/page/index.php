<?php
class page_index extends Page
{
    function init()
    {
        parent::init();

        $this->add('CompleteLister',null,null,['lister/widgets'])->setModel('Widget');

    }
}
