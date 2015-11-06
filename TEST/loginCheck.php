<?php

	//引入连接数据库
	include('connectToMysql.php');
	
	header("Content-Type:text/html;charset=utf-8");
	//检查是否提交
	if(!isset($_POST['submit'])){
  	  exit('Illegal Visit! Please login first!');
	}
	$username = htmlspecialchars($_POST['username']);
	$password = MD5($_POST['password']);

	
	//数据库查询
	$check_query = mysql_query("select user_id from user where username='$username' and password='$password' limit 1");
	if($result = mysql_fetch_array($check_query)){
		session_start();
   		$_SESSION['username'] = $username;
    	$_SESSION['user_id'] = $result['user_id'];
    	header("location:homePage.php");
    	exit;
	} else {
		echo "<script>alert(\"用户名或密码错误\")" .
				/*"window.location.href='login.html'".*/
				"</script>";
		echo "<script>window.location.href='login.php'"."</script>";
	
	}

?>