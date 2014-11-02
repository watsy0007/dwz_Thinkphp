<?php
/**
 * Created by PhpStorm.
 * User: watsy
 * Date: 14/11/2
 * Time: 20:06
 */

    namespace Admin\Common;

class StaticHelper {

    /**
     * 对比数据库的差异
     *
     * @param $DB1      数据库1
     * @param $DB2      数据库2
     * @param $host1    主机1
     * @param $user1    账户1
     * @param $pass1    账号2
     * @param $host2    主机2     留空使用主机1
     * @param $user2    账号2     留空使用账号1
     * @param $pass2    密码2     留空使用密码1
     */
    static function compareDB($DB1, $DB2,
                              $host1, $user1, $pass1,
                              $host2 = '', $user2 = '',$pass2 = '')
    {
        if (!$DB1 || !$DB2 || !$host1 || !$user1)
        {
            return false;
        }
        $host2 = $host2 ? $host2 : $host1;
        $user2 = $user2 ? $user2 : $user1;
        $pass2 = $pass2 ? $pass2 : $pass1;

        $dbInfoArray1 = StaticHelper::getDBInfo($host1, $user1, $pass1, $DB1);
        $dbInfoArray2 = StaticHelper::getDBInfo($host2, $user2, $pass2, $DB2);


        $tmpArray2 = $dbInfoArray2;

        foreach($tmpArray2 as $key2 => $value2)
        {
            //比较表
            if (in_array($key2, array_keys($dbInfoArray1)))
            {
                $value1 = $dbInfoArray1[$key2];
                //完成相等
                if ($value1 == $value2)
                {
                    //去掉重复
                    unset($dbInfoArray1[$key2]);
                    unset($dbInfoArray2[$key2]);
                }
                else
                {
                    foreach($value2 as $fieldKey => $fieldInfo)
                    {
                        //比较字段
                        if (in_array($fieldKey , array_keys($value1)))
                        {
                            $fieldInfo1 = $value1[$fieldKey];
                            //字段完全一致
                            if ($fieldInfo1 == $fieldInfo)
                            {
                                unset($dbInfoArray1[$key2][$fieldKey]);
                                unset($dbInfoArray2[$key2][$fieldKey]);
                            }
                            else
                            {
                                foreach($fieldInfo as $InfoKey => $info)
                                {
//                                        if ($InfoKey == 'Field')
//                                        {
//                                            continue;
//                                        }
                                    $info1 = $fieldInfo1[$InfoKey];
                                    //类型相同
                                    if ($info1 == $info)
                                    {
                                        unset($dbInfoArray1[$key2][$fieldKey][$InfoKey]);
                                        unset($dbInfoArray2[$key2][$fieldKey][$InfoKey]);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }

        return array(
            $DB1 => $dbInfoArray1,
            $DB2 => $dbInfoArray2,
        );
    }

    /**
     * 合并不同的数据
     * @param $array1
     * @param $array2
     *
     * @return array
     */
    static function migrateDiffInfo($array1, $array2)
    {

        $migreateArray = array();
        //合并与过滤掉1中和2中重复
        foreach($array2 as $key2 => $value2)
        {
            foreach($value2 as $subKey2 => $subValue2)
            {
                foreach($subValue2 as $infoKey => $info)
                {
                    if (array_key_exists($infoKey, $array1[$key2][$subKey2]))
                    {
                        $migreateArray[$key2][$subKey2][$infoKey][0] = $array1[$key2][$subKey2][$infoKey];
                        $migreateArray[$key2][$subKey2][$infoKey][1] = $info;
                        unset($array1[$key2][$subKey2][$infoKey]);
//                            echo ($info);
                    }
                    else
                    {
                        $migreateArray[$key2][$subKey2][$infoKey][1] = $info;
                    }
                }

                if (count($array1[$key2][$subKey2]) == 0)
                {
                    unset($array1[$key2][$subKey2]);
                }
            }
            if (count($array1[$key2]) == 0)
            {
                unset($array1[$key2]);
            }
        }

        //合并1中单独存在的
        foreach($array1 as $key1 => $value1)
        {
            foreach($value1 as $subKey1 => $subValue1)
            {
                foreach($subValue1 as $infoKey => $info)
                {

                    $migreateArray[$key1][$subKey1][$infoKey][0] = $info;
                }

            }
        }

        return $migreateArray;
    }

    static function getDBInfo($host, $user ,$pass, $DB)
    {
        $conn = mysql_connect($host,$user,$pass);
        $dbInfoArray = array();
        if (false !== $conn)
        {
            mysql_select_db($DB, $conn); //标准的数据库
            $q = mysql_query("show tables", $conn);
            while($s = mysql_fetch_array($q, MYSQL_ASSOC)){
                $name = $s['Tables_in_'.$DB];
                $q1 = mysql_query("desc $name");
                while ($s1 = mysql_fetch_array($q1,MYSQL_ASSOC)) {
                    $dbInfoArray[$name][$s1['Field']] = $s1;
                }
            }
            mysql_close();
        }

        return $dbInfoArray;

    }


} 