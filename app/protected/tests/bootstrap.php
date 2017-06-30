<?php

// change the following paths if necessary
$config=dirname(__FILE__).'/../config/test.php';

// $yiit=dirname(__FILE__).'/../../vendor/yiisoft/yii/framework/yiit.php';
// require_once($yiit);

$yiit2=dirname(__FILE__)."/../../vendor/codeception/yii-bridge/yiit.php";
require_once($yiit2);
require_once(dirname(__FILE__).'/WebTestCase.php');

Yii::createWebApplication($config);
