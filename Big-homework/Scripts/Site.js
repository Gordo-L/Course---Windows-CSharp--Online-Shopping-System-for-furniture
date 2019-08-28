
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
    setTimeout(function () {
        $("#status p").text("状态栏：加载成功");
    }, 1500);
    
})
