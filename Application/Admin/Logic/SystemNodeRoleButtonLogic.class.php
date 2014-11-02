<?php
/**
 * Created by PhpStorm.
 * User: watsy
 * Date: 14/11/2
 * Time: 20:37
 */

class SystemNodeRoleButtonLogic extends \Think\Model
{
    public function getButtonContents($nodeId, $roleIds)
    {
        $model = D('SystemRoleNodeButton');
        $param['role_id'] = array('in', $roleIds);
        $param['node_id'] = $nodeId;
        $data = $model->relation(true)->field('id, button_id')->where($param)->select();

        if ($data)
        {
            return array_map(function($item){ return $item['button']['content']; },$data);
        }

        return false;
    }
} 