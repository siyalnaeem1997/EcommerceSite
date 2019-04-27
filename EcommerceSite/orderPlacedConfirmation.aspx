<%@ Page Title="" Language="C#" MasterPageFile="~/EcommerceSite.Master" AutoEventWireup="true" CodeBehind="orderPlacedConfirmation.aspx.cs" Inherits="EcommerceSite.orderPlacedConfirmation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container text-justify">
        <div class="col-md-12">
            <h1>Order Placed <br /> Successfully</h1>
            <h3>Your Order id is: </h3><h2><b><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></b></h2>
        </div>
        <div class="text-center">
            <a href="Default.aspx" class="btn btn-success">Back To Home</a>
        </div>
    </div>


</asp:Content>
