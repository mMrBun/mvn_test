$("#load_cart").click(function (){
    if(check_login())
    {
        var name=$("#c_name").text().substring(2,$("#c_name").text().length-2);
        var xhr=new XMLHttpRequest();
        xhr.open("post","loadCart",false);
        xhr.setRequestHeader("content-type","application/x-www-form-urlencoded");
        xhr.send("name="+name);
        xhr.onreadystatechange=function () {
            if(xhr.readyState==4 && xhr.status==200)
            {

            }
        }
    }

});
$("#c_name").click(function (){
    check_login();
})
function check_login()
{
    var content=$("#c_name").text().length;
    if(content<=4)
    {
        window.location.href="http://localhost:8080/shopping/login.jsp";
        return false;
    }
    else{
        return true;
    }

}