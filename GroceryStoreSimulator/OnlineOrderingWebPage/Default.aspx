<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Peaches and Leeches Ordering Home Page</title>
    <link href="style.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        <div class="form-content">

            <!-- Add labels to welcome customer and inform customer to enter loyalty and select store -->
            <asp:Label ID="lblWelcome" runat="server" Text="Welcome to Peaches and Leaches" ForeColor="Red" Font-Size="Larger"></asp:Label><br />
            <br />
            <div style="text-align: center">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/App_Themes/DefaultTheme/Groceries.bmp" /><br />
                <br />
            </div>
            <asp:Label ID="lblEnterLoyalty" runat="server" Text="Enter Loyalty Number:"></asp:Label><br />
            <asp:TextBox ID="txtLoyalty" runat="server"></asp:TextBox>
            <asp:Label ID="lblError" runat="server" ForeColor="Red" Text="Please enter your loyalty number."></asp:Label>
            <br />
            <asp:Label ID="lblSelectStore" runat="server" Text="Select Store:"></asp:Label><br />

            <asp:Label ID="lblTest" runat="server" Text=""></asp:Label>
            <asp:DropDownList ID="ddlStores" runat="server" DataSourceID="SqlDataSource1" DataTextField="Store" DataValueField="Store"></asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FinalProjectConnectionString %>" SelectCommand="SELECT DISTINCT Store FROM tStore INNER JOIN tStoreHistory ON tStore.StoreID = tStoreHistory.StoreID INNER JOIN tStoreStatus ON tStoreHistory.StoreStatusID = tStoreStatus.StoreStatusID WHERE IsClosedForever = 'False'"></asp:SqlDataSource>
            <asp:Button ID="btnSubmitStore" runat="server" Text="Submit" OnClick="btnSubmitStore_Click" />
        </div>
    </form>
</body>
</html>
