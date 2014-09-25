<?php
/**
 * Created by PhpStorm.
 * User: watsy
 * Date: 14/9/22
 * Time: 10:05
 */

use Think\Model;


class SystemNodeModel extends  Model\RelationModel {
    public  $tableName = 'p_node';

    protected $_link = array(
        'parent' => array(
            'mapping_type'      =>  self::BELONGS_TO,
            'class_name'        =>  'SystemNode',
            'parent_key'        =>  'pid',
            'mapping_fields'    =>  'id, name'
        )
    );
} 