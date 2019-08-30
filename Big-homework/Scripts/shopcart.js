
var total = "";

function gen_shopcart(id, name, price, num, total_price) {
    var shopcart =
        '<tr id="tr_cont_' + id + '">' +
        '    <td>' + name + '</td>' +
        '    <td>¥ ' + price + '</td>' +
        '    <td>' +
        '        <span class="button_sub_num" onclick="button_remove_click(' + id + ')">-</span>' +
        '        <span class="text_num">' + num + '</span>' +
        '        <span class="button_add_num" onclick="button_add_click(' + id + ')">+</span>' +
        '    </td>' +
        '    <td>¥ ' + total_price + '</td>' +
        //'    <td><input type="button" value="移除1" onclick="button_remove_click(' + id + ')" /></td>' +
        '</tr>';
    return shopcart;
}

$(document).ready(function () {
    shopcart_refresh();
});

function shopcart_refresh() {
    $("#label_refresh").show();
    var usr = '{"user": ' + $.cookie('user') + '}';
    webCall("shopcart", usr, function (res) {
        $("#table_content").empty();
        for (var i = 0; i < res.d.length; i++) {
            var cart = JSON.parse(res.d[i]);
            $("#table_content").append(gen_shopcart(cart.id, cart.name, cart.price, cart.num, cart.total_price));
        }
        $("#label_refresh").hide();
    });
    webCall("total_price", usr, function (res) {
        $("#label_total").text("¥ " + res.d);
        total = 'Payment.aspx?src=' + res.d;
    });
}

function button_remove_click(id) {
    $("#label_refresh").show();
    var txt = $("#tr_cont_" + id).find(".text_num");
    if (parseInt(txt.text()) <= 0) {
        $("#label_refresh").hide();
        return;
    }
    txt.text(parseInt(txt.text()) - 1);
    webCall("remove_cart", '{"id": ' + id + '}', function (res) {
        shopcart_refresh();
    });
}

function button_add_click(id) {
    $("#label_refresh").show();
    var txt = $("#tr_cont_" + id).find(".text_num");
    txt.text(parseInt(txt.text()) + 1);
    webCall("add_cart", '{"id": ' + id + '}', function (res) {
        shopcart_refresh();
    });
}

$("#button_submit_1").click(function () {
    var usr = '{"user": ' + $.cookie('user') + '}';
    webCall("pay", usr, function (res) {
        if (res.d) {
            alert("商品已购买，请在下个页面付款");
            window.location.href = total;
        } else {
            alert("有商品支付失败，库存不足");
        }
    });
});

