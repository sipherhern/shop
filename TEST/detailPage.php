<?php
		require('comment.php');
		session_start();
?>
<!DOCTYPE HTML>
<html>
	<head>
		<title>Learn It And Do It</title>
		<link href="./css/style.css" rel='stylesheet' type='text/css' />
		<link href="./css/reply.css" rel='stylesheet' type='text/css' />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="shortcut icon" type="image/x-icon" href="./images/fav-icon.png" />
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		</script>
		<script src="./js/share.js"></script>

		
		<!----webfonts---->
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
		
		<!----//webfonts---->
		<!---start-click-drop-down-menu----->
		<script src="./js/jquery.min.js"></script>
		<script src="./js/reply.js"></script>
        <!----start-dropdown--->
         <script type="text/javascript">
			var $ = jQuery.noConflict();
				$(function() {
					$('#activator').click(function(){
						$('#box').animate({'top':'0px'},500);
					});
					$('#boxclose').click(function(){
					$('#box').animate({'top':'-700px'},500);
					});
				});
				$(document).ready(function(){
				//Hide (Collapse) the toggle containers on load
				$(".toggle_container").hide(); 
				//Switch the "Open" and "Close" state per click then slide up/down (depending on open/close state)
				$(".trigger").click(function(){
					$(this).toggleClass("active").next().slideToggle("slow");
						return false; //Prevent the browser jump to the link anchor
				});
									
			});
			
			
			$(function(){
  				$(".btn1").click(function(){
   				$(".text").show();
  				})
			})
		</script>
		
		
        <!----//End-dropdown--->
	</head>
	<body>
		<!---start-wrap---->
			<!---start-header---->
			<div class="header">
				<div class="wrap">
				<div class="logo">
					<a href="homePage.php"><img src="./images/logo.png" title="pinbal" /></a>
				</div>
				<div class="nav-icon">
					 <a href="#" class="right_bt" id="activator"><span> </span> </a>
				</div>
				 <div class="box" id="box">
					 <div class="box_content">        					                         
						<div class="box_content_center">
						 	<div class="form_content">
								<div class="menu_box_list">
									<ul>
										<li><a href="#"><span>home</span></a></li>
										<li><a href="#"><span>About</span></a></li>
										<li><a href="#"><span>Works</span></a></li>
										<li><a href="#"><span>Clients</span></a></li>
										<li><a href="#"><span>Blog</span></a></li>
										<li><a href="contact.html"><span>Contact</span></a></li>
										<div class="clear"> </div>
									</ul>
								</div>
								<a class="boxclose" id="boxclose"> <span> </span></a>
							</div>                                  
						</div> 	
					</div> 
				</div>       	  
				<div class="top-searchbar">
					<form action="searchPage.php" name="searchbar" method="post">
						<input type="text" name="keyword"/> 
						<input type="submit" name="submit" value="" />
					</form>
				</div>
				<div class="userinfo">
					<div class="user">
						<ul>
							<li><a href="#"><?php 								
								if(!empty($_SESSION['username'])) {  ?>
								<img src="<?php echo $_SESSION['user_pic_url'] ?>" title="user-name" />
								<span><?php echo $_SESSION['username'] ?></span></a>
								<?php } else { ?>
								<img src="./images/user-pic.png" title="user-name" />
								<span>visitor</span></a>
							<?php } ?> 		
							</li>
						</ul>
					</div>
				</div>
				<div class="clear"> </div>
			</div>
		</div>
		<!---//End-header---->
		<!---start-content---->
		<div class="content">
			<div class="wrap">
			<div class="single-page">
							<div class="single-page-artical">
								<div class="artical-content">
								<?php
								 	require('detail.php');					
								?>
								
									<h1 style="text-align:center;><a href="#" ><?php echo $articleTitle ?></a></h1></br>
									<img src= "<?php echo $pic_url ?>" title="banner1"> 
									<div>
									<?php echo $articleContent ?>
									</div>
									<?php  $count=1; ?>
									<?php while ($row_pic = mysql_fetch_row($query1)) {   ?>
										<div class='pic_content'>
										<p><?php echo "STEP ".$count ;  ?></p>
										<img src= "<?php echo $row_pic[0] ?>" height='1080px' width='600px'  > 
										</div>
									<?php $count++; } ?>
									
									<span style="float:right;"><?php echo "Date : ". $articleDate?></span></br></br></br>
								    </div>
								    <div class="artical-links">
		  						 	<ul>
		  						 		<li><a href="#"><img src="./images/blog-icon2.png" title="Admin"><span>admin</span></a></li>
		  						 		<li><a href="#"><img src="./images/blog-icon3.png" title="Comments"><span>No comments</span></a></li>
		  						 		<li><a href="#"><img src="./images/blog-icon4.png" title="Lables"><span>Share</span></a></li>
		  						 	</ul>
		  						 </div>
		  					<div class="share-artical">
		  						 	<ul>			
		 						    <div>
		 						   
									  <div class="m-box">
									      <a href="http://open.weibo.com/wiki/ShareCode" target="_blank"></a>
									      <div class="icn"><a href="#" class="wb1" onclick="shareToSinaWB(event)"></a></div>
									  </div>
									  
									  <div class="m-box">
									      <a href="http://connect.qq.com/intro/share/" target="_blank"></a>
									      <div class="icn"><a href="#" class="wb2" onclick="shareToQzone(event)"></a></div>
									  </div>
									  
									  <div class="m-box">
										  <a href="http://share.baidu.com/code/advance" target="_blank"></a>
									      <div class="icn"><a href="#" class="wb3" onclick="shareToTieba(event)"></a></div>
									  </div>
									  
									  <div class="m-box">
									      <div class="icn"><a href="#" class="wb4" onclick="shareToDouban(event)"></a></div>
									  </div>
									  
									  <div class="m-box">
									       <a href="http://dev.t.qq.com/websites/share/" target="_blank"></a>
									       <div class="icn"><a href="#" class="wb5"  onclick="shareToQQwb(event)"></a></div>
									  </div>
									  
									  <div class="m-box">
									       <a href="http://dev.renren.com/website/?widget=rrshare&content=use" target="_blank"></a>
									       <div class="icn"><a href="#" class="wb6" onclick="shareToRenren(event)"></a></div>
									  </div>
									  
									   <div class="m-box">
									      <a href="http://open.kaixin001.com/document.php?type=records#code" target="_blank"></a>
									      <div class="icn"><a href="#" class="wb7" onclick="shareToKaixin(event)"></a></div>
									 </div>
									   
									  <div class="m-box">
									     <div class="icn"><a href="#" class="wb8" onclick="shareToFacebook(event)"></a></div>
									   </div>
									 
									  <div class="m-box">
									       <div class="icn"><a href="#" class="wb9" onclick="shareToTwitter(event)"></a></div>
									  </div>
		  						 	</ul>
		  						 </div>
		  						 <div class="clear"> </div>
							</div>
							
							
		<!--start-comments-section-->
		
			<div class="comment-section">
				<div class="grids_of_2">
					<h2>Comments</h2>
		<?php 
			while ($rowOfComment = mysql_fetch_array($resultOfComment)) { ?> 
					<div class="grid1_of_2">
						<div class="grid_img">
							<a href=""><img src="<?php echo $rowOfComment[3] ?>" alt=""></a>
						</div>
						<div class="grid_text">
							<h4 class="style1 list"><a href="#"><?php echo $rowOfComment[2] ?></a></h4>
							<p class="para top"><?php echo $rowOfComment[0] ?></p>
							<h3 class="style" ><?php echo 'Date: '.$rowOfComment[1] ?></h3>
							<div class="login-put">
	             				<form id="form1" name="form1" method="post" action="">
	                				<p>
	                    				<input type="button" id="btn1 "name="RadioGroup1" value="Reply" onClick="show()"/><br/>
	                				</p>
	                				<div id="div1" style="display:none"><input class="text01" name="" type="text" /></div>
	             				</form>
							</div>
						</div>
						<div class="clear"></div>
					</div>
		 <?php } ?>	
					
					</div>								
						<div class="artical-commentbox">
						 	<h2>Leave a Comment</h2>
				  			<div class="table-form">
								<form action="reply.php?article_id=<?php echo $articleId ?>" method="post" name="post_comment">
									<div>
										<label>Your Comment</label>
										<textarea type="text" name="comment" > </textarea><br/>	
										<input type="submit" name="submit" value="submit"   >
									</div>
											
								</form>		
							</div>
							<div class="clear"> </div>
				  		</div>			
					</div>
				</div>
							<!---//End-comments-section-->
						</div>
						 </div>
		</div>
		<!---start-footer-->
		<div class="footer">
			
		</div>
		<!----//End-footer--->
		<!---//End-wrap---->
	</body>
</html>


