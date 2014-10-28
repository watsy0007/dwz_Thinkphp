<?php
/**
 * Created by PhpStorm.
 * User: watsy
 * Date: 14/10/28
 * Time: 20:54
 */

class ContractAllController extends  \Common\Controller\CommonController {

    public function index()
    {
        $this->getAccessButton();
        parent::index();
    }
}
