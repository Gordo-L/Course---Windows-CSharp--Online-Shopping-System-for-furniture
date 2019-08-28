<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Log_on.aspx.cs" Inherits="Big_homework.Log_on" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" type="text/css" href="Content/Log_on.css">


    <%--登录信息--%>
    <div class="divLog_on">
        <form class="formLog_on">
            <div>
                <h1>登录</h1>
            </div>
            <div class="form-group">
                <label for="input_email1">邮箱地址</label>
                <input type="email" class="form-control" id="input_email1" aria-describedby="emailHelp" placeholder="输入邮箱" runat="server">
                <small id="small_email1" class="form-text text-muted">我们绝不会与其他任何人共享您的电子邮箱。</small>
            </div>
            <div class="form-group">
                <label for="input_password1">密码</label>
                <input type="password" class="form-control" id="input_password1" placeholder="密码" runat="server">
            </div>
            <div class="form-group form-check">
                <input type="checkbox" class="form-check-input" id="checkbox_checkmeout1" runat="server">
                <label class="form-check-label" for="checkbox_checkmeout1">记住我</label>
            </div>
            <%--<button type="submit" class="btn btn-primary" id="button_logon1" runat="server">登录</button>--%>
            <asp:Button ID="Button_logon1" CssClass="btn btn-primary" runat="server" Text="登录" />
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
