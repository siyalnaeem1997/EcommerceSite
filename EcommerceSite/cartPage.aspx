<%@ Page Title="Cart View - EcommerceSite" Language="C#" MasterPageFile="~/EcommerceSite.Master" AutoEventWireup="true" CodeBehind="cartPage.aspx.cs" Inherits="EcommerceSite.cartPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
     <div class="container">
         <h1>Cart</h1>
         <div class="col-md-12">
             <asp:GridView AutoGenerateColumns="false" CssClass="table table-responsive" ID="products_gv" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                 <Columns>
                     <asp:BoundField DataField="id" HeaderText="Product ID" />
                     <asp:BoundField DataField="name" HeaderText="Product Name" />
                     <asp:BoundField DataField="price" HeaderText="Product Price" />
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
             <asp:Label ID="Label1" runat="server" Text="Total Amount: "></asp:Label><b><asp:Label ID="Label2" runat="server" Text=""></asp:Label></b>
         </div>

         <div class="text-right">
             <a href="checkout.aspx" class="btn btn-success">Proceed to Checkout</a>
         </div>
         <br />
         <br />
     </div>

</asp:Content>
