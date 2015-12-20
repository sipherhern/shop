<html>
<!DOCTYPE html>
<html lang="en" class="no-js">
    <head>
        <meta charset="utf-8">
        <title>Login</title>
        <meta http-equiv = "Content-Type" content = "text/html;charset=utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- CSS -->
        <link rel="stylesheet" href="assets/css/reset.css">
        <link rel="stylesheet" href="assets/css/supersized.css">
        <link rel="stylesheet" href="assets/css/style.css">

        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
            <script src="assets/js/html5.js"></script>
        <![endif]-->
        
         <!-- Javascript -->
        <script src="js/jquery-1.8.2.min.js" ></script>
        <script src="js/supersized.3.2.7.min.js" ></script>
        <script src="js/supersized-init.js" ></script>
        <script src="js/scripts.js" ></script>
        <script src="js/login.js" ></script>
     
    </head>
   
    <body>

        <div class="page-container">
            <h1>Login</h1>
            <form action="" name="loginFrame" method="post">
                <input type="text" name="username" class="username" placeholder="请输入您的用户名！">
                <input type="password" name="password" class="password" placeholder="请输入您的用户密码！">     
                <button type="submit" name="submit" class="submit_button" >登录</button>
                &nbsp; &nbsp; &nbsp; &nbsp;
                <a  href = "user/register.php" ><input type="button" value="注册" class="submit_button"></a>
                
               
                
                
               
                <div class="error"><span>+</span></div>
            </form>
   
            </div>
        </div>
    </body>
</html>


<?php

	//引入连接数据库
	include('connectToMysql.php');
	header("Content-Type:text/html;charset=utf-8");
	
	/*function login(){*/
		//检查是否提交
		if(isset($_POST['submit'])){
			$username = htmlspecialchars($_POST['username']);
			$password = MD5($_POST['password']);
			
		
		//数据库查询
			$check_query = mysql_query("select u.user_id,pic_url,u.comment from user as u inner join pic_relate as pr on u.user_id=pr.user_id inner join picture as p on p.pic_id=pr.pic_id where username='$username' and password='$password' limit 1");
			if($result = mysql_fetch_array($check_query)){
				session_start();
	   			$_SESSION['username'] = $username;
	    		$_SESSION['user_id'] = $result['user_id'];
	    		$_SESSION['user_pic_url']=$result['pic_url'];
	    		$_SESSION['comment']=$result['comment'];
	    		header("location:homePage.php");
	    		exit;
			} else {
				echo "<script>alert(\"用户名或密码错误\")" .
					/*"window.location.href='login.html'".*/
					"</script>";
				echo "<script>window.location.href='login.php'"."</script>";
			}
		}
	/*}*/
	
	function isLogin(){	
		if (isset($_SESSION['username'])) {
		    return true;
		}else{
			return false;
		/*	echo "<script>alert(\"请先登录\")" .
					"window.location.href='login.html'".
					"</script>";
			echo "<script>window.location.href='login.php'"."</script>";*/
			
		}
	}
?>








