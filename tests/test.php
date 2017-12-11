<?php 

defined('YII_DEBUG') or define('YII_DEBUG', true);
defined('YII_TRACE_LEVEL') or define('YII_TRACE_LEVEL', 3);

defined('APP_ROOT') or define('APP_ROOT', '/opt/app/');

$autoloader = APP_ROOT . "/vendor/autoload.php";
$yii = APP_ROOT . "/vendor/yiisoft/yii/framework/yii.php";
$yii_bridge = APP_ROOT . "/vendor/codeception/yii-bridge/yiit.php";

$config = require(APP_ROOT . "/protected/config/test.php");

require_once($yii);
require_once($autoloader);
require_once($yii_bridge);


return array(
    'class' => 'CWebApplication',
    'config'=> $config,
);
