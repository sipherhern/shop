<?php
		require_once('../connectToMysql.php');	
		require_once('upload.php');
		$id=$_GET['id'];
		if ($_GET['action'] == "save")
		{
			$title=$_POST['title']; 
			$id=$_POST['user_id']; 
			

			$content=$_POST['content'];
			$pic=$uploadfile; 
			//存入图片内容
			$sql="insert into picture(pic_url,pic_type) values('$pic','cover')"; 
			
			$result1=mysql_query($sql);
			
			
			
		
			//存入文章内容
			$sql2="insert into article(title,content,date,article_uuid)values('$title','$content',now(),'$id')";
			$result2=mysql_query($sql2);
			
			
			//取出文章id
			$sql4="select * from article where title='".$title."' and content= '".$content."';";
			$result4=mysql_query($sql4);
			$row4=mysql_fetch_array($result4);
			$a_id=$row4[article_id];
		
			
			//取出图片id
			$sql3="select * from picture where pic_url='".$pic."';";
			$result3=mysql_query($sql3);
			$row3=mysql_fetch_array($result3);
			$p_id=$row3[pic_id];
			
			
			
			//存入关系表
			$sql5="insert into pic_relate(pic_id,article_id,user_id) values('$p_id','$a_id','$id')"; 
			$result5=mysql_query($sql5);

			//$sql6="select * from pic_relate where article_id='".$a_id."' and user_id='".$id."';";
			
			echo "<center>您的教程已上传成功 教程封面预览: </center><br><center><img width='400' height='400' src='$uploadfile'></center>";
    $back="add.php?id=".$id;

echo "<br><center><a href='$back'>继续上传</a></center>"; 

			
			
			
			
		}
		
		
?>
 
<html> 
<head> 
<title>上传教程</title> 
</head> 
<body background="../images/background/55.jpg"> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<p align="center" style="color:#F03;margin-top:10px; font-weight:bold; font-size:40px"><strong>Add Your New Article</strong></p>
<form method="post" action="?action=save"   enctype="multipart/form-data"> 

<table style="margin-top:40px;"   width="40%" align="center" height="500" border="solid 1px #CC3399" cellpadding="3" cellspacing="1" bgcolor="#FFDAB9" background="../images/background/57.jpg"> 
<tr> 
<td>标题：</td> 
<td><input name="title" type="text" id="title" style="height:25px;width:80px;"></td> 
<input name="user_id" type="hidden" id="id" value="<?php echo"$id"?>"></td> 
</tr> 

<tr> 
<td>内容：</td> 
<td><textarea name="content" rows="5" cols="100" id="content" style="height:300px;width:500px;"></textarea>

</tr> 



<tr> 
<td>文件： </td> 
<td><label> 
<input name="file" type="file" value="浏览" > 
<input type="hidden" name="MAX_FILE_SIZE" value="2000000"> 
</label></td> 
</tr> 
</table></td> 
<td height="116"></tr> 
</table> 
 <p align="center">
<input style="color:#FF0080" height="30" width="40" align="middle" type="submit" value="上 传" name="upload"> 
&nbsp;&nbsp;
<a href="userSpace.php?id=<?php echo "$id"?>">返回</a>
</p>

</form> 
 
</body> 
</html>  
