var m_id;
var name;
var m_count;
$(function () {
    var url = decodeURI(location.href);
    var val = parseURL(url);
    $("#img_src").attr("src",val.source);
    $("#commodity_dis").text(val.title);
    $("#price_dis").text(val.price);
    m_id=val.id;
    name=$("#c_name").text().substring(2,$("#c_name").text().length-2);

});

$(".btn-add").click(function () {
    m_count=$("#mer_count").val();
    var xhr=new XMLHttpRequest();
    xhr.open("post","addCart");
    xhr.setRequestHeader("content-type","application/x-www-form-urlencoded");
    xhr.send("name="+name+"&m_id="+m_id+"&m_count="+m_count);
    xhr.onreadystatechange=function () {
        if(xhr.readyState==4 && xhr.status==200)
        {
            messagePop("加入购物车成功");
        }
    }
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