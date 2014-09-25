<?php
use Org\Util\Dir;
    use Common\Controller\CommonController;
// 文件模块
class FileController extends CommonController {
	//文件列表
	public function index(){
		if(IS_SAE){
			$this->sae=1;
		}else{
			$this->sae=0;
		}	

		//路径构造
		if((!$_GET['path'] && !$_GET['up'] && !$_SESSION['path'])||$_GET['root']) $_SESSION['path'] = $_SERVER['DOCUMENT_ROOT'];
		if($_GET['path']) $_SESSION['path'] = $_SESSION['path'].'/'.$_GET['path'];
		$_SESSION['path'] = str_replace('//', '/', $_SESSION['path']);
		$path = $_SESSION['path'];
		
		//返回上层目录		
		if($_GET['up']){
			//限制在网站根目录
			if(strlen($path)>strlen($_SERVER['DOCUMENT_ROOT'])){
				preg_match('/^.*\//', $path, $match);
				$path = substr($match[0],0,-1);
				$_SESSION['path'] = $path; 
			}else{
				$_SESSION['path'] = $_SERVER['DOCUMENT_ROOT'];
			}
		}
		$dir = new Dir($path);
		$list = $dir->_values;
		foreach ($list as $key => $val){
			$list[$key]['filename'] = iconv('gbk', 'utf-8', $list[$key]['filename']);
			$list[$key]['fileimg'] = $this->getFileImg($val);
		}
		$this->assign('list',$list);
		$this->display();
	}
	//文件图标
	public function getFileImg($ary){
		if(key_exists('type', $ary)){			
			if($ary['type']=='dir'){
				$filename = 'dir';
			}else if($ary['type']=='file'){
				switch ($ary['ext']){
					case 'dir':
						$filename = 'dir';
						break;
					case 'php':
						$filename = 'php';
						break;
					case 'jpg':
						$filename = 'jpg';
						break;
					case 'gif':
						$filename = 'gif';
						break;
					case 'png':
						$filename = 'image';
						break;
					case 'js':
						$filename = 'js';
						break;
					case 'flash':
						$filename = 'flash';
						break;
					case 'css':
						$filename = 'css';
						break;
					case 'txt':
						$filename = 'txt';
						break;
					case 'zip':
						$filename = 'zip';
						break;
					case 'html':
						$filename = 'htm';
						break;
					case 'htm':
						$filename = 'htm';
						break;
					case 'wmv':
						$filename = 'wmv';
						break;
					case 'rm':
						$filename = 'rm';
						break;
					case 'mp3':
						$filename = 'mp3';
						break;						
					default:
						$filename = 'unknow';			
				}
			}
			$fileimg = '<img src="__PUBLIC__/Images/file/'.$filename.'.gif" align="absmiddle" />';
			return $fileimg;
		}
	}
	//文件编辑
	public function edit(){
		if($_POST['content']){
			$path = $_SESSION['path'].'/'.$_POST['filename'];
			$data = $_POST['content'];
			file_put_contents($path, $data);
			$this->success('编辑成功！');			
		}else{
			$filename = $_GET['filename'];
			$path = $_SESSION['path'].'/'.$filename;
			$content = file_get_contents($path);
			mb_detect_encoding($content);
			if(mb_detect_encoding($content)!='UTF-8') $content = iconv("gbk", "utf-8", $content);
			$this->assign('content',$content);
			$this->display();
		}
	}
	//文件重命名
	public function rename(){
			$this->assign('filename',$_GET['filename']);
			$this->display();
		
	}

	//保存上传文件
	public function saveFiles(){
			$path = $_SESSION['path'];
			if(rename($path.'/'.$_POST['oldname'], $path.'/'.$_POST['newname'])){
			 	$this->success('文件重命名成功！');
			}else{
				$this->error('文件重命名失败！');
			} 
	}
	//文件上传
	public function upload(){		
		if(!empty($_FILES['file']['name'])){
			import("ORG.Net.UploadFile");
			$upload = new UploadFile();
			$upload->maxSize  = 1048576 * 3 ; 
			$upload->allowExts  = array('jpg', 'gif', 'png', 'jpeg'); 
			$upload->savePath =  $_SESSION['path'].'/';
			$upload->saveRule = 'uniqid';			
			if(!$upload->upload()) { 
				$this->error('上传失败！');
			}else{
				echo '<script type="text/javascript">
					var response = {
						"status":"1",
						"info":"上传成功！",
						"navTabId":"File",
						"forwardUrl":"'.__URL__ .'/index",
						"callbackType":"closeCurrent"
					};
					if(window.parent.donecallback) {
						 window.parent.donecallback(response);
					}
			    </script>';
			}
		}else{
			$this->display();
		}
	}
	//文件删除，不支持删除非空文件夹
	public function foreverdelete(){
		$filename = $_SESSION['path'].'/'.$_GET['filename'];
		if($_GET['filetype']=='file'){
			if(unlink($filename)){
				$this->success('文件删除成功！');
			} else{
				$this->error('文件删除失败！');
			}
		}elseif ($_GET['filetype']=='dir'){
			if(rmdir($filename)){ 
				$this->success('目录删除成功！');
		}else {
				$this->error('目录不为空或删除失败！');
		}
		}
	}
	//文件移动
	public function move(){
		
			$this->assign('filename',str_replace('//', '/', $_SESSION['path'].'/'.$_GET['filename']));
			$this->display();
		
	}

	//保存移动文件
	public function saveMoveFiles (){
			
			$oldpath = $_POST['filename'];
			$newpath = str_replace('//', '/', $_POST['newpath']);
			if(rename($oldpath, $newpath)) {
				$this->success('文件移动成功！');
			}else {
				$this->error('文件移动失败！');
			}
	
    }
}