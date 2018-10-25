<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8" language="java" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>用户登录</title>

<link href="css/login.css" type="text/css" rel="stylesheet" />

</head>
<body id="userlogin_body"  onkeypress="clickBtn(event)">

<form action="login" method="post">
<div id="user_login">
	<dl>
		<dd id="user_top">
			<ul>
				<li class="user_top_l"></li>
				<li class="user_top_c"></li>
				<li class="user_top_r"></li>
			</ul>
		</dd>
		<dd id="user_main">
			<ul>
				<li class="user_main_l"></li>
				<li class="user_main_c">
					<div class="user_main_box">
						<ul>
							<li class="user_main_text">用户名： </li>
							<li class="user_main_input">
								<input name="userName" maxlength="20" id="TxtUserName" class="txtusernamecssclass"> </li>
						</ul>
						<ul>
							<li class="user_main_text">密 码： </li>
							<li class="user_main_input">
								<input type="password" name="userPs" id="TxtPassword" class="txtpasswordcssclass"> </li>
						</ul>
						<ul>
							<li class="user_main_text">验证码： </li>
							<li class="user_main_input">
								<input type="text" name="yanzheng"/>
							</li>
							<li class="user_main_input">
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<img src="/getyanzheng" alt="" onclick="b()" id="img"/>
							</li>
							<script type="text/javascript">
								function b() {
									document.getElementById("img").src="/getyanzheng?num="+Math.random();
                                }
							</script>
						</ul>
						<ul>
							<li class="user_main_text">Cookie： </li>
							<li class="user_main_input">
								<select name="DropExpiration" id="DropExpiration">
							<option selected="" value="None">不保存</option>
									<option value="Day">保存一天</option>
							<option value="Month">保存一月</option>
									<option value="Year">保存一年</option></select> </li>
						</ul>
					</div>
				</li>
				<li class="user_main_r">
				<img src="img/user_botton.gif" onclick="a()" class="ibtnentercssclass">
				</li>
			</ul>
		</dd>
		<dd id="user_bottom">
			<ul>
				<li class="user_bottom_l"></li>
				<li class="user_bottom_c"></li>
				<li class="user_bottom_r"></li>
			</ul>
		</dd>
	</dl>
</div>

</form>
<script type="text/javascript">
	function a(){
	    document.forms[0].submit();
	}
    function clickBtn(event) {
        if (event.keyCode==13) {
            document.forms[0].submit();
        }
    }
</script>
</body>
</html>