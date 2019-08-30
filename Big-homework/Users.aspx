<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="Big_homework.Users" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" type="text/css" href="Content/Shopcart.css">
    <h1>用户管理</h1>
    <br />
    <div class="col-md-6">
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>用户名</th>
                    <th>身份</th>
                    <th>操作</th>
                </tr>
            </thead>
            <tbody id="table_content">
            </tbody>
        </table>
    </div>
    <div class="clearfloat"></div>

    <script src="Scripts/users.js"></script>
</asp:Content>
