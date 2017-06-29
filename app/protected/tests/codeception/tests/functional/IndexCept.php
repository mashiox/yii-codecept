<?php 
$I = new FunctionalTester($scenario);
$I->wantTo('test the index page');

$I->amOnPage('/index.php');

$I->see('My Web Application', '#header #logo');

$I->click('Login');

$I->see('Login', 'h1');

$I->see('Username');

$I->fillField('#LoginForm_username', 'admin');
$I->fillField('#LoginForm_password', 'admin');

$I->click('#login-form input[type="submit"]');

$I->seeLink('Logout (admin)');
$I->click('Logout (admin)');
$I->click('Login');