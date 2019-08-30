<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Bed.aspx.cs" Inherits="Big_homework.Bed" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" type="text/css" href="Content/Bed.css">

    <%--商品陈列--%>
    <div class="card-deck">
        <div class="card" id="bed1">
            <img src="images/床1.png" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">KOPARDAL 科帕达 床架</h5>
                <h4>¥ 1,299.00</h4>
                <p class="card-text">长度: 211 厘米, 宽度: 164 厘米, 床尾板高: 97 厘米 </p>
                <p id="bt1" class="btn btn-primary btn-lg active btn-sm" role="button" aria-pressed="true">添加到购物车</p>
                <a href="Bed1.aspx" class="btn btn-primary btn-lg active btn-sm" role="button" aria-pressed="true">查看详情</a>

            </div>
            <div class="card-footer">
                <small class="text-muted"></small>
            </div>
        </div>
        <br />
        <div class="card" id="bed2">
            <img src="images/床2.png" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">MALM 马尔姆 高箱气压床</h5>
                <h4>¥ 2,999.00</h4>
                <p class="card-text">内部深度: 201 厘米, 内部宽度: 151 厘米, 内部高度: 27 厘米</p>
                <p id="bt2" class="btn btn-primary btn-lg active btn-sm" role="button" aria-pressed="true">添加到购物车</p>
                <a href="#" class="btn btn-primary btn-lg active btn-sm" role="button" aria-pressed="true">查看详情</a>

            </div>
            <div class="card-footer">
                <small class="text-muted"></small>
            </div>
        </div>
        <br />
        <div class="card" id="bed3">
            <img src="images/床3.png" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">UTÅKER 于托克 叠床</h5>
                <h4>¥ 999.00 / 2 件</h4>
                <p class="card-text">两张床高度: 46 厘米, 长度: 205 厘米, 宽度: 83 厘米</p>
                <p id="bt3" class="btn btn-primary btn-lg active btn-sm" role="button" aria-pressed="true">添加到购物车</p>
                <a href="#" class="btn btn-primary btn-lg active btn-sm" role="button" aria-pressed="true">查看详情</a>
            </div>
            <div class="card-footer">
                <small class="text-muted"></small>
            </div>
        </div>
        <br />
        <div class="card" id="bed4">
            <img src="images/床4.png" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">SVÄRTA 斯沃塔 高架床框架</h5>
                <h4>¥ 999.00</h4>
                <p class="card-text">长度: 208 厘米, 地面到床底架距离: 145 厘米, 宽度: 97 厘米</p>
                <p id="bt4" class="btn btn-primary btn-lg active btn-sm" role="button" aria-pressed="true">添加到购物车</p>
                <a href="#" class="btn btn-primary btn-lg active btn-sm" role="button" aria-pressed="true">查看详情</a>
            </div>
            <div class="card-footer">
                <small class="text-muted"></small>
            </div>
        </div>
        <br />
        <div class="card" id="bed5">
            <img src="images/床5.png" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">FLEKKE 福勒克 坐卧两用床框架带双屉</h5>
                <h4>¥ 2,299.00</h4>
                <p class="card-text">长度: 207 厘米, 宽度: 88 厘米, 高度: 86 厘米</p>
                <p id="bt5" class="btn btn-primary btn-lg active btn-sm" role="button" aria-pressed="true">添加到购物车</p>
                <a href="#" class="btn btn-primary btn-lg active btn-sm" role="button" aria-pressed="true">查看详情</a>
                </div>
            <div class="card-footer">
                <small class="text-muted"></small>
            </div>
        </div>
    </div>
    <script src="Scripts/bed.js"></script>

</asp:Content>
