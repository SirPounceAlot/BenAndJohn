<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" %>

<!DOCTYPE html>
<!-----------------------------------
 * Assignment: Final Project
 * Name: Ben Tenhover, John Locklear
 * Email: tenhovbe @mail.uc.edu
 * Course/Section/Semester: IT3047C/001/Spring2019
 * Due Date: 5/1/2019
 * Description: Build a webform that allows customers to place grocery orders
 * Citations: Stackoverflow, Textbook
----------------------------------->
<head runat="server">
    <title>Product Page</title>
    <link href="style.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />


</head>
<body>

    <form id="form1" runat="server">
        <div class="form-content">
            <div style="text-align: center">
                <asp:Image ID="imgGroceries" runat="server" ImageUrl="~/App_Themes/DefaultTheme/Groceries.bmp" /><br />
                <br />
            </div>
            <!-- Add labels to display the loyalty number and store selected -->
            <asp:Label ID="lblLoyaltyNumber" runat="server" Text="Welcome Loyalty Member " ForeColor="White" Font-Size="Larger"></asp:Label>
            <asp:Label ID="lblLoyalty" runat="server" Text="" ForeColor="White" Font-Size="Larger"></asp:Label><br />
            <asp:Label ID="lblSelectGroceries" runat="server" Text="Select Groceries For Peaches and Leeches - " ForeColor="White" Font-Size="Larger"></asp:Label>
            <asp:Label ID="lblCart" runat="server" Text="Shopping Cart" ForeColor="White" Font-Size="Larger" CssClass="float-right"></asp:Label>
            <asp:Label ID="lblLocation" runat="server" Text=" Location: " ForeColor="White" Font-Size="Larger"></asp:Label>      
            <asp:Label ID="lblStoreSelected" runat="server" Text="" ForeColor="White" Font-Size="Larger"></asp:Label><br />

            <!-- Add list boxes to store the products from the database, as well as the selected products -->
            <div class="row">
                <asp:ListBox CssClass="col-sm-6" ID="lbProducts" runat="server" DataSourceID="SqlDataSource1" DataTextField="Brand" DataValueField="Brand" SelectionMode="Multiple"></asp:ListBox>
                <asp:ListBox CssClass="col-sm-6" ID="lbSelectedProducts" runat="server" SelectionMode="Multiple" Width="1000"></asp:ListBox>
            </div>
            <div class="center-content">

                <!-- Add buttons for selection and removal or products -->
                <asp:Button ID="btnSelect" runat="server" Text="Select" Width="150" OnClick="btnSelect_Click" /><br />
                <asp:Button ID="btnRemove" runat="server" Text="Remove" Width="150" OnClick="btnRemove_Click" />

                <!-- Allow the user to select a quantity and complete the order when finished -->
                <asp:Label ID="lblSelectQuantity" runat="server" Text="Please Select Quantity" Visible="false"></asp:Label>
                <asp:TextBox ID="txtQuantity" runat="server" Visible="false"></asp:TextBox>
                <asp:Button ID="btnSelectQuantity" runat="server" Text="Select Quantity" Visible="false" OnClick="btnSelectQuantity_Click" /><br />
                <asp:Button ID="btnCompleteOrder" runat="server" Text="Place Order" OnClick="btnCompleteOrder_Click" />
            </div>
        </div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FinalProjectConnectionString %>" SelectCommand="USE GroceryStoreSimulator
SELECT Brand + ', ' + Name + ', ' + Description + ', Price Per Unit: $' + CONVERT(char(5), PricePerSellableUnit) AS Brand
FROM tProduct 
INNER JOIN tBrand ON tProduct.BrandID = tBrand.BrandID
INNER JOIN tName ON tProduct.NameID = tName.NameID
INNER JOIN tProductPriceHist ON tProduct.ProductID = tProductPriceHist.ProductID
WHERE DateTimeStamp = (SELECT MAX(DateTimeStamp) 
FROM tProductPriceHist)"></asp:SqlDataSource>
    </form>
</body>
</html>
