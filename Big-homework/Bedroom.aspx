<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Bedroom.aspx.cs" Inherits="Big_homework.Bedroom" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" type="text/css" href="Content/Bedroom.css">
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

    <%--商品陈列--%>
    <div class="card-deck">
        <div class="card" id="bed1">
            <img src="images/床1.png" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">KOPARDAL 科帕达 床架</h5>
                <h4>¥ 1,299.00</h4>
                <p class="card-text">长度: 211 厘米, 宽度: 164 厘米, 床尾板高: 97 厘米 </p>
                <a href="Shopcart.aspx" class="btn btn-primary btn-lg active btn-sm" role="button" aria-pressed="true">添加到购物车</a>
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
                <a href="Shopcart.aspx" class="btn btn-primary btn-lg active btn-sm" role="button" aria-pressed="true">添加到购物车</a>
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
                <a href="Shopcart.aspx" class="btn btn-primary btn-lg active btn-sm" role="button" aria-pressed="true">添加到购物车</a>
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
                <a href="Shopcart.aspx" class="btn btn-primary btn-lg active btn-sm" role="button" aria-pressed="true">添加到购物车</a>
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
                <a href="Shopcart.aspx" class="btn btn-primary btn-lg active btn-sm" role="button" aria-pressed="true">添加到购物车</a>
                <a href="#" class="btn btn-primary btn-lg active btn-sm" role="button" aria-pressed="true">查看详情</a>
                </div>
            <div class="card-footer">
                <small class="text-muted"></small>
            </div>
        </div>
        <br />
        <div class="card" id="wardrobe1">
            <img src="images/衣柜1.png" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title">PAX 帕克思 衣柜</h5>
                <h4>¥ 3,310.00</h4>
                <p class="card-text">宽度: 150 厘米, 深度: 66 厘米, 高度: 236.4 厘米</p>
                <a href="Shopcart.aspx" class="btn btn-primary btn-lg active btn-sm" role="button" aria-pressed="true">添加到购物车</a>
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
                <a href="Shopcart.aspx" class="btn btn-primary btn-lg active btn-sm" role="button" aria-pressed="true">添加到购物车</a>
                <a href="#" class="btn btn-primary btn-lg active btn-sm" role="button" aria-pressed="true">查看详情</a>
            </div>
            <div class="card-footer">
                <small class="text-muted"></small>
            </div>
        </div>
    </div>

</asp:Content>
