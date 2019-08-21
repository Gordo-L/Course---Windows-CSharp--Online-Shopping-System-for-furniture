<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Big_homework._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link rel="stylesheet" type="text/css" href="Content/Default.css">

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

     <%--所有产品 标题--%>
    <nav>
        <div class="jumbotron">
        <h1>所有产品</h1>
      </div>
    </nav>

    <%--所有产品 具体分类--%>
    <nav>
        <div class="row">
        <div class="col-sm-4">
          <div class="panel panel-default">
            <div class="panel-heading">
              <h3 class="panel-title">储物产品</h3>
            </div>
            <div class="panel-body">
                抽屉柜<br />
                衣柜</div>
          </div>
          <div class="panel panel-primary">
            <div class="panel-heading">
              <h3 class="panel-title">桌子</h3>
            </div>
            <div class="panel-body">
                餐厅桌椅<br />
                书桌<br />
                梳妆台<br />
                床边桌</div>
          </div>
        </div><!-- /.col-sm-4 -->
        <div class="col-sm-4">
          <div class="panel panel-success">
            <div class="panel-heading">
              <h3 class="panel-title">家用电子产品</h3>
            </div>
            <div class="panel-body">
                电线和充电器<br />
                手机/平板配件</div>
          </div>
          <div class="panel panel-info">
            <div class="panel-heading">
              <h3 class="panel-title">沙发和扶手椅</h3>
            </div>
            <div class="panel-body">
                布艺沙发<br />
                组合沙发<br />
                沙发床
            </div>
          </div>
        </div><!-- /.col-sm-4 -->
        <div class="col-sm-4">
          <div class="panel panel-warning">
            <div class="panel-heading">
              <h3 class="panel-title">烹饪</h3>
            </div>
            <div class="panel-body">
                烘培器具<br />
                洗碗用具</div>
          </div>
          <div class="panel panel-danger">
            <div class="panel-heading">
              <h3 class="panel-title">照明用品</h3>
            </div>
            <div class="panel-body">
                顶灯<br />
                台灯<br />
                射灯<br />
                壁灯</div>
          </div>
        </div><!-- /.col-sm-4 -->
      </div>
    </nav>







    <p class="para">测试文字</p>

    
    <%--进度条--%>
    <%--<nav class="navBar">
      <div class="progress">
        <div class="progress-bar progress-bar-striped" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%"><span class="sr-only">60% Complete</span></div>
      </div>
    </nav>--%>

    <script src="Scripts/Default.js"></script>

</asp:Content>
