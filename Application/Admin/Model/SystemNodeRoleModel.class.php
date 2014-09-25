<?php
/**
 * Created by PhpStorm.
 * User: watsy
 * Date: 14/9/23
 * Time: 15:20
 */

class SystemNodeRoleModel extends \Think\Model\RelationModel {

    protected $tableName = 'p_node_role';

    protected $_link = array(
        'node' => array(
            'mapping_type'      =>  self::BELONGS_TO,
            'class_name'        =>  'SystemNode',
            'parent_key'        =>  'node_id',
            'mapping_fields'    =>  'id, name'
        ),
        'role' => array(
            'mapping_type'      =>  self::BELONGS_TO,
            'class_name'        =>  'Role',
            'parent_key'        =>  'role_id',
            'mapping_fields'    =>  'id, name'
        ),
    );

} 