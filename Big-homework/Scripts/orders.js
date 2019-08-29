


function gen_orders(id, name, date, num) {
    var orders =
        '<tr id="tr_cont_' + id + '">' +
        '    <td>' + id + '</td>' +
        '    <td>' + name + '</td>' +
        '    <td>' + num + '</td>' +
        '    <td>' + date + '</td>' +
        '</tr>';
    return orders;
}

$(document).ready(function () {
    var usr = '{"user": ' + $.cookie('user') + '}';
    webCall("orders", usr, function (res) {
        for (var i = 0; i < res.d.length; i++) {
            var order = JSON.parse(res.d[i]);
            $("#table_content").append(gen_orders(order.id, order.name, order.date, order.num));
        }
    });
});

