<?php 

defined('YII_DEBUG') or define('YII_DEBUG', true);
defined('YII_TRACE_LEVEL') or define('YII_TRACE_LEVEL', 3);

require_once __DIR__ . "/vendor/autoload.php";
require_once __DIR__ . "/vendor/yiisoft/yii/framework/yii.php";
$config = require __DIR__ . "/protected/config/test.php";

require_once __DIR__ . "/vendor/codeception/yii-bridge/yiit.php";

return array(
    'class' => 'CWebApplication',
    'config'=> $config,
);
