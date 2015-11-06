<?php
  $conn = @mysql_connect("localhost","root","root");
  mysql_select_db("diy",$conn) or die ("error");
  mysql_query("SET NAMES gb2312");
?>
