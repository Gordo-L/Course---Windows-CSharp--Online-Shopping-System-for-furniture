<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Log_on.aspx.cs" Inherits="Big_homework.Log_on" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" type="text/css" href="Content/Log_on.css">

    <%--导航栏（所有产品/卧室/浴室/客厅/厨房/书房）--%>
    <nav>
        <ul class="nav nav-pills" role="tablist">
            <li role="presentation" class="active"><a href="Default.aspx">所有产品</a></li>
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

    <%--登录信息--%>
    <div class="divLog_on">
        <form class="formLog_on">
            <div>
                <h1>登录</h1>
            </div>
            <div class="form-group">
                <label for="input_email1">邮箱地址</label>
                <input type="email" class="form-control" id="input_email1" aria-describedby="emailHelp" placeholder="输入邮箱">
                <small id="small_email1" class="form-text text-muted">我们绝不会与其他任何人共享您的电子邮箱。</small>
            </div>
            <div class="form-group">
                <label for="input_password1">密码</label>
                <input type="password" class="form-control" id="input_password1" placeholder="密码">
            </div>
            <div class="form-group form-check">
                <input type="checkbox" class="form-check-input" id="checkbox_checkmeout1">
                <label class="form-check-label" for="checkbox_checkmeout1">记住我</label>
            </div>
            <button type="submit" class="btn btn-primary" id="button_logon1">登录</button>
            <p id="LoginFailedLabel">用户名或密码不正确</p>
        </form>
    </div>

    <%--注册信息--%>
    <div class="divRegister">
        <div>
            <h1>注册</h1>
        </div>
        <p>创建并登录您的个人账户，你将在网站上享受更多</p>
        <button type="submit" class="btn btn-primary" id="button_register1">现在就注册</button>
    </div>
    <div class="clearRegister"></div>





    <script src="http://cdn.bootcss.com/blueimp-md5/1.1.0/js/md5.min.js"></script>
    <script src="Scripts/Log_on.js"></script>

</asp:Content>
