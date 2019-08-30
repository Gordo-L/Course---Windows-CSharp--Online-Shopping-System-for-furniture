

function gen_users(id, name, type) {
    var users =
        '<tr id="tr_cont_' + id + '">' +
        '    <td>' + name + '</td>' +
        '    <td>' + type + '</td>' +
        '    <td><input type="button" value="删除" onclick="button_delete_click(' + id + ')" /></td>' +
        '</tr>';
    return users;
}

$(document).ready(function () {
    var usr = '{"user": ' + $.cookie('user') + '}';
    webCall("users", usr, function (res) {
        for (var i = 0; i < res.d.length; i++) {
            var user = JSON.parse(res.d[i]);
            $("#table_content").append(gen_users(user.id, user.email, user.type));
        }
    });
});

function button_delete_click(id) {
    webCall("remove_user", JSON.stringify({ "id": id }), function () {
        window.location.href = "Users.aspx";
    });
}

