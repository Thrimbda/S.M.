<%--
  Created by IntelliJ IDEA.
  User: michael
  Date: 16-7-21
  Time: 下午3:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<jsp:useBean id="infoBean" scope="session" class="JavaBean.InfoBean"/>
<jsp:useBean id="userBean" scope="session" class="JavaBean.UserBean"/>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <link href="../CSS/bootstrap.min.css" rel="stylesheet">
    <script src="../js/jquery-3.1.0.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../js/num.js"></script>
    <link href="../CSS/common.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="../CSS/goodsCar.css">
    <title>goodsCar</title>
</head>

<% if (userBean == null || !userBean.isState()) { %>
<div class="nav-bar" id="nav-bar">
    <ul id="nav-tabs">
        <li class="sigh">
            <a href="/index.jsp"><img src="../image/homepage.jpg"></a>
        </li>
        <li>
            <a href=""><img src="../image/05.png">&nbsp;&nbsp;0</a>
        </li>
        <li><a href="/signup.jsp">注册</a></li>
        <li><a href="/login.jsp">登录</a></li>
    </ul>
</div>
<% } else { %>
<div class="nav-bar" id="nav-bar">
    <ul id="nav-tabs">
        <li class="sigh"><a href="/index.jsp"><img src="../image/homepage.jpg"></a></li>
        <li><a href="/HandleShoppingCart"><img src="../image/05.png">&nbsp;&nbsp;0</a></li>
        <li class="custom"><a href="/UserDetial" name="name">欢迎用户：<jsp:getProperty name="userBean" property="username"></jsp:getProperty></a></li>
    </ul>
</div>
<% } %>
<nav class="navbar navbar-default" role="navigation" id="navbar">
    <div class="navbar-header">
        <a class="navbar-brand" href="/HandleShow?type=cargo&sign=7">服装</a>
    </div>
    <div class="navbar-header">
        <a class="navbar-brand" href="/HandleShow?type=cargo&sign=8">箱包</a>
    </div>
    <div class="navbar-header">
        <a class="navbar-brand" href="/HandleShow?type=cargo&sign=10">鞋履</a>
    </div>
    <div class="navbar-header">
        <a class="navbar-brand" href="/HandleShow?type=cargo&sign=9">玩物</a>
    </div>
    <div>
        <p class="navbar-text">&nbsp;&nbsp;&nbsp;SHOPPING IN S.M.</p>
    </div>
</nav>

<div class="block"></div>

<div class="left">
    <div class="carContent">
        <p class="car-head">购物车（）</p>
        <p>您的就购物车中有&nbsp;件商品</p>
        <div class="goodNo" id="NO1">
            <img src="../image/shou.jpg">
            <div class="delete">
                <a href="">删除</a>
            </div>
            <div class="goodInfo">
                <p>熊火龙套装手办</p>
                <p>数量：<a href="javascript:void(0);" class="up" id="add">+</a><input type="text" name="" value="1" id="num"><a href="javascript:void(0);" class="down" id="sub">-</a></p>
                <p>总价：</p>
            </div>
        </div>
        <div class="goodNo" id="No2">
            <img src="../image/lbj001.jpg">
            <div class="delete">
                <a href="">删除</a>
            </div>
            <div class="goodInfo">
                <p>"WhatTheKBJ"11</p>
                <p>数量：<a href="javascript:void(0);" class="up">+</a><input type="text" name="" value="1" id="num"><a href="javascript:void(0);" class="down">-</a></p>
                <p>总价：</p>
            </div>
        </div>
    </div>

    <div class="goodList">
        <div class="listTop">
            <p>购物车</p>
            <div><p class="l">熊火龙套装手办</p><p class="r">￥</p></div>
            <div><p class="l">"WhatTheKBJ"11</p><p class="r">￥</p></div>
        </div>
        <div class="listBottom">
            <div><p class="l">总计:</p><p class="r">￥</p></div>
            <button name="check">去结算</button>
        </div>
    </div>
</div>

<div id="bottom" class="bottom">
    <ul>
        <li class="logo">S.M.</li>
        <li>客服服务</li>
        <li>联系我们</li>
        <li>网站声明</li>
    </ul>
</div>
</body>

</html>