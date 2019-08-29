<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="orders.aspx.cs" Inherits="Big_homework.orders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" type="text/css" href="Content/Shopcart.css">
    <h1>我的订单</h1>
    <br />
    <div class="col-md-6">
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>产品名</th>
                    <th>数量</th>
                    <th>时间</th>
                </tr>
            </thead>
            <tbody id="table_content">
            </tbody>
        </table>
    </div>
    <div class="clearfloat"></div>

    <script src="Scripts/orders.js"></script>
</asp:Content>
