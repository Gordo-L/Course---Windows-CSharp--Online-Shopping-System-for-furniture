<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Big_homework._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" type="text/css" href="Content/Default.css">


    <%--所有产品 标题--%>
    <nav>
        <div class="jumbotron" id="back_div_img">
            <h1>所有产品</h1>
        </div>
    </nav>

    <%--所有产品 具体分类--%>
    <nav>
        <div class="row">
            <div class="col-sm-4">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <a class="panel-title" href="Bedroom.aspx">卧室</a>
                    </div>
                    <div class="panel-body">
                        <a href="Bed.aspx">床</a>
                        <br />
                        <a href="Wardrobe.aspx">衣柜</a>
                    </div>
                </div>
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">厨房</h3>
                    </div>
                    <div class="panel-body">
                        橱柜<br />
                        烹调器具<br />
                        洗碗用具
                    </div>
                </div>
            </div>
            <!-- /.col-sm-4 -->
            <div class="col-sm-4">
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <h3 class="panel-title">浴室</h3>
                    </div>
                    <div class="panel-body">
                        洗脸池柜<br />
                        浴室配件
                    </div>
                </div>
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <h3 class="panel-title">书房</h3>
                    </div>
                    <div class="panel-body">
                        书桌<br />
                        工作椅
                    </div>
                </div>
            </div>
            <!-- /.col-sm-4 -->
            <div class="col-sm-4">
                <div class="panel panel-warning">
                    <div class="panel-heading">
                        <h3 class="panel-title">客厅</h3>
                    </div>
                    <div class="panel-body">
                        沙发和扶手椅<br />
                        茶几和边桌
                    </div>
                </div>
                <div class="panel panel-danger">
                    <div class="panel-heading">
                        <h3 class="panel-title">其它</h3>
                    </div>
                    <div class="panel-body">
                        <a href="explore.aspx" style="font-weight: bold">商家上传的商品</a>
                    </div>
                </div>
            </div>
            <!-- /.col-sm-4 -->
        </div>
    </nav>


    <%--进度条--%>
    <%--<nav class="navBar">
      <div class="progress">
        <div class="progress-bar progress-bar-striped" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%"><span class="sr-only">60% Complete</span></div>
      </div>
    </nav>--%>

    <script src="Scripts/Default.js"></script>
</asp:Content>
