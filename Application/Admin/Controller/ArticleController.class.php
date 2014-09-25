<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK IT ]
// +----------------------------------------------------------------------
// | Copyright (c) 2010 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: 囚鸟先生
// +----------------------------------------------------------------------
// $Id: ArticleController.class.php 2014-05-17 23:58:02 $

    use Common\Controller\CommonController;
class ArticleController extends CommonController{

	public function index(){
		$this->cate=C('NEWS_CATE');
		parent::index();
	}

	public function add(){
		$node=M("Node")->select();
		$nodeData=list_to_tree($node);
		$this->node=$nodeData;

		$groupId=$_GET['groupId'];
		$Access=M("Access")->where(array('role_id'=>"{$groupId}"))->select();

		$array=array();
		foreach($Access as $val){
			$array[$val['level']][]=$val['node_id'];
		}
		$this->selectdNode=$array;
		$this->display();
	}
    
    public function search(){
    	$this->display();
    }
}


