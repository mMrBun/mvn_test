<%--
  Created by IntelliJ IDEA.
  User: MrBun
  Date: 2021/6/3
  Time: 14:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/sign_in.css">
</head>

<body>
<div class="header">
    <div class="container">
        <ul class="nav">
            <img src="img/title.png" style="width:74px ;height:24px ;" alt="">
            <p style="font-size: 25px;font-weight: bold;color: black;">用户注册</p>
        </ul>

    </div>
</div>
<%--<div class="content">
    <div class="login_box">
        <div class="login_info">
            <label for="">手机号码</label>
            <select name="" id="tel_select">
                <option value="中国大陆+86">中国大陆+86</option>
                <option value="中国台湾+886">中国大陆+86</option>
                <option value="中国香港+852">中国大陆+86</option>
            </select>
            <input id="tel" type="text" placeholder="会员名/邮箱/手机号">
        </div>

        <div class="login_info">
            <label for="">验证码</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="text" style="width: 190px;border-right: none;" placeholder="请输入验证码">
            <div class="code">
                <a href="">获取验证码</a>
            </div>

        </div>
        <div class="login_submit">
            <input id="btn_signin" type="button" value="注册">
        </div>
        <div class="login_problem">
            <input type="checkbox" name="" id="">
            <span>
                    已阅读并同意以下协议淘宝平台服务协议、隐私权政策、
                </span>
            <p>
                法律声明支付宝及客户端服务协议
            </p>
        </div>
    </div>

</div>--%>
<div class="content">
    <div class="login_box">
        <div class="login_name">
            <label for="name">账号：</label>
            <input class="input" type="text" name="name" id="name" value="" />
        </div>
        <div class="login_pwd">
            <label for="pawd">密码：</label>
            <input class="input" type="password" name="pawd" id="pawd" value="" />
        </div>
        <div class="login_nickName">
            <label for="nickName">昵称：</label>
            <input class="input" type="text" name="nickName" id="nickName" value="" />
        </div>
        <div class="login_submit">
            <input id="btn_signin" type="button" value="注册">
        </div>
        <div class="login_problem">
            <input type="checkbox" name="" id="">
            <span>
						已阅读并同意以下协议淘宝平台服务协议、隐私权政策、
					</span>
            <p>
                法律声明支付宝及客户端服务协议
            </p>
        </div>
    </div>
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
                                                                  rel="noopener noreferrer">联系客服</a></span><span><a
                href="http://open.taobao.com"
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


    </div>

    <!-- #footer END -->
</div>
</body>
<script src="js/jquery.min.js"></script>
<script src="https://cdn.bootcss.com/FileSaver.js/1.3.8/FileSaver.js"></script>
<script>
    $("#btn_signin").click(function () {
        if (checkEmpty()) {
            exits();
        }
    });
    /**************************************************************/
    //手机号合法性验证
    function checkEmpty() {
        var pattern = /^1[34578]\d{9}$/;
        if ($("#tel").val() == "") {
            alert("请输入手机号");
            return;
        } else if (!pattern.test($("#tel").val())) {
            alert("手机格式不正确");
            return;
        }
        return true;
    }

    /**************************************************************/
    /**************************************************************/
    //判断当前注册的用户是否已经存在，如果存在注册失败，如果不存在调用FileSaver.js脚本进行账户的存储
    function exits() {
        var flag = true;
        $.ajax({
            type: "GET",
            url: "./save.json",
            dataType: "json",
            success: function (data) {
                var val = data["user"];
                for (var i = 0; i < val.length; i++) {
                    var name = val[i]["name"];
                    if (name == $("#tel").val()) {
                        alert("该用户已被注册");
                        flag = false;
                        return;
                    }
                }
                if (flag) {
                    let data = {
                        name: $("#tel").val(),
                    }
                    var content = JSON.stringify(data);
                    var blob = new Blob([content], {type: "text/plain;charset=utf-8"});
                    saveAs(blob, "save.json");
                    window.location.href = "index.jsp";
                }

            }
        });
        /**************************************************************/

    }


</script>
</html>
