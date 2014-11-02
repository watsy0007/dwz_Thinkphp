<?php
/**
 * Created by PhpStorm.
 * User: watsy
 * Date: 14/11/2
 * Time: 20:32
 */

class SystemNodeLogic extends \Think\Model
{
    /**
     * @param $controllerName
     *
     * @return int|bool             false错误
     */
    public function getNodeId($controllerName)
    {
        $model = D('SystemNode');
        $param['controller'] = $controllerName;
        $data = $model->field('id')->where($param)->find();
        if ($data)
        {
            return $data['id'];
        }
        return false;
    }
} 