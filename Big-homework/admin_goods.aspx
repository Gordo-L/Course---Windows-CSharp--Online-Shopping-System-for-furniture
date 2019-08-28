<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="admin_goods.aspx.cs" Inherits="Big_homework.admin_goods" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" type="text/css" href="Content/admin_goods.css">

    <h1>管理我的商品</h1>
    <br />
    <div class="col-md-6">
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>商品名</th>
                    <th>商品价格</th>
                    <th>下架</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>KOPARDAL 科帕达 床架</td>
                    <td>¥ 1,299.00</td>
                    <td></td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>MALM 马尔姆 高箱气压床</td>
                    <td>¥ 2,999.00</td>
                    <td></td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>UTÅKER 于托克 叠床</td>
                    <td>¥ 999.00 / 2 件</td>
                    <td></td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>SVÄRTA 斯沃塔 高架床框架</td>
                    <td>¥ 999.00</td>
                    <td></td>
                </tr>
            </tbody>
        </table>
    </div>
    <div class="clearfloat"></div>
    <br />
    <a href="#" class="btn btn-primary btn-lg active btn-sm" role="button" aria-pressed="true">确认</a>





</asp:Content>
