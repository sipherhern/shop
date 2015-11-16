<?php	
		include('connectToMysql.php');
		header("Content-Type:text/html;charset=gb2312");
		$articleId = htmlspecialchars($_GET['article_id']);
		
		$check_query = mysql_query("select pic_url,title,content,date,a.article_id from pic_relate as pr inner join article as a on a.article_id = pr.article_id inner join picture as p on p.pic_id = pr.pic_id where a.article_id='$articleId' and p.pic_type='cover' ");
		if($query = mysql_fetch_array($check_query)){
			$pic_url=$query["pic_url"];
			$articleTitle=$query["title"];
			$articleContent=$query["content"];
			$articleDate=$query["date"];
			$articleId=$query["article_id"];
		}
		
		$query1 = mysql_query("select pic_url from pic_relate as pr inner join article as a on a.article_id = pr.article_id inner join picture as p on p.pic_id = pr.pic_id where a.article_id='$articleId' and p.pic_type='article'");
		
		
		
		
		// 不应该用url来传递如此多的数据,第一是数据安全问题,第二是数据量庞大时会出现的问题 ,第三是乱码问题
	/*	
		if($query = mysql_fetch_array($check_query)){
			$pic_url=urlencode($query["pic_url"]);
			$articleTitle=urlencode($query["title"]);
			$articleContent=urlencode($query["content"]);
			$articleDate=urlencode($query["date"]);
			header("location:detailPage.php?pic_url=$pic_url&articleTitle=$articleTitle&articleContent=$articleContent&articleDate=$articleDate");
		}*/
		
?>