<?php
/**
 * Created by PhpStorm.
 * User: watsy
 * Date: 14/9/22
 * Time: 10:08
 */

use Think\Controller;

    use Common\Controller\CommonController;
class SystemNodeController extends CommonController {

    public function _before_add()
    {
        $model = CM(CONTROLLER_NAME);
        $this->assign('list', $model->field('id,name')->select());
    }

    public function _before_edit()
    {
        $model = CM(CONTROLLER_NAME);
        $this->assign('list', $model->field('id,name')->select());
    }

    public function _before_index()
    {

    }

    public function nodeFunction()
    {
        $id = $_REQUEST['id'];

        $this->display();
    }

} 