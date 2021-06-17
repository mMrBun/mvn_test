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
                    <a href="login.jsp">亲，请登录</a>
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
                    <a href="shopping.jsp" class="arrow">购物车</a>
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

    <div class="body-1">
        <!-- 搜索框 -->
        <div class="search">
            <div class="search-logo">
                <img src="" alt="">
            </div>
            <div class="search-box">
                <ul class="search-tab">
                    <a href="javascript:;" class="choose1">淘宝</a>
                    <a href="javascript:;">天猫</a>
                    <a href="javascript:;">店铺</a>
                </ul>
                <form class="search-input">
                    <input class="box1" type="text" name="search">
                    <button class="btn" type="submit">搜索</button>
                </form>

                <div class="search-choose">
                    <a href="javascript:;">新款连衣裙</a>
                    <a href="javascript:;">四件套</a>
                    <a href="javascript:;">潮流T恤</a>
                    <a href="javascript:;">时尚女鞋</a>
                    <a href="javascript:;">短裤</a>
                    <a href="javascript:;">半身裙</a>
                    <a href="javascript:;">男士外套</a>
                    <a href="javascript:;">墙纸</a>
                    <a href="javascript:;">新款男鞋</a>
                    <a href="javascript:;">耳机</a>
                </div>
            </div>
            <div class="search-code">
                <a href="javascript:;">
                    <img src="img/downloda.jpg" alt="">
                </a>
            </div>
        </div>
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
                                <input class="amount-input" name="amount" type="text" value="1">
                                <a href="javascript:calculateUpdate('jia')" style="float: none;">+</a>
                            </label>
                        </form>
                    </div>
                </div>
                <div class="dis dis-4">
                    <input class="btn-buy" type="button" value="立即购买">
                    <input class="btn-add" type="button" value="加入购物车">
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
<script>
    $(function () {
        var url = decodeURI(location.href);
        var val = parseURL(url);
        $("#img_src").attr("src",val.source);
        $("#commodity_dis").text(val.title);
        $("#price_dis").text(val.price);
    });
    $(".btn-add").click(function () {
        messagePop("加入购物车成功");
    });

    /********************************************************/
    //商品数量计算函数
    function calculateUpdate(kind) {
        var tn = document.ticketNumber;
        var c = tn.amount.value;
        if (kind == "jia") {
            c++;
        }
        else if (kind == "jian") {
            if (c > 1) c--;
        }
        tn.amount.value = c;
    }
    /**************************************************************/
    function parseURL(url) {
        var url = url.split("?")[1];
        if (url != null) {
            var para = url.split("&");
            var len = para.length;
            var res = {};
            var arr = [];
            for (var i = 0; i < len; i++) {
                arr = para[i].split("=");
                res[arr[0]] = arr[1];
            }
        }

        return res;
    }
    /**************************************************************/
    //窗口提示
    function messagePop(value) {
        var str = '';
        str += '<div class="pop" style="display:none"><div class="pop-val">' + value + '</div></div>';

        $('body').append(str);
        $('.pop').fadeIn(200);

        $('.pop').css({
            'position': 'fixed',
            'width': '100px',
            'top': '0',
            'bottom': '0',
            'z-index': '1000'
        })
        $('.pop-val').css({
            'position': 'fixed',
            'width': '300px',
            'top': '40%',
            'background': 'rgba(0,0,0,.5)',
            'padding': '.2rem',
            'text-align': 'center',
            'left': '0',
            'right': '0',
            'margin-left': 'auto',
            'margin-right': 'auto',
            'border-radius': '5px',
            'color': '#fff',
            'font-size': '25px'
        })

        setTimeout(closeDiv2, 2000);
        setTimeout(closeDiv3, 2300);
        function closeDiv2() {
            $('.pop').fadeOut(300);
        };
        function closeDiv3() {
            $('.pop').remove();
        };
    }
    /**************************************************************/
</script>
</html>
