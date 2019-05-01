<!-----------------------------------
 * Assignment: Final Project
 * Name: Ben Tenhover, John Locklear
 * Email: tenhovbe @mail.uc.edu
 * Course/Section/Semester: IT3047C/001/Spring2019
 * Due Date: 5/1/2019
 * Description: Build a webform that allows customers to place grocery orders
 * Citations: Stackoverflow, Textbook
----------------------------------->
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ShoppingCart.aspx.cs" Inherits="ShoppingCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Shopping Cart</title>

     <link href="style.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        <div class="form-content center-content">

            <!-- Create labels informing the customer of their order number along with order details -->
            <asp:Label ID="lblOrder" runat="server" ForeColor="White" Font-Size="XX-Large" Text="Order Details"></asp:Label><br /><br />
            <asp:Label ID="lblThanks" runat="server" ForeColor="White" Text="Thanks for shopping at Peaches and Leeches. Your order number is: "></asp:Label>
            <asp:Label ID="lblOrderNum" runat="server" ForeColor="White" Text=""></asp:Label><br /> <br />
            <asp:Label ID="lblOrderDetails" runat="server" ForeColor="White" Text=""></asp:Label><br /><br />
            <asp:Button ID="btnReturn" runat="server" Text="Return To Products" OnClick="btnReturn_Click" />
        </div>
    </form>
</body>
</html>
