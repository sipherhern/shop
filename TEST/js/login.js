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

function doCheck() {
		    var username   = document.frmRegister.username.value;
		    var password         = document.frmRegister.password.value;
		    var phone = document.frmRegister.phone.value;
		    var name        = document.frmRegister.name.value;
		    var email       = document.frmRegister.email.value;
		    
		    if (username == '') {
		        alert('???????????!'); return false;
		    }
			if (email == '') {
		        alert('??????Email!'); return false;
		    }
		    if (password == '') {
		        alert('??????????!'); return false;
		    }    
			if (phone == '') {
		        alert('??????????´Â!'); return false;
		    }
		    
		    if (password.length < 6 || password.length > 30) {
		        alert('?????????6??30????????!'); return false;
		    }
		    
		    // ?????????????Email????
		    var pattern = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
		    if (! pattern.test(email) ) {
		        alert('Email??§Õ?????!'); return false;
		    }
		    return true;
}
