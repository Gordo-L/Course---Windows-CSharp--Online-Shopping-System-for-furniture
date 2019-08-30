
function gen_products(id, name, price, count) {
    var products =
        '<tr id="tr_cont_' + id + '">' +
        '    <td>' + name + '</td>' +
        '    <td>' +
        '        <input type="text" class="input_price" value="' + price + '" />' + 
        '    </td>' +
        '    <td>' + 
        '        <input type="text" class="input_count" value="' + count + '" />' + 
        '    </td>' +
        '    <td><input type="button" value="修改" onclick="button_modify_click(' + id + ')" /></td>' +
        '    <td><input type="button" value="删除" onclick="button_del_click(' + id + ')" /></td>' +
        '</tr>';
    return products;
}

$(document).ready(function () {
    var id = $.cookie('user');
    if (id === "3") id = "0";
    var usr = '{"user": ' + id + '}';
    webCall("products", usr, function (res) {
        for (var i = 0; i < res.d.length; i++) {
            var product = JSON.parse(res.d[i]);
            $("#table_content").append(gen_products(product.id, product.name, product.price, product.count));
        }
    });
});

function button_modify_click(id) {
    if (id < 10) {
        alert("暂不支持修改示例商品");
        return;
    }
    var cont = $("#tr_cont_" + id);
    var price = cont.find(".input_price");
    var count = cont.find(".input_count");
    webCall("modify_product", JSON.stringify({ "id": id, "price": price.val(), "count": count.val() }), function (res) {
        if (res.d) {
            alert("修改成功");
        } else {
            alert("修改失败，可能格式不正确");
        }
    });
}

function button_del_click(id) {
    if (id < 10) {
        alert("暂不支持删除示例商品");
        return;
    }
    var prod = $("#tr_cont_" + id).remove();
    webCall("remove_product", JSON.stringify({ "id": id }), function () {
    });
}

