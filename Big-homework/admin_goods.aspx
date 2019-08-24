<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="admin_goods.aspx.cs" Inherits="Big_homework.admin_goods" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" type="text/css" href="Content/admin_goods.css">

    <%--导航栏（所有产品/卧室/浴室/客厅/厨房/书房）--%>
    <nav id="navbar1">
        <ul class="nav nav-pills" role="tablist">
            <li role="presentation" class="active"><a href="#">所有产品</a></li>
            <li role="presentation"><a href="Bedroom.aspx">卧室</a></li>
            <li role="presentation"><a href="#">浴室</a></li>
            <li role="presentation"><a href="#">客厅</a></li>
            <li role="presentation"><a href="#">厨房</a></li>
            <li role="presentation"><a href="#">书房</a></li>
            <li role="presentation"><a href="#">阳台</a></li>
        </ul>
    </nav>

    <%--个人中心--%>
    <div class="dropdown" id="personalcenter">
        <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownbutton_center" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">个人中心</a>
        <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
            <a class="dropdown-item" id="dropdownbutton_logon" href="Log_on.aspx">登录</a>
            <br />
            <a class="dropdown-item" id="dropdownbutton_register" href="Register.aspx">注册</a>
            <br />
            <a class="dropdown-item" href="Default.aspx">退出</a>
        </div>
    </div>

    <%--购物车--%>
    <div class="dropdown" id="dropdownbutton_shopcart">
        <a class="btn btn-secondary dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">购物车</a>
        <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
            <a class="dropdown-item" href="Shopcart.aspx">查看我的购物车</a>
        </div>
    </div>
    <div class="clearfloat"></div>

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
