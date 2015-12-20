<?php
class action extends mysql {

	/**
	 * �û�Ȩ���ж�($uid, $shell, $m_id)
	 */
	
	
	public function Get_user_shell($uid, $shell) {
		$query = $this->select('user', '*', '`user_id` = \'' . $uid . '\'');
		$us = is_array($row = $this->fetch_array($query));
		$shell = $us ? $shell == md5($row[username] . $row[password] . "TKBK") : FALSE;
		return $shell ? $row : NULL;
	} //end shell

	public function Get_user_shell_check($uid, $shell, $m_id = 9) {
		if ($row=$this->Get_user_shell($uid, $shell)) {
			if ($row[m_id] <= $m_id) {
				return $row;
			} else {
				echo "����Ȩ�޲�����";
				exit ();
			} //end m_id
		} else {
		  $this->Get_admin_msg('../login.php','���ȵ�½');
		}
	} //end shell
	//========================================


	/**
	 * �û���½��ʱʱ��(��)
	 */
	public function Get_user_ontime($long = '3600') {
		$new_time = mktime();
		$onlinetime = $_SESSION[ontime];
		echo $new_time - $onlinetime;
		if ($new_time - $onlinetime > $long) {
			echo "��¼��ʱ";
			session_destroy();
			exit ();
		} else {
			$_SESSION[ontime] = mktime();
		}
	}

	/**
	 * �û���½
	 */
	public function Get_user_login($username, $password) {
		$username = str_replace(" ", "", $username);
		$query = $this->select('user', '*', '`username` = \'' . $username . '\'');
		$us = is_array($row = $this->fetch_array($query));
		;
		$ps = $us ? md5($password) == $row[password] : FALSE;
		if ($ps) {
			$_SESSION[uid] = $row[uid];
			$_SESSION[shell] = md5($row[username] . $row[password] . "TKBK");
			$_SESSION[ontime] = mktime();
			$this->Get_admin_msg('../homePage.php','��½�ɹ���');
		} else {
			$this->Get_admin_msg('../login.php','������û�����');
			session_destroy();
		}
	}
	 /**
	  * �û��˳���½
	  */
	public function Get_user_out() {
		session_destroy();
		$this->Get_admin_msg('../login.php','Successful');
	}

   /**
    * ��̨ͨ����Ϣ��ʾ
    */
	public function Get_admin_msg($url, $show = '�����ѳɹ���') {
		$msg = '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
		<html xmlns="http://www.w3.org/1999/xhtml"><head>
				<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
				<link rel="stylesheet" href="css/common.css" type="text/css" />
				<meta http-equiv="refresh" content="2; URL=' . $url . '" />
				<title>��������</title>
				</head>
				<body>
				<div id="man_zone">
				  <table width="30%" border="1" align="center"  cellpadding="3" cellspacing="0" class="table" style="margin-top:100px;">
				    <tr>
				      <th align="center" style="background:#cef">��Ϣ��ʾ</th>
				    </tr>
				    <tr>
				      <td><p>' . $show . '<br />
				      2��󷵻�ָ��ҳ�棡<br />
				      ���������޷���ת��<a href="' . $url . '">�����˴�</a>��</p></td>
				    </tr>
				  </table>
				</div>
				</body>
				</html>';
		echo $msg;
		exit ();
	}

	//========================
} 
?>














