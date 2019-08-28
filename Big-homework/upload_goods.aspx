<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="upload_goods.aspx.cs" Inherits="Big_homework.upload_goods" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" type="text/css" href="Content/upload_goods.css">
    <h1>卖家：上传商品</h1>
    <p>上传商品名称：</p><input type=text />
    <br />
    <p>上传商品价格：</p><input type=text />
    <br />
    <p>上传商品图片：</p>
    <input type="file" class="custom-file-input" id="photobox" style="display:inline">
    <button class="btn btn-outline-secondary" type="button" >上传</button>
    <br />
    <p>上传商品介绍：</p>
    <textarea></textarea>
    <br />
    <a href="#" class="btn btn-primary btn-lg active btn-sm" role="button" aria-pressed="true">提交申请</a>





</asp:Content>
