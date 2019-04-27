<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EcommerceSite.admin.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>EcommerceSite</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css" />
    <link href="../style.css" rel="stylesheet" type="text/css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <div class="container">
            <div class="header">
                <a href="../Default.aspx">EcommerceSite</a>
            </div>
            <div class="adminPanelSection">
                <div class="panel text-center" id="adminPanel">
                    <div class="panel-header">Admin Panel&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="../Default.aspx" class="BacktoSiteLink"><-- Back to site</a><p><small>Enter details to access admin panel</small></p></div>
                    <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                    <div class="panel-body">
                        
                        <asp:Label ID="Label1" runat="server" Text="Username">Username&nbsp;&nbsp;&nbsp;&nbsp;</asp:Label><asp:TextBox ID="adminUsername" TextMode="SingleLine" runat="server"></asp:TextBox><br /><br />
                        <asp:Label ID="Label2" runat="server" Text="password">Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox TextMode="Password" id="adminPasswd" runat="server"/></asp:Label></div><div class="panel-footer">
                        <asp:Button runat="server" Text="Login" ID="adminPanelSubmitBtn" OnClick="adminPanelSubmitBtn_Click" /></div>
                </div>



                
            </div>
        </div>

    </div>
    </form>
</body>
</html>
