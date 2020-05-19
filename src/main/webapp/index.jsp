<%--
  Created by IntelliJ IDEA.
  User: cyd
  Date: 2020/5/18
  Time: 22:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>首页</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Politics Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link href="css/bootstrap-3.1.1.min.css" rel="stylesheet" type="text/css">
    <!-- Custom Theme files -->
    <link href="css/owl.carousel.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/style.css" rel='stylesheet' type='text/css' />
    <script src="js/jquery.min.js"> </script>
    <script type="text/javascript" src="js/move-top.js"></script>
    <script type="text/javascript" src="js/easing.js"></script>
    <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
    <!--/script-->
    <link href='http://fonts.googleapis.com/css?family=Hammersmith+One' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Libre+Baskerville:400,400italic,700' rel='stylesheet' type='text/css'>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},900);
            });
        });
    </script>
</head>
<body>
<div class="header" id="home">
    <div class="content white">
        <nav class="navbar navbar-default" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <!--	<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>-->
                    <a class="navbar-brand" href="index.jsp">河海大学实验中心</a>
                </div>
                <!--/.navbar-header-->

                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="index.jsp">首页</a></li>
                        <li><a href="typography.html">实验教学</a></li>
                        <li><a href="contact.html">管理模式</a></li>
                        <li><a href="single.html">设备环境</a></li>
                        <li><a href="leadership.html">成果展示</a></li>
                        <li><a href="about.html">实验队伍</a></li>
                    </ul>
                    <div class="social-icons">
                        <ul>
                            <li><a href="#" class="	"> 登录</a></li>/
                            <li><a href="#" class=""> 注册</a></li>
                        </ul>
                    </div>
                </div>
                <!--/.navbar-collapse-->
                <!--/.navbar-->
            </div>
        </nav>
    </div>
</div>
<!--/start-banner-->
<div class="banner">
    <div class="container">
        <div class="banner-inner">
            <div class="callbacks_container">
                <ul class="rslides callbacks callbacks1" id="slider4">
                    <li class="callbacks1_on" style="display: block; float: left; position: relative; opacity: 1; z-index: 2; transition: opacity 500ms ease-in-out;">
                        <div class="banner-info">
                            <h3>阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴</h3>
                            <p>阿巴阿巴阿巴阿巴</p>
                        </div>
                    </li>
                    <li class="" style="display: block; float: none; position: absolute; opacity: 0; z-index: 1; transition: opacity 500ms ease-in-out;">
                        <div class="banner-info">
                            <h3>阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴</h3>
                            <p>阿巴阿巴</p>
                        </div>
                    </li>
                    <li class="" style="display: block; float: none; position: absolute; opacity: 0; z-index: 1; transition: opacity 500ms ease-in-out;">
                        <div class="banner-info">
                            <h3>阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴</h3>
                            <p>阿巴阿巴</p>
                        </div>
                    </li>
                </ul>
            </div>
            <!--banner-Slider-->
            <script src="js/responsiveslides.min.js"></script>
            <script>
                // You can also use "$(window).load(function() {"
                $(function () {
                    // Slideshow 4
                    $("#slider4").responsiveSlides({
                        auto: true,
                        pager: true,
                        nav:false,
                        speed: 500,
                        namespace: "callbacks",
                        before: function () {
                            $('.events').append("<li>before event fired.</li>");
                        },
                        after: function () {
                            $('.events').append("<li>after event fired.</li>");
                        }
                    });

                });
            </script>
        </div>
    </div>
</div>
<!--//end-banner-->
<!--/start-main-->
<div class="main-content">
    <div class="container">
        <div class="mag-inner">
            <div class="col-md-8 mag-innert-left jghdl">
                <div class="issues">
                    <h3><a href="#">河海大学教学实验中心</a></h3>
                    <p>阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴阿巴</p>
                </div>
                <!--/start-Technology-->
                <div class="technology">
                    <h2 class="tittle"><i class="glyphicon glyphicon-hand-right" aria-hidden="true"></i>头条新闻</h2>
                    <div class="col-md-6 tech-img">
                        <img src="images/timg.jpg" class="img-responsive" alt=""/>
                    </div>
                    <div class="col-md-6 tech-text">
                        <div class="editor-pics">
                            <div class="col-md-3 item-pic">
                                <img src="images/timg.jpg" class="img-responsive" alt=""/>

                            </div>
                            <div class="col-md-9 item-details">
                                <h5 class="inner two"><a href="single.html">阿巴阿巴</a></h5>
                                <div class="td-post-date two">阿巴阿巴.</div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="editor-pics">
                            <div class="col-md-3 item-pic">
                                <img src="images/timg.jpg" class="img-responsive" alt=""/>

                            </div>
                            <div class="col-md-9 item-details">
                                <h5 class="inner two"><a href="single.html">阿巴阿巴</a></h5>
                                <div class="td-post-date two">阿巴阿巴.</div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="editor-pics">
                            <div class="col-md-3 item-pic">
                                <img src="images/timg.jpg" class="img-responsive" alt=""/>

                            </div>
                            <div class="col-md-9 item-details">
                                <h5 class="inner two"><a href="single.html">阿巴阿巴.</a></h5>
                                <div class="td-post-date two">阿巴阿巴</div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="editor-pics">
                            <div class="col-md-3 item-pic">
                                <img src="images/timg.jpg" class="img-responsive" alt=""/>

                            </div>
                            <div class="col-md-9 item-details">
                                <h5 class="inner two"><a href="single.html">阿巴阿巴.</a></h5>
                                <div class="td-post-date two">阿巴阿巴.</div>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <!--//end-Technology-->
                <div class="gallery">
                    <div class="main-title-head">
                        <h3 class="tittle"><i class="glyphicon glyphicon-picture"></i>成果展示</h3>
                    </div>
                    <div class="gallery-images">
                        <div class="course_demo1">
                            <ul id="flexiselDemo1">
                                <li>
                                    <a href="single.html"><img src="images/timg.jpg" alt="" /></a>
                                </li>
                                <li>
                                    <a href="single.html"><img src="images/timg.jpg" alt="" /></a>
                                </li>
                                <li>
                                    <a href="single.html"><img src="images/timg.jpg" alt="" /></a>
                                </li>
                                <li>
                                    <a href="single.html"><img src="images/timg.jpg" alt="" /></a>
                                </li>
                            </ul>
                        </div>
                        <script type="text/javascript">
                            $(window).load(function() {
                                $("#flexiselDemo1").flexisel({
                                    visibleItems: 3,
                                    animationSpeed: 1000,
                                    autoPlay: true,
                                    autoPlaySpeed: 3000,
                                    pauseOnHover: true,
                                    enableResponsiveBreakpoints: true,
                                    responsiveBreakpoints: {
                                        portrait: {
                                            changePoint:480,
                                            visibleItems: 2
                                        },
                                        landscape: {
                                            changePoint:640,
                                            visibleItems: 2
                                        },
                                        tablet: {
                                            changePoint:768,
                                            visibleItems: 3
                                        }
                                    }
                                });

                            });
                        </script>
                        <script type="text/javascript" src="js/jquery.flexisel.js"></script>
                    </div>
                    <a class="more" href="leadership.html">更多  +</a>
                </div>
            </div>
            <div class="col-md-4 mag-inner-right">
                <div class="connect">
                    <h4 class="side" ><i class="glyphicon glyphicon-hand-right" aria-hidden="true"></i>校际交流</h4>
                    <ul class="stay">
                        <li class="c5-element-facebook"><a href="#"><span class="icon"></span><h5>阿巴阿巴</h5><span class="text">阿巴阿巴</span></a></li>
                        <li class="c5-element-twitter"><a href="#"><span class="icon1"></span><h5>阿巴阿巴</h5><span class="text">阿巴阿巴</span></a></li>
                        <li class="c5-element-gg"><a href="#"><span class="icon2"></span><h5>阿巴阿巴</h5><span class="text">阿巴阿巴</span></a></li>
                        <li class="c5-element-dribble"><a href="#"><span class="icon3"></span><h5>阿巴阿巴</h5><span class="text">阿巴阿巴</span></a></li>

                    </ul>
                </div>
                <div class="modern">
                    <h4 class="side"><i class="glyphicon glyphicon-user" aria-hidden="true"></i> 实验队伍</h4>
                    <div id="example1">
                        <div id="owl-demo" class="owl-carousel text-center">
                            <div class="item">

                                <img class="img-responsive lot" src="images/timg.jpg" alt=""/>
                            </div>
                            <div class="item">

                                <img class="img-responsive lot" src="images/timg.jpg" alt=""/>
                            </div>
                            <div class="item">

                                <img class="img-responsive lot" src="images/timg.jpg" alt=""/>
                            </div>
                            <div class="item">

                                <img class="img-responsive lot" src="images/timg.jpg" alt=""/>
                            </div>
                            <div class="item">

                                <img class="img-responsive lot" src="images/timg.jpg" alt=""/>
                            </div>
                            <div class="item">

                                <img class="img-responsive lot" src="images/timg.jpg" alt=""/>
                            </div>
                            <div class="item">

                                <img class="img-responsive lot" src="images/timg.jpg" alt=""/>
                            </div>
                            <div class="item">

                                <img class="img-responsive lot" src="images/timg.jpg" alt=""/>
                            </div>
                        </div>
                    </div>
                    <!-- requried-jsfiles-for owl -->
                    <script src="js/owl.carousel.js"></script>
                    <script>
                        $(document).ready(function() {
                            $("#owl-demo").owlCarousel({
                                items :1,
                                lazyLoad : true,
                                autoPlay : false,
                                navigation : true,
                                navigationText :  true,
                                pagination : false,
                                responsiveBreakpoints: {
                                    portrait: {
                                        changePoint:480,
                                        visibleItems: 2
                                    },
                                    landscape: {
                                        changePoint:640,
                                        visibleItems: 2
                                    },
                                    tablet: {
                                        changePoint:768,
                                        visibleItems: 3
                                    }
                                }
                            });
                        });
                    </script>
                    <!-- //requried-jsfiles-for owl -->
                </div>
                <h4 class="side"><i class="glyphicon glyphicon-file" aria-hidden="true"></i>实验教学</h4>
                <div class="edit-pics">
                    <div class="editor-pics">
                        <div class="col-md-3 item-pic">
                            <img src="images/timg.jpg" class="img-responsive" alt=""/>

                        </div>
                        <div class="col-md-9 item-details">
                            <h5 class="inner two"><a href="single.html">阿巴阿巴</a></h5>
                            <div class="td-post-date two"><i class="glyphicon glyphicon-time"></i>日期阿巴 <a href="#"><i class="glyphicon glyphicon-comment"></i>浏览阿巴 </a></div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="editor-pics">
                        <div class="col-md-3 item-pic">
                            <img src="images/timg.jpg" class="img-responsive" alt=""/>

                        </div>
                        <div class="col-md-9 item-details">
                            <h5 class="inner two"><a href="single.html">阿巴阿巴</a></h5>
                            <div class="td-post-date two"><i class="glyphicon glyphicon-time"></i>N日期阿巴<a href="#"><i class="glyphicon glyphicon-comment"></i>浏览阿巴 </a></div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="editor-pics">
                        <div class="col-md-3 item-pic">
                            <img src="images/timg.jpg" class="img-responsive" alt=""/>

                        </div>
                        <div class="col-md-9 item-details">
                            <h5 class="inner two"><a href="single.html">阿巴阿巴.</a></h5>
                            <div class="td-post-date two"><i class="glyphicon glyphicon-time"></i>日期阿巴 <a href="#"><i class="glyphicon glyphicon-comment"></i>浏览阿巴 </a></div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <!--//edit-pics-->
            </div>
            <div class="clearfix"></div>
        </div>
        <!--//end-mag-inner-->
        <!--/mag-bottom-->
        <div class="mag-bottom">
            <h3 class="tittle bottom"><i class="glyphicon glyphicon-globe"></i>通知公告</h3>
            <div class="grid">
                <div class="col-md-4 m-b">
                    <a href="single.html"> <figure class="effect-layla"></a>
                    <img src="images/timg.jpg" alt="img25"/>
                    <figcaption>
                        <h4>阿巴阿巴<span>阿巴阿巴</span></h4>
                        <a href="#">更多</a>
                    </figcaption>
                    </figure>
                    <div class="m-b-text">
                        <a href="single.html" class="wd">阿巴阿巴 </a>
                        <p>阿巴阿巴</p>
                        <a class="read" href="single.html">更多</a>
                    </div>
                </div>
                <div class="col-md-4 m-b">
                    <figure class="effect-layla">
                        <a href="single.html">	<img src="images/timg.jpg" alt="img25"/></a>
                        <figcaption>
                            <h4>阿巴阿巴<span>阿巴阿巴</span></h4>
                        </figcaption>
                    </figure>
                    <div class="m-b-text">
                        <a href="single.html" class="wd">阿巴阿巴 </a>
                        <p>阿巴阿巴.</p>
                        <a class="read" href="single.html">更多</a>
                    </div>
                </div>
                <div class="col-md-4 m-b">
                    <figure class="effect-layla">
                        <a href="single.html"><img src="images/timg.jpg" alt="img25"/></a>
                        <figcaption>
                            <h4>阿巴阿巴<span>阿巴阿巴</span></h4>
                        </figcaption>
                    </figure>
                    <div class="m-b-text">
                        <a href="single.html" class="wd">阿巴阿巴 </a>
                        <p>阿巴阿巴.</p>
                        <a class="read" href="single.html"> 更多</a>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <!--//mag-bottom-->
    </div>
</div>
</body>
</html>

