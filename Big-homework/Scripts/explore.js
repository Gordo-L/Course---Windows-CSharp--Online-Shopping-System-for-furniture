
function gen_explore(name, id, price, count, detail) {
    var explore =
        '<div class="panel panel-default ">' +
        '    <div class="panel-body">' + name + '</div>' +
        '    <div class="panel-footer explore_content">' +
        '        <img class="image_explore" src="Image?src=' + id + '" />' +
        '        <div class="panel_right">' +
        '            <p class="label_price">￥' + price + '</p>' +
        '            <p class="label_count">库存' + count + '件</p>' +
        '            <p class="label_detail">' + detail + '</p>' +
        '        </div>' +
        '        <input type="button" class="btn button_buy" value="加入购物车" onclick="add_to_chat(' + id + ')" />' + 
        '    </div>' +
        '</div>';
    return explore;
}

$(document).ready(function () {
    webCall("explore", "{}", function (res) {
        for (var i = 0; i < res.d.length; i++) {
            var info = JSON.parse(res.d[i]);
            $("#explore_area").append(gen_explore(info.name, info.id, info.price, info.count, info.detail));
        }
    });
});

function add_to_chat(id) {
    var user = $.cookie("user");
    var para = {
        "user": user,
        "ID": id
    };
    webCall("add_to_shop_cart", JSON.stringify(para), function () {
        alert("加入购物车成功");
    });
}
