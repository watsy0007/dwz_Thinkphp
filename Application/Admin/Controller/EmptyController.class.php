<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK IT ]
// +----------------------------------------------------------------------
// | Copyright (c) 2010 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: 囚鸟先生　
// +----------------------------------------------------------------------
// $Id: EmptyController.class.php 1  2014-05-18 10:08:02$

    use Common\Controller\CommonController;
class EmptyController extends CommonController{

    protected function getActionName(){
        return CONTROLLER_NAME;
    }


}

