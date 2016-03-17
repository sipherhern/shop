	function check_email(str){
        var reyx= /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/;
       return reyx.test(str);
    }
	
 
	
	
	function showAlert(content){
		$('#modal-wrapper>.content').html(content);
		letDivCenter("#modal-wrapper");
         setTimeout("$('#modal-wrapper').fadeOut();$('#mask').fadeOut();  ", 3000);
        
	}
	
	 function letDivCenter(divName){   
		    showMask();
		    var height=0;
		    if(document.body.clientHeight>$(window).height()){
		    	height=$(window).height();
		    }
		    else{
		    	height=document.body.clientHeight;
		    }
	        var top = height/2;   
	        var left = ($(window).width() )/2;   
	        var scrollTop = $(document).scrollTop();   
	        var scrollLeft = $(document).scrollLeft();   
	        $(divName).css( { position : 'absolute', 'top' : top + scrollTop, left : left + scrollLeft } ).fadeIn();  
	  }  
	
	 
	 
	 function showLoading(text){
		    $("#loadingText").html(text);
		    showMask();
		    $('#q_Msgbox').fadeIn(); 
	  }  
	 
	 function hideLoading(){   
		    $('#q_Msgbox').fadeOut();
		    $('#mask').fadeOut();
	  }  	
	 
	 function hideLoading2(){   
		    $('#q_Msgbox').fadeOut();
	  }	 
	 
	 //兼容火狐、IE8  
	    function showMask(){  
	        $("#mask").css("height",$(document).height());  
	        $("#mask").css("width",$(document).width());  
	        $("#mask").show();  
	    }  
	
	function to1bits(flt) {   
		if(parseFloat(flt) == flt)   
		return Math.round(flt * 10) / 10;   
		// 到4位小数, return Math.round(flt * 10000) / 10000;   
		else   
		return 0;   
		} 
	
 
	function dateDiffer(date){
		s1 = new Date(date.replace(/-/g, "/"));
		s2 = new Date();
		var days = s1.getTime() - s2.getTime();
		var time = parseInt(days / (1000 * 60 * 60 * 24));
		return time;
	}

	function GetAgeByBrithday(bir){
	if(bir==""){
		return "无";
	}	
		
		
	 var age=-1;
	 var today=new Date();
	 var todayYear=today.getFullYear();
	 var todayMonth=today.getMonth()+1;
	 var todayDay=today.getDate();
	 var birthday=new Date(bir);
 
	 birthdayYear=birthday.getFullYear();
	 birthdayMonth=birthday.getMonth();
	 birthdayDay=birthday.getDate();
	 if(todayYear-birthdayYear<0)
	 {
	        alert("出生日期选择错误!");
	 }
	 else
	 {
	        if(todayMonth*1-birthdayMonth*1<0)
	        {
	               age = (todayYear*1-birthdayYear*1)-1;
	        }
	        else
	        {
	               if(todayDay-birthdayDay>=0)
	               {//alert(thisDay+'-'+brithd+"_ddd");
	                      age = (todayYear*1-birthdayYear*1);
	               }
	               else
	               {
	                      age = (todayYear*1-birthdayYear*1)-1;
	               }
	        }
	 }
	 return age*1;
 
	}
	
	 var isIE = /msie/i.test(navigator.userAgent) && !window.opera;       
	  function fileSize(target) {     
	      
	    var fileSize = 0;          
	    if (isIE && !target.files) {      
	      var filePath = target.value;      
	      var fileSystem = new ActiveXObject("Scripting.FileSystemObject");         
	      var file = fileSystem.GetFile (filePath);      
	      fileSize = file.Size; 
	    } else {     
	     fileSize = target.files[0].size;      
	     }    
	     var size = fileSize / 1024;     
	     if(size>10000){   
	      alert("附件不能大于10M");   
	      $(target).val("");
	      return false; 
	     }   
	       return true;
	} 
	
	 
	 
	 function imgFileChange(thi){ 
		        var filepath=$(thi).val();
		        var extStart=filepath.lastIndexOf(".");
		        var ext=filepath.substring(extStart,filepath.length).toUpperCase();
		        if(ext!=".BMP"&&ext!=".PNG"&&ext!=".GIF"&&ext!=".JPG"&&ext!=".JPEG"){
		         alert("图片限于bmp,png,gif,jpeg,jpg格式");
		         $(thi).val("");
		         return false;
		        }
		       
		        if(!fileSize(thi)) return false;
		   return true;     
	 }
	 
	 
	 
	 
	 function abilityScoreCount(money){
         	if(money<1000){
                return Math.round(money/10);         		
         	}
         	else if(money<5000){
                return Math.round(money/50+100);         		
         	}         	
         	else if(money<10000){
                return Math.round(money/50+200);         		
         	}
         	else{
                return Math.round( money/50+400);         		
         	}           	
	 }
	 
	 function depositCount(money){
      	if(money<1000){
             return 0;         		
      	}
      	else if(money<5000){
             return Math.round(money*0.2);         		
      	}         	
      	else{
             return Math.round( money*0.1);         		
      	}           	
	 }
	 
		function level(score){
			var array=new Array(2);
			if(score<500){
				array[0]=0;
				array[1]=500;		
				return array;
			}
			else if(score<1000){
				array[0]=1;
				array[1]=1000;		
				return array;
			}
			else if(score<2000){
				array[0]=2;
				array[1]=2000;		
				return array;
			}
			else if(score<4000){
				array[0]=3;
				array[1]=4000;		
				return array;
			}
			else if(score<8000){
				array[0]=4;
				array[1]=8000;		
				return array;
			}
			else if(score<16000){
				array[0]=5;
				array[1]=16000;		
				return array;
			}
			else if(score<32000){
				array[0]=6;
				array[1]=32000;		
				return array;
			}
			else if(score<64000){
				array[0]=7;
				array[1]=64000;		
				return array;
			}
			else if(score<128000){
				array[0]=8;
				array[1]=128000;		
				return array;
			}
			else if(score<256000){
				array[0]=9;
				array[1]=256000;		
				return array;
			}	
			else{
				array[0]=10;
				array[1]=999999;		
				return array;
			}
		}
	 
	 
	 
	 function scoreLevel(score){
	    	if(score<200){
	    		return "初级";
	    	}
	    	else if(score<1000){
	    		return "中级";
	    	}
	    	else if(score>=1000){
	    		return "高级";
	    	}
	 }
	 
	 
	 function checkIE(wr){
		 if(wr!=6){
		 if(navigator.appName == "Microsoft Internet Explorer" && navigator.appVersion.match("MSIE 6.")=="MSIE 6."){ 
			 alert("你的浏览器版本过久，请更新版本。如果使用的是搜狗，360等双核浏览器请切换高速模式"); 
			 self.location.href="smainPage.html?wr=6";
			 } 
			 else if(navigator.appName == "Microsoft Internet Explorer" && navigator.appVersion.match("MSIE 7.")=="MSIE 7."){ 
				 alert("你的浏览器版本过久，请更新版本。如果使用的是搜狗，360等双核浏览器请切换高速模式"); 
				 self.location.href="smainPage.html?wr=6";
			 } 
//			 else if(navigator.appName == "Microsoft Internet Explorer" && navigator.appVersion.match(/8./i)=="8."){ 
//			 alert("IE 8"); 
//			 } 
	     }
	 }
	 
	 
	 