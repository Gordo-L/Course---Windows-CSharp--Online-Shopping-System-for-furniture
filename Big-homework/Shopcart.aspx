<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Shopcart.aspx.cs" Inherits="Big_homework.Shopcart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" type="text/css" href="Content/Shopcart.css">
    <%--导航栏（所有产品/卧室/浴室/客厅/厨房/书房）--%>
    <nav>
        <ul class="nav nav-pills" role="tablist">
            <li role="presentation"><a href="Default.aspx">所有产品</a></li>
            <li role="presentation" class="active"><a href="#">卧室</a></li>
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
