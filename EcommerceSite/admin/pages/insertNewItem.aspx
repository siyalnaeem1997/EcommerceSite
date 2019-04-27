<%@ Page Title="" Language="C#" MasterPageFile="~/admin/pages/adminPanel.Master" AutoEventWireup="true" CodeBehind="insertNewItem.aspx.cs" Inherits="EcommerceSite.admin.pages.insertNewItem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container" style="margin-top:20px;">
        
        <div class="panel">
            <div class="panel-heading">
                <h1>Insert New Item</h1>
            </div>
            <div class="panel-body">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="itemNameTextbox" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Price"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="itemPriceTextbox" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label3" runat="server" Text="Image Name"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="itemImageTextbox" runat="server"></asp:TextBox>
            </div>
            <div class="panel-footer">
                <asp:Button ID="insertNewItemBtn" runat="server" CssClass="btn btn-primary" Text="Insert New Item" OnClick="insertNewItemBtn_Click" />
            </div>
        </div>

    </div>
</asp:Content>
