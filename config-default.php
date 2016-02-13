<?php
$config['url_prefix']='?page=';
$config['url_postfix']='';

$config['dsn']=$_ENV['DATABASE_URL']?str_replace(
  ['mysql2',':3306'],
  ['mysql',''],
  $_ENV['DATABASE_URL']) : 'mysql://root:root@127.0.0.1/widgets';
