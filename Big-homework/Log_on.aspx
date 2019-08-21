<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Log_on.aspx.cs" Inherits="Big_homework.Log_on" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" type="text/css" href="Content/Log_on.css">

    <%--导航栏（所有产品/卧室/浴室/客厅/厨房/书房）--%>
    <nav>
        <ul class="nav nav-pills" role="tablist">
            <li role="presentation" class="active"><a href="#">所有产品</a></li>
            <li role="presentation"><a href="#">卧室</a></li>
            <li role="presentation"><a href="#">浴室</a></li>
            <li role="presentation"><a href="#">客厅</a></li>
            <li role="presentation"><a href="#">厨房</a></li>
            <li role="presentation"><a href="#">书房</a></li>
        </ul>
    </nav>

    <%--登录信息--%>
    <form class="formLog_on">
        <div>
            <h1>登录</h1>
        </div>
        <div class="form-group">
            <label for="exampleInputEmail1">邮箱地址</label>
            <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="输入邮箱">
            <small id="emailHelp" class="form-text text-muted">我们绝不会与其他任何人共享您的电子邮箱。</small>
        </div>
        <div class="form-group">
            <label for="exampleInputPassword1">密码</label>
            <input type="password" class="form-control" id="exampleInputPassword1" placeholder="密码">
        </div>
        <div class="form-group form-check">
            <input type="checkbox" class="form-check-input" id="exampleCheck1">
            <label class="form-check-label" for="exampleCheck1">记住我</label>
        </div>
        <button type="submit" class="btn btn-primary">提交</button>
    </form>






    <script src="Scripts/Log_on.js"></script>

</asp:Content>
