<?php
/**
 * Created by PhpStorm.
 * User: watsy
 * Date: 14/9/23
 * Time: 20:57
 */

class SystemRoleNodeLogic extends \Think\Model {

    public function getNodeWithRoles($roleIdArray)
    {
        $model = D('SystemNodeRole');
        if (method_exists($model, 'field'))
        {
            return $model->field('node_id')->where('role_id in (' . implode(",",$roleIdArray) . ')')->select();
        }
        return array();
    }
} 