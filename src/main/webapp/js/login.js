$("#btn_login").click(function () {
    checkEmpty();
    $("#loginForm").submit();
});
/**************************************************************/
//登录合法性验证，
function checkEmpty() {
    var flag = false;
    if ($("#in_name").val() == "" || $("#in_pwd").val() == "") {
        alert("用户名或密码不能为空");
    }
}
/**************************************************************/