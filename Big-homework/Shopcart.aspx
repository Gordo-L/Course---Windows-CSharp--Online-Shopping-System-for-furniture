<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Shopcart.aspx.cs" Inherits="Big_homework.Shopcart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" type="text/css" href="Content/Shopcart.css">
    <h1>我的购物车</h1>
    <br />
    <div class="col-md-6">
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>产品名</th>
                    <th>单价</th>
                    <th>数量</th>
                    <th>总价格</th>
                    <th>移出购物车</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>KOPARDAL 科帕达 床架</td>
                    <td>¥ 1,299.00</td>
                    <td>1</td>
                    <td>¥ 1,299.00</td>
                    <td><input type="checkbox"/></td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>MALM 马尔姆 高箱气压床</td>
                    <td>¥ 2,999.00</td>
                    <td>1</td>
                    <td>¥ 2,999.00</td>
                    <td><input type="checkbox"/></td>
                </tr>
            </tbody>
        </table>
    </div>
    <div class="clearfloat"></div>
    <h3>总计:</h3>
    <h3>¥ 4,298.00</h3>
    <a href="Payment.aspx" class="btn btn-primary btn-lg active btn-sm" role="button" aria-pressed="true">提交订单</a>

    

</asp:Content>
