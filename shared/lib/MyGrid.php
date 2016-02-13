<?php
class MyGrid extends Grid {
    function init_link($field)
    {
        $this->setTemplate('<a href="{$_link}">{$'.$field.'}</a>',$field);
    }
}
