<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: MrBun
  Date: 2021/6/3
  Time: 14:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>淘宝网-淘！我喜欢</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="./css/shopping.css">
    <link rel="stylesheet" href="./css/index.css">

</head>


<body>
<div class="web-shop">
    <!-- 头部导航条 -->
    <div class="header">
        <div class="container">
            <ul class="nav">
                <li>
                    <a href="javascript:;" class="arrow">中国大陆</a>
                </li>
                <li class="orange">
                    <a id="c_name" href="javascript:;">欢迎${customer.name}登录</a>
                </li>
                <li>
                    <a href="sign_in.jsp">免费注册</a>
                </li>
                <li>
                    <a href="javascript:;">手机逛淘宝</a>
                </li>
            </ul>
            <ul class="nav">
                <li>
                    <a href="index.jsp" class="arrow">我的淘宝</a>
                </li>
                <li>
                    <a href="shopping.jsp" id="load_cart" class="arrow">购物车</a>
                </li>
                <li>
                    <span class="start" class="arrow"></span>
                    <a href="javascript:;">收藏夹</a>
                </li>
                <li>
                    <a href="javascript:;" class="arrow">商品分类</a>
                </li>
                <li>
                    <a href="javascript:;" class="arrow">卖家中心</a>
                </li>
                <li>
                    <a href="javascript:;" class="arrow">联系客服</a>
                </li>
                <li>
                    <a href="javascript:;" class="arrow">网站导航</a>
                </li>
            </ul>
        </div>
    </div>
    <div class="tag">

    </div>
<%--    <div class="body-1">--%>
<%--        <!-- 搜索框 -->--%>
<%--        <div class="search">--%>
<%--            <div class="search-logo">--%>
<%--                <img src="" alt="">--%>
<%--            </div>--%>
<%--            <div class="search-box">--%>
<%--                <ul class="search-tab">--%>
<%--                    <a href="javascript:;" class="choose1">淘宝</a>--%>
<%--                    <a href="javascript:;">天猫</a>--%>
<%--                    <a href="javascript:;">店铺</a>--%>
<%--                </ul>--%>
<%--                <form class="search-input">--%>
<%--                    <input class="box1" id="search" type="text" name="search">--%>
<%--                    <button class="btn" id="search_btn" type="button">搜索</button>--%>
<%--                </form>--%>
<%--                <div class="search-choose">--%>
<%--                    <a href="javascript:;">新款连衣裙</a>--%>
<%--                    <a href="javascript:;">四件套</a>--%>
<%--                    <a href="javascript:;">潮流T恤</a>--%>
<%--                    <a href="javascript:;">时尚女鞋</a>--%>
<%--                    <a href="javascript:;">短裤</a>--%>
<%--                    <a href="javascript:;">半身裙</a>--%>
<%--                    <a href="javascript:;">男士外套</a>--%>
<%--                    <a href="javascript:;">墙纸</a>--%>
<%--                    <a href="javascript:;">新款男鞋</a>--%>
<%--                    <a href="javascript:;">耳机</a>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="search-code">--%>
<%--                <a href="javascript:;">--%>
<%--                    <img src="img/downloda.jpg" alt="">--%>
<%--                </a>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
</div>
<div class="content">
    <table id="test">
        <thead>
        <tr>
            <th><input type="checkbox" name="" id="h_check">全选</th>
            <th>商品描述</th>
            <th>单价</th>
            <th>数量</th>
            <th>金额</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody id="tb_content">
            <c:forEach items="${cart}" var="item">
                <tr>
                    <td>
                        <input type='checkbox' name='c_check' class='c_check'>
                        <label id="mer_id" style="display: none">${item.id}</label>
                    </td>
                    <td>
                        <img src="${item.dis_img_source}" style="width: 70px;height: 70px;" alt="">
                        <span>${item.m_dis}</span>
                    </td>
                    <td>
                        <span>￥</span>
                        <span>${item.price}</span>
                    </td>
                    <td>
                        <div class="ticket" style="padding-top: 17px;">
                            <p style="float: left; font-size: initial;">数量 </p>
                            <form name="ticketNumber">
                                <label>
                                    <a href="javascript:; " onclick="aClick(this,'jian')">-</a>
                                    <input class="amount-input" name="amount" type="text" value="${item.count}">
                                    <a href="javascript:;" onclick="aClick(this,'jia')" style="float: none;">+</a>
                                </label>
                            </form>
                        </div>
                    </td>
                    <td>
                        <span style="font-size: 20px;color: orangered;">￥</span>
                        <span style="font-size: 20px;color: orangered;">15.00</span>
                    </td>
                    <td>

                        <a style="cursor: pointer;" id="remove">删除</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

</div>
<div class="calculate">
    <input type="button" id="delete" value="删除">
    <div class="fix">
        <span>合计:</span>
        <span style="font-size: 20px;color: orangered;">￥</span>
        <span id="total_price" style="font-size: 20px;color: orangered;">0</span>
        <input type="button" value="结算">
    </div>

</div>
<div class="footer">
    <div class="item">
        <h2 class="title">消费者保证</h2>
        <div>
            <span>保障范围</span>
            <span>退货退款流程</span>
            <span>服务中心</span>
            <span>更多特色服务</span>
        </div>
    </div>
    <div class="item">
        <h2 class="title">消费者保证</h2>
        <div>
            <span>保障范围</span>
            <span>退货退款流程</span>
            <span>服务中心</span>
            <span>更多特色服务</span>
        </div>
    </div>
    <div class="item">
        <h2 class="title">消费者保证</h2>
        <div>
            <span>保障范围</span>
            <span>退货退款流程</span>
            <span>服务中心</span>
            <span>更多特色服务</span>
        </div>
    </div>
    <div class="item">
        <h2 class="title">消费者保证</h2>
        <div>
            <span>保障范围</span>
            <span>退货退款流程</span>
            <span>服务中心</span>
            <span>更多特色服务</span>
        </div>
    </div>
</div>

</body>
<script src="js/public_function.js"></script>
<script src="js/shopping.js"></script>

</html>
