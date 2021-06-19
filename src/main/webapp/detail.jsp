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
    <title>Title</title>
    <head>
        <meta charset="UTF-8">

        <title>淘宝网-淘！我喜欢</title>
        <link rel="stylesheet" href="./css/detail.css">
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
   
    <div class="body-1">    

        <div class="detail">

            <div class="detail_pic">
                <img id="img_src" src="" alt="">
            </div>
            <div class="detail_dis">
                <div class="dis dis-1">
                    <p id="commodity_dis">烫烫烫烫烫烫烫烫烫烫烫烫烫烫烫烫烫烫烫烫烫烫烫烫烫烫烫烫烫烫烫烫烫烫烫烫烫烫</p>
                </div>
                <div class="dis dis-2">
                    <span>价格</span>
                    <span style="font-size: 20px;color: orangered;">￥</span>
                    <span id="price_dis" style="font-size: 20px;color: orangered;">15.00</span>
                </div>
                <div class="dis dis-3">
                    <div class="ticket" style="padding-top: 17px;">
                        <p style="float: left; font-size: initial;">数量 </p>
                        <form name="ticketNumber">
                            <label>
                                <a href="javascript:calculateUpdate('jian')">-</a>
                                <input class="amount-input" id="mer_count" name="amount" type="text" value="1">
                                <a href="javascript:calculateUpdate('jia')" style="float: none;">+</a>
                            </label>
                        </form>
                    </div>
                </div>
                <div class="dis dis-4">
                    <input class="btn-buy" type="button" value="立即购买">
                    <input class="btn-add"  type="button" value="加入购物车">
                </div>
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
    </div>
</div>
</body>
<script src="js/jquery.min.js"></script>
<script src="js/public_function.js"></script>
<script src="js/detail.js"></script>
</html>
