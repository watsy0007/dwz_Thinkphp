<?php
/**
 * Created by PhpStorm.
 * User: watsy
 * Date: 14/10/28
 * Time: 20:26
 */

class SystemRoleNodeButtonModel extends \Think\Model\RelationModel {

    protected $tableName = 'p_role_node_button';

    protected $_link = array(
        'button' => array(
            'mapping_type'      =>  self::BELONGS_TO,
            'class_name'        =>  'SystemNodeButton',
            'foreign_key'        =>  'button_id',
            'mapping_fields'    =>  'id, name, content'
        ),
    );

}