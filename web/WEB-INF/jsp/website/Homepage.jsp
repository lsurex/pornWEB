<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: lsure
  Date: 2017/8/11
  Time: 20:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>

<head>
    <title style="color: darkred">色情网站</title>
    <meta name="viewport" content="width=device-width,
                                     initial-scale=1.0,
                                     maximum-scale=1.0,
                                     user-scalable=no">
    <link href="/static/css/bootstrap.min.css" rel="stylesheet">
    <script src="/static/js/jquery/jquery-3.1.1.min.js"></script>
    <script src="/static/js/bootstrap.min.js"></script>
    <script src="static/js/validator.min.js"></script>
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <style>

        .avatar {
            float: left;
            height: 50px;
            width: 50px;
            margin-right: 10px;
            border-radius: 50%;
        }

        .avatar_message {
            float: right;
            height: 50px;
            width: 50px;
            margin-right: 10px;
            border-radius: 0;
        }

        /*

                .btn {
                    display: inline-block;
                    padding: 6px 12px;
                    margin-bottom: 0;
                    font-size: 14px;
                    font-weight: 500;
                    line-height: 20px;
                    text-align: center;
                    white-space: nowrap;
                    vertical-align: middle;
                    cursor: pointer;
                    border: none;
                    -webkit-border-radius: 0px !important;
                    border-radius: 0px !important;
                }
        */

        .dropdown-menu::before {
            content: '';
            display: inline-block;
            border-left: 9px solid transparent;
            border-right: 9px solid transparent;
            border-bottom: 9px solid #080808;
            position: absolute;
            top: -1px;
            right: 13px;

        }

        /*  .dropdown-menu::after {
              content: '';
              display: inline-block;
              border-left: 9px solid transparent;
              border-right: 9px solid transparent;
              border-bottom: 9px solid #080808;
              position: absolute;
              top: -6px;
              left: 9px;
          }*/
        .dropdown-menu.pull-right {
            right: 0;
            left: auto;
        }

        .navbar {
            border-bottom: 0px;
        }

        .dropdown-menu {

            border-top: 5px solid transparent;

            position: absolute;
            top: 100%;
            left: 0;
            z-index: 1000;
            display: none;
            float: left;
            min-width: 300px;
            max-width: 400px;
            padding: 0px 0;
            margin: 0px 0 0 0;
            border: none;
            list-style: none;
            text-shadow: none;
            -webkit-border-radius: 0px;
            -moz-border-radius: 0px;
            border-radius: 0px;
            -webkit-box-shadow: none;
            -moz-box-shadow: none;
            box-shadow: none;
        }

        .dropdown-menu-item {
            border-left: 1px solid #d5d5d5;
            border-bottom: 1px solid #d5d5d5;
            border-right: 1px solid #d5d5d5;
            height: auto;
            padding: 0px;
        }

        .nav .dropdown .dropdown-toggle {
            padding-bottom: 18px;
            padding-top: 18px;
            color: white;
        }

        .dropdown-menu-header {
            margin-top: 8px;
            background-color: #080808;
            height: 20px;
            border: none;
            padding: 0px;
        }

        .dropdown-menu-tail {
            background-color: #d5d5d5;
            height: 25px;
            border: none;
            padding: 0px;
        }

        .dropdown-menu-item a {
            display: block;
            padding: 7px 10px !important;
            clear: both;
            font-weight: normal;
            line-height: 20px;
            color: #000;
            text-shadow: none;
            white-space: normal !important
        }

        /*.dropdown-menu-item a :focus{
            background: rgb(87, 142, 190) !important;
            border-color: rgb(87, 142, 190)
        }*/

        .item—header {
            display: block;
            font-size: 24px;
        }

        .item—preview {
            display: block;
            font-size: 24px;
        }

        .item-message {
            display: block;
            font-size: 12px;
            color: darkred;
        }

        .left_div:hover {
            background-color: grey;
        }

        .left_a:hover, .left_a:focus {
            background-color: #080808;
        }

        .moduultittle {
            color: #DB4437;
        }

        .modualheader {
            padding-left: 5px;
            margin-bottom: 5px;
        }

        .linkitem:before {
            position: absolute;
            bottom: .1rem;
            right: 1rem;
            font-size: 1.5rem;
            color: #DB4437;
            font-style: italic;
            font-weight: bold;
            content: '1';
            opacity: .3;
        }

        .linkitem a img {
            padding: 0px;

            vertical-align: middle;
        }

        .linktitle {
            font-size: 18px;
            color: #000000;
        }

        .linkitem:hover::before {
            font-size: 2rem;
            opacity: 1;
        }

        .linkitem:hover {
            background-color: #f6f6f6;
        }

        /*滚动条自定义*
             */
        ::-webkit-scrollbar {
            width: 4px;
            height: 4px;
            background-color: #f5f5f5;
        }

        /*定义滚动条轨道 内阴影+圆角*/
        ::-webkit-scrollbar-track {
            -webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.3);
            border-radius: 15px;
            background-color: #F5F5F5;
        }

        /*定义滑块 内阴影+圆角*/
        ::-webkit-scrollbar-thumb {
            border-radius: 15px;
            -webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, .3);
            background-color: #DB4437;
        }

        /*用户信息展示条css设置*/
        .top_bar {
            background: url("assets/image/web/X99_038.png") no-repeat fixed;
            height: 100px;
            overflow-y: visible;
        }

        .userinfo {

            /*//opacity: 0.4;*/
            background-color: rgba(0, 0, 0, 0.4);
            height: 50px;

        }

        .user_block {
            width: 980px;
            height: 50px;
            display: block;
            margin: 0 auto;
        }

        .user_block ul {
            float: right;
            position: relative;

        }

        .user_block ul li {
            float: left;
            position: relative;
            list-style: none;
            text-align: center;
            height: 50px;
            width: 50px;
        }

        .user_Avatar {
            width: 44px;
            height: 44px;
            border-radius: 50%;
            margin-top: 3px;
            border-bottom: 1px solid #080808;
            display: block;
            position: absolute;;
            z-index: 20;

        }

        /*   .user_Avatar:hover {
               left: -10px;
               width: 64px;
               height: 64px;
               border-radius: 50%;
               margin-top: 15px;
               border: 1px solid #3e3d3d;


           }*/

        .user_Avatar_profile {
            margin-left: -88px;
            top: 51px;
            position: absolute;
            width: 220px;
            height: 300px;
            background-color: rgba(0, 0, 0, 0.4);
            border: 1px solid #080808;

            z-index: 10;
            display: none;
        }

        .user_Otherinfo {
            position: relative;
            float: left;;
        }

        .user_Otherinfo a {
            display: inline-block;
            color: #f5f5f5;
            text-decoration: none;
            padding-top: 19px;
            height: 50px;
            width: 50px;
            font-size: 12px;
        }

        .user_Otherinfo a:hover, .user_Otherinfo a:focus {
            background-color: #000000;
        }

        .user_Avatar_profile_item {
            display: inline-block;
            width: 80px;
            height: 80px;
            color: #f5f5f5;
            text-decoration: none;
            text-underline: none;
        }

        .user_Avatar_profile_item:hover {
            background-color: rgba(255, 255, 255, 0.4);
            color: #080808;
            text-underline: none;
            text-decoration: none;
        }

        .user_Avatar_profile_item span {
            font-size: 30px;
            margin-top: 16px;

        }

        .user_Avatar_profile_item i {
            font-size: 30px;
            margin-top: 16px;
        }

        .login_form input {
            margin-top: 20px;

        }
    </style>
</head>
<body style="margin-top: 0px">
<div style="width: 100%;margin-top: 0px;">
    <div class="top_bar">
        <div class="userinfo">
            <a href="#" id="toogle_btn"
               style="float: left;display: block;width: 50px;height: 50px ;background-color: rgba(0, 0, 0, 0.3);;color: #f5f5f5">
                <span style="font-size: 26px;margin-top: 10px;margin-left: 12px"
                      class="glyphicon glyphicon-align-justify"/>
            </a>
            <div class="user_block">
                <ul>
                    <li>
                        <a href="#">
                            <img src="assets/image/web/X99_038.png" alt="" class="user_Avatar"
                                 style="">
                        </a>
                        <div class="user_Avatar_profile">
                            <div style="margin-top: 50px">
                                <%
                                    String yh_nc = (String) request.getSession().getAttribute("yh_nc");
                                    boolean flag = false;
                                    if (yh_nc == null || yh_nc.isEmpty()) {
                                        Cookie cookies[] = request.getCookies();
                                        if (cookies != null && cookies.length > 0) {
                                            for (Cookie cookie : cookies) {
                                                if (cookie.getName().equals("yh_nc")) {
                                                    yh_nc = cookie.getValue();
                                                    request.getSession().setAttribute("yh_nc", yh_nc);
                                                    flag = true;
                                                }
                                            }

                                        }

                                    } else {
                                        flag = true;

                                    }
                                    if (flag) {
                                %>
                                <b style="color: #f5f5f5;"><%= request.getSession().getAttribute("yh_nc")%>
                                </b>
                                <hr style="width: 180px;border: 0.5px solid #FFFFFF;border-radius: 5px"/>
                                <div>
                                    <div>
                                        <a href="#" class="user_Avatar_profile_item" id="user_logout">
                                            <span class="glyphicon glyphicon-log-out"></span>
                                            <br>退出
                                        </a>
                                        <a href="#" class="user_Avatar_profile_item">
                                            <span class="glyphicon glyphicon-log-out"></span>
                                            <br>退出
                                        </a>
                                        <a href="#" class="user_Avatar_profile_item">
                                            <span class="glyphicon glyphicon-log-out"></span>
                                            <br>退出
                                        </a>
                                        <a href="#" class="user_Avatar_profile_item">
                                            <span class="glyphicon glyphicon-log-out"></span>
                                            <br>退出
                                        </a>
                                    </div>
                                </div>
                                <%
                                } else {
                                %>

                                <b style="color: #f5f5f5;">未登录</b>
                                <hr style="width: 180px;border: 0.5px solid #FFFFFF;border-radius: 5px"/>
                                <div>
                                    <div>
                                        <a href="#" id="a_login_module" class="user_Avatar_profile_item">
                                            <span class="glyphicon glyphicon-log-in"></span>
                                            <br>登录
                                        </a>
                                        <a href="#" class="user_Avatar_profile_item">
                                            <i class="fa fa-user-plus" aria-hidden="true"></i>
                                            <br>注册
                                        </a>

                                    </div>
                                </div>
                                <hr style="width: 180px;border: 0.5px solid #FFFFFF;border-radius: 5px"/>
                                <%

                                    }

                                %>


                            </div>
                        </div>


                    </li>
                    <li class="user_Otherinfo" style="margin-left: 10px">
                        <a href="/loginManager/login">
                            通知
                        </a>
                    </li>
                    <li class="user_Otherinfo">
                        <a href="#">
                            设置</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div style="border-top: 2px solid #DB4437">
        <div style="display: inline-block; width:0px;height: 100%;background-color: rgb(247, 247, 247);overflow: hidden;/*padding-top: 40px*/"
             id="left_bar">
            <div class="left_div"
                 style="width: 70px ;height:70px;overflow: hidden;border-top: 1px solid rgb(136, 136, 136);;">
                <a href="#" style="display: block">
                    <img style="margin: 10px" class="avatar" src="assets/image/mainPage/mainpage1.jpg"
                         alt="Avatar">

                </a>
            </div>

            <div class="left_div"
                 style="width: 70px ;height:70px;overflow: hidden;border-top: 1px solid rgb(136, 136, 136);;">
                <a href="#">
                    <img style="margin: 10px" class="avatar" src="assets/image/mainPage/mainpage1.jpg"
                         alt="Avatar">
                </a>

            </div>
            <div class="left_div"
                 style="width: 70px ;height:70px;overflow: hidden;border-top: 1px solid rgb(136, 136, 136);">
                <a href="#" class="left_a">
                    <img style="margin: 10px" class="avatar" src="assets/image/mainPage/mainpage1.jpg"
                         alt="Avatar">
                </a>

            </div>
            <div class="left_div"
                 style="width: 180px ;height:70px;overflow: hidden;border-top: 1px solid rgb(136, 136, 136);">
                <a href="#" class="left_a">
                    <img style="margin: 10px" class="avatar" src="assets/image/mainPage/mainpage1.jpg"
                         alt="Avatar">
                </a>


            </div>
            <div class="left_div"
                 style="width: 180px ;height:70px;overflow: hidden;border-top: 1px solid rgb(136, 136, 136);border-bottom: 1px solid rgb(136, 136, 136);">
                <a href="#" class="left_a">
                    <img style="margin: 10px" class="avatar" src="assets/image/mainPage/mainpage1.jpg"
                         alt="Avatar">
                </a>


            </div>
        </div>
        <div id="main_content"
             style="position: absolute; left: 0px; right:0px;height: 100%; width: auto; background-color: #f6f6f6;display:inline-block;">

            <div class="container-fluid" style="padding: 0px">

                <div class="col-sm-12 col-xs-12 col-lg-12" style="background-color: #FFFFFF; padding: 0px;height:100%">

                    <%--<div class="col-sm-12 col-xs-12 col-lg-12" style="background-color: #f6f6f6;padding: 0px;height: 40px">--%>

                    <%-- </div>--%>
                    <div class="col-xs-12 col-sm-7 col-lg-7">
                        <div class="col-xs-12 col-sm-12 col-lg-12">

                            <div class="modualheader" style="margin-top: 10px">
                                <a href="#" class="moduultittle">
                                    <i class="fa fa-ravelry"></i>&nbsp;最近更新
                                </a>
                                <a href="#" class="moduultittle pull-right">
                                    &nbsp;更多<i class="fa fa-angle-double-right"></i>
                                </a>

                            </div>
                            <div style="overflow-x: auto">
                                <table>
                                    <tr>
                                        <td style="min-width: 250px;width: 250px;height: 250px ; background-color: #FFFFFF;padding: 10px">
                                            <div style="float: left;border: 1px solid #f5f5f5;border-radius: 10px;background-color: #FFFFFF;">

                                                <a href="#">
                                                    <img src="assets/image/mainPage/mainpage3.jpg" alt="图片"
                                                         style="width: 226px;height: 160px;border-radius:10px 10px 0px 0px">
                                                    <%--标题--%>
                                                </a>
                                                <div style="padding-left: 10px;padding-right: 10px">
                                                    <a href="#" style="color:#22133D;font-size: 14px">标题测试你说呢不是吧真的家的看不起你！20178181818319219</a>

                                                </div>
                                                <%--上传人--%>
                                                <div style="float: left;margin-top: 10px;padding-left: 10px;padding-right: 10px;padding-bottom: 5px">
                                                    <a style="float: left;width: 100px;text-align: left; color: #959595;font-size: 12px">孙茂锋</a>
                                                    <a style=" float: right;width: 100px;text-align: right;color: #959595;font-size: 12px">时间</a>
                                                </div>
                                            </div>
                                        </td>
                                        <td style="min-width: 250px;width: 250px;height: 250px ; background-color: #FFFFFF;padding: 10px">
                                            <div style="float: left;border: 1px solid #f5f5f5;border-radius: 10px;background-color: #FFFFFF;">

                                                <a href="#">
                                                    <img src="assets/image/mainPage/mainpage3.jpg" alt="图片"
                                                         style="width: 226px;height: 160px;border-radius:10px 10px 0px 0px">
                                                    <%--标题--%>
                                                </a>
                                                <div style="padding-left: 10px;padding-right: 10px">
                                                    <a href="#" style="color:#22133D;font-size: 14px">标题测试你说呢不是吧真的家的看不起你！20178181818319219</a>

                                                </div>
                                                <%--上传人--%>
                                                <div style="float: left;margin-top: 10px;padding-left: 10px;padding-right: 10px;padding-bottom: 5px">
                                                    <a style="float: left;width: 100px;text-align: left; color: #959595;font-size: 12px">孙茂锋</a>
                                                    <a style=" float: right;width: 100px;text-align: right;color: #959595;font-size: 12px">时间</a>
                                                </div>
                                            </div>
                                        </td>
                                        <td style="min-width: 250px;width: 250px;height: 250px ; background-color: #FFFFFF;padding: 10px">
                                            <div style="float: left;border: 1px solid #f5f5f5;border-radius: 10px;background-color: #FFFFFF;">

                                                <a href="#">
                                                    <img src="assets/image/mainPage/mainpage3.jpg" alt="图片"
                                                         style="width: 226px;height: 160px;border-radius:10px 10px 0px 0px">
                                                    <%--标题--%>
                                                </a>
                                                <div style="padding-left: 10px;padding-right: 10px">
                                                    <a href="#" style="color:#22133D;font-size: 14px">标题测试你说呢不是吧真的家的看不起你！20178181818319219</a>

                                                </div>
                                                <%--上传人--%>
                                                <div style="float: left;margin-top: 10px;padding-left: 10px;padding-right: 10px;padding-bottom: 5px">
                                                    <a style="float: left;width: 100px;text-align: left; color: #959595;font-size: 12px">孙茂锋</a>
                                                    <a style=" float: right;width: 100px;text-align: right;color: #959595;font-size: 12px">时间</a>
                                                </div>
                                            </div>
                                        </td>
                                        <td style="min-width: 250px;width: 250px;height: 250px ; background-color: #FFFFFF;padding: 10px">
                                            <div style="float: left;border: 1px solid #f5f5f5;border-radius: 10px;background-color: #FFFFFF;">

                                                <a href="#">
                                                    <img src="assets/image/mainPage/mainpage3.jpg" alt="图片"
                                                         style="width: 226px;height: 160px;border-radius:10px 10px 0px 0px">
                                                    <%--标题--%>
                                                </a>
                                                <div style="padding-left: 10px;padding-right: 10px">
                                                    <a href="#" style="color:#22133D;font-size: 14px">标题测试你说呢不是吧真的家的看不起你！20178181818319219</a>

                                                </div>
                                                <%--上传人--%>
                                                <div style="float: left;margin-top: 10px;padding-left: 10px;padding-right: 10px;padding-bottom: 5px">
                                                    <a style="float: left;width: 100px;text-align: left; color: #959595;font-size: 12px">孙茂锋</a>
                                                    <a style=" float: right;width: 100px;text-align: right;color: #959595;font-size: 12px">时间</a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-lg-12">

                            <div class="modualheader" style="margin-top: 10px">
                                <a href="#" class="moduultittle">
                                    <i class="fa fa-ravelry"></i>&nbsp;当前最热
                                </a>
                                <a href="#" class="moduultittle pull-right">
                                    &nbsp;更多<i class="fa fa-angle-double-right"></i>
                                </a>

                            </div>
                            <div style="overflow-x: auto">
                                <table>
                                    <tr>
                                        <td style="min-width: 250px;width: 250px;height: 250px ; background-color: #FFFFFF;padding: 10px">
                                            <div style="float: left;border: 1px solid #f5f5f5;border-radius: 10px;background-color: #FFFFFF;">

                                                <a href="#">
                                                    <img src="assets/image/mainPage/mainpage5.jpg" alt="图片"
                                                         style="width: 226px;height: 160px;border-radius:10px 10px 0px 0px">
                                                    <%--标题--%>
                                                </a>
                                                <div style="padding-left: 10px;padding-right: 10px">
                                                    <a href="#" style="color:#22133D;font-size: 14px">标题测试你说呢不是吧真的家的看不起你！20178181818319219</a>

                                                </div>
                                                <%--上传人--%>
                                                <div style="float: left;margin-top: 10px;padding-left: 10px;padding-right: 10px;padding-bottom: 5px">
                                                    <a style="float: left;width: 100px;text-align: left; color: #959595;font-size: 12px">孙茂锋</a>
                                                    <a style=" float: right;width: 100px;text-align: right;color: #959595;font-size: 12px">时间</a>
                                                </div>
                                            </div>
                                        </td>
                                        <td style="min-width: 250px;width: 250px;height: 250px ; background-color: #FFFFFF;padding: 10px">
                                            <div style="float: left;border: 1px solid #f5f5f5;border-radius: 10px;background-color: #FFFFFF;">

                                                <a href="#">
                                                    <img src="assets/image/mainPage/mainpage5.jpg" alt="图片"
                                                         style="width: 226px;height: 160px;border-radius:10px 10px 0px 0px">
                                                    <%--标题--%>
                                                </a>
                                                <div style="padding-left: 10px;padding-right: 10px">
                                                    <a href="#" style="color:#22133D;font-size: 14px">标题测试你说呢不是吧真的家的看不起你！20178181818319219</a>

                                                </div>
                                                <%--上传人--%>
                                                <div style="float: left;margin-top: 10px;padding-left: 10px;padding-right: 10px;padding-bottom: 5px">
                                                    <a style="float: left;width: 100px;text-align: left; color: #959595;font-size: 12px">孙茂锋</a>
                                                    <a style=" float: right;width: 100px;text-align: right;color: #959595;font-size: 12px">时间</a>
                                                </div>
                                            </div>
                                        </td>
                                        <td style="min-width: 250px;width: 250px;height: 250px ; background-color: #FFFFFF;padding: 10px">
                                            <div style="float: left;border: 1px solid #f5f5f5;border-radius: 10px;background-color: #FFFFFF;">

                                                <a href="#">
                                                    <img src="assets/image/mainPage/mainpage5.jpg" alt="图片"
                                                         style="width: 226px;height: 160px;border-radius:10px 10px 0px 0px">
                                                    <%--标题--%>
                                                </a>
                                                <div style="padding-left: 10px;padding-right: 10px">
                                                    <a href="#" style="color:#22133D;font-size: 14px">标题测试你说呢不是吧真的家的看不起你！20178181818319219</a>

                                                </div>
                                                <%--上传人--%>
                                                <div style="float: left;margin-top: 10px;padding-left: 10px;padding-right: 10px;padding-bottom: 5px">
                                                    <a style="float: left;width: 100px;text-align: left; color: #959595;font-size: 12px">孙茂锋</a>
                                                    <a style=" float: right;width: 100px;text-align: right;color: #959595;font-size: 12px">时间</a>
                                                </div>
                                            </div>
                                        </td>
                                        <td style="min-width: 250px;width: 250px;height: 250px ; background-color: #FFFFFF;padding: 10px">
                                            <div style="float: left;border: 1px solid #f5f5f5;border-radius: 10px;background-color: #FFFFFF;">

                                                <a href="#">
                                                    <img src="assets/image/mainPage/mainpage5.jpg" alt="图片"
                                                         style="width: 226px;height: 160px;border-radius:10px 10px 0px 0px">
                                                    <%--标题--%>
                                                </a>
                                                <div style="padding-left: 10px;padding-right: 10px">
                                                    <a href="#" style="color:#22133D;font-size: 14px">测试而饿哦姐俄欧死啊海底捞i发20178181818319219</a>

                                                </div>
                                                <%--上传人--%>
                                                <div style="float: left;margin-top: 10px;padding-left: 10px;padding-right: 10px;padding-bottom: 5px">
                                                    <a style="float: left;width: 100px;text-align: left; color: #959595;font-size: 12px">孙茂锋</a>
                                                    <a style=" float: right;width: 100px;text-align: right;color: #959595;font-size: 12px">时间</a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <div class="col-xs-12 col-sm-12 col-lg-12">

                            <div class="modualheader" style="margin-top: 10px">
                                <a href="#" class="moduultittle">
                                    <i class="fa fa-ravelry"></i>&nbsp;当前最热
                                </a>
                                <a href="#" class="moduultittle pull-right">
                                    &nbsp;更多<i class="fa fa-angle-double-right"></i>
                                </a>

                            </div>
                            <div style="overflow-x: auto">
                                <table>
                                    <tr>
                                        <td style="min-width: 250px;width: 250px;height: 250px ; background-color: #FFFFFF;padding: 10px">
                                            <div style="float: left;border: 1px solid #f5f5f5;border-radius: 10px;background-color: #FFFFFF;">

                                                <a href="#">
                                                    <img src="assets/image/mainPage/mainpage5.jpg" alt="图片"
                                                         style="width: 226px;height: 160px;border-radius:10px 10px 0px 0px">
                                                    <%--标题--%>
                                                </a>
                                                <div style="padding-left: 10px;padding-right: 10px">
                                                    <a href="#" style="color:#22133D;font-size: 14px">标题测试你说呢不是吧真的家的看不起你！20178181818319219</a>

                                                </div>
                                                <%--上传人--%>
                                                <div style="float: left;margin-top: 10px;padding-left: 10px;padding-right: 10px;padding-bottom: 5px">
                                                    <a style="float: left;width: 100px;text-align: left; color: #959595;font-size: 12px">孙茂锋</a>
                                                    <a style=" float: right;width: 100px;text-align: right;color: #959595;font-size: 12px">时间</a>
                                                </div>
                                            </div>
                                        </td>
                                        <td style="min-width: 250px;width: 250px;height: 250px ; background-color: #FFFFFF;padding: 10px">
                                            <div style="float: left;border: 1px solid #f5f5f5;border-radius: 10px;background-color: #FFFFFF;">

                                                <a href="#">
                                                    <img src="assets/image/mainPage/mainpage5.jpg" alt="图片"
                                                         style="width: 226px;height: 160px;border-radius:10px 10px 0px 0px">
                                                    <%--标题--%>
                                                </a>
                                                <div style="padding-left: 10px;padding-right: 10px">
                                                    <a href="#" style="color:#22133D;font-size: 14px">标题测试你说呢不是吧真的家的看不起你！20178181818319219</a>

                                                </div>
                                                <%--上传人--%>
                                                <div style="float: left;margin-top: 10px;padding-left: 10px;padding-right: 10px;padding-bottom: 5px">
                                                    <a style="float: left;width: 100px;text-align: left; color: #959595;font-size: 12px">孙茂锋</a>
                                                    <a style=" float: right;width: 100px;text-align: right;color: #959595;font-size: 12px">时间</a>
                                                </div>
                                            </div>
                                        </td>
                                        <td style="min-width: 250px;width: 250px;height: 250px ; background-color: #FFFFFF;padding: 10px">
                                            <div style="float: left;border: 1px solid #f5f5f5;border-radius: 10px;background-color: #FFFFFF;">

                                                <a href="#">
                                                    <img src="assets/image/mainPage/mainpage5.jpg" alt="图片"
                                                         style="width: 226px;height: 160px;border-radius:10px 10px 0px 0px">
                                                    <%--标题--%>
                                                </a>
                                                <div style="padding-left: 10px;padding-right: 10px">
                                                    <a href="#" style="color:#22133D;font-size: 14px">标题测试你说呢不是吧真的家的看不起你！20178181818319219</a>

                                                </div>
                                                <%--上传人--%>
                                                <div style="float: left;margin-top: 10px;padding-left: 10px;padding-right: 10px;padding-bottom: 5px">
                                                    <a style="float: left;width: 100px;text-align: left; color: #959595;font-size: 12px">孙茂锋</a>
                                                    <a style=" float: right;width: 100px;text-align: right;color: #959595;font-size: 12px">时间</a>
                                                </div>
                                            </div>
                                        </td>
                                        <td style="min-width: 250px;width: 250px;height: 250px ; background-color: #FFFFFF;padding: 10px">
                                            <div style="float: left;border: 1px solid #f5f5f5;border-radius: 10px;background-color: #FFFFFF;">

                                                <a href="#">
                                                    <img src="assets/image/mainPage/mainpage5.jpg" alt="图片"
                                                         style="width: 226px;height: 160px;border-radius:10px 10px 0px 0px">
                                                    <%--标题--%>
                                                </a>
                                                <div style="padding-left: 10px;padding-right: 10px">
                                                    <a href="#" style="color:#22133D;font-size: 14px">测试而饿哦姐俄欧死啊海底捞i发20178181818319219</a>

                                                </div>
                                                <%--上传人--%>
                                                <div style="float: left;margin-top: 10px;padding-left: 10px;padding-right: 10px;padding-bottom: 5px">
                                                    <a style="float: left;width: 100px;text-align: left; color: #959595;font-size: 12px">孙茂锋</a>
                                                    <a style=" float: right;width: 100px;text-align: right;color: #959595;font-size: 12px">时间</a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4 col-lg-4 col-xs-10" style="margin-top: 10px;margin-left: 20px;">
                        <div>
                            <div class="modualheader">
                                <a href="#" class="moduultittle">
                                    <i class="fa fa-ravelry"></i>&nbsp;新世界大门
                                </a>
                                <a href="#" class="moduultittle pull-right">
                                    &nbsp;更多<i class="fa fa-angle-double-right"></i>
                                </a>
                            </div>
                            <ul class="list-group" style="max-height: 600px;overflow-y: auto">
                                <li class="linkitem list-group-item">
                                    <a href="#" style="display: block;">
                                        <div style="width: 30% ;display: inline-block">
                                            <img src="assets/image/mainPage/mainpage4.jpg" class="img-thumbnail">
                                        </div>

                                        <div style="margin-left: 15px;width:60%;vertical-align: middle;;display: table-cell;display: inline-block;word-wrap: normal;white-space: normal">
                                            <h4 class="linktitle">dadljaasdkjalksd
                                                <small>asdmasda</small>
                                            </h4>

                                            <i style="color:#DB4437" class="fa fa-comment-o">&nbsp;0</i>
                                            <i style="color:#DB4437;margin-left: 10px"
                                               class="fa fa-thumbs-o-up">&nbsp;0</i>
                                        </div>


                                    </a>
                                </li>
                                <li class="linkitem list-group-item">
                                    <a href="#" style="display: block;">
                                        <div style="width: 30% ;display: inline-block">
                                            <img src="assets/image/mainPage/mainpage4.jpg" class="img-thumbnail">
                                        </div>

                                        <div style="margin-left: 15px;width:60%;vertical-align: middle;;display: table-cell;display: inline-block;word-wrap: normal;white-space: normal">
                                            <h4 class="linktitle">dadljaasdkjalksd
                                                <small>asdmasda</small>
                                            </h4>

                                            <i style="color:#DB4437" class="fa fa-comment-o">&nbsp;0</i>
                                            <i style="color:#DB4437;margin-left: 10px"
                                               class="fa fa-thumbs-o-up">&nbsp;0</i>
                                        </div>


                                    </a>
                                </li>
                                <li class="linkitem list-group-item">
                                    <a href="#" style="display: block;">
                                        <div style="width: 30% ;display: inline-block">
                                            <img src="assets/image/mainPage/mainpage4.jpg" class="img-thumbnail">
                                        </div>

                                        <div style="margin-left: 15px;width:60%;vertical-align: middle;;display: table-cell;display: inline-block;word-wrap: break-word;white-space: normal">
                                            <h4 class="linktitle">123123213123333333333333
                                                3333333333333333333333333333333333333
                                                <small>asdma1231231231231231231223</small>
                                            </h4>

                                            <i style="color:#DB4437" class="fa fa-comment-o">&nbsp;0</i>
                                            <i style="color:#DB4437;margin-left: 10px"
                                               class="fa fa-thumbs-o-up">&nbsp;0</i>
                                        </div>
                                    </a>
                                </li>
                                <li class="linkitem list-group-item">
                                    <a href="#" style="display: block;">
                                        <div style="width: 30% ;display: inline-block">
                                            <img src="assets/image/mainPage/mainpage4.jpg" class="img-thumbnail">
                                        </div>

                                        <div style="margin-left: 15px;width:60%;vertical-align: middle;;display: table-cell;display: inline-block;word-wrap: normal;white-space: normal">
                                            <h4 class="linktitle">dadljaasdkjalksd
                                                <small>asdmasda</small>
                                            </h4>

                                            <i style="color:#DB4437" class="fa fa-comment-o">&nbsp;0</i>
                                            <i style="color:#DB4437;margin-left: 10px"
                                               class="fa fa-thumbs-o-up">&nbsp;0</i>
                                        </div>


                                    </a>
                                </li>
                            </ul>
                        </div>
                        <div>
                            <div class="modualheader">
                                <a href="#" class="moduultittle">
                                    <i class="fa fa-ravelry"></i>&nbsp;新世界大门
                                </a>
                                <a href="#" class="moduultittle pull-right">
                                    &nbsp;更多<i class="fa fa-angle-double-right"></i>
                                </a>
                            </div>
                            <div>
                                <div style="padding: 5px">
                                    <div class="col-sm-4">

                                        <div style="border: 1px solid #f5f5f5;border-radius: 10px;background-color: #FFFFFF;">

                                            <a href="#">
                                                <img src="assets/image/mainPage/mainpage3.jpg" alt="图片"
                                                     style="width: 100%">
                                                <%--标题--%>
                                            </a>
                                            <div style="padding-left: 10px;padding-right: 10px">
                                                <a href="#" style="color:#22133D;font-size: 12px">标不起</a>

                                            </div>
                                            <%--上传人--%>
                                        </div>
                                    </div>

                                </div>
                            </div>

                        </div>
                    </div>
                </div>


            </div>

        </div>
        <div class="modal fade" id="login_modal">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header"
                         style="border: 1px solid #DB4437; background: url('assets/image/mainPage/mainpage1.jpg') no-repeat fixed;height: 80px">

                    </div>
                    <div class="modal-body">
                        <div style="width: 580px">
                            <div style="width: 400px ;display: inline-block">
                                <form class="form-horizontal login_form">

                                    <input class="form-control" type="text" id="login_username" placeholder="用户名">
                                    <input class="form-control" type="password" id="login_paswd" placeholder="密码">

                                    <button id="login_btn" type="button" class="btn btn-default btn-block"
                                            style="margin-top: 20px;background-color:#DB4437">登录
                                    </button>

                                </form>
                            </div>
                            <div style="width: 140px;height: 170px;display: inline-block;background: url('assets/image/mainPage/mainpage1.jpg') no-repeat fixed">

                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    /* $("#test").on("mouseover", function () {
     if ($(this).parent().is(".open")) {
     return
     }

     $(this).dropdown("toggle")
     })
     $("#test2").on("mouseleave", function () {
     if ($(this).parent().is(".open")) {
     $(this).dropdown("toggle")
     }

     return;
     })*/
    var isOpen = false
    $("#toogle_btn").click(function () {
        if (!isOpen) {
            $("#left_bar").animate({width: 70}, "slow");
            $("#main_content").animate({left: 70}, "slow");
            isOpen = true;
        } else {
            $("#left_bar").animate({width: 0}, "slow");
            $("#main_content").animate({left: 0}, "slow");
            isOpen = false;
        }
    })

</script>
<%--用户头像script--%>
<script>
    var userAvatar_state = false;
    $(".user_Avatar").click(function () {
        if (!userAvatar_state) {
            userAvatar_state = true;
            $(this).animate({
                "width": "64px",
                "height": "64px",
                "border": "2px solid #ffffff",
                "left": "-10px",
                "top": "15px"
            }, "slow");
            $(".user_Avatar_profile").fadeIn("slow");
        } else {
            $(this).animate({
                "width": "44px",
                "height": "44px",
                "border": "1px solid #3e3d3d",
                "left": "0px",
                "top": "0px"
            }, "slow");
            $(".user_Avatar_profile").fadeOut("slow");
            userAvatar_state = false;
        }
    })


    /*用户登录*/
    $("#a_login_module").click(function () {
        $("#login_modal").modal()
    })
    $("#login_btn").click(function () {
        $.post("/loginManager/login", {
            yh_nc: $("#login_username").val(),
            yh_pswd: $("#login_paswd").val()
        }, function (data) {
            if (data == "success") {
                alert("登陆成功")

            } else {
                alert("登录失败")
            }
            alert(data);
        })
    })
    /*用户退出*/
    $("#user_logout").click(function () {
           $.post("/loginManager/logout",{})
    })

</script>
</body>
</html>
