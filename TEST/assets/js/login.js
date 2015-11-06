function Checklogin()
{
	var name = document.loginFrame.username;
	var password= document.loginFrame.password;
	if (name.value=="")
	{
		alert("Please enter your name");
		document.loginFrame.username.focus();
		return false;
	}
		if (password.value=="")
	{
		alert("Please enter your password");
		document.loginFrame.password.focus();
		return false;
	}
	return true;
}
