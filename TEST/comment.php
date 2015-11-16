<?php
	include('connectToMysql.php');	
	header("Content-Type:text/html;charset=gb2312");
	$articleId = htmlspecialchars($_GET['article_id']);
	$sql="select distinct content,comment_date,u.username,p.pic_url from comment as c inner join user as u on u.user_id=c.user_id inner join pic_relate as pr on pr.user_id=c.user_id inner join picture as p on pr.pic_id=p.pic_id where c.article_id='$articleId' order by comment_date ;";
	$resultOfComment = mysql_query($sql);
	
?>
