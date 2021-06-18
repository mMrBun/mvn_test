$("#btn_signin").click(function () {
    if (checkEmpty()) {
        exits();
    }
});
/**************************************************************/
//手机号合法性验证
function checkEmpty() {
    var pattern = /^1[34578]\d{9}$/;
    if ($("#name").val() == "") {
        alert("请输入手机号");
        return;
    } else if (!pattern.test($("#name").val())) {
        alert("手机格式不正确");
        return;
    }
    return true;
}

/**************************************************************/
/**************************************************************/
//判断当前注册的用户是否已经存在，如果存在注册失败，如果不存在调用FileSaver.js脚本进行账户的存储
function exits() {
    $("#sign_in").submit();

}
$("#name").click(function ()
{
    $("#name").parent().find("span").eq(0).text("");
});