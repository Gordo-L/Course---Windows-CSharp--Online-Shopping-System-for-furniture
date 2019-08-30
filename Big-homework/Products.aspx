<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Big_homework.Products" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" type="text/css" href="Content/Shopcart.css">
    <h1>商品管理</h1>
    <br />
    <div class="col-md-6">
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>商品</th>
                    <th>价格</th>
                    <th>库存</th>
                    <th>修改</th>
                    <th>删除</th>
                </tr>
            </thead>
            <tbody id="table_content">
            </tbody>
        </table>
    </div>
    <div class="clearfloat"></div>

    <script src="Scripts/products.js"></script>
</asp:Content>
