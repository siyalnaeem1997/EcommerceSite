﻿<%@ Page Title="" Language="C#" MasterPageFile="~/admin/pages/adminPanel.Master" AutoEventWireup="true" CodeBehind="allOrders.aspx.cs" Inherits="EcommerceSite.admin.pages.allOrders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <h1>All Orders</h1>
        <div class="col-md-12" style="width:100%">
            
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Order_id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                <Columns>
                    <asp:HyperLinkField DataNavigateUrlFields="session_id" DataNavigateUrlFormatString="orderDetail.aspx?order_id={0}" HeaderText="Order_id" DataTextField="session_id" />
                    <asp:BoundField DataField="Order_id" HeaderText="Order_id" ReadOnly="True" InsertVisible="False" SortExpression="Order_id"></asp:BoundField>
                    <asp:BoundField DataField="session_id" HeaderText="session_id" SortExpression="session_id"></asp:BoundField>
                    <asp:BoundField DataField="Customer_name" HeaderText="Customer_name" SortExpression="Customer_name"></asp:BoundField>
                    <asp:BoundField DataField="Customer_phone" HeaderText="Customer_phone" SortExpression="Customer_phone"></asp:BoundField>
                    <asp:BoundField DataField="Customer_address" HeaderText="Customer_address" SortExpression="Customer_address"></asp:BoundField>
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black"></FooterStyle>

                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White"></HeaderStyle>

                <PagerStyle HorizontalAlign="Right" BackColor="White" ForeColor="Black"></PagerStyle>

                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

                <SortedAscendingCellStyle BackColor="#F7F7F7"></SortedAscendingCellStyle>

                <SortedAscendingHeaderStyle BackColor="#4B4B4B"></SortedAscendingHeaderStyle>

                <SortedDescendingCellStyle BackColor="#E5E5E5"></SortedDescendingCellStyle>

                <SortedDescendingHeaderStyle BackColor="#242121"></SortedDescendingHeaderStyle>
            </asp:GridView>

            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:EcommerceSiteConnectionString %>' SelectCommand="SELECT * FROM [Orders]"></asp:SqlDataSource>
        </div>
    </div>

</asp:Content>
