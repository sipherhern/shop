<?php
		require_once('connectToMysql.php');	
		header("Content-Type:text/html;charset=gb2312");
		$articleId = htmlspecialchars($_GET['article_id']);
		if(isset($_POST['submit'])){
			session_start();
			$comment=htmlspecialchars($_POST["comment"]);
			$date=date("Y-m-d H:i:s");
			if(!empty($_SESSION["user_id"]) && !empty($comment) ){
				$userId=$_SESSION["user_id"];
				$sql1="insert into comment(content, user_id, comment_date, article_id ) values ('$comment','$userId','$date','$articleId')";
				mysql_query($sql1);
				echo "<script>alert(\"Make a comment successfully!\")" .
						/*"window.location.href='login.html'".*/
						"</script>";
				echo "<script>window.location.href='detailPage.php?article_id=$articleId'"."</script>";
			}
			else{
				echo "<script>alert(\"Login First!\")" .
						/*"window.location.href='login.html'".*/
						"</script>";
				echo "<script>window.location.href='login.php'"."</script>";
			}
		}
		else{
				echo "<script>alert(\"Fail to Submit !\")" .
						/*"window.location.href='login.html'".*/
						"</script>";
				echo "<script>window.location.href='detailPage.php?article_id=$articleId'"."</script>";
		}
	
	
?>
