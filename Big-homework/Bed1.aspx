<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Bed1.aspx.cs" Inherits="Big_homework.Bed1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" type="text/css" href="Content/Bed1.css">

    <%--bed1图--%>
    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class=""></li>
            <li data-target="#carousel-example-generic" data-slide-to="1" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
        </ol>
        <div class="carousel-inner" role="listbox">
            <div class="item active left">
                <img data-src="holder.js/1140x500/auto/#777:#555/text:First slide" alt="First slide [1140x500]" src="images/bed11.png" data-holder-rendered="true">
            </div>
            <div class="item next left">
                <img data-src="holder.js/1140x500/auto/#666:#444/text:Second slide" alt="Second slide [1140x500]" src="images/bed12.png" data-holder-rendered="true">
            </div>
            <div class="item">
                <img data-src="holder.js/1140x500/auto/#555:#333/text:Third slide" alt="Third slide [1140x500]" src="images/bed13.png" data-holder-rendered="true">
            </div>
        </div>
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>

    <%--bed1字--%>
    <br />
    <h2>KOPARDAL 科帕达 </h2>
    <h6>床架, 灰色, 朗塞特</h6>
    <h1>¥ 1,299.00</h1>
    <p>想要一个经典的钢质床架，你不必一定要到古董商店去淘。这款产品设计简洁、经典，风格百搭，可与其他各类家具和谐搭配。</p>
    <br />
    <a href="Shopcart.aspx" class="btn btn-primary btn-lg active btn-sm" role="button" aria-pressed="true">添加到购物车</a>
    <br />
    <br />
    <h4>商品信息</h4>
    <p>
    升级版经典钢床可轻松搭配不同风格。
    涂粉末漆钢架既坚固耐用又易于打理。
    床头板较高，令你可以舒适地坐靠在床上，只需在背后放几个枕头，就可以舒舒服服地看书或者看电视。
    床底下有许多空间可以放储物盒，适合收纳备用的被子和枕头。
    这款床架风格百搭，可以很好地搭配你选择的纺织品和卧室家具。
    可轻松打扫床架下方空间，保持整洁无尘。
    28根胶合板条，分成5个舒适区域，可根据你的体重进行调整，增加床垫柔软度。
    产地见包装
    </p>
    <br />
    <h4>相关提示</h4>
    <p>
    组合价格包含 SKORVA 斯科瓦 床中庭（独立包装），如您在商场自助提货，请至对应货架提货。如果您从网站订购此，会与其他部分一起送货上门。
    价格中已包含床板架，独立包装。
    使用 RÖMSKOG 床用储物盒，在床底打造额外储物空间。
    </p>
    <br />
    <h4>需另购</h4>
    <p>床垫和床上用品单独另售。</p>
    <br />
    <h4>保养说明</h4>    
    <p>
    用布块沾中性清洁剂充分擦洗。
    用干净布块擦干
    </p>
 
</asp:Content>
