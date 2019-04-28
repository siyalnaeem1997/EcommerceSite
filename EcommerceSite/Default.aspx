<%@ Page Title="" Language="C#" MasterPageFile="~/EcommerceSite.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EcommerceSite.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid" id="carousal">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">

            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>

            <div class="carousel-inner">
                <div class="item active">
                    <img src="images/shirt2.jpg" alt="Los Angeles" style="width: 100%; height: 500px" />
                </div>

                <div class="item">
                    <img src="images/watch2.jpg" alt="Chicago" style="width: 100%; height: 500px" />
                </div>

                <div class="item">
                    <img src="images/image2.jpg" alt="New york" style="width: 100%; height: 500px" />
                </div>
            </div>


            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>

    <div class="container" id="bodyContainer">
        <h2 class="text-center">Available Products</h2>

        <div class="row mt-2">
            <div class="col-md-4 col-sm-12">
                <div class="panel">
                    <div class="panel-body">
                        <img src="images/image2.jpg" style="width:100%;height:300px" alt="ShoeImg" />
                    </div>
                    <div class="panel-footer text-center">
                        <h3>Shoes</h3>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-12">
                <div class="panel">
                    <div class="panel-body">
                        <img src="images/shirt3.png" style="width:100%;height:300px" alt="ShoeImg" />
                    </div>
                    <div class="panel-footer text-center">
                        <h3>Shirts</h3>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-12">
                <div class="panel">
                    <div class="panel-body">
                        <img src="images/watch3.jpg" style="width:100%;height:300px" alt="ShoeImg" />
                    </div>
                    <div class="panel-footer text-center">
                        <h3>Watches</h3>
                    </div>
                </div>
            </div>
        </div>

            <div id="productSectionHeading">
                <h2 class="text-center"> Shop </h2>
            </div>

            <div class="row">

                <%
    if (products_list.Count > 0)
    {
        foreach (var item in products_list)
        { %>
                
                <div class="col-md-4 col-sm-12">
                    <div class="panel">
                        <div class="panel-body">
                            <a href="productDescription.aspx>pro_id=<%= item.id %>"><img src="<%=item.img %>" style="width:100%;height:300px" draggable="false" alt="Product-Image" /></a>
                            <br />
                            <br />
                            <p class="text-center"><%=item.name %></p>
                        </div>
                        <div class="panel-footer text-center">
                            
                            <a href="productDescription.aspx>pro_id=<%= item.id %>"><p class="price">Rs <%=item.price %></p></a>
                            <br />
                            <br />
                            <p><a class="buyBtn" href="Default.aspx?pro_id=<%= item.id %>&action=add">Add to Cart</a></p>
                        </div>
                    </div>
                </div>
                <%}
                    }
                    else {%>
                    <h2>No Products Available</h2>
                    <% } %>

            </div>

    </div>


</asp:Content>
