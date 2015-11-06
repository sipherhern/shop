<?php	
		include('connectToMysql.php');					
		$result = mysql_query("select pic_url,title,a.article_id from pic_relate as pr inner join article as a on a.article_id = pr.article_id inner join picture as p on p.pic_id = pr.pic_id where p.pic_type='cover' order by a.article_id limit 8");
		
		// 方法1 : 把 $row 每一行数据放到一个数组里, 成为二维数组
		/*$rowArr = array();
		while ($row = mysql_fetch_array($result)) {
			$rowArr[] = $row;
			print_r($rowArr);
		}*/
		
?>