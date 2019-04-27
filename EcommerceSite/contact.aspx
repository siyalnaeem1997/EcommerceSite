<%@ Page Title="" Language="C#" MasterPageFile="~/EcommerceSite.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="EcommerceSite.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <h1>Contact Us</h1>
        <div class="panel panel-success">
            <div class="panel-body">
                <div class="form">
                    <div class="form-group">
                        <label for="name">Name</label>
                        <asp:TextBox ID="nameContact" required="required" CssClass="form-control" TextMode="SingleLine" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="contactNumber">Contact Number</label>
                        <asp:TextBox ID="numberContact" required="required" CssClass="form-control" TextMode="Number" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="message">Mesage</label>
                        <asp:TextBox ID="messageContact" required="required" CssClass="form-control" TextMode="MultiLine" runat="server"></asp:TextBox>
                    </div>                  
                </div>
            </div>
            <div class="panel-footer">
                <a href="#" class="btn btn-primary">Submit</a>
            </div>
        </div>
        <br />
        <br />
    </div>


</asp:Content>
