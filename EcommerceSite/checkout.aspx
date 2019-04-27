<%@ Page Title="" Language="C#" MasterPageFile="~/EcommerceSite.Master" AutoEventWireup="true" CodeBehind="checkout.aspx.cs" Inherits="EcommerceSite.checkout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <h1>Checkout</h1>
        <div class="form">
            <div class="form-group">
                <label for="customerName">Name</label>
                <asp:TextBox ID="userNameCheckout" required="required" CssClass="form-control" TextMode="SingleLine" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="customerContact">Contact Number</label>
                <asp:TextBox ID="userContactCheckout" required="required" CssClass="form-control" TextMode="Number" runat="server"></asp:TextBox>
            </div>
            <div class="form-group">
                <label for="customerAddress">Address</label>
                <asp:TextBox ID="userAddressCheckout" required="required" CssClass="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>
            </div>  
            <asp:Button ID="checkout_btn" CssClass="btn btn-default" runat="server" Text="Confirm Order" OnClick="checkout_btn_Click" />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>
    </div>


</asp:Content>
