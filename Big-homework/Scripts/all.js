

function callWebMethod(method, data, func) {
    $.ajax({
        type: "POST",
        url: method,
        data: data,
        contentType: "application/json;charset=utf-8",
        datatype: "json",
        success: func,
    });
}