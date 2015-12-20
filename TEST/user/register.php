<!DOCTYPE html>
<html>
<head>
<title>Register</title>
<link href="css/style.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta name="keywords" content="Pink Contact Form ,Login Forms,Sign up Forms,Registration Forms,News latter Forms,Elements"./>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

<!--webfonts-->
<link href='http://fonts.useso.com/css?family=Lato:100,300,400,700,100italic,300italic,400italic|Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Raleway:400,200,300,500,600,800,700,900' rel='stylesheet' type='text/css'>
<!--//webfonts-->
<script src="js/login.js"></script>
<script language='javascript'>
<!--
// 验证表单数据有效性的函数
// 当函数返回true时，说明验证成功，表单数据正常提�?
// 当函数返回false时，说明验证失败，表单数据被终止提交
function doCheck(){
	    var username   = document.frmRegister.username.value;
	    var password         = document.frmRegister.password.value;
	    var phone = document.frmRegister.phone.value;
	    var name        = document.frmRegister.name.value;
	    var email       = document.frmRegister.email.value;
	    
	    if (username == '') {
	        alert('Please Enter Your Username!'); return false;
	    }
		if (email == '') {
	        alert('Please Enter Your Email!'); return false;
	    }
	    if (password == '') {
	        alert('Please Enter Your Password!'); return false;
	    }    
		if (phone == '') {
	        alert('Please Enter Your Phone-Num!'); return false;
	    }
	    
	    if (password.length < 6 || password.length > 30) {
	        alert('Password Length must be between from 6 to 30!!'); return false;
	    }
	    
	    // 使用正则表达式验证Email的格�?
	    var pattern = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
	    if (! pattern.test(email) ) {
	        alert('Email Format Incorrect!'); return false;
	    }
	    
	    return true;
	}
-->
</script>
</head>
<body>
	<h1>Register</h1>
     
	<div class="login-01">
			<form  name="frmRegister" method="post"  action="register.php"  onSubmit="return doCheck();">
				<ul>
				<li class="first">
					<a href="#" class=" icon user"></a>
                    <input type="text" class="text" name="username" placeholder=" Username" >
					<div class="clear"></div>
				</li>
				<li class="first">
					<a href="#" class=" icon email"></a><input type="text" class="text" name="email" placeholder="Email">
					<div class="clear"></div>
				</li>
                <li class="first">
					<a href="#" class=" icon email"></a><input type="text" class="text" name="password"  placeholder="Password"  width=275 height="55">
					<div class="clear"></div>
				</li>
				<li class="first">
					<a href="#" class=" icon phone"></a><input type="text" class="text" name="phone" value=""  placeholder="Phone" >
					<div class="clear"></div>
				</li>
				<li class="second">
				<a href="#" class=" icon msg"></a><textarea value="Message" name="comment" placeholder="Comment"></textarea>
				<div class="clear"></div>
				</li>
			</ul>
            
			<input type="submit" name="submit" value="Submit" >
			<div class="clear"></div>
		</form>
</div>
</body>
</html>

<?php
	require_once('../connectToMysql.php');	
	if(isset($_POST['submit'])){
	$username 	= trim($_POST['username']); 
	$password		= $_POST['password'];
	$phone = $_POST['phone'];
	$comment		= trim($_POST['comment']);
	$email		= trim($_POST['email']);
	echo $username;
	if (!empty($username)) 
	{		
	    if (empty($username) || empty($email) 
	            || empty($password)|| empty($phone) ) {
	        echo 'The information are not complete!<br>';
	        exit;
	    }
	    if (strlen($password) < 6 || strlen($password) > 30) {
	        echo 'Password should be in 6-30';
	        exit;
	    }
	    
	    $pattern = "/^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/";
	    if (!preg_match($pattern, $email)) {
	        echo 'Email format are not correct !';
	        exit;
	    }
		$result=mysql_query("select * from user where username='$username'" );
		  if ($result && mysql_num_rows($result) > 0)
		   {
			   echo "Wrong/<br>";
			   echo"<Script>window.alert('Duplicate user name !Try another one');location.href='register.php'</Script>"; 
	      
	   		}
		else 
		{
			 $passwd = MD5($pwd);
			 $sql = "insert into user(username,password,email,phone,comment) values ('$username','$passwd','$email','$phone','$comment')";
			 mysql_query($sql);
			 echo "right/<br>";
			 echo"<Script>window.alert('Register Successfully, Please login in!');location.href='../login.php'</Script>"; 
		}	
		
	}
}
?>