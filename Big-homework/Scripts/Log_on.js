
$(document).ready(function () {
    $("#button_logon1").click(function () {
        var name = $("#input_email1").val();
        var pass = $("#input_password1").val();
        var para = JSON.stringify({
            "email": name,
            "pass": md5(pass)
        });
        webCall("Logon", para, function (res) {
            alert(res.d);
        });
    });
})
