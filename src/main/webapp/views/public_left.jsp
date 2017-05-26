<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class=" js csstransforms3d"><head>
	<meta charset="utf-8">
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>公共侧边栏</title>
	<link rel="stylesheet" href="css/base.css">
	<link rel="stylesheet" href="css/page.css">
	<!--[if lte IE 8]>
	<link href="css/ie8.css" rel="stylesheet" type="text/css"/>
	<![endif]-->
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/main.js"></script>
	<script type="text/javascript" src="js/modernizr.js"></script>
	<!--[if IE]>
	<script src="http://libs.useso.com/js/html5shiv/3.7/html5shiv.min.js"></script>
	<![endif]-->
</head>
<body>
	<!--side S-->
	<div class="super-side-menu">
		<div class="logo"><a href="public_super_cg.html" target="_parent"><img src="images/logo.png"></a></div>
		
		<div class="side-menu">
			<ul>
				<li class=""><a href="wenzhang_xinwen.html" target="Mainindex"><i class="ico-1"></i>文章发布</a></li>
				<li><a href="huodong_guanli.html" target="Mainindex"><i class="ico-2"></i>活动管理</a></li>
				<li class="on"><a href="xiangce_Guanli.html" target="Mainindex"><i class="ico-3"></i>相册管理</a></li>
				<li><a href="tupian_pc_index.html" target="Mainindex"><i class="ico-4"></i>图片管理</a></li>
				<li><a href="zixun_Team.html" target="Mainindex"><i class="ico-5"></i>咨询管理</a></li>
				<li><a href="muban_Guanli.html" target="Mainindex"><i class="ico-6"></i>模板管理</a></li>
				<li><a href="xitong_set.html" target="Mainindex"><i class="ico-7"></i>系统设置</a></li>
			</ul>
		</div>
	</div>
	<!--side E-->

<script type="text/javascript">
	$(function(){
		$('.side-menu li').click(function(){
			$(this).addClass('on').siblings().removeClass('on');
		})
	})
</script>

</body></html>