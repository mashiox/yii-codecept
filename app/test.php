<?php 

defined('YII_DEBUG') or define('YII_DEBUG', true);
defined('YII_TRACE_LEVEL') or define('YII_TRACE_LEVEL', 3);

$config = require __DIR__ . "/protected/config/test.php";

require_once __DIR__ . "/vendor/yiisoft/yii/framework/yii.php";
require_once __DIR__ . "/vendor/autoload.php";

return array(
    'class' => 'CWebApplication',
    'config'=> $config,
);
