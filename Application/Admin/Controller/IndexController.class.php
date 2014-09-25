<?php

use Common\Controller\CommonController;
class IndexController extends CommonController {

    // 框架首页
	public function index() {

		if (isset ( $_SESSION [C ( 'USER_AUTH_KEY' )] )) {
            $model = D('SystemMenu','Logic');
            $array = $model->getLeftTree();
            $this->assign('nodes', $array);
		}

		C ( 'SHOW_RUN_TIME', false ); // 运行时间显示
		C ( 'SHOW_PAGE_TRACE', false );
		$this->display ();
	}

}