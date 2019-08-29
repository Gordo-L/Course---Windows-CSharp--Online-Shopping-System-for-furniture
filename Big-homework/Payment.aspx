<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="Big_homework.Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" type="text/css" href="Content/Payment.css">

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
    <h4 id="label_money" runat="server">¥ 4,298.00</h4>
    <a href="Payment.aspx" class="btn btn-primary btn-lg active btn-sm" role="button" aria-pressed="true" id="button_pay" runat="server">支付</a>

</asp:Content>
