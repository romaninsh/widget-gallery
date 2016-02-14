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
            if($m['add_default_layout']){
                $this->app->add('View',null,'Layout',['layout/wrapper'])
                    ->template->setHTML('Content',$m['code']);
            }else{
                $this->app->template->setHTML('Layout',$m['code']);
            }
            return;
        }

        $this->app->layout->destroy();
        $l = $this->app->add('Layout_Basic',null,null,['layout/single']);
        $l->template->set('iframe_url',$this->app->url(null,['code'=>true]));
        $l->template->set('Code',$m['code']);

        $this->app->jui->addStaticStylesheet('codemirror');
        $this->app->jui->addStaticStylesheet('codemirror/theme/night');
        $this->app->jui->addStaticInclude('codemirror');
        $this->app->jui->addStaticInclude('codemirror/javascript/javascript');
        $this->app->jui->addStaticInclude('codemirror/xml/xml');


        $l->js(true, "document.cm = CodeMirror.fromTextArea($('#code')[0], { lineNumbers: true, ".
            "mode: 'text/html', lineWrapping: true, readOnly: true, theme: 'night', htmlMode: true});

      var charWidth = document.cm.defaultCharWidth(), basePadding = 4;
      document.cm.on('renderLine', function(cm, line, elt) {
        var off = CodeMirror.countColumn(line.text, null, cm.getOption('tabSize')) * charWidth;
        elt.style.textIndent = '-' + off + 'px';
        elt.style.paddingLeft = (basePadding + off) + 'px';
        console.log(off);
      });
      document.cm.refresh();

            ");

        $this->app->jui->addStaticInclude('highlight.pack');
        $this->app->jui->addStaticInclude('widgets');

    }
}
