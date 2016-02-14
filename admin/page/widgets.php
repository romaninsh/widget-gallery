<?php

class page_widgets extends Page {
    public $title = 'Widget Manager';
    function page_index(){

        $cr = $this->add('CRUD',['grid_class'=>'MyGrid']);
        $cr->setModel('Model_Widget');

        $cr->grid->addFormatter('name_url','link',['page'=>'widgets/code']);

    }

    function page_code(){


        $this->setModel('Widget')->load($this->app->stickyGET('id'));
        $this->title = $this->model['name'];
        $this->addCrumbReverse('Edit Code');

        $this->app->jui->addStaticStylesheet('codemirror');
        //$this->app->jui->addStaticStylesheet('codemirror/theme/night');
        $this->app->jui->addStaticInclude('codemirror');
        $this->app->jui->addStaticInclude('codemirror/javascript/javascript');
        $this->app->jui->addStaticInclude('codemirror/xml/xml');

        $this->model->getElement('add_default_layout')->editable(true);
        $this->model->getElement('code')->editable(true);

        $f = $this->add('Form',null,null,['form/stacked']);
        $f->setModel($this->model,['add_default_layout','code']);
        $f->addButton('Save')->addClass('atk-swatch-green')
            ->js('click',['document.cm.save();',$f->js()->submit()]);
        $f->onSubmit(function($f){
            $f->save();
            return $this->js()->univ()->redirect($this->app->url('..'));
        });

        $f->addButton('Cancel')->link('..');


        $this->js(true, "document.cm = CodeMirror.fromTextArea($('textarea')[0], { lineNumbers: true, ".
            "mode: 'text/html', lineWrapping: true, theme: 'night', htmlMode: true});

      var charWidth = document.cm.defaultCharWidth(), basePadding = 4;
      document.cm.on('renderLine', function(cm, line, elt) {
        var off = CodeMirror.countColumn(line.text, null, cm.getOption('tabSize')) * charWidth;
        elt.style.textIndent = '-' + off + 'px';
        elt.style.paddingLeft = (basePadding + off) + 'px';
        console.log(off);
      });
      document.cm.refresh();

            ");



    }

}
