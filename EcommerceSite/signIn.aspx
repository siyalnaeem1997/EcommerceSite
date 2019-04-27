<%@ Page Title="" Language="C#" MasterPageFile="~/EcommerceSite.Master" AutoEventWireup="true" CodeBehind="signIn.aspx.cs" Inherits="EcommerceSite.signIn" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <h1>Sign In</h1>
        <div class="col-md-12">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="form">
                        <div class="form-group">
                            <label for="contactNumber">Email</label>
                            <asp:TextBox ID="userEmail" required="required" CssClass="form-control" TextMode="Email" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="message">Password</label>
                            <asp:TextBox ID="password" required="required" CssClass="form-control" TextMode="Password" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
            <div class="panel-footer">
                <asp:Button ID="Button1" CssClass="btn btn-default" runat="server" Text="Sign In" OnClick="Button1_Click" />
            </div>
        </div>

    </div>


</asp:Content>
