<?php
/**
 * Created by PhpStorm.
 * User: watsy
 * Date: 14/10/28
 * Time: 17:35
 */

class SystemNodeButtonController extends \Common\Controller\CommonController
{
    public function _before_index()
    {
        $id = $_REQUEST['id'];
        $this->assign('id', $id);

        $_REQUEST['node_id'] = $id;
        unset($_REQUEST['id']);
    }

    public function _before_add()
    {
        $id = $_REQUEST['id'];
        $this->assign('id', $id);
    }
} 