var doc = document.getElementById("content");
var context="";
$(function () {
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
                    "<span style='display: none'>"+res[i].id+"</span>"+
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

});
$("#search_btn").click(function (){
    doc.innerHTML="";
     context=$("#search").val();
    get_mer(doc,context);
});
function check_detail(ol)
{
   if(check_login()){
       var source = $(ol).find('img')[0].src;
       var title = $(ol).find('p')[0].textContent;
       var m_id = $(ol).find('span')[0].textContent;
       var price = $(ol).find('span')[2].textContent;
       window.location.href = "detail.jsp?title=" + title + "&price=" + price + "&source="+source+"&id="+m_id+"";
   }

}

function get_mer(doc,val)
{
    var xhr=new XMLHttpRequest();
    xhr.open("post","serchMerchandise");
    xhr.setRequestHeader("content-type","application/x-www-form-urlencoded;charset=utf-8");
    xhr.send("context="+val);
    xhr.onreadystatechange=function () {
        if(xhr.readyState==4 && xhr.status==200)
        {
            var obj=xhr.responseText;
            var res=JSON.parse(obj);
            var html="";
            for(i=0;i<res.length;i++)
            {
                html+="<div class='item' onclick='check_detail(this)'>" +
                    "<img src='"+res[i].dis_img_source+"'>" +
                    "<span style='display: none'>"+res[i].id+"</span>"+
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
        }
    }
}