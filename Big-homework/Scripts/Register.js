
$(document).keyup(function (event) {
    if (event.keyCode === 13) {
        $("#button_register").trigger("click");
    }
});

$("#input_password2").blur(function () {
    registerTestPass();
});

$("#input_confirm2").blur(function () {
    registerTestConfirmPass();
});



$("#button_register").click(function () {
    if (!registerTestName() || !registerTestPass() || !registerTestConfirmPass()) {
        return;
    }
    var para = {
        "userName": $("#input_email2").val(),
        "encPass": md5($("#input_password2").val()).toUpperCase(),
        "isMerchant": $("#button_register").prop("checked")
    };
    webCall("RegisterUser", JSON.stringify(para), function (res) {
        if (res.d) {
            window.location.href = "LoginPage.aspx?source=1";
        } else {
            $("#RegisterOccupiedError").show();
        }
    });
});

function registerTestPass() {
    var pass = $("#input_password2").val();
    var re = /^.{6,100}$/;
    var err = $("#RegisterPasswordError");
    err.hide();
    if (!re.test(pass)) {
        err.show();
        return false;
    }
    return true;
}

function registerTestConfirmPass() {
    var pass = $("#input_password2").val();
    var cPass = $("#input_confirm2").val();
    var err = $("#RegisterConfirmError");
    err.hide();
    if (pass !== cPass) {
        err.show();
        return false;
    }
    return true;
}
