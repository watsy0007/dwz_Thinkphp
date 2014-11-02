<?php
/**
 * Created by PhpStorm.
 * User: watsy
 * Date: 14/11/2
 * Time: 20:18
 */

namespace Admin\TagLib;

use Think\Template\TagLib;

class TagLibControllerButton extends TagLib
{

    protected $tags = array(
        'ctrlbtn'   => array(
            'attr'  => '',
            'close' => 1
        )
    );

    public function _ctrlbtn($tag, $content)
    {
        $controllerName = CONTROLLER_NAME;

        $nodeLogic = D('SystemNode', 'Logic');
        $nodeId = $nodeLogic->getNodeId($controllerName);
        $roleModel = D('SystemRole', 'Logic');
        $roleId = $roleModel->getRolePureIdArray($_SESSION[C('USER_AUTH_KEY')]);


        if (false !== $nodeId)
        {
            $buttonLogic = D('SystemNodeRoleButton', 'Logic');
            $contents = $buttonLogic->getButtonContents($nodeId, $roleId);
            if (false !== $contents)
            {
                $parse = '<ul class="toolBar">';
                foreach($contents as $key => $value)
                {
                    $parse .= html_entity_decode($value) ;
                }
                return $parse .= "</ul>";
            }
        }





    }
} 