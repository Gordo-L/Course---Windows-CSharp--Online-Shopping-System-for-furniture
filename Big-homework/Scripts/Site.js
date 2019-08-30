
var logged = 0;

$("#dropdownbutton_exit").click(function () {
    $.removeCookie('user');
})

$("#upkeynote").hide();

$("#upkey").mouseover(function () {
    $("#upkeynote").show();
})
$("#upkey").mouseleave(function () {
    $("#upkeynote").hide();
})

$(document).ready(function () {
    $(".anyone").hide();
    $(".merchant").hide();
    $(".admin").hide();
    var cookie = $.cookie("user");
    if (cookie === undefined || cookie === "") logged = 0;
    else {
        if (cookie === "3") logged = 3;
        else if ($.cookie("type") === "1") logged = 2;
        else logged = 1;
    }
    if (logged !== 0) {
        $(".out_log").hide();
        $(".anyone").show();
        if (logged === 2) {
            $(".merchant").show();
        }
        if (logged === 3) {
            $(".merchant").show();
            $(".admin").show();
        }
    }
    setTimeout(function () {
        $("#status p").text("状态栏：加载成功");
    }, 1500);
    
})

$(document).keydown(function (e) {
    if (!e.altKey) return;
    if (e.keyCode === 76) window.location.href="Log_on.aspx"//L
    if (e.keyCode === 82) window.location.href="Register.aspx"//R
    if (e.keyCode === 85) window.location.href="upload_goods.aspx"//U
    if (e.keyCode === 68) window.location.href="orders.aspx"//D
    if (e.keyCode === 80) window.location.href="Products.aspx"//P
    if (e.keyCode === 71) window.location.href="Users.aspx"//G
})
