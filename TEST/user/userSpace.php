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
<link rel="shortcut icon" type="image/x-icon" href="./images/fav-icon.png" />
</head>
<body>

<div id="page" class="container">
	<div id="header">
		<div id="logo">
			<img src="<?php echo $_SESSION['user_pic_url'] ?>" title="" />
			<h1><a href="#"><?php echo $_SESSION['username']?> </a></h1>
			<span><strong>Comment : </strong> <?php echo $_SESSION['comment']?> </span>
		</div>
		<div id="menu">
			<ul>
				<li class="current_page_item"><a href="#info.php" accesskey="1" title="">Homepage</a></li>
				<li><a href="modify.php?id=<?php echo $_SESSION['user_id'] ?>" accesskey="3" title="">Modify</a></li>
				<li><a href="add.php?id=<?php echo $_SESSION['user_id'] ?>" accesskey="4" title="">Upload</a></li>
				<li><a href="#" accesskey="5" title="">Contact Us</a></li>
			</ul>
		</div>
	</div>
	<div id="main">
		<div id="banner">
			<img src="images/pic01.jpg" alt="" class="image-full" />
		</div>
		
	</div>
</div>
</body>
</html>
