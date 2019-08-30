
$("#bt1").click(function () {
    var user = $.cookie("user");
    var para = {
        "user": user,
        "ID": 3
    };
    webCall("add_to_shop_cart", JSON.stringify(para), function () {
        alert("加入购物车成功");
    });
});
$("#bt2").click(function () {
    var user = $.cookie("user");
    var para = {
        "user": user,
        "ID": 4
    };
    webCall("add_to_shop_cart", JSON.stringify(para), function () {
        alert("加入购物车成功");
    });
});
$("#bt3").click(function () {
    var user = $.cookie("user");
    var para = {
        "user": user,
        "ID": 5
    };
    webCall("add_to_shop_cart", JSON.stringify(para), function () {
        alert("加入购物车成功");
    });
});
$("#bt4").click(function () {
    var user = $.cookie("user");
    var para = {
        "user": user,
        "ID": 6
    };
    webCall("add_to_shop_cart", JSON.stringify(para), function () {
        alert("加入购物车成功");
    });
});
$("#bt5").click(function () {
    var user = $.cookie("user");
    var para = {
        "user": user,
        "ID": 7
    };
    webCall("add_to_shop_cart", JSON.stringify(para), function () {
        alert("加入购物车成功");
    });
});
$("#bt6").click(function () {
    var user = $.cookie("user");
    var para = {
        "user": user,
        "ID": 8
    };
    webCall("add_to_shop_cart", JSON.stringify(para), function () {
        alert("加入购物车成功");
    });
});
$("#bt7").click(function () {
    var user = $.cookie("user");
    var para = {
        "user": user,
        "ID": 9
    };
    webCall("add_to_shop_cart", JSON.stringify(para), function () {
        alert("加入购物车成功");
    });
});
