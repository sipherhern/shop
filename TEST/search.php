<?php
	require('connectToMysql.php');	
	header("Content-Type:text/html;charset=gb2312");
	$keyword=$_POST["keyword"];
	echo $keyword;
	if(!empty($keyword) ){
		$searchByKeyword="select pic_url,title,a.article_id from pic_relate as pr inner join article as a on a.article_id = pr.article_id inner join picture as p on p.pic_id = pr.pic_id where a.title like '%$keyword%' and p.pic_type='cover'";
		$searchResult = mysql_query($searchByKeyword);
	/*	echo "<script>alert(\"回复成功\")" .
				"window.location.href='login.html'".
				"</script>";*/
		}
	else{
		echo "<script>alert(\"What\")" .
						/*"window.location.href='login.html'".*/
					"</script>";
	}
	

?>
