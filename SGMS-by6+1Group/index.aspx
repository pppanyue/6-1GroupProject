<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<meta charset="utf-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous"/>
	<link rel="stylesheet" type="text/css" href="css/index.css" />
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
	<title>湖北大学教务系统</title>
</head>

<body>
	<form id="form1" runat="server">
		<div>

		</div>
	</form>



	<!-- 导航条 -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="indexNavbar">
		<a class="navbar-brand" href="#">
			<img alt="profile_pic" src="img/group_logo.png" width="40px" height="40px"/>
			欢迎来到湖北大学教务系统！
		</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
			<li class="nav-item active">
				<a class="nav-link" href="#">首页 <span class="sr-only">(current)</span></a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="#">待添加网页</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="#">待添加网页</a>
			</li>

			</ul>
			<form class="form-inline my-2 my-lg-0">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">登录</button>
			</form>
		</div>
	</nav>



	<div class="container">

		<div class="row">
			<div class="col-lg-3"></div>
			<div class="col-lg-5"></div>

			<div class="col-lg-3"></div>
		</div><!-- /.row -->


		<header id="maintitle">
			TEST TITLE
		</header>		


		<section id="content">




			<div class="row">
				<div class="col-lg-3"></div>
				<div class="col-lg-5">
					<div class="input-group">
						<input type="text" class="form-control" aria-label="..."/>
						<div class="input-group-btn">
							<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Action <span class="caret"></span></button>
							<ul class="dropdown-menu dropdown-menu-right">
								<li><a href="#">Action</a></li>
								<li><a href="#">Another action</a></li>
								<li><a href="#">Something else here</a></li>
								<li role="separator" class="divider"></li>
								<li><a href="#">Separated link</a></li>
							</ul>
						</div><!-- /btn-group -->
					</div><!-- /input-group -->
				</div>
				<div class="col-lg-3"></div>
			</div><!-- /.row -->



			<article>
				<hr/>
				This webside is a detail list about collections in LemonP's home.
				<hr/>
				<br/><br/>
				<div class="panel panel-default">
			    <div class="panel-heading">
			        <h3 class="panel-title" id="Para1">
						Art Books
				        </h3>
				    </div>
					    <div class="panel-body">
				        <p id="subwords">
				        	Kushidayo's artworks<br/>
				        	TH doujins<br/>
				        	Shiratama's artworks<br/>
				        	Bilibili 10th anniversary artbook<br/>
						</p>
				    </div>
				</div>

				<br/><br/>
				<div class="panel panel-default">
				    <div class="panel-heading">
				        <h3 class="panel-title" id="Para2">
				            Decoration
				        </h3>
				    </div>
				    <div class="panel-body">
				        <p id="subwords">
				        	Figures<br/>
				        	Acrylic plates<br/>
				        </p>
				    </div>
				</div>
				
				<br/><br/>
				<div class="panel panel-default">
				    <div class="panel-heading">
				        <h3 class="panel-title" id="Para3">
				            Accessory
				        </h3>
				    </div>
				    <div class="panel-body">
				        <p id="subwords">
				        	Badges<br/>
				        	CDs<br/>
				        	Acrylic key chain<br/>
				        </p>
				    </div>
				</div>

				<h4>
					BGM
				</h4>
				<p>
					<audio controls="controls" autoplay="autoplay"  loop="loop">
						<source src="music/Cincleaf - Maple Leaf Swing.mp3" type="audio/mpeg"/>
					</audio>
				</p>
			</article>
		</section>
		<footer>
			Copyright 2020 by LemonP. All Rights Reserved
		</footer>
	</div>

</body>
</html>
