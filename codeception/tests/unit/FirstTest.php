<?php


class FirstTest extends \Codeception\Test\Unit
{
    use Codeception\Specify;

    private $adminEmail;

    // tests
    public function testAdminEmailParam()
    {
        $this->adminEmail = Yii::app()->params['adminEmail'];

        $this->specify("adminEmail is required", function(){
            $this->assertTrue(isset($this->adminEmail));
        });

        $this->specify("adminEmail is in email format", function(){
            // $this->assertTrue(filter_var($this->adminEmail, FILTER_VALIDATE_EMAIL) !== false);
            verify(filter_var($this->adminEmail, FILTER_VALIDATE_EMAIL))->notEquals(false);
        });
    }
}
