<%--
  Created by IntelliJ IDEA.
  User: MrBun
  Date: 2021/6/3
  Time: 13:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
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
            <a id="c_name" href="login.jsp">欢迎${customer.name}登录</a>
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
            <a href="shopping.jsp" class="arrow">购物车</a>-
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
          <a href=""></a>
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
      <!-- 导航栏 -->
      <ul class="nav">
        <li class="left-nav">主题市场</li>
        <li class="li">天猫</li>
        <li class="li">聚划算</li>
        <li class="li">|</li>
        <li class="li">天猫商城</li>
        <li class="li">司法拍卖</li>
        <li class="li">淘宝心选</li>
        <li class="li">|</li>
        <li class="li">飞猪旅行</li>
        <li class="li">智能生活</li>
        <li class="li">苏宁易购</li>
      </ul>
      <!-- 内容区域 -->
      <div class="shop" id="">
        <!-- 左侧功能条 -->
        <ul class="left-items" id="left-items">
          <li class="left-items-li">
            <a href="javascript:;">女装</a> /
            <a href="javascript:;">男装</a> /
            <a href="javascript:;">内衣</a>
          </li>
          <li class="left-items-li">
            <a href="javascript:;">鞋靴</a> /
            <a href="javascript:;">箱包</a> /
            <a href="javascript:;">配件</a>

          </li>
          <li class="left-items-li">
            <a href="javascript:;">童装</a> /
            <a href="javascript:;">孕产</a> /
            <a href="javascript:;">玩具</a>

          </li>
          <li class="left-items-li">
            <a href="javascript:;">美妆</a> /
            <a href="javascript:;">彩妆</a> /
            <a href="javascript:;">个护</a>

          </li>
          <li class="left-items-li">
            <a href="javascript:;">手机</a> /
            <a href="javascript:;">数码</a> /
            <a href="javascript:;">企业</a>

          </li>
          <li class="left-items-li">
            <a href="javascript:;">零食</a> /
            <a href="javascript:;">生鲜</a> /
            <a href="javascript:;">茶酒</a>

          </li>
          <li class="left-items-li">
            <a href="javascript:;">厨具</a> /
            <a href="javascript:;">收纳</a> /
            <a href="javascript:;">清洁</a>

          </li>
          <li class="left-items-li">
            <a href="javascript:;">家纺</a> /
            <a href="javascript:;">家饰</a> /
            <a href="javascript:;">鲜花</a>

          </li>
          <li class="left-items-li">
            <a href="javascript:;">汽车</a> /
            <a href="javascript:;">二手车</a> /
            <a href="javascript:;">用品</a>

          </li>
          <li class="left-items-li">
            <a href="javascript:;">房产</a> /
            <a href="javascript:;">装修家具</a> /
            <a href="javascript:;">建材</a>

          </li>
          <li class="left-items-li">
            <a href="javascript:;">大家电</a> /
            <a href="javascript:;">生活电器</a> /
            <a href="javascript:;">图书</a>

          </li>
          <li class="left-items-li">
            <a href="javascript:;">文具</a> /
            <a href="javascript:;">医药</a> /
            <a href="javascript:;">进口</a>

          </li>
          <li class="left-items-li">
            <a href="javascript:;">运动</a> /
            <a href="javascript:;">保健</a> /
            <a href="javascript:;">茶具</a>

          </li>
          <li class="left-items-li">
            <a href="javascript:;">游戏</a> /
            <a href="javascript:;">海外</a> /
            <a href="javascript:;">手表</a>

          </li>
          <div class="left-items-content" id="left-items-content">

          </div>
        </ul>
        <!-- 图片展示区 -->
        <div id="img-box" class="carousel slide" data-ride="carousel">
          <!-- 指示符 -->
          <ul class="carousel-indicators">
            <li data-target="#img-box" data-slide-to="0" class="active"></li>
            <li data-target="#img-box" data-slide-to="1"></li>
            <li data-target="#img-box" data-slide-to="2"></li>
          </ul>

          <!-- 轮播图片 -->
          <div class="carousel-inner">
            <div class="carousel-item active">
              <img src="img/banner_1.jpg">
            </div>
            <div class="carousel-item">
              <img src="img/banner_2.jpg">
            </div>
            <div class="carousel-item">
              <img src="img/banner_3.jpg">
            </div>
          </div>


          <!-- 左右切换按钮 -->
          <a class="carousel-control-prev" href="#img-box" data-slide="prev">
            <span class="carousel-control-prev-icon"></span>
          </a>
          <a class="carousel-control-next" href="#img-box" data-slide="next">
            <span class="carousel-control-next-icon"></span>
          </a>

        </div>



        <!--信息展示区-->
        <div class="tu-right">
          <div class="right-icon">
            <img src="img/item1.jpg" alt="">
          </div>
          <div class="right-btn">
            <a href="javascript:;">登录</a>
            <a href="javascript:;">注册</a>
            <a href="javascript:;">开店</a>
          </div>
          <div class="right-warn">网上有害信息举报专区</div>
          <div class="right-info">
            <ul class="info-top">
              <li><a href="javascript:;">公告</a></li>
              <li><a href="javascript:;">规则</a></li>
              <li><a href="javascript:;">论坛</a></li>
              <li><a href="javascript:;">安全</a></li>
              <li><a href="javascript:;">公益</a></li>
            </ul>
            <ul class="info-bottom">
              <li>公益阿里、腾讯等六家公司同台联合做公益</li>
              <li>淘宝造物节之城市秘密、聚划算88红包省钱卡</li>
            </ul>
          </div>
          <ul class="right-rechage">
            <li><a class="icon icon-1" href="javascript:;"></a>
              <p>充话费</p>
            </li>
            <li><a class="icon icon-2" href="javascript:;"></a>
              <p>旅行</p>
            </li>
            <li><a class="icon icon-3" href="javascript:;"></a>
              <p>车险</p>
            </li>
            <li><a class="icon icon-4" href="javascript:;"></a>
              <p>游戏</p>
            </li>
            <li><a href="javascript:;" class="icon icon-5"></a>
              <p>彩票</p>
            </li>
            <li><a href="javascript:;" class="icon icon-6"></a>
              <p>电影</p>
            </li>
            <li><a href="javascript:;" class="icon icon-7"></a>
              <p>酒店</p>
            </li>
            <li><a href="javascript:;" class="icon icon-8"></a>
              <p>理财</p>
            </li>
            <li><a href="javascript:;" class="icon icon-9"></a>
              <p>零食</p>
            </li>
            <li><a href="javascript:;" class="icon icon-10"></a>
              <p>生鲜</p>
            </li>
            <li><a href="javascript:;" class="icon icon-11"></a>
              <p>茶酒</p>
            </li>
            <li><a href="javascript:;" class="icon icon-12"></a>
              <p>厨具</p>
            </li>

          </ul>
        </div>
      </div>
    </div>
    <div class="body-3">
      <h1 class="title-h1">
        <div class="icon"></div>热卖单品
      </h1>
      <div class="content" id="content">
<%--        <c:foreach items="">--%>


<%--        </c:foreach>--%>
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
  </body>
  <script src="./js/jquery.min.js"></script>
  <script>
    $(function () {
      var doc = document.getElementById("content");
      get_mer(doc);
    });
    function check_detail(ol)
    {
      var source = $(ol).find('img')[0].src;
      var title = $(ol).find('p')[0].textContent;
      var price = $(ol).find('span')[1].textContent;
      window.location.href = "detail.jsp?title=" + title + "&price=" + price + "&source="+source+"";
    }

    function get_mer(doc)
    {
      $.ajax({
        //请求方式
        type : "POST",
        //请求的媒体类型
        contentType: "application/json;charset=UTF-8",
        //请求地址
        url : "MerServlet",
        //数据，json字符串
        data : JSON.stringify(""),
        //请求成功
        success : function(result) {
         var res=JSON.parse(result);
         var html="";
          for(i=0;i<res.length;i++)
          {
              html+="<div class='item' onclick='check_detail(this)'>" +
                      "<img src='"+res[i].dis_img_source+"'>" +
                      "<p class='desc1'>"+res[i].m_dis+"</p>" +
                      "<div>" +
                      "<span style='font-size: 10px;color: orangered;'>￥</span>" +
                      "<span id='price_dis' style='font-size: 20px;font-weight: bold; color: orangered;'>"+res[i].price+"</span>" +
                      "<span id='purchased_num'>"+res[i].purchased_num+"</span>" +
                      "<span>人购买</span>" +
                      "</div>" +
                      "</div>";
            }
            doc.innerHTML+=html;
        },
        //请求失败，包含具体的错误信息
        error : function(e){
          console.log(e.status);
          console.log(e.responseText);
        }
      });
    }
  </script>
</html>
