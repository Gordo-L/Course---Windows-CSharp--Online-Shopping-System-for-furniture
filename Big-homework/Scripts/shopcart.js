
var total = "";

function gen_shopcart(id, name, price, num, total_price) {
    var shopcart =
        '<tr id="tr_cont_' + id + '">' +
        '    <td>' + id + '</td>' +
        '    <td>' + name + '</td>' +
        '    <td>¥ ' + price + '</td>' +
        '    <td>' + num + '</td>' +
        '    <td>¥ ' + total_price + '</td>' +
        '    <td><input type="button" value="移除1" onclick="button_remove_click(' + id + ')" /></td>' +
        '</tr>';
    return shopcart;
}

$(document).ready(function () {
    var usr = '{"user": ' + $.cookie('user') + '}';
    webCall("shopcart", usr, function (res) {
        for (var i = 0; i < res.d.length; i++) {
            var cart = JSON.parse(res.d[i]);
            $("#table_content").append(gen_shopcart(cart.id, cart.name, cart.price, cart.num, cart.total_price));
        }
    });
    webCall("total_price", usr, function (res) {
        $("#label_total").text("¥ " + res.d);
        //$("#button_submit_1").attr({ 'href': 'Payment.aspx?src=' + res.d });
        total = 'Payment.aspx?src=' + res.d;
    });
});

function button_remove_click(id) {
    webCall("remove_cart", '{"id": ' + id + '}', function () {
        window.location.href = "Shopcart.aspx";
    });
}

$("#button_submit_1").click(function () {
    var usr = '{"user": ' + $.cookie('user') + '}';
    webCall("pay", usr, function (res) {
        if (res) {
            alert("商品已购买，请在下个页面付款");
            window.location.href = total;
        } else {
            alert("有商品支付失败，库存不足");
        }
    });
});

