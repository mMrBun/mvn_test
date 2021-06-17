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
    </div>
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
        <tbody>

        <tr>
            <td>
                <input type='checkbox' name='c_check' class='c_check'>
            </td>
            <td>
                <img src="img/body1.jpg" style="width: 70px;height: 70px;" alt="">
                <span>这是一只猫</span>
            </td>
            <td>
                <span>￥</span>
                <span>15.00</span>
            </td>
            <td>
                <div class="ticket" style="padding-top: 17px;">
                    <p style="float: left; font-size: initial;">数量 </p>
                    <form name="ticketNumber">
                        <label>
                            <a href="javascript:; " onclick="aClick(this,'jian')">-</a>
                            <input class="amount-input" name="amount" type="text" value="1">
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

        <tr>
            <td>
                <input type='checkbox' name='c_check' class='c_check'>
            </td>
            <td>
                <img src="img/body1.jpg" style="width: 70px;height: 70px;" alt="">
                <span>这是一只猫</span>
            </td>
            <td>
                <span>￥</span>
                <span>15.00</span>
            </td>
            <td>
                <div class="ticket" style="padding-top: 17px;">
                    <p style="float: left; font-size: initial;">数量 </p>
                    <form name="ticketNumber">
                        <label>
                            <a href="javascript:; " onclick="aClick(this,'jian')">-</a>
                            <input class="amount-input" name="amount" type="text" value="1">
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

        <tr>
            <td>
                <input type='checkbox' name='c_check' class='c_check'>
            </td>
            <td>
                <img src="img/body1.jpg" style="width: 70px;height: 70px;" alt="">
                <span>这是一只猫</span>
            </td>
            <td>
                <span>￥</span>
                <span>15.00</span>
            </td>
            <td>
                <div class="ticket" style="padding-top: 17px;">
                    <p style="float: left; font-size: initial;">数量 </p>
                    <form name="ticketNumber">
                        <label>
                            <a href="javascript:; " onclick="aClick(this,'jian')">-</a>
                            <input class="amount-input" name="amount" type="text" value="1">
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
<script>
    var num_count = Number(0);
    var num_price = Number($("#total_price").text());
    $(function () {
        registerClick();
    });
    /**************************************************************/
    //单个商品价格计算函数
    function fix(doc) {
        var count = doc.parent().parent().find('input').eq(1).val();
        var price = doc.parent().parent().find('span').eq(2).text();
        var total = doc.parent().parent().find('span').eq(4);
        total.text(parseFloat(count * price).toFixed(2));
        calculate_total_price(doc);
    }
    /**************************************************************/

    /**************************************************************/
    //单个商品删除事件。
    function registerClick() {
        $("#test tbody tr td a").off("click").on("click", function () {
            var text = $(this).text();
            switch (text) {
                case "删除":
                    deleteRow($(this));
                    break;
            }
        });
    }

    function deleteRow(t) {
        if (confirm("是否删除行?")) {
            var tr = $(t).parent().parent();
            $(tr).remove();
        }
        calculate_total_price($(".c_check"));
    }
    /**************************************************************/
    /**************************************************************/
    //全选和全部选函数，获取全选按钮的table父级元素，遍历所有checkbox类型的input子集，使所有的子集与全选按钮的选中状态一致
    $("#h_check").click(function () {
        var flag = $("#h_check").get(0).checked;
        if (flag) {
            $(".c_check").prop("checked", true);
        }
        else {
            $(".c_check").prop("checked", false);
        }
        calculate_total_price($(".c_check"));
    });
    /**************************************************************/
    /**************************************************************/
    //删除所有函数，获取table父级元素的所有tr子集，remove掉
    $("#delete").click(function () {
        deleteAll();
        calculate_total_price($(".c_check"));
    });
    function deleteAll() {
        $('input[name="c_check"]:checked').each(function () {
            if ($(this).val() == "on") {
                var tr = $(this).parent().parent();
                $(tr).remove();
            }
        });
    }
    /**************************************************************/
    /**************************************************************/
    //总价计算函数，当checkbox选中状态发生改变的时候进行总价计算函数调用
    $("input[name='c_check']").on("change", function () {
        var flag = $(this).get(0).checked;
        calculate_total_price($(this), flag);
    });
    //总价计算函数，获取当前table父级标签遍历所有checkbox类型的input标签，判断当前input标签是否选中，选中就读取当前商品总金额并加到总价里
    function calculate_total_price(doc, flag) {
        var father = doc.parent().parent().parent().find('input');
        father.each(function (i, val) {
            if ($(this).attr("name") == "c_check") {
                if ($(this).get(0).checked == true) {
                    num_price += Number($(this).parent().parent().find('span').eq(4).text());
                }
            }
        });
        $("#total_price").text(parseFloat(num_price).toFixed(2));
        num_price = Number(0);
    }
    /**************************************************************/
    /**************************************************************/
    //购物车页面的商品数量改变事件，当商品数量发生改变的时候触发，调用计算总价函数进行总价更改
    function aClick(va, el) {
        var name = $(va).parent().find('input').eq(0);
        var c = name.val();
        var check_p = $(va).parent().parent().parent().parent().parent().find('input').eq(0);

        if (el == 'jia') {
            c++
        }
        else {
            if (c > 1) {
                c--;
            }
        }
        name.val(c);
        fix(check_p);
    }
    /**************************************************************/
</script>
</html>
