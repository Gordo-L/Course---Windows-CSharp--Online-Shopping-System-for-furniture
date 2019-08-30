<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Wardrobe.aspx.cs" Inherits="Big_homework.Wardrobe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" type="text/css" href="Content/Bedroom.css">

    <%--商品陈列--%>
    <div class="card-deck">
        <div class="card" id="wardrobe1">
            <img src="images/衣柜1.png" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">PAX 帕克思 衣柜</h5>
                <h4>¥ 3,310.00</h4>
                <p class="card-text">宽度: 150 厘米, 深度: 66 厘米, 高度: 236.4 厘米</p>
                <p id="bt6" class="btn btn-primary btn-lg active btn-sm" role="button" aria-pressed="true">添加到购物车</p>
                <a href="#" class="btn btn-primary btn-lg active btn-sm" role="button" aria-pressed="true">查看详情</a>
            </div>
            <div class="card-footer">
                <small class="text-muted"></small>
            </div>
        </div>
        <br />
        <div class="card" id="wardrobe2">
            <img src="images/衣柜2.png" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">PAX 帕克思 衣柜</h5>
                <h4>¥ 6,190.00</h4>
                <p class="card-text">宽度: 250 厘米, 深度: 60 厘米, 高度: 236.4 厘米</p>
                <p id="bt7" class="btn btn-primary btn-lg active btn-sm" role="button" aria-pressed="true">添加到购物车</p>
                <a href="#" class="btn btn-primary btn-lg active btn-sm" role="button" aria-pressed="true">查看详情</a>
            </div>
            <div class="card-footer">
                <small class="text-muted"></small>
            </div>
        </div>
    </div>

        <script src="Scripts/bed.js"></script>

</asp:Content>
