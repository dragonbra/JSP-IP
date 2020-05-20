<%--
  Created by IntelliJ IDEA.
  User: cyd
  Date: 2020/5/19
  Time: 14:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="col-md-4 mag-inner-right">
    <div class="connect">
        <h4 class="side" ><i class="glyphicon glyphicon-hand-right" aria-hidden="true"></i>校内导航</h4>
        <ul class="stay">
            <li class="c5-element-facebook"><a href="http://www.hhu.edu.cn/"><span class="icon"></span><h5>河海大学官网</h5><span class="text">hhu.edu.cn</span></a></li>
            <li class="c5-element-twitter"><a href="http://my.hhu.edu.cn/"><span class="icon1"></span><h5>每日健康上报</h5><span class="text">my.hhu.edu.cn</span></a></li>
            <li class="c5-element-gg"><a href="http://202.119.113.136/"><span class="icon2"></span><h5>URP综合教务系统</h5><span class="text">202.119.113.136</span></a></li>
            <li class="c5-element-dribble"><a href="http://smst.hhu.edu.cn/"><span class="icon3"></span><h5>奥兰系统</h5><span class="text">smst.hhu.edu.cn</span></a></li>

        </ul>
    </div>
    <div class="modern">
        <h4 class="side"><i class="glyphicon glyphicon-user" aria-hidden="true"></i> 实验队伍</h4>
        <div id="example1">
            <div id="owl-demo" class="owl-carousel text-center">
                <div class="item">

                    <img class="img-responsive lot" src="images/exp_team/hjy.jpeg" alt=""/>
                </div>
                <div class="item">

                    <img class="img-responsive lot" src="images/exp_team/zyc.jpeg" alt=""/>
                </div>
                <div class="item">

                    <img class="img-responsive lot" src="images/exp_team/sjr.jpeg" alt=""/>
                </div>
                <div class="item">

                    <img class="img-responsive lot" src="images/exp_team/hhu.jpeg" alt=""/>
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
                <img src="images/exp_team/ec.jpeg" class="img-responsive" alt=""/>

            </div>
            <div class="col-md-9 item-details">
                <h5 class="inner two"><a href="getarticle.jsp?article_id=1589965845769">
                    祝贺我院学生在国际大学生程序设计竞赛亚洲区决赛中再获佳绩
                </a></h5>
                <div class="td-post-date two">
                    <i class="glyphicon glyphicon-time"></i>
                        2019-12-17
                    <a href="#"><i class="glyphicon glyphicon-comment"></i>
                        11
                    </a>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="editor-pics">
            <div class="col-md-3 item-pic">
                <img src="images/exp_team/shenyang.jpeg" class="img-responsive" alt=""/>

            </div>
            <div class="col-md-9 item-details">
                <h5 class="inner two"><a href=""><a href="getarticle.jsp?article_id=1589965608799">
                    祝贺计信院学生在国际大学生程序设计竞赛亚洲区域赛（沈阳站）中再创佳绩
                </a></h5>
                <div class="td-post-date two">
                    <i class="glyphicon glyphicon-time"></i>
                        2019-11-19
                    <a href="#"><i class="glyphicon glyphicon-comment"></i>
                        7
                    </a>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="editor-pics">
            <div class="col-md-3 item-pic">
                <img src="images/exp_team/ccsp.jpeg" class="img-responsive" alt=""/>

            </div>
            <div class="col-md-9 item-details">
                <h5 class="inner two"><a href="http://localhost:2562/JSP_IP_war_exploded/getarticle.jsp?article_id=1589966630316">
                    恭喜计信学子在2019 CCF CCSP总决赛中获佳绩
                </a></h5>
                <div class="td-post-date two">
                    <i class="glyphicon glyphicon-time"></i>
                        2019-10-24
                    <a href="#"><i class="glyphicon glyphicon-comment"></i>
                        17
                    </a>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    <!--//edit-pics-->
</div>
