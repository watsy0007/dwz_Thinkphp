<?php
/**
 * Created by PhpStorm.
 * User: watsy
 * Date: 14/9/23
 * Time: 16:04
 */

class SystemRoleLogic extends \Think\Model {

    public function getRoleIDArray($userId)
    {
        $model = D("SystemRoleUser");
        if (method_exists($model, 'field'))
        {
            return $model->field('role_id')->where('user_id='.$userId)->select();
        }
        return array();
    }


    public function getRolePureIdArray($userId)
    {
        return array_map(function($item){ return $item['role_id'];}, $this->getRoleIDArray($userId));
    }
} 