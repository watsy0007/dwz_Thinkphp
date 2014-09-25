<?php

    use Common\Controller\CommonController;
class FormController extends CommonController {
    //过滤查询字段
    function _filter(&$map){
        if(!empty($_POST['name'])) {
        $map['title'] = array('like',"%".$_POST['name']."%");
        }
    }
    
    public function index() {
        $name = 'Form' ;
        $this->_index($name); 
    }
        
    public function insert() {
        $name = 'Form' ;
        $this->_insert($name); 
    }
    
    public function edit() { 
        $name = 'Form' ;
        $this->_edit($name); 
    }
    
    public function update() { 
        $name = 'Form' ;
        $this->_update($name); 
    }
    
    public function delete() { 
        $name = 'Form' ;
        $this->_delete($name); 
    }  
    
    public function foreverdelete() { 
        $name = 'Form' ;
        $this->_foreverdelete($name); 
    }  
    
    public function clear() { 
        $name = 'Form' ;
        $this->_clear($name); 
    }  
    
    public function forbid() { 
        $name = 'Form' ;
        $this->_forbid($name); 
    }  
    
    public function checkPass() { 
        $name = 'Form' ;
        $this->_checkPass($name); 
    } 
    
    public function recycle() { 
        $name = 'Form' ;
        $this->_recycle($name); 
    }  
    
    public function recycleBin() { 
        $name = 'Form' ;
        $this->_recycleBin($name); 
    } 
    
    public function resume() { 
        $name = 'Form' ;
        $this->_resume($name); 
    } 
    
    public function saveSort() { 
        $name = 'Form' ;
        $this->_saveSort($name); 
    } 
    
}