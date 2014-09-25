<?php
/**
 * Created by PhpStorm.
 * User: watsy
 * Date: 14/9/23
 * Time: 15:51
 */

class SystemRoleUserModel extends \Think\Model\RelationModel {

    protected $tableName = 'role_user';

    protected $_link = array(
        'user' => array(
            'mapping_type'      =>  self::BELONGS_TO,
            'parent_key'        =>  'user_id',
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