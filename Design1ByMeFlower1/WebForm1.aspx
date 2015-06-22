<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Design1ByMeFlower1.WebForm1" %>

<!DOCTYPE html>
<html lang="en">
<head id="Head1" runat="server">
    <meta name="robots" content="noindex, follow" />
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="<%= this.ResolveClientUrl("~/plugin/bootstrap/css/bootstrap.min.css") %>" />
    <link href="plugin/uiki/css/uikit.almost-flat.css" rel="stylesheet" type="text/css" />
    <link href="css/font-awesome.css" rel="stylesheet" type="text/css" />
    <link href="plugin/bxslider/css/jquery.bxslider.css" rel="stylesheet" type="text/css" />
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300,400' rel='stylesheet'
        type='text/css'>
    <link href="plugin/IconHoverEffects/css/component.css" rel="stylesheet" type="text/css" />


    <script src="<%= this.ResolveClientUrl("~/plugin/jquery/jquery-1.7.2.js") %>"></script>
    <script src="<%= this.ResolveClientUrl("~/plugin/bootstrap/js/bootstrap.min.js") %>"></script>
    <script src="plugin/bxslider/js/jquery.bxslider.min.js" type="text/javascript"></script>
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <section>
    <header>
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <span id="xx"></span>
                        <a class="navbar-brand" href="javascript:void(0);">
                            <img src="<%= this.ResolveClientUrl("~/images/icon/xxx.jpg") %>" width="120px" />
                        </a>
                    </div>
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a>
                                    <img src="images/icon/index.jpeg" style="height:20px;" />                                              
					                <span class="profile-info">
						                Daniel Johnson
					                </span>
                                </a>
                            </li>
                            <li>    
                                <a>
                                    <i class="fa fa-search"></i> Search
                                </a>
                            </li>
                            <li><a href="#"><i class="fa fa-link"></i> Link</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
                                <ul class="dropdown-menu pull-right">
                                    <li><a href="#">Action</a></li>
                                    <li><a href="#">Another action</a></li>
                                    <li><a href="#">Something else here</a></li>
                                    <li><a href="#">Separated link</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
    </header>
    <section>
        <div class="main">
            <div class="jumbotron">
                <img src="images/bg/bg0.jpg" />
                <div class="container">
                    <div class="content1">
                        <h1>Google Glass Technology.. </h1>
                        <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident </p>
                    </div>
                </div>
            </div>
            <div class="jumbotron"  style="background-color:White;">
                <div class="container">
                    <div>
			            <div class="row">
                            <div class="col-md-3 ak">
                                <div class="hi-icon-wrap hi-icon-effect-1 hi-icon-effect-1a">
	                                <a class="hi-icon hi-icon-mobile">Mobile</a>
                                </div>
                                <div class="wrapper text-center">
                                    <h3>Tablet Tech. </h3>
                                    <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident </p>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="hi-icon-wrap hi-icon-effect-1 hi-icon-effect-1a">
	                                <a href="#" class="hi-icon hi-icon-screen">PC</a>
                                </div>
                                <div class="wrapper text-center">
                                    <h3>PC Tech. </h3>
                                    <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident </p>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="hi-icon-wrap hi-icon-effect-1 hi-icon-effect-1a">
	                                <a href="#" class="hi-icon hi-icon-earth">Partners</a>
                                </div>
                                <div class="wrapper text-center">
                                    <h3>Partners </h3>
                                    <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident </p>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="hi-icon-wrap hi-icon-effect-1 hi-icon-effect-1a">
	                                <a href="#" class="hi-icon hi-icon-support">Support</a>
                                </div>
                                <div class="wrapper text-center">
                                    <h3>Support </h3>
                                    <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident </p>
                                </div>
                            </div>
                        </div>
		            </div>
                </div>
            </div>
            <div class="jumbotron">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4">
                              <h3 class="uk-text-black">advertise on our taxis now!</h3>
                              <br>
                              <p class="a-p">Grab people's attention with awesome advertising campaigns on our taxi cars. Reach thousands of people with your creative ad.</p>
                              <h3 class="uk-text-black">3 easy steps:</h3>
                              <ul class="spot a-spot">
                                <li>Choose a taxi model</li>
                                <li>Choose advertising position</li>
                                <li>Select time period</li>
                              </ul>
                              <br>
                              <h3>contact us and get started!</h3>
                              <br>
                              <h3><a class="btn btn-inverse btn-lg a-a" href="#">contact us for pricing</a></h3>	
                              <div id="btnhide" class="btn btn-primary">hide</div>
                              <div id="btnshow" class="btn btn-danger">show</div>
		                </div>
                        <div class="col-md-4">
                            <img class="imgad uk-text-center uk-scrollspy-init-inview "  src="images/ads/ad1.png" />                          
		                </div>
                        <div class="col-md-4">
                            <img class="imgad uk-text-center uk-scrollspy-init-inview" src="images/ads/ad2.png"   />
                        </div>
                    </div>
                </div>
            </div>
            <div class="jumbotron"  style="background-color:White;">
               <div class="container">
                    <div style="margin-top:20px;">
                        <ul class="bxslider">
                          <li><img src="images/slide/pic1.jpg" title="limousine Taxi"  /></li>
                          <li><img src="images/slide/pic2.jpg" title="SUV Taxi"  /></li>
                          <li><img src="images/slide/pic3.jpg" title="Town Taxi" /></li>
                        </ul>
                    </div>
                    <div>
                         <p><span id="slider-prev"></span> | <span id="slider-next"></span></p>
                    </div>
                </div>
            </div>
        </div>
    </section>

<footer class="footer" id="footer"> 
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <h2 class="footer__title">MeFlower1</h2>
                <ul class="footer-nav__list">
                    <li id="Li1">
                        <a>เกี่ยวกับเรา</a>
                    </li>
                    <li id="Li2">
                        <a>ติดต่อเรา</a>
                    </li>
                </ul> 
            </div>
            <div class="col-md-4">
                <h2 class="footer__title">Follow MeFlower1</h2>
                <ul class="follow__list">
                    <li class="follow__item">
                        <a target="_blank"><i class="fa fa-facebook"></i> Facebook</a>
                    </li>
                    <li class="follow__item">
                        <a target="_blank"><i class="fa fa-twitter"></i> Twitter</a>
                    </li>
                    <li class="follow__item">
                        <a target="_blank"><i class="fa fa-rss"></i> RSS Feed</a>
                    </li>
                </ul>
            </div>
            <div class="col-md-4">
                <h2 class="footer__title">Join meFlower1</h2>
                <p>ยินดีเปิดรับบทความของเพื่อนๆ </p>
                <p> <a >ร่วมเขียนบทความ / สมัครเป็น Writer</a> </p>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="footer__meta">
            <p class="footer__copyrights">© 2015 <span>MeFlower1.</span> All rights reserved.</p>
        </div>
    </div>

</footer>
</section>
    <script src="js/ak.js?ver=<%=DateTime.Now.ToString()%>" type="text/javascript"></script>
</body>
</html>
