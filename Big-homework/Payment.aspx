<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="Big_homework.Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" type="text/css" href="Content/Payment.css">
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

    <div class="input-group mb-3">
        <div class="input-group-prepend">
            <span class="input-group-text" id="rec_name">收件人姓名</span>
        </div>
        <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
    </div>
    <br />
    <div class="input-group mb-3">
        <div class="input-group-prepend">
            <span class="input-group-text" id="rec_name">收件人联系电话</span>
        </div>
        <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
    </div>
    <br />
    <div class="input-group mb-3">
        <div class="input-group-prepend">
            <span class="input-group-text" id="rec_name">收件人地址</span>
        </div>
        <input type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
    </div>
    <br />
    <h4>您需支付：</h4>
    <h4>¥ 4,298.00</h4>
    <a href="Payment.aspx" class="btn btn-primary btn-lg active btn-sm" role="button" aria-pressed="true">支付</a>


</asp:Content>
