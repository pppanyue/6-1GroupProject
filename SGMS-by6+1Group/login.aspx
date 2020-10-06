<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
	<head runat="server">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<meta charset="utf-8"/>
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
		<meta name="author" content="LemonP, 6+1Group" />
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous"/>
		<link rel="stylesheet" type="text/css" href="css/login.css" />
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
		<title>登录</title>
	</head>
	<body>

		<form id="form1" runat="server">
		<div id="accountInput">
			<p>用户登录</p>
			<div class="input-group mb-3">
				<asp:TextBox ID="UsernameTextBox" runat="server" placeholder="用户名" type="text" class="form-control" ></asp:TextBox>
				<!--<input name="username" aria-label="username" />-->
			</div>
			<div class="input-group mb-3">
				<asp:TextBox ID="PasswordTextBox" runat="server" placeholder="密码" type="password" class="form-control" ></asp:TextBox>
				<!--<input name="password" aria-label="password" />-->
			</div>
			<asp:Button ID="LoginButton" type="submit" runat="server" Text="登录" style="float:right" class="btn btn-primary btn-lg"/>
		</div>
		</form>

	</body>
</html>
