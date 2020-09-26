
<script runat="server">
Sub Page_Load
lbl1.Text="现在时间是 " & now()
End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<meta charset="utf-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous"/>
	<link rel="stylesheet" type="text/css" href="css/Main_Control.css" />
	<link rel="stylesheet" type="text/css" href="css/Navigation.css" />
	<link rel="stylesheet" type="text/css" href="css/img.css" />
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.0/dist/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

	<title>测试用网页</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p><asp:label id="lbl1" runat="server" /></p>
        </div>
		
	<div class="container">
	  <div class="jumbotron">
		<h1>我的第一个 Bootstrap 页面</h1>
		<p>重置窗口大小，查看响应式效果！</p> 
	  </div>
	  <div class="row">
		<div class="col-sm-4">
		  <h3>Column 1</h3>
		  <p>学的不仅是技术，更是梦想！</p>
		  <p>再牛逼的梦想,也抵不住你傻逼似的坚持！</p>
		</div>
		<div class="col-sm-4">
		  <h3>Column 2</h3>
		  <p>学的不仅是技术，更是梦想！</p>
		  <p>再牛逼的梦想,也抵不住你傻逼似的坚持！</p>
		</div>
		<div class="col-sm-4">
		  <h3>Column 3</h3> 
		  <p>学的不仅是技术，更是梦想！</p>
		  <p>再牛逼的梦想,也抵不住你傻逼似的坚持！</p>
		</div>
	  </div>
	</div>

    </form>
</body>
</html>
