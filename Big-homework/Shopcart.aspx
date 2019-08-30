<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Shopcart.aspx.cs" Inherits="Big_homework.Shopcart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" type="text/css" href="Content/Shopcart.css">
    <h1>我的购物车</h1>
    <br />
    <div class="col-md-6">
        <p id="label_refresh" style="display: none">正在刷新信息，请耐心等待</p>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>产品名</th>
                    <th>单价</th>
                    <th>数量</th>
                    <th>总价格</th>
                    <%--<th>移出购物车</th>--%>
                </tr>
            </thead>
            <tbody id="table_content">
<%--                <tr>
                    <td>1</td>
                    <td>KOPARDAL 科帕达 床架</td>
                    <td>¥ 1,299.00</td>
                    <td>1</td>
                    <td>¥ 1,299.00</td>
                    <td><input type="button" value="移除1"/></td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>MALM 马尔姆 高箱气压床</td>
                    <td>¥ 2,999.00</td>
                    <td>1</td>
                    <td>¥ 2,999.00</td>
                    <td><input type="button" value="移除1"/></td>
                </tr>--%>
            </tbody>
        </table>
    </div>
    <div class="clearfloat"></div>
    <h3>总计:</h3>
    <h3 id="label_total">¥ 0.00</h3>
    <a id="button_submit_1" class="btn btn-primary btn-lg active btn-sm" role="button" aria-pressed="true">提交订单</a>

    <script src="Scripts/shopcart.js"></script>
    

</asp:Content>
