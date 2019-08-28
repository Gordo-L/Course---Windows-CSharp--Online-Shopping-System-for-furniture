<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="admin_user.aspx.cs" Inherits="Big_homework.admin_user" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

 <link rel="stylesheet" type="text/css" href="Content/admin_user.css">

     <h1>管理网站用户</h1>
    <br />
    <div class="col-md-6">
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>用户类别</th>
                    <th>用户邮箱</th>
                    <th>移除</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>买家</td>
                    <td>1@zju.edu.cn</td>
                    <td><input type="checkbox"/></td>                </tr>
                <tr>
                    <td>2</td>
                    <td>卖家</td>
                    <td>12@zju.edu.cn</td>
                    <td><input type="checkbox"/></td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>管理员</td>
                    <td>123@zju.edu.cn</td>
                    <td><input type="checkbox"/></td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>买家</td>
                    <td>1234@zju.edu.cn</td>
                    <td><input type="checkbox"/></td>
                </tr>
            </tbody>
        </table>
    </div>
    <div class="clearfloat"></div>
    <a href="#" class="btn btn-primary btn-lg active btn-sm" role="button" aria-pressed="true">确认</a>




</asp:Content>
