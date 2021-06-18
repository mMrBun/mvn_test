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
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/login.css">
</head>

<body>
<div class="header">
    <div class="container">
        <ul class="nav">
            <img src="img/logo.jpg" style="width:74px ;height: 74px ;" alt="">
        </ul>
        <ul class="nav">
            <img src="img/手机.png" style="width:20px ;height:20px;margin-top: 10px;" alt="">

            <span>登陆界面改进建议</span>
        </ul>
    </div>
</div>
<div class="content">
    <form action="login" method="post" id="loginForm">
        <div class="login_box">
            <div class="login_type">
                <a href="javascript:;">密码登录</a>
                <a href="javascript:;">手机登录</a>
            </div>
            <div class="login_info">
                <img src="img/user.png" alt="">
                <input id="in_name" name="in_name" type="text" placeholder="会员名/邮箱/手机号">
            </div>
            <div class="login_info">
                <img src="img/lock.png" alt="">
                <input id="in_pwd" name="in_pwd" type="password" placeholder="">
            </div>
            <div class="login_submit">
                <input id="btn_login" type="button" value="登录">
            </div>
            <div class="login_problem">
                <a href="">忘记密码</a>
                <a href="">忘记用户名</a>
                <a href="sign_in.jsp">免费注册</a>
            </div>
        </div>
    </form>

</div>
<div class="footer">
    <div class="footer-hd">
        <p data-spm-anchor-id="a2107.1.0.i4.742511d9dVgDBN">
            <a href="http://page.1688.com/shtml/about/ali_group1.shtml">阿里巴巴集团</a>
            <b>|</b>
            <a href="http://www.alibaba.com">阿里巴巴国际站</a>
            <b>|</b>
            <a href="http://www.1688.com">阿里巴巴中国站</a>
            <b>|</b>
            <a href="http://www.aliexpress.com">全球速卖通</a>
            <b>|</b>
            <a href="http://www.taobao.com">淘宝网</a>
            <b>|</b>
            <a href="http://www.tmall.com">天猫</a>
            <b>|</b>
            <a href="http://ju.taobao.com">聚划算</a>
            <b>|</b>
            <a href="http://www.etao.com">一淘</a>
            <b>|</b>
            <a href="http://www.alimama.com">阿里妈妈</a>
            <b>|</b>
            <a href="https://www.fliggy.com">飞猪</a>
            <b>|</b>
            <a href="http://www.xiami.com">虾米</a>
            <b>|</b>
            <a href="http://www.aliyun.com">阿里云计算</a>
            <b>|</b>
            <a href="http://www.yunos.com">云OS</a>
            <b>|</b>
            <a href="http://www.net.cn">万网</a>
            <b>|</b>
            <a href="http://www.alipay.com">支付宝</a>
            <b>|</b>
            <a href="http://www.laiwang.com/">来往</a>
        </p>
    </div>
    <div class="footer-bd">
        <p>
                <span><a href="https://www.taobao.com/tbhome/page/about/home"
                         rel="noopener noreferrer">关于淘宝</a></span><span><a
                href="https://www.taobao.com/tbhome/page/about/partner?spm=a21bo.9614792.102.5.ed410c5siU20Y"
                rel="noopener noreferrer">合作伙伴</a></span><span><a href="http://pro.taobao.com"
                                                                  rel="noopener noreferrer">营销中心</a></span><span><a
                href="http://jubao.alibaba.com/internet/readme.htm?site=taobao"
                rel="noopener noreferrer">廉正举报</a></span><span><a href="https://consumerservice.taobao.com/"
                                                                  rel="noopener noreferrer">联系客服</a></span><span><a href="http://open.taobao.com"
                                                                                                                    rel="noopener noreferrer">开放平台</a></span><span><a href="http://www.taobao.com/about/join.php"
                                                                                                                                                                      rel="noopener noreferrer">诚征英才</a></span><span><a
                href="http://consumerservice.taobao.com/contact-us"
                rel="noopener noreferrer">联系我们</a></span><span><a
                href="https://www.taobao.com/tbhome/page/sitemap"
                rel="noopener noreferrer">网站地图</a></span><span><a
                href="https://terms.alicdn.com/legal-agreement/terms/suit_bu1_taobao/suit_bu1_taobao201703241622_61002.html"
                rel="noopener noreferrer">隐私权政策</a></span><span><a
                href="https://terms.alicdn.com/legal-agreement/terms/suit_bu1_taobao/suit_bu1_taobao201811121436_80276.html"
                rel="noopener noreferrer">法律声明</a></span><span><a href="http://ipp.alibabagroup.com/"
                                                                  rel="noopener noreferrer">知识产权</a></span>
            <b>|</b> <em>© 2003-现在 Taobao.com 版权所有</em>
        </p>
        <p><span><a href="http://www.beian.miit.gov.cn"
                    rel="noopener noreferrer">增值电信业务经营许可证：浙B2-20080224</a></span><b>|</b><span><a
                href="http://www.beian.miit.gov.cn" rel="noopener noreferrer">增值电信业务经营许可证（跨地区）：
                        B2-20150210</a></span><b>|</b><span><a
                href="http://sq.ccm.gov.cn/ccnt/sczr/service/business/emark/toDetail/2E7819FC84674D5980464916C24B7E3E"
                rel="noopener noreferrer">浙网文（2019）1033-086号</a></span><b>|</b><span>浙江省网络食品销售第三方平台提供者备案：浙网食A33010001</span>
        </p>
        <p><span>互联网药品信息服务资格证书（浙）-经营性-2018-0010</span><b>|</b><span>短消息类服务接入代码使用证书：号【2016】00154-A01</span><b>|</b><span>信息网络传播视听许可证：1109364号</span><b>|</b><span>出版物网络交易平台服务经营备案号：新出发浙备字第002号</span>
        </p>
        <p><span>
                    <a target="_blank"
                       href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=33010002000078"
                       rel="noopener noreferrer">
                        <span class="tb-footer-mod"
                              style="background-position:-861px 0px; width:20px; height: 20px; "></span>
                        浙公网安备 33010002000078号
                    </a></span><b>|</b><span>广播电视节目制作经营许可证（浙）字第01012号</span><b>|</b><span>市场名称登记证：工商网市字3301004120号</span><b>|</b><span>医疗器械网络交易服务第三方平台备案：（浙）网械平台备字[2018]第00004号</span>
        </p>
    </div>

    <!-- #footer END -->
</div>
</body>
<script src="./js/jquery.min.js"></script>
<script src="./js/login.js"></script>

</html>
