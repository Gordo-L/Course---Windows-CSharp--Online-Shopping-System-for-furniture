﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Big_homework.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" type="text/css" href="Content/Register.css">


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
                <label for="input_email2" class="col-sm-2 col-form-label">电子邮件地址</label>
                <div class="col-sm-10">
                    <input type="email" class="form-control" id="input_email2" placeholder="电子邮件地址" runat="server">
                </div>
            </div>
            <p id="RegisterOccupiedError" class="RegisterErrors">该邮箱已被占用</p>
            <br />
            <div class="form-group row">
                <label for="input_password2" class="col-sm-2 col-form-label">密码</label>
                <div class="col-sm-10">
                    <input type="password" class="form-control" id="input_password2" placeholder="密码" runat="server">
                </div>
            </div>
            <p id="RegisterPasswordError" class="RegisterErrors">密码必须为6个字符以上</p>
            <br />
            <div class="form-group row">
                <label for="input_confirm2" class="col-sm-2 col-form-label">确认密码</label>
                <div class="col-sm-10">
                    <input type="password" class="form-control" id="input_confirm2" placeholder="确认密码" runat="server">
                </div>
            </div>
            <p id="RegisterConfirmError" class="RegisterErrors">两次输入的密码不一致</p>
            <br />
            <fieldset class="form-group">
                <div class="row">
                    <legend class="col-form-label col-sm-2 pt-0">选择</legend>
                    <div class="col-sm-10">
                        <div class="form-check">
                            <input class="" type="radio" name="gridRadios1" id="radio_register1" value="option1" checked runat="server">
                            <label class="form-check-label" for="radio_register1">
                                注册为买家
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="" type="radio" name="gridRadios1" id="radio_register2" value="option2" runat="server">
                            <label class="form-check-label" for="radio_register2">
                                注册为卖家
                            </label>
                        </div>
                    </div>
                </div>
            </fieldset>
            <button type="submit" class="btn btn-primary" id="button_register" runat="server">注册</button>
        </form>
    </div>
    <div class="clearRegister2"></div>



    <script src="Scripts/Register.js"></script>
</asp:Content>
