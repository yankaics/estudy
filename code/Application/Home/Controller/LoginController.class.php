<?php
namespace Home\Controller;
use Think\Controller;
class LoginController extends Controller {
    public function login(){
        $this->display();
    }
    public function validation(){
        $data = I('post.');
    	$User = M('users');
        $email = $data['yourname'];
        
        $password = md5($data['yourpassword']);
        //dump($password);
        $result = $User->getFieldByEmail($email,'password');
        //dump($result);
        $username = $User->getFieldByEmail($email,'username');
        if ($result == $password) {
        	session('name',$username); 
        	$this->redirect('/');
        	
        }else{
        	$this->error('用户名或密码不正确',U('home/login/login'));
        }
        //if ($data['state']=0) {
        //     $this->error('您的用户未激活，无法登陆，请到邮件验证激活',U('home/login/login'));
        // }

    }
    public function exits(){
        session('name',null); 
        $this->redirect('/');
    }
}
