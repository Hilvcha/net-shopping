<%@ Page Language="C#" CodeFile="Login.aspx.cs" AutoEventWireup="true" Inherits=" Login_aa" Title="会员登入" %>

<head >
    <meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
<meta name="viewport" content="width=device-width, initial-scale=1"> 
<link rel="stylesheet" type="text/css" href="css/normalize.css" />
<link rel="stylesheet" type="text/css" href="css/demo.css" />
<!--必要样式-->
<link rel="stylesheet" type="text/css" href="css/component1.css" />
    <link href="css/zt.css" rel="stylesheet" type="text/css" />

    <script src="js/jquery-1.4.2.min.js" type="text/javascript"></script>


    </style>
   <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/demo1.css" rel="stylesheet" type="text/css" media="all" />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfont-->
<link href='https://fonts.googleapis.com/css?family=Yanone+Kaffeesatz:400,200,300,700' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900,200italic,300italic,400italic,600italic,700italic,900italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Karla:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
		<!-- JavaScript includes -->
		<script src="js/ipresenter.packed.js"></script>
		<script>
		    $(document).ready(function () {
		        $('#ipresenter').iPresenter({
		            timerPadding: -1,
		            controlNav: true,
		            controlNavThumbs: true,
		            controlNavNextPrev: false
		        });
		    });
		</script>
	    <script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function ($) {
        $(".scroll").click(function (event) {
            event.preventDefault();
            $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 1200);
        });
    });
		</script>



</head>
    <body >


        <div class="user-desc">
		<div class="container">
			<ul>
				<li><a href="checkout.html">Checkout</a></li>
				<li><i class="user"></i><a href="account.html">My Account</a></li>
				<li><i class="cart"></i><a href="#">Cart (3)</a></li>
			</ul>
		</div>
		</div>
		<div class="header">
		<div class="header-top">
			<div class="container">
                <div class="logo">
					<h1>
						<a href="index.aspx">NET SHOPPING</a>
					</h1>
				</div>
				<div class="top-menu">
				  <span class="menu"> </span>
					<ul class="cl-effect-15">
						<li><a class="active" href="index.aspx">HOME</a></li>
						<li><a href="newlist.aspx" data-hover="NEWS">NEWS</a></li>
						<li><a href="index.aspx" data-hover="PRODUCTS">PRODUCTS</a></li>
						<li><a href="kfzx.aspx" data-hover="HELP">HELP</a></li>
                        <li><a href="Message.aspx" data-hover="MESSAGE">MESSAGE</a></li>
                        <li><a href="collect.aspx" data-hover="Favorite">Favorite</a></li>
					</ul>
				</div>
				 <!--script-nav-->
				<script>
				    $("span.menu").click(function () {
				        $(".top-menu ul").slideToggle("slow", function () {
				        });
				    });
				</script>
				<!--script-nav-->
				<div class="clearfix"></div>
			</div>
		</div>
    </div>
        	<div class="container demo-1">
			<div class="content">
				<div id="large-header" class="large-header" style="background-image: url('images/demo-1-bg.jpg')">
					<canvas id="demo-canvas"></canvas>
					<div class="logo_box">
						<h3>NET SHOPPING</h3>
						<form action="#" name="f" method="post">
							<div class="input_outer">
								<span class="u_user"></span>
								<input  name="logname" class="text" style="color: #FFFFFF !important" type="text" placeholder="请输入账户">
							</div>
							<div class="input_outer">
								<span class="us_uer"></span>
								<input name="logpass" class="text" style="color: #FFFFFF !important; position:absolute; z-index:100;"value="" type="password" placeholder="请输入密码">
							</div> 
                            <form runat="server">
                              <asp:ImageButton ID="ImageButton1" runat="server"  
                                    ImageUrl="~/images/button.png" onclick="ImageButton1_Click"/>
                                </form>
                           
</form>
					

		<script src="js/TweenLite.min.js"></script>
		<script src="js/EasePack.min.js"></script>
		<script src="js/rAF.js"></script>
		<script src="js/demo-1.js"></script>
           
        </div>
     </div>
</div>
            </div>

       <!-- contact-section-starts -->
	<div class="content-section">
		<div class="container">
			<div class="col-md-3 about-us">
				<h4>LITTLE ABOUT US</h4>
				<p><span>NET SHOPPING</span>  仅仅是一个普通的购物网站模型，PS前端界面改起来真累<span>ANYWAY</span> 姑且还算成功.</p>
				<h4>FOLLOW US</h4>
				<div class="social-icons">
					<i class="facebook"></i>
					<i class="twitter"></i>
					<i class="rss"></i>
					<i class="vimeo"></i>
					<i class="dribble"></i>
					<i class="msn"></i>
				</div>
			</div>
			<div class="col-md-3 archives">
				<h4>ARCHIVES</h4>
				<ul>
					<li><a href="#">这是一条广告</a></li>
					<li><a href="#">这还是一条广告</a></li>
					<li><a href="#">这又是一条广告</a></li>
					<li><a href="#">广告位招租了！！！！！</a></li>
				</ul>
			</div>
			<div class="col-md-3 contact-us">
				<h4>CONTACT US</h4>
				<ul>
					<li><i class="message"></i></li>
					<li><a href="mail-to:请联系西电">请联系西电</a></li>
				</ul>
				<ul>
					<li><i class="land-phone"></i></li>
					<li>110</li>
				</ul>
				<ul>
					<li><i class="smart-phone"></i></li>
					<li>110</li>
				</ul>
			</div>
			<div class="col-md-3 about-us">
				<h4>请留下你的建议让我们变得更好吧 ！（</h4>
				<input type="text" class="text" value="Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}">
				<input type="text" class="text" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}">
				<input type="submit" value="subscribe">
			</div>	
			<div class="clearfix"></div>
       
            
          </div>
	</div>
    <div class="footer">
		<div class="container">
			<div class="col-md-6 bottom-menu">
				<ul>
					<li><a href="index.html">HOME</a></li>
					<li><a href="kfzx.aspx">HELP</a></li>
					<li><a href="Message.aspx">MESSAGE</a></li>
					<li><a href="#">PRODUCER </a></li>
				</ul>
			</div>
			<div class="col-md-6 copy-rights">
				<p>Have Fun And Shopping !  网页最终解释权由第一组所有 <b>;p</b></p>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</body>
</html>




	