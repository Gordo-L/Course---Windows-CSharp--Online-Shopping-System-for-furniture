

function webCall(method, data, func) {
    $.ajax({
        type: "POST",
        url: "service.asmx/" + method,
        data: data,
        contentType: "application/json;charset=utf-8",
        datatype: "json",
        success: func,
    });
}