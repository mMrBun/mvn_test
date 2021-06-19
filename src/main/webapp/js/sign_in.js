var flag=false;
var isfirst=true;
$("#btn_signin").click(function () {
    if (checkEmpty()) {
        exits();
    }
});
/**************************************************************/
//手机号合法性验证
function checkEmpty() {
    var pattern = /^1[34578]\d{9}$/;
    if ($("#in_name").val() == "") {
        alert("请输入手机号");
        return;
    } else if (!pattern.test($("#in_name").val())) {
        alert("手机格式不正确");
        return;
    }
    return true;
}


$("#in_name").blur(function (){
    if(isfirst)
    {
        isfirst=false;
    }
    else{
        var name=$("#in_name").val();
        $.ajax({
            url: "check_exits",
            data: {name: name},
            type: "POST",
            dataType: "json",
            success: function(data) {
                if(data>0)
                {
                    flag=false;
                    $("#in_name").parent().find("span").eq(0).css("color","red")
                    $("#in_name").parent().find("span").eq(0).text("用户已使用");
                }
                else
                {
                    flag=true;
                    $("#in_name").parent().find("span").eq(0).css("color","green")
                    $("#in_name").parent().find("span").eq(0).text("用户名可用");
                }

            }
        });
    }
});

/**************************************************************/
/**************************************************************/
//判断当前注册的用户是否已经存在，如果存在注册失败，如果不存在调用FileSaver.js脚本进行账户的存储
function exits() {

    if($("#agree").get(0).checked == false)
    {
        alert("请同意协议");
        return;
    }
    else
    {
        if(flag)
        {
            $("#sign_in").submit();
        }
    }


}

