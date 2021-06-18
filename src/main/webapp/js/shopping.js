var num_count = Number(0);
var num_price = Number($("#total_price").text());
var list="";
$(function () {
    registerClick();
    init();
});
function init()
{
    var count= $("#tb_content").children("tr").length;
    for(let i=0; i<count; i++)
    {
        var context = $("#tb_content").find('tr').eq(i).find('input').eq(0);
        fix(context);
    }
}

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
        list=$("#mer_id").text();
        remove(list);
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
            list+=$(tr).find("label").eq(0).text()+",";
            $(tr).remove();
        }
    });
    remove(list);
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
function remove(val)
{

    var xhr=new XMLHttpRequest();
    xhr.open("post","removeMerchandise");
    xhr.setRequestHeader("content-type","application/x-www-form-urlencoded;charset=utf-8");
    xhr.send("id="+val);

    // contentType: 'text/json,charset=utf-8'
    xhr.onreadystatechange=function () {
        if(xhr.readyState==4 && xhr.status==200)
        {
            list="";
        }
    }
}