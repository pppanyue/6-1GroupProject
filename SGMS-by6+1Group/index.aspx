<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

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

	<title>湖北大学教务系统</title>
</head>

<body>
	<form id="form1" runat="server">
		<div>

		</div>
	</form>
		<div class="container">
			<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
				<div class="container-fluid">
					<div class="navbar-header">
						<a class="navbar-brand" href="#">
							<img alt="profile_pic" src="img/group_logo.png" width="40px" height="40px"/>
						</a>
					</div>

					<div>
						<ul class="nav navbar-nav">
							<li><p class="navbar-text">欢迎来到湖北大学教务系统！</p></li>
							<li><a href="index.aspx">首页</a></li>
							<li><a href="LemonP's_Collection.html">Schedule</a></li>

						</ul><!-- 设为ul待以后补充 -->
						<a class="navbar-brand navbar-right" href="login.aspx">登录</a>
					</div>
				</div>
			</nav>

			<header id="maintitle">
				TEST TITLE
			</header>		


			<section id="content">
				<aside id="getstart">
					<br/>
					<nav class="navbar navbar-default" role="navigation">
						<div class="container-fluid">
							<div class="navbar-header">
								<p class="navbar-text">GetStart:</p>
								<a class="navbar-brand" href="#Para1">Art books</a>
								<a class="navbar-brand" href="#Para2">Decoration</a>
								<a class="navbar-brand" href="#Para3">Accessory</a>
							</div>
						</div>
					</nav>
				</aside>
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
