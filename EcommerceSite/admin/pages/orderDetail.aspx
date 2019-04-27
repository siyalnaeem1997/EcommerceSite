<%@ Page Title="" Language="C#" MasterPageFile="~/admin/pages/adminPanel.Master" AutoEventWireup="true" CodeBehind="orderDetail.aspx.cs" Inherits="EcommerceSite.admin.pages.orderDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <h1>Order Details</h1>
        <div class="col-md-12">
            
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="product_name" HeaderText="product_name" SortExpression="product_name"></asp:BoundField>
                    <asp:BoundField DataField="product_price" HeaderText="product_price" SortExpression="product_price"></asp:BoundField>
                    <asp:BoundField DataField="product_img" HeaderText="product_img" SortExpression="product_img"></asp:BoundField>
                </Columns>
            </asp:GridView>

            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:EcommerceSiteConnectionString %>' SelectCommand="Select p.product_name,p.product_price,p.product_img from orders o Inner Join Cart c on c.session_id = o.session_id inner join products p on c.product_id = p.product_id Where o.session_id = @session_id">
                <SelectParameters>
                    <asp:QueryStringParameter QueryStringField="order_id" Name="session_id"></asp:QueryStringParameter>
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>

</asp:Content>
