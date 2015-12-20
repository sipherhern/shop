<?php
include('connectToMysql.php');
header("Content-Type:text/html;charset=utf-8");
	
$username 	= trim($_POST['username']); 
$password		= $_POST['password'];
$phone=$_POST['phone'];
$name		= trim($_POST['name']);
$email		= trim($_POST['email']);
if (!empty($username)) 
{		// 用户填写了数据才执行数据库操作
    // 数据验证, empty()函数判断变量内容是否为空
    if (empty($username) || empty($email) 
            || empty($password)|| empty($phone) ) {
        echo '数据输入不完整';
        exit;
    }
    if (strlen($password) < 6 || strlen($password) > 30) {
        echo '密码必须在6到30个字符之间';
        exit;
    }
    // 与客户端验证Email时相同的正则表达式
    $pattern = "/^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/";
    if (!preg_match($pattern, $email)) {
        echo 'Email格式不合法!';
        exit;
    }
	 $result=$db->query("select * from user where username='$username'" );
	  if ($result && mysql_num_rows($result) > 0)
	   {
       $db->Get_admin_msg("register.php","该用户名已被占用，请重新注册");
   		}
	else
	{
		$pwd = MD5($pwd);
		 $db->query("insert into  `user` set username='$_POST[username]',password='$_POST[password]',email='$_POST[email]',phone='$_POST[phone]',comment='$_POST[comment]'");
		  $db->Get_admin_msg("login.php","注册成功，请登录");	
	}	
}
?>

<!DOCTYPE html>
<html>
<head>
<title>用户注册</title>
<link href="css/style.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta name="keywords" content="Pink Contact Form ,Login Forms,Sign up Forms,Registration Forms,News latter Forms,Elements"./>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

<!--webfonts-->
<link href='http://fonts.useso.com/css?family=Lato:100,300,400,700,100italic,300italic,400italic|Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Raleway:400,200,300,500,600,800,700,900' rel='stylesheet' type='text/css'>
<!--//webfonts-->
<script language='javascript'>
<!--
// 验证表单数据有效性的函数
// 当函数返回true时，说明验证成功，表单数据正常提交
// 当函数返回false时，说明验证失败，表单数据被终止提交
function doCheck()
{
    var username   = document.frmRegister.username.value;
    var password         = document.frmRegister.password.value;
    var phone = document.frmRegister.phone.value;
    var name        = document.frmRegister.name.value;
    var email       = document.frmRegister.email.value;
    
    if (username == '') {
        alert('请输入用户名!'); return false;
    }
	if (email == '') {
        alert('请输入Email!'); return false;
    }
    if (password == '') {
        alert('请输入密码!'); return false;
    }    
	if (phone == '') {
        alert('请输入您的电话!'); return false;
    }
    
    if (password.length < 6 || password.length > 30) {
        alert('密码必须在6到30个字符之间!'); return false;
    }
    
    // 使用正则表达式验证Email的格式
    var pattern = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
    if (! pattern.test(email) ) {
        alert('Email填写不正确!'); return false;
    }
    
    return true;
}
-->
</script>
</head>
<body>
	<h1>用户注册</h1>
     
	<div class="login-01">
			<form  name="frmRegister" method="post"  action="register.php"  onSubmit="return doCheck();">
				<ul>
				<li class="first">
					<a href="#" class=" icon user"></a>
                    <input type="text" class="text" name="username" value="" placeholder="请输入您的用户名 / Username" >
					<div class="clear"></div>
				</li>
				<li class="first">
					<a href="#" class=" icon email"></a><input type="text" class="text" name="email" value="" placeholder="请输入您的邮箱 / Email">
					<div class="clear"></div>
				</li>
                <li class="first">
					<a href="#" class=" icon email"></a><input type="password" class="text" name="password"  placeholder="密码在6-30个字符之间 / Password" value="" width=275 height="55">
					<div class="clear"></div>
				</li>
				<li class="first">
					<a href="#" class=" icon phone"></a><input type="text" class="text" name="phone" value=""  placeholder="请输入您的电话 / Phone" >
					<div class="clear"></div>
				</li>
				<li class="second">
				<a href="#" class=" icon msg"></a><textarea value="Message" name="comment" placeholder="编辑您的个性签名 / Comment"></textarea>
				<div class="clear"></div>
				</li>
			</ul>
            
			<input type="submit" name="into_news" value="Submit" >
			<div class="clear"></div>
		</form>
</div>
	<!--start-copyright-->
   		<div class="copy-right">
   			<div class="wrap">
				<p>Copyright &copy; 2015.Personal space.个人空间</a></p>
		</div>
	</div>
	<!--//end-copyright-->
</body>
</html>