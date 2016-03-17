package com.shop.util;

 
public class Script {
 
	
	public static String scriptAlert(String content){
		return "<script>parent.showAlert('"+content+"')</script>";
	}
	
	public static String scriptReload(){
		return "<script>window.location.reload()</script>";
	}
	public static String scriptParentReload(){
		return "<script>parent.window.location.reload()</script>";
	}
	
	public static String scriptParentReloadTime(Integer time){
		return "<script>setTimeout('parent.window.location.reload()',"+time+")</script>";
	}
	
	public static String scriptParentHref(String href){
		return "<script>parent.location.href='"+href+"'</script>";
	}
	
	public static String scriptParentHrefTime(String href,Integer time){
		return "<script>setTimeout(\"parent.location.href='"+href+"'\","+time+")</script>";
	}
	
	public static String scriptHref(String href){
		return "<script>window.location.href='"+href+"'</script>";
	}
	
	public static String scriptParentHideLoading(String type){
		return "<script>parent.hideLoading"+type+"()</script>";
	}
	
	public static String scriptParentHideLoading(){
		return "<script>parent.hideLoading()</script>";
	}	
	
 
	 
}
