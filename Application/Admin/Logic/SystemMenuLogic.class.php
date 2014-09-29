<?php
    /**
     * Created by PhpStorm.
     * User: watsy
     * Date: 14/9/22
     * Time: 14:31
     */

    class SystemMenuLogic extends \Think\Model {


        /**
         * @param $value
         * @param $array
         *
         * @return bool
         */
        public function insertTree($value, &$array)
        {
            $insert = false;
            if (!$value['active'])
            {
                return false;
            }
            if (array_key_exists($value['id'], $array))
            {
                $array[$value['id']] = $value;
                return true;
            }
            else if (array_key_exists($value['pid'], $array))
            {

                $array[$value['pid']]['children'][$value['id']] = $value;
                return true;
            }
            else if ($value['pid'] != 0)
            {
                if (isset($array['children']))
                {
                    $this->insertTree($value, $array['children']);
                }
                else
                {
                    $tmpArray = array();
                    foreach($array as $subKey => $subValue)
                    {
                        if (array_key_exists('children', $subValue))
                        {
                            $insert = $this->insertTree($value, $subValue['children']);
                        }
                        $tmpArray[$subKey] = $subValue;
                    }
                    $array = $tmpArray;
                }

            }
            else if ($value['pid'] == 0)
            {
                $array[$value['id']] = $value;
                $insert = true;
            }
            return $insert;
        }


        /**
         * @param int $userId       用户ID
         * @param bool $config      配置
         * @return array
         */
        public function getLeftTree($userId = 0, $config = false)
        {
            if ($userId == 0)
            {
                $userId = $_SESSION [C ( 'USER_AUTH_KEY' )];
            }
            $model = D('SystemNode');
            $array = $model->select();

            $values = array();
            foreach($array as $key => $value)
            {
                $this->insertTree($value, $values);
            }

            function sortFunc (&$a, &$b) {
                if (is_array($a) && isset($a['children'])) {
                    $aChildren = $a['children'];
                    uasort($aChildren,'sortFunc');
                    $a['children'] = $aChildren;
                }
                if (is_array($b) && isset($b['children'])) {
                    $bChildren = $b['children'];
                    uasort($bChildren,'sortFunc');
                    $b['children'] = $bChildren;
                }
                if (isset($a['orderIndex']) && isset($b['orderIndex']))
                {
                    if (intval($a['orderIndex']) == intval($b['orderIndex']))
                    {
                        return 0;
                    }
                    return intval($a['orderIndex']) > intval($b['orderIndex']) ? -1 : 1;
                }
                return 0;
            };

            usort($values,'sortFunc');

            $roleLogic = D('SystemRole','Logic');
            $roles = $roleLogic->getRoleIDArray($userId);
            $nodeLogic = D('SystemRoleNode', 'Logic');
            $nodes = $nodeLogic->getNodeWithRoles(array_map(function($item){return $item['role_id'];},$roles));

            if (!$config)
            {
                $tmpValues = array();
                foreach($values as $key => $value)
                {
                    $this->filterNode($value, array_map(function($item){return $item['node_id'];},$nodes));
                    $tmpValues[$key] = $value;
                }

                return $tmpValues;
            }

            return $values;
        }


        public function updateRoleNode($roleId, $nodeArray)
        {
            $outModel = D('SystemNodeRole');
            if (method_exists($outModel, 'startTrans'))
            {
                $outModel->startTrans();
            }

            if (method_exists($outModel,'where'))
            {
                $outModel->where('role_id='.$roleId)->delete();
                foreach($nodeArray as $key => $value)
                {
                    $model = D('SystemNodeRole');
                    if ($value != 0 &&
                        false === $model->add(array(
                                                  'role_id' => $roleId,
                                                  'node_id' => $value
                                              )))
                    {
                        $outModel->rollback();
                        return false;
                    }
                }

            }
            $outModel->commit();
            return true;
        }


        private function filterNode(&$array, $filterArray, &$parentArray = array())
        {
            $tmpArray = array();
            if (!array_key_exists('children', $array))
            {
                //无子树
                //节点在过滤列表内
                if (in_array($array['id'], $filterArray))
                {
                    $parentArray[$array['id']] = $array;
                    return true;
                }
            }
            else
            {
                foreach($array['children'] as $key => $value)
                {
                    if($this->filterNode($value, $filterArray, $tmpArray))
                    {
                        $tmpArray[$key] = $value;
                    }
                }
                if (count($tmpArray) > 0)
                {
                    /*
                     * 有子树
                     * 同一级别内有节点在列表内
                     */
                    $array['children'] = $tmpArray;
                    return true;
                }
                else
                {
                    unset($array['children']);
                }

            }

            return false;
        }
    }