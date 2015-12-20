<?php
include_once ('admin_global.php');
mysql_query("SET NAMES 'UTF8'");
$id=$_GET['id'];
session_start();
if(isset($_POST[into_news])){
     $db->query("update `user` set username='$_POST[username]',email='$_POST[email]',phone='$_POST[phone]',comment='$_POST[comment]'  where user_id='".$id."'");

	//$db->Get_admin_msg("userInfo.php","修改信息成功");
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

<!DOCTYPE html>
<html>
<head>
<title>用户信息修改</title>
<link href="css/style.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="keywords" content="Pink Contact Form ,Login Forms,Sign up Forms,Registration Forms,News latter Forms,Elements"./>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

<!--webfonts-->
<link href='http://fonts.useso.com/css?family=Lato:100,300,400,700,100italic,300italic,400italic|Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Raleway:400,200,300,500,600,800,700,900' rel='stylesheet' type='text/css'>
<!--//webfonts-->
</head>
<body>
	<h1> Personnal information</h1>
     
	<div class="login-01">
			<form action="" method="post" >
				<ul>
				<li class="first">
					<a href="#" class=" icon user"></a>
                    <input type="text" class="text" name="username" value="<?php echo $row_news[username]?>"  >
					<div class="clear"></div>
				</li>
				<li class="first">
					<a href="#" class=" icon email"></a><input type="text" class="text" name="email" value="<?php echo $row_news[email]?>" >
					<div class="clear"></div>
				</li>
                <li class="first">
					<a href="#" class=" icon email"></a><input type="text" class="text" name="password" value="<?php echo $row_news[password]?>" >
					<div class="clear"></div>
				</li>
                
				<li class="first">
					<a href="#" class=" icon phone"></a><input type="text" class="text" name="phone" value="<?php echo $row_news[phone]?>"  >
					<div class="clear"></div>
				</li>
				<li class="second">
				<a href="#" class=" icon msg"></a><textarea value="Message" name="comment" placeholder="未设置签名 / Comment"><?php echo $row_news[comment]?></textarea>
				<div class="clear"></div>
				</li>
			</ul>
            
			<input type="submit" name="into_news" value="Modify" >
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