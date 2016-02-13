<?php
class page_index extends Page
{
    function initMainPage()
    {

        $l = $this->add('CompleteLister',null,null,['lister/widgets']);
        $l->setModel('Widget');
        $l->addHook('formatRow',function($l){
            $l->current_row['url'] = $this->app->url($l->current_row['name_url']);
        });
    }
    function subPageHandler($n){
        $m = $this->add('Model_Widget')->tryLoadBy('name_url',$this->app->page);
        if(!$m->loaded())$this->app->redirect('/');

        $this->title = $m['name'];

        // showing embed-code
        if($_GET['code']){
            $this->app->layout->destroy();
            $this->app->template->set('css','atk-default.css');
            $m['views'] = $m['views']+1;
            $m->save();
            $this->app->template->setHTML('Layout',$m['code']);
            return;
        }

        $this->app->layout->destroy();
        $l = $this->app->add('Layout_Basic',null,null,['layout/single']);
        $l->template->set('iframe_url',$this->app->url(null,['code'=>true]));
        $l->template->set('Code',$m['code']);

        $this->app->jui->addStaticInclude('highlight.pack');
        $this->app->jui->addStaticInclude('widgets');

    }
}
