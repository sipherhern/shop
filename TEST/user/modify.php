<?php	
		session_start();
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
<title>User Space</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900" rel="stylesheet" />
<link href="default.css" rel="stylesheet" type="text/css" media="all" />
<link href="fonts.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link rel="shortcut icon" type="image/x-icon" href="./images/fav-icon.png" />

</head>
<body>
<div id="page" class="container">
	<div id="header">
		<div id="logo">
			<img src="<?php echo $_SESSION['user_pic_url'] ?>" alt="" />
			<h1><a href="#"><?php echo $_SESSION['username'] ?> </a></h1>
			<span><strong>Comment : </strong> <?php echo $_SESSION['comment']?> </span>
		</div>
		<div id="menu">
			<ul>
				<li><a href="/TEST/homePage.php" accesskey="3" title="">HomePage</a></li>
				<li class="current_page_item"><a href="#info.php" accesskey="1" title="">Modify</a></li>
				<li><a href="add.php?id=<?php $_SESSION[user_id] ?>" accesskey="4" title="">Upload</a></li>
				<li><a href="#" accesskey="5" title="">Contact Us</a></li>
			</ul>
		</div>
	</div>
	
	<div id="main">
			<div class="login-01">
			<form  name="frmRegister" method="post"  action="register.php"  onSubmit="return doCheck();">
				<ul>
				<li class="first">
					<a href="#" class=" icon user"></a>
                    <input type="text" class="text" name="username"  value="<?php echo $_SESSION['username'] ?>" >
					<div class="clear"></div>
				</li>
				<li class="first">
					<a href="#" class=" icon email"></a><input type="text" class="text" name="email" >
					<div class="clear"></div>
				</li>
                <li class="first">
					<a href="#" class=" icon email"></a><input type="text" class="text" name="password"    width=275 height="55">
					<div class="clear"></div>
				</li>
				<li class="first">
					<a href="#" class=" icon phone"></a><input type="text" class="text" name="phone" value="" >
					<div class="clear"></div>
				</li>
				<li class="second">
				<a href="#" class=" icon msg"></a><textarea value="Message" name="comment"  value="<?php echo $_SESSION['comment']?>" ></textarea>
				<div class="clear"></div>
				</li>
			</ul>
            
			<input type="submit" name="into_news" value="Submit" >
			<div class="clear"></div>
		</form>
		</div>
	</div>
</div>
</body>
</html>

<?php
	$id=$_GET['id'];
	if(isset($_POST['into_news'])){
	   $db->query("update `user` set username='$_POST[username]',email='$_POST[email]',phone='$_POST[phone]',comment='$_POST[comment]'  where user_id='".$id."'");
	
		$location='userSpace.php?id='.$id;
	
		echo"<Script>window.alert('信息修改成功');location.href='$location'</Script>"; 
		
	}
	
	if(isset($_SESSION['user_id'])) 
	{	
		$sql="select * from user where user_id ='".$id."' ";
		//print_r($sql);
	    $query=mysql_query($sql);
	    $row_news=mysql_fetch_array($query);
	}
	else
	{
		print_r("can't get the user_id");
	}
	

?>
