<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Big_homework.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" type="text/css" href="Content/Register.css">

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

    <%--注册信息--%>
    <p>
        <h1>注册新账户</h1>
    </p>
    <p>创建并登录您的个人账户，你将在网站上享受更多</p>

    <div class="divRegister2">
        <div>
            <h1>注册</h1>
        </div>

        <form>
            <div class="form-group row">
                <label for="inputEmail3" class="col-sm-2 col-form-label">电子邮件地址</label>
                <div class="col-sm-10">
                    <input type="email" class="form-control" id="inputEmail3" placeholder="电子邮件地址">
                </div>
            </div>
            <div class="form-group row">
                <label for="inputPassword3" class="col-sm-2 col-form-label">密码</label>
                <div class="col-sm-10">
                    <input type="password" class="form-control" id="inputPassword3" placeholder="密码">
                </div>
            </div>
            <div class="form-group row">
                <label for="confirmPassword3" class="col-sm-2 col-form-label">确认密码</label>
                <div class="col-sm-10">
                    <input type="password" class="form-control" id="confirmPassword3" placeholder="确认密码">
                </div>
            </div>
            <button type="submit" class="btn btn-primary">注册</button>
        </form>

    </div>
    <div class="clearRegister2"></div>






    <script src="Scripts/Register.js"></script>
</asp:Content>
