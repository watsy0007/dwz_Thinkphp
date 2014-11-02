<?php
/**
 * Created by PhpStorm.
 * User: watsy
 * Date: 14/11/2
 * Time: 20:07
 */

    use Admin\Common\StaticHelper;

class SystemDBCompareController extends \Common\Controller\CommonController
{
    public function index()
    {
        if ($_POST)
        {
            $DB1 = I('post.DB1');
            $DB2 = I('post.DB2');
            $Host = I('post.host');
            $user = I('post.user');
            $pass = I('post.pass');

            $diff = StaticHelper::compareDB($DB1,$DB2,$Host,$user,$pass);
            $diffMigreate = StaticHelper::migrateDiffInfo($diff[$DB1], $diff[$DB2]);

            $this->assign('DB1', $DB1);
            $this->assign('DB2', $DB2);
            $this->assign('Host', $Host);
            $this->assign('user', $user);
            $this->assign('pass', $pass);

            $this->assign('list', $diffMigreate);
        }

        $this->display();
    }
} 